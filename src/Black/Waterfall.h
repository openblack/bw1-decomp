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

	// BW1W120 0055de60 BW1M100 10154270 GWaterfall::_dt(void)
	virtual ~GWaterfall();
	// BW1W120 00734170 BW1M100 10154230 GWaterfall::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055de50 BW1M100 10153430 GWaterfall::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00734660 BW1M100 10153470 GWaterfall::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00734650 BW1M100 101534b0 GWaterfall::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055de40 BW1M100 101533f0 GWaterfall::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 007341b0 BW1M100 10154110 GWaterfall::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 007341d0 BW1M100 10154080 GWaterfall::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_WATERFALL_INCLUDED_H */
