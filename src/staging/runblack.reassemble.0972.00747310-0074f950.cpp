#include "Town.h"
#include "TownSpellIcon.h"
#include "TownStats.h"
#include "TreeInfo.h"
#include "Tree.h"
#include "TribeInfo.h"
#include "Utils.h"
#include "VillagerInfo.h"

// win1.41 00747380 mac 100556c0 Town::Process(void)
uint32_t Town::Process()
{
    return 0;
}

// win1.41 007477a0 mac 10067510 Town::ProcessTownEmergency(void)
void Town::ProcessTownEmergency()
{
}

// win1.41 00747970 mac 1006d3c0 Town::IsInStateOfEmergency(void)
bool Town::IsInStateOfEmergency()
{
    return 0;
}

// win1.41 007479a0 mac 105602e0 Town::SetInStateOfEmergency(void)
void Town::SetInStateOfEmergency()
{
}

// win1.41 00747ea0 mac 1055f880 Town::GetBestRepairBuildingSite(void)
bool32_t Town::GetBestRepairBuildingSite()
{
    return 0;
}

// win1.41 00747f00 mac 10065180 Town::CalculateDesireForFood(void)
float Town::CalculateDesireForFood()
{
    return 0;
}

// win1.41 00748ae0 mac 10561aa0 TownSpellIcon::ToBeDeleted(int)
void TownSpellIcon::ToBeDeleted(int param_1)
{
}

// win1.41 00748b90 mac 10561a00 TownSpellIcon::GetPlayer(void)
GPlayer* TownSpellIcon::GetPlayer()
{
    return 0;
}

// win1.41 00748be0 mac 105619b0 TownSpellIcon::SaveObject(LHOSFile &, MapCoords const &)
uint32_t TownSpellIcon::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 00748f00 mac 10561170 TownSpellIcon::GetWorshipSite(void)
WorshipSite* TownSpellIcon::GetWorshipSite()
{
    return 0;
}

// win1.41 00748f70 mac 10561030 TownSpellIcon::Save(GameOSFile &)
bool TownSpellIcon::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00748fb0 mac 10560fa0 TownSpellIcon::Load(GameOSFile &)
bool TownSpellIcon::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 007493c0 mac 10562b60 TownStats::Remove(Villager *)
void TownStats::Remove(Villager* villager)
{
}

// win1.41 00749490 mac 10562ac0 TownStats::ChildToAdult(Villager *)
void TownStats::ChildToAdult(Villager* param_1)
{
}

// win1.41 007494c0 mac 10562a10 TownStats::VillagerMoveOutOfAbode(Villager *)
void TownStats::VillagerMoveOutOfAbode(Villager* villager)
{
}

// win1.41 00749a60 mac 10562330 TownStats::Add(PlannedMultiMapFixed *)
void TownStats::Add(PlannedMultiMapFixed* planned)
{
}

// win1.41 00749aa0 mac 10562220 TownStats::Add(BuildingSite *)
void TownStats::Add(BuildingSite* param_1)
{
}

// win1.41 00749c60 mac 10561dd0 TownStats::IncrementNumOfDisciples(VILLAGER_DISCIPLE)
void TownStats::IncrementNumOfDisciples(VILLAGER_DISCIPLE param_1)
{
}

// win1.41 00749c80 mac 10561d60 TownStats::DecrementNumOfDisciples(VILLAGER_DISCIPLE)
void TownStats::DecrementNumOfDisciples(VILLAGER_DISCIPLE param_1)
{
}

// win1.41 00749dd0 mac 10155680 GTreeInfo::_dt(void)
GTreeInfo::~GTreeInfo()
{
}

// win1.41 00749e00 mac 101591d0 Tree::Tree(MapCoords const &, GTreeInfo const *, Forest *, float, float, float)
Tree::Tree(const MapCoords* coords, const GTreeInfo* info, Forest* forest, float param_4, float param_5, float param_6)
{
}

// win1.41 00749ee0 mac 10158ff0 Tree::Create(MapCoords const &, GTreeInfo const *, Forest *, float, float, float)
Tree* Tree::Create(MapCoords* coords, const GTreeInfo* info, Forest* forest, float param_4, float param_5, float param_6)
{
    return 0;
}

// win1.41 00749f70 mac 10158e00 Tree::CallVirtualFunctionsForCreation(MapCoords const &)
void Tree::CallVirtualFunctionsForCreation(const MapCoords& param_1)
{
}

// win1.41 0074a140 mac 10158d40 Tree::GetRoutePlanRadius(Creature *)
float Tree::GetRoutePlanRadius(Creature* param_1)
{
    return 0;
}

// win1.41 0074a180 mac 10158cd0 Tree::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void Tree::AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (__cdecl* param_4)(int, Point2D, float, int))
{
}

// win1.41 0074a1a0 mac 10158c20 Tree::GetVillagerHugRadius(void)
float Tree::GetVillagerHugRadius()
{
    return 0;
}

// win1.41 0074a1e0 mac 10158bb0 Tree::SetLife(float)
void Tree::SetLife(float param_1)
{
}

