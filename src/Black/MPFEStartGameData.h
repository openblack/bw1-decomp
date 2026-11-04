#ifndef BW1_DECOMP_MPFE_START_GAME_DATA_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_DATA_INCLUDED_H
#include <assert.h> /* For static_assert */
#include <stdint.h>

struct MPFEStartGameData
{
	bool  LocalCreature;
	char* CreatureData;
#ifdef VERSION_BW1WCI
	char* TykeData;
#endif
	char*    MemoryData;
	char*    PlayerSymbolData;
	uint32_t CreatureLength;
#ifdef VERSION_BW1WCI
	uint32_t TykeLength;
#endif
	uint32_t MemoryLength;
	uint32_t PlayerSymbolLength;
	float    Alignment;

	// BW1W120 00632860 BW1M119 013b2ef0
	MPFEStartGameData();
	// BW1W120 00632880 BW1M119 013b2e00
	~MPFEStartGameData();
	// BW1W120 006329a0 BW1M119 013b2c80
	void DecodeData(char* data);
	// BW1W120 inlined BW1M119 inlined
	float GetAlignment() { return Alignment; }
};

#ifdef VERSION_BW1WCI
static_assert(sizeof(MPFEStartGameData) == 0x28, "MPFEStartGameData size is incorrect");
#else
static_assert(sizeof(MPFEStartGameData) == 0x20, "MPFEStartGameData size is incorrect");
#endif

#endif
