#include "Town.h"
#include "TownInfo.h"
#include "TownCreatureInfo.h"
#include "TownCentre.h"
#include "PlannedTownCentre.h"
#include "TownDesireInfo.h"
#include "TownDesire.h"
#include "TownDesireFlags.h"

// win1.41 0073a650 mac 105561f0 Town::RequestBestPlanned(void)
bool32_t Town::RequestBestPlanned()
{
    return 0;
}

// win1.41 0073af50 mac 10555160 Town::ChildToAdult(Villager *)
void Town::ChildToAdult(Villager* param_1)
{
}

// win1.41 0073af80 mac 10555020 Town::GetNumberOfInstanceForGlobalList(void)
uint16_t Town::GetNumberOfInstanceForGlobalList()
{
    return 0;
}

// win1.41 0073b170 mac 10554ef0 Town::GetNearestTownToPos(MapCoords const &, TRIBE_TYPE, ABODE_TYPE, float)
Town* Town::GetNearestTownToPos(MapCoords* coords, TRIBE_TYPE tribe_type, ABODE_TYPE abode_type, float max_distance)
{
    return 0;
}

// win1.41 0073b2d0 mac 10554e90 Town::IsHarvestTime(void)
bool Town::IsHarvestTime()
{
    return 0;
}

// win1.41 0073b330 mac 1009ada0 Town::RequestANewAbode(ABODE_TYPE)
bool32_t Town::RequestANewAbode(ABODE_TYPE param_1)
{
    return 0;
}

// win1.41 0073b370 mac 10554d60 Town::FindAbodeWithSpaceInTown(Villager *, float)
Abode* Town::FindAbodeWithSpaceInTown(Villager* villager, float min_score)
{
    return 0;
}

// win1.41 0073b3d0 mac 10554c70 Town::FindClosesFieldToWithFood(MapCoords const &)
Field* Town::FindClosesFieldToWithFood(const MapCoords* param_1)
{
    return 0;
}

// win1.41 0073b580 mac 10554bd0 Town::IsVillagerInHomelessList(Villager *)
bool32_t Town::IsVillagerInHomelessList(Villager* villager)
{
    return 0;
}

// win1.41 0073b5b0 mac 100572e0 Town::GetStoragePit(void)
StoragePit* Town::GetStoragePit()
{
    return 0;
}

// win1.41 0073b5d0 mac 10554b00 Town::Birthday(void)
void Town::Birthday()
{
}

// win1.41 0073b860 mac 10554610 Town::AddBuildingSite(PlannedMultiMapFixed *)
BuildingSite* Town::AddBuildingSite(PlannedMultiMapFixed* param_1)
{
    return 0;
}

// win1.41 0073b8a0 mac 10554530 Town::AddBuildingSiteNoFixedCheck(PlannedMultiMapFixed *)
BuildingSite* Town::AddBuildingSiteNoFixedCheck(PlannedMultiMapFixed* param_1)
{
    return 0;
}

// win1.41 0073b910 mac 10554340 Town::AddBuildingSite(BuildingSite *)
void Town::AddBuildingSite(BuildingSite* param_1)
{
}

// win1.41 0073ba20 mac 10554100 Town::RemoveBuildingSite(MultiMapFixed *)
uint32_t Town::RemoveBuildingSite(MultiMapFixed* param_1)
{
    return 0;
}

// win1.41 0073ba70 mac 10554050 Town::SetBeliefInPlayer(GPlayer *, float)
void Town::SetBeliefInPlayer(GPlayer* player, float value)
{
}

// win1.41 0073bc40 mac 10553f20 Town::GetCitadel(void)
Citadel* Town::GetCitadel()
{
    return 0;
}

// win1.41 0073c060 mac 105539a0 Town::SetWorshipPercentage(float)
void Town::SetWorshipPercentage(float worship_percentage)
{
}

// win1.41 0073c0f0 mac 10552710 Town::AdjustWorshipersWorshipping(long, int, int)
void Town::AdjustWorshipersWorshipping(long param_1, int param_2, int param_3)
{
}

// win1.41 0073c840 mac 1005d020 Town::GetTribe(void) const
GTribeInfo* Town::GetTribe()
{
    return 0;
}

// win1.41 0073c860 mac 10092530 Town::GetWorshipersNeeded(int, int, int *)
int Town::GetWorshipersNeeded(int param_1, int param_2, int* result)
{
    return 0;
}

// win1.41 0073c940 mac 1006fa90 Town::GetWorshipSite(void)
WorshipSite* Town::GetWorshipSite()
{
    return 0;
}

// win1.41 0073cf00 mac 10551920 Town::IsBuildingSiteValid(BuildingSite *)
bool32_t Town::IsBuildingSiteValid(BuildingSite* param_1)
{
    return 0;
}

