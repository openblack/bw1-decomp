#include "Object.h"

#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For LH3DMath */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include "re_common.h"
#include "chlasm/AllMeshes.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For CellSizeXGridDim */

#include "FireEffect.h"
#include "Game.h" /* For GGame */
#include "Game3DObject.h"
#include "GameThingWithPos.h"
#include "Landscape.h" /* For GLandscape */

Object::Object() : info(NULL), coords()
{
	MapParent = NULL;
	fire_effect = NULL;
	Flags = 0;
	Game3dObject = NULL;
}

Object::~Object()
{
	if (Game3dObject != NULL)
	{
		Game3dObject->Release();
		Game3dObject = NULL;
	}
}

LH3DObject::ObjectType Object::Get3DType(MESH_LIST index)
{
	LH3DMeshPack& meshPack = *LH3DMesh::MeshPack;

	if (index < MSH_DUMMY || index >= meshPack.MeshCount)
	{
		index = MSH_DUMMY;
	}
	return (LH3DObject::ObjectType)((meshPack.Meshes[index]->flags >> 7) & 2);
}

LH3DObject::ObjectType Object::Get3DType()
{
	MESH_LIST     mesh = GetMesh();
	LH3DMeshPack& meshPack = *LH3DMesh::MeshPack;

	if (mesh < MSH_DUMMY || mesh >= meshPack.MeshCount)
	{
		mesh = MSH_DUMMY;
	}
	return (LH3DObject::ObjectType)((meshPack.Meshes[mesh]->flags >> 7) & 2);
}

Object::Object(const MapCoords& _coords, const GObjectInfo* _info) : GameThingWithPos(_coords), info(NULL), coords()
{
	MapParent = NULL;
	fire_effect = NULL;
	Flags = 0;
	Game3dObject = NULL;
	SetPos(_coords);
	coords = Pos;
	SetLife(1.0f);
	info = _info;
	y_angle = 0.0f;
	scale = 1.0f;
	ObjectCreationIndex = GGame::g_game->data.NumCreatedObjects++;
	InitialiseIsFixedForMapList();
}

void Object::Create3DObject()
{
	Game3dObject = Game3DObject::Create(Get3DType());
	Game3dObject->SetDynamicLighting(1);
	Game3dObject->SetCastDynamicShadow(1);
	Game3dObject->importance = GetImportance();
}

void Object::ToBeDeleted(int param_1)
{
	GameThingWithPos::ToBeDeleted(param_1);
	if (fire_effect != NULL)
	{
		fire_effect->ToBeDeleted(0);
		fire_effect = NULL;
	}
}

void Object::Delete()
{
	if (this != NULL)
	{
		delete this;
	}
}

bool32_t Object::IsObjectInMapCheck()
{
	return false;
}

void Object::InsertMapObject() {}

void Object::RemoveMapObject() {}

bool32_t Object::IsObjectInMap(MapCell* cell)
{
	return false;
}

void Object::InsertMapObjectToCell(MapCell* cell) {}

void Object::RemoveMapObjectFromCell(MapCell* cell) {}

int Object::MoveMapObject(const MapCoords& param_2)
{
	return 0;
}

bool32_t Object::IsTuggable()
{
	return true;
}

bool32_t Object::ValidToShakeFromHand()
{
	return true;
}

bool Object::IsAttackable(Object* param_1)
{
	return false;
}

bool Object::IsAllied(Object* param_1)
{
	return false;
}

float Object::GetMeshRadius()
{
	return 0.0f;
}

void Object::CallVirtualFunctionsForCreation(const MapCoords& coords) {}

LHPoint Object::GetNearestEdgeOfObject(Object* object)
{
	return LHPoint();
}

void Object::GetNearestPosOfObject(Object* param_1) {}

MapCoords Object::GetNearestEdgeToPos(const MapCoords& pos)
{
	return MapCoords();
}

void Object::GetNearestEdge(float param_1, float param_2) {}

uint32_t Object::InitialisePhysicsFromHand(LHPoint& param_1, LHPoint& param_2, GInterfaceStatus* param_3,
                                           Object* param_4, int param_5)
{
	return 0;
}

bool32_t Object::HasSunk()
{
	return false;
}

uint32_t Object::InitialisePhysics(const LHPoint& param_1, const LHPoint& param_2, Object* param_3, bool param_4,
                                   GInterfaceStatus* param_5)
{
	return 0;
}

void Object::EndPhysics(PhysicsObject* param_1, bool param_2) {}

bool32_t Object::InterfaceSetInMagicHand(GInterfaceStatus* status)
{
	return true;
}

bool32_t Object::InterfaceSetOutMagicHand(GInterfaceStatus* status)
{
	if (fire_effect != NULL)
	{
		fire_effect->SetOutMagicHand();
	}
	return true;
}

