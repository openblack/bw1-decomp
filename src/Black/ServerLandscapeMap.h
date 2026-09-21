#ifndef BW1_DECOMP_SERVER_LANDSCAPE_MAP_INCLUDED_H
#define BW1_DECOMP_SERVER_LANDSCAPE_MAP_INCLUDED_H
#include <stdint.h>
#include <stddef.h>
#include <assert.h>
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

class ServerLandscapeMap
{
public:
#pragma pack(push, 1)
	struct Point
	{
		uint32_t field_0x0;
		uint32_t field_0x4;
		uint8_t  field_0x8;
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
	void*                Thumbnail;
	char                 MapFilename[0x104];
	char                 ThumbnailFilename[0x104];
	uint8_t              field_0x224[0x208]; // Unrecovered thumbnail metadata.
	uint32_t             field_0x42c;
	LHLinkedList<Point*> Points0;
	LHLinkedList<Point*> Points1;
	// BW1W120 00712f20 BW1M119 01183730
	ServerLandscapeMap(char* path);
	// BW1W120 00712fe0 BW1M119 0135c9d0
	~ServerLandscapeMap();
	// BW1W120 007132b0 BW1M119 0130d870
	bool LoadMap(char* path);
	// BW1W120 00713660 BW1M119 014a09c0
	bool SaveLND(char* path);
	// BW1W120 00713710 BW1M119 01383c40
	bool SaveMAP(char* path);
	// BW1W120 007139e0 BW1M119 013ed7e0
	char* GetMAPFilename(char* path);
	// BW1W120 00713a30 BW1M119 011798a0
	char* GetLNDFilename(char* path);
};
// MPFEData constructs this at +c10 and its next member at +1050.
static_assert(sizeof(ServerLandscapeMap::Point) == 9, "ServerLandscapeMap::Point size is incorrect");
static_assert(offsetof(ServerLandscapeMap, Points0) == 0x430, "ServerLandscapeMap list offset is incorrect");
static_assert(sizeof(ServerLandscapeMap) == 0x440, "ServerLandscapeMap size is incorrect");
#endif
