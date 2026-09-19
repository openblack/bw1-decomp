#include "Object.h"

#include <math.h>  /* For sqrt */
#include <stdio.h> /* For sprintf */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For LH3DMath */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/PhysOb.h>  /* For struct PhysOb */
#include "re_common.h"
#include "chlasm/AllMeshes.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */

#include "EditorPhysics.h" /* For EditorPhysics::PhysicsConstants */
#include "FireEffect.h"
#include "Game.h" /* For GGame */
#include "Game3DObject.h"
#include "GameThingWithPos.h"
#include "JCGameBlock.h"   /* For GameBlock */
#include "LandFeature.h"   /* For RequestChangeTexture */
#include "Landscape.h"     /* For GLandscape */
#include "Map.h"           /* For MapCell */
#include "PhysicsObject.h" /* For class PhysicsObject */
#include "Reaction.h"      /* For Reaction::CreateReaction, Reaction::RemoveAllReactionsOfTypeInitiatedByObject */
#include "SpellWater.h"    /* For class SpellWater */
#include "Utils.h"         /* For GUtils */

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
	if (Flags & GAME_THING_WITH_POS_FLAG_FIXED)
	{
		if (Pos.InBounds())
		{
			for (Object* object = Pos.GetFirstObjectFixed(); object != NULL; object = object->GetMapChild(*Pos.ToMap()))
			{
				if (object == this)
				{
					return true;
				}
			}
		}
	}
	else
	{
		if (Pos.InBounds())
		{
			for (Object* object = Pos.GetFirstObjectMobile(); object != NULL;
			     object = object->GetMapChild(*Pos.ToMap()))
			{
				if (object == this)
				{
					return true;
				}
			}
		}
	}
	return false;
}

void Object::InsertMapObject()
{
	if (Pos.ToMap() != NULL)
	{
		if ((GGame::g_game->field_0x14 & 0x8000) == 0x8000)
		{
			static char text[256];
			sprintf(text, "JEREMY: very bad, object: %s inserted in map during clearmap!!!", GetDebugText());
		}
		InsertMapObjectToCell(Pos.ToMap());
		Flags |= GAME_THING_WITH_POS_FLAG_IN_MAP;
	}
}

void Object::RemoveMapObject()
{
	if (Pos.ToMap() != NULL)
	{
		RemoveMapObjectFromCell(Pos.ToMap());
		Flags &= ~GAME_THING_WITH_POS_FLAG_IN_MAP;
	}
}

bool32_t Object::IsObjectInMap(MapCell* cell)
{
	Object* object;
	if (Flags & GAME_THING_WITH_POS_FLAG_FIXED)
	{
		for (object = cell->FirstObjectFixed; object != NULL; object = object->GetMapChild(*cell))
		{
			if (object == this)
			{
				return true;
			}
		}
	}
	else
	{
		for (object = cell->FirstObjectMobile; object != NULL; object = object->GetMapChild(*cell))
		{
			if (object == this)
			{
				return true;
			}
		}
	}
	return false;
}

void Object::InsertMapObjectToCell(MapCell* cell)
{
	if (Flags & GAME_THING_WITH_POS_FLAG_FIXED)
	{
		Object* last = cell->FirstObjectFixed;
		if (last == NULL)
		{
			cell->SetFirstObjectFixed(this);
		}
		else
		{
			while (last->GetMapChild(*cell) != NULL)
			{
				last = last->GetMapChild(*cell);
			}
			last->SetMapChild(this, cell);
		}
	}
	else
	{
		Object* first = cell->FirstObjectMobile;
		if (first != NULL)
		{
			first->MapParent = this;
			SetMapChild(first, cell);
		}
		cell->SetFirstObjectMobile(this);
	}
	if (Game3dObject != NULL && (Game3dObject->Flags2 & 0x100))
	{
		RequestChangeTexture(this);
	}
	GameBlock::Insert(this, cell);
}

