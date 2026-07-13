#include "Villager.h"

#include "BuildingSite.h"
#include "GameThingWithPos.h"
#include "MultiMapFixed.h"
#include "Town.h"
#include "VillagerInfo.h"

// BW1W120 00758180 BW1M100 10096f90 Villager::CheckNeededForCivic(void)
bool32_t Villager::CheckNeededForCivic()
{
	if (GetTown() != NULL && CheckNeededForTownDesire() == 1)
		return true;
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
			if (CheckForClearArea(((GameThingWithPos*)building)->coords, building_site->GetClearAreaRadius()) == 1)
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
		BuildingSite* site = (BuildingSite*)town->GetBestBuildingSite(((GameThingWithPos*)this)->coords, isDisciple);
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