// win1.41 0074a210 mac 10158a10 Tree::ToBeDeleted(int)
void Tree::ToBeDeleted(int param_1)
{
}

// win1.41 0074a290 mac 10158860 Tree::Process(void)
uint32_t Tree::Process()
{
    return 0;
}

// win1.41 0074a9d0 mac 10158260 Tree::SaveObject(LHOSFile &, MapCoords const &)
uint32_t Tree::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 0074ab00 mac 10044ce0 Tree::Draw(void)
void Tree::Draw()
{
}

// win1.41 0074b270 mac 10157fc0 Tree::DrawOutOfMap(bool)
void Tree::DrawOutOfMap(bool param_1)
{
}

// win1.41 0074b600 mac 10157bd0 Tree::GetHoldType(void)
HOLD_TYPE Tree::GetHoldType()
{
    return (HOLD_TYPE)0;
}

// win1.41 0074b610 mac 10157b60 Tree::GetHoldRadius(void)
float Tree::GetHoldRadius()
{
    return 0;
}

// win1.41 0074b620 mac 10157b10 Tree::GetHoldLoweringMultiplier(void)
float Tree::GetHoldLoweringMultiplier()
{
    return 0;
}

// win1.41 0074b630 mac 10157ad0 Tree::CanBecomeAPhysicsObject(void)
bool Tree::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 0074b640 mac 10157a90 Tree::GetPhysicsConstantsType(void)
uint32_t Tree::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 0074b650 mac 101579a0 Tree::SetUpPhysOb(PhysOb *)
void Tree::SetUpPhysOb(PhysOb* param_1)
{
}

// win1.41 0074b6a0 mac 10157960 Tree::InteractsWithPhysicsObjects(void)
bool Tree::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 0074b6b0 mac 10157840 Tree::ReactToPhysicsImpact(PhysicsObject *, bool)
void Tree::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 0074b720 mac 10157800 Tree::IsARootedObject(void)
bool Tree::IsARootedObject()
{
    return 0;
}

// win1.41 0074b730 mac 10157710 Tree::InterfaceSetInMagicHand(GInterfaceStatus *)
bool Tree::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0074b790 mac 101576d0 Tree::GetOverwriteDropToolTip(void)
uint32_t Tree::GetOverwriteDropToolTip()
{
    return 0;
}

// win1.41 0074b7a0 mac 10157670 Tree::GetDefaultResource(void)
int Tree::GetDefaultResource()
{
    return 0;
}

// win1.41 0074b7b0 mac 10157590 Tree::GetWoodValue(void)
float Tree::GetWoodValue()
{
    return 0;
}

// win1.41 0074b810 mac 10157550 Tree::GetWoodValueMultiplier(void)
float Tree::GetWoodValueMultiplier()
{
    return 0;
}

// win1.41 0074b820 mac 10157510 Tree::GetResourceType(void)
RESOURCE_TYPE Tree::GetResourceType()
{
    return (RESOURCE_TYPE)0;
}

