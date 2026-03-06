#include "MPFEChangedMapMessage.h"
#include "MPFEMapErrorMessage.h"
#include "MPFEChangedTeamRequestMessage.h"
#include "MPFEUserTeamList.h"
#include "MultiplayerDatabase.h"
#include "CreatureDatabase.h"
#include "StatsDatabase.h"
#include "Network.h"
#include "ObjectInfo.h"
#include "Object.h"

// win1.41 00631270 mac 103969e0 MPFEChangedMapMessage::_dt(void)
MPFEChangedMapMessage::~MPFEChangedMapMessage()
{
}

// win1.41 00631510 mac 103a4050 MPFEMapErrorMessage::_dt(void)
MPFEMapErrorMessage::~MPFEMapErrorMessage()
{
}

// win1.41 00632d20 mac 10397440 MPFEChangedTeamRequestMessage::_dt(void)
MPFEChangedTeamRequestMessage::~MPFEChangedTeamRequestMessage()
{
}

// win1.41 00633050 mac 10396090 MPFEUserTeamList::_dt(void)
MPFEUserTeamList::~MPFEUserTeamList()
{
}

// win1.41 00633400 mac 1010a230 MultiplayerDatabase::MultiplayerDatabase(void)
MultiplayerDatabase::MultiplayerDatabase()
{
}

// win1.41 00633610 mac 10109f20 MultiplayerDatabase::ReceiveReturnData(void)
bool MultiplayerDatabase::ReceiveReturnData()
{
    return 0;
}

// win1.41 006336b0 mac 10109d30 CreatureDatabase::CreatureDatabase(void)
CreatureDatabase::CreatureDatabase()
{
}

// win1.41 006336d0 mac 10109aa0 CreatureDatabase::Send(void)
bool CreatureDatabase::Send()
{
    return 0;
}

// win1.41 006338d0 mac 10109a30 StatsDatabase::StatsDatabase(void)
StatsDatabase::StatsDatabase()
{
}

// win1.41 006338f0 mac 10109920 StatsDatabase::Send(void)
bool StatsDatabase::Send()
{
    return 0;
}

// win1.41 006345e0 mac 10017240 GNetwork::ResetStateDebug(void)
void GNetwork::ResetStateDebug()
{
}

// win1.41 006349f0 mac 1010bff0 GNetwork::ProcessOnePacket(void)
bool GNetwork::ProcessOnePacket()
{
    return 0;
}

// win1.41 00635290 mac 100229f0 GNetwork::ProcessOneSuperpacket(void)
uint32_t GNetwork::ProcessOneSuperpacket()
{
    return 0;
}

// win1.41 006363c0 mac 101cbbe0 GObjectInfo::_dt(void)
GObjectInfo::~GObjectInfo()
{
}

// win1.41 00636450 mac 103d9480 Object::Object(void)
Object::Object()
{
}

// win1.41 006364a0 mac 103d8f50 Object::_dt(void)
Object::~Object()
{
}

// win1.41 006364c0 mac 103d93a0 Object::Get3DType(MESH_LIST)
LH3DObject::ObjectType Object::Get3DType(MESH_LIST index)
{
    return (LH3DObject::ObjectType)0;
}

// win1.41 006364f0 mac 103d92f0 Object::Get3DType(void)
LH3DObject::ObjectType Object::Get3DType()
{
    return (LH3DObject::ObjectType)0;
}

// win1.41 00636520 mac 103d90d0 Object::Object(MapCoords const &, GObjectInfo const *)
Object::Object(const MapCoords& coords, const GObjectInfo* info)
{
}

// win1.41 006365f0 mac 103d9010 Object::Create3DObject(void)
void Object::Create3DObject()
{
}

// win1.41 00636670 mac 103d8eb0 Object::ToBeDeleted(int)
void Object::ToBeDeleted(int param_1)
{
}

// win1.41 006366a0 mac 103d8e50 Object::Delete(void)
void Object::Delete()
{
}

// win1.41 006366b0 mac 103d8d10 Object::IsObjectInMapCheck(void)
bool Object::IsObjectInMapCheck()
{
    return 0;
}

// win1.41 00636740 mac 1004ad80 Object::InsertMapObject(void)
void Object::InsertMapObject()
{
}

// win1.41 006367a0 mac 1004ace0 Object::RemoveMapObject(void)
void Object::RemoveMapObject()
{
}

// win1.41 006367d0 mac 10054140 Object::IsObjectInMap(MapCell *)
bool Object::IsObjectInMap(MapCell* cell)
{
    return 0;
}

