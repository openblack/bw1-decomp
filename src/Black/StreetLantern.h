#ifndef BW1_DECOMP_STREET_LANTERN_INCLUDED_H
#define BW1_DECOMP_STREET_LANTERN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class Creature;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;

class GStreetLantern : public Object
{
public:
	uint8_t field_0x54[0x10];

	// Override methods

	// BW1W120 00561470 BW1M100 105353e0 GStreetLantern::_dt(void)
	virtual ~GStreetLantern();
	// BW1W120 00734ab0 BW1M100 10534d50 GStreetLantern::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00561460 BW1M100 105347c0 GStreetLantern::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00734be0 BW1M100 10534ab0 GStreetLantern::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00734c90 BW1M100 10534980 GStreetLantern::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561450 BW1M100 10534780 GStreetLantern::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00561440 BW1M100 10534740 GStreetLantern::IsStreetLantern(void)
	virtual uint32_t IsStreetLantern();
	// BW1W120 00734d40 BW1M100 10003680 GStreetLantern::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 00734a70 BW1M100 1002d8c0 GStreetLantern::Draw(void)
	virtual void Draw();
	// BW1W120 00734810 BW1M100 105350a0 GStreetLantern::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 007349d0 BW1M100 10535050 GStreetLantern::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00734d50 BW1M100 10534800 GStreetLantern::CreatureMustAvoid(Creature *)
	virtual bool CreatureMustAvoid(Creature* param_1);
	// BW1W120 00734b10 BW1M100 10534be0 GStreetLantern::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_STREET_LANTERN_INCLUDED_H */