// win1.41 0073cf60 mac 10097910 Town::GetBestBuildingSite(MapCoords const &, int)
bool32_t Town::GetBestBuildingSite(const MapCoords* param_1, int param_2)
{
    return 0;
}

// win1.41 0073d080 mac 105516a0 Town::AddPlanned(PlannedMultiMapFixed *)
void Town::AddPlanned(PlannedMultiMapFixed* planned)
{
}

// win1.41 0073d0d0 mac 10551530 Town::RemovePlanned(PlannedMultiMapFixed *)
void Town::RemovePlanned(PlannedMultiMapFixed* planned)
{
}

// win1.41 0073d150 mac 105514f0 Town::AllVillagersCheckNeedNewAbode(void)
void Town::AllVillagersCheckNeedNewAbode()
{
}

// win1.41 0073d360 mac 10550fd0 Town::GetNextSpellIcon(TownSpellIcon *)
TownSpellIcon* Town::GetNextSpellIcon(TownSpellIcon* icon)
{
    return 0;
}

// win1.41 0073d380 mac 10550e80 Town::AddMagicTypesHeld(MAGIC_TYPE)
bool Town::AddMagicTypesHeld(MAGIC_TYPE type)
{
    return 0;
}

// win1.41 0073d630 mac 10550b00 Town::IsMagicTypeHeld(MAGIC_TYPE)
bool Town::IsMagicTypeHeld(MAGIC_TYPE type)
{
    return 0;
}

// win1.41 0073d6e0 mac 10550600 Town::GetRadius(void)
float Town::GetRadius()
{
    return 0;
}

// win1.41 0073de30 mac 1054fb60 Town::GetFlock(LIVING_TYPE, int)
bool Town::GetFlock(LIVING_TYPE param_1, int param_2)
{
    return 0;
}

// win1.41 0073e1d0 mac 1054f6b0 Town::GetTotemStatue(void)
TotemStatue* Town::GetTotemStatue()
{
    return 0;
}

// win1.41 0073e200 mac 1054f630 Town::GetScriptObjectType(void)
uint32_t Town::GetScriptObjectType()
{
    return 0;
}

// win1.41 0073e210 mac 1054f460 Town::RemoveVillager(Villager *)
void Town::RemoveVillager(Villager* villager)
{
}

// win1.41 0073e360 mac 1054f190 Town::RemoveVillagerOnWayToWorshipSite(Villager *)
void Town::RemoveVillagerOnWayToWorshipSite(Villager* villager)
{
}

// win1.41 0073e400 mac 10060840 Town::GetDesire(TOWN_DESIRE_INFO)
float Town::GetDesire(TOWN_DESIRE_INFO param_1)
{
    return 0;
}

// win1.41 0073e420 mac 10055140 Town::GetRawDesire(TOWN_DESIRE_INFO)
float Town::GetRawDesire(TOWN_DESIRE_INFO param_1)
{
    return 0;
}

// win1.41 0073e900 mac 1054e460 Town::GetTemporaryResourceStorePotOrPos(MapCoords const &, MapCoords &, RESOURCE_TYPE)
void* Town::GetTemporaryResourceStorePotOrPos(const MapCoords* param_1, MapCoords* param_2, RESOURCE_TYPE param_3)
{
    return 0;
}

// win1.41 0073eac0 mac 1054e290 Town::AsssignTownFeature(void)
void Town::AsssignTownFeature()
{
}

// win1.41 0073eb00 mac 1054dfe0 Town::AssignForestsToTown(void)
void Town::AssignForestsToTown()
{
}

// win1.41 0073ed30 mac 1054c770 Town::Save(GameOSFile &)
bool Town::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0073f450 mac 1054aa80 Town::Load(GameOSFile &)
bool Town::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0073fd80 mac inlined GTownInfo::GetDebugColor( const(LHColor *))
LHColor* GTownInfo::GetDebugColor(LHColor* param_1)
{
    return 0;
}

// win1.41 0073ff00 mac 1054a490 Town::GetVillagerActivityDesire(Villager *)
float Town::GetVillagerActivityDesire(Villager* param_1)
{
    return 0;
}

// win1.41 0073ff10 mac 100956a0 Town::SetVillagerActivity(Villager *)
uint32_t Town::SetVillagerActivity(Villager* param_1)
{
    return 0;
}

// win1.41 00740250 mac 10549810 Town::GetBestWorkshop(MapCoords &, int, int)
Workshop* Town::GetBestWorkshop(MapCoords* param_1, int param_2, int param_3)
{
    return 0;
}

// win1.41 007408b0 mac 10008020 Town::GetCongregationPos(void)
MapCoords* Town::GetCongregationPos(MapCoords* coords)
{
    return 0;
}

