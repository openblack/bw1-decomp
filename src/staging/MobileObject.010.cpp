#include "MobileObjectInfo.h"
#include "MobileObject.h"
#include "Poo.h"

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