// win1.41 0074b830 mac 10156f80 Tree::EndPhysics(PhysicsObject *, bool)
void Tree::EndPhysics(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 0074bc60 mac 10156df0 Tree::DropSfx(void)
uint32_t Tree::DropSfx()
{
    return 0;
}

// win1.41 0074bd50 mac 10156c80 Tree::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t Tree::ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2)
{
    return 0;
}

// win1.41 0074bda0 mac 10156910 Tree::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t Tree::ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 0074bfd0 mac 101567f0 Tree::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t Tree::ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 0074c040 mac inlined Tree::GetWorkingPos(MapCoords *, Object *)
MapCoords* Tree::GetWorkingPos(MapCoords* param_1, Object* param_2)
{
    return 0;
}

// win1.41 0074c0a0 mac 10156670 Tree::IsTreeBigEnoughForCreature(Creature *)
bool Tree::IsTreeBigEnoughForCreature(Creature* param_1)
{
    return 0;
}

// win1.41 0074c0e0 mac 10156590 Tree::CreatureMustAvoid(Creature *)
bool Tree::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 0074c130 mac 100036d0 Tree::GetScriptObjectType(void)
uint32_t Tree::GetScriptObjectType()
{
    return 0;
}

// win1.41 0074c140 mac 10156370 Tree::SetOnFire(float)
void Tree::SetOnFire(float param_1)
{
}

// win1.41 0074c150 mac 101562a0 Tree::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t Tree::GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2)
{
    return 0;
}

// win1.41 0074c1b0 mac 10156080 Tree::Save(GameOSFile &)
bool Tree::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0074c2a0 mac 10155f10 Tree::Load(GameOSFile &)
bool Tree::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0074c390 mac 10155bd0 Tree::ApplyWaterSpell(SpellWater *)
float Tree::ApplyWaterSpell(SpellWater* param_1)
{
    return 0;
}

// win1.41 0074c5f0 mac 101559c0 Tree::CreateCollideData(void)
void Tree::CreateCollideData()
{
}

// win1.41 0074c7f0 mac 10155720 Tree::BlocksTownClearArea( const(void))
bool Tree::BlocksTownClearArea() const
{
    return 0;
}

// win1.41 0074c8c0 mac 10159ef0 GTribeInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GTribeInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0074c920 mac 10159d30 GTribeInfo::_dt(void)
GTribeInfo::~GTribeInfo()
{
}

// win1.41 0074c940 mac 10159bc0 GTribeInfo::GetTribeFromText(char const *)
GTribeInfo* GTribeInfo::GetTribeFromText(const char* str)
{
    return 0;
}

// win1.41 0074ccb0 mac 100495f0 GUtils::GetDistance(MapCoords const &, MapCoords const &)
void GUtils::GetDistance(const MapCoords& param_1, const MapCoords& param_2)
{
}

// win1.41 0074cd70 mac 10049550 GUtils::GetDistanceInMetres(MapCoords const &, MapCoords const &)
float GUtils::GetDistanceInMetres(const MapCoords& param_1, const MapCoords& param_2)
{
    return 0;
}

// win1.41 0074ce10 mac 103cac30 GUtils::FastDistance(MapCoords const &, MapCoords const &)
int GUtils::FastDistance(const MapCoords& param_1, const MapCoords& param_2)
{
    return 0;
}

// win1.41 0074d200 mac 1004ed70 GUtils::GetAngleFromDXDZ(long, long)
uint16_t GUtils::GetAngleFromDXDZ(long dx, long dz)
{
    return 0;
}

// win1.41 0074d240 mac 1004ede0 GUtils::GetAngleFromXZ(MapCoords const &, MapCoords const &)
uint16_t GUtils::GetAngleFromXZ(const MapCoords& param_1, const MapCoords& param_2)
{
    return 0;
}

// win1.41 0074d270 mac 100112f0 GUtils::Get3DAngleFromXZ(MapCoords const &, MapCoords const &)
float GUtils::Get3DAngleFromXZ(const MapCoords& param_1, const MapCoords& param_2)
{
    return 0;
}

// win1.41 0074d420 mac 1010b7d0 GUtils::GetXByAngleMetersDistance(unsigned short, float)
void GUtils::GetXByAngleMetersDistance(unsigned short param_1, float param_2)
{
}

// win1.41 0074d580 mac 10061ba0 GUtils::GetPosFromAngle(float, float)
MapCoords GUtils::GetPosFromAngle(float angle, float radius)
{
    return MapCoords();
}

// win1.41 0074d7e0 mac 10049ad0 GUtils::Spiral(long &, long &)
const JustMapXZ* GUtils::Spiral(int& param_1, int& param_2)
{
    return 0;
}

// win1.41 0074d810 mac 10021cd0 GUtils::SpiralIncrement(MapCoords &, long &, long &, float)
void GUtils::SpiralIncrement(MapCoords& param_1, int& param_2, int& param_3, float param_4)
{
}

// win1.41 0074dc30 mac 1057b5b0 GUtils::ConvertAngle3DToGame(float)
uint32_t GUtils::ConvertAngle3DToGame(float param_1)
{
    return 0;
}

// win1.41 0074dc50 mac 1004cd50 GUtils::ConvertGameAngleTo3D(long)
float GUtils::ConvertGameAngleTo3D(uint32_t angle)
{
    return 0;
}

// win1.41 0074dcc0 mac 10032220 GUtils::ConvertWholeDistanceToMeters(long)
float GUtils::ConvertWholeDistanceToMeters(int param_1)
{
    return 0;
}

// win1.41 0074e3a0 mac 104fa7f0 GUtils::FindNearestDrinkingWater(MapCoords &, MapCoords &, float)
bool GUtils::FindNearestDrinkingWater(MapCoords& param_1, MapCoords& param_2, float max_dist)
{
    return 0;
}

// win1.41 0074ecc0 mac 10109320 GUtils::GetMidPoint(MapCoords &, MapCoords &, float)
void GUtils::GetMidPoint(MapCoords& param_1, MapCoords& param_2, float param_3)
{
}

// win1.41 0074f170 mac 10067300 GUtils::SigmoidThreshold(float, float)
float GUtils::SigmoidThreshold(float param_1, float param_2)
{
    return 0;
}

// win1.41 0074f290 mac 100673e0 GUtils::GetDistanceModifier(float float)
float GUtils::GetDistanceModifier(float param_1, float param_2)
{
    return 0;
}

// win1.41 0074f520 mac 10022930 GUtils::GetMapCellSpiralSizeFromRadius(float)
int GUtils::GetMapCellSpiralSizeFromRadius(float param_1)
{
    return 0;
}

// win1.41 0074f540 mac 100027c0 GUtils::GetIncrementSpiralSizeFromRadius(float, float)
int GUtils::GetIncrementSpiralSizeFromRadius(float param_1, float param_2)
{
    return 0;
}

// win1.41 0074f880 mac 10571e50 GVillagerInfo::GetMesh( const(void))
uint32_t GVillagerInfo::GetMesh() const
{
    return 0;
}

// win1.41 0074f890 mac 10571e90 GVillagerInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GVillagerInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0074f900 mac 1056bfe0 GVillagerInfo::_dt(void)
GVillagerInfo::~GVillagerInfo()
{
}