void Object::RemoveMapObjectFromCell(MapCell* cell)
{
	if (Flags & GAME_THING_WITH_POS_FLAG_FIXED)
	{
		Object* object = cell->FirstObjectFixed;
		if (object == this)
		{
			GetMapChild(*cell);
			cell->SetFirstObjectFixed(GetMapChild(*cell));
		}
		else
		{
			for (; object != NULL; object = object->GetMapChild(*cell))
			{
				if (object->GetMapChild(*cell) == this)
				{
					GetMapChild(*cell);
					object->SetMapChild(GetMapChild(*cell), cell);
					break;
				}
			}
		}
	}
	else
	{
		Object* parent =
			(MapParent.Get() == NULL || dynamic_cast<Object*>(MapParent.Get()) != NULL) ? MapParent.Get() : NULL;
		if (parent == NULL)
		{
			Object* child = GetMapChild(*cell);
			cell->SetFirstObjectMobile(child);
			if (child != NULL)
			{
				child->MapParent = NULL;
			}
		}
		else
		{
			parent =
				(MapParent.Get() == NULL || dynamic_cast<Object*>(MapParent.Get()) != NULL) ? MapParent.Get() : NULL;
			Object* child = GetMapChild(*cell);
			parent->SetMapChild(child, cell);
			if (child != NULL)
			{
				child->MapParent = parent;
			}
			MapParent = NULL;
		}
	}
	SetMapChild(NULL, cell);
	if (Game3dObject != NULL && (Game3dObject->Flags2 & 0x100))
	{
		RequestChangeTexture(this);
	}
	GameBlock::Remove(this, cell);
}

int Object::MoveMapObject(const MapCoords& coords)
{
	if (Pos.MapX() == coords.MapX() && Pos.MapZ() == coords.MapZ())
	{
		Pos = coords;
		return 6;
	}
	ActualMoveMapObject(coords);
	return 7;
}

bool32_t Object::IsTuggable()
{
	return true;
}

bool32_t Object::ValidToShakeFromHand()
{
	return true;
}

bool32_t Object::IsAttackable(Object* other)
{
	if (IsAvailable() != 1)
	{
		return false;
	}
	if (other != NULL && IsAllied(other) == 1)
	{
		return false;
	}
	return true;
}

bool32_t Object::IsAllied(Object* other)
{
	return GetPlayer()->IsAllied(other->GetPlayer()) == 1;
}

void Object::Create3DObjectAtPos()
{
	Game3dObject = Game3DObject::Create(Get3DType());
	Game3dObject->SetDynamicLighting(1);
	Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetMesh()), NULL, NULL);

	LHPoint position;
	position.x = Pos.WholeX() * (10.0f / (float)0x10000);
	position.z = Pos.WholeZ() * (10.0f / (float)0x10000);
	position.y = Pos.Altitude() + LH3DIsland::GetAltitudeAndSetColorSpecular(Pos, (uint32_t*)&Game3dObject->color,
	                                                                         (uint32_t*)&Game3dObject->specular);
	Game3dObject->matrix.Translation(position);
	Game3dObject->scale = 1.0f;
	Game3dObject->y_angle = 0.0f;
}

float Object::GetMeshRadius()
{
	return Game3dObject->GetMesh()->BoundingBox.DiagonalLength;
}

void Object::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	Create3DObject();
	InitialiseIsFixedForMapList();
	Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetDetailMesh(0)), LH3DMesh::GetPackedMesh(GetDetailMesh(1)),
	                      LH3DMesh::GetPackedMesh(GetDetailMesh(2)));
	SetXYZAnglesAndScale(GetXAngle(), GetYAngle(), GetZAngle(), GetScale());
	if ((Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE) == 0 &&
	    (GameThing::Flags & (GAME_THING_FLAG_UNAVAILABLE | 0x10)) == 0)
	{
		InsertMapObject();
	}
}

LHPoint Object::GetNearestEdgeOfObject(Object* object)
{
	MapCoords coords = GetNearestPosOfObject(object);
	LHPoint   point;
	point.y = coords.Altitude() + LH3DIsland::GetAltitude(coords);
	point.x = coords.WholeX() * (10.0f / (float)0x10000);
	point.z = coords.WholeZ() * (10.0f / (float)0x10000);
	return point;
}

MapCoords Object::GetNearestPosOfObject(Object* object)
{
	float angle = GUtils::Get3DAngleFromXZ(Pos, object->Pos);
	return Pos + GUtils::GetPosFromAngle(angle, Get2DRadius() + object->Get2DRadius());
}

MapCoords Object::GetNearestEdgeToPos(const MapCoords& pos)
{
	float angle = GUtils::Get3DAngleFromXZ(Pos, pos);
	return Pos + GUtils::GetPosFromAngle(angle, Get2DRadius());
}

MapCoords Object::GetNearestEdge(float angle, float extra_radius)
{
	return Pos + GUtils::GetPosFromAngle(angle, Get2DRadius() + extra_radius);
}

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

