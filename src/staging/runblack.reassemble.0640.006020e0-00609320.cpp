#include "MapCoords.h"
#include "Utils.h"
#include "MobileStaticInfo.h"
#include "MobileStatic.h"
#include "lionhead/lh3dlib/development/LH3DIsland.h"

// win1.41 006084e0 mac 10050090 GMobileStaticInfo::GetMesh( const(void))
MeshId GMobileStaticInfo::GetMesh() const
{
    return (MeshId)0;
}

// win1.41 006084f0 mac 103c1240 GMobileStaticInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GMobileStaticInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00608560 mac 103be790 GMobileStaticInfo::_dt(void)
GMobileStaticInfo::~GMobileStaticInfo()
{
}

// win1.41 00608590 mac 103c1060 MobileStatic::Load(GameOSFile &)
bool32_t MobileStatic::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00608650 mac 103c0f20 MobileStatic::Save(GameOSFile &)
bool32_t MobileStatic::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00608710 mac 103c0e60 MobileStatic::MobileStatic(MapCoords const &, GMobileStaticInfo const *, Object *, float, float)
MobileStatic::MobileStatic(MapCoords* coords, GMobileStaticInfo* info, Object* param_3, float param_4, float param_5)
{
}

// win1.41 00608760 mac 103c0d80 MobileStatic::ToBeDeleted(int)
void MobileStatic::ToBeDeleted(int param_1)
{
}

// win1.41 006088b0 mac 103c0890 MobileStatic::GetPlayer(void)
GPlayer* MobileStatic::GetPlayer()
{
    return 0;
}

// win1.41 006088e0 mac 103c0530 MobileStatic::SaveObject(LHOSFile &, MapCoords const &)
uint32_t MobileStatic::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 00608ac0 mac 103c0450 MobileStatic::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void MobileStatic::AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (*param_4)(int, Point2D, float, int))
{
}

// win1.41 00608b10 mac 103c03d0 MobileStatic::GetCreatureBeliefType(void)
uint32_t MobileStatic::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 00608b30 mac 103c0270 MobileStatic::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t MobileStatic::ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 00608bb0 mac 103c0120 MobileStatic::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t MobileStatic::ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2)
{
    return 0;
}

// win1.41 00608c30 mac 103bff70 MobileStatic::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t MobileStatic::ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 00608ce0 mac 103bfe40 MobileStatic::SetXYZAngles(float, float, float)
void MobileStatic::SetXYZAngles(float param_1, float param_2, float param_3)
{
}

// win1.41 00608d60 mac 103bfd10 MobileStatic::SetXYZAnglesAndScale(float, float, float, float)
void MobileStatic::SetXYZAnglesAndScale(float param_1, float param_2, float param_3, float param_4)
{
}

// win1.41 00608de0 mac 103bfb00 MobileStatic::GetWorldMatrix(LHMatrix *)
void MobileStatic::GetWorldMatrix(LHMatrix* param_1)
{
}

// win1.41 00608f40 mac 103bf9c0 MobileStatic::GetBoundingSphere(LHPoint &, float &)
void MobileStatic::GetBoundingSphere(LHPoint* param_1, float* param_2)
{
}

// win1.41 00608fc0 mac 103bf8c0 MobileStatic::ReactToPhysicsImpact(PhysicsObject *, bool)
void MobileStatic::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00609010 mac 103bf860 MobileStatic::CreatureMustAvoid(Creature *)
bool32_t MobileStatic::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 00609020 mac 103bf7d0 MobileStatic::IsToy(Creature *)
bool32_t MobileStatic::IsToy(Creature* param_1)
{
    return 0;
}

// win1.41 00609050 mac 103bf750 MobileStatic::IsToyBall(Creature *)
bool32_t MobileStatic::IsToyBall(Creature* param_1)
{
    return 0;
}

// win1.41 00609070 mac 103bf6d0 MobileStatic::IsToyDie(Creature *)
bool32_t MobileStatic::IsToyDie(Creature* param_1)
{
    return 0;
}

// win1.41 00609090 mac 103bf650 MobileStatic::IsToyCuddly(Creature *)
bool32_t MobileStatic::IsToyCuddly(Creature* param_1)
{
    return 0;
}

// win1.41 006090b0 mac 103bf550 MobileStatic::InteractsWithPhysicsObjects(void)
bool32_t MobileStatic::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00609110 mac 1004d490 MobileStatic::IsFence(void)
bool32_t MobileStatic::IsFence()
{
    return 0;
}

// win1.41 006091b0 mac 10097420 MobileStatic::GetHoldType(void)
HOLD_TYPE MobileStatic::GetHoldType()
{
    return (HOLD_TYPE)0;
}

// win1.41 00609210 mac 103bf080 MobileStatic::PhysicallyDestroysAbodes(void)
bool32_t MobileStatic::PhysicallyDestroysAbodes()
{
    return 0;
}

// win1.41 00609230 mac 10097510 MobileStatic::GetHoldLoweringMultiplier(void)
float MobileStatic::GetHoldLoweringMultiplier()
{
    return 0;
}

// win1.41 00609260 mac 103beff0 MobileStatic::ChecksVerticesVObjects(void)
bool32_t MobileStatic::ChecksVerticesVObjects()
{
    return 0;
}

// win1.41 00609270 mac 103bee80 MobileStatic::GetPhysicsConstantsType(void)
uint32_t MobileStatic::GetPhysicsConstantsType()
{
    return 0;
}