// win1.41 00636830 mac 10053ed0 Object::InsertMapObjectToCell(MapCell *)
void Object::InsertMapObjectToCell(MapCell* cell)
{
}

// win1.41 006368d0 mac 10053bc0 Object::RemoveMapObjectFromCell(MapCell *)
void Object::RemoveMapObjectFromCell(MapCell* cell)
{
}

// win1.41 00636a40 mac 1004d070 Object::MoveMapObject(MapCoords const &)
int Object::MoveMapObject(const MapCoords& param_2)
{
    return 0;
}

// win1.41 00636a90 mac 103d8920 Object::IsTuggable(void)
bool Object::IsTuggable()
{
    return 0;
}

// win1.41 00636aa0 mac 100933f0 Object::ValidToShakeFromHand(void)
bool Object::ValidToShakeFromHand()
{
    return 0;
}

// win1.41 00636ab0 mac 103d8820 Object::IsAttackable(Object *)
bool Object::IsAttackable(Object* param_1)
{
    return 0;
}

// win1.41 00636af0 mac 103d8770 Object::IsAllied(Object *)
bool Object::IsAllied(Object* param_1)
{
    return 0;
}

// win1.41 00636bd0 mac 103d8710 Object::GetMeshRadius( const(void))
float Object::GetMeshRadius() const
{
    return 0;
}

// win1.41 00636be0 mac 103d84b0 Object::CallVirtualFunctionsForCreation(MapCoords const &)
void Object::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
}

// win1.41 00636cd0 mac 103d8340 Object::GetNearestEdgeOfObject(Object *)
void Object::GetNearestEdgeOfObject(Object* param_1)
{
}

// win1.41 00636d30 mac 103d8250 Object::GetNearestPosOfObject(Object *)
void Object::GetNearestPosOfObject(Object* param_1)
{
}

// win1.41 00636da0 mac 103d8190 Object::GetNearestEdgeToPos(MapCoords const &)
void Object::GetNearestEdgeToPos(const MapCoords& param_1)
{
}

// win1.41 00636df0 mac 103d80e0 Object::GetNearestEdge(float, float)
void Object::GetNearestEdge(float param_1, float param_2)
{
}

// win1.41 00636f00 mac 103d7760 Object::InitialisePhysicsFromHand(void)
uint32_t Object::InitialisePhysicsFromHand(LHPoint* param_1, LHPoint* param_2, GInterfaceStatus* param_3, Object* param_4, int param_5)
{
    return 0;
}

// win1.41 00637470 mac 103d7730 Object::HasSunk(void)
bool Object::HasSunk()
{
    return 0;
}

// win1.41 00637480 mac 103d74c0 Object::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
uint32_t Object::InitialisePhysics(const LHPoint& param_1, const LHPoint& param_2, Object* param_3, bool param_4, GInterfaceStatus* param_5)
{
    return 0;
}