SOUND_COLLISION_TYPE Object::GetCollideSoundType()
{
	return info->CollideSound;
}

uint32_t Object::GetPhysicsConstantsType()
{
	return CanBecomeAPhysicsObject() != false;
}

void Object::SetUpPhysOb(PhysOb* param_1) {}

void Object::GetBoundingSphere(LHPoint& center, float& radius) {}

bool Object::InteractsWithPhysicsObjects()
{
	return Game3dObject != NULL;
}

void Object::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2) {}

bool Object::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* param_1)
{
	return InteractsWithPhysicsObjects();
}

bool32_t Object::CanBecomeAPhysicsObject()
{
	return false;
}

void Object::CleanupWhenDeleted(int param_1)
{
	if (IsObjectInMap())
	{
		RemoveMapObject();
	}
}

float Object::ReduceLife(float value, GPlayer* player)
{
	return 0.0f;
}

float Object::IncreaseLife(float value)
{
	return 0.0f;
}

uint32_t Object::DestroyedByEffect(GPlayer* player, float param_2)
{
	return 0;
}

void Object::FillInEffectDefenceMultiplier(EffectNumbers& param_1) {}

float Object::GetDefenseMultiplier()
{
	return 0.0f;
}

void Object::ApplyEffect(EffectValues& param_1, int param_2) {}

void Object::ReduceLifeDueToBurning(float param_1, GPlayer* param_2) {}

bool32_t Object::IsOnFire()
{
	return false;
}

float Object::GetHeatCapacity()
{
	return 0.0f;
}

void* Object::GetActualObjectToEffect(GPlayer* player, bool param_2)
{
	return NULL;
}

float Object::GetDamageEffect(EffectValues& values)
{
	return 0.0f;
}

float Object::GetHealEffect(EffectValues& values)
{
	return 0.0f;
}

bool Object::IsTouching(Object* target, float epsilon)
{
	return false;
}

bool Object::IsTouching(const MapCoords& coords)
{
	return false;
}

bool Object::IsTouching(const MapCoords& param_1, const MapCoords& param_2)
{
	return false;
}

float Object::GetDistanceFromObject(Object* param_1)
{
	return 0.0f;
}

void Object::ApplySingleEffect(EFFECT_TYPE param_1, float param_2, GameThing* param_3, const MapCoords& param_4) {}

void Object::ActualMoveMapObject(const MapCoords& param_2) {}

float Object::GetProjectileSpeed()
{
	return 0.0f;
}

float Object::GetRadius()
{
	return 0.0f;
}

float Object::GetHeight()
{
	return 0.0f;
}

float Object::GetHeightForHandAboveInteractObject()
{
	return 0.0f;
}

float Object::GetTopPos()
{
	return 0.0f;
}

float Object::Get2DRadius()
{
	return 0.0f;
}

void Object::GetWorldMatrix(LHMatrix* out) {}

int Object::GetLandingPointCount()
{
	return 0;
}

bool Object::GetLandingPoint(uint8_t param_1, LHPoint* param_2)
{
	return false;
}

float Object::GetWeight()
{
	return 0.0f;
}

float Object::GetRoutePlanRadius(Creature* param_1)
{
	return 0.0f;
}

bool32_t Object::IsBuildingMaterial()
{
	return false;
}

Object* Object::GetMapChild(const MapCoords& coord)
{
	return NULL;
}

HELP_TEXT Object::GetQueryFirstEnumText()
{
	return (HELP_TEXT)0;
}

HELP_TEXT Object::GetQueryLastEnumText()
{
	return (HELP_TEXT)0;
}

uint32_t Object::GetFOVHelpMessageSet()
{
	return 0;
}

uint32_t Object::GetFOVHelpCondition()
{
	return 0;
}

uint32_t Object::GetHandHelpMessageSet()
{
	return 0;
}

uint32_t Object::GetHandHelpCondition()
{
	return 0;
}

uint32_t Object::ThrowObjectFromHand(GInterfaceStatus* status, int param_2)
{
	return 0;
}

bool Object::IsARootedObject()
{
	return false;
}

bool32_t Object::CreatureMustAvoid(Creature* param_1)
{
	return false;
}

void Object::AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
                            void(__cdecl* param_4)(int, Point2D, float, int))
{
}

void Object::SimpleAddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
                                  void(__cdecl* param_4)(int, Point2D, float, int))
{
}

bool32_t Object::VillagerMustAvoid(Villager* param_1)
{
	return false;
}

HOLD_TYPE Object::GetHoldType()
{
	return (HOLD_TYPE)0;
}

float Object::GetHoldRadius()
{
	return 0.0f;
}

float Object::GetHoldLoweringMultiplier()
{
	return 0.0f;
}

bool32_t Object::GetInspectObjectPos(Villager* param_1, MapCoords* pos)
{
	return false;
}

