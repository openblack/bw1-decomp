#ifndef BW1_DECOMP_STREET_LANTERN_INCLUDED_H
#define BW1_DECOMP_STREET_LANTERN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class Creature;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class GMobileStaticInfo;
class LHOSFile;
struct MapCoords;

class GStreetLantern : public Object
{
public:
	uint8_t field_0x54[0x10];

	// Override methods

	// BW1W120 00561470 BW1M119 0153e0a0
	virtual ~GStreetLantern();
	// BW1W120 00734ab0 BW1M119 0153d830
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00561460 BW1M119 0153d290
	virtual char* GetDebugText();
	// BW1W120 00734be0 BW1M119 0153d590
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00734c90 BW1M119 0153d460
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561450 BW1M119 0153d250
	virtual uint32_t GetSaveType();
	// BW1W120 00561440 BW1M119 0153d210
	virtual uint32_t IsStreetLantern();
	// BW1W120 00734d40 BW1M119 01003670
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00734a70 BW1M119 01030370
	virtual void Draw();
	// BW1W120 00734810 BW1M119 0153dd60
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 007349d0 BW1M119 0153dd10
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00734d50 BW1M119 0153d2d0
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 00734b10 BW1M119 0153d6c0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);

	// Static methods

	// BW1W120 007346e0 BW1M119 0153e170
	static GStreetLantern* Create(const MapCoords& coords, const GMobileStaticInfo* info);
	// BW1W120 00734a30 BW1M119 0153da00
	static bool32_t IsALaternWithinDistance(MapCoords coords, float max_dist);
};

#endif /* BW1_DECOMP_STREET_LANTERN_INCLUDED_H */
