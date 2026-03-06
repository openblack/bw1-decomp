#include "MagicInfo.h"
#include "MagicHealInfo.h"
#include "MagicTeleportInfo.h"
#include "MagicForestInfo.h"
#include "MagicResourceInfo.h"
#include "MagicStormAndTornadoInfo.h"
#include "MagicShieldInfo.h"
#include "MagicWaterInfo.h"
#include "MagicFlockFlyingInfo.h"
#include "MagicFlockGroundInfo.h"
#include "MagicCreatureSpellInfo.h"
#include "MagicObjectInfo.h"
#include "MagicRadiusSpellInfo.h"
#include "BallInfo.h"
#include "Ball.h"
#include "Base.h"
#include "BaseInfo.h"
#include "BeliefInfo.h"
#include "Belief.h"
#include "BigForestInfo.h"
#include "BigForest.h"
#include "MultiMapFixed.h"
#include "MobileStatic.h"
#include "Rock.h"
#include "Bonfire.h"
#include "BuildingSite.h"
#include "StandardBuildingSite.h"
#include "CitadelBuildingSite.h"
#include "WorkshopBuildingSite.h"
#include "BWGameSpy.h"
#include "lhall/released/headers/LHTimer.h"

// win1.41 00435520 mac 1018eec0 GMagicInfo::GMagicInfo(void)
GMagicInfo::GMagicInfo()
{
}

// win1.41 00435680 mac 1018ee20 GMagicInfo::_dt(void)
GMagicInfo::~GMagicInfo()
{
}

// win1.41 004356a0 mac 103ae460 GMagicHealInfo::_dt(void)
GMagicHealInfo::~GMagicHealInfo()
{
}

// win1.41 004356c0 mac 103b2190 GMagicTeleportInfo::_dt(void)
GMagicTeleportInfo::~GMagicTeleportInfo()
{
}

// win1.41 004356e0 mac 103ac990 GMagicForestInfo::_dt(void)
GMagicForestInfo::~GMagicForestInfo()
{
}

// win1.41 00435700 mac 103ac8f0 GMagicResourceInfo::_dt(void)
GMagicResourceInfo::~GMagicResourceInfo()
{
}

// win1.41 00435740 mac 103aebf0 GMagicStormAndTornadoInfo::_dt(void)
GMagicStormAndTornadoInfo::~GMagicStormAndTornadoInfo()
{
}

// win1.41 00435780 mac 103aeca0 GMagicShieldInfo::_dt(void)
GMagicShieldInfo::~GMagicShieldInfo()
{
}

// win1.41 004357a0 mac 103ac480 GMagicWaterInfo::_dt(void)
GMagicWaterInfo::~GMagicWaterInfo()
{
}

// win1.41 004357c0 mac 1051ed80 GMagicFlockFlyingInfo::_dt(void)
GMagicFlockFlyingInfo::~GMagicFlockFlyingInfo()
{
}

// win1.41 004357e0 mac 1051ece0 GMagicFlockGroundInfo::_dt(void)
GMagicFlockGroundInfo::~GMagicFlockGroundInfo()
{
}

// win1.41 00435800 mac 103aba10 GMagicCreatureSpellInfo::_dt(void)
GMagicCreatureSpellInfo::~GMagicCreatureSpellInfo()
{
}

// win1.41 00435830 mac 1018fa30 GMagicObjectInfo::_dt(void)
GMagicObjectInfo::~GMagicObjectInfo()
{
}

// win1.41 00435850 mac 10190190 GMagicRadiusSpellInfo::_dt(void)
GMagicRadiusSpellInfo::~GMagicRadiusSpellInfo()
{
}

// win1.41 00435930 mac 100b1090 GBallInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GBallInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00435980 mac 100b0ff0 GBallInfo::_dt(void)
GBallInfo::~GBallInfo()
{
}

// win1.41 004359b0 mac 100b0df0 Ball::Ball(MapCoords const &, GBallInfo const *)
Ball::Ball(const MapCoords* coords, const GBallInfo* info)
{
}

// win1.41 00435ab0 mac 100aff50 Ball::CanBePickedUpByCreature(Creature *)
bool Ball::CanBePickedUpByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00435ac0 mac 100affa0 Ball::GetSaveType(void)
uint32_t Ball::GetSaveType()
{
    return 0;
}