// win1.41 007412e0 mac 10547990 Town::ResolveLoad(void)
void Town::ResolveLoad()
{
}

// win1.41 007412f0 mac 100233e0 Town::FindClearArea(MapCoords &, MapCoords &, float, float, float, int (Object::)(void const *, void const *), Object *)
bool Town::FindClearArea(MapCoords& param_1, MapCoords& param_2, float param_3, float param_4, float param_5, int (*callback)(const void*, const void*), Object* obj)
{
    return 0;
}

// win1.41 007413d0 mac 10038890 Town::CheckForClearArea(MapCoords &, float, int (Object::)(void const *, void const *), Object *)
bool Town::CheckForClearArea(MapCoords& param_1, float param_2, int (*callback)(const void*, const void*), Object* obj)
{
    return 0;
}

// win1.41 00741b40 mac 105464d0 Town::MakeScenicForest(void)
void Town::MakeScenicForest()
{
}

// win1.41 007437c0 mac 10558ea0 TownCreatureInfo::GetBaseInfo(unsigned long &)
GBaseInfo* TownCreatureInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 007437d0 mac 10557190 TownCreatureInfo::_dt(void)
TownCreatureInfo::~TownCreatureInfo()
{
}

// win1.41 007437f0 mac 10071340 Town::UpdateAttitudeToCreature(void)
void Town::UpdateAttitudeToCreature()
{
}

// // win1.41 00743a60 mac 1055bb20 TownCentre::TownCentre(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
// TownCentre::TownCentre(const MapCoords& coords, const GAbodeInfo* info, Town* town, float param_4, float param_5, float param_6, int param_7)
// {
// }

// win1.41 00743b40 mac 1055b8b0 TownCentre::ToBeDeleted(int)
void TownCentre::ToBeDeleted(int param_1)
{
}

// win1.41 00743bc0 mac 1055b860 TownCentre::InteractsWithPhysicsObjects(void)
bool TownCentre::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00743be0 mac 1055b650 TownCentre::DeleteDependancys(void)
void TownCentre::DeleteDependancys()
{
}

// win1.41 00743c90 mac 1055b520 TownCentre::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
TownCentre* TownCentre::Create(const MapCoords* coords, const GAbodeInfo* info, Town* town, float param_4, float param_5, float param_6, int param_7)
{
    return 0;
}

// win1.41 00743cf0 mac 1055b3c0 TownCentre::CallVirtualFunctionsForCreation(MapCoords const &)
void TownCentre::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
}

// win1.41 00743da0 mac 1055b260 TownCentre::CreateTotemIfNecessary(void)
bool TownCentre::CreateTotemIfNecessary()
{
    return 0;
}

// win1.41 00743df0 mac 10070780 TownCentre::Process(void)
uint32_t TownCentre::Process()
{
    return 0;
}

// win1.41 00743e80 mac 1055b020 TownCentre::MakeFunctional(void)
void TownCentre::MakeFunctional()
{
}

// win1.41 00743f20 mac 1055af50 TownCentre::GetTotemPos(void)
MapCoords* TownCentre::GetTotemPos(MapCoords* coords)
{
    return 0;
}

// win1.41 00743fa0 mac 1055ae80 TownCentre::FindSpellIcon(SPELL_SEED_TYPE)
TownCentreSpellIcon* TownCentre::FindSpellIcon(SPELL_SEED_TYPE type)
{
    return 0;
}

// win1.41 00744010 mac 1055ad20 TownCentre::AddPowerUp(SPELL_SEED_TYPE, POWER_UP_TYPE)
void TownCentre::AddPowerUp(SPELL_SEED_TYPE seed_type, POWER_UP_TYPE power_up_type)
{
}

// win1.41 00744050 mac 1055aac0 TownCentre::AddSpell(SPELL_SEED_TYPE)
bool TownCentre::AddSpell(SPELL_SEED_TYPE seed_type)
{
    return 0;
}

// win1.41 00744140 mac 1055a800 TownCentre::SaveObject(LHOSFile &, MapCoords const &)
uint32_t TownCentre::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 00744320 mac 1055a570 TownCentre::IncreaseLife(float)
void TownCentre::IncreaseLife(float param_1)
{
}

// win1.41 00744380 mac 1055a500 TownCentre::ReactToPhysicsImpact(PhysicsObject *, bool)
void TownCentre::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 007443a0 mac 1055a470 TownCentre::AddToPlayer(void)
void TownCentre::AddToPlayer()
{
}

// win1.41 007443c0 mac 1055a370 TownCentre::ConvertToPlanned(void)
PlannedMultiMapFixed* TownCentre::ConvertToPlanned()
{
    return 0;
}

