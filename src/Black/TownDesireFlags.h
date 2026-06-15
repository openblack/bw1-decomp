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

class TownDesireFlags: public Object
{
public:
    uint8_t field_0x54[0x44];

    // Override methods

    // win1.41 0055dae0 mac 1055db90 TownDesireFlags::_dt(void)
    virtual ~TownDesireFlags();
    // win1.41 00746a00 mac 1055db30 TownDesireFlags::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055da70 mac 103540e0 TownDesireFlags::GetTown(void)
    virtual Town* GetTown();
    // win1.41 0055dad0 mac 1055c0c0 TownDesireFlags::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00747030 mac 1055c440 TownDesireFlags::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00746f10 mac 1055c600 TownDesireFlags::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055dac0 mac 1055c080 TownDesireFlags::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0055daa0 mac 1055bff0 TownDesireFlags::IsTownDesireFlag(void)
    virtual uint32_t IsTownDesireFlag();
    // win1.41 00746ec0 mac 1055d420 TownDesireFlags::GetQueryFirstEnumText(void)
    virtual HELP_TEXT GetQueryFirstEnumText();
    // win1.41 00746ed0 mac 1055d3c0 TownDesireFlags::GetQueryLastEnumText(void)
    virtual HELP_TEXT GetQueryLastEnumText();
    // win1.41 00746ef0 mac 10018a10 TownDesireFlags::GetFOVHelpMessageSet(void)
    virtual uint32_t GetFOVHelpMessageSet();
    // win1.41 00746f00 mac 1055c7e0 TownDesireFlags::GetFOVHelpCondition(void)
    virtual uint32_t GetFOVHelpCondition();
    // win1.41 00746a20 mac 100550f0 TownDesireFlags::Process(void)
    virtual uint32_t Process();
    // win1.41 0055da80 mac 1055bf60 TownDesireFlags::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00746a30 mac 100364a0 TownDesireFlags::Draw(void)
    virtual void Draw();
    // win1.41 00746dc0 mac 1055d830 TownDesireFlags::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // win1.41 0055dab0 mac 1055c030 TownDesireFlags::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // win1.41 00746a10 mac 1055dae0 TownDesireFlags::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00746de0 mac 1055d7e0 TownDesireFlags::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 0055da90 mac 1055bfa0 TownDesireFlags::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H */
