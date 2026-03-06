#include "Totem.h"
#include "TotemStatueInfo.h"
#include "TotemStatue.h"
#include "TownInfo.h"
#include "TownStats.h"
#include "Town.h"
#include "Belief.h"

// // win1.41 00737390 mac 105435b0 Totem::Totem(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
// Totem::Totem(const MapCoords* coords, const GAbodeInfo* info, Town* town, float param_4, float param_5, float param_6, int param_7)
// {
// }

// win1.41 00737410 mac 10543540 Totem::Delete(void)
void Totem::Delete()
{
}

// win1.41 00737430 mac 105434c0 Totem::ToBeDeleted(int)
void Totem::ToBeDeleted(int param_1)
{
}

// win1.41 00737490 mac 10543360 Totem::CallVirtualFunctionsForCreation(MapCoords const &)
void Totem::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00737520 mac 10543140 Totem::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t Totem::ValidForLockedSelectProcess(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00737570 mac 10543060 Totem::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t Totem::NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 007375c0 mac 10542ff0 Totem::NetworkUnfriendlyStartLockedSelect(void)
bool Totem::NetworkUnfriendlyStartLockedSelect()
{
    return 0;
}

// win1.41 007375e0 mac 10542f60 Totem::NetworkUnfriendlyEndLockedSelect(void)
bool Totem::NetworkUnfriendlyEndLockedSelect()
{
    return 0;
}

// win1.41 00737600 mac 10542f00 Totem::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
bool Totem::NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00737610 mac 10542df0 Totem::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
bool Totem::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1)
{
    return 0;
}

// win1.41 00737800 mac 10542950 Totem::Load(GameOSFile &)
bool Totem::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 007378b0 mac 10542820 Totem::Save(GameOSFile &)
bool Totem::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00737a70 mac 10543c90 GTotemStatueInfo::GetMesh( const(void))
uint32_t GTotemStatueInfo::GetMesh() const
{
    return 0;
}

// win1.41 00737a80 mac 10545af0 GTotemStatueInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GTotemStatueInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00737af0 mac 10545400 GTotemStatueInfo::_dt(void)
GTotemStatueInfo::~GTotemStatueInfo()
{
}

// win1.41 00737b20 mac 10545880 TotemStatue::TotemStatue(TownCentre *, GTotemStatueInfo const *)
TotemStatue::TotemStatue(TownCentre* tc, GTotemStatueInfo* info)
{
}

// win1.41 00737c20 mac 10545750 TotemStatue::ToBeDeleted(int)
void TotemStatue::ToBeDeleted(int param_1)
{
}

// win1.41 00737c60 mac 105455d0 TotemStatue::IncreaseLife(float)
void TotemStatue::IncreaseLife(float param_1)
{
}

// win1.41 00737c90 mac 10545510 TotemStatue::ReduceLife(float, GPlayer *)
void TotemStatue::ReduceLife(float param_1, GPlayer* param_2)
{
}

// win1.41 00737cc0 mac 10545210 TotemStatue::Create(TownCentre *)
TotemStatue* TotemStatue::Create(TownCentre* town_centre)
{
    return 0;
}

// win1.41 00737d40 mac 105451c0 TotemStatue::InteractsWithPhysicsObjects(void)
bool TotemStatue::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00737d50 mac 10545170 TotemStatue::ReactToPhysicsImpact(PhysicsObject *, bool)
void TotemStatue::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00737d60 mac 10544f40 TotemStatue::CallVirtualFunctionsForCreation(MapCoords const &)
void TotemStatue::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
}

// win1.41 00737f40 mac 10077f00 TotemStatue::Process(void)
uint32_t TotemStatue::Process()
{
    return 0;
}

// win1.41 00738130 mac 10544dd0 TotemStatue::AddToPlayer(void)
void TotemStatue::AddToPlayer()
{
}

// win1.41 00738260 mac 10544c70 TotemStatue::GetWorshipSpeed(void)
float TotemStatue::GetWorshipSpeed()
{
    return 0;
}

// win1.41 00738270 mac 10544b90 TotemStatue::SetWorshipPercentage(float)
void TotemStatue::SetWorshipPercentage(float percentage)
{
}

// win1.41 00738480 mac 10544ac0 TotemStatue::GetTown(void)
Town* TotemStatue::GetTown()
{
    return 0;
}

// win1.41 00738490 mac 10544a00 TotemStatue::GetPlayer(void)
GPlayer* TotemStatue::GetPlayer()
{
    return 0;
}

// win1.41 007384d0 mac 10544960 TotemStatue::GetWorshipSite(void)
WorshipSite* TotemStatue::GetWorshipSite()
{
    return 0;
}

// win1.41 00738500 mac 105447e0 TotemStatue::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t TotemStatue::ValidForLockedSelectProcess(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00738590 mac 10544700 TotemStatue::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t TotemStatue::NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 007385e0 mac 10544640 TotemStatue::NetworkUnfriendlyStartLockedSelect(void)
bool TotemStatue::NetworkUnfriendlyStartLockedSelect()
{
    return 0;
}