// win1.41 00435ad0 mac 100affd0 Ball::GetDebugText(void)
char* Ball::GetDebugText()
{
    return 0;
}

// win1.41 00435ae0 mac 100b0b20 Ball::_dt(void)
Ball::~Ball()
{
}

// win1.41 00435b90 mac 100b09f0 Ball::Create(MapCoords const &, GBallInfo const *, unsigned short, float, float)
Ball* Ball::Create(const MapCoords& param_1, const GBallInfo* param_2, unsigned short param_3, float param_4, float param_5)
{
    return 0;
}

// win1.41 00435c30 mac 100b0970 Ball::Process(void)
uint32_t Ball::Process()
{
    return 0;
}

// win1.41 00435f60 mac 100b0630 Ball::GetPlayer(void)
GPlayer* Ball::GetPlayer()
{
    return 0;
}

// win1.41 004360e0 mac 100b04d0 Ball::IsBallFree(void)
bool Ball::IsBallFree()
{
    return 0;
}

// win1.41 004360f0 mac 100b0490 Ball::GetPhysicsConstantsType(void)
uint32_t Ball::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 00436100 mac 100b0450 Ball::GetScriptObjectType(void)
uint32_t Ball::GetScriptObjectType()
{
    return 0;
}

// win1.41 00436110 mac 100b0260 Ball::Save(GameOSFile &)
bool Ball::Save(GameOSFile& param_1)
{
    return 0;
}

// win1.41 00436260 mac 100b0080 Ball::Load(GameOSFile &)
bool Ball::Load(GameOSFile& param_1)
{
    return 0;
}

// win1.41 004363b0 mac 100b0040 Ball::IsToy(Creature *)
bool Ball::IsToy(Creature* param_1)
{
    return 0;
}

// win1.41 004363c0 mac 100b0000 Ball::IsToyBall(Creature *)
bool Ball::IsToyBall(Creature* param_1)
{
    return 0;
}

// // win1.41 004366f0 mac 1009ebc0 Base::operator new(unsigned long)
// void* Base::operator new(size_t size, const char* file_name, uint32_t line)
// {
//     return 0;
// }

// // win1.41 00436970 mac 10425a80 Base::operator delete(void*, unsigned long)
// void Base::operator delete(void* ptr, size_t size)
// {
// }

// win1.41 00436b20 mac 10001480 Base::SetInfo(BaseInfo*) const
void Base::SetInfo(BaseInfo* info)
{
}

// win1.41 00436bb0 mac 10001410 BaseInfo::Set(Base*)
void BaseInfo::Set(Base* base)
{
}

// win1.41 00436bd0 mac 1035b720 GBaseInfo::SetInfoID(void)
void GBaseInfo::SetInfoID()
{
}

// win1.41 00436c30 mac 103e4630 GBaseInfo::GetInfoPtr(unsigned long)
GBaseInfo* GBaseInfo::GetInfoPtr(int index)
{
    return 0;
}

// win1.41 00436c60 mac 1055df70 GBaseInfo::GetDebugColor(void) const
LHColor* GBaseInfo::GetDebugColor(LHColor* color)
{
    return 0;
}

// win1.41 00437d60 mac 100b2260 GBeliefInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GBeliefInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00437db0 mac 100b22b0 GBeliefInfo::_dt(void)
GBeliefInfo::~GBeliefInfo()
{
}

// win1.41 00437e70 mac 00437e70 GBelief::GetBeliefInPlayer(unsigned long)
float GBelief::GetBeliefInPlayer(unsigned long param_1)
{
    return 0;
}

// win1.41 00438770 mac 100b1810 GBelief::DistanceChangeToBelief(float, float)
float GBelief::DistanceChangeToBelief(float param_1, float param_2)
{
    return 0;
}

// win1.41 004387d0 mac 100b1700 GBelief::SetBelief(unsigned long, float)
void GBelief::SetBelief(int index, float value)
{
}

// win1.41 00438a00 mac 100b13e0 GBelief::SetBeliefInPlayerCap(GPlayer *, float)
void GBelief::SetBeliefInPlayerCap(GPlayer* player, float cap)
{
}

