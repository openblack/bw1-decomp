#include "Pot.h"
#include "PileResource.h"
#include "PotStructure.h"
#include "PileFood.h"
#include "PileWood.h"
#include "PrayerSiteInfo.h"
#include "PrayerIconInfo.h"
#include "PrayerSite.h"

// win1.41 0066ce60 mac 1011cef0 Pot::Pot(MapCoords const &, GPotInfo const *, unsigned long, Town *, float, float)
Pot::Pot(MapCoords* param_1, GPotInfo* param_2, uint32_t param_3, Town* param_4, float param_5, float param_6)
{
}

// win1.41 0066cec0 mac 1011ceb0 Pot::SetToZero(void)
void Pot::SetToZero()
{
}

// win1.41 0066ced0 mac 1011ce10 Pot::InteractsWithPhysicsObjects(void)
bool Pot::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 0066cef0 mac 1011cd80 Pot::GetPhysicsConstantsType(void)
uint32_t Pot::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 0066d110 mac 1011c930 Pot::ToBeDeleted(int)
void Pot::ToBeDeleted(int param_1)
{
}

// win1.41 0066d130 mac 1011c840 Pot::CallVirtualFunctionsForCreation(MapCoords const &)
void Pot::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 0066d290 mac 1011c770 Pot::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t Pot::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6)
{
    return 0;
}

// win1.41 0066d2b0 mac 10004180 Pot::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
uint32_t Pot::JustAddResource(RESOURCE_TYPE param_1, uint32_t param_2, bool param_3)
{
    return 0;
}

// win1.41 0066d330 mac 10003c80 PileResource::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
uint32_t PileResource::JustAddResource(RESOURCE_TYPE param_1, uint32_t param_2, bool param_3)
{
    return 0;
}

// win1.41 0066d390 mac 10077db0 Pot::JustGetResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t Pot::JustGetResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3)
{
    return 0;
}

// win1.41 0066d3d0 mac 1011c200 Pot::GetResource(RESOURCE_TYPE)
uint32_t Pot::GetResource(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 0066d3f0 mac 1011c180 Pot::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t Pot::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 0066d410 mac 1011c040 Pot::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t Pot::JustRemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3)
{
    return 0;
}

// win1.41 0066d480 mac inlined PotStructure::SetSize(void)
void PotStructure::SetSize()
{
}

// win1.41 0066d550 mac 1011bd00 Pot::SaveObject(LHOSFile &, MapCoords const &)
uint32_t Pot::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 0066d650 mac 1011bcb0 Pot::IsEffectReceiver(EffectValues *)
bool Pot::IsEffectReceiver(EffectValues* param_1)
{
    return 0;
}

// win1.41 0066d6c0 mac 1011bb10 Pot::StartOnFire(void)
void Pot::StartOnFire()
{
}

// win1.41 0066d6d0 mac 1011ba60 Pot::EndOnFire(void)
void Pot::EndOnFire()
{
}