// win1.41 00738630 mac 10544580 TotemStatue::NetworkUnfriendlyEndLockedSelect(void)
bool TotemStatue::NetworkUnfriendlyEndLockedSelect()
{
    return 0;
}

// win1.41 00738690 mac 10544520 TotemStatue::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
bool TotemStatue::NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 007386a0 mac 10544470 TotemStatue::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
bool TotemStatue::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1)
{
    return 0;
}

// win1.41 00738700 mac 105442e0 TotemStatue::Save(GameOSFile &)
bool TotemStatue::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00738800 mac 10544120 TotemStatue::Load(GameOSFile &)
bool TotemStatue::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00738940 mac 105440b0 TotemStatue::ResolveLoad(void)
void TotemStatue::ResolveLoad()
{
}

// win1.41 00738960 mac 10024bb0 TotemStatue::Draw(void)
void TotemStatue::Draw()
{
}

// win1.41 00738eb0 mac 10543f70 TotemStatue::GetScriptObjectType(void)
uint32_t TotemStatue::GetScriptObjectType()
{
    return 0;
}

// win1.41 00738f70 mac 10545ba0 GTownInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GTownInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00738fc0 mac 10545c00 GTownInfo::_dt(void)
GTownInfo::~GTownInfo()
{
}

// win1.41 007391a0 mac 10558800 TownStats::_dt(void)
TownStats::~TownStats()
{
}

// win1.41 007391d0 mac 10559100 Town::GetOrigin(void)
uint32_t Town::GetOrigin()
{
    return 0;
}

// win1.41 007391e0 mac 1054a050 Town::GetTown(void)
Town* Town::GetTown()
{
    return 0;
}

// win1.41 007391f0 mac 10559130 Town::GetCreatureBeliefType(void)
uint32_t Town::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 00739200 mac 10559170 Town::GetCreatureBeliefListType(void)
uint32_t Town::GetCreatureBeliefListType()
{
    return 0;
}

// win1.41 00739210 mac 105591b0 Town::IsScriptContainer( const(void))
bool Town::IsScriptContainer()
{
    return 0;
}

// win1.41 00739220 mac inlined Town::IsTown_1(Creature *)
bool Town::IsTown(Creature* param_1)
{
    return 0;
}

// win1.41 00739230 mac 105592e0 Town::IsActivityObjectWhichCompassionAppliesTo(Creature *)
bool Town::IsActivityObjectWhichCompassionAppliesTo(Creature* param_1)
{
    return 0;
}

// win1.41 00739240 mac 10559340 Town::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
bool Town::IsActivityObjectWhichPlayfulnessAppliesTo(Creature* param_1)
{
    return 0;
}

// win1.41 00739250 mac inlined Town::IsTown_0(void)
bool Town::IsTown()
{
    return 0;
}

// win1.41 00739260 mac 105593a0 Town::IsSuitableForCreatureActivity(void)
bool Town::IsSuitableForCreatureActivity()
{
    return 0;
}

// win1.41 00739270 mac 105593f0 Town::CanBePlayedWithByCreature(Creature *)
bool Town::CanBePlayedWithByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00739280 mac 10559440 Town::GetText(void)
const char* Town::GetText()
{
    return 0;
}

// win1.41 00739290 mac 10559470 Town::GetSaveType(void)
uint32_t Town::GetSaveType()
{
    return 0;
}

// win1.41 007392a0 mac 105594a0 Town::GetDebugText(void)
char* Town::GetDebugText()
{
    return 0;
}

// win1.41 007392b0 mac 10558ef0 Town::_dt(void)
Town::~Town()
{
}

// win1.41 00739320 mac 105581c0 GBelief::_dt(void)
GBelief::~GBelief()
{
}

// win1.41 00739350 mac 105575b0 Town::__ct(MapCoords const &, GTownInfo const *, GPlayer *, TRIBE_TYPE, char *, unsigned long, int)
Town::Town(MapCoords* coords, GTownInfo* info, GPlayer* player, TRIBE_TYPE tribe_type, char* param_5, uint32_t param_6, int param_7)
{
}

// win1.41 00739970 mac 10556980 Town::ToBeDeleted(int)
void Town::ToBeDeleted(int param_1)
{
}

// win1.41 007399a0 mac 10556850 Town::AddStructureToTown(MultiMapFixed *)
void Town::AddStructureToTown(MultiMapFixed* structure)
{
}

// win1.41 00739a20 mac 105567f0 Town::AddAbodeToTownStats(Abode *)
void Town::AddAbodeToTownStats(Abode* abode)
{
}

// win1.41 0073a090 mac 10556400 Town::AddVillagerToTown(Villager *)
bool Town::AddVillagerToTown(Villager* villager)
{
    return 0;
}

// win1.41 0073a140 mac 10007ca0 Town::GetBestPlanned(float &, ABODE_TYPE)
PlannedMultiMapFixed* Town::GetBestPlanned(float* param_1, ABODE_TYPE param_2)
{
    return 0;
}

// win1.41 0073a1a0 mac 100896c0 Town::GetDesireToBeBuilt(GMultiMapFixedInfo const *, unsigned long)
float Town::GetDesireToBeBuilt(const GMultiMapFixedInfo* param_1, unsigned long param_2)
{
    return 0;
}
