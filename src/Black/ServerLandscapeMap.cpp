#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "GameTimePerYear.h"
#include "ServerLandscapeMap.h"

#include <ctype.h>    /* For isdigit */
#include <direct.h>   /* For _chdir, _mkdir */
#include <io.h>       /* For _chmod, _filelength, _unlink */
#include <stdio.h>    /* For fclose, fgets, fopen, fprintf, fread, fwrite, sprintf, _fileno */
#include <stdlib.h>   /* For atof, atoi, _splitpath */
#include <sys/stat.h> /* For _S_IREAD, _S_IWRITE */
#include <string.h>   /* For memcpy, memset, strcat, strcmp, strcpy, strlen */

#include <zlib/zlib.h> /* For compress */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For class LH3DIsland */
#include <Lionhead/LH3DLib/development/LHTGA.h>         /* For struct LHTGA */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>            /* For LHOSFile::Exists */
#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h> /* For class LHLinkedListIterator */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                /* For operator new(size_t, const char*, uint32_t) */

#include "Citadel.h"          /* For class Citadel */
#include "Game.h"             /* For GGame::g_game */
#include "LandscapeDetails.h" /* For struct LandscapeDetails */
#include "MapList.h"          /* For class MapList */
#include "MapThumbImage.h"    /* For class MapThumbImage */
#include "Player.h"           /* For class GPlayer */
#include "Setup.h"            /* For GSetup::MapFilename */
#include "Town.h"             /* For class Town */

static const char ServerMapFileHeader[] = "LiOnHeAd server_map_file";

LHLinkedList<MapList*> MapList::List;

static float spare;
static float unused;

class MapCommandParser
{
public:
	char Command[0x80];
	char Number[0x80];
	int  CommandPosition;
	int  NumberLength;
	int  BracketDepth;
	int  NumQuotedArguments;
	bool InQuotes;
	bool ReadingNumber;

	// BW1W120 00712910 BW1M119 null
	bool MatchCommand(char c);
	// BW1W120 00712950 BW1M119 null
	float ReadFloat(uint8_t* data, int* position, int length);
	// BW1W120 007129c0 BW1M119 null
	int ReadInt(uint8_t* data, int* position, int length);
	// BW1W120 007129e0 BW1M119 null
	bool ParseNumber(char c, float* value);
	// BW1W120 00712a80 BW1M119 null
	bool SkipArguments(char c);
};

bool MapCommandParser::MatchCommand(char c)
{
	if (Command[CommandPosition] == '\0')
	{
		BracketDepth = -1;
		return true;
	}
	if (Command[CommandPosition] == c)
	{
		CommandPosition++;
		return false;
	}
	CommandPosition = 0;
	return false;
}

float MapCommandParser::ReadFloat(uint8_t* data, int* position, int length)
{
	float value;
	while (!ParseNumber(data[*position], &value))
	{
		if (*position >= length)
		{
			NumberLength = -1;
			return -1.0f;
		}
	}
	return value;
}

int MapCommandParser::ReadInt(uint8_t* data, int* position, int length)
{
	return (int)ReadFloat(data, position, length);
}

bool MapCommandParser::ParseNumber(char c, float* value)
{
	if (!ReadingNumber)
	{
		NumberLength = -1;
		memset(Number, 0, 1);
		return false;
	}
	if (isdigit(c) || c == '.')
	{
		Number[NumberLength] = c;
		NumberLength++;
		return false;
	}
	if (c == '"' || c == ',')
	{
		*value = atof(Number);
		ReadingNumber = false;
		return true;
	}
	*value = -1.0f;
	return true;
}

bool MapCommandParser::SkipArguments(char c)
{
	if (c == '(')
	{
		if (BracketDepth == -1)
		{
			BracketDepth = 1;
		}
		else
		{
			BracketDepth++;
		}
		return false;
	}
	if (c == ')')
	{
		BracketDepth--;
	}
	else if (c == '"')
	{
		InQuotes = !InQuotes;
		if (!InQuotes)
		{
			NumQuotedArguments++;
		}
	}
	if (BracketDepth == 0)
	{
		return true;
	}
	return false;
}

MapThumbImage::MapThumbImage()
{
	memset(this, 0, sizeof(*this));
}