bool32_t Object::GetSpecialPos(uint32_t index, MapCoords* pos)
{
	return false;
}

float Object::GetImportance()
{
	return 0.0f;
}

void Object::SetXYZAngles(float x, float y, float z) {}

void Object::SetXYZAnglesAndScale(float x, float y, float z, float scale) {}

void Object::SetScale(float scale) {}

void Object::SetYAngle(float angle) {}

bool32_t Object::IsObjectInMap()
{
	return false;
}

void Object::DrawValue(int param_1, float param_2) {}

float Object::GetImpressiveValue()
{
	return 0.0f;
}

void Object::SetFocus(const LHPoint& focus)
{
	LHPoint pos;
	float   angle;

	GLandscape::ConvertMapCoordToLandscapePoint(Pos, pos);
	angle = LH3DMath::GetYAngle(&pos, (LHPoint*)&focus);
	SetYAngle(angle);
}

void Object::IsActuallyInTheAir() {}

void Object::GetPhysicsMovementDirection(LHPoint* pos) {}

uint32_t Object::GetResource(RESOURCE_TYPE type)
{
	return 0;
}

MapCoords Object::GetWorkingPos(Object* param_1)
{
	return MapCoords();
}

float Object::GetWoodValue()
{
	return 0.0f;
}

float Object::GetAggressorValueFromDamage(float param_1)
{
	return 0.0f;
}

float Object::CalculateForceAppliedBy(Living* param_1)
{
	return 0.0f;
}

void Object::PushObject(Living* param_1) {}

void Object::PushObject(Living* param_1, MapCoords& param_2) {}

float Object::GetImpressiveValue(Living* param_1, Reaction* param_2)
{
	return 0.0f;
}

float Object::GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2)
{
	return 0.0f;
}

bool32_t Object::CanBeDestroyedBySpell(Spell* param_1)
{
	return false;
}

float Object::GetTribalPower(TRIBE_TYPE param_1)
{
	return 0.0f;
}

bool Object::IsFireMan()
{
	return false;
}

void Object::GetTemperature() {}

void Object::SetOnFire(float param_1) {}

void Object::SetTemperature(float param_1, GameThing* param_2) {}

void Object::GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4) {}

float Object::GetRainCoolingMultiplier()
{
	return 0.0f;
}

LHPoint* Object::GetDefaultFireCentrePos(LHPoint* pos)
{
	return NULL;
}

float Object::GetDefaultFireRadius()
{
	return 0.0f;
}

bool Object::ProcessInHand()
{
	return false;
}

uint32_t Object::ProcessInInteract(GInterfaceStatus* status)
{
	return 0;
}

void Object::SetInScript(int param_1) {}

uint32_t Object::RemoveFromGame()
{
	return 0;
}

bool Object::CanBeSuckedIntoVortex(LandscapeVortex* param_1)
{
	return false;
}

float Object::GetDrawImportance()
{
	return 0.0f;
}

uint32_t Object::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
	return 0;
}

uint32_t Object::Save(GameOSFile& file)
{
	return 0;
}

uint32_t Object::Load(GameOSFile& file)
{
	return 0;
}

void Object::ResolveLoad() {}

void Object::SetLife(float life) {}

void Object::GetInterfaceStatusHoldingThis() {}

IMMERSION_EFFECT_TYPE Object::GetImmersionTexture()
{
	return (IMMERSION_EFFECT_TYPE)0;
}

void Object::SetUpPhysObAsATree(PhysOb* param_1, float param_2, float param_3, float param_4, float param_5) {}

void Object::InitialiseIsFixedForMapList() {}

void Object::GetInterfaceStatusWhoLastDroppedMe() {}

bool32_t Object::IsDrowning()
{
	return false;
}

uint32_t Object::DropSfx()
{
	return 0;
}

IMMERSION_EFFECT_TYPE Object::GetInHandImmersionTexture()
{
	return (IMMERSION_EFFECT_TYPE)0;
}

bool Object::CanBecomeArtifact()
{
	return false;
}

void Object::SetYJustAngle(float angle) {}

bool32_t Object::CreateSmokyStuff(long param_1, float param_2, LH3DColor param_3)
{
	return false;
}

float Object::ApplyWaterSpell(SpellWater* spell)
{
	return 0.0f;
}

bool Object::BlocksTownClearArea()
{
	return false;
}

bool Object::DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2)
{
	return false;
}

void Object::DoDeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2) {}

float Object::GetRadiusMultiplierForApplyingPotToPos()
{
	return 0.0f;
}

bool Object::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus& status)
{
	return false;
}

float Object::GetSacrificeValue()
{
	return 0.0f;
}

void Object::DiscipleInHandNear(Villager& villager, GInterfaceStatus& status) {}

void Object::DestroyedByBeam() {}
