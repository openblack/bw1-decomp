#ifndef BW1_DECOMP_MPFE_START_GAME_DATA_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_DATA_INCLUDED_H
#include <assert.h> /* For static_assert */
#include <stdint.h>

struct MPFEStartGameData
{
	bool     LocalCreature;
	char*    CreatureData;
	char*    MemoryData;
	char*    field_0xc;
	uint32_t CreatureLength;
	uint32_t MemoryLength;
	uint32_t field_0x18;
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

static_assert(sizeof(MPFEStartGameData) == 0x20, "MPFEStartGameData size is incorrect");

#endif