// win1.41 006375a0 mac 103d7350 Object::EndPhysics(PhysicsObject *, bool)
void Object::EndPhysics(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00637660 mac 103d7300 Object::InterfaceSetInMagicHand(GInterfaceStatus *)
bool32_t Object::InterfaceSetInMagicHand(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 00637670 mac 103d7280 Object::InterfaceSetOutMagicHand(GInterfaceStatus *)
bool32_t Object::InterfaceSetOutMagicHand(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 00637690 mac 103d7220 Object::GetCollideSoundType(void)
SOUND_COLLISION_TYPE Object::GetCollideSoundType()
{
    return (SOUND_COLLISION_TYPE)0;
}

// win1.41 006376a0 mac 103d71b0 Object::GetPhysicsConstantsType(void)
uint32_t Object::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 006376b0 mac 103d70b0 Object::SetUpPhysOb(PhysOb *)
void Object::SetUpPhysOb(PhysOb* param_1)
{
}

// win1.41 00637730 mac 103d6f80 Object::GetBoundingSphere(LHPoint &, float &)
void Object::GetBoundingSphere(LHPoint& center, float& radius)
{
}

// win1.41 006377b0 mac 103d6f30 Object::InteractsWithPhysicsObjects(void)
bool Object::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 006377c0 mac 103d6ee0 Object::ReactToPhysicsImpact(PhysicsObject *, bool)
void Object::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 006377d0 mac 103d6e50 Object::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object *)
void Object::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* param_1)
{
}

// win1.41 006377e0 mac 103d6e10 Object::CanBecomeAPhysicsObject(void)
bool Object::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 006377f0 mac 103d6d80 Object::CleanupWhenDeleted(int)
void Object::CleanupWhenDeleted(int param_1)
{
}

// win1.41 00637810 mac 1004b140 Object::ReduceLife(float, GPlayer *)
void Object::ReduceLife(float value, GPlayer* player)
{
}

// win1.41 00637870 mac 103d6b50 Object::IncreaseLife(float)
void Object::IncreaseLife(float value)
{
}

// win1.41 006378e0 mac 103d6ad0 Object::DestroyedByEffect(GPlayer *, float)
bool Object::DestroyedByEffect(GPlayer* player, float param_2)
{
    return 0;
}

// win1.41 00637900 mac 103d6a00 Object::FillInEffectDefenceMultiplier(EffectNumbers &)
void Object::FillInEffectDefenceMultiplier(EffectNumbers& param_1)
{
}

// win1.41 00637980 mac 103d6510 Object::ApplyEffect(EffectValues &, int)
void Object::ApplyEffect(EffectValues& param_1, int param_2)
{
}

// win1.41 00637c20 mac 103d63c0 Object::ReduceLifeDueToBurning(float, GPlayer *)
void Object::ReduceLifeDueToBurning(float param_1, GPlayer* param_2)
{
}

// win1.41 00637ce0 mac 103d6270 Object::GetHeatCapacity(void)
float Object::GetHeatCapacity()
{
    return 0;
}

// win1.41 00637cf0 mac 103d6220 Object::GetActualObjectToEffect(GPlayer *, bool)
void* Object::GetActualObjectToEffect(GPlayer* player, bool param_2)
{
    return 0;
}

// win1.41 00637d00 mac 103d6120 Object::GetDamageEffect(EffectValues &)
float Object::GetDamageEffect(EffectValues& values)
{
    return 0;
}

// win1.41 00637d80 mac 103d6050 Object::GetHealEffect(EffectValues &)
float Object::GetHealEffect(EffectValues& values)
{
    return 0;
}

// win1.41 00637e00 mac 103d5f70 Object::IsTouching(Object *, float)
bool Object::IsTouching(Object* param_1, float param_2)
{
    return 0;
}

// win1.41 00637e30 mac 103d5ef0 Object::IsTouching(MapCoords const &)
bool Object::IsTouching(const MapCoords& param_1)
{
    return 0;
}

// win1.41 00637e60 mac 103d5970 Object::IsTouching(MapCoords const &, MapCoords const &)
bool Object::IsTouching(const MapCoords& param_1, const MapCoords& param_2)
{
    return 0;
}

// win1.41 00637fb0 mac 103d58a0 Object::GetDistanceFromObject(Object *)
float Object::GetDistanceFromObject(Object* param_1)
{
    return 0;
}

// win1.41 00637ff0 mac 103d57e0 Object::ApplySingleEffect(EFFECT_TYPE, float, GameThing *, MapCoords const &)
void Object::ApplySingleEffect(EFFECT_TYPE param_1, float param_2, GameThing* param_3, const MapCoords& param_4)
{
}

// win1.41 00638040 mac 10055200 Object::ActualMoveMapObject(MapCoords const &)
void Object::ActualMoveMapObject(const MapCoords& param_2)
{
}

// win1.41 006380b0 mac 103d5740 Object::GetProjectileSpeed(void)
float Object::GetProjectileSpeed()
{
    return 0;
}

// win1.41 00638110 mac 103d55b0 Object::GetRadius(void)
float Object::GetRadius()
{
    return 0;
}

// win1.41 00638120 mac 10030760 Object::GetHeight(void)
float Object::GetHeight()
{
    return 0;
}

// win1.41 00638150 mac 103d5500 Object::GetHeightForHandAboveInteractObject(void)
float Object::GetHeightForHandAboveInteractObject()
{
    return 0;
}

// win1.41 00638160 mac 103d5490 Object::GetTopPos(void)
float Object::GetTopPos()
{
    return 0;
}

// win1.41 00638180 mac 10038d20 Object::Get2DRadius(void)
float Object::Get2DRadius()
{
    return 0;
}

// win1.41 00638200 mac 1007e8a0 Object::GetWorldMatrix(LHMatrix *)
void Object::GetWorldMatrix(LHMatrix* out)
{
}

// win1.41 00638430 mac 103d52a0 Object::GetLandingPointCount(void)
int Object::GetLandingPointCount()
{
    return 0;
}

// win1.41 00638450 mac 103d5230 Object::GetLandingPoint(unsigned char, LHPoint *)
bool Object::GetLandingPoint(uint8_t param_1, LHPoint* param_2)
{
    return 0;
}

// win1.41 00638480 mac 103d51a0 Object::GetWeight(void)
float Object::GetWeight()
{
    return 0;
}

// win1.41 006384c0 mac 103d5070 Object::GetRoutePlanRadius(Creature *)
float Object::GetRoutePlanRadius(Creature* param_1)
{
    return 0;
}

// win1.41 00638550 mac 103d5010 Object::IsBuildingMaterial(void)
bool32_t Object::IsBuildingMaterial()
{
    return 0;
}

// win1.41 00638560 mac 1005ba80 Object::GetMapChild(MapCoords const &)
Object* Object::GetMapChild(const MapCoords* coord)
{
    return 0;
}

// win1.41 00638580 mac 103d4f70 Object::GetQueryFirstEnumText(void)
HELP_TEXT Object::GetQueryFirstEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 00638590 mac 103d4f10 Object::GetQueryLastEnumText(void)
HELP_TEXT Object::GetQueryLastEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 006385a0 mac 1004c960 Object::GetFOVHelpMessageSet(void)
uint32_t Object::GetFOVHelpMessageSet()
{
    return 0;
}

// win1.41 006385b0 mac 103d4d50 Object::GetFOVHelpCondition(void)
uint32_t Object::GetFOVHelpCondition()
{
    return 0;
}

// win1.41 006385c0 mac 103d4cf0 Object::GetHandHelpMessageSet(void)
uint32_t Object::GetHandHelpMessageSet()
{
    return 0;
}

// win1.41 006385d0 mac 103d4c90 Object::GetHandHelpCondition(void)
uint32_t Object::GetHandHelpCondition()
{
    return 0;
}

// win1.41 006385e0 mac 103d4a70 Object::ThrowObjectFromHand(GInterfaceStatus *, int)
uint32_t Object::ThrowObjectFromHand(GInterfaceStatus* status, int param_2)
{
    return 0;
}

// win1.41 00638730 mac 10097740 Object::IsARootedObject(void)
bool Object::IsARootedObject()
{
    return 0;
}

// win1.41 00638740 mac 103d48a0 Object::CreatureMustAvoid(Creature *)
bool Object::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 00638790 mac 103d43b0 Object::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void Object::AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (* param_4)(int, Point2D, float, int))
{
}

