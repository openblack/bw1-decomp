#ifndef BW1_DECOMP_WATERFALL_INCLUDED_H
#define BW1_DECOMP_WATERFALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class LHOSFile;
struct MapCoords;

class GWaterfall : public Object
{
public:
	uint8_t field_0x54[0x4];

	// Override methods

	// BW1W120 0055de60 BW1M119 0115c610
	virtual ~GWaterfall();
	// BW1W120 00734170 BW1M119 0115c5d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055de50 BW1M119 0115b770
	virtual char* GetDebugText();
	// BW1W120 00734660 BW1M119 0115b7b0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00734650 BW1M119 0115b7f0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055de40 BW1M119 0115b730
	virtual uint32_t GetSaveType();
	// BW1W120 007341b0 BW1M119 0115c4b0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 007341d0 BW1M119 0115c420
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
};

#endif /* BW1_DECOMP_WATERFALL_INCLUDED_H */
