#include "MapCoords.h"
#include "Utils.h"
#include "Meeting.h"
#include "Mist.h"
#include "Mobile.h"
#include "MobileObjectInfo.h"
#include "MobileObject.h"
#include "Poo.h"
#include "FieldCrop.h"
#include "MobileStaticInfo.h"
#include "MobileStatic.h"

// win1.41 006020e0 mac 1048f050 MapCoords::GetNearestTown(float) const
Town* MapCoords::GetNearestTown(float t_max) const
{
    return 0;
}

// win1.41 00602880 mac 10569c60 MapCoords::ConvertToText(char *)
char* MapCoords::ConvertToText(char* buff)
{
    return 0;
}

// win1.41 00603160 mac 1006a450 MapCoords::MapCoords(LHPoint const &)
MapCoords::MapCoords(const LHPoint& point)
{
}

// win1.41 006031b0 mac 1004feb0 MapCoords::MapCoords(long, long, float)
MapCoords::MapCoords(long x, long z, float altitude)
{
}

// win1.41 006031d0 mac 10324c60 MapCoords::MapCoords(char *)
MapCoords::MapCoords(const char* str)
{
}

// win1.41 00603280 mac 10513100 MapCoords::Set(char *)
void MapCoords::Set(const char* str)
{
}

// win1.41 00603340 mac 1006a370 MapCoords::Set(LHPoint const &)
MapCoords* MapCoords::Set(const LHPoint& point)
{
    return 0;
}

// win1.41 00603430 mac 10049b80 MapCoords::ToMap(void) const
MapCell* MapCoords::ToMap() const
{
    return 0;
}

// win1.41 00603490 mac 105a3bb0 MapCoords::GetFirstObjectMobile(void) const
Object* MapCoords::GetFirstObjectMobile() const
{
    return 0;
}

// win1.41 006034b0 mac 1002cb50 MapCoords::GetFirstObjectFixed(void) const
Object* MapCoords::GetFirstObjectFixed() const
{
    return 0;
}

// win1.41 006034d0 mac 1002c570 MapCoords::GetFirstIterator(void) const
MapCellIterator MapCoords::GetFirstIterator() const
{
    return MapCellIterator();
}

// win1.41 006035b0 mac 10018e70 MapCoords::IsWater(void) const
bool MapCoords::IsWater() const
{
    return 0;
}

// win1.41 00603b30 mac 1055e480 MapCoords::IsSuitableForFixed 9MESH_LISTff
void MapCoords::IsSuitableForFixed(MESH_LIST mesh, float param_2, float param_3)
{
}

// win1.41 00603dc0 mac 101c2c00 MapCoords::IsSuitableForFixed(Game3DObject *) const
void MapCoords::IsSuitableForFixed(Game3DObject* object) const
{
}

// win1.41 006042c0 mac 100499f0 MapCoords::InBounds(void) const
bool MapCoords::InBounds() const
{
    return 0;
}

// win1.41 006045c0 mac 100195c0 MapCoords::FindType(OBJECT_TYPE, Object *) const
Object* MapCoords::FindType(OBJECT_TYPE type, Object* object) const
{
    return 0;
}

// win1.41 00604fe0 mac 10406220 MapCoords::CollideCollideWithFixe(void) const
int MapCoords::CollideCollideWithFixe() const
{
    return 0;
}

// win1.41 006053c0 mac 100028d0 MapCoords::IsCloseToEqual(const MapCoords&, float) const
bool MapCoords::IsCloseToEqual(const MapCoords& other, float epsilon) const
{
    return 0;
}

// win1.41 00605410 mac 1001fb00 MapCoords::operator+=(MapCoords const &)
MapCoords& MapCoords::operator+=(const MapCoords& other)
{
    return *this;
}

// win1.41 00605470 mac 100494b0 MapCoords::operator+=(JustMapXZ const &)
MapCoords& MapCoords::operator+=(const JustMapXZ& other)
{
    return *this;
}

// win1.41 00605520 mac 100503e0 MapCoords::operator+(MapCoords const &) const
MapCoords MapCoords::operator+(const MapCoords& other) const
{
    return MapCoords();
}

// win1.41 00605660 mac 10087b50 MapCoords::operator==(MapCoords const &) const
bool MapCoords::operator==(const MapCoords& param_2) const
{
    return 0;
}

// win1.41 006056b0 mac 10557130 MapCoords::operator!=(MapCoords const &) const
bool MapCoords::operator!=(const MapCoords& param_1) const
{
    return 0;
}

// win1.41 00605c40 mac 1004ff00 MapCoords::GetLHPoint(void) const
LHPoint* MapCoords::GetLHPoint(LHPoint* point) const
{
    return 0;
}

// win1.41 00605cd0 mac inlined GUtils::GetDistanceInMetres_2(MapCoords const &, MapCoords const &)
float GUtils::GetDistanceInMetres_2(const MapCoords& first, const MapCoords& other)
{
    return 0;
}

// win1.41 00605fb0 mac 10032290 MapCoords::GetMetresDistanceSq(MapCoords const &) const
float MapCoords::GetMetresDistanceSq(const MapCoords& param_2) const
{
    return 0;
}

// win1.41 00606140 mac inlined Meeting::GetTown(void)
Town* Meeting::GetTown()
{
    return 0;
}

