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
	FishFarm*               next;      /* 0x7c */
	LHLinkedList<Villager*> villagers; /* 0x80 */
	uint32_t                field_0x88;
	Town*                   town;
	float                   field_0x90;
	float                   field_0x94;

	// Override methods

	// BW1W120 0052c5c0 BW1M119 010e25a0
	virtual ~FishFarm();
	// BW1W120 0052c690 BW1M119 010e2530
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0052c850 BW1M119 010e1670
	virtual GPlayer* GetPlayer();
	// BW1W120 0052c450 BW1M119 010df950
	virtual Town* GetTown();
	// BW1W120 0052c470 BW1M119 010e1630
	virtual float Get2DRadius();
	// BW1W120 0052cf20 BW1M119 010e09f0
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0052c5b0 BW1M119 010e2fa0
	virtual char* GetDebugText();
	// BW1W120 0052d4f0 BW1M119 010dfcb0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0052d3b0 BW1M119 010dff40
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0052c5a0 BW1M119 010e2f60
	virtual uint32_t GetSaveType();
	// BW1W120 0052c490 BW1M119 inlined
	virtual MapCoords GetArrivePos();
	// BW1W120 0052c4d0 BW1M119 010e2ba0
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 0052c980 BW1M119 010e1390
	virtual bool32_t IsObjectInMap();
	// BW1W120 0052c550 BW1M119 010e2e00
	virtual uint32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 0052c560 BW1M119 010e2e50
	virtual uint32_t CanBeSleptNextToByCreature(Creature* param_1);
	// BW1W120 0052c4f0 BW1M119 010e2c20
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0052c500 BW1M119 010e2c70
	virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 0052c510 BW1M119 010e2cc0
	virtual uint32_t CanBeGivenToVillager(Creature* param_1);
	// BW1W120 0052c520 BW1M119 010e2d10
	virtual uint32_t CanBePutInAStoragePit(Creature* param_1);
	// BW1W120 0052c530 BW1M119 010e2d60
	virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 0052c540 BW1M119 010e2db0
	virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
	// BW1W120 0052c570 BW1M119 010e2ea0
	virtual uint32_t IsBeingBuilt(Creature* param_1);
	// BW1W120 0052c580 BW1M119 010e2ee0
	virtual uint32_t NeedsRepair(Creature* param_1);
	// BW1W120 0052c4e0 BW1M119 010e2be0
	virtual uint32_t CanBePoodOn(Creature* param_1);
	// BW1W120 0052cad0 BW1M119 0109c180
	virtual Object* GetMapChild(const MapCell& cell);
	// BW1W120 0052cb70 BW1M119 010e0ef0
	virtual void SetMapChild(Object* param_1, MapCell* param_2);
	// BW1W120 0052ca10 BW1M119 010e12e0
	virtual void InsertMapObject();
	// BW1W120 0052ca70 BW1M119 010e1230
	virtual void RemoveMapObject();
	// BW1W120 0052c480 BW1M119 010e2a30
	virtual float GetMeshRadius() const;
	// BW1W120 0052d130 BW1M119 01061af0
	virtual uint32_t Process();
	// BW1W120 0052c830 BW1M119 010285d0
	virtual void Draw();
	// BW1W120 0052d720 BW1M119 010dfa20
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 0052c840 BW1M119 010e1710
	virtual float GetHeightForHandAboveInteractObject();
	// BW1W120 0052cc10 BW1M119 010e0ae0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0052d1e0 BW1M119 01064e40
	virtual float GetFoodValue(FOOD_TYPE param_1);
	// BW1W120 0052d760 BW1M119 010df980
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 0052c590 BW1M119 010e2f20
	virtual bool32_t IsLockedInInteract();
	// BW1W120 0052d750 BW1M119 010df9c0
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
	// BW1W120 0052d770 BW1M119 010df6c0
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 0052d880 BW1M119 010df660
	virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 0052d890 BW1M119 010df610
	virtual uint32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 0052d8a0 BW1M119 010df4f0
	virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 0052d670 BW1M119 010dfc00
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 0052d6b0 BW1M119 010dfaf0
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 0052c4b0 BW1M119 010e2b10
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0052c460 BW1M119 010e29e0
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 0052d950 BW1M119 010df200
	virtual uint32_t ProcessInInteract(GInterfaceStatus* param_1);
	// BW1W120 0052cf90 BW1M119 010e0750
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 0052cf40 BW1M119 inlined
	virtual MapCoords* GetDoorPos(MapCoords* param_1);
	// BW1W120 0052c4c0 BW1M119 010e2b60
	virtual PlannedMultiMapFixed* ConvertToPlanned();

	// Non-virtual methods

	// BW1W120 0052d290 BW1M119 010a19c0
	// TODO: added from symbols.txt (?RemoveFisherman@FishFarm@@QAEXPAVVillager@@@Z), called from
	// Villager::ExitFishing (VillagerFisherman.cpp); no BW1M119 (Mac) address correlated yet.
	void RemoveFisherman(Villager* villager);

	// Constructors

	// BW1W120 0052c360 BW1M119 010e26d0
	FishFarm(const MapCoords& coords, const GFishFarmInfo* info, Town* town);
};

#endif /* BW1_DECOMP_FISH_FARM_INCLUDED_H */