MapThumbImage::~MapThumbImage() {}

MapThumbImage* MapThumbImage::GetFromData(char* data, LHLinkedList<ServerLandscapeMap::Point*>* citadels,
                                          LHLinkedList<ServerLandscapeMap::Point*>* towns)
{
	Header* header = (Header*)data;
	int     numCitadels = header->NumCitadels;
	int     numTowns = header->NumTowns;
	int     descriptionLength = header->DescriptionLength;

	char* description = NEW(143) char[descriptionLength + 1];
	memset(description, 0, descriptionLength);
	memcpy(description, data + sizeof(Header), descriptionLength);
	int offset = descriptionLength + sizeof(Header);
	description[descriptionLength] = '\0';

	for (int i = 0; i < numCitadels; i++)
	{
		ServerLandscapeMap::Point* point = NEW(150) ServerLandscapeMap::Point;
		point->X = *(int*)(data + offset);
		offset += sizeof(int);
		point->Y = *(int*)(data + offset);
		offset += sizeof(int);
		point->Player = data[offset];
		offset++;
		if (citadels != NULL)
		{
			citadels->Add(point);
		}
		else
		{
			delete point;
		}
	}
	for (int j = 0; j < numTowns; j++)
	{
		ServerLandscapeMap::Point* point = NEW(164) ServerLandscapeMap::Point;
		point->X = *(int*)(data + offset);
		offset += sizeof(int);
		point->Y = *(int*)(data + offset);
		offset += sizeof(int);
		point->Player = data[offset];
		offset++;
		if (towns != NULL)
		{
			towns->Add(point);
		}
		else
		{
			delete point;
		}
	}

	char*          imageData = data + offset;
	int            imageSize = *(int*)imageData;
	MapThumbImage* image =
		(MapThumbImage*)NEW(178) char[imageSize + descriptionLength + (sizeof(Header) + sizeof(int))];
	image->DescriptionLength = descriptionLength;
	memcpy(image->Description, description, descriptionLength + 1);
	memcpy(image->Description + descriptionLength + 1, imageData, imageSize + sizeof(int));
	delete[] description;
	return image;
}

char* MapThumbImage::CreateFromData(char* image, char* description, LHLinkedList<ServerLandscapeMap::Point*>* citadels,
                                    LHLinkedList<ServerLandscapeMap::Point*>* towns, int* length)
{
	int numPlayers = 0;
	int playerHasTown[_PLAYER_NAME_COUNT] = {0, 0, 0, 0, 0, 0, 0, 0};
	int numCitadels = citadels->count;
	int numTowns = towns->count;
	int descriptionLength = strlen(description);

	int                        citadelsSize = numCitadels * sizeof(ServerLandscapeMap::Point);
	ServerLandscapeMap::Point* citadelPoints = NEW(204) ServerLandscapeMap::Point[numCitadels];
	int                        townsSize = numTowns * sizeof(ServerLandscapeMap::Point);
	ServerLandscapeMap::Point* townPoints = NEW(205) ServerLandscapeMap::Point[numTowns];

	int i = 0;
	for (LHLinkedNode<ServerLandscapeMap::Point*>* citadel = citadels->GetStart(); citadel != NULL;
	     citadel = citadel->next.Get())
	{
		ServerLandscapeMap::Point* point = citadel->payload;
		citadelPoints[i].X = point->X;
		citadelPoints[i].Y = point->Y;
		citadelPoints[i].Player = point->Player;
		i++;
	}
	i = 0;
	for (LHLinkedNode<ServerLandscapeMap::Point*>* town = towns->GetStart(); town != NULL; town = town->next.Get())
	{
		ServerLandscapeMap::Point* point = town->payload;
		townPoints[i].X = point->X;
		townPoints[i].Y = point->Y;
		townPoints[i].Player = point->Player;
		playerHasTown[town->payload->Player] = 1;
		i++;
	}
	playerHasTown[PLAYER_NAME_NEUTRAL] = 0;
	for (int player = 0; player < _PLAYER_NAME_COUNT; player++)
	{
		numPlayers += playerHasTown[player];
	}

	int   imageSize = *(int*)image;
	char* result = NEW(224) char[imageSize + (numCitadels + numTowns) * sizeof(ServerLandscapeMap::Point) +
	                             descriptionLength + (sizeof(Header) + sizeof(int))];
	descriptionLength = strlen(description);
	Header* header = (Header*)result;
	header->NumPlayers = numPlayers;
	header->NumCitadels = numCitadels;
	header->NumTowns = numTowns;
	header->DescriptionLength = descriptionLength;
	memcpy(result + sizeof(Header), description, descriptionLength);
	descriptionLength += sizeof(Header);
	memcpy(result + descriptionLength, citadelPoints, citadelsSize);
	descriptionLength += citadelsSize;
	memcpy(result + descriptionLength, townPoints, townsSize);
	descriptionLength += townsSize;
	memcpy(result + descriptionLength, image, imageSize + sizeof(int));
	if (length != NULL)
	{
		*length = descriptionLength + imageSize + sizeof(int);
	}
	return result;
}

