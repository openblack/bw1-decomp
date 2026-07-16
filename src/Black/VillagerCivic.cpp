#include "Villager.h"

#include "BigForest.h"
#include "BuildingSite.h"
#include "Game.h"
#include "GameThingWithPos.h"
#include "MultiMapFixed.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "StoragePit.h"
#include "Town.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "Workshop.h"

// TODO: static-init cluster — the 44-byte atexit-registration fragment at 0x758120 needs the
// original compiler frontend, and the initializer below is emitted under a compiler-generated
// name; not fully matchable from source. 10.0f is CheckForClearArea's iteration step.
const float  VillagerCivicFloat1000p0 = 1000.0f;
const float  VillagerCivicFloat10p0 = 10.0f;
const float  VillagerCivicNumDaysInYear = 365.25f;
const float  VillagerCivicSecondsInDay = 86400.0f;
static float VillagerCivicSecondsPerYear = VillagerCivicSecondsInDay * VillagerCivicNumDaysInYear;

// BW1W120 00758180 BW1M100 10096f90 Villager::CheckNeededForCivic(void)
bool32_t Villager::CheckNeededForCivic()
{
	if (GetTown() != NULL && CheckNeededForTownDesire() == 1)
		return true;
	return false;
}

// BW1W120 007581a0 BW1M100 1007dae0 Villager::CheckNeededForTownDesire(void)
uint32_t Villager::CheckNeededForTownDesire()
{
	// TODO: the success path deliberately falls off the end (C4715): the target returns
	// whatever eax CheckVillagerNeededForTownDesire left behind (declared void but really
	// returns a value — see TownDesire.h).
	if (GetTown() != NULL)
	{
		float trigger = GetOwnDesiresTrigger();
		GetTown()->desire.CheckVillagerNeededForTownDesire(this, trigger);
		Flags &= 0xfffe;
	}
	else
		return 0;
}

// BW1W120 007582f0 BW1M100 10576e60 Villager::CheckNeededForHarvest(void)
bool32_t Villager::CheckNeededForHarvest()
{
	// TODO: 99.7% -- target does `test eax,eax` on IsHarvestTime()'s result, ours
	// does `test al,al`. IsHarvestTime is _N (1-byte bool); target treats the return
	// as full-eax. Declaring it bool32_t would fix the width but change the call reloc
	// (_N->I). Caller-side mirror of CHEATSHEET bool-return-mask-needs-callee-defined.
	if (GetTown()->IsHarvestTime())
	{
		Field* field = GetTown()->FindClosesFieldToWithFood(Pos);
		if (field != NULL && SetFarmerGotoField(field, 0))
			return true;
	}
	return false;
}

// BW1W120 00758390 BW1M100 10576a80 Villager::RunAwayFromObjectReaction(void)
// TODO: operand scheduling differs on the Pos compare and the X/Z adds; the distance callee
// is the unnamed twin of GUtils::GetDistanceInMetres at 0x74cd50.
bool32_t Villager::RunAwayFromObjectReaction()
{
	GameThingWithPos* runFrom = field_0xbc;
	if (runFrom != NULL && runFrom->IsAvailable())
	{
		float dist = GUtils::GetDistanceInMetres(Pos, runFrom->Pos);
		if (dist < GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject)
		{
			uint16_t angle;
			if (Pos.x == runFrom->Pos.x && Pos.z == runFrom->Pos.z)
				angle = GameAngle;
			else
				angle = GUtils::GetAngleFromXZ(runFrom->Pos, Pos);
			MapCoords runPos = runFrom->Pos;
			runPos.x +=
				GUtils::GetXByAngleMetersDistance(angle, GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject);
			runPos.z +=
				GUtils::GetZByAngleMetersDistance(angle, GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject);
			if (runPos.InBounds())
			{
				SetupMoveToWithHug(runPos, VILLAGER_STATE_RUN_AWAY_FROM_OBJECT_REACTION);
				return true;
			}
		}
	}
	StopReactingAndSetState();
	return true;
}

