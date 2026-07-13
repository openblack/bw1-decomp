#ifndef BW1_DECOMP_FISH_FARM_INCLUDED_H
#define BW1_DECOMP_FISH_FARM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>                        /* For enum RESOURCE_TYPE */
#include <re_common.h>                          /* For bool32_t */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */
#include "Object.h"        /* For enum FOOD_TYPE */
#include "Villager.h"      /* For struct Villager */

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

class FishFarm : public MultiMapFixed
{
public:
	FishFarm*              next;      /* 0x7c */
	LHLinkedList<Villager> villagers; /* 0x80 */
	uint32_t               field_0x88;
	Town*                  town;
	float                  field_0x90;
	float                  field_0x94;

	// Override methods

	// BW1W120 0052c5c0 BW1M100 100dcf40 FishFarm::_dt(void)
	virtual ~FishFarm();
	// BW1W120 0052c690 BW1M100 100dced0 FishFarm::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0052c850 BW1M100 100dc770 FishFarm::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 0052c450 BW1M100 100dac20 FishFarm::GetTown(void)
	virtual Town* GetTown();
	// BW1W120 0052c470 BW1M100 100dc730 FishFarm::Get2DRadius(void)
	virtual float Get2DRadius();
	// BW1W120 0052cf20 BW1M100 100dbc20 FishFarm::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0052c5b0 BW1M100 100dd9a0 FishFarm::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0052d4f0 BW1M100 100daf80 FishFarm::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0052d3b0 BW1M100 100db1a0 FishFarm::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0052c5a0 BW1M100 100dd960 FishFarm::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0052c490 BW1M100 inlined FishFarm::GetArrivePos(MapCoords *)
	virtual MapCoords GetArrivePos();
	// BW1W120 0052c4d0 BW1M100 100dd5a0 FishFarm::GetCreatureBeliefType(void)
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 0052c980 BW1M100 100dc470 FishFarm::IsObjectInMap(void)
	virtual bool IsObjectInMap();
	// BW1W120 0052c550 BW1M100 100dd800 FishFarm::CanBeEatenByCreature(Creature *)
	virtual uint32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 0052c560 BW1M100 100dd850 FishFarm::CanBeSleptNextToByCreature(Creature *)
	virtual uint32_t CanBeSleptNextToByCreature(Creature* param_1);
	// BW1W120 0052c4f0 BW1M100 100dd620 FishFarm::CanBePickedUpByCreature(Creature *)
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0052c500 BW1M100 100dd670 FishFarm::CanBeStompedOnByCreature(Creature *)
	virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 0052c510 BW1M100 100dd6c0 FishFarm::CanBeGivenToVillager(Creature *)
	virtual uint32_t CanBeGivenToVillager(Creature* param_1);
	// BW1W120 0052c520 BW1M100 100dd710 FishFarm::CanBePutInAStoragePit(Creature *)
	virtual uint32_t CanBePutInAStoragePit(Creature* param_1);
	// BW1W120 0052c530 BW1M100 100dd760 FishFarm::CanBeDestroyedByStoning(Creature *)
	virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 0052c540 BW1M100 100dd7b0 FishFarm::CanBeExaminedByCreature(Creature *)
	virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
	// BW1W120 0052c570 BW1M100 100dd8a0 FishFarm::IsBeingBuilt(Creature *)
	virtual uint32_t IsBeingBuilt(Creature* param_1);
	// BW1W120 0052c580 BW1M100 100dd8e0 FishFarm::NeedsRepair(Creature *)
	virtual uint32_t NeedsRepair(Creature* param_1);
	// BW1W120 0052c4e0 BW1M100 100dd5e0 FishFarm::CanBePoodOn(Creature *)
	virtual uint32_t CanBePoodOn(Creature* param_1);
	// BW1W120 0052cad0 BW1M100 1009a360 FishFarm::GetMapChild(MapCell const &)
	virtual Object* GetMapChild(const MapCell* param_1);
	// BW1W120 0052cb70 BW1M100 100dc1a0 FishFarm::SetMapChild(Object *, MapCell *)
	virtual void SetMapChild(Object* param_1, MapCell* param_2);
	// BW1W120 0052ca10 BW1M100 100dc3c0 FishFarm::InsertMapObject(void)
	virtual void InsertMapObject();
	// BW1W120 0052ca70 BW1M100 100dc310 FishFarm::RemoveMapObject(void)
	virtual void RemoveMapObject();
	// BW1W120 0052c480 BW1M100 100dd430 FishFarm::GetMeshRadius( const(void))
	virtual float GetMeshRadius();
	// BW1W120 0052d130 BW1M100 1005f370 FishFarm::Process(void)
	virtual uint32_t Process();
	// BW1W120 0052c830 BW1M100 10025a30 FishFarm::Draw(void)
	virtual void Draw();
	// BW1W120 0052d720 BW1M100 100dacf0 FishFarm::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 0052c840 BW1M100 100dc810 FishFarm::GetHeightForHandAboveInteractObject(void)
	virtual float GetHeightForHandAboveInteractObject();
	// BW1W120 0052cc10 BW1M100 100dbd10 FishFarm::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 0052d1e0 BW1M100 100626c0 FishFarm::GetFoodValue(FOOD_TYPE)
	virtual float GetFoodValue(FOOD_TYPE param_1);
	// BW1W120 0052d760 BW1M100 100dac50 FishFarm::GetResourceType(void)
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 0052c590 BW1M100 100dd920 FishFarm::IsLockedInInteract(void)
	virtual bool IsLockedInInteract();
	// BW1W120 0052d750 BW1M100 100dac90 FishFarm::ValidForLockedSelectProcess(GInterfaceStatus *)
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
	// BW1W120 0052d770 BW1M100 100da990 FishFarm::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 0052d880 BW1M100 100da930 FishFarm::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
	virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 0052d890 BW1M100 100da8e0 FishFarm::NetworkUnfriendlyEndLockedSelect(void)
	virtual uint32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 0052d8a0 BW1M100 100da7c0 FishFarm::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
	virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 0052d670 BW1M100 100daed0 FishFarm::ValidForPlaceInHand(GInterfaceStatus *)
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 0052d6b0 BW1M100 100dadc0 FishFarm::InterfaceSetInMagicHand(GInterfaceStatus *)
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 0052c4b0 BW1M100 100dd510 FishFarm::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0052c460 BW1M100 100dd3e0 FishFarm::CreatureMustAvoid(Creature *)
	virtual bool CreatureMustAvoid(Creature* param_1);
	// BW1W120 0052d950 BW1M100 100da4d0 FishFarm::ProcessInInteract(GInterfaceStatus *)
	virtual uint32_t ProcessInInteract(GInterfaceStatus* param_1);
	// BW1W120 0052cf90 BW1M100 100db980 FishFarm::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
	// BW1W120 0052cf40 BW1M100 inlined FishFarm::GetDoorPos(MapCoords *)
	virtual MapCoords* GetDoorPos(MapCoords* param_1);
	// BW1W120 0052c4c0 BW1M100 100dd560 FishFarm::ConvertToPlanned(void)
	virtual PlannedMultiMapFixed* ConvertToPlanned();

	// Non-virtual methods

	// BW1W120 0052d290 FishFarm::RemoveFisherman(Villager *)
	// TODO: added from symbols.txt (?RemoveFisherman@FishFarm@@QAEXPAVVillager@@@Z), called from
	// Villager::ExitFishing (VillagerFisherman.cpp); no BW1M100 (Mac) address correlated yet.
	void RemoveFisherman(Villager* villager);

	// Constructors

	// BW1W120 0052c360 BW1M100 100dd070 FishFarm::FishFarm(MapCoords const &, GFishFarmInfo const *, Town *)
	FishFarm(MapCoords* coords, GFishFarmInfo* info, Town* town);
};

#endif /* BW1_DECOMP_FISH_FARM_INCLUDED_H */