// win1.41 00638be0 mac 103d41e0 Object::VillagerMustAvoid(Villager *)
bool32_t Object::VillagerMustAvoid(Villager* param_1)
{
    return 0;
}

// win1.41 00638bf0 mac 103d41a0 Object::GetHoldType(void)
HOLD_TYPE Object::GetHoldType()
{
    return (HOLD_TYPE)0;
}

// win1.41 00638c00 mac 100953b0 Object::GetHoldRadius(void)
float Object::GetHoldRadius()
{
    return 0;
}

// win1.41 00638c30 mac 103d4110 Object::GetHoldLoweringMultiplier(void)
float Object::GetHoldLoweringMultiplier()
{
    return 0;
}

// win1.41 00638cb0 mac 103d3fe0 Object::GetInspectObjectPos(Villager *, MapCoords *)
bool Object::GetInspectObjectPos(Villager* param_1, MapCoords* pos)
{
    return 0;
}

// win1.41 00638cd0 mac 103d3f70 Object::GetSpecialPos(unsigned long, MapCoords *)
bool32_t Object::GetSpecialPos(uint32_t index, MapCoords* pos)
{
    return 0;
}

// win1.41 00638cf0 mac 103d3f30 Object::GetImportance(void)
float Object::GetImportance()
{
    return 0;
}

// win1.41 00638d00 mac 10043070 Object::SetXYZAngles(float, float, float)
void Object::SetXYZAngles(float x, float y, float z)
{
}

// win1.41 00638f80 mac 103d3d70 Object::SetXYZAnglesAndScale(float, float, float, float)
void Object::SetXYZAnglesAndScale(float x, float y, float z, float scale)
{
}

// win1.41 00639200 mac 103d3c80 Object::SetScale(float)
void Object::SetScale(float scale)
{
}

// win1.41 00639260 mac 1004cc10 Object::SetYAngle(float)
void Object::SetYAngle(float angle)
{
}

// win1.41 006392b0 mac 10037930 Object::IsObjectInMap(void)
bool Object::IsObjectInMap()
{
    return 0;
}

// win1.41 006392c0 mac 103d38b0 Object::DrawValue(long, float)
void Object::DrawValue(int param_1, float param_2)
{
}

// win1.41 00639390 mac 103d3840 Object::GetImpressiveValue(void)
float Object::GetImpressiveValue()
{
    return 0;
}

// win1.41 006393a0 mac 100299c0 Object::SetFocus(LHPoint const &)
void Object::SetFocus(const LHPoint* focus)
{
}

