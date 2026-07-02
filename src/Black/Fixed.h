#ifndef BW1_DECOMP_FIXED_INCLUDED_H
#define BW1_DECOMP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include "Object.h" /* For struct Object, struct ObjectVftable */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GObjectInfo;
class GameOSFile;
class GameThing;
struct GameThingVftable;
class GameThingWithPos;
struct GameThingWithPosVftable;
struct GestureSystemPacketData;
struct MapCell;
struct MapCoords;
class NewCollide;
class PhysicsObject;
class Villager;

class Fixed: public Object
{
public:
    GameThing* town_artifact; /* 0x54 */

    // Override methods

    // BW1W120 0052df20 BW1M100 100e1bd0 FixedObject::GetTownArtifactValue(void)
    virtual float GetTownArtifactValue();
    // BW1W120 0052e170 BW1M100 inlined FixedObject::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0052e140 BW1M100 100e17b0 FixedObject::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00401400 BW1M100 10513b00 FixedObject::CanBeFrighteningToCreature(Creature *)
    virtual bool32_t CanBeFrighteningToCreature(Creature* creature)
    {
        return false;
    }
    // BW1W120 00401410 BW1M100 10570f10 FixedObject::CanBeSleptNextToByCreature(Creature *)
    virtual bool32_t CanBeSleptNextToByCreature(Creature* creature)
    {
        return true;
    }
    // BW1W120 00401420 BW1M100 105e81f0 FixedObject::CanBeDestroyedByStoning(Creature *)
    virtual bool32_t CanBeDestroyedByStoning(Creature* creature)
    {
        return true;
    }
    // BW1W120 00401430 BW1M100 100b19c0 FixedObject::CanBeSetOnFire(Creature *)
    virtual bool32_t CanBeSetOnFire(Creature* creature)
    {
        return (~(field_0xa) >> 3) & 1;
    }
    // BW1W120 00401440 BW1M100 1056c2a0 FixedObject::CanBePickedUpByCreature(Creature *)
    virtual bool32_t CanBePickedUpByCreature(Creature* creature)
    {
        return false;
    }
    // BW1W120 00401450 BW1M100 1057a200 FixedObject::CanBeCrushed(void)
    virtual bool32_t CanBeCrushed()
    {
        return true;
    }
    // BW1W120 00401460 BW1M100 10554e40 FixedObject::VillagerMustAvoid(Villager *)
    virtual bool32_t VillagerMustAvoid(Villager* param_1)
    {
        return true;
    }
    // BW1W120 00401470 BW1M100 1057ad40 FixedObject::GetTownArtifact(void)
    virtual GameThing* GetTownArtifact()
    {
        return town_artifact;
    }
    // BW1W120 00401480 BW1M100 10588280 FixedObject::IsTownArtifact(void)
    virtual bool32_t IsTownArtifact()
    {
        return town_artifact != NULL;
    }
    // BW1W120 004d1b80 BW1M100 10242ed0 FixedObject::GetHowMuchCreatureWantsToLookAtMe(void)
    virtual float GetHowMuchCreatureWantsToLookAtMe();
    // BW1W120 0052de30 BW1M100 100e1ea0 FixedObject::Create3DObject(void)
    virtual void Create3DObject();
    // BW1W120 0052e530 BW1M100 100e0b90 FixedObject::InsertMapObject(void)
    virtual void InsertMapObject();
    // BW1W120 0052e5c0 BW1M100 100e0af0 FixedObject::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // BW1W120 0052dea0 BW1M100 100e1d30 FixedObject::InsertMapObjectToCell(MapCell *)
    virtual void InsertMapObjectToCell(MapCell* cell);
    // BW1W120 0052eb90 BW1M100 100dff80 FixedObject::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* status);
    // BW1W120 0052eba0 BW1M100 100dff20 FixedObject::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* status);
    // BW1W120 0052e0e0 BW1M100 100e1840 FixedObject::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* status);
    // BW1W120 0052df50 BW1M100 100e1950 FixedObject::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // BW1W120 0052de50 BW1M100 100e1df0 FixedObject::GetSpecialPos(unsigned long, MapCoords *)
    virtual bool32_t GetSpecialPos(uint32_t index, MapCoords* pos);
    // BW1W120 0052dee0 BW1M100 100e1c70 FixedObject::InsertMapObjectToCellAssumeFixed(MapCell *)
    virtual void InsertMapObjectToCellAssumeFixed(MapCell* cell);
    // BW1W120 004252f0 BW1M100 100a9cd0 FixedObject::IsObjectFullyInMap(void)
    virtual bool IsObjectFullyInMap();

    // Constructors

    // BW1W120 0052dd80 BW1M100 inlined FixedObject::FixedObject(void)
    Fixed();
    // BW1W120 0052ddc0 BW1M100 100e1fb0 FixedObject::FixedObject(MapCoords const &, GObjectInfo const *, float, float)
    Fixed(const MapCoords* coords, const GObjectInfo* info, float y_angle, float scale);

    // Non-virtual Destructors

    // BW1W120 0052dda0 BW1M100 100e1f20 FixedObject::_dt(void)
    ~Fixed();
};

class SingleMapFixed: public Fixed
{
public:
    NewCollide* collide_data; /* 0x58 */

    // Override methods

    // BW1W120 0052eb40 BW1M100 100e00a0 SingleMapFixed::_dt(void)
    virtual ~SingleMapFixed();
    // BW1W120 0052e620 BW1M100 100e0990 SingleMapFixed::InsertMapObject(void)
    virtual void InsertMapObject();
    // BW1W120 0052e600 BW1M100 100e0a30 SingleMapFixed::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // BW1W120 0052f440 BW1M100 100de110 SingleMapFixed::InsertMapObjectToCell(MapCell *)
    virtual void InsertMapObjectToCell(MapCell* param_1);
    // BW1W120 0052f450 BW1M100 100de0a0 SingleMapFixed::RemoveMapObjectFromCell(MapCell *)
    virtual void RemoveMapObjectFromCell(MapCell* param_1);
    // BW1W120 0052eb10 BW1M100 100e32e0 SingleMapFixed::GetMesh( const(void))
    virtual int GetMesh();
    // BW1W120 00518100 BW1M100 10038230 SingleMapFixed::Draw(void)
    virtual void Draw();
    // BW1W120 0052e880 BW1M100 100e0470 SingleMapFixed::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 0052eaf0 BW1M100 100e3210 SingleMapFixed::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // BW1W120 0052eb00 BW1M100 100e3270 SingleMapFixed::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
    // BW1W120 0052f420 BW1M100 100de180 SingleMapFixed::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // BW1W120 0052eb20 BW1M100 100e3350 SingleMapFixed::ApplyOnlyAfterReleased(void)
    virtual uint32_t ApplyOnlyAfterReleased();
    // BW1W120 0052eb30 BW1M100 10095a30 SingleMapFixed::GetCollideData(void)
    virtual NewCollide* GetCollideData();
    // BW1W120 0052f510 BW1M100 100dde20 SingleMapFixed::CreateCollideData(void)
    virtual void CreateCollideData();
};

#endif /* BW1_DECOMP_FIXED_INCLUDED_H */