Object* Object::EndPhysics(PhysicsObject* physics_object, bool insert_back_into_map)
{
	if (physics_object != NULL && (Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) == 0)
	{
		return this;
	}
	Flags &= ~GAME_THING_WITH_POS_FLAG_IN_PHYSICS;
	coords = Pos;
	if (Game3dObject != NULL && physics_object != NULL)
	{
		if (physics_object->field_0x1d8 & 0x20)
		{
			Game3dObject->SetPaper(1);
		}
		if (physics_object->field_0x1d8 & 0x40)
		{
			Game3dObject->SetDisappear(1);
		}
	}
	if (insert_back_into_map && (GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		if (Pos.InBounds())
		{
			InsertMapObject();
		}
		else
		{
			ToBeDeleted(0);
		}
	}
	Reaction::RemoveAllReactionsOfTypeInitiatedByObject(this, REACTION_REACT_TO_FLYING_OBJECT);
	ConsiderCreatureMimickingWhenObjectLands();
	return this;
}

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

void Object::SetUpPhysOb(PhysOb* phys_ob)
{
	PhysicsData* constants = &EditorPhysics::PhysicsConstants[GetPhysicsConstantsType()];
	float        mass = GetWeight();
	if (mass < 0.01f)
	{
		mass = 0.01f;
	}
	// The PhysicsConstants displacement reads as a mismatch only because dtk bakes it into the
	// extracted object as a literal instead of a relocation.
	phys_ob->SetUpConstants(mass, constants,
	                        CanBecomeAPhysicsObject() && (Flags & GAME_THING_WITH_POS_FLAG_IMMOVABLE) == 0);
	phys_ob->BuildFromVertices();
}

void Object::GetBoundingSphere(LHPoint& center, float& radius)
{
	float halfHeight = GetHeight() * 0.5f;
	float radius2D = Get2DRadius();
	radius = (float)sqrt(radius2D * radius2D + halfHeight * halfHeight);
	const MapCoords& pos = Pos;
	center.y = pos.Altitude() + LH3DIsland::GetAltitude(pos);
	center.x = pos.WholeX() * (10.0f / (float)0x10000);
	center.z = pos.WholeZ() * (10.0f / (float)0x10000);
	center.y = center.y + halfHeight;
}

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
	if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		ToBeDeleted(0);
	}
	return 1;
}

void Object::FillInEffectDefenceMultiplier(EffectNumbers& param_1)
{
	for (int i = 0; i < EFFECT_TYPE_LAST; i++)
	{
		param_1.values[i] = (&info->DefenceMultiplierBurn)[i];
	}
}

float Object::GetDefenseMultiplier()
{
	return 0.0f;
}

float Object::ApplyEffect(EffectValues& param_1, int param_2)
{
	return 0.0f;
}

void Object::ReduceLifeDueToBurning(float param_1, GPlayer* param_2) {}

bool32_t Object::IsOnFire()
{
	if (fire_effect != NULL)
	{
		return fire_effect->IsOnFire() != false;
	}
	return false;
}

float Object::GetHeatCapacity()
{
	return info->HeatCapacity;
}

void* Object::GetActualObjectToEffect(GPlayer* player, bool param_2)
{
	return this;
}

float Object::GetDamageEffect(EffectValues& values)
{
	return 0.0f;
}

float Object::GetHealEffect(EffectValues& values)
{
	return 0.0f;
}

bool32_t Object::IsTouching(Object* target, float epsilon)
{
	if (GetDistanceFromObject(target) <= epsilon)
	{
		return true;
	}
	return false;
}

bool32_t Object::IsTouching(const MapCoords& coords)
{
	if (GetDistanceFromObject(coords) <= 0.0f)
	{
		return true;
	}
	return false;
}

bool32_t Object::IsTouching(const MapCoords& param_1, const MapCoords& param_2)
{
	return false;
}

float Object::GetDistanceFromObject(Object* other)
{
	return GUtils::GetDistanceInMetres(Pos, other->Pos) - (Get2DRadius() + other->Get2DRadius());
}

void Object::ApplySingleEffect(EFFECT_TYPE param_1, float param_2, GameThing* param_3, const MapCoords& param_4)
{
	EffectValues values(param_1, param_2, param_3, 1.0, NULL);
	ApplyEffect(values, 0);
}

void Object::ActualMoveMapObject(const MapCoords& coords)
{
	RemoveMapObject();
	SetPos(coords);
	InsertMapObject();
}

