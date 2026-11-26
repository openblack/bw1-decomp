#include "CellSize.h"
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include "ColourConstants.h"
#include "GenerateCreatureHTML.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <windows.h>

#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include <string>
#endif

#include "CreatureRoomScreenShots.h"
#include "Game.h"
#include "Rand.h"

char* CreatureInetFileKey = "Lf23KaM02Dl8qdJaSC0v9s2lakF1clWO";
char* CreatureInetFileSignature = "LHNILD";
char* CreatureInetFileName = "creature.lhp";

unsigned long ctempone[4] = {0xaffa, 0x81c4, 0x310f, 0xa022};
unsigned long cryptkey[4] = {0x429c, 0x1d83, 0x7bca, 0x5d10};
unsigned long ctemptwo[4] = {0xf81b, 0x1a04, 0x2e44, 0x4c4c};
unsigned long cryptuse[4] = {0xaa9c, 0xccc3, 0xffcf, 0xbbbb};

// BW1W120 00577490 BW1M119 inlined
void ResetCryptKey();
// BW1W120 005774c0 BW1M119 010fd4b0
void encipher(unsigned long* v, unsigned long* w, const unsigned long* k);
// BW1W120 00577550 BW1M119 010fd3c0
void decipher(unsigned long* v, unsigned long* w, const unsigned long* k);
// BW1W120 005775f0 BW1M119 010fd280
int MyCrypt(char* source, char* destination, int length, char decrypt);

void ResetCryptKey()
{
	memcpy(cryptuse, cryptkey, sizeof(cryptuse));
}

void encipher(unsigned long* v, unsigned long* w, const unsigned long* k)
{
	unsigned long y = v[0];
	unsigned long z = v[1];
	unsigned long sum = 0;
	unsigned long delta = TEA_DELTA;
	unsigned long a = k[0];
	unsigned long b = k[1];
	unsigned long c = k[2];
	unsigned long d = k[3];
	unsigned long n = TEA_ROUNDS;
	while (n-- > 0)
	{
		sum += delta;
		y += ((z << 4) + a) ^ (z + sum) ^ ((z >> 5) + b);
		z += ((y << 4) + c) ^ (y + sum) ^ ((y >> 5) + d);
	}
	w[0] = y;
	w[1] = z;
}

void decipher(unsigned long* v, unsigned long* w, const unsigned long* k)
{
	unsigned long y = v[0];
	unsigned long z = v[1];
	unsigned long sum = TEA_DELTA * TEA_ROUNDS;
	unsigned long delta = TEA_DELTA;
	unsigned long a = k[0];
	unsigned long b = k[1];
	unsigned long c = k[2];
	unsigned long d = k[3];
	unsigned long n = TEA_ROUNDS;
	while (n-- > 0)
	{
		z -= ((y << 4) + c) ^ (y + sum) ^ ((y >> 5) + d);
		y -= ((z << 4) + a) ^ (z + sum) ^ ((z >> 5) + b);
		sum -= delta;
	}
	w[0] = y;
	w[1] = z;
}

int MyCrypt(char* source, char* destination, int length, char decrypt)
{
	char* start = destination;
	while (length >= CRYPT_BLOCK_SIZE)
	{
		if (!decrypt)
		{
			encipher((unsigned long*)source, (unsigned long*)destination, cryptuse);
		}
		else
		{
			decipher((unsigned long*)source, (unsigned long*)destination, cryptuse);
		}
		length -= CRYPT_BLOCK_SIZE;
		source += CRYPT_BLOCK_SIZE;
		destination += CRYPT_BLOCK_SIZE;
		cryptuse[0] += 4;
		cryptuse[1] -= 74;
		cryptuse[2] += 172;
		cryptuse[3] -= 26;
	}
	if (length > 0)
	{
		unsigned long block[CRYPT_BLOCK_SIZE / sizeof(unsigned long)] = {0, 0};
		memcpy(block, source, length);
		if (!decrypt)
		{
			encipher(block, (unsigned long*)destination, cryptuse);
		}
		else
		{
			decipher(block, (unsigned long*)destination, cryptuse);
		}
		destination += CRYPT_BLOCK_SIZE;
	}
	return destination - start;
}