// win1.41 0066d710 mac 1011b9b0 Pot::InterfaceSetInMagicHand(GInterfaceStatus *)
bool Pot::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0066d730 mac 1011b830 Pot::Save(GameOSFile &)
bool Pot::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0066d820 mac 1011b6c0 Pot::Load(GameOSFile &)
bool Pot::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0066d910 mac 1011b5e0 PotStructure::PotStructure(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
PotStructure::PotStructure(MapCoords* coords, GPotInfo* param_2, uint32_t param_3, MultiMapFixed* param_4, Town* param_5, int param_6, float param_7, float param_8)
{
}

// win1.41 0066d960 mac 1011b560 PotStructure::ToBeDeleted(int)
void PotStructure::ToBeDeleted(int param_1)
{
}

// win1.41 0066d9b0 mac 1011b3d0 PotStructure::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t PotStructure::JustRemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3)
{
    return 0;
}

// win1.41 0066da00 mac 10077bc0 PotStructure::IsPartOfStructure(void)
bool PotStructure::IsPartOfStructure()
{
    return 0;
}

// win1.41 0066da30 mac 1011b250 PotStructure::IsResourceStore(RESOURCE_TYPE)
bool PotStructure::IsResourceStore(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 0066da90 mac 1011b150 PotStructure::Save(GameOSFile &)
bool PotStructure::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0066db10 mac 1011b060 PotStructure::Load(GameOSFile &)
bool PotStructure::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0066db90 mac 1011afa0 PotStructure::CallVirtualFunctionsForCreation(const MapCoords&)
void PotStructure::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
}

// win1.41 0066dbd0 mac 1011ae20 Pot::EndPhysics(PhysicsObject *, bool)
void Pot::EndPhysics(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 0066dc90 mac 1011ac90 Pot::ReactToPhysicsImpact(PhysicsObject *, bool)
void Pot::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 0066dd30 mac 1011ac10 Pot::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool Pot::DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2)
{
    return 0;
}

// win1.41 0066dd50 mac 1011aae0 Pot::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t Pot::ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2)
{
    return 0;
}

// win1.41 0066ddd0 mac 1011a930 Pot::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t Pot::ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 0066de70 mac 1011a7e0 Pot::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t Pot::ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 0066df00 mac 1011a620 Pot::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
uint32_t Pot::InitialisePhysicsFromHand(LHPoint* param_1, LHPoint* param_2, GInterfaceStatus* param_3, Object* param_4, int param_5)
{
    return 0;
}

// // win1.41 0066dfe0 mac 1011a450 PileFood::PileFood(void)
// PileFood::PileFood()
// {
// }

// win1.41 0066e020 mac 1011d5b0 PileFood::GetSaveType(void)
uint32_t PileFood::GetSaveType()
{
    return 0;
}

// win1.41 0066e030 mac 1011d5f0 PileFood::GetDebugText(void)
char* PileFood::GetDebugText()
{
    return 0;
}

// win1.41 0066e040 mac 1011a220 PileFood::_dt(void)
PileFood::~PileFood()
{
}

// // win1.41 0066e070 mac 1011a2b0 PileFood::PileFood(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
// PileFood::PileFood(MapCoords* coords, GPotInfo* param_2, uint32_t param_3, MultiMapFixed* param_4, Town* param_5, int param_6, float param_7, float param_8)
// {
// }

// win1.41 0066e100 mac 10119f30 PileFood::ToBeDeleted(int)
void PileFood::ToBeDeleted(int param_1)
{
}

// win1.41 0066e1a0 mac 10119ea0 PileFood::CallVirtualFunctionsForCreation(MapCoords const &)
void PileFood::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 0066e1f0 mac 10119d80 PileFood::CreatureMustAvoid(Creature *)
bool PileFood::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 0066e2a0 mac 10119c00 PileFood::GetQueryFirstEnumText(void)
HELP_TEXT PileFood::GetQueryFirstEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 0066e2d0 mac 10119b60 PileFood::GetQueryLastEnumText(void)
HELP_TEXT PileFood::GetQueryLastEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 0066e300 mac 10119a80 PileResource::CallVirtualFunctionsForCreation(MapCoords const &)
void PileResource::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
}

// win1.41 0066e380 mac 10119a40 PileFood::Get3DType(void)
LH3DObject::ObjectType PileFood::Get3DType()
{
    return (LH3DObject::ObjectType)0;
}

// win1.41 0066e390 mac 101199a0 PileResource::CanBePickedUpByCreature(Creature *)
bool PileResource::CanBePickedUpByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 0066e3b0 mac 10119960 PileResource::IsTuggable(void)
bool PileResource::IsTuggable()
{
    return 0;
}

// win1.41 0066e3c0 mac inlined PileResource::IsField(Creature *)
bool PileResource::IsField(Creature* param_1)
{
    return 0;
}

// win1.41 0066e3d0 mac 10119880 PileResource::GetLife(void)
float PileResource::GetLife()
{
    return 0;
}

// win1.41 0066e400 mac 101196c0 PileResource::SetLife(float)
void PileResource::SetLife(float param_1)
{
}

// win1.41 0066e4f0 mac 10119600 PileResource::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t PileResource::ValidForLockedSelectProcess(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0066e520 mac 101192c0 PileResource::ProcessInInteract(GInterfaceStatus *)
uint32_t PileResource::ProcessInInteract(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0066e710 mac 10119060 PileResource::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t PileResource::NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0066e830 mac 10118ff0 PileResource::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
bool PileResource::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1)
{
    return 0;
}

// win1.41 0066e840 mac 10118fa0 PileResource::NetworkUnfriendlyEndLockedSelect(void)
bool PileResource::NetworkUnfriendlyEndLockedSelect()
{
    return 0;
}

// win1.41 0066e850 mac 10118e70 PileResource::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
bool PileResource::NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0066e8f0 mac 10118e10 Pot::CanBecomeAPhysicsObject(void)
bool Pot::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 0066ec50 mac 10117fe0 PileFood::GetResourceType(void)
RESOURCE_TYPE PileFood::GetResourceType()
{
    return (RESOURCE_TYPE)0;
}

// win1.41 0066ec60 mac 10077d70 PileWood::GetResourceType(void)
RESOURCE_TYPE PileWood::GetResourceType()
{
    return (RESOURCE_TYPE)0;
}

