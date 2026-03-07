#include "Data.h"
#include "Game.h"
#include "DeadTree.h"
#include "FelledTree.h"
#include "Debug.h"

// win1.41 00510500 mac 100c0a70 GData::GData(void)
GData::GData()
{
}

// win1.41 00510610 mac 1056c340 GData::_dt(void)
GData::~GData()
{
}

// win1.41 00510630 mac 100c09f0 GGame::SetupDataTables(void)
void GGame::SetupDataTables()
{
}

// win1.41 00510650 mac 1002adb0 GData::Rand(long)
uint32_t GData::Rand(uint32_t max, const char* src_file, uint32_t src_line)
{
    return 0;
}

// win1.41 00510750 mac 100c08f0 GData::Reset(void)
void GData::Reset()
{
}

// win1.41 005107f0 mac 1002b5c0 DeadTree::Draw(void)
void DeadTree::Draw()
{
}

// win1.41 00510970 mac 100c0e20 DeadTree::GetInHandImmersionTexture(void)
IMMERSION_EFFECT_TYPE DeadTree::GetInHandImmersionTexture()
{
    return (IMMERSION_EFFECT_TYPE)0;
}

// win1.41 00510980 mac 100c0e80 DeadTree::IsAnyKindOfTree(void)
bool DeadTree::IsAnyKindOfTree()
{
    return 0;
}

// win1.41 00510990 mac 100c0ec0 DeadTree::IsDeadTree(void)
bool DeadTree::IsDeadTree()
{
    return 0;
}

// win1.41 005109a0 mac 100c0f00 DeadTree::InterfaceValidToTap(GInterfaceStatus *)
uint32_t DeadTree::InterfaceValidToTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 005109b0 mac 100c0f50 DeadTree::InterfaceTap(GInterfaceStatus *)
uint32_t DeadTree::InterfaceTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 005109c0 mac 100c0fa0 DeadTree::HandShouldFeelWithMeshIntersect(void)
bool DeadTree::HandShouldFeelWithMeshIntersect()
{
    return 0;
}

// win1.41 005109d0 mac inlined DeadTree::IsRock_0(void)
bool DeadTree::IsRock()
{
    return 0;
}

// win1.41 005109e0 mac 100c4120 DeadTree::GetSaveType(void)
uint32_t DeadTree::GetSaveType()
{
    return 0;
}

// win1.41 005109f0 mac 100c4160 DeadTree::GetDebugText(void)
char* DeadTree::GetDebugText()
{
    return 0;
}

// win1.41 00510a00 mac 100c19c0 DeadTree::_dt(void)
DeadTree::~DeadTree()
{
}

// win1.41 00510a90 mac 100c3b20 DeadTree::CallVirtualFunctionsForCreation(MapCoords const &)
void DeadTree::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00510c90 mac 100c3740 DeadTree::ToBeDeleted(int)
void DeadTree::ToBeDeleted(int param_1)
{
}

// win1.41 00510ca0 mac 100c3670 DeadTree::ReactToPhysicsImpact(PhysicsObject *, bool)
void DeadTree::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00510ce0 mac inlined DeadTree::GetDefaultFireCentrePos(LHPoint *)
LHPoint* DeadTree::GetDefaultFireCentrePos(LHPoint* param_1)
{
    return 0;
}

// win1.41 00510e10 mac 100c2f40 DeadTree::GetDefaultFireRadius(void)
float DeadTree::GetDefaultFireRadius()
{
    return 0;
}

// win1.41 00510e20 mac 100c2ef0 DeadTree::StartOnFire(void)
void DeadTree::StartOnFire()
{
}

// win1.41 00510e30 mac 100c2e50 DeadTree::CreatureMustAvoid(Creature *)
bool DeadTree::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 00510e60 mac 100c2db0 DeadTree::EndOnFire(void)
void DeadTree::EndOnFire()
{
}

// win1.41 00510e90 mac 100c2cd0 DeadTree::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t DeadTree::ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2)
{
    return 0;
}