// win1.41 00438c50 mac 100b2530 GBigForestInfo::GetMesh( const(void))
uint32_t GBigForestInfo::GetMesh() const
{
    return 0;
}

// win1.41 00438cb0 mac 100b33d0 GBigForestInfo::_dt(void)
GBigForestInfo::~GBigForestInfo()
{
}

// win1.41 00438ce0 mac 100b3a20 BigForest::BigForest(MapCoords const &, GBigForestInfo const *, unsigned long, float, float)
BigForest::BigForest(const MapCoords* coords, const GBigForestInfo* info, uint32_t param_3, float param_4, float param_5)
{
}

// win1.41 00438d70 mac 10368f30 MultiMapFixed::IsRepaired(void)
bool MultiMapFixed::IsRepaired()
{
    return 0;
}

// win1.41 00438d80 mac 10570e90 MultiMapFixed::IsBuilt(void)
bool MultiMapFixed::IsBuilt()
{
    return 0;
}

// win1.41 00438d90 mac 100b25f0 MultiMapFixed::ConvertToPlanned(void)
PlannedMultiMapFixed* MultiMapFixed::ConvertToPlanned()
{
    return 0;
}

// win1.41 00438da0 mac 100b2350 BigForest::Get3DType(void)
LH3DObject::ObjectType BigForest::Get3DType()
{
    return (LH3DObject::ObjectType)0;
}

// win1.41 00438db0 mac 100b2390 BigForest::ValidForPlaceInHand(GInterfaceStatus *)
bool BigForest::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00438dc0 mac 100b23e0 BigForest::IsTuggable(void)
bool BigForest::IsTuggable()
{
    return 0;
}

// win1.41 00438dd0 mac 100b2420 BigForest::VillagerMustAvoid(Villager *)
bool BigForest::VillagerMustAvoid(Villager* param_1)
{
    return 0;
}

// win1.41 00438de0 mac 100b2470 BigForest::GetCarriedTreeType(void)
uint32_t BigForest::GetCarriedTreeType()
{
    return 0;
}

// win1.41 00438df0 mac 100b24d0 BigForest::GetMesh( const(void))
int BigForest::GetMesh() const
{
    return 0;
}

// win1.41 00438e00 mac 100b2570 BigForest::GetSaveType(void)
uint32_t BigForest::GetSaveType()
{
    return 0;
}

// win1.41 00438e10 mac 100b25b0 BigForest::GetDebugText(void)
char* BigForest::GetDebugText()
{
    return 0;
}

// win1.41 00438e20 mac 100b3990 BigForest::_dt(void)
BigForest::~BigForest()
{
}

// win1.41 00438e60 mac 100b36e0 BigForest::ToBeDeleted(int)
void BigForest::ToBeDeleted(int param_1)
{
}

// win1.41 00438ec0 mac 100b3590 BigForest::Create(MapCoords const &, GBigForestInfo const *, unsigned long, float, float)
BigForest* BigForest::Create(MapCoords* coords, GBigForestInfo* info, uint32_t param_3, float param_4, float param_5)
{
    return 0;
}

// win1.41 00438f50 mac 100b3530 BigForest::CreatureMustAvoid(Creature *)
bool BigForest::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 00438f60 mac 10020e40 BigForest::Draw(void)
void BigForest::Draw()
{
}

// win1.41 00438f70 mac 100b3190 BigForest::SaveObject(LHOSFile &, MapCoords const &)
uint32_t BigForest::SaveObject(LHOSFile& param_1, const MapCoords& param_2)
{
    return 0;
}

// win1.41 00439050 mac 100b30a0 BigForest::CallVirtualFunctionsForCreation(MapCoords const &)
void BigForest::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 004390a0 mac 100b3050 BigForest::InteractsWithPhysicsObjects(void)
bool BigForest::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 004390b0 mac 100b2fe0 BigForest::GetWoodValue(void)
float BigForest::GetWoodValue()
{
    return 0;
}

// win1.41 004390d0 mac 100b2d80 BigForest::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t BigForest::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 004393c0 mac 100b29f0 BigForest::InterfaceSetInMagicHand(GInterfaceStatus *)
bool BigForest::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00439470 mac 100b2840 BigForest::Save(GameOSFile &)
bool BigForest::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 004394e0 mac 100b2760 BigForest::Load(GameOSFile &)
bool BigForest::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00439550 mac 100b2690 BigForest::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t BigForest::GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2)
{
    return 0;
}

