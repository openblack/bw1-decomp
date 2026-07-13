#include "Villager.h"

#include "BuildingSite.h"
#include "GameThingWithPos.h"
#include "MultiMapFixed.h"
#include "StoragePit.h"
#include "Town.h"
#include "VillagerInfo.h"
#include "Workshop.h"

// BW1W120 00758180 BW1M100 10096f90 Villager::CheckNeededForCivic(void)
bool32_t Villager::CheckNeededForCivic()
{
	if (GetTown() != NULL && CheckNeededForTownDesire() == 1)
		return true;
	return false;
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

// BW1W120 00758960 BW1M100 10576080 Villager::GotoWorkshopForBuildingMaterials(BuildingSite *)
bool32_t Villager::GotoWorkshopForBuildingMaterials(BuildingSite* building_site)
{
	if (GetTown() != NULL)
		GetTown()->IsBuildingSiteValid(building_site);
	return false;
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
