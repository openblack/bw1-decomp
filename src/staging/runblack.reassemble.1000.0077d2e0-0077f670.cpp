#include "WorshipSite.h"
#include "WorshipSiteUpgradeInfo.h"
#include "WorshipSiteUpgrade.h"
#include "PlannedWorshipSiteUpgrade.h"
#include "WorshipSpellIcon.h"

// win1.41 0077d2e0 mac 105ae4e0 WorshipSite::GetScriptObjectType(void)
uint32_t WorshipSite::GetScriptObjectType()
{
    return 0;
}

// win1.41 0077d2f0 mac 105ad890 WorshipSite::Save(GameOSFile &)
bool WorshipSite::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0077d700 mac 105acc40 WorshipSite::Load(GameOSFile &)
bool WorshipSite::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0077daf0 mac 105acbf0 WorshipSite::ResolveLoad(void)
void WorshipSite::ResolveLoad()
{
}

// win1.41 0077dc90 mac 105ac5f0 WorshipSite::GetNearestEdgeOfObject(Object *)
void WorshipSite::GetNearestEdgeOfObject(Object* param_1)
{
}

// win1.41 0077dde0 mac inlined WorshipSite::GetDefaultFireCentrePos(LHPoint *)
LHPoint* WorshipSite::GetDefaultFireCentrePos(LHPoint* param_1)
{
    return 0;
}

// win1.41 0077de10 mac 105ac3e0 WorshipSite::GetDefaultFireRadius(void)
float WorshipSite::GetDefaultFireRadius()
{
    return 0;
}

// win1.41 0077de20 mac 105ac330 WorshipSite::GetDistanceFromObject(Object *)
float WorshipSite::GetDistanceFromObject(Object* param_1)
{
    return 0;
}

// win1.41 0077de70 mac 105ac230 WorshipSite::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t WorshipSite::GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2)
{
    return 0;
}

// win1.41 0077dec0 mac 105ac190 WorshipSite::IsResourceStore(RESOURCE_TYPE)
bool WorshipSite::IsResourceStore(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 0077def0 mac 105ac090 WorshipSite::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
bool WorshipSite::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE param_1, GInterfaceStatus* param_2)
{
    return 0;
}

// win1.41 0077e1d0 mac 105aba90 WorshipSite::RemoveVillagerRequestingToGoHome(Villager *)
void WorshipSite::RemoveVillagerRequestingToGoHome(Villager* param_1)
{
}

// win1.41 0077e260 mac 105aba40 WorshipSite::GetNumVillagersRequestingToGoHome(void)
int WorshipSite::GetNumVillagersRequestingToGoHome()
{
    return 0;
}

// win1.41 0077e460 mac inlined WorshipSite::GetResourceDropPosForComputerPlayer(MapCoords *)
void WorshipSite::GetResourceDropPosForComputerPlayer(MapCoords* param_1)
{
}

// win1.41 0077e480 mac 105ab730 WorshipSite::GetRadiusMultiplierForApplyingPotToPos(void)
float WorshipSite::GetRadiusMultiplierForApplyingPotToPos()
{
    return 0;
}

// win1.41 0077e7b0 mac 105ab190 WorshipSite::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool WorshipSite::DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2)
{
    return 0;
}

// win1.41 0077eb70 mac 105b4210 GWorshipSiteUpgradeInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GWorshipSiteUpgradeInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0077ebc0 mac 105b4170 GWorshipSiteUpgradeInfo::_dt(void)
GWorshipSiteUpgradeInfo::~GWorshipSiteUpgradeInfo()
{
}

// win1.41 0077ec60 mac inlined WorshipSiteUpgrade::GetWorshipSite(void)
WorshipSite* WorshipSiteUpgrade::GetWorshipSite()
{
    return 0;
}

// win1.41 0077ec70 mac inlined WorshipSiteUpgrade::_dt(void)
WorshipSiteUpgrade::~WorshipSiteUpgrade()
{
}

// win1.41 0077eca0 mac inlined WorshipSiteUpgrade::ToBeDeleted(int)
void WorshipSiteUpgrade::ToBeDeleted(int param_1)
{
}