ServerLandscapeMap::ServerLandscapeMap(char* path)
{
	Thumbnail = NULL;
	MapData = NULL;
	LandscapeData = NULL;
	memset(MapFilename, 0, 1);
	memset(ThumbnailFilename, 0, 1);
	NumPlayers = 0;
	MapLoaded = false;
	ThumbnailLoaded = false;
	if (path != NULL)
	{
		char filename[MAX_PATH];
		sprintf(filename, "%s.thm", path);
		if (LHOSFile::Exists(filename) == LH_FILE_RESULT_OK)
		{
			LoadThumbnail(filename);
		}
		sprintf(filename, "%s.map", path);
		if (LHOSFile::Exists(filename) == LH_FILE_RESULT_OK)
		{
			LoadMap(filename);
		}
	}
}

ServerLandscapeMap::~ServerLandscapeMap()
{
	DeleteAllTheStuff();
}

void ServerLandscapeMap::DeleteThumbData()
{
	if (Thumbnail != NULL)
	{
		delete Thumbnail;
		Thumbnail = NULL;
	}
	memset(ThumbnailFilename, 0, 1);
	TownPoints.DeleteAll();
	CitadelPoints.DeleteAll();
	NumPlayers = 0;
	ThumbnailLoaded = false;
}

void ServerLandscapeMap::DeleteMapData()
{
	if (LandscapeData != NULL)
	{
		delete[] LandscapeData;
	}
	if (MapData != NULL)
	{
		delete[] MapData;
	}
	MapData = NULL;
	LandscapeData = NULL;
	memset(MapFilename, 0, 1);
	MapLoaded = false;
}

void ServerLandscapeMap::DeleteAllTheStuff()
{
	DeleteMapData();
	DeleteThumbData();
}

bool ServerLandscapeMap::LoadThumbnail(char* path)
{
	char header[100];

	DeleteThumbData();
	memset(header, 0, sizeof(header));
	if (LHOSFile::Exists(path) == LH_FILE_RESULT_OK)
	{
		FILE* file = fopen(path, "rb");
		if (file != NULL)
		{
			strcpy(ThumbnailFilename, path);
			int   length = _filelength((_fileno)(file));
			char* data = NEW(330) char[length];
			fread(data, 1, length, file);
			fclose(file);
			memcpy(header, data, strlen(ServerMapFileHeader));
			bool loaded = false;
			if (strcmp(header, ServerMapFileHeader) == 0)
			{
				loaded = true;
				Thumbnail = MapThumbImage::GetFromData(data + strlen(ServerMapFileHeader), &CitadelPoints, &TownPoints);
			}
			delete[] data;
			if (loaded)
			{
				ThumbnailLoaded = true;
				return true;
			}
			DeleteThumbData();
		}
	}
	return false;
}

bool ServerLandscapeMap::LoadMap(char* path)
{
	DeleteMapData();
	FILE* file = fopen(path, "rb");
	if (file != NULL)
	{
		strcpy(MapFilename, path);
		int   length = _filelength((_fileno)(file));
		char* data = NEW(368) char[length];
		fread(data, 1, length, file);
		int mapLength = *(int*)data;
		int landscapeLength = *(int*)(data + sizeof(int));
		MapData = NEW(376) char[mapLength];
		LandscapeData = NEW(377) char[landscapeLength];
		MapLength = mapLength;
		LandscapeLength = landscapeLength;
		memcpy(MapData, data + 2 * sizeof(int), mapLength);
		memcpy(LandscapeData, data + mapLength + 2 * sizeof(int), landscapeLength);
		MapLoaded = true;
		delete[] data;
		fclose(file);
		return true;
	}
	return false;
}