float Object::GetProjectileSpeed()
{
	return 0.0f;
}

float Object::GetRadius()
{
	return Get2DRadius();
}

float Object::GetHeight()
{
	if (Game3dObject != NULL)
	{
		LH3DMesh* mesh = Game3dObject->GetMesh();
		if (mesh != NULL)
		{
			// The bounding box is a half-extent, so the height is twice it.
			float sizeY = mesh->BoundingBox.size.y;
			return sizeY * scale * 2.0f;
		}
	}
	return 0.0f;
}

float Object::GetHeightForHandAboveInteractObject()
{
	return GetHeight();
}

float Object::GetTopPos()
{
	return Pos.Altitude() + GetHeight();
}

float Object::Get2DRadius()
{
	return 0.0f;
}

void Object::GetWorldMatrix(LHMatrix* out) {}

int Object::GetLandingPointCount()
{
	return Game3dObject->GetMesh()->ExtraDataCount - 2;
}

bool32_t Object::GetLandingPoint(uint8_t param_1, LHPoint* param_2)
{
	Game3dObject->GetExtraPos(param_1, param_2);
	return true;
}

float Object::GetWeight()
{
	float scale = GetScale();
	return (scale * scale * scale) * ((GObjectInfo*)info)->weight;
}

float Object::GetRoutePlanRadius(Creature* param_1)
{
	return 0.0f;
}

bool32_t Object::IsBuildingMaterial()
{
	return info->CanCreatureUseForBuilding;
}

Object* Object::GetMapChild(const MapCoords& coord)
{
	return GetMapChild(*coord.ToMap());
}

HELP_TEXT Object::GetQueryFirstEnumText()
{
	return info->HelpStartEnum;
}

HELP_TEXT Object::GetQueryLastEnumText()
{
	return info->HelpEndEnum;
}

uint32_t Object::GetFOVHelpMessageSet()
{
	return info->HelpMessage;
}

uint32_t Object::GetFOVHelpCondition()
{
	return info->HelpCondition;
}

uint32_t Object::GetHandHelpMessageSet()
{
	return info->HelpInHand;
}

uint32_t Object::GetHandHelpCondition()
{
	return info->HandCondition;
}

uint32_t Object::ThrowObjectFromHand(GInterfaceStatus* status, int param_2)
{
	return 0;
}

bool32_t Object::IsARootedObject()
{
	return false;
}

bool32_t Object::CreatureMustAvoid(Creature* creature)
{
	// Creature is only forward declared here, so the upcast is spelled out; same vtable slot.
	return creature == NULL || reinterpret_cast<Object*>(creature)->GetHeight() * 0.1f <= GetHeight() || IsOnFire();
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
	return HOLD_TYPE_ABOVE;
}

float Object::GetHoldRadius()
{
	if (GetHoldType() == HOLD_TYPE_ABOVE)
	{
		return GetHeight() * 0.75f;
	}
	return Get2DRadius();
}

float Object::GetHoldLoweringMultiplier()
{
	return 0.0f;
}

bool32_t Object::GetInspectObjectPos(Villager* param_1, MapCoords* pos)
{
	*pos = Pos;
	return true;
}

bool32_t Object::GetSpecialPos(uint32_t index, MapCoords* pos)
{
	*pos = Pos;
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
	return Flags & GAME_THING_WITH_POS_FLAG_IN_MAP;
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

void Object::GetPhysicsMovementDirection(LHPoint* pos)
{
	PhysicsObject* physicsObject = PhysicsObject::SearchForPhysicsObject(this);
	if (physicsObject != NULL)
	{
		*pos = physicsObject->Velocity;
	}
	else
	{
		pos->SetNull();
	}
}

uint32_t Object::GetResource(RESOURCE_TYPE type)
{
	if (type == GetResourceType())
	{
		return GetDefaultResource();
	}
	return 0;
}

MapCoords Object::GetWorkingPos(Object* param_1)
{
	return MapCoords();
}

float Object::GetWoodValue()
{
	float              objectScale = GetScale();
	const GObjectInfo* objectInfo = info;
	return GetLife() * objectInfo->WoodValue * objectScale * objectScale * objectScale;
}

float Object::GetAggressorValueFromDamage(float damage)
{
	return damage * info->AggressorValue;
}

float Object::CalculateForceAppliedBy(Living* param_1)
{
	return GetWeight() * 9.81f;
}

void Object::PushObject(Living* param_1) {}

void Object::PushObject(Living* param_1, MapCoords& param_2) {}

float Object::GetImpressiveValue(Living* param_1, Reaction* param_2)
{
	return 0.0f;
}

float Object::GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2)
{
	return GameThingWithPos::GetUpdateOfBoredomValue(param_1, param_2);
}

