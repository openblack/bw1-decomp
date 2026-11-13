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
	char*    ClanBitmapData;
	uint32_t CreatureLength;
#ifdef VERSION_BW1WCI
	uint32_t TykeLength;
#endif
	uint32_t MemoryLength;
	uint32_t ClanBitmapLength;
	float    Alignment;

	// BW1W120 00632860 BW1M119 013b2ef0
	MPFEStartGameData();
	// BW1W120 00632880 BW1M119 013b2e00
	~MPFEStartGameData();
	// BW1W120 006328e0 BW1M119 013b2c80
	void DecodeData(char* data);
	// BW1W120 006329a0 BW1M119 013b2af0
	void DecodeDataWithoutCreature(char* data);
#if defined(VERSION_BW1WCI)
	// BW1WCI 00648960 BW1MCI119 013da2d0
	static char* EncodeDataCreatureFile(char* path, char* tyke_path, char* user_data, unsigned long user_data_size,
	                                    char* bitmap, unsigned long bitmap_size, unsigned long* size);
	// BW1WCI 00648b70 BW1MCI119 013da0b0
	static char* EncodeDataCreatureMemory(float alignment, char* creature, unsigned long creature_size, char* tyke,
	                                      unsigned long tyke_size, char* user_data, unsigned long user_data_size,
	                                      char* bitmap, unsigned long bitmap_size, unsigned long* size);
#else
	// BW1W120 00632a30 BW1M119 013b2870
	static char* EncodeDataCreatureFile(char* path, char* user_data, unsigned long user_data_size, char* bitmap,
	                                    unsigned long bitmap_size, unsigned long* size);
	// BW1W120 00632ba0 BW1M119 013b26c0
	static char* EncodeDataCreatureMemory(float alignment, char* creature, unsigned long creature_size, char* user_data,
	                                      unsigned long user_data_size, char* bitmap, unsigned long bitmap_size,
	                                      unsigned long* size);
#endif
	// BW1W120 inlined BW1M119 inlined
	float GetAlignment() { return Alignment; }
	// BW1W120 inlined BW1M119 inlined
	unsigned long GetMemoryLength() { return MemoryLength; }
	// BW1W120 inlined BW1M119 inlined
	char* GetMemoryData() { return MemoryData; }
};

#ifdef VERSION_BW1WCI
static_assert(sizeof(MPFEStartGameData) == 0x28, "MPFEStartGameData size is incorrect");
#else
static_assert(sizeof(MPFEStartGameData) == 0x20, "MPFEStartGameData size is incorrect");
#endif

#endif
