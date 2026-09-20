#ifndef BW1_DECOMP_MPFE_START_GAME_DATA_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_DATA_INCLUDED_H
#include <stdint.h>

// Prefix established by 00632860/00632880/006328e0 and Mac names.
// Used through GPlayer's existing pointer, not as an allocation model.
struct MPFEStartGameData
{
	bool     field_0x0;
	char*    CreatureData;
	char*    MemoryData;
	char*    field_0xc;
	uint32_t CreatureLength;
	uint32_t MemoryLength;
	uint32_t field_0x18;
	float    Alignment;
};
#endif