bool ServerLandscapeMap::IsPlayerValid(int player)
{
	return player > NumPlayers;
}

int ServerLandscapeMap::GetCitadelX(int player)
{
	if (!IsPlayerValid(player))
	{
		return -1;
	}
	return CitadelPoints.GetAtPosition(player)->X;
}

int ServerLandscapeMap::GetCitadelY(int player)
{
	return CitadelPoints.GetAtPosition(player)->Y;
}

int ServerLandscapeMap::GetNumTowns(int player)
{
	int count = 0;
	if (!IsPlayerValid(player))
	{
		return -1;
	}
	for (LHLinkedListIterator<Point*> it = TownPoints.GetStart(); it; it++)
	{
		if (it.Get()->Player == player)
		{
			count++;
		}
	}
	return count;
}

int ServerLandscapeMap::GetTownX(int player, int town)
{
	if (IsPlayerValid(player) && town > GetNumTowns(player))
	{
		int count = 0;
		for (LHLinkedListIterator<Point*> it = TownPoints.GetStart(); it; it++)
		{
			if (it.Get()->Player == player)
			{
				if (count == town)
				{
					return it.Get()->X;
				}
				count++;
			}
		}
	}
	return -1;
}

int ServerLandscapeMap::GetTownY(int player, int town)
{
	if (IsPlayerValid(player) && town > GetNumTowns(player))
	{
		int count = 0;
		for (LHLinkedListIterator<Point*> it = TownPoints.GetStart(); it; it++)
		{
			if (it.Get()->Player == player)
			{
				if (count == town)
				{
					return it.Get()->Y;
				}
				count++;
			}
		}
	}
	return -1;
}

void ServerLandscapeMap::DeleteLND(char* directory)
{
	char name[_MAX_FNAME];
	char path[MAX_PATH];
	_splitpath(MapFilename, NULL, NULL, name, NULL);
	sprintf(path, "%s\\%s.lnd", directory, name);
	_unlink(path);
}

void ServerLandscapeMap::DeleteMAP(char* directory)
{
	char name[_MAX_FNAME];
	char path[MAX_PATH];
	_splitpath(MapFilename, NULL, NULL, name, NULL);
	sprintf(path, "%s\\%s.txt", directory, name);
	_unlink(path);
}

bool ServerLandscapeMap::SaveLND(char* directory)
{
	if (MapLoaded)
	{
		char path[MAX_PATH];
		char name[_MAX_FNAME];
		_splitpath(MapFilename, NULL, NULL, name, NULL);
		sprintf(path, "%s\\%s.lnd", directory, name);
		_unlink(path);
		FILE* file = fopen(path, "wb+");
		if (file != NULL)
		{
			fwrite(LandscapeData, 1, LandscapeLength, file);
			fclose(file);
			return true;
		}
	}
	return false;
}

bool ServerLandscapeMap::SaveMAP(char* directory)
{
	char loadLandscape[] = "LOAD_LANDSCAPE(\"";
	char window[20];
	int  loadLandscapeLength = strlen(loadLandscape);
	if (MapLoaded)
	{
		char name[_MAX_FNAME];
		char mapPath[MAX_PATH];
		char landscapePath[MAX_PATH];
		_splitpath(MapFilename, NULL, NULL, name, NULL);
		sprintf(mapPath, "%s\\%s.txt", directory, name);
		sprintf(landscapePath, "%s\\%s.lnd", directory, name);
		_unlink(mapPath);
		SaveLND(landscapePath);
		FILE* file = fopen(mapPath, "wt+");
		if (file != NULL)
		{
			int   i = 0;
			int   textLength = 0;
			char* text = NEW(531) char[MapLength + MAX_PATH];
			while (true)
			{
				text[i] = MapData[i];
				if (i >= loadLandscapeLength)
				{
					memcpy(window, MapData - loadLandscapeLength + i, loadLandscapeLength);
					window[loadLandscapeLength] = '\0';
					if (strcmp(loadLandscape, window) == 0)
					{
						break;
					}
				}
				i++;
				textLength++;
			}
			text[textLength] = '\0';
			strcat(text, landscapePath);
			strcat(text, "\"");
			while (MapData[i++] != '"')
			{
			}
			fprintf(file, "%s%s", text, MapData + i - 1);
			fclose(file);
			delete[] text;
			return true;
		}
	}
	return false;
}