// win1.41 0077ed80 mac inlined WorshipSiteUpgrade::GetPlayer(void)
GPlayer* WorshipSiteUpgrade::GetPlayer()
{
    return 0;
}

// win1.41 0077edd0 mac inlined WorshipSiteUpgrade::ConvertToPlanned(void)
PlannedMultiMapFixed* WorshipSiteUpgrade::ConvertToPlanned()
{
    return 0;
}

// win1.41 0077ee70 mac inlined PlannedWorshipSiteUpgrade::_dt(void)
PlannedWorshipSiteUpgrade::~PlannedWorshipSiteUpgrade()
{
}

// win1.41 0077eea0 mac inlined PlannedWorshipSiteUpgrade::CreatePlanned(float)
MultiMapFixed* PlannedWorshipSiteUpgrade::CreatePlanned(float param_1)
{
    return 0;
}

// win1.41 0077ef30 mac inlined WorshipSiteUpgrade::SaveObject(LHOSFile &, MapCoords const &)
uint32_t WorshipSiteUpgrade::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 0077f0a0 mac 10381d20 WorshipSpellIcon::GetWorshipSite(void)
WorshipSite* WorshipSpellIcon::GetWorshipSite()
{
    return 0;
}

// win1.41 0077f0b0 mac 105b42c0 WorshipSpellIcon::IsEffectReceiver(EffectValues *)
bool WorshipSpellIcon::IsEffectReceiver(EffectValues* param_1)
{
    return 0;
}

// win1.41 0077f0d0 mac 105b4360 WorshipSpellIcon::SaveObject(LHOSFile &, MapCoords const &)
uint32_t WorshipSpellIcon::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 0077f0e0 mac 105b43b0 WorshipSpellIcon::ApplyEffect(EffectValues &, int)
void WorshipSpellIcon::ApplyEffect(EffectValues* param_1, int param_2)
{
}

// win1.41 0077f0f0 mac 105b4400 WorshipSpellIcon::GetSaveType(void)
uint32_t WorshipSpellIcon::GetSaveType()
{
    return 0;
}

// win1.41 0077f100 mac 105b4440 WorshipSpellIcon::GetDebugText(void)
char* WorshipSpellIcon::GetDebugText()
{
    return 0;
}

// win1.41 0077f110 mac 105b6fb0 WorshipSpellIcon::_dt(void)
WorshipSpellIcon::~WorshipSpellIcon()
{
}

// // win1.41 0077f140 mac 105b7070 WorshipSpellIcon::WorshipSpellIcon(MapCoords const &, GSpellIconInfo const *, GSpellSeedInfo const *, WorshipSite *, short, float, int)
// WorshipSpellIcon::WorshipSpellIcon(const MapCoords* coords, const GSpellIconInfo* icon_info, const GSpellSeedInfo* seed_info, WorshipSite* site, int16_t slot, float param_6, int param_7)
// {
// }

// win1.41 0077f1f0 mac inlined WorshipSpellIcon::SetZero(void)
void WorshipSpellIcon::SetZero()
{
}

// win1.41 0077f230 mac 105b6ed0 WorshipSpellIcon::ToBeDeleted(int)
void WorshipSpellIcon::ToBeDeleted(int param_1)
{
}

// win1.41 0077f290 mac 105b6e40 WorshipSpellIcon::CallVirtualFunctionsForCreation(const MapCoords &)
void WorshipSpellIcon::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
}

// win1.41 0077f2b0 mac 105b6cf0 WorshipSpellIcon::Create(MapCoords const &, GSpellIconInfo const *, GSpellSeedInfo const *, WorshipSite *, short, float, int)
WorshipSpellIcon* WorshipSpellIcon::Create(MapCoords* coords, GSpellIconInfo* icon_info, GSpellSeedInfo* seed_info, WorshipSite* site, int16_t slot, float param_6, int param_7)
{
    return 0;
}

// win1.41 0077f320 mac 105b6bf0 WorshipSpellIcon::UpdateGraphicsWithPULevels(void)
void WorshipSpellIcon::UpdateGraphicsWithPULevels()
{
}

// win1.41 0077f390 mac 105b6a70 WorshipSpellIcon::Process(void)
uint32_t WorshipSpellIcon::Process()
{
    return 0;
}