// // win1.41 00744460 mac 1055a270 PlannedTownCentre::PlannedTownCentre(TownCentre*)
// PlannedTownCentre::PlannedTownCentre(const TownCentre* town_centre)
// {
// }

// win1.41 007444d0 mac 1055a160 PlannedTownCentre::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float)
PlannedTownCentre* PlannedTownCentre::Create(const MapCoords* coords, const GAbodeInfo* info, Town* town, float param_4, float param_5)
{
    return 0;
}

// win1.41 007445d0 mac 10559f30 TownCentre::ReduceLife(float, GPlayer *)
void TownCentre::ReduceLife(float param_1, GPlayer* param_2)
{
}

// win1.41 007447f0 mac 1006eae0 TownCentre::DrawAll(void)
void TownCentre::DrawAll()
{
}

// win1.41 00744830 mac 10559e60 TownCentre::Save(GameOSFile &)
bool TownCentre::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00744880 mac 10559dc0 TownCentre::Load(GameOSFile &)
bool TownCentre::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 007448c0 mac 10559d40 TownCentre::ResolveLoad(void)
void TownCentre::ResolveLoad()
{
}

// win1.41 007448e0 mac 10559c20 TownCentre::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t TownCentre::GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2)
{
    return 0;
}

// win1.41 00744940 mac inlined TownCentre::GetDoorPos(MapCoords *)
MapCoords* TownCentre::GetDoorPos(MapCoords* param_1)
{
    return 0;
}

// win1.41 007449e0 mac inlined TownCentre::GetArrivePos(MapCoords *)
MapCoords* TownCentre::GetArrivePos(MapCoords* param_1)
{
    return 0;
}

// win1.41 00744a00 mac 105599a0 TownCentre::StopBeingFunctional(GPlayer *)
void TownCentre::StopBeingFunctional(GPlayer* param_1)
{
}

// win1.41 00744b20 mac 1055ef20 GTownDesireInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GTownDesireInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00744b90 mac 1055d6c0 GTownDesireInfo::_dt(void)
GTownDesireInfo::~GTownDesireInfo()
{
}

// win1.41 00745710 mac 1055ead0 TownDesire::TownDesire(void)
TownDesire::TownDesire()
{
}

// win1.41 00745730 mac 1055ea40 TownDesire::_dt(void)
TownDesire::~TownDesire()
{
}

// win1.41 00745ae0 mac 1005c8d0 TownDesire::Process(void)
void TownDesire::Process()
{
}

// win1.41 00745f80 mac 1005d280 TownDesire::GetInfo(unsigned long) const
GTownDesireInfo* TownDesire::GetInfo(unsigned long param_1)
{
    return 0;
}

// win1.41 00746580 mac 1005ebc0 GTownDesireInfo::GetDesireFunctions(void) const
GTownDesireFunction* GTownDesireInfo::GetDesireFunctions()
{
    return 0;
}

// win1.41 00746a00 mac 1055db30 TownDesireFlags::ToBeDeleted(int)
void TownDesireFlags::ToBeDeleted(int param_1)
{
}

// win1.41 00746a10 mac 1055dae0 TownDesireFlags::InteractsWithPhysicsObjects(void)
bool TownDesireFlags::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00746a20 mac 100550f0 TownDesireFlags::Process(void)
uint32_t TownDesireFlags::Process()
{
    return 0;
}

// win1.41 00746a30 mac 100364a0 TownDesireFlags::Draw(void)
void TownDesireFlags::Draw()
{
}

// win1.41 00746dc0 mac 1055d830 TownDesireFlags::CallVirtualFunctionsForCreation(MapCoords const &)
void TownDesireFlags::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
}

// win1.41 00746de0 mac 1055d7e0 TownDesireFlags::CreatureMustAvoid(Creature *)
bool TownDesireFlags::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 00746ec0 mac 1055d420 TownDesireFlags::GetQueryFirstEnumText(void)
HELP_TEXT TownDesireFlags::GetQueryFirstEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 00746ed0 mac 1055d3c0 TownDesireFlags::GetQueryLastEnumText(void)
HELP_TEXT TownDesireFlags::GetQueryLastEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 00746ef0 mac 10018a10 TownDesireFlags::GetFOVHelpMessageSet(void)
uint32_t TownDesireFlags::GetFOVHelpMessageSet()
{
    return 0;
}

// win1.41 00746f00 mac 1055c7e0 TownDesireFlags::GetFOVHelpCondition(void)
uint32_t TownDesireFlags::GetFOVHelpCondition()
{
    return 0;
}

// win1.41 00746f10 mac 1055c600 TownDesireFlags::Save(GameOSFile &)
bool TownDesireFlags::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00747030 mac 1055c440 TownDesireFlags::Load(GameOSFile &)
bool TownDesireFlags::Load(GameOSFile& file)
{
    return 0;
}
