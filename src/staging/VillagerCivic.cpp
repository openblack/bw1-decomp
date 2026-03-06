#include "Villager.h"

char s_VillagerCivic_cpp[] = "C:\\dev\\MP\\Black\\VillagerCivic.cpp";

MapCoords villager_civic_mapcoords_0x00db9dd8;
Living* villager_civic_living_0x00db9de4;
Object* villager_civic_object_0x00db9de8;
float villager_civic_float_0x00db9dec;
float villager_seconds_in_year_0x00db9df0;

// win1.41 00758180 mac 10096f90 Villager::CheckNeededForCivic(void)
float Villager::CheckNeededForCivic()
{
    return 0.0f;
}

// win1.41 007581a0 mac 1007dae0 Villager::CheckNeededForTownDesire(void)
uint32_t Villager::CheckNeededForTownDesire()
{
    return 0;
}

// win1.41 007581e0 mac 10021390 Villager::GetOwnDesiresTrigger(void)
float Villager::GetOwnDesiresTrigger()
{
    return 0.0f;
}

// win1.41 007582f0 mac 10576e60 Villager::CheckNeededForHarvest(void)
bool Villager::CheckNeededForHarvest()
{
    return false;
}

// win1.41 00758340 mac 10098600 Villager::CheckNeededForBuilding(void)
bool Villager::CheckNeededForBuilding()
{
    return false;
}

// win1.41 00758390 mac 10576a80 Villager::RunAwayFromObjectReaction(void)
bool Villager::RunAwayFromObjectReaction()
{
    return false;
}

// win1.41 007584b0 mac 10576950 Villager::SetupBuildingObject(BuildingSite *)
bool Villager::SetupBuildingObject(BuildingSite* param_1)
{
    return false;
}

// win1.41 00758530 mac 105767a0 Villager::SetupBuildingObject(MultiMapFixed *)
bool Villager::SetupBuildingObject(MultiMapFixed* param_1)
{
    return false;
}

// win1.41 007585a0 mac 10576630 Villager::SetupWaitForWood(BuildingSite *)
bool Villager::SetupWaitForWood(BuildingSite* param_1)
{
    return false;
}

// win1.41 007586b0 mac 10576590 Villager::WaitForWood(void)
bool Villager::WaitForWood()
{
    return false;
}

// win1.41 007586e0 mac 105763c0 Villager::SetupGetBuildingSupplies(BuildingSite *)
bool Villager::SetupGetBuildingSupplies(BuildingSite* param_1)
{
    return false;
}

// win1.41 007587d0 mac 10576150 Villager::GotoStoragePitForBuildingMaterials(BuildingSite *)
bool Villager::GotoStoragePitForBuildingMaterials(BuildingSite* param_1)
{
    return false;
}

// win1.41 00758960 mac 10576080 Villager::GotoWorkshopForBuildingMaterials(BuildingSite *)
bool Villager::GotoWorkshopForBuildingMaterials(BuildingSite* param_1)
{
    return false;
}

// win1.41 00758a00 mac 10575d70 Villager::GotoBuildingSite(BuildingSite *)
bool Villager::GotoBuildingSite(BuildingSite* param_1)
{
    return false;
}

// win1.41 00758c40 mac 10575760 Villager::Building(void)
bool Villager::Building()
{
    return false;
}

// win1.41 00758e20 mac 10575700 Villager::GetWoodUsedPerBuild(void)
float Villager::GetWoodUsedPerBuild()
{
    return 0.0f;
}

// win1.41 00758e30 mac 10098500 Villager::CheckSatisfyAbodesDesire(void)
bool Villager::CheckSatisfyAbodesDesire()
{
    return false;
}

// win1.41 00758e90 mac 105755c0 Villager::CheckSatisfyCivicBuildings(void)
bool Villager::CheckSatisfyCivicBuildings()
{
    return false;
}

// win1.41 00758ef0 mac 10575580 Villager::ArrivesAtRockForWood(void)
bool Villager::ArrivesAtRockForWood()
{
    return true;
}

// win1.41 00758f00 mac 10575420 Villager::GotWoodFromRock(void)
bool Villager::GotWoodFromRock()
{
    return false;
}

// win1.41 00758f60 mac 105751d0 Villager::ReenterBuildingState(void)
bool Villager::ReenterBuildingState()
{
    return false;
}

// win1.41 007590a0 mac 10574e20 Villager::CheckForClearArea(MapCoords const &, float)
bool Villager::CheckForClearArea(const MapCoords* param_1, float param_2)
{
    return false;
}

// win1.41 007591e0 mac 10575000 ClearAreaPoint::ProcessPoint(LHPoint const &)
bool ClearAreaPoint::ProcessPoint(const LHPoint* param_1)
{
    return false;
}

// win1.41 007592e0 mac 10574d90 Villager::ArriveAtPushObject(void)
bool Villager::ArriveAtPushObject()
{
    return false;
}

// win1.41 00759330 mac 10574c20 Villager::CheckSatisfyToBuild(void)
bool Villager::CheckSatisfyToBuild()
{
    return false;
}

// win1.41 00759370 mac 10574ad0 Villager::CheckSatisfyToRepair(void)
bool Villager::CheckSatisfyToRepair()
{
    return false;
}

// win1.41 007593a0 mac 10574980 Villager::CheckSatisfySupplyWorkshop(void)
bool Villager::CheckSatisfySupplyWorkshop()
{
    return false;
}

// win1.41 00759450 mac 10574800 Villager::ArrivesAtStoragePitForWorkshopMaterials(void)
bool Villager::ArrivesAtStoragePitForWorkshopMaterials()
{
    return false;
}

// win1.41 00759520 mac 10574670 Villager::ArrivesAtWorkshopForDropOff(void)
bool Villager::ArrivesAtWorkshopForDropOff()
{
    return false;
}

// win1.41 007595e0 mac 10574610 Villager::CheckForScaffoldForBuildingSite(BuildingSite *)
uint32_t Villager::CheckForScaffoldForBuildingSite(BuildingSite* param_1)
{
    return 0x2b;
}

// win1.41 007595f0 mac 105745d0 Villager::IsScaffoldValid(void)
bool Villager::IsScaffoldValid()
{
    return false;
}

// win1.41 00759600 mac 10574580 Villager::ExitBringScaffoldToBuildingSite(unsigned char)
bool Villager::ExitBringScaffoldToBuildingSite(unsigned char param_1)
{
    return 1;
}

// win1.41 00759610 mac 10574300 Villager::GetPosForPushObject(Object *, MapCoords &)
MapCoords* Villager::GetPosForPushObject(Object* param_1, MapCoords* param_2)
{
    return NULL;
}

// win1.41 00759750 mac 10574220 Villager::EnterBuilding(unsigned char, unsigned char)
bool Villager::EnterBuilding(unsigned char param_1, unsigned char param_2)
{
    return false;
}

// win1.41 007597b0 mac 10574130 Villager::ExitBuilding(unsigned char)
bool Villager::ExitBuilding(unsigned char param_1)
{
    return false;
}
