#ifndef BW1_DECOMP_CLIMATE_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;

class GClimate : public GameThing
{
public:
	// BW1W120 00771be0 BW1M119 01053390
	static void ProcessAll();

	uint8_t field_0x14[0x74];

	// Override methods

	// BW1W120 0055dee0 BW1M119 015a9660
	virtual ~GClimate();
	// BW1W120 007713e0 BW1M119 015a9410
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055ded0 BW1M119 015a5f10
	virtual char* GetDebugText();
	// BW1W120 007736e0 BW1M119 015a5f50
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00773320 BW1M119 015a6820
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055dec0 BW1M119 015a5ed0
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_CLIMATE_INCLUDED_H */