// win1.41 00439610 mac 100b40c0 MobileStatic::GetXAngle(void)
float MobileStatic::GetXAngle()
{
    return 0;
}

// win1.41 00439620 mac 100b4100 MobileStatic::GetZAngle(void)
float MobileStatic::GetZAngle()
{
    return 0;
}

// win1.41 00439630 mac 100b4140 MobileStatic::CanBeStompedOnByCreature(Creature *)
bool MobileStatic::CanBeStompedOnByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00439640 mac 100b4190 MobileStatic::CanBePlayedWithByCreature(Creature *)
bool MobileStatic::CanBePlayedWithByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00439650 mac 100b41e0 MobileStatic::CanBeThrownInTheSeaPlayfully(Creature *)
bool MobileStatic::CanBeThrownInTheSeaPlayfully(Creature* param_1)
{
    return 0;
}

// win1.41 00439660 mac 100b4240 MobileStatic::GetTastiness(void)
uint32_t MobileStatic::GetTastiness()
{
    return 0;
}

// win1.41 00439670 mac 100b4280 MobileStatic::CanBePickedUp(void)
bool MobileStatic::CanBePickedUp()
{
    return 0;
}

// win1.41 00439680 mac 100b42d0 MobileStatic::GetMesh( const(void))
int MobileStatic::GetMesh() const
{
    return 0;
}

// win1.41 00439690 mac 100b4420 MobileStatic::IsSolidToNewAbode(void)
bool MobileStatic::IsSolidToNewAbode()
{
    return 0;
}

// win1.41 004396a0 mac 100b4460 MobileStatic::IsFunctional(void)
bool MobileStatic::IsFunctional()
{
    return 0;
}

// win1.41 004396b0 mac 100b44c0 MobileStatic::ApplyOnlyAfterReleased(void)
uint32_t MobileStatic::ApplyOnlyAfterReleased()
{
    return 0;
}

// win1.41 004396c0 mac 100b4510 MobileStatic::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t MobileStatic::ValidToApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2)
{
    return 0;
}

// win1.41 004396d0 mac 100b4580 MobileStatic::CanBeUsedForThrowingDamageByCreature(Creature *)
bool MobileStatic::CanBeUsedForThrowingDamageByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004396f0 mac 100b4610 MobileStatic::IsMobileStatic(void)
bool MobileStatic::IsMobileStatic()
{
    return 0;
}

// win1.41 00439700 mac 100b4650 MobileStatic::IsCastShadowAtNight(void)
bool MobileStatic::IsCastShadowAtNight()
{
    return 0;
}