// // win1.41 0066ec70 mac 10117e50 PileResource::PileResource(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
// PileResource::PileResource(MapCoords* param_1, GPotInfo* info, uint32_t param_3, MultiMapFixed* param_4, Town* param_5, int param_6, float param_7, float param_8)
// {
// }

// win1.41 0066ecb0 mac 1011a3b0 PileResource::_dt(void)
PileResource::~PileResource()
{
}

// win1.41 0066ece0 mac 10117d60 PileResource::ValidForPlaceInHand(GInterfaceStatus *)
bool PileResource::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0066ed60 mac 10117ce0 PileResource::IsPileResource(void)
bool PileResource::IsPileResource()
{
    return 0;
}

// win1.41 0066ed70 mac 10117b70 PotStructure::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t PotStructure::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6)
{
    return 0;
}

// win1.41 0066ee10 mac 10117970 PotStructure::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t PotStructure::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 0066ef00 mac 10077c70 PotStructure::GetResource(RESOURCE_TYPE)
uint32_t PotStructure::GetResource(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 0066ef60 mac 10117830 PotStructure::GetTown(void)
Town* PotStructure::GetTown()
{
    return 0;
}

// win1.41 0066ef80 mac 10117380 PileResource::InterfaceSetInMagicHand(GInterfaceStatus *)
bool PileResource::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0066f180 mac 10116f30 PileFood::Get2DRadius(void)
float PileFood::Get2DRadius()
{
    return 0;
}

// win1.41 0066f230 mac 10116cf0 PotStructure::GetPlayer(void)
GPlayer* PotStructure::GetPlayer()
{
    return 0;
}

// win1.41 0066f520 mac 10116810 Pot::GetRadiusMultiplierForApplyingPotToPos(void)
float Pot::GetRadiusMultiplierForApplyingPotToPos()
{
    return 0;
}

// win1.41 0066f530 mac 101167d0 Pot::GetScriptObjectType(void)
uint32_t Pot::GetScriptObjectType()
{
    return 0;
}

// win1.41 0066f540 mac 10116750 Pot::GetOverwriteInteractableToolTip(void)
uint32_t Pot::GetOverwriteInteractableToolTip()
{
    return 0;
}

// win1.41 0066f560 mac 10116710 Pot::IsResourceStore(RESOURCE_TYPE)
bool Pot::IsResourceStore(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 0066f570 mac 10116690 Pot::GetFoodValue(FOOD_TYPE)
float Pot::GetFoodValue(FOOD_TYPE param_1)
{
    return 0;
}

// win1.41 0066f5a0 mac 10116600 PileFood::Save(GameOSFile &)
bool PileFood::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0066f5e0 mac 10116570 PileFood::Load(GameOSFile &)
bool PileFood::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0066f620 mac 10116490 PileResource::Save(GameOSFile &)
bool PileResource::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0066f690 mac 101163b0 PileResource::Load(GameOSFile &)
bool PileResource::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00670660 mac 1011eac0 GPrayerSiteInfo::GetMesh( const(void))
uint32_t GPrayerSiteInfo::GetMesh() const
{
    return 0;
}

// win1.41 00670670 mac 1011eb00 GPrayerSiteInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GPrayerSiteInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 006706c0 mac 1011ea20 GPrayerSiteInfo::_dt(void)
GPrayerSiteInfo::~GPrayerSiteInfo()
{
}

// win1.41 00670720 mac 1011eb60 GPrayerIconInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GPrayerIconInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00670770 mac 1011e8e0 GPrayerIconInfo::_dt(void)
GPrayerIconInfo::~GPrayerIconInfo()
{
}

// win1.41 006707f0 mac inlined PrayerSite::GetMesh( const(void))
int PrayerSite::GetMesh() const
{
    return 0;
}

// win1.41 00670800 mac inlined PrayerSite::_dt(void)
PrayerSite::~PrayerSite()
{
}

// win1.41 00670830 mac inlined PrayerSite::ToBeDeleted(int)
void PrayerSite::ToBeDeleted(int param_1)
{
}

// win1.41 006708b0 mac inlined PrayerSite::Process(void)
uint32_t PrayerSite::Process()
{
    return 0;
}

// win1.41 006708c0 mac inlined PrayerSite::GetPlayer(void)
GPlayer* PrayerSite::GetPlayer()
{
    return 0;
}

// win1.41 006708e0 mac inlined PrayerSite::GetTown(void)
Town* PrayerSite::GetTown()
{
    return 0;
}

// win1.41 00670a10 mac inlined PrayerSite::CreatureMustAvoid(Creature *)
bool PrayerSite::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}