// win1.41 006394e0 mac 103d35f0 Object::GetPhysicsMovementDirection(LHPoint *)
void Object::GetPhysicsMovementDirection(LHPoint* pos)
{
}

// win1.41 00639520 mac 103d3550 Object::GetResource(RESOURCE_TYPE)
uint32_t Object::GetResource(RESOURCE_TYPE type)
{
    return 0;
}

// win1.41 00639550 mac 103d3460 Object::GetWorkingPos(Object *)
MapCoords* Object::GetWorkingPos(MapCoords* param_1, Object* param_2)
{
    return 0;
}

// win1.41 006395c0 mac 103d3390 Object::GetWoodValue(void)
float Object::GetWoodValue()
{
    return 0;
}

// win1.41 00639610 mac 103d3310 Object::GetAggressorValueFromDamage(float)
float Object::GetAggressorValueFromDamage(float param_1)
{
    return 0;
}

// win1.41 00639620 mac 103d3290 Object::CalculateForceAppliedBy(Living *)
float Object::CalculateForceAppliedBy(Living* param_1)
{
    return 0;
}

// win1.41 00639640 mac 103d30f0 Object::PushObject(Living *)
void Object::PushObject(Living* param_1)
{
}

// win1.41 006397c0 mac 103d2f90 Object::PushObject(Living *, MapCoords &)
void Object::PushObject(Living* param_1, MapCoords& param_2)
{
}

// win1.41 00639860 mac 103d2e30 Object::GetImpressiveValue(Living *, Reaction *)
float Object::GetImpressiveValue(Living* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 00639940 mac 103d2cf0 Object::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
float Object::GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2)
{
    return 0;
}

// win1.41 00639960 mac 103d2ba0 Object::CanBeDestroyedBySpell(Spell *)
bool32_t Object::CanBeDestroyedBySpell(Spell* param_1)
{
    return 0;
}

// win1.41 006399d0 mac 10003b20 Object::GetTribalPower(TRIBE_TYPE)
float Object::GetTribalPower(TRIBE_TYPE param_1)
{
    return 0;
}

// win1.41 00639a00 mac 103d2b20 Object::IsFireMan(void)
bool Object::IsFireMan()
{
    return 0;
}

// win1.41 00639a80 mac 103d2950 Object::GetFireGPHXDrawn(bool *, bool *, bool *, bool *)
void Object::GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4)
{
}

// win1.41 00639a90 mac 103d2900 Object::GetRainCoolingMultiplier(void)
float Object::GetRainCoolingMultiplier()
{
    return 0;
}

// win1.41 00639aa0 mac 1001a370 Object::GetDefaultFireCentrePos(MapCoords *)
LHPoint* Object::GetDefaultFireCentrePos(LHPoint* pos)
{
    return 0;
}

// win1.41 00639ac0 mac 103d2490 Object::GetDefaultFireRadius(void)
float Object::GetDefaultFireRadius()
{
    return 0;
}

// win1.41 00639ad0 mac 1008a4c0 Object::ProcessInHand(void)
bool Object::ProcessInHand()
{
    return 0;
}

// win1.41 00639b10 mac 103d22d0 Object::ProcessInInteract(GInterfaceStatus *)
uint32_t Object::ProcessInInteract(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 00639b20 mac 103d2290 Object::SetInScript(int)
void Object::SetInScript(int param_1)
{
}

// win1.41 00639b50 mac 103d2250 Object::RemoveFromGame(void)
uint32_t Object::RemoveFromGame()
{
    return 0;
}

// win1.41 00639b60 mac 103d21e0 Object::CanBeSuckedIntoVortex(LandscapeVortex *)
bool Object::CanBeSuckedIntoVortex(LandscapeVortex* param_1)
{
    return 0;
}

// win1.41 00639b70 mac 103d2180 Object::GetDrawImportance(void)
float Object::GetDrawImportance()
{
    return 0;
}

// win1.41 00639b80 mac 103d2110 Object::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t Object::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
    return 0;
}

// win1.41 00639b90 mac 103d1d50 Object::Save(GameOSFile &)
bool Object::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00639eb0 mac 103d1b20 Object::Load(GameOSFile &)
bool Object::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0063a020 mac 103d1940 Object::ResolveLoad(void)
void Object::ResolveLoad()
{
}

// win1.41 0063a140 mac 100515d0 Object::SetLife(float)
void Object::SetLife(float life)
{
}

// win1.41 0063a220 mac 103d1140 Object::GetImmersionTexture(void)
IMMERSION_EFFECT_TYPE Object::GetImmersionTexture()
{
    return (IMMERSION_EFFECT_TYPE)0;
}
