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
struct NewCollide;
class PhysicsObject;
class Villager;

class Fixed: public Object
{
public:
    GameThing* town_artifact; /* 0x54 */

    // Override methods

    // win1.41 0052df20 mac 100e1bd0 FixedObject::GetTownArtifactValue(void)
    virtual float GetTownArtifactValue();
    // win1.41 0052e170 mac inlined FixedObject::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // win1.41 0052e140 mac 100e17b0 FixedObject::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* file);
    // win1.41 00401400 mac 10513b00 FixedObject::CanBeFrighteningToCreature(Creature *)
    virtual bool32_t CanBeFrighteningToCreature(Creature* creature);
    // win1.41 00401410 mac 10570f10 FixedObject::CanBeSleptNextToByCreature(Creature *)
    virtual bool32_t CanBeSleptNextToByCreature(Creature* creature);
    // win1.41 00401440 mac 1056c2a0 FixedObject::CanBePickedUpByCreature(Creature *)
    virtual bool32_t CanBePickedUpByCreature(Creature* creature);
    // win1.41 00401430 mac 100b19c0 FixedObject::CanBeSetOnFire(Creature *)
    virtual bool32_t CanBeSetOnFire(Creature* creature);
    // win1.41 00401420 mac 105e81f0 FixedObject::CanBeDestroyedByStoning(Creature *)
    virtual bool32_t CanBeDestroyedByStoning(Creature* creature);
    // win1.41 004d1b80 mac 10242ed0 FixedObject::GetHowMuchCreatureWantsToLookAtMe(void)
    virtual float GetHowMuchCreatureWantsToLookAtMe();
    // win1.41 0052de30 mac 100e1ea0 FixedObject::Create3DObject(void)
    virtual void Create3DObject();
    // win1.41 0052e530 mac 100e0b90 FixedObject::InsertMapObject(void)
    virtual void InsertMapObject();
    // win1.41 0052e5c0 mac 100e0af0 FixedObject::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // win1.41 0052dea0 mac 100e1d30 FixedObject::InsertMapObjectToCell(MapCell *)
    virtual void InsertMapObjectToCell(MapCell* cell);
    // win1.41 00401450 mac 1057a200 FixedObject::CanBeCrushed(void)
    virtual bool32_t CanBeCrushed();
    // win1.41 0052eb90 mac 100dff80 FixedObject::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* status);
    // win1.41 0052eba0 mac 100dff20 FixedObject::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* status);
    // win1.41 0052e0e0 mac 100e1840 FixedObject::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* status);
    // win1.41 0052df50 mac 100e1950 FixedObject::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // win1.41 00401460 mac 10554e40 FixedObject::VillagerMustAvoid(Villager *)
    virtual bool32_t VillagerMustAvoid(Villager* param_1);
    // win1.41 0052de50 mac 100e1df0 FixedObject::GetSpecialPos(unsigned long, MapCoords *)
    virtual bool32_t GetSpecialPos(uint32_t index, MapCoords* pos);
    // win1.41 00401470 mac 1057ad40 FixedObject::GetTownArtifact(void)
    virtual GameThing* GetTownArtifact();
    // win1.41 00401480 mac 10588280 FixedObject::IsTownArtifact(void)
    virtual bool32_t IsTownArtifact();
    // win1.41 0052dee0 mac 100e1c70 FixedObject::InsertMapObjectToCellAssumeFixed(MapCell *)
    virtual void InsertMapObjectToCellAssumeFixed(MapCell* cell);
    // win1.41 004252f0 mac 100a9cd0 FixedObject::IsObjectFullyInMap(void)
    virtual bool IsObjectFullyInMap();

    // Constructors

    // win1.41 0052dd80 mac inlined FixedObject::FixedObject(void)
    Fixed();
    // win1.41 0052ddc0 mac 100e1fb0 FixedObject::FixedObject(MapCoords const &, GObjectInfo const *, float, float)
    Fixed(const MapCoords* coords, const GObjectInfo* info, float y_angle, float scale);

    // Non-virtual Destructors

    // win1.41 0052dda0 mac 100e1f20 FixedObject::_dt(void)
    ~Fixed();
};

class SingleMapFixed: public Fixed
{
public:
    NewCollide* collide_data; /* 0x58 */

    // Override methods

    // win1.41 0052eb40 mac 100e00a0 SingleMapFixed::_dt(void)
    virtual ~SingleMapFixed();
    // win1.41 0052e620 mac 100e0990 SingleMapFixed::InsertMapObject(void)
    virtual void InsertMapObject();
    // win1.41 0052e600 mac 100e0a30 SingleMapFixed::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // win1.41 0052f440 mac 100de110 SingleMapFixed::InsertMapObjectToCell(MapCell *)
    virtual void InsertMapObjectToCell(MapCell* param_1);
    // win1.41 0052f450 mac 100de0a0 SingleMapFixed::RemoveMapObjectFromCell(MapCell *)
    virtual void RemoveMapObjectFromCell(MapCell* param_1);
    // win1.41 0052eb10 mac 100e32e0 SingleMapFixed::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00518100 mac 10038230 SingleMapFixed::Draw(void)
    virtual void Draw();
    // win1.41 0052e880 mac 100e0470 SingleMapFixed::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0052eaf0 mac 100e3210 SingleMapFixed::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 0052eb00 mac 100e3270 SingleMapFixed::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
    // win1.41 0052f420 mac 100de180 SingleMapFixed::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // win1.41 0052eb20 mac 100e3350 SingleMapFixed::ApplyOnlyAfterReleased(void)
    virtual uint32_t ApplyOnlyAfterReleased();
    // win1.41 0052eb30 mac 10095a30 SingleMapFixed::GetCollideData(void)
    virtual NewCollide* GetCollideData();
    // win1.41 0052f510 mac 100dde20 SingleMapFixed::CreateCollideData(void)
    virtual void CreateCollideData();
};

#endif /* BW1_DECOMP_FIXED_INCLUDED_H */
