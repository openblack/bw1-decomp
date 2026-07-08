#ifndef BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Town;

class TownDesireFlags : public Object
{
public:
	uint8_t field_0x54[0x44];

	// Override methods

	// BW1W120 0055dae0 BW1M100 1055db90 TownDesireFlags::_dt(void)
	virtual ~TownDesireFlags();
	// BW1W120 00746a00 BW1M100 1055db30 TownDesireFlags::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055da70 BW1M100 103540e0 TownDesireFlags::GetTown(void)
	virtual Town* GetTown();
	// BW1W120 0055dad0 BW1M100 1055c0c0 TownDesireFlags::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00747030 BW1M100 1055c440 TownDesireFlags::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00746f10 BW1M100 1055c600 TownDesireFlags::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055dac0 BW1M100 1055c080 TownDesireFlags::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0055daa0 BW1M100 1055bff0 TownDesireFlags::IsTownDesireFlag(void)
	virtual uint32_t IsTownDesireFlag();
	// BW1W120 00746ec0 BW1M100 1055d420 TownDesireFlags::GetQueryFirstEnumText(void)
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00746ed0 BW1M100 1055d3c0 TownDesireFlags::GetQueryLastEnumText(void)
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 00746ef0 BW1M100 10018a10 TownDesireFlags::GetFOVHelpMessageSet(void)
	virtual uint32_t GetFOVHelpMessageSet();
	// BW1W120 00746f00 BW1M100 1055c7e0 TownDesireFlags::GetFOVHelpCondition(void)
	virtual uint32_t GetFOVHelpCondition();
	// BW1W120 00746a20 BW1M100 100550f0 TownDesireFlags::Process(void)
	virtual uint32_t Process();
	// BW1W120 0055da80 BW1M100 1055bf60 TownDesireFlags::GetMesh( const(void))
	virtual int GetMesh();
	// BW1W120 00746a30 BW1M100 100364a0 TownDesireFlags::Draw(void)
	virtual void Draw();
	// BW1W120 00746dc0 BW1M100 1055d830 TownDesireFlags::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
	// BW1W120 0055dab0 BW1M100 1055c030 TownDesireFlags::IsEffectReceiver(EffectValues *)
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 00746a10 BW1M100 1055dae0 TownDesireFlags::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00746de0 BW1M100 1055d7e0 TownDesireFlags::CreatureMustAvoid(Creature *)
	virtual bool CreatureMustAvoid(Creature* param_1);
	// BW1W120 0055da90 BW1M100 1055bfa0 TownDesireFlags::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H */