bool32_t Object::CanBeDestroyedBySpell(Spell* param_1)
{
	return false;
}

float Object::GetTribalPower(TRIBE_TYPE tribe)
{
	GPlayer* player = GetPlayer();
	if (player != NULL)
	{
		return player->TribalPower[tribe];
	}
	return 1.0f;
}

bool Object::IsFireMan()
{
	return false;
}

void Object::GetTemperature() {}

void Object::SetOnFire(float temperature)
{
	FireEffect::SetOnFire(this, temperature);
}

void Object::SetTemperature(float temperature, GameThing* source)
{
	FireEffect::SetTemperature(this, temperature, source);
}

void Object::GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4) {}

float Object::GetRainCoolingMultiplier()
{
	return 0.01f;
}

LHPoint* Object::GetDefaultFireCentrePos(LHPoint* pos)
{
	return NULL;
}

float Object::GetDefaultFireRadius()
{
	return Get2DRadius();
}

bool Object::ProcessInHand()
{
	return false;
}

uint32_t Object::ProcessInInteract(GInterfaceStatus* status)
{
	return 1;
}

void Object::SetInScript(int param_1)
{
	Flags = (Flags & ~GAME_THING_WITH_POS_FLAG_IN_SCRIPT) | ((param_1 & 1) << 9);
}

uint32_t Object::RemoveFromGame()
{
	return 0;
}

bool32_t Object::CanBeSuckedIntoVortex(LandscapeVortex* param_1)
{
	return CanBecomeAPhysicsObject();
}

float Object::GetDrawImportance()
{
	return info->DrawImportance;
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
	return info->immersion;
}

void Object::SetUpPhysObAsATree(PhysOb* param_1, float param_2, float param_3, float param_4, float param_5) {}

void Object::InitialiseIsFixedForMapList()
{
	Flags = (Flags & ~GAME_THING_WITH_POS_FLAG_FIXED) | (MapCell::DoesObjectTypeCountAsFixed(info->type) << 15);
}

void Object::GetInterfaceStatusWhoLastDroppedMe() {}

bool32_t Object::IsDrowning()
{
	if (Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
	{
		PhysicsObject* physicsObject = PhysicsObject::SearchForPhysicsObject(this);
		if (physicsObject != NULL && physicsObject->HeightAboveWater < 0.0f)
		{
			return true;
		}
	}
	return false;
}

uint32_t Object::DropSfx()
{
	return 0;
}

IMMERSION_EFFECT_TYPE Object::GetInHandImmersionTexture()
{
	return (IMMERSION_EFFECT_TYPE)-1;
}

bool32_t Object::CanBecomeArtifact()
{
	if (info->ArtifactMultiplier > 0.0f && !IsInScript())
	{
		return true;
	}
	return false;
}

void Object::SetYJustAngle(float angle)
{
	y_angle = angle;
}

bool32_t Object::CreateSmokyStuff(long param_1, float param_2, LH3DColor param_3)
{
	return false;
}

float Object::ApplyWaterSpell(SpellWater* spell)
{
	if (IsOnFire() && spell->PuttingOutFireReaction == NULL)
	{
		spell->PuttingOutFireReaction =
			Reaction::CreateReaction(spell, REACTION_REACT_TO_MAGIC_WATER_PUTTING_OUT_FIRE, spell->GetPlayer(), 1);
	}
	return 0.0f;
}

bool Object::BlocksTownClearArea()
{
	return false;
}

bool32_t Object::DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2)
{
	return false;
}

void Object::DoDeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2) {}

float Object::GetRadiusMultiplierForApplyingPotToPos()
{
	return 1.2f;
}

bool32_t Object::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus& status)
{
	return false;
}

float Object::GetSacrificeValue()
{
	const GObjectInfo* objectInfo = info;
	float              halfLife = GetLife() * 0.5f;
	return (halfLife + 0.5f) * objectInfo->SacrificeValue;
}

void Object::DiscipleInHandNear(Villager& villager, GInterfaceStatus& status) {}

void Object::DestroyedByBeam()
{
	ToBeDeleted(0);
}