// BW1W120 007584b0 BW1M100 10576950 Villager::SetupBuildingObject(BuildingSite *)
bool32_t Villager::SetupBuildingObject(BuildingSite* building_site)
{
	if (GetTown() != NULL)
	{
		MultiMapFixed* building = building_site->GetBuilding();
		if (building != NULL)
		{
			// TODO: MultiMapFixed vtable layout bug (dispatcher): IsRepaired/IsBuilt land at
			// +0x8b4/+0x8b8 here but the binary has them at +0x88c/+0x890 -- 10 extra virtual
			// slots (0x28) declared before them in MultiMapFixed.h. Also prologue reg-save
			// (push ebx/esi/edi) scheduling differs. Body logic verified correct (84.5%).
			if (building->IsBuilt() == 1 && building->IsRepaired())
				return false;
			if (CheckForClearArea(building->Pos, building_site->GetClearAreaRadius()) == 1)
				return true;
			if (SetupGetBuildingSupplies(building_site) == 1)
				return true;
		}
	}
	return false;
}

// BW1W120 007586b0 BW1M100 10576590 Villager::WaitForWood(void)
bool32_t Villager::WaitForWood()
{
	if (IsReadyForNewAnimation(1) && ResourceHeld[RESOURCE_TYPE_WOOD] != 0)
		SetTopState(VILLAGER_STATE_REENTER_BUILDING_STATE);
	return true;
}

// BW1W120 007586e0 BW1M100 105763c0 Villager::SetupGetBuildingSupplies(BuildingSite *)
// TODO: push/lea scheduling differs around the retbuf calls; BigForest::GetArrivePos needs
// its return type corrected (declared void, returns MapCoords by value).
bool32_t Villager::SetupGetBuildingSupplies(BuildingSite* building_site)
{
	BigForest* bigForest;
	Forest*    forest;

	if (GetTown() == NULL)
		return false;
	if (!GetTown()->IsBuildingSiteValid(building_site))
		return false;
	if (!building_site->ShouldIGetWood(this))
		return GotoBuildingSite(building_site);
	if (GGame::g_game->field_0x14 & 0x40000)
		SetupWaitForWood(building_site);
	switch (DecideHowToGetWood(1, &bigForest, &forest))
	{
	case 1:
		return GotoStoragePitForBuildingMaterials(building_site);
	case 2:
		this->building_site = building_site;
		SetupMoveToOnFootpath(*bigForest, bigForest->GetArrivePos(this), VILLAGER_STATE_ARRIVES_AT_BIG_FOREST);
		return true;
	case 3:
		this->building_site = building_site;
		return VillagerGotoForest(forest, VILLAGER_STATE_FORESTER_ARRIVES_AT_FOREST);
	}
	return false;
}

// BW1W120 00758960 BW1M100 10576080 Villager::GotoWorkshopForBuildingMaterials(BuildingSite *)
bool32_t Villager::GotoWorkshopForBuildingMaterials(BuildingSite* building_site)
{
	if (GetTown() != NULL)
		GetTown()->IsBuildingSiteValid(building_site);
	return false;
}