// win1.41 00606150 mac inlined Meeting::RemoveDance(void)
void Meeting::RemoveDance()
{
}

// win1.41 00606160 mac inlined Meeting::_dt(void)
Meeting::~Meeting()
{
}

// win1.41 00606180 mac inlined Meeting::ToBeDeleted(int)
void Meeting::ToBeDeleted(int param_1)
{
}

// win1.41 00606230 mac inlined Meeting::GetPlayer(void)
GPlayer* Meeting::GetPlayer()
{
    return 0;
}

// win1.41 00606270 mac 101056c0 Mist::Mist(MapCoords const &, float, unsigned long, float)
Mist::Mist(MapCoords* coords, float param_3, uint32_t param_4, float param_5)
{
}

// win1.41 00606300 mac 10105480 Mist::ToBeDeleted(int)
void Mist::ToBeDeleted(int param_1)
{
}

// win1.41 006067d0 mac 10104c90 Mist::GetDistanceFromObject(MapCoords const &)
float Mist::GetDistanceFromObject(const MapCoords* param_1)
{
    return 0;
}

// win1.41 00606910 mac 10104af0 Mist::GetScriptObjectType(void)
uint32_t Mist::GetScriptObjectType()
{
    return 0;
}

// win1.41 00606920 mac 10104980 Mist::Save(GameOSFile &)
bool Mist::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00606a10 mac 10104820 Mist::Load(GameOSFile &)
bool Mist::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00606af0 mac 101047c0 Mist::ResolveLoad(void)
void Mist::ResolveLoad()
{
}

// win1.41 00606bf0 mac 103ba690 Mobile::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t Mobile::ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 00606c10 mac 103ba5b0 Mobile::Save(GameOSFile &)
bool Mobile::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00606c70 mac 103ba4e0 Mobile::Load(GameOSFile &)
bool Mobile::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00606cd0 mac 103ba4a0 Mobile::BlocksTownClearArea( const(void))
bool Mobile::BlocksTownClearArea() const
{
    return 0;
}

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
void MobileObject::CallVirtualFunctionsForCreation(const MapCoords* param_1)
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
bool MobileObject::IsPoisoned()
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
bool MobileObject::CanBecomeAPhysicsObject()
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
bool MobileObject::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00607d00 mac 103bb660 MobileObject::Load(GameOSFile &)
bool MobileObject::Load(GameOSFile& file)
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
bool FieldCrop::IsFunctional()
{
    return 0;
}

// win1.41 006082b0 mac 103bb140 FieldCrop::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t FieldCrop::ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 006082d0 mac 103bb100 FieldCrop::CanBecomeAPhysicsObject(void)
bool FieldCrop::CanBecomeAPhysicsObject()
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
bool FieldCrop::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00608350 mac 103baf40 FieldCrop::IsARootedObject(void)
bool FieldCrop::IsARootedObject()
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
bool FieldCrop::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00608440 mac 103baba0 FieldCrop::CreatureMustAvoid(Creature *)
bool FieldCrop::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 006084e0 mac 10050090 GMobileStaticInfo::GetMesh( const(void))
uint32_t GMobileStaticInfo::GetMesh() const
{
    return 0;
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
bool MobileStatic::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00608650 mac 103c0f20 MobileStatic::Save(GameOSFile &)
bool MobileStatic::Save(GameOSFile& file)
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
bool MobileStatic::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 00609020 mac 103bf7d0 MobileStatic::IsToy(Creature *)
bool MobileStatic::IsToy(Creature* param_1)
{
    return 0;
}

// win1.41 00609050 mac 103bf750 MobileStatic::IsToyBall(Creature *)
bool MobileStatic::IsToyBall(Creature* param_1)
{
    return 0;
}

// win1.41 00609070 mac 103bf6d0 MobileStatic::IsToyDie(Creature *)
bool MobileStatic::IsToyDie(Creature* param_1)
{
    return 0;
}

// win1.41 00609090 mac 103bf650 MobileStatic::IsToyCuddly(Creature *)
bool MobileStatic::IsToyCuddly(Creature* param_1)
{
    return 0;
}

// win1.41 006090b0 mac 103bf550 MobileStatic::InteractsWithPhysicsObjects(void)
bool MobileStatic::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00609110 mac 1004d490 MobileStatic::IsFence(void)
bool MobileStatic::IsFence()
{
    return 0;
}

// win1.41 006091b0 mac 10097420 MobileStatic::GetHoldType(void)
HOLD_TYPE MobileStatic::GetHoldType()
{
    return (HOLD_TYPE)0;
}

// win1.41 00609210 mac 103bf080 MobileStatic::PhysicallyDestroysAbodes(void)
bool MobileStatic::PhysicallyDestroysAbodes()
{
    return 0;
}

// win1.41 00609230 mac 10097510 MobileStatic::GetHoldLoweringMultiplier(void)
float MobileStatic::GetHoldLoweringMultiplier()
{
    return 0;
}

// win1.41 00609260 mac 103beff0 MobileStatic::ChecksVerticesVObjects(void)
bool MobileStatic::ChecksVerticesVObjects()
{
    return 0;
}

// win1.41 00609270 mac 103bee80 MobileStatic::GetPhysicsConstantsType(void)
uint32_t MobileStatic::GetPhysicsConstantsType()
{
    return 0;
}