CreatureInetFile::CreatureInetFile()
{
	First = NULL;
	Last = NULL;
	memset(this, 0, CREATURE_INET_FILE_HEADER_SIZE);
	strcpy(Signature, CreatureInetFileSignature);
	Version = CREATURE_INET_FILE_VERSION;
	srand(time(NULL));
	uint16_t seed = GRand::LocalRand(CREATURE_INET_FILE_SALT_RANGE);
	EncryptedBuffer = NULL;
	PlainBuffer = NULL;
	Salt = seed;
	SaltHigh = seed >> 8;
}

CreatureInetFile::~CreatureInetFile()
{
	CreatureInetFileEntry* entry = GetNext(NULL);
	while (true)
	{
		if (entry == NULL)
		{
			break;
		}
		CreatureInetFileEntry* next = entry->Next;
		delete entry->Data;
		delete entry;
		if (next == NULL)
		{
			break;
		}
		entry = next;
	}
}

CreatureInetFileEntry* CreatureInetFile::GetNext(CreatureInetFileEntry* entry)
{
	if (entry == NULL)
	{
		return First;
	}
	return entry->Next;
}

CreatureInetFileEntry* CreatureInetFile::AddEntry(CreatureInetFileEntry* previous)
{
	CreatureInetFileEntry* entry = NEW(156) CreatureInetFileEntry;
	if (previous == NULL)
	{
		entry->Next = NULL;
		First = entry;
		Last = entry;
	}
	else
	{
		previous->Next = entry;
		entry->Next = NULL;
	}
	return entry;
}

char CreatureInetFile::EncryptString(char* key, char* source, uint32_t length, char* destination)
{
	char* keyStart = key;
	for (uint32_t i = 0; i < length; i++)
	{
		*destination = *key - Salt + *source;
		if (*key == 0)
		{
			key = keyStart;
		}
		source++;
		destination++;
		key++;
	}
	return 0;
}

char CreatureInetFile::DecryptString(char* key, char* source, uint32_t length, char* destination)
{
	char* keyStart = key;
	for (uint32_t i = 0; i < length; i++)
	{
		*destination = *source - *key + Salt;
		if (*key == 0)
		{
			key = keyStart;
		}
		source++;
		destination++;
		key++;
	}
	return 0;
}

char CreatureInetFile::PackBuffer(char* type, char* data, long size, char* file_name)
{
	Last = AddEntry(Last);
	if (Last != NULL)
	{
		Last->Data = NEW(208) char[size + CREATURE_INET_FILE_BUFFER_PADDING];
		Last->Size = size;
		memcpy(Last->Data, data, size);
		strcpy(Last->FileName, file_name);
		strcpy(Last->Type, type);
		return 0;
	}
	return -1;
}

char CreatureInetFile::LoadFile(char* path)
{
	CreatureInetFileEntry* previous = First;
	if (previous != NULL)
	{
		return -1;
	}
	FILE* file = fopen(path, "rb");
	if (file == NULL)
	{
		return -1;
	}
	fread(this, CREATURE_INET_FILE_HEADER_SIZE, 1, file);
	if (memcmp(this, CreatureInetFileSignature, sizeof(Signature)) != 0)
	{
		fclose(file);
		return -1;
	}
	long position = ftell(file);
	fseek(file, 0, SEEK_END);
	long size = ftell(file) - CREATURE_INET_FILE_HEADER_SIZE;
	fseek(file, position, SEEK_SET);
	EncryptedBuffer = NEW(241) char[size + CREATURE_INET_FILE_BUFFER_PADDING];
	PlainBuffer = NEW(242) char[size + CREATURE_INET_FILE_BUFFER_PADDING + CRYPT_BLOCK_SIZE];
	fread(EncryptedBuffer, 1, size - sizeof(uint32_t), file);
	uint32_t footer = 0;
	fread(&footer, 1, sizeof(footer), file);
	fclose(file);
	ResetCryptKey();
	MyCrypt(EncryptedBuffer, PlainBuffer, size, 1);
	char*    cursor = PlainBuffer;
	uint32_t offset = 0;
	while (offset < footer)
	{
		CreatureInetFileEntry* entry = AddEntry(previous);
		previous = entry;
		if (entry == NULL)
		{
			delete EncryptedBuffer;
			delete PlainBuffer;
			return -1;
		}
		if (offset == 0)
		{
			Last = entry;
			First = entry;
		}
		memcpy(entry, PlainBuffer, sizeof(CreatureInetFileEntry));
		entry->Data = NEW(269) char[entry->Size + CREATURE_INET_FILE_BUFFER_PADDING];
		memcpy(entry->Data, PlainBuffer + sizeof(CreatureInetFileEntry), entry->Size);
		entry->Next = NULL;
		PlainBuffer += entry->Size + sizeof(CreatureInetFileEntry);
		offset += entry->Size + sizeof(CreatureInetFileEntry);
	}
	PlainBuffer = cursor;
	delete PlainBuffer;
	delete EncryptedBuffer;
	EncryptedBuffer = NULL;
	PlainBuffer = NULL;
	return 0;
}

