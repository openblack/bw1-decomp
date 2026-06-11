#ifndef BW1_DECOMP_MAP_SHIELD_INCLUDED_H
#define BW1_DECOMP_MAP_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "Fixed.h" /* For struct SingleMapFixed, struct SingleMapFixedVftable */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GMagicInfo;
class GMapShieldInfo;
class GPlayer;
class GameOSFile;
class GameThing;
class LHOSFile;
struct MapCoords;
class Object;
class SpellShield;

class MapShield: public SingleMapFixed
{
public:
    MapShield* next; /* 0x5c */
    SpellShield* spell; /* 0x60 */
    GMagicInfo* spell_info;

    // Override methods

    // win1.41 0072c050 mac 105304c0 MapShield::_dt(void)
    virtual ~MapShield();
    // win1.41 0072c0f0 mac 10531870 MapShield::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0072c150 mac 10531800 MapShield::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 0072c040 mac 10534210 MapShield::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0072c350 mac 10531180 MapShield::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0072c390 mac 105310e0 MapShield::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0072c030 mac 105341d0 MapShield::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0072c010 mac 10534010 MapShield::HandShouldFeelWithMeshIntersect(void)
    virtual uint32_t HandShouldFeelWithMeshIntersect();
    // win1.41 0072c1b0 mac 10531700 MapShield::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 0072c1c0 mac 105316c0 MapShield::GetTopPos(void)
    virtual float GetTopPos();
    // win1.41 0072c000 mac 10533fc0 MapShield::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 0072c1e0 mac 10531620 MapShield::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object *)
    virtual void ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* param_1);
    // win1.41 0072c1d0 mac 10531680 MapShield::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 0072c170 mac 10531740 MapShield::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 0072c020 mac 10534060 MapShield::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

    // Constructors

    // win1.41 0072c070 mac 10531a30 MapShield::__ct(MapCoords const &, GMapShieldInfo *, SpellShield *)
    MapShield(MapCoords* coords, GMapShieldInfo* info, SpellShield* spell);
};

#endif /* BW1_DECOMP_MAP_SHIELD_INCLUDED_H */
