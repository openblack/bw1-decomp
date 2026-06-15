#ifndef BW1_DECOMP_FISH_FARM_INCLUDED_H
#define BW1_DECOMP_FISH_FARM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <re_common.h> /* For bool32_t */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */
#include "Object.h" /* For enum FOOD_TYPE */
#include "Villager.h" /* For struct Villager */

// Forward Declares

class Base;
struct ControlHandUpdateInfo;
class Creature;
class GFishFarmInfo;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCell;
struct MapCoords;
class Object;
class PlannedMultiMapFixed;
class Town;

class FishFarm: public MultiMapFixed
{
public:
    FishFarm* next; /* 0x7c */
    LHLinkedList__Villager villagers; /* 0x80 */
    uint32_t field_0x88;
    Town* town;
    float field_0x90;
    float field_0x94;

    // Override methods

    // win1.41 0052c5c0 mac 100dcf40 FishFarm::_dt(void)
    virtual ~FishFarm();
    // win1.41 0052c690 mac 100dced0 FishFarm::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0052c850 mac 100dc770 FishFarm::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 0052c450 mac 100dac20 FishFarm::GetTown(void)
    virtual Town* GetTown();
    // win1.41 0052c470 mac 100dc730 FishFarm::Get2DRadius(void)
    virtual float Get2DRadius();
    // win1.41 0052cf20 mac 100dbc20 FishFarm::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // win1.41 0052c5b0 mac 100dd9a0 FishFarm::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0052d4f0 mac 100daf80 FishFarm::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0052d3b0 mac 100db1a0 FishFarm::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0052c5a0 mac 100dd960 FishFarm::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0052c490 mac inlined FishFarm::GetArrivePos(MapCoords *)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // win1.41 0052c4d0 mac 100dd5a0 FishFarm::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 0052c980 mac 100dc470 FishFarm::IsObjectInMap(void)
    virtual bool IsObjectInMap();
    // win1.41 0052c550 mac 100dd800 FishFarm::CanBeEatenByCreature(Creature *)
    virtual uint32_t CanBeEatenByCreature(Creature* param_1);
    // win1.41 0052c560 mac 100dd850 FishFarm::CanBeSleptNextToByCreature(Creature *)
    virtual uint32_t CanBeSleptNextToByCreature(Creature* param_1);
    // win1.41 0052c4f0 mac 100dd620 FishFarm::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 0052c500 mac 100dd670 FishFarm::CanBeStompedOnByCreature(Creature *)
    virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
    // win1.41 0052c510 mac 100dd6c0 FishFarm::CanBeGivenToVillager(Creature *)
    virtual uint32_t CanBeGivenToVillager(Creature* param_1);
    // win1.41 0052c520 mac 100dd710 FishFarm::CanBePutInAStoragePit(Creature *)
    virtual uint32_t CanBePutInAStoragePit(Creature* param_1);
    // win1.41 0052c530 mac 100dd760 FishFarm::CanBeDestroyedByStoning(Creature *)
    virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
    // win1.41 0052c540 mac 100dd7b0 FishFarm::CanBeExaminedByCreature(Creature *)
    virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
    // win1.41 0052c570 mac 100dd8a0 FishFarm::IsBeingBuilt(Creature *)
    virtual uint32_t IsBeingBuilt(Creature* param_1);
    // win1.41 0052c580 mac 100dd8e0 FishFarm::NeedsRepair(Creature *)
    virtual uint32_t NeedsRepair(Creature* param_1);
    // win1.41 0052c4e0 mac 100dd5e0 FishFarm::CanBePoodOn(Creature *)
    virtual uint32_t CanBePoodOn(Creature* param_1);
    // win1.41 0052cad0 mac 1009a360 FishFarm::GetMapChild(MapCell const &)
    virtual Object* GetMapChild(const MapCell* param_1);
    // win1.41 0052cb70 mac 100dc1a0 FishFarm::SetMapChild(Object *, MapCell *)
    virtual void SetMapChild(Object* param_1, MapCell* param_2);
    // win1.41 0052ca10 mac 100dc3c0 FishFarm::InsertMapObject(void)
    virtual void InsertMapObject();
    // win1.41 0052ca70 mac 100dc310 FishFarm::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // win1.41 0052c480 mac 100dd430 FishFarm::GetMeshRadius( const(void))
    virtual float GetMeshRadius();
    // win1.41 0052d130 mac 1005f370 FishFarm::Process(void)
    virtual uint32_t Process();
    // win1.41 0052c830 mac 10025a30 FishFarm::Draw(void)
    virtual void Draw();
    // win1.41 0052d720 mac 100dacf0 FishFarm::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
    // win1.41 0052c840 mac 100dc810 FishFarm::GetHeightForHandAboveInteractObject(void)
    virtual float GetHeightForHandAboveInteractObject();
    // win1.41 0052cc10 mac 100dbd10 FishFarm::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0052d1e0 mac 100626c0 FishFarm::GetFoodValue(FOOD_TYPE)
    virtual float GetFoodValue(FOOD_TYPE param_1);
    // win1.41 0052d760 mac 100dac50 FishFarm::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // win1.41 0052c590 mac 100dd920 FishFarm::IsLockedInInteract(void)
    virtual bool IsLockedInInteract();
    // win1.41 0052d750 mac 100dac90 FishFarm::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
    // win1.41 0052d770 mac 100da990 FishFarm::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
    // win1.41 0052d880 mac 100da930 FishFarm::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // win1.41 0052d890 mac 100da8e0 FishFarm::NetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyEndLockedSelect();
    // win1.41 0052d8a0 mac 100da7c0 FishFarm::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
    // win1.41 0052d670 mac 100daed0 FishFarm::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 0052d6b0 mac 100dadc0 FishFarm::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 0052c4b0 mac 100dd510 FishFarm::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 0052c460 mac 100dd3e0 FishFarm::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 0052d950 mac 100da4d0 FishFarm::ProcessInInteract(GInterfaceStatus *)
    virtual uint32_t ProcessInInteract(GInterfaceStatus* param_1);
    // win1.41 0052cf90 mac 100db980 FishFarm::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 0052cf40 mac inlined FishFarm::GetDoorPos(MapCoords *)
    virtual MapCoords* GetDoorPos(MapCoords* param_1);
    // win1.41 0052c4c0 mac 100dd560 FishFarm::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();

    // Constructors

    // win1.41 0052c360 mac 100dd070 FishFarm::FishFarm(MapCoords const &, GFishFarmInfo const *, Town *)
    FishFarm(MapCoords* coords, GFishFarmInfo* info, Town* town);
};

#endif /* BW1_DECOMP_FISH_FARM_INCLUDED_H */