char CreatureInetFile::SaveFile(char* path)
{
	CreatureInetFileEntry* entry = First;
	if (entry == NULL)
	{
		return -1;
	}
	FILE* file = fopen(path, "wb");
	if (file == NULL)
	{
		return -1;
	}
	fwrite(this, CREATURE_INET_FILE_HEADER_SIZE, 1, file);
	uint32_t total = 0;
	do
	{
		if (entry != NULL)
		{
			total += entry->Size + sizeof(CreatureInetFileEntry);
		}
		entry = GetNext(entry);
	} while (entry != NULL);
	PlainBuffer = NEW(313) char[total + CREATURE_INET_FILE_BUFFER_PADDING];
	EncryptedBuffer = NEW(314) char[total + CREATURE_INET_FILE_BUFFER_PADDING + CRYPT_BLOCK_SIZE];
	char* cursor = PlainBuffer;
	entry = First;
	do
	{
		memcpy(PlainBuffer, entry, sizeof(CreatureInetFileEntry));
		PlainBuffer += sizeof(CreatureInetFileEntry);
		memcpy(PlainBuffer, entry->Data, entry->Size);
		PlainBuffer += entry->Size;
		entry = GetNext(entry);
	} while (entry != NULL);
	ResetCryptKey();
	int encryptedSize = MyCrypt(cursor, EncryptedBuffer, total, 0);
	fwrite(EncryptedBuffer, encryptedSize, 1, file);
	fwrite(&total, sizeof(total), 1, file);
	fclose(file);
	PlainBuffer = cursor;
	delete cursor;
	delete EncryptedBuffer;
	PlainBuffer = NULL;
	EncryptedBuffer = NULL;
	return 0;
}

char CreatureInetFile::PackFile(char* type, char* path, char* file_name)
{
	FILE* file = fopen(path, "rb");
	if (file == NULL)
	{
		return -1;
	}
	fseek(file, 0, SEEK_END);
	long size = ftell(file);
	fseek(file, 0, SEEK_SET);
	char* data = NEW(355) char[size];
	fread(data, 1, size, file);
	fclose(file);
	char result = PackBuffer(type, data, size, file_name);
	delete data;
	return result;
}

char CreatureInetFile::Unpack(char* type, char* directory)
{
	char path[250];
	if (First == NULL)
	{
		return -1;
	}
	CreatureInetFileEntry* entry = GetNext(First);
	do
	{
		if (entry != NULL)
		{
			if (strcmp(type, entry->Type) == 0)
			{
				strcpy(path, directory);
				strcat(path, entry->FileName);
				FILE* file = fopen(path, "wb");
				if (file == NULL)
				{
					return -1;
				}
				fwrite(entry->Data, entry->Size, 1, file);
				fclose(file);
			}
		}
		entry = GetNext(entry);
	} while (entry != NULL);
	return 0;
}

LH_RETURN HTMLParser::LookUpForKey(char* key, HTMLParserValue** value)
{
	for (LHLinkedNode<HTMLParserValue*>* node = Values.GetStart(); node != NULL; node = node->next.Get())
	{
		HTMLParserValue* current = node->payload;
		if (strcmp(current->Key, key) == 0)
		{
			*value = current;
			return LH_OK;
		}
	}
	*value = NULL;
	return LH_FAIL;
}

LH_RETURN HTMLParser::LookUpForValue(char* value, HTMLParserValue** found)
{
	for (LHLinkedNode<HTMLParserValue*>* node = Values.GetStart(); node != NULL; node = node->next.Get())
	{
		HTMLParserValue* current = node->payload;
		if (strcmp(current->Value, value) == 0)
		{
			*found = current;
			return LH_OK;
		}
	}
	*found = NULL;
	return LH_FAIL;
}