// win1.41 00510ee0 mac 100c2a40 DeadTree::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t DeadTree::ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 00511050 mac 100c2910 DeadTree::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t DeadTree::ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 005110c0 mac 100c28d0 DeadTree::GetResourceType(void)
RESOURCE_TYPE DeadTree::GetResourceType()
{
    return (RESOURCE_TYPE)0;
}

// win1.41 005110d0 mac 100c2890 DeadTree::GetHoldType(void)
HOLD_TYPE DeadTree::GetHoldType()
{
    return (HOLD_TYPE)0;
}

// win1.41 005110e0 mac 100c2820 DeadTree::GetHoldRadius(void)
float DeadTree::GetHoldRadius()
{
    return 0;
}

// win1.41 005110f0 mac 100c27d0 DeadTree::GetHoldLoweringMultiplier(void)
float DeadTree::GetHoldLoweringMultiplier()
{
    return 0;
}

// win1.41 00511100 mac 100c2710 DeadTree::GetPhysicsConstantsType(void)
uint32_t DeadTree::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 00511130 mac 100c2640 DeadTree::GetCollideSoundType(void)
SOUND_COLLISION_TYPE DeadTree::GetCollideSoundType()
{
    return (SOUND_COLLISION_TYPE)0;
}

// win1.41 00511170 mac 100c24e0 DeadTree::SetUpPhysOb(PhysOb *)
void DeadTree::SetUpPhysOb(PhysOb* param_1)
{
}

// win1.41 005111f0 mac 100c2490 DeadTree::InteractsWithPhysicsObjects(void)
bool DeadTree::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00511200 mac 100c2450 DeadTree::IsARootedObject(void)
bool DeadTree::IsARootedObject()
{
    return 0;
}

// win1.41 00511330 mac 100c20e0 DeadTree::GetDefaultResource(void)
int DeadTree::GetDefaultResource()
{
    return 0;
}

// win1.41 00511370 mac 100c1fb0 DeadTree::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t DeadTree::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 005113f0 mac 100c1f10 DeadTree::EndPhysics(PhysicsObject *, bool)
void DeadTree::EndPhysics(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00511430 mac 100c1cd0 DeadTree::SaveObject(LHOSFile &, MapCoords const &)
uint32_t DeadTree::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 00511590 mac 100c1c50 DeadTree::GetWeight(void)
float DeadTree::GetWeight()
{
    return 0;
}

// win1.41 005115b0 mac 100c1c10 DeadTree::GetScriptObjectType(void)
uint32_t DeadTree::GetScriptObjectType()
{
    return 0;
}

// win1.41 005115c0 mac 100c1b30 DeadTree::Save(GameOSFile &)
bool DeadTree::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00511630 mac 100c1a50 DeadTree::Load(GameOSFile &)
bool DeadTree::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 005118c0 mac 100c0da0 FelledTree::GetSaveType(void)
uint32_t FelledTree::GetSaveType()
{
    return 0;
}

// win1.41 005118d0 mac 100c0de0 FelledTree::GetDebugText(void)
char* FelledTree::GetDebugText()
{
    return 0;
}

// win1.41 005118e0 mac 100c0cc0 FelledTree::_dt(void)
FelledTree::~FelledTree()
{
}

// win1.41 00511a10 mac 100c1250 DeadTree::CanBecomeAPhysicsObject(void)
bool DeadTree::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 00511a20 mac 100c10e0 DeadTree::GetCarriedTreeType(void)
uint32_t DeadTree::GetCarriedTreeType()
{
    return 0;
}

// win1.41 00511ad0 mac 100c1020 DeadTree::GetWoodValue(void)
float DeadTree::GetWoodValue()
{
    return 0;
}

// win1.41 00511da0 mac 1002c710 GDebug::SetMessage(unsigned short, char *,...)
void GDebug::SetMessage(GDebug* debug, uint16_t param_2, char* fmt, ...)
{
}
