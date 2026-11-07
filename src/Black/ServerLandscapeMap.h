#ifndef BW1_DECOMP_SERVER_LANDSCAPE_MAP_INCLUDED_H
#define BW1_DECOMP_SERVER_LANDSCAPE_MAP_INCLUDED_H
#include <stdint.h>
#include <stddef.h>
#include <assert.h>
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

class MapThumbImage;

class ServerLandscapeMap
{
public:
#pragma pack(push, 1)
	struct Point
	{
		int  X;
		int  Y;
		char Player;

		// BW1W120 inlined BW1M119 01353420
		Point() { Player = -1; }
	};
#pragma pack(pop)
	bool                 ThumbnailLoaded;
	bool                 MapLoaded;
	uint8_t              field_0x2[2];
	uint32_t             field_0x4;
	char*                MapData;
	uint32_t             MapLength;
	char*                LandscapeData;
	uint32_t             LandscapeLength;
	MapThumbImage*       Thumbnail;
	char                 MapFilename[0x104];
	char                 ThumbnailFilename[0x104];
	uint8_t              field_0x224[0x208];
	int                  NumPlayers;
	LHLinkedList<Point*> TownPoints;
	LHLinkedList<Point*> CitadelPoints;
	// BW1W120 00712f20 BW1M119 01183730
	ServerLandscapeMap(char* path);
	// BW1W120 00712fe0 BW1M119 0135c9d0
	~ServerLandscapeMap();
	// BW1W120 00712ff0 BW1M119 013ee4b0
	void DeleteThumbData();
	// BW1W120 007130e0 BW1M119 inlined
	void DeleteMapData();
	// BW1W120 00713120 BW1M119 013ed4f0
	void DeleteAllTheStuff();
	// BW1W120 00713140 BW1M119 013edef0
	bool LoadThumbnail(char* path);
	// BW1W120 007132b0 BW1M119 0130d870
	bool LoadMap(char* path);
	// BW1W120 007133d0 BW1M119 null
	bool IsPlayerValid(int player);
	// BW1W120 007133f0 BW1M119 null
	int GetCitadelX(int player);
	// BW1W120 00713450 BW1M119 null
	int GetCitadelY(int player);
	// BW1W120 00713490 BW1M119 null
	int GetNumTowns(int player);
	// BW1W120 007134e0 BW1M119 null
	int GetTownX(int player, int town);
	// BW1W120 00713540 BW1M119 null
	int GetTownY(int player, int town);
	// BW1W120 007135a0 BW1M119 null
	void DeleteLND(char* directory);
	// BW1W120 00713600 BW1M119 null
	void DeleteMAP(char* directory);
	// BW1W120 00713660 BW1M119 014a09c0
	bool SaveLND(char* directory);
	// BW1W120 00713710 BW1M119 01383c40
	bool SaveMAP(char* directory);
	// BW1W120 00713960 BW1M119 null
	static void InitList();
	// BW1W120 00713970 BW1M119 null
	static bool DeleteList(LHLinkedList<ServerLandscapeMap*> maps);
	// BW1W120 007139e0 BW1M119 013ed7e0
	char* GetMAPFilename(char* directory);
	// BW1W120 00713a30 BW1M119 011798a0
	char* GetLNDFilename(char* directory);
	// BW1W120 00714490 BW1M119 013895c0
	static void SaveServerThumbnail(char* description);
};
static_assert(sizeof(ServerLandscapeMap::Point) == 9, "ServerLandscapeMap::Point size is incorrect");
static_assert(offsetof(ServerLandscapeMap, TownPoints) == 0x430, "ServerLandscapeMap list offset is incorrect");
static_assert(sizeof(ServerLandscapeMap) == 0x440, "ServerLandscapeMap size is incorrect");
#endif /* BW1_DECOMP_SERVER_LANDSCAPE_MAP_INCLUDED_H */
