#ifndef BW1_DECOMP_STREET_LANTERN_INCLUDED_H
#define BW1_DECOMP_STREET_LANTERN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
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

class GStreetLantern: public Object
{
public:
    uint8_t field_0x54[0x10];

    // Override methods

    // win1.41 00561470 mac 105353e0 GStreetLantern::_dt(void)
    virtual ~GStreetLantern();
    // win1.41 00734ab0 mac 10534d50 GStreetLantern::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00561460 mac 105347c0 GStreetLantern::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00734be0 mac 10534ab0 GStreetLantern::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00734c90 mac 10534980 GStreetLantern::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561450 mac 10534780 GStreetLantern::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00561440 mac 10534740 GStreetLantern::IsStreetLantern(void)
    virtual uint32_t IsStreetLantern();
    // win1.41 00734d40 mac 10003680 GStreetLantern::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 00734a70 mac 1002d8c0 GStreetLantern::Draw(void)
    virtual void Draw();
    // win1.41 00734810 mac 105350a0 GStreetLantern::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 007349d0 mac 10535050 GStreetLantern::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00734d50 mac 10534800 GStreetLantern::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 00734b10 mac 10534be0 GStreetLantern::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_STREET_LANTERN_INCLUDED_H */