void ServerLandscapeMap::InitList() {}

bool ServerLandscapeMap::DeleteList(LHLinkedList<ServerLandscapeMap*> maps)
{
	maps.DeleteAll();
	return false;
}

char* ServerLandscapeMap::GetMAPFilename(char* directory)
{
	static char filename[MAX_PATH];
	char        name[_MAX_FNAME];
	_splitpath(MapFilename, NULL, NULL, name, NULL);
	sprintf(filename, "%s\\%s.txt", directory, name);
	return filename;
}

char* ServerLandscapeMap::GetLNDFilename(char* directory)
{
	static char filename[MAX_PATH];
	char        name[_MAX_FNAME];
	_splitpath(MapFilename, NULL, NULL, name, NULL);
	sprintf(filename, "%s\\%s.lnd", directory, name);
	return filename;
}

bool MapList::DoWeHaveInList(LandscapeDetails* details)
{
	for (LandscapeDetails* other = Landscapes.GetHead(); other != NULL; other = GetNext(other))
	{
		if (strcmp(details->FileName, other->FileName) == 0)
		{
			return true;
		}
	}
	return false;
}

MapList* MapList::GetForPlayer(unsigned long player_id)
{
	for (MapList* list = List.GetHead(); list != NULL; list = List.FindNext(list))
	{
		if (list->PlayerID == player_id)
		{
			return list;
		}
	}
	return NULL;
}

void MapList::GenerateFromFilesOnDisk()
{
	char line[0x200];
	Clear();
	FILE* file = fopen(".\\Online Maps\\GlobalList.txt", "rt");
	if (file != NULL)
	{
		while (fgets(line, sizeof(line), file) != NULL)
		{
			LandscapeDetails* details = NEW(648) LandscapeDetails;
			details->TakeFromString(line);
			if (details->AreWeOnDisk(true))
			{
				Landscapes.AddToEnd(details);
			}
		}
		fclose(file);
	}
}

char* MapList::EncodeList()
{
	int length = 0;
	for (LandscapeDetails* details = Landscapes.GetHead(); details != NULL; details = GetNext(details))
	{
		length += strlen(details->FileName) + 4;
	}
	length += 4;
	char* encoded = NEW(667) char[length];
	memset(encoded, 0, length);
	for (LandscapeDetails* entry = Landscapes.GetHead(); entry != NULL; entry = GetNext(entry))
	{
		strcat(encoded, entry->FileName);
		strcat(encoded, ":");
	}
	return encoded;
}

void MapList::Decode(char* encoded)
{
	Clear();
	char name[0x200] = "";
	int  nameLength = 0;
	for (int i = 0; i < (int)strlen(encoded); i++)
	{
		if (encoded[i] == ':' || encoded[i] == '\0')
		{
			name[nameLength] = '\0';
			if (strcmp(name, "") == 0)
			{
				return;
			}
			LandscapeDetails* details = NEW(690) LandscapeDetails;
			strcpy(details->FileName, name);
			Landscapes.AddToEnd(details);
			memset(name, 0, 2 * sizeof(name));
			nameLength = 0;
			if (encoded[i] == '\0')
			{
				return;
			}
		}
		else
		{
			name[nameLength] = encoded[i];
			nameLength++;
		}
	}
}

void LandscapeDetails::GetFromDisk(LHLinkedList<LandscapeDetails*>* list)
{
	char line[1000];
	list->DeleteAll();
	FILE* file = fopen(".\\Online Maps\\localmaps.txt", "rt");
	if (file != NULL)
	{
		while (fgets(line, sizeof(line), file) != NULL)
		{
			if (strcmp(line, "") == 0)
			{
				return;
			}
			LandscapeDetails* details = NEW(720) LandscapeDetails;
			details->TakeFromString(line);
			details->FromDatabase = false;
			list->Add(details);
		}
		fclose(file);
	}
}

