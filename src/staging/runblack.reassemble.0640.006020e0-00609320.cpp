#include "MapCoords.h"
#include "Utils.h"
#include "MobileObjectInfo.h"
#include "MobileObject.h"
#include "Poo.h"
#include "FieldCrop.h"
#include "MobileStaticInfo.h"
#include "MobileStatic.h"
#include "lionhead/lh3dlib/development/LH3DIsland.h"

// win1.41 00606da0 mac 100ad7d0 GMobileObjectInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GMobileObjectInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00606e10 mac 100ad680 GMobileObjectInfo::_dt(void)
GMobileObjectInfo::~GMobileObjectInfo()
{
}

// win1.41 00606e40 mac 103bde00 MobileObject::MobileObject(MapCoords const &, GMobileObjectInfo const *, Object *, float, float)
MobileObject::MobileObject(MapCoords* coords, const GMobileObjectInfo* info, Object* param_4, float param_5, float param_6)
{
}

// win1.41 00606f00 mac 103bdb30 MobileObject::ToBeDeleted(int)
void MobileObject::ToBeDeleted(int param_1)
{
}

// win1.41 00606fc0 mac 1008e240 MobileObject::AddMobileObjectCheckSum(void)
void MobileObject::AddMobileObjectCheckSum()
{
}

// win1.41 00607120 mac 103bd480 MobileObject::GetHoldType(void)
HOLD_TYPE MobileObject::GetHoldType()
{
    return (HOLD_TYPE)0;
}

// win1.41 00607130 mac 103bd3f0 MobileObject::GetHoldLoweringMultiplier(void)
float MobileObject::GetHoldLoweringMultiplier()
{
    return 0;
}

// win1.41 00607150 mac 103bd200 MobileObject::CallVirtualFunctionsForCreation(MapCoords const &)
void MobileObject::CallVirtualFunctionsForCreation(const MapCoords& param_1)
{
}

// win1.41 00607210 mac 103bd180 MobileObject::Create3DObject(void)
void MobileObject::Create3DObject()
{
}

// win1.41 00607230 mac 103bd130 MobileObject::GetPlayer(void)
GPlayer* MobileObject::GetPlayer()
{
    return 0;
}

// win1.41 00607250 mac 103bd0c0 MobileObject::InsertMapObjectToCell(MapCell *)
void MobileObject::InsertMapObjectToCell(MapCell* cell)
{
}

// win1.41 00607260 mac 103bd050 MobileObject::RemoveMapObjectFromCell(MapCell *)
void MobileObject::RemoveMapObjectFromCell(MapCell* param_1)
{
}

// win1.41 00607270 mac 103bcd10 MobileObject::SaveObject(LHOSFile &, MapCoords const &)
uint32_t MobileObject::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 00607410 mac 103bcc90 MobileObject::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void MobileObject::AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (*param_4)(int, Point2D, float, int))
{
}

// win1.41 00607430 mac 103bcc00 MobileObject::GetCreatureBeliefType(void)
uint32_t MobileObject::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 00607460 mac 103bcad0 MobileObject::SetXYZAngles(float, float, float)
void MobileObject::SetXYZAngles(float param_1, float param_2, float param_3)
{
}

// win1.41 006074e0 mac 103bc9a0 MobileObject::SetXYZAnglesAndScale(float, float, float, float)
void MobileObject::SetXYZAnglesAndScale(float param_1, float param_2, float param_3, float param_4)
{
}

// win1.41 00607560 mac 103bc790 MobileObject::GetWorldMatrix(LHMatrix *)
void MobileObject::GetWorldMatrix(LHMatrix* param_1)
{
}

// win1.41 00607790 mac 103bc240 MobileObject::MoveAlongPath(void)
uint32_t MobileObject::MoveAlongPath()
{
    return 0;
}

// win1.41 006079c0 mac 103bc180 Poo::GetPhysicsConstantsType(void)
uint32_t Poo::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 006079d0 mac 103bc130 Poo::InsertMapObject(void)
void Poo::InsertMapObject()
{
}

// win1.41 006079e0 mac 103bc0b0 MobileObject::IsPoisoned(void)
bool32_t MobileObject::IsPoisoned()
{
    return 0;
}