// win1.41 00439710 mac 100b3f00 Rock::IsResourceStore(RESOURCE_TYPE)
bool Rock::IsResourceStore(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 00439720 mac 100b3f50 Rock::SetPlayer(GPlayer *)
void Rock::SetPlayer(GPlayer* param_1)
{
}

// win1.41 00439730 mac inlined Rock::IsRock_0(void)
bool Rock::IsRock()
{
    return 0;
}

// win1.41 00439740 mac 100b3fc0 Rock::IsMovable(void)
bool Rock::IsMovable()
{
    return 0;
}

// win1.41 00439750 mac 100b3ff0 Rock::GetCreatureMimicType(void)
uint32_t Rock::GetCreatureMimicType()
{
    return 0;
}

// win1.41 00439760 mac 100b4030 Rock::CanBeAttackedByCreature(Creature *)
bool Rock::CanBeAttackedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00439770 mac 100b4080 Rock::ShouldFootpathsGoRound(void)
bool Rock::ShouldFootpathsGoRound()
{
    return 0;
}

// win1.41 00439780 mac 100b3ca0 Bonfire::InterfaceValidToTap(GInterfaceStatus *)
uint32_t Bonfire::InterfaceValidToTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00439790 mac 100b3cf0 Bonfire::ValidForPlaceInHand(GInterfaceStatus *)
bool Bonfire::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 004397a0 mac 100b3d40 Bonfire::CanBecomeAPhysicsObject(void)
bool Bonfire::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 004397b0 mac 100b3d80 Bonfire::InteractsWithPhysicsObjects(void)
bool Bonfire::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 004397c0 mac 100b3dd0 Bonfire::PhysicsEditorCreate(int)
void Bonfire::PhysicsEditorCreate(int param_1)
{
}

// win1.41 004397d0 mac 100b3e20 Bonfire::GetInHandImmersionTexture(void)
IMMERSION_EFFECT_TYPE Bonfire::GetInHandImmersionTexture()
{
    return (IMMERSION_EFFECT_TYPE)0;
}

// win1.41 004397e0 mac 100b3e80 Bonfire::GetSaveType(void)
uint32_t Bonfire::GetSaveType()
{
    return 0;
}

// win1.41 004397f0 mac 100b3ec0 Bonfire::GetDebugText(void)
char* Bonfire::GetDebugText()
{
    return 0;
}

// win1.41 00439800 mac 100b3c10 Bonfire::_dt(void)
Bonfire::~Bonfire()
{
}

// win1.41 00439840 mac 100b4c70 Bonfire::CallVirtualFunctionsForCreation(MapCoords const &)
void Bonfire::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 004398a0 mac 100b49b0 Bonfire::SaveObject(LHOSFile &, MapCoords const &)
uint32_t Bonfire::SaveObject(LHOSFile& param_1, const MapCoords& param_2)
{
    return 0;
}

// win1.41 00439990 mac 100b48d0 Bonfire::Save(GameOSFile &)
bool Bonfire::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00439a00 mac 100b4800 Bonfire::Load(GameOSFile &)
bool Bonfire::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00439a70 mac 100b47a0 Bonfire::GetScriptObjectType(void)
uint32_t Bonfire::GetScriptObjectType()
{
    return 0;
}

// win1.41 00439a80 mac 100b4750 Bonfire::ReactToPhysicsImpact(PhysicsObject *, bool)
void Bonfire::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00439a90 mac 1001a450 Bonfire::Draw(void)
void Bonfire::Draw()
{
}

// win1.41 0043b700 mac 100bd350 BuildingSite::BuildingSite(PlannedMultiMapFixed *)
BuildingSite::BuildingSite(PlannedMultiMapFixed* param_1)
{
}

// win1.41 0043b7a0 mac 100be420 BuildingSite::GetSaveType(void)
uint32_t BuildingSite::GetSaveType()
{
    return 0;
}

// win1.41 0043b7b0 mac 100bcd40 BuildingSite::_dt(void)
BuildingSite::~BuildingSite()
{
}

// win1.41 0043b7e0 mac 100bcec0 BuildingSite::BuildingSite(MultiMapFixed *)
BuildingSite::BuildingSite(MultiMapFixed* param_1)
{
}

// win1.41 0043b950 mac 100bcd10 BuildingSite::Init(void)
void BuildingSite::Init()
{
}

// win1.41 0043b960 mac 100bc6d0 BuildingSite::ToBeDeleted(int)
void BuildingSite::ToBeDeleted(int param_1)
{
}

// win1.41 0043bc70 mac 1005fd40 BuildingSite::GetBuilding(void)
MultiMapFixed* BuildingSite::GetBuilding()
{
    return 0;
}

// win1.41 0043bca0 mac 1006caf0 BuildingSite::GetRootBuilding(void)
MultiMapFixed* BuildingSite::GetRootBuilding()
{
    return 0;
}

// win1.41 0043bde0 mac 100bbf60 BuildingSite::GetClearAreaRadius(void)
float BuildingSite::GetClearAreaRadius()
{
    return 0;
}

// win1.41 0043be00 mac 100bbeb0 BuildingSite::GetDesireToBeRepaired(void)
float BuildingSite::GetDesireToBeRepaired()
{
    return 0;
}

// win1.41 0043c0b0 mac 100bb940 BuildingSite::GetTown(void)
Town* BuildingSite::GetTown()
{
    return 0;
}

// win1.41 0043c0c0 mac 100bb810 BuildingSite::GetWoodValue(void)
float BuildingSite::GetWoodValue()
{
    return 0;
}

// win1.41 0043c220 mac inlined StandardBuildingSite::GetResourcePosAndYAngle(unsigned int, unsigned int, float *)
void StandardBuildingSite::GetResourcePosAndYAngle(uint32_t param_1, uint32_t param_2, float* param_3)
{
}

// win1.41 0043c490 mac 100bb090 BuildingSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t BuildingSite::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6)
{
    return 0;
}

// win1.41 0043c530 mac 100baf20 BuildingSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t BuildingSite::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 0043c5b0 mac 100bae60 BuildingSite::GetResource(RESOURCE_TYPE)
uint32_t BuildingSite::GetResource(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 0043c5e0 mac inlined StandardBuildingSite::GetWoodForStats(void)
uint32_t StandardBuildingSite::GetWoodForStats()
{
    return 0;
}

// win1.41 0043c5f0 mac 0043c5f0 BuildingSite::GetWoodNeededToBuild(void)
float BuildingSite::GetWoodNeededToBuild()
{
    return 0;
}

// win1.41 0043c680 mac 100ba9d0 BuildingSite::ShouldIGetWood(Villager *)
bool32_t BuildingSite::ShouldIGetWood(Villager* param_1)
{
    return 0;
}

// win1.41 0043c830 mac 100ba480 BuildingSite::Save(GameOSFile &)
bool BuildingSite::Save(GameOSFile& param_1)
{
    return 0;
}

// win1.41 0043cad0 mac 100b9cf0 BuildingSite::Load(GameOSFile &)
bool BuildingSite::Load(GameOSFile& param_1)
{
    return 0;
}

// win1.41 0043cde0 mac inlined StandardBuildingSite::GetRandomBuildPos(Object *, int *)
void StandardBuildingSite::GetRandomBuildPos(Object* param_1, int* param_2)
{
}

// win1.41 0043ce40 mac inlined StandardBuildingSite::GetNearestEdge(float, float, int *)
float StandardBuildingSite::GetNearestEdge(float param_1, float param_2, int* param_3)
{
    return 0;
}

// win1.41 0043cf40 mac inlined StandardBuildingSite::GetNextPosFromIndex(int *)
void StandardBuildingSite::GetNextPosFromIndex(int* param_1)
{
}

// win1.41 0043d050 mac 100b96d0 BuildingSite::GetRadius(void)
float BuildingSite::GetRadius()
{
    return 0;
}

// win1.41 0043d080 mac 100b9660 BuildingSite::BuildBy(float)
void BuildingSite::BuildBy(float param_1)
{
}

// win1.41 0043d180 mac 100b9190 CitadelBuildingSite::SetPileWood(Pot *)
void CitadelBuildingSite::SetPileWood(Pot* param_1)
{
}

// win1.41 0043d190 mac 100be340 CitadelBuildingSite::GetSaveType(void)
uint32_t CitadelBuildingSite::GetSaveType()
{
    return 0;
}

// win1.41 0043d1a0 mac 100be380 CitadelBuildingSite::GetDebugText(void)
char* CitadelBuildingSite::GetDebugText()
{
    return 0;
}

// win1.41 0043d1b0 mac 100be2b0 CitadelBuildingSite::_dt(void)
CitadelBuildingSite::~CitadelBuildingSite()
{
}

// win1.41 0043d220 mac 100b9060 CitadelBuildingSite::ToBeDeleted(int)
void CitadelBuildingSite::ToBeDeleted(int param_1)
{
}

// win1.41 0043d320 mac 100b8e30 CitadelBuildingSite::GetResource(RESOURCE_TYPE)
uint32_t CitadelBuildingSite::GetResource(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 0043d360 mac 100b8cc0 CitadelBuildingSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t CitadelBuildingSite::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6)
{
    return 0;
}

// win1.41 0043d3f0 mac 100b8ba0 CitadelBuildingSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t CitadelBuildingSite::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 0043d460 mac 100b8b60 CitadelBuildingSite::CreatePileWood(void)
void CitadelBuildingSite::CreatePileWood()
{
}

// win1.41 0043d470 mac inlined CitadelBuildingSite::GetResourcePosAndYAngle(unsigned int, unsigned int, float *)
void CitadelBuildingSite::GetResourcePosAndYAngle(uint32_t param_1, uint32_t param_2, float* param_3)
{
}

// win1.41 0043d500 mac 100b8830 CitadelBuildingSite::GetPileWood(MapCoords const &)
Pot* CitadelBuildingSite::GetPileWood(const MapCoords* param_1)
{
    return 0;
}

// win1.41 0043d580 mac 100b8750 CitadelBuildingSite::IsLinkedToThisBuildingSite(Pot *)
bool CitadelBuildingSite::IsLinkedToThisBuildingSite(Pot* param_1)
{
    return 0;
}

// win1.41 0043d5b0 mac 100b86c0 CitadelBuildingSite::RemovePotFromStructure(PotStructure *)
void CitadelBuildingSite::RemovePotFromStructure(PotStructure* param_1)
{
}

// win1.41 0043d5e0 mac 100b8620 CitadelBuildingSite::Save(GameOSFile &)
bool CitadelBuildingSite::Save(GameOSFile& param_1)
{
    return 0;
}

// win1.41 0043d620 mac 100b8580 CitadelBuildingSite::Load(GameOSFile &)
bool CitadelBuildingSite::Load(GameOSFile& param_1)
{
    return 0;
}

// win1.41 0043d660 mac 100b84d0 CitadelBuildingSite::Process(void)
void CitadelBuildingSite::Process()
{
}

// win1.41 0043d6e0 mac 100b8180 StandardBuildingSite::GetPileWood(MapCoords const &)
Pot* StandardBuildingSite::GetPileWood(const MapCoords* param_1)
{
    return 0;
}

// win1.41 0043d6f0 mac 100b8130 StandardBuildingSite::SetPileWood(Pot *)
void StandardBuildingSite::SetPileWood(Pot* param_1)
{
}

// win1.41 0043d700 mac 100be220 StandardBuildingSite::GetSaveType(void)
uint32_t StandardBuildingSite::GetSaveType()
{
    return 0;
}

// win1.41 0043d710 mac 100be260 StandardBuildingSite::GetDebugText(void)
char* StandardBuildingSite::GetDebugText()
{
    return 0;
}

// win1.41 0043d720 mac 100b8360 StandardBuildingSite::_dt(void)
StandardBuildingSite::~StandardBuildingSite()
{
}

// win1.41 0043d760 mac 100b81d0 StandardBuildingSite::CreatePileWood(void)
void StandardBuildingSite::CreatePileWood()
{
}

// win1.41 0043d800 mac 100b8060 StandardBuildingSite::RemovePotFromStructure(PotStructure *)
void StandardBuildingSite::RemovePotFromStructure(PotStructure* param_1)
{
}

// win1.41 0043d830 mac 100b8000 StandardBuildingSite::IsLinkedToThisBuildingSite(Pot *)
bool StandardBuildingSite::IsLinkedToThisBuildingSite(Pot* param_1)
{
    return 0;
}

// win1.41 0043d850 mac 100b7f60 StandardBuildingSite::Save(GameOSFile &)
bool StandardBuildingSite::Save(GameOSFile& param_1)
{
    return 0;
}

// win1.41 0043d890 mac 100b7ec0 StandardBuildingSite::Load(GameOSFile &)
bool StandardBuildingSite::Load(GameOSFile& param_1)
{
    return 0;
}

// win1.41 0043d8d0 mac 10077e70 StandardBuildingSite::Process(void)
void StandardBuildingSite::Process()
{
}

// win1.41 0043d970 mac 100b7a40 WorkshopBuildingSite::_dt(void)
WorkshopBuildingSite::~WorkshopBuildingSite()
{
}

// win1.41 0043db20 mac 100b74c0 WorkshopBuildingSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t WorkshopBuildingSite::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6)
{
    return 0;
}

// win1.41 0043db60 mac 100b7370 WorkshopBuildingSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t WorkshopBuildingSite::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 0043e290 mac 105d1460 BWGameSpy::Connect(void)
uint32_t BWGameSpy::Connect()
{
    return 0;
}

// win1.41 0043e9c0 mac 10001820 LHTimer::Stop(void)
void LHTimer::Stop()
{
}

// win1.41 0043eb70 mac 100056e0 LHTimer::MSeconds(void)
int LHTimer::MSeconds()
{
    return 0;
}

// win1.41 0043ebc0 mac 100016c0 LHTimer::SetSpeedUpFactor(float)
void LHTimer::SetSpeedUpFactor(float factor)
{
}