// BW1W120 00758990 BW1M100 10575f70 Villager::ArrivesAtStoragePitForBuildingMaterials(void)
// TODO: needs a function symbol carved at 0x758990 (currently an unsplit gap) before it can
// pair; the body already matches the target bytes.
uint32_t Villager::ArrivesAtStoragePitForBuildingMaterials()
{
	BuildingSite* site = building_site;
	if (site != NULL && GetTown()->IsBuildingSiteValid(site))
	{
		int woodCapacity = GetWoodCapacity();
		if (woodCapacity == 0)
		{
			if (GotoBuildingSite(site) == 1)
				return 1;
		}
		else
			return ArrivesAtStoragePitForResource(RESOURCE_TYPE_WOOD, woodCapacity,
			                                      VILLAGER_STATE_REENTER_BUILDING_STATE,
			                                      VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

// BW1W120 00758af0 BW1M100 10575ab0 Villager::ArrivesAtBuildingSite(void)
// TODO: needs a function symbol carved at 0x758af0 (currently an unsplit gap) before it can
// pair; the 6553.6f/0.2f constants are unnamed .rdata copies.
uint32_t Villager::ArrivesAtBuildingSite()
{
	if (GetTown()->IsBuildingSiteValid(building_site))
	{
		int index = (int)TargetThing;
		if (index >= 0 && index < 128)
		{
			LHPoint*  buildPoint = &building_site->BuildingPositions[index];
			MapCoords buildPos;
			buildPos.x = (int)(buildPoint->x * 6553.6f);
			buildPos.z = (int)(buildPoint->z * 6553.6f);
			buildPos.altitude = 0.0f;
			if (Pos.GetDistanceInMetres(buildPos) > 0.2f)
			{
				SetupMoveToWithHug(buildPos, VILLAGER_STATE_ARRIVES_AT_BUILDING_SITE);
				return 1;
			}
			if (LookAtObject(building_site->GetBuilding(), 1) == 1)
			{
				int16_t wood = ResourceHeld[RESOURCE_TYPE_WOOD];
				if (wood != 0)
				{
					building_site->AddResource(RESOURCE_TYPE_WOOD, wood, NULL, false, &Pos, 0);
					DropWood(0);
					SetStateCarriedObject();
				}
				uint16_t turns = action.TurnsSinceStateChange;
				PlayAnimThenSetState(VILLAGER_STATE_BUILDING, 1);
				action.TurnsSinceStateChange = turns;
			}
			return 1;
		}
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

// BW1W120 00758e20 BW1M100 10575700 Villager::GetWoodUsedPerBuild(void)
float Villager::GetWoodUsedPerBuild()
{
	return ((const GVillagerInfo*)info)->WoodUsedPerBuildCycle;
}

// BW1W120 00758e30 BW1M100 10098500 Villager::CheckSatisfyAbodesDesire(void)
bool32_t Villager::CheckSatisfyAbodesDesire()
{
	if (CheckNeededForBuilding() == 1)
		return true;
	if (GetTown()->field_0x5e4 == 0)
	{
		GetTown()->field_0x5e4 = 1;
		if (GetTown()->RequestANewAbode(ABODE_TYPE_LIVING_QUARTERS) == 1 && CheckNeededForBuilding() == 1)
			return true;
	}
	return false;
}

// BW1W120 00758e90 BW1M100 105755c0 Villager::CheckSatisfyCivicBuildings(void)
bool32_t Villager::CheckSatisfyCivicBuildings()
{
	if (CheckNeededForBuilding() == 1)
		return true;
	if (GetTown()->field_0x5e4 == 0)
	{
		GetTown()->field_0x5e4 = 1;
		if (GetTown()->RequestBestPlanned() == 1 && CheckNeededForBuilding() == 1)
			return true;
	}
	return false;
}

// BW1W120 00758ef0 BW1M100 10575580 Villager::ArrivesAtRockForWood(void)
bool32_t Villager::ArrivesAtRockForWood()
{
	return true;
}

// BW1W120 00758f00 BW1M100 10575420 Villager::GotWoodFromRock(void)
bool32_t Villager::GotWoodFromRock()
{
	BuildingSite* site = building_site;
	if (GetTown()->IsBuildingSiteValid(site))
	{
		site->GetBuilding()->GetNearestEdgeOfObject(this);
		if (GotoBuildingSite(site))
			return true;
	}
	return GotoStoragePitForDropOff();
}

// TODO: needs the .bss object at 0xdb9dd8 named so the relocs here can pair.
static ClearAreaPoint g_ClearAreaPoint;

// BW1W120 007591e0 BW1M100 10575000 ClearAreaPoint::ProcessPoint(LHPoint const &)
// TODO: the target body never touches `this` and reads through the file-static global —
// this should be a static member function once the symbol is corrected.
bool32_t ClearAreaPoint::ProcessPoint(const LHPoint& point)
{
	MapCoords mc;
	mc.x = (int)(point.x * 6553.6f);
	mc.z = (int)(point.z * 6553.6f);
	mc.altitude = 0.0f;
	for (Object* obj = mc.FindType(OBJECT_TYPE_ANY, NULL); obj != NULL; obj = mc.FindType(OBJECT_TYPE_ANY, obj))
	{
		if (obj->IsPushable() && obj->CalculateForceAppliedBy(g_ClearAreaPoint.SearchVillager) > 0.05f)
		{
			MapCoords edge = obj->GetNearestEdgeToPos(mc);
			float     dist = GUtils::GetDistanceInMetres(g_ClearAreaPoint.SearchVillager->Pos, edge);
			if (dist < g_ClearAreaPoint.BestDist)
			{
				g_ClearAreaPoint.BestDist = dist;
				g_ClearAreaPoint.BestObject = obj;
				g_ClearAreaPoint.BestPos = edge;
			}
		}
	}
	return 1;
}

// BW1W120 007592e0 BW1M100 10574d90 Villager::ArriveAtPushObject(void)
bool32_t Villager::ArriveAtPushObject()
{
	// TODO: the wander area really spans 0x118..0x123 (JustWholeMapXZ at 0x118, float radius
	// at 0x120); Villager.h models TargetThing/WanderArea separately, hence the casts.
	MapCoords pushPos((JustWholeMapXZ*)&TargetThing);
	float     wanderRadius = *(float*)&WanderArea.z;
	if (CheckForClearArea(pushPos, wanderRadius) == 1)
		return true;
	return ReenterBuildingState();
}

// BW1W120 00759330 BW1M100 10574c20 Villager::CheckSatisfyToBuild(void)
bool32_t Villager::CheckSatisfyToBuild()
{
	Town* town = GetTown();
	if (town != NULL)
	{
		int           isDisciple = (DiscipleType == VILLAGER_DISCIPLE_BUILDER);
		BuildingSite* site = (BuildingSite*)town->GetBestBuildingSite(Pos, isDisciple);
		if (site != NULL && SetupBuildingObject(site) == 1)
			return true;
	}
	return false;
}

// BW1W120 00759370 BW1M100 10574ad0 Villager::CheckSatisfyToRepair(void)
bool32_t Villager::CheckSatisfyToRepair()
{
	Town* town = GetTown();
	if (town != NULL)
	{
		BuildingSite* site = (BuildingSite*)town->GetBestRepairBuildingSite();
		if (site != NULL && SetupBuildingObject(site) == 1)
			return true;
	}
	return false;
}

// BW1W120 007593a0 BW1M100 10574980 Villager::CheckSatisfySupplyWorkshop(void)
bool32_t Villager::CheckSatisfySupplyWorkshop()
{
	// TODO: 87.7% -- semantics/vtable slots (GetResource@0x98, GetArrivePos@0x104)/states
	// all correct. Remaining diffs are MSVC6 prologue scheduling: target defers `push edi`
	// (callee-save) until after `mov eax,[esi]`, ours emits it eagerly, which shifts the
	// shared GetArrivePos retbuf frame offset (esp+0xc vs esp+8) and the coords `lea`
	// arg-eval order. Scheduler tie-break family (CHEATSHEET save-across-call-spill).
	Town* town = GetTown();
	if (town != NULL)
	{
		Workshop* workshop = town->GetBestWorkshop(Pos, 1, 1);
		if (workshop != NULL)
		{
			if (ResourceHeld[RESOURCE_TYPE_WOOD] != 0)
			{
				SetupMoveToOnFootpath(*workshop, workshop->GetArrivePos(),
				                      VILLAGER_STATE_ARRIVES_AT_WORKSHOP_FOR_DROP_OFF);
				return true;
			}
			StoragePit* storagePit = GetStoragePit();
			if (storagePit != NULL && (int)storagePit->GetResource(RESOURCE_TYPE_WOOD) > 0)
			{
				SetupMoveToOnFootpath(*storagePit, storagePit->GetArrivePos(),
				                      VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_WORKSHOP_MATERIALS);
				return true;
			}
		}
	}
	return false;
}

// BW1W120 00759450 BW1M100 10574800 Villager::ArrivesAtStoragePitForWorkshopMaterials(void)
bool32_t Villager::ArrivesAtStoragePitForWorkshopMaterials()
{
	// TODO: 92.6% -- all semantics correct (IsFunctional@0xd4, AreWeThere(float),
	// GetBestWorkshop, GetWoodCapacity truncated to short, ArrivesAtStoragePitForResource,
	// GetArrivePos@0x104, SetTopState). Remaining are the scheduler ties: eager vs lazy
	// `push edi`, coords `lea` arg-eval order, GetArrivePos retbuf frame offset
	// (esp+0xc vs esp+0x10). Same family as CheckSatisfySupplyWorkshop.
	Town* town = GetTown();
	if (town == NULL)
		return false;
	StoragePit* storagePit = GetStoragePit();
	if (storagePit != NULL && storagePit->IsFunctional())
	{
		if (AreWeThere(0.0f))
		{
			Workshop* workshop = town->GetBestWorkshop(Pos, 1, 1);
			if (workshop != NULL)
			{
				int woodCapacity = (short)GetWoodCapacity();
				if (woodCapacity != 0)
				{
					ArrivesAtStoragePitForResource(RESOURCE_TYPE_WOOD, woodCapacity,
					                               VILLAGER_STATE_ARRIVES_AT_WORKSHOP_FOR_DROP_OFF,
					                               VILLAGER_STATE_DECIDE_WHAT_TO_DO);
					return true;
				}
			}
		}
		else
		{
			SetupMoveToOnFootpath(*storagePit, storagePit->GetArrivePos(),
			                      VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_WORKSHOP_MATERIALS);
			return true;
		}
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

// BW1W120 00759520 BW1M100 10574670 Villager::ArrivesAtWorkshopForDropOff(void)
bool32_t Villager::ArrivesAtWorkshopForDropOff()
{
	// TODO: 73.4% here, but 89.1% with the correct signature (semantics all verified:
	// GetArrivePos@0x104, AreWeThere@0x85c, AddResource@0x9c, SetTopState@0x8e8, DropWood,
	// states). DISPATCHER: MobileWallHug::AreWeThere is really `bool AreWeThere(const
	// MapCoords&, float)` (symbol ABUMapCoords, Rule 1), which lets the inline temp
	// `AreWeThere(workshop->GetArrivePos(), 0.0f)` share ONE retbuf with the else-branch
	// GetArrivePos (sub esp,0xc). But VillagerStates.cpp calls `AreWeThere(&storePos,..)`
	// with a pointer, so the header can't be flipped without also fixing that unit -- a
	// coordinated cross-TU change. With the pointer header, the named-local `&arrivePos`
	// forces a 2nd buffer (sub esp,0x18), costing the frame-offset match. Residual after
	// the ref fix = save-across-call-spill scheduler ties (push edi, lea arg-eval).
	Town* town = GetTown();
	if (town == NULL)
		return false;
	Workshop* workshop = town->GetBestWorkshop(Pos, 1, 1);
	if (workshop != NULL)
	{
		MapCoords arrivePos = workshop->GetArrivePos();
		if (AreWeThere(&arrivePos, 0.0f))
		{
			int amount = ResourceHeld[RESOURCE_TYPE_WOOD];
			DropWood(amount);
			workshop->AddResource(RESOURCE_TYPE_WOOD, amount, NULL, false, NULL, 0);
		}
		else
		{
			SetupMoveToOnFootpath(*workshop, workshop->GetArrivePos(), VILLAGER_STATE_ARRIVES_AT_WORKSHOP_FOR_DROP_OFF);
			return true;
		}
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

// BW1W120 007595e0 BW1M100 10574610 Villager::CheckForScaffoldForBuildingSite(BuildingSite *)
uint32_t Villager::CheckForScaffoldForBuildingSite(BuildingSite* param_1)
{
	return 0x2b;
}

// BW1W120 007595f0 BW1M100 105745d0 Villager::IsScaffoldValid(void)
bool32_t Villager::IsScaffoldValid()
{
	// TODO: target emits narrow `xor al,al` (byte) but this uint-mangled (?..@@QAEIXZ)
	// function constant-folds `return false;` to `xor eax,eax` no matter the phrasing
	// (tried `0 != 0`, bool local). Mirror of CHEATSHEET bool-return-full-eax-epilogue.
	return false;
}

// BW1W120 00759600 BW1M100 10574580 Villager::ExitBringScaffoldToBuildingSite(unsigned char)
bool32_t Villager::ExitBringScaffoldToBuildingSite(unsigned char param_1)
{
	return true;
}