void LandscapeDetails::DumpListToDisk(char* path, LHLinkedList<LandscapeDetails*>* list)
{
	if (LHOSFile::Exists(path) == LH_FILE_RESULT_OK)
	{
		_chmod(path, _S_IREAD | _S_IWRITE);
		_unlink(path);
	}
	FILE* file = fopen(path, "wt");
	if (file != NULL)
	{
		for (LHLinkedListIterator<LandscapeDetails*> it = list->GetStart(); it; it++)
		{
			LandscapeDetails* details = it.Get();
			fprintf(file, "%u:%s:%s:%u:\n", details->ID, details->Name, details->FileName, details->NumTeams);
		}
		fclose(file);
	}
}

class LandscapeFile
{
public:
	char* Data;
	long  Length;

	// BW1W120 007141b0 BW1M119 null
	LandscapeFile(char* path);
	// BW1W120 007141e0 BW1M119 null
	bool Load(char* path);
};

LandscapeFile::LandscapeFile(char* path)
{
	if (path == NULL)
	{
		Data = NULL;
		Length = 0;
	}
	else
	{
		Load(path);
	}
}

bool LandscapeFile::Load(char* path)
{
	if (path != NULL)
	{
		if (Data != NULL)
		{
			delete[] Data;
		}
		Data = NULL;
		Length = 0;
		FILE* file = fopen(path, "wrb");
		if (file != NULL)
		{
			Length = _filelength((_fileno)(file));
			Data = NEW(772) char[Length];
			fread(Data, 1, Length, file);
			fclose(file);
			return true;
		}
	}
	return false;
}

void LandscapeDetails::TakeFromString(char* string)
{
	char number[12];
	int  numberLength = 0;
	int  position = 0;
	while (string[position] != ':')
	{
		number[numberLength] = string[position];
		numberLength++;
		position++;
	}
	number[numberLength] = '\0';
	ID = atoi(number);
	position++;
	int length = 0;
	while (string[position] != ':')
	{
		Name[length] = string[position];
		length++;
		position++;
	}
	Name[length] = '\0';
	length = 0;
	position++;
	while (string[position] != ':')
	{
		if (string[position] != '\n')
		{
			FileName[length] = string[position];
			length++;
		}
		position++;
	}
	FileName[length] = '\0';
	position++;
	char* numTeams = &string[position];
	while (string[position] != ':')
	{
		position++;
	}
	string[position] = '\0';
	NumTeams = atoi(numTeams);
	MapOnDisk = AreWeOnDisk(true);
	ThumbnailOnDisk = AreWeOnDisk(false);
}

bool LandscapeDetails::AreWeOnDisk(bool map)
{
	char path[MAX_PATH];
	sprintf(path, ".\\Online Maps\\%s%s", FileName, map ? ".map" : ".thm");
	return LHOSFile::Exists(path) == LH_FILE_RESULT_OK;
}

MapList* MapList::GetForName(char* player_name)
{
	MapList* list = List.GetHead();
	for (;;)
	{
		if (list == NULL)
		{
			return NULL;
		}
		if (list->PlayerName != NULL && strcmp(player_name, list->PlayerName) == 0)
		{
			return list;
		}
		list = List.FindNext(list);
	}
}

MapList* MapList::Create(char* player_name)
{
	MapList* list = GetForName(player_name);
	if (list == NULL)
	{
		list = NEW(854) MapList;
		list->PlayerName = NEW(855) char[0x200];
	}
	return list;
}