LH_RETURN HTMLParser::RemoveKey(char* key)
{
	for (LHLinkedNode<HTMLParserValue*>* node = Values.GetStart(); node != NULL; node = node->next.Get())
	{
		HTMLParserValue* current = node->payload;
		if (strcmp(current->Key, key) == 0)
		{
			Values.Remove(current, false);
			return LH_OK;
		}
	}
	return LH_FAIL;
}

LH_RETURN HTMLParser::AddKeyValue(char* key, char* value)
{
	HTMLParserValue* entry = NEW(449) HTMLParserValue;
	strcpy(entry->Key, key);
	strcpy(entry->Value, value);
	Values.Add(entry);
	return LH_OK;
}

LH_RETURN HTMLParser::ParseTemplateFileTo(char* template_path, char* output_path)
{
	HTMLParserValue* value = NULL;
	char             userPath[256];
	char             line[2048];
	char             output[4048];
	char             key[200];

	FILE* templateFile = fopen(template_path, "rt");
	if (templateFile == NULL)
	{
		return LH_FAIL;
	}
	GGame::g_game->path_creator.GetCurrentUserPath(userPath);
	if (GetFileAttributes(LHSPrintf("%s\\html", userPath)) != FILE_ATTRIBUTE_DIRECTORY &&
	    GetFileAttributes(LHSPrintf("%s\\html", userPath)) != FILE_ATTRIBUTE_NORMAL)
	{
		CreateDirectory(LHSPrintf("%s\\html", userPath), NULL);
	}
	FILE* outputFile = fopen(output_path, "wt");
	if (outputFile == NULL)
	{
		return LH_FAIL;
	}
	while (!feof(templateFile))
	{
		memset(line, 0, sizeof(line));
		memset(output, 0, sizeof(output));
		memset(key, 0, sizeof(key));
		char* source = line;
		char* destination = output;
		if (fgets(line, sizeof(line), templateFile) != NULL)
		{
			while (*source != 0)
			{
				if (*source == '[' && source[1] == '$')
				{
					source += 2;
					char* keyChar = key;
					memset(key, 0, sizeof(key));
					while (*source != 0 && *source != '$')
					{
						*keyChar = *source;
						source++;
						keyChar++;
					}
					LookUpForKey(key, &value);
					if (value != NULL)
					{
						char* valueChar = value->Value;
						while (*valueChar != 0)
						{
							*destination = *valueChar;
							valueChar++;
							destination++;
						}
						destination--;
					}
					if (*source == '$' && source[1] != 0)
					{
						source++;
					}
				}
				else
				{
					*destination = *source;
				}
				source++;
				destination++;
			}
			fputs(output, outputFile);
		}
	}
	fclose(templateFile);
	fclose(outputFile);
	return LH_OK;
}

LH_RETURN HTMLParser::WriteDataFile(char* name, char* path)
{
	char userPath[256];

	char* cursor;
	char* buffer = cursor = NEW(547) char[Values.count * sizeof(HTMLParserValue) + CREATURE_INET_FILE_BUFFER_PADDING];
	for (LHLinkedNode<HTMLParserValue*>* node = Values.GetStart(); node != NULL; node = node->next.Get())
	{
		memcpy(cursor, node->payload, sizeof(HTMLParserValue));
		cursor += sizeof(HTMLParserValue);
	}
	CreatureInetFile* file = NEW(556) CreatureInetFile();
	GGame::g_game->path_creator.GetCurrentUserPath(userPath);
	file->PackBuffer("CREATURE", buffer, Values.count * sizeof(HTMLParserValue), "creature");
	for (short i = 0; i < CREATURE_ROOM_NUM_SCREEN_SHOTS; i++)
	{
		file->PackFile("PICTURES", LHSPrintf("%s\\creatureshot_%d.jpg", userPath, i), LHSPrintf("_%d.jpg", i));
	}
	if (file->SaveFile(path))
	{
		delete file;
		delete buffer;
		return LH_FAIL;
	}
	delete file;
	delete buffer;
	return LH_OK;
}

HTMLParser::~HTMLParser()
{
	Values.DeleteAll();
}

HTMLParser::HTMLParser() {}