// win1.41 006079f0 mac 103bbfc0 MobileObject::GetPhysicsConstantsType(void)
uint32_t MobileObject::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 00607a20 mac 103bbe50 MobileObject::ReactToPhysicsImpact(PhysicsObject *, bool)
void MobileObject::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00607aa0 mac 103bbe00 MobileObject::CanBecomeAPhysicsObject(void)
bool32_t MobileObject::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 00607ab0 mac 103bbc80 MobileObject::PhysicsEditorCreate(int)
void MobileObject::PhysicsEditorCreate(int param_1)
{
}

// win1.41 00607b60 mac 103bbc40 MobileObject::GetScriptObjectType(void)
uint32_t MobileObject::GetScriptObjectType()
{
    return 0;
}

// win1.41 00607b70 mac 103bbb30 MobileObject::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t MobileObject::ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2)
{
    return 0;
}

// win1.41 00607bc0 mac 103bba60 MobileObject::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t MobileObject::ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 00607bf0 mac 103bb9a0 MobileObject::GetDefaultResource(void)
int MobileObject::GetDefaultResource()
{
    return 0;
}

// win1.41 00607c20 mac 103bb8f0 MobileObject::GetResourceType(void)
RESOURCE_TYPE MobileObject::GetResourceType()
{
    return (RESOURCE_TYPE)0;
}

// win1.41 00607c40 mac 103bb7a0 MobileObject::Save(GameOSFile &)
bool32_t MobileObject::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00607d00 mac 103bb660 MobileObject::Load(GameOSFile &)
bool32_t MobileObject::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00607dc0 mac 103bb620 FieldCrop::GetHoldType(void)
HOLD_TYPE FieldCrop::GetHoldType()
{
    return (HOLD_TYPE)0;
}

// win1.41 00607e20 mac 103bb470 FieldCrop::ToBeDeleted(int)
void FieldCrop::ToBeDeleted(int param_1)
{
}

// win1.41 006081e0 mac 103bb330 FieldCrop::SetLife(float)
void FieldCrop::SetLife(float param_1)
{
}

// win1.41 00608250 mac 103bb290 FieldCrop::RemoveMapObject(void)
void FieldCrop::RemoveMapObject()
{
}

// win1.41 00608260 mac 103bb240 FieldCrop::InsertMapObject(void)
void FieldCrop::InsertMapObject()
{
}

// win1.41 00608270 mac 103bb1e0 FieldCrop::IsFunctional(void)
bool32_t FieldCrop::IsFunctional()
{
    return 0;
}

// win1.41 006082b0 mac 103bb140 FieldCrop::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t FieldCrop::ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 006082d0 mac 103bb100 FieldCrop::CanBecomeAPhysicsObject(void)
bool32_t FieldCrop::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 006082e0 mac 103bb0c0 FieldCrop::GetPhysicsConstantsType(void)
uint32_t FieldCrop::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 006082f0 mac 103bafd0 FieldCrop::SetUpPhysOb(PhysOb *)
void FieldCrop::SetUpPhysOb(PhysOb* param_1)
{
}

// win1.41 00608340 mac 103baf80 FieldCrop::InteractsWithPhysicsObjects(void)
bool32_t FieldCrop::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00608350 mac 103baf40 FieldCrop::IsARootedObject(void)
bool32_t FieldCrop::IsARootedObject()
{
    return 0;
}

// win1.41 00608360 mac 103bae90 FieldCrop::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t FieldCrop::ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2)
{
    return 0;
}

// win1.41 00608390 mac 103badc0 FieldCrop::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t FieldCrop::ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 006083c0 mac 103bad80 Poo::GetScriptObjectType(void)
uint32_t Poo::GetScriptObjectType()
{
    return 0;
}

// win1.41 006083d0 mac 103bad50 Poo::GetHoldType(void)
HOLD_TYPE Poo::GetHoldType()
{
    return (HOLD_TYPE)0;
}

// win1.41 006083e0 mac 103bac40 FieldCrop::InterfaceSetInMagicHand(GInterfaceStatus *)
bool32_t FieldCrop::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00608440 mac 103baba0 FieldCrop::CreatureMustAvoid(Creature *)
bool32_t FieldCrop::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

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