void ServerLandscapeMap::SaveServerThumbnail(char* description)
{
	char drive[MAX_PATH];
	char dir[MAX_PATH];
	char name[MAX_PATH];
	char ext[MAX_PATH];
	char path[MAX_PATH];

	_splitpath(GSetup::MapFilename, drive, dir, name, ext);
	_chdir("Online Maps");
	_mkdir("Creation");
	_chdir("..");
	sprintf(path, ".\\Online Maps\\Creation\\%s.thm", name);
	_unlink("dantest.tga");
	LH3DIsland::BuildSoundTGA("dantest.tga");

	int maxX = 0;
	int minX = LAND_MAP_SIZE;
	int maxZ = 0;
	int minZ = LAND_MAP_SIZE;
	for (int x = 0; x < LAND_MAP_SIZE; x++)
	{
		for (int z = 0; z < LAND_MAP_SIZE; z++)
		{
			LandCell* cell = LH3DIsland::GetCell(x, z);
			if (cell != NULL && cell->altitude != 0)
			{
				maxX = max(x, maxX);
				minX = min(x, minX);
				maxZ = max(z, maxZ);
				minZ = min(z, minZ);
			}
		}
	}
	int minCoord = min(minX, minZ);
	int maxCoord = max(maxX, maxZ);
	if (maxCoord & 1)
	{
		maxCoord++;
	}
	if (minCoord & 1)
	{
		minCoord--;
	}

	LHTGA* tga = LHTGA::CreateFromHD("dantest.tga");
	char*  image = NEW(906) char[LAND_MAP_SIZE * LAND_MAP_SIZE * sizeof(uint32_t) + sizeof(int)];
	int    imageOffset = sizeof(int);
	for (int row = minCoord; row < maxCoord; row += 2)
	{
		int rowStart = imageOffset;
		int i = 0;
		for (int column = minCoord; column < maxCoord; column += 2)
		{
			int index = rowStart + i * 3;
			image[index + 2] = *((uint8_t*)(tga + 1) + (row * LAND_MAP_SIZE + column) * sizeof(uint32_t) + 0);
			image[index + 1] = *((uint8_t*)(tga + 1) + (row * LAND_MAP_SIZE + column) * sizeof(uint32_t) + 1);
			image[index] = *((uint8_t*)(tga + 1) + (row * LAND_MAP_SIZE + column) * sizeof(uint32_t) + 2);
			i++;
			imageOffset += 3;
		}
	}
	delete tga;
	*(int*)image = imageOffset - sizeof(int);

	MapCoords            coords;
	LHLinkedList<Point*> towns;
	LHLinkedList<Point*> citadels;
	GGame::g_game->GetNoPlayers();
	for (int player = 0; player < _PLAYER_NAME_COUNT; player++)
	{
		GPlayer* owner = GGame::g_game->GetPlayer(player);
		if (owner != NULL)
		{
			Citadel* citadel = owner->GetCitadel();
			if (citadel != NULL)
			{
				coords = citadel->Pos;
				int    cellX = coords.MapX();
				int    cellZ = coords.MapZ();
				Point* point = NEW(951) Point;
				point->Player = player;
				point->X = (cellZ - minCoord) / 2;
				point->Y = (cellX - minCoord) / 2;
				citadels.AddToEnd(point);
			}
			for (Town* town = owner->towns.head; town != NULL; town = town->next)
			{
				coords = town->Pos;
				int    cellX = coords.MapX();
				int    cellZ = coords.MapZ();
				Point* point = NEW(963) Point;
				point->Player = player;
				point->X = (cellZ - minCoord) / 2;
				point->Y = (cellX - minCoord) / 2;
				towns.AddToEnd(point);
			}
		}
	}

	char buffer[0x400];
	memset(buffer, 0, sizeof(buffer));
	strcpy(buffer, description);
	int   size;
	char* data = MapThumbImage::CreateFromData(image, buffer, &citadels, &towns, &size);
	_unlink(path);

	unsigned long compressedSize;
	char*         compressed = NEW(983) char[size + size / 4];
	int           fileSize = size + strlen(ServerMapFileHeader);
	char*         file = NEW(985) char[fileSize];
	memcpy(file + strlen(ServerMapFileHeader), data, size);
	memcpy(file, ServerMapFileHeader, strlen(ServerMapFileHeader));
	compress((Bytef*)compressed, &compressedSize, (Bytef*)file, fileSize);
	FILE* output = fopen(path, "wb+");
	fwrite(&fileSize, 1, sizeof(fileSize), output);
	fwrite(compressed, 1, compressedSize, output);
	fclose(output);

	towns.DeleteAll();
	citadels.DeleteAll();
	delete[] file;
	delete[] compressed;
	delete (MapThumbImage*)data;
	delete[] image;
}
