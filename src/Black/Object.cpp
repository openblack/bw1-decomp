#include "MapCellConstants.h"          /* For MetresPerMapCell */
#include "GameTimeConstants.h"         /* For SecondsPerYear */
#include "CreatureAttitudeConstants.h" /* For AttitudeFeedbackDecay */
#include "Object.h"
#include "EditorPhysics.h"
#include "ObjectMovementConstants.h"

#include <math.h>  /* For sqrt */
#include <stdio.h> /* For sprintf */

#include <Lionhead/LH3DLib/development/LH3DAnim.h>
#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>
#include <Lionhead/LH3DLib/development/PhysOb.h>
#include <Lionhead/LH3DLib/development/SmokyStuff.h>
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <Lionhead/LHLib/ver5.0/RPHolder.h>
#include "re_common.h"
#include "chlasm/AllMeshes.h"
#include <chlasm/LHSample.h>

#include "ColourConstants.h"
#include "LandscapeConstants.h"

#include "Alignment.h"
#include "Artifact.h"
#include "Audio.h"
#include "Belief.h"
#include "CitadelPart.h"
#include "Creature.h"
#include "CreatureMorph.h"
#include "EffectValues.h"
#include "FireEffect.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "GameThingWithPos.h"
#include "Global.h"
#include "HelpProfile.h"
#include "HelpSystem.h"
#include "Influence.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include "JCGameBlock.h"
#include "LandBalance.h"
#include "LandFeature.h"
#include "Landscape.h"
#include "Map.h"
#include "MapCoordsMeters.h"
#include "PhysicsObject.h"
#include "PhysicsSaveInfo.h"
#include "Player.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "SoundGuidance.h"
#include "SpellWater.h"
#include "Town.h"
#include "Utils.h"
#include "ValueSpinner.h"
#include "VirtualInfluence.h"

#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define OBJECT_SOURCE_FILE "C:\\dev\\black\\Object.cpp"
#elif defined(VERSION_BW1W110)
#define OBJECT_SOURCE_FILE "C:\\dev\\Black\\Object.cpp"
#elif defined(VERSION_BW1W130)
#define OBJECT_SOURCE_FILE "D:\\Work\\Games\\dd\\Black\\Object.cpp"
#else
#define OBJECT_SOURCE_FILE "C:\\dev\\MP\\Black\\Object.cpp"
#endif

#ifdef VERSION_BW1WCI
#define OBJECT_LINE(line) ((line) + ((line) < 2491 ? 15 : 16))
#else
#define OBJECT_LINE(line) (line)
#endif

static const float RouteMinRadius = 0.05f;

static uint32_t UnusedStatic0 = 0;
static uint32_t UnusedStatic1 = 0;

GObjectInfo GObjectInfo::Definitions[OBJECT_TYPE_LAST];

GObjectInfo GObjectInfo::DefaultAIPlayerObjectInfo;

Object::Object() : info(NULL), coords()
{
	MapParent = NULL;
	fire_effect = NULL;
	Flags = 0;
	Game3dObject = NULL;
}

LH3DObject::ObjectType Object::Get3DType(MESH_LIST index)
{
	LH3DMeshPack& meshPack = *LH3DMesh::g_pack;

	if (index < MSH_DUMMY || index >= meshPack.MeshCount)
	{
		index = MSH_DUMMY;
	}
	return (LH3DObject::ObjectType)((meshPack.Meshes[index]->flags >> 7) & 2);
}

LH3DObject::ObjectType Object::Get3DType()
{
	MESH_LIST     mesh = GetMesh();
	LH3DMeshPack& meshPack = *LH3DMesh::g_pack;

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
	Game3dObject->SetDynamicLighting(true);
	Game3dObject->SetCastDynamicShadow(true);
	Game3dObject->importance = GetImportance();
}

Object::~Object()
{
	if (Game3dObject != NULL)
	{
		Game3dObject->Release();
		Game3dObject = NULL;
	}
}

void Object::ToBeDeleted(bool32_t delete_now)
{
	GameThingWithPos::ToBeDeleted(delete_now);
	if (fire_effect.Get() != NULL)
	{
		fire_effect->ToBeDeleted(false);
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
	if (Flags & GAME_THING_WITH_POS_FLAG_FIXED_FOR_MAP_LIST)
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
		if ((GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP) == GAME_FLAG_CLEARING_MAP)
		{
			static char message[128];
			sprintf(message, "JEREMY: very bad, object: %s inserted in map during clearmap!!!", GetDebugText());
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
	if (Flags & GAME_THING_WITH_POS_FLAG_FIXED_FOR_MAP_LIST)
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
	if (Flags & GAME_THING_WITH_POS_FLAG_FIXED_FOR_MAP_LIST)
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
	if (Flags & GAME_THING_WITH_POS_FLAG_FIXED_FOR_MAP_LIST)
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
		return OBJECT_MOVE_RESULT_SAME_CELL;
	}
	ActualMoveMapObject(coords);
	return OBJECT_MOVE_RESULT_CHANGED_CELL;
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
	if (IsAvailable() != true)
	{
		return false;
	}
	if (other != NULL && IsAllied(other) == true)
	{
		return false;
	}
	return true;
}

bool32_t Object::IsAllied(Object* other)
{
	return GetPlayer()->IsAllied(other->GetPlayer()) == true;
}

void Object::Create3DObjectAtPos()
{
	Game3dObject = Game3DObject::Create(Get3DType());
	Game3dObject->SetDynamicLighting(true);
	Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetMesh()), NULL, NULL);
	const MapCoords& pos = Pos;
	LH3DObject*      object3d = Game3dObject;
	LHPoint          position;
	GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(pos, position);
	position.y += LH3DIsland::GetAltitudeAndSetColorSpecular(pos, (unsigned long*)&object3d->color,
	                                                         (unsigned long*)&object3d->specular);
	object3d->LH3DObject::SetPosition(position, 0.0f, 1.0f);
}

float Object::GetMeshRadius() const
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
	    (GameThing::Flags & (GAME_THING_FLAG_UNAVAILABLE | GAME_THING_FLAG_PSYS_FLYING)) == 0)
	{
		InsertMapObject();
	}
}

LHPoint Object::GetNearestEdgeOfObject(Object* object)
{
	MapCoords coords = GetNearestPosOfObject(object);
	LHPoint   point;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
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

float GObjectInfo::GetMesh2DRadius(float scale) const
{
	LH3DMesh* mesh = LH3DMesh::GetPackedMesh(GetMesh());
	return max(mesh->BoundingBox.size.x, mesh->BoundingBox.size.z) * scale;
}

void Object::RemoveDraggingCreatureByLeash()
{
	if ((Flags & GAME_THING_WITH_POS_FLAG_DRAGGED_BY_LEASH) == 0)
	{
		return;
	}
	Flags &= ~GAME_THING_WITH_POS_FLAG_DRAGGED_BY_LEASH;
	for (GPlayer* player = GGame::g_game->GetNextPlayer(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayer(player))
	{
		for (GInterfaceStatus* status = GetPlayer()->GetNextInterfaceStatus(NULL); status != NULL;
		     status = GetPlayer()->GetNextInterfaceStatus(status))
		{
			if (status->LeashStatus->ObjectAttachedTo == this)
			{
				status->LeashStatus->ObjectAttachedTo = NULL;
				break;
			}
		}
	}
}

PhysicsObject* Object::InitialisePhysicsFromHand(LHPoint& velocity, LHPoint& angular_velocity, GInterfaceStatus* status,
                                                 Object* thrower, bool32_t dont_replant)
{
	if ((Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) != 0)
	{
		return 0;
	}
	RemoveDraggingCreatureByLeash();
	Flags |= GAME_THING_WITH_POS_FLAG_IN_PHYSICS;
	Flags &= ~GAME_THING_WITH_POS_FLAG_LOCKED_SELECT;
	bool fromThrower = thrower != NULL;
	if (!fromThrower && status != NULL)
	{
		status->LastDroppedObject = this;
	}
	if (IsObjectInMap())
	{
		RemoveMapObject();
	}
	if (PhysicsObject::PredictionActive && PhysicsObject::PredictionObject == this)
	{
		PhysicsObject::PredictionActive = false;
		PhysicsObject::PredictionPhysOb.DeInitialise();
	}

	LHPoint        zero(0.0f, 0.0f, 0.0f);
	PhysicsObject* physicsObject = PhysicsObject::AddObject(this, velocity, zero, thrower, status);
	if (physicsObject == NULL)
	{
		return 0;
	}
	if (Game3dObject != NULL)
	{
		if (Game3dObject->IsPaper())
		{
			physicsObject->Flags |= PHYSICS_OBJECT_FLAG_WAS_PAPER;
			Game3dObject->SetPaper(false);
		}
		if (Game3dObject->IsDisappear())
		{
			physicsObject->Flags |= PHYSICS_OBJECT_FLAG_WAS_DISAPPEARING;
			Game3dObject->SetDisappear(false);
		}
	}
	physicsObject->Physics.AngularVelocity = angular_velocity;

	float oldAltitude;
	bool  thrown;
	if (fromThrower)
	{
		thrown = velocity.x * velocity.x + velocity.z * velocity.z > 1.0f;
		if (thrown)
		{
			oldAltitude = physicsObject->Physics.Matrix.GetPos().y;
		}
		else
		{
			physicsObject->Physics.AdjustToGroundLevel(thrown, !IsAnyKindOfTree());
			oldAltitude = physicsObject->Physics.Matrix.GetPos().y;
			physicsObject->Physics.ZeroForces();
			PhysicsObject::RaiseUntilNotIntersecting(&physicsObject);
		}
	}
	else
	{
		thrown = velocity.x * velocity.x + velocity.z * velocity.z > OBJECT_THROWN_SPEED_SQUARED;
		physicsObject->Physics.AdjustToGroundLevel(thrown, !IsAnyKindOfTree());
		oldAltitude = physicsObject->Physics.Matrix.GetPos().y;
		physicsObject->Physics.ZeroForces();
		PhysicsObject::RaiseUntilNotIntersecting(&physicsObject);
		physicsObject->Flags |= PHYSICS_OBJECT_FLAG_FROM_HAND;
	}

	MapCoords coords(physicsObject->Physics.Matrix.GetPos());
	bool      landed = false;
	if (!thrown && (oldAltitude == physicsObject->Physics.Matrix.GetPos().y ||
	                (IsVillager(NULL) && status != NULL && status->GetPlayer()->type == PLAYER_TYPE_COMPUTER)))
	{
		if (coords.IsDryLand())
		{
			landed = true;
		}
		else
		{
			LandCell* cell = LH3DIsland::GetCell(FloatToInt(physicsObject->Physics.Matrix.GetPos().x / 10.0f),
			                                     FloatToInt(physicsObject->Physics.Matrix.GetPos().z / 10.0f));
			if (cell != NULL && cell->altitude > 1)
			{
				landed = true;
			}
		}
	}
	if (landed && (IsLiving() || IsFence()))
	{
		LHPoint normal;
		LH3DIsland::GetNormal(physicsObject->Physics.Matrix.GetPos(), &normal);
		if (normal.y < OBJECT_MIN_LANDING_NORMAL_Y)
		{
			landed = false;
		}
	}

	if (landed)
	{
		if (IsVillager(NULL))
		{
			GInterfaceStatus* myStatus = GGame::g_game->MyInterfaceStatus();
			Villager*         villager = (Villager*)this;
			if (myStatus == status && villager->DiscipleOnPickUp != villager->DiscipleType)
			{
				GGuidance::MakeDiscipleSFX(*myStatus, (VILLAGER_DISCIPLE)villager->DiscipleType);
			}
		}
		physicsObject->Flags |= PHYSICS_OBJECT_FLAG_LANDED;
		ConsiderCreatureMimickingWhenObjectLands();
		if (IsLiving() || IsFence() || (IsTree() && GetFireEffect() == NULL && coords.IsLand()))
		{
			bool remove = true;
			if (IsTree() && !fromThrower)
			{
				float xAngle = 0.0f;
				float yAngle = 0.0f;
				float zAngle = 0.0f;
				Game3dObject->matrix.GetYXZ(&yAngle, &xAngle, &zAngle);
				if (dont_replant || (float)fabs(xAngle) > OBJECT_MAX_REPLANT_TILT ||
				    (float)fabs(zAngle) > OBJECT_MAX_REPLANT_TILT)
				{
					remove = false;
				}
			}
			if (remove)
			{
				PhysicsObject::RemoveObject(this, true, true);
			}
			else
			{
				physicsObject->Flags &= ~PHYSICS_OBJECT_FLAG_LANDED;
			}
		}
	}
	else
	{
		if (IsVillager(NULL))
		{
			((Villager*)this)->CreateDroppedResource(&velocity, NULL, &angular_velocity);
		}
		GPlayer* player = NULL;
		if (status != NULL)
		{
			player = status->GetPlayer();
		}
		Reaction::CreateReaction(this, REACTION_REACT_TO_FLYING_OBJECT, player, false);
		Creature::CheckAllCreaturesForCatching(this, physicsObject);
	}

	if (status != NULL && IsToy(NULL) && (thrower == NULL || !thrower->IsCreature()))
	{
		status->GetPlayer()->ConsiderMakingCreatureMimicPlayer(status, DETECTED_PLAYER_ACTION_PLAY_WITH_TOY, this,
		                                                       MAGIC_TYPE_NONE);
	}
	return physicsObject;
}

bool32_t Object::HasSunk()
{
	return false;
}

PhysicsInitialisation Object::InitialisePhysics(const LHPoint& velocity, const LHPoint& angular_velocity,
                                                Object* thrower, bool create_physics, GInterfaceStatus* status)
{
	if ((Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) != 0)
	{
		return PhysicsInitialisation(NULL, false);
	}
	if ((Flags & GAME_THING_WITH_POS_FLAG_IMMOVABLE) != 0)
	{
		return PhysicsInitialisation(NULL, false);
	}
	RemoveDraggingCreatureByLeash();
	Flags |= GAME_THING_WITH_POS_FLAG_IN_PHYSICS;
	Flags &= ~GAME_THING_WITH_POS_FLAG_LOCKED_SELECT;
	if (IsObjectInMap())
	{
		RemoveMapObject();
	}

	PhysicsObject* physicsObject = NULL;
	if (create_physics)
	{
		GetWorldMatrix(&Game3dObject->matrix);
		physicsObject = PhysicsObject::AddObject(this, velocity, angular_velocity, thrower, status);
		if (physicsObject == NULL)
		{
			return PhysicsInitialisation(NULL, false);
		}
		if (Game3dObject != NULL)
		{
			if (Game3dObject->IsPaper())
			{
				physicsObject->Flags |= PHYSICS_OBJECT_FLAG_WAS_PAPER;
				Game3dObject->SetPaper(false);
			}
			if (Game3dObject->IsDisappear() && (physicsObject->Flags & PHYSICS_OBJECT_FLAG_FROM_HAND) != 0)
			{
				physicsObject->Flags |= PHYSICS_OBJECT_FLAG_WAS_DISAPPEARING;
				Game3dObject->SetDisappear(false);
			}
			Creature::CheckAllCreaturesForCatching(this, physicsObject);
		}
	}
	if (fire_effect.Get() != NULL && (GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP) == 0)
	{
		fire_effect->StartedMoving(0);
	}
	return PhysicsInitialisation(physicsObject, true);
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
		if (physics_object->Flags & PHYSICS_OBJECT_FLAG_WAS_PAPER)
		{
			Game3dObject->SetPaper(true);
		}
		if (physics_object->Flags & PHYSICS_OBJECT_FLAG_WAS_DISAPPEARING)
		{
			Game3dObject->SetDisappear(true);
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
			ToBeDeleted(false);
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
	if (fire_effect.Get() != NULL)
	{
		fire_effect->SetOutMagicHand();
	}
	return true;
}

SOUND_COLLISION_TYPE Object::GetCollideSoundType()
{
	return info->CollideSound;
}

PHYSICS_CONSTANTS_TYPE Object::GetPhysicsConstantsType()
{
	return CanBecomeAPhysicsObject() ? PHYSICS_CONSTANTS_TYPE_DEFAULT_MOVABLE
	                                 : PHYSICS_CONSTANTS_TYPE_DEFAULT_UNMOVABLE;
}

void Object::SetUpPhysOb(PhysOb* phys_ob)
{
	PhysicsData* constants = &EditorPhysics::PhysicsConstants[GetPhysicsConstantsType()];
	float        mass = GetWeight();
	if (mass < OBJECT_MIN_PHYSICS_MASS)
	{
		mass = OBJECT_MIN_PHYSICS_MASS;
	}
	phys_ob->SetUpConstants(mass, constants,
	                        CanBecomeAPhysicsObject() && (Flags & GAME_THING_WITH_POS_FLAG_IMMOVABLE) == 0);
	phys_ob->BuildFromVertices();
#ifdef VERSION_BW1WCI
	if (info != NULL)
	{
		phys_ob->SetRestSpeedMultiplier(info->GetRestSpeedMultiplier());
	}
#endif
}

void Object::GetBoundingSphere(LHPoint& center, float& radius)
{
	float halfHeight = GetHeight() * 0.5f;
	float radius2D = Get2DRadius();
	radius = (float)sqrt(radius2D * radius2D + halfHeight * halfHeight);
	const MapCoords& pos = Pos;
	GLandscape::ConvertMapCoordToLandscapePoint(pos, center);
	center.y = center.y + halfHeight;
}

bool Object::InteractsWithPhysicsObjects()
{
	return Game3dObject != NULL;
}

void Object::ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage) {}

#ifdef VERSION_BW1WCI
void Object::CreatureIsleVirtual0x7f0() {}
#endif

bool Object::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* object)
{
	return InteractsWithPhysicsObjects();
}

bool32_t Object::CanBecomeAPhysicsObject()
{
	return false;
}

void Object::CleanupWhenDeleted(bool32_t delete_now)
{
	if (IsObjectInMap())
	{
		RemoveMapObject();
	}
}

float Object::ReduceLife(float value, GPlayer* player)
{
	float life = GetLife();
	if (life < value)
	{
		SetLife(0.0f);
	}
	else
	{
		SetLife(life - value);
	}
	return GetLife();
}

float Object::IncreaseLife(float value)
{
	if (GetLife() + value > 1.0f)
	{
		value = 1.0f - GetLife();
	}
	if (value != 0.0f)
	{
		SetLife(GetLife() + value);
	}
	return GetLife();
}

uint32_t Object::DestroyedByEffect(GPlayer* player, float damage)
{
	if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		ToBeDeleted(false);
	}
	return 1;
}

void Object::FillInEffectDefenceMultiplier(EffectNumbers& numbers)
{
	for (int i = 0; i < EFFECT_TYPE_LAST; i++)
	{
		numbers.values[i] = info->DefenceMultiplier[i];
	}
}

EffectNumbers Object::GetDefenseMultiplier()
{
	EffectNumbers multiplier;
	for (int i = 0; i < EFFECT_TYPE_LAST; i++)
	{
		multiplier.values[i] = info->DefenceMultiplier[i];
	}
	return multiplier;
}

float Object::ApplyEffect(EffectValues& values, int param_2)
{
	float life = GetLife();
	float damage = GetDamageEffect(values);
	float heal = GetHealEffect(values);
	float result = 0.0f;
	if (heal > 0.0f)
	{
		result += (1.0f - life) / heal;
		IncreaseLife(heal);
	}
	if (damage > 0.0f)
	{
		result += life / damage;
		ReduceLife(damage, values.GetPlayer());
	}
	if (GetLife() == 0.0f && life != 0.0f)
	{
		if (values.AppliedBy != NULL)
		{
			Creature* creature = values.AppliedBy->CastCreature();
			if (creature != NULL)
			{
				creature->ObjectsDestroyed += 1.0f;
			}
		}
		DestroyedByEffect(values.GetPlayer(), life);
	}
	GetLife();
	if (values.numbers.values[EFFECT_TYPE_CRUSH] > OBJECT_MIN_CRUSH_DAMAGE && CanBeCrushed() &&
	    Reaction::GetReactionInitiatedByObject(this) == NULL)
	{
		GameThing*        appliedBy = values.AppliedBy;
		GameThingWithPos* crusher = dynamic_cast<GameThingWithPos*>(appliedBy);
		Reaction::CreateReaction(crusher != NULL ? crusher : this, REACTION_REACT_TO_OBJECT_CRUSHED, GetPlayer(), true);
	}
	float temperature = values.numbers.values[EFFECT_TYPE_BURN];
	float totalDamage = damage + FireEffect::ConvertTemperatureToDamage(this, temperature);
	if (values.numbers.IsDestructive())
	{
		Town* town = GetTown();
		if (town != NULL && values.AppliedBy != NULL && totalDamage != 0.0f &&
		    dynamic_cast<GameThingWithPos*>(values.AppliedBy) != NULL)
		{
			town->UpdateAggressor(values, GetAggressorValueFromDamage(totalDamage));
		}
	}
	GAlignment* alignment = NULL;
	if (values.AppliedBy != NULL && values.AppliedBy->IsCreature())
	{
		alignment = values.AppliedBy->CastCreature()->alignment;
	}
	else if (values.GetPlayer() != NULL)
	{
		alignment = values.GetPlayer()->alignment;
		if (GetPlayer() != NULL)
		{
			GPlayer* attacker = values.GetPlayer();
			GetPlayer()->DamageFromPlayer[attacker->player_number] += totalDamage;
		}
	}
	if (alignment != NULL)
	{
		alignment->Update(this, values, life);
	}
	return result;
}

float Object::ReduceLifeDueToBurning(float damage, GPlayer* player)
{
	if ((GameThing::Flags & GAME_THING_FLAG_NO_BURN_DAMAGE) == 0)
	{
		ReduceLife(damage, player);
		Town* town = GetTown();
		if (town != NULL && damage != 0.0f)
		{
			town->UpdateAggressor(EffectValues(EFFECT_TYPE_BURN, GetTemperature(), NULL, 1.0f, player),
			                      GetAggressorValueFromDamage(damage));
		}
	}
	return GetLife();
}

bool32_t Object::IsOnFire()
{
	if (fire_effect.Get() != NULL)
	{
		return fire_effect->IsOnFire() != false;
	}
	return false;
}

float Object::GetHeatCapacity()
{
	return info->HeatCapacity;
}

void* Object::GetActualObjectToEffect(GPlayer* player, bool show_effect)
{
	return this;
}

#ifdef VERSION_BW1WCI
float Object::GetDamageEffect(EffectValues& values)
{
	FireEffect::ApplyEffectToFireEffectIfNecessary(this, values);
	if ((Flags & GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) == 0)
	{
		float         damage = 0.0f;
		EffectNumbers defence;
		FillInEffectDefenceMultiplier(defence);
		for (int i = EFFECT_TYPE_CRUSH; i <= EFFECT_TYPE_HIT; i++)
		{
			float effect = values.numbers.values[i] * defence.values[i];
			if (effect > 0.0f)
			{
				damage += effect;
			}
		}
		return damage;
	}
	return 0.0f;
}
#else
float Object::GetDamageEffect(EffectValues& values)
{
	float         damage = 0.0f;
	EffectNumbers defence;
	FireEffect::ApplyEffectToFireEffectIfNecessary(this, values);
	FillInEffectDefenceMultiplier(defence);
	for (int i = EFFECT_TYPE_CRUSH; i <= EFFECT_TYPE_HIT; i++)
	{
		float effect = values.numbers.values[i] * defence.values[i];
		if (effect > 0.0f)
		{
			damage += effect;
		}
	}
	return damage;
}
#endif

float Object::GetHealEffect(EffectValues& values)
{
	float         heal = 0.0f;
	EffectNumbers defence;
	FillInEffectDefenceMultiplier(defence);
	float effect = (double)values.numbers.values[EFFECT_TYPE_HEAL] * defence.values[EFFECT_TYPE_HEAL];
	if (effect > 0.0f)
	{
		heal = effect;
	}
	return heal;
}

void Object::DrawFireEffect()
{
	fire_effect->Draw();
}

void Object::SendDrawCollision()
{
	GGame::g_game->MyInterface()->SendObjectDrawCollision(this, 0.0f, NULL);
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

bool32_t Object::IsTouching(const MapCoords& corner1, const MapCoords& corner2)
{
	float x1 = corner1.MetersX();
	float x2 = corner2.MetersX();
	float minX = min(x1, x2);
	float z1 = corner1.MetersZ();
	float z2 = corner2.MetersZ();
	float minZ = min(z1, z2);
	float maxX = max(x1, x2);
	float maxZ = max(z1, z2);

	float radius = Get2DRadius();
	float myX = Pos.MetersX();
	if (myX + radius < minX || myX - radius > maxX)
	{
		return false;
	}
	float myZ = Pos.MetersZ();
	if (myZ + radius < minZ || myZ - radius > maxZ)
	{
		return false;
	}
	return true;
}

float Object::GetDistanceFromObject(Object* other)
{
	return GUtils::GetDistanceInMetres(Pos, other->Pos) - (Get2DRadius() + other->Get2DRadius());
}

void Object::ApplySingleEffect(EFFECT_TYPE type, float amount, GameThing* applied_by, const MapCoords& coords)
{
	EffectValues values(type, amount, applied_by, 1.0, NULL);
	ApplyEffect(values, 0);
}

void Object::ActualMoveMapObject(const MapCoords& coords)
{
	RemoveMapObject();
	SetPos(coords);
	InsertMapObject();
}

bool32_t Object::IsCitadelPartOfPlayer(GPlayer* player)
{
	CitadelPart* part = dynamic_cast<CitadelPart*>(this);
	if (part != NULL && part->GetPlayer() == player)
	{
		return true;
	}
	return false;
}

float Object::GetProjectileSpeed()
{
	return 0.0f;
}

bool32_t Object::IsCitadelPart() const
{
	return info->type == OBJECT_TYPE_CITADEL;
}

bool32_t Object::IsPartOfTown() const
{
	return info->type == OBJECT_TYPE_ABODE;
}

bool32_t Object::IsPartOfForest() const
{
	return info->type == OBJECT_TYPE_FOREST_TREE;
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
	if (Game3dObject != NULL)
	{
		float         objectScale = GetScale();
		Game3DObject* object3d = Game3dObject;
		return objectScale *
		       max(object3d->GetMesh()->GetBoundingBox().size.x, object3d->GetMesh()->GetBoundingBox().size.z);
	}
	return 0.0f;
}

void Object::GetWorldMatrix(LHMatrix* out)
{
	LHPoint position;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, position);
	float scale = GetScale();
	float yAngle = GetYAngle();
	if (yAngle != 0.0f)
	{
		if (scale != 1.0f)
		{
			out->SetScale(scale);
			out->PostTranslation(position);
			out->RotateY(yAngle);
		}
		else
		{
			out->SetIdentity();
			out->m[9] = position.x;
			out->m[10] = position.y;
			out->m[11] = position.z;
			out->RotateY(yAngle);
		}
	}
	else
	{
		if (scale != 1.0f)
		{
			out->SetScale(scale);
			out->PostTranslation(position);
		}
		else
		{
			out->Translation(position);
		}
	}
}

int Object::GetLandingPointCount()
{
	return Game3dObject->GetMesh()->ExtraDataCount - 2;
}

bool32_t Object::GetLandingPoint(uint8_t index, LHPoint* point)
{
	Game3dObject->GetExtraPos(index, point);
	return true;
}

float Object::GetWeight()
{
	float scale = GetScale();
	return (scale * scale * scale) * ((GObjectInfo*)info)->weight;
}

float Object::GetWeightForce(Living* living)
{
	return GetWeight() * OBJECT_GRAVITY;
}

float Object::GetRoutePlanRadius(Creature* creature)
{
	if (creature == NULL)
	{
		return Get2DRadius();
	}
	float height = GetHeight();
	float limit = creature->GetHeight() * OBJECT_ROUTE_PLAN_TALL_HEIGHT_RATIO;
	float factor;
	if (height > limit)
	{
		factor = OBJECT_ROUTE_PLAN_TALL_FACTOR;
	}
	else
	{
		factor = OBJECT_ROUTE_PLAN_SHORT_FACTOR - (height / limit) * OBJECT_ROUTE_PLAN_FACTOR_RANGE;
	}
	return Get2DRadius() - creature->GetCreature3D()->GetNavRadius() * factor;
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

uint32_t Object::ThrowObjectFromHand(GInterfaceStatus* status, bool32_t dont_replant)
{
	if (status->GetPlayer() == GGame::g_game->MyPlayer())
	{
		GGame::g_game->help_profile->Trigger(HELP_EVENT_TYPE_4);
	}
	LHPoint angularVelocity = status->ThrowAngularVelocity;
	LHPoint velocity = status->ThrowVelocity;
	Flags &= ~GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE;
	Game3dObject->matrix.SetYXZMatrixOnly(status->HandAngles.y, status->HandAngles.x, status->HandAngles.z);
	Game3dObject->matrix.SetTranslateOnly(status->HandPos);
	float scale = GetScale();
	Game3dObject->matrix.PreScale(scale, scale, scale);
	PhysicsObject* physicsObject = InitialisePhysicsFromHand(velocity, angularVelocity, status, NULL, dont_replant);
	if (status->GetPlayer()->WindResistance && physicsObject != NULL)
	{
		physicsObject->Physics.WindResist = 0.0f;
	}
	return 0x16;
}

bool32_t Object::IsARootedObject()
{
	return false;
}

bool32_t Object::CreatureMustAvoid(Creature* creature)
{
	if (creature == NULL)
	{
		return true;
	}
	float height = GetHeight();
	return creature->GetHeight() * OBJECT_CREATURE_AVOID_HEIGHT_RATIO <= height || IsOnFire();
}

void Object::AddToRoutePlan(RPHolder* holder, Creature* creature, bool32_t update,
                            void(__cdecl* add_function)(int, Point2D, float, int))
{
	bool onFire = false;
	if (GetFireEffect() != NULL && creature != NULL)
	{
		onFire = true;
	}
	float         fireMargin = onFire ? OBJECT_ROUTE_PLAN_FIRE_MARGIN : 0.0f;
	Game3DObject* object3d = Game3dObject;
	float         margin = holder->ObjectMargin;
	if (creature != NULL)
	{
		float height = GetHeight();
		float creatureHeight = creature->GetHeight();
		float factor;
		if (height > creatureHeight * OBJECT_ROUTE_PLAN_TALL_HEIGHT_RATIO)
		{
			factor = OBJECT_ROUTE_PLAN_TALL_FACTOR;
		}
		else
		{
			factor = OBJECT_ROUTE_PLAN_SHORT_FACTOR -
			         OBJECT_ROUTE_PLAN_FACTOR_RANGE * (height / (creatureHeight * OBJECT_ROUTE_PLAN_TALL_HEIGHT_RATIO));
		}
		margin -= factor * holder->ObjectMargin;
	}
	if (object3d != NULL)
	{
		LHMatrix matrix;
		GetWorldMatrix(&matrix);
		LHPoint worldCentre = matrix * object3d->GetMesh()->GetBoundingBox().centre;
		Point2D pos(worldCentre.x, worldCentre.z);
		LHPoint unused = matrix * (matrix * (matrix * (matrix * worldCentre)));
		LHPoint size = object3d->GetMesh()->BoundingBox.size * GetScale();
		size.x = size.x + margin + fireMargin;
		size.z = size.z + margin + fireMargin;
		int      count = 1;
		bool32_t alongX = true;
		float    spacing;
		float    width;
		if (size.x > size.z * OBJECT_ROUTE_PLAN_ELONGATION)
		{
			count = (int)(size.x / size.z) + 1;
			if (count > OBJECT_ROUTE_PLAN_MAX_SEGMENTS)
			{
				count = OBJECT_ROUTE_PLAN_MAX_SEGMENTS;
				size.z = size.x / (float)OBJECT_ROUTE_PLAN_MAX_SEGMENTS;
			}
			alongX = true;
			spacing = size.x / count;
			width = size.z;
		}
		else if (size.x * OBJECT_ROUTE_PLAN_ELONGATION < size.z)
		{
			count = (int)(size.z / size.x) + 1;
			if (count > OBJECT_ROUTE_PLAN_MAX_SEGMENTS)
			{
				count = OBJECT_ROUTE_PLAN_MAX_SEGMENTS;
				size.x = size.z / (float)OBJECT_ROUTE_PLAN_MAX_SEGMENTS;
			}
			alongX = false;
			spacing = size.z / count;
			width = size.x;
		}
		if (count == 1)
		{
			float radius = Get2DRadius() + margin + fireMargin;
			if (radius < RouteMinRadius)
			{
				radius = RouteMinRadius;
			}
			if (add_function != NULL)
			{
				add_function((int)this, pos, radius, update);
			}
			else
			{
				holder->AddObject((int)this, pos, radius, update);
			}
		}
		else
		{
			float   angleOffset = alongX ? 1.5707964f : 0.0f;
			float   angle = GetYAngle() + angleOffset;
			Point2D step((float)(sin(angle) * spacing), (float)-(cos(angle) * spacing));
			float   stepsBack = (float)(count - 1);
			pos -= step * stepsBack;
			step *= 2.0f;
			float radius = width * 1.15;
			if (radius < RouteMinRadius)
			{
				radius = RouteMinRadius;
			}
			for (int i = 0; i < count; i++)
			{
				if (add_function != NULL)
				{
					add_function((int)this, pos, radius, update);
				}
				else
				{
					holder->AddObject((int)this, pos, radius, update);
				}
				pos += step;
			}
		}
	}
}

void Object::SimpleAddToRoutePlan(RPHolder* holder, Creature* creature, bool32_t update,
                                  void(__cdecl* add_function)(int, Point2D, float, int))
{
	bool onFire = false;
	if (GetFireEffect() != NULL && creature != NULL)
	{
		onFire = true;
	}
	float fireMargin = onFire ? OBJECT_ROUTE_PLAN_FIRE_MARGIN : 0.0f;
	float margin = holder->ObjectMargin;
	float radius = GetRoutePlanRadius(creature) + margin + fireMargin;
	if (radius < RouteMinRadius)
	{
		radius = RouteMinRadius;
	}
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, point);
	Point2D pos(point.x, point.z);
	if (add_function != NULL)
	{
		add_function((int)this, pos, radius, update);
	}
	else
	{
		holder->AddObject((int)this, pos, radius, update);
	}
}

bool32_t Object::VillagerMustAvoid(Villager* villager)
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
		return GetHeight() * OBJECT_HOLD_ABOVE_HEIGHT_RATIO;
	}
	return Get2DRadius();
}

float Object::GetHoldLoweringMultiplier()
{
	return 0.0f;
}

bool32_t GObjectInfo::IsOkToCreateAtPos(const MapCoords& coords, float y_angle, float scale) const
{
	if ((coords.CollideCollideWithFixe() & 8) && !coords.IsWater())
	{
		return false;
	}
	return true;
}

void Object::SetPackedAnim(int anim)
{
	Game3dObject->SetCurrentAnim(LH3DAnim::GetPackedAnim(anim));
}

bool32_t Object::GetInspectObjectPos(Villager* villager, MapCoords* pos)
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

void Object::SetXYZAngles(float x, float y, float z)
{
	bool32_t inMap = IsObjectInMap();
	if (inMap)
	{
		RemoveMapObject();
	}
	SetYJustAngle(y);
	if (Game3dObject != NULL)
	{
		float       scale = GetScale();
		float       yAngle = GetYAngle();
		LH3DObject* object3d = Game3dObject;
		{
			LHPoint position;
			GLandscape::ConvertMapCoordToLandscapePoint(Pos, position);
			object3d->LH3DObject::SetPosition(position, yAngle, scale);
		}
	}
	if (inMap)
	{
		InsertMapObject();
	}
}

void Object::SetXYZAnglesAndScale(float x, float y, float z, float scale)
{
	bool32_t inMap = IsObjectInMap();
	if (inMap)
	{
		RemoveMapObject();
	}
	SetYJustAngle(y);
	SetJustScale(scale);
	if (Game3dObject != NULL)
	{
		float       objectScale = GetScale();
		float       yAngle = GetYAngle();
		LH3DObject* object3d = Game3dObject;
		{
			LHPoint position;
			GLandscape::ConvertMapCoordToLandscapePoint(Pos, position);
			object3d->LH3DObject::SetPosition(position, yAngle, objectScale);
		}
	}
	if (inMap)
	{
		InsertMapObject();
	}
}

void Object::SetScale(float scale)
{
	if (GetScale() != scale)
	{
		SetXYZAnglesAndScale(GetXAngle(), GetYAngle(), GetZAngle(), scale);
	}
}

void Object::SetYAngle(float angle)
{
	if (GetYAngle() != angle)
	{
		SetXYZAngles(GetXAngle(), angle, GetZAngle());
	}
}

bool32_t Object::IsObjectInMap()
{
	return Flags & GAME_THING_WITH_POS_FLAG_IN_MAP;
}

void Object::DrawValue(int text_type, float value)
{
	if (value != 0.0f)
	{
		const MapCoords& pos = Pos;
		LHPoint          point;
		GLandscape::ConvertMapCoordToLandscapePoint(pos, point);
		point.y += GetHeight();
		if (GGame::g_game->GameFlags & GAME_FLAG_DRAW_VALUE_SPINNERS)
		{
			ValueSpinner* spinner = new (OBJECT_SOURCE_FILE, OBJECT_LINE(1950)) ValueSpinner;
			spinner->Init(point, value, (ValueSpinner::TEXTTYPE_ENUM)text_type);
		}
	}
}

float Object::GetImpressiveValue()
{
	return GLandBalance::GetValue(GLandBalance::LAND_BALANCE_IMPRESSIVE) * info->ImpressiveValue;
}

void Object::SetFocus(const LHPoint& focus)
{
	LHPoint pos;
	float   angle;

	GLandscape::ConvertMapCoordToLandscapePoint(Pos, pos);
	angle = LH3DMath::GetYAngle(&pos, (LHPoint*)&focus);
	SetYAngle(angle);
}

bool32_t Object::IsActuallyInTheAir()
{
	if (Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
	{
		PhysicsObject* physicsObject = PhysicsObject::SearchForPhysicsObject(this);
		if (physicsObject != NULL)
		{
			float height = physicsObject->Physics.Matrix.GetPos().y -
			               LH3DIsland::GetAltitude(LH3DMapCoords(physicsObject->Physics.Matrix.GetPos().x,
			                                                     physicsObject->Physics.Matrix.GetPos().z)) +
			               physicsObject->Physics.Radius;
			return physicsObject->Physics.Velocity.GetNorme() > OBJECT_IN_FLIGHT_SPEED ||
			       height > OBJECT_IN_FLIGHT_HEIGHT;
		}
	}
	return false;
}

void Object::GetPhysicsMovementDirection(LHPoint* pos)
{
	PhysicsObject* physicsObject = PhysicsObject::SearchForPhysicsObject(this);
	if (physicsObject != NULL)
	{
		*pos = physicsObject->Physics.Velocity;
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

MapCoords Object::GetWorkingPos(Object* object)
{
	float angle = GUtils::Get3DAngleFromXZ(Pos, object->Pos);
	float radius = GetRadius();
	return Pos + GUtils::GetPosFromAngle(angle, radius + object->GetRadius());
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

float Object::CalculateForceAppliedBy(Living* living)
{
	return GetWeight() * OBJECT_GRAVITY;
}

float Object::PushObject(Living* living)
{
	float          force = CalculateForceAppliedBy(living);
	LHPoint        zero(0.0f, 0.0f, 0.0f);
	PhysicsObject* physicsObject;
	if ((Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) != 0 && (GameThing::Flags & GAME_THING_FLAG_PSYS_FLYING) == 0)
	{
		physicsObject = PhysicsObject::SearchForPhysicsObject(this);
	}
	else
	{
		physicsObject = InitialisePhysics(zero, zero, NULL, true, NULL).Physics;
	}
	if (physicsObject != NULL)
	{
		physicsObject->Flags |= PHYSICS_OBJECT_FLAG_PUSHED;
		LHPoint point;
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, point);
		LHPoint direction = physicsObject->Physics.Matrix.GetPos() - point;
		direction.SetSize(force);
		physicsObject->Physics.Force.Add(direction);
	}
	return 0.0f;
}

float Object::PushObject(Living* living, MapCoords& destination)
{
	float angle = GUtils::Get3DAngleFromXZ(Pos, destination);
	float distance = living->GetSpeedInMetres() + 0.5f;
	float actualDistance = GUtils::GetDistanceInMetres(Pos, destination);
	if (distance > actualDistance)
	{
		distance = actualDistance;
	}
	MapCoords newPos = Pos + GUtils::GetPosFromAngle(angle, distance);
	ActualMoveMapObject(newPos);
	return 0.0f;
}

float Object::GetImpressiveValue(Living* living, Reaction* reaction)
{
	float multiplier = reaction->GetDefaultReactionMultiplier(living);
	float value = GetImpressiveValue() * multiplier;
	float distance = GUtils::GetDistanceInMetres(living->Pos, Pos);
	float belief = GBelief::DistanceChangeToBelief(distance, reaction->GetInfo()->MaxReactionDistance);
	float power = GetPower();
	float boredom = living->GetBoredomMultiplier(reaction);
	return GetArtifactImpressiveModifier() * boredom * power * belief * value;
}

float Object::GetArtifactImpressiveModifier()
{
	float         modifier = 1.0f;
	TownArtifact* artifact = static_cast<TownArtifact*>(GetTownArtifact());
	if (artifact != NULL && artifact->IsReadyForParticleEffect())
	{
		modifier = GetTownArtifactValue() + 1.0f;
	}
	return modifier;
}

float Object::GetUpdateOfBoredomValue(Reaction* reaction, GameThingWithPos* reactor)
{
	return GameThingWithPos::GetUpdateOfBoredomValue(reaction, reactor);
}

bool32_t Object::CanBeDestroyedBySpell(Spell* spell)
{
	if (IsEffectReceiver(NULL) != true || (Flags & GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) != 0)
	{
		return false;
	}
	if (IsInScript() && GGame::g_game->help_system->WideScreen && GGame::g_game->help_system->WideScreenControl != 0)
	{
		if (spell == NULL || (spell->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) == 0)
		{
			return false;
		}
	}
	return true;
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

const char* Object::GetInfoDebugString()
{
	return info->DebugString;
}

bool32_t Object::IsFireMan()
{
	return false;
}

float Object::GetTemperature()
{
	if (fire_effect.Get() != NULL)
	{
		return fire_effect->GetObjectTemperature();
	}
	return Pos.GetTemperature();
}

float Object::GetCombustionTemperature()
{
	return info->CombustionTemperature;
}

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

void Object::GetDefaultFireCentrePos(MapCoords* pos)
{
	*pos = Pos;
}

float Object::GetDefaultFireRadius()
{
	return Get2DRadius();
}

uint32_t Object::ProcessInHand()
{
	GPlayer* player = GetPlayerHoldingThis();
	if (Influence::CalculatePlayerInfluence(Pos, player, 0, INFL_CALC_TYPE_DEFAULT, 1) > 0.0f)
	{
		FireEffect::CheckToSeeIfObjectIsNearOnFireObject(this);
	}
	return 1;
}

uint32_t Object::ProcessInInteract(GInterfaceStatus* status)
{
	return 1;
}

void Object::SetInScript(bool32_t in_script)
{
	Flags = (Flags & ~GAME_THING_WITH_POS_FLAG_IN_SCRIPT) | ((in_script & 1) << GAME_THING_WITH_POS_FLAG_IN_SCRIPT_BIT);
}

uint32_t Object::RemoveFromGame()
{
	return 0;
}

bool32_t Object::CanBeSuckedIntoVortex(LandscapeVortex* vortex)
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

bool32_t Object::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		file.WriteInfo(info);
		WRITE_SAFE(file, coords);
		WRITE_IT(file, ObjectCreationIndex);
		WRITE_IT(file, reinterpret_cast<uint32_t&>(life));
		WRITE_IT(file, reinterpret_cast<uint32_t&>(scale));
		WRITE_IT(file, reinterpret_cast<uint32_t&>(y_angle));
		file.WritePtr(fire_effect.Get());
		if ((Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) != 0 && (GameThing::Flags & GAME_THING_FLAG_PSYS_FLYING) == 0)
		{
			LHPoint  velocity;
			LHPoint  point;
			LHMatrix matrix;

			PhysicsObject* physicsObject = PhysicsObject::SearchForPhysicsObject(this);
			if (physicsObject != NULL)
			{
				matrix = physicsObject->Physics.Matrix;
				velocity = physicsObject->Physics.Velocity;
				point = physicsObject->Physics.AngularVelocity;
			}
			else
			{
				matrix.SetIdentity();
				velocity.SetNull();
				point.SetNull();
			}
			WRITE_SAFE(file, matrix);
			WRITE_SAFE(file, velocity);
			WRITE_SAFE(file, point);
		}
		return true;
	}
	return false;
}

bool32_t Object::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadInfo(reinterpret_cast<const GBaseInfo**>(&info));
		file.ReadSafe(coords);
		file.ReadSafe(ObjectCreationIndex);
		Game3dObject = NULL;
		file.ReadSafe(reinterpret_cast<uint32_t&>(life));
		file.ReadSafe(reinterpret_cast<uint32_t&>(scale));
		file.ReadSafe(reinterpret_cast<uint32_t&>(y_angle));
		file.ReadPtr(reinterpret_cast<GameThing**>(&fire_effect));
		if ((Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) != 0 && (GameThing::Flags & GAME_THING_FLAG_PSYS_FLYING) == 0)
		{
			PhysicsSaveInfo::ReadInfo(file);
		}
		return true;
	}
	return false;
}

void Object::ResolveLoad()
{
	CallVirtualFunctionsForCreation(Pos);
	if ((Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) != 0 && (GameThing::Flags & GAME_THING_FLAG_PSYS_FLYING) == 0 &&
	    PhysicsSaveInfo::ReadIndex < PhysicsSaveInfo::Count)
	{
		Flags &= ~GAME_THING_WITH_POS_FLAG_IN_PHYSICS;
		LHPoint        zero(0.0f, 0.0f, 0.0f);
		PhysicsObject* physicsObject = InitialisePhysics(zero, zero, NULL, true, NULL).Physics;
		if (physicsObject != NULL)
		{
			PhysicsSaveInfo& info = PhysicsSaveInfo::Buffer[PhysicsSaveInfo::ReadIndex];
			physicsObject->Physics.Matrix = info.Matrix;
			physicsObject->Physics.Velocity = info.Velocity;
			physicsObject->Physics.AngularVelocity = info.AngularVelocity;
			PhysicsSaveInfo::ReadIndex++;
		}
		else
		{
			PhysicsSaveInfo::ReadIndex++;
		}
	}
	if (Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE)
	{
		if (Flags & GAME_THING_WITH_POS_FLAG_IN_MAP)
		{
			RemoveMapObject();
		}
		Flags &= ~GAME_THING_WITH_POS_FLAG_IN_MAP;
	}
	Flags &= ~(GAME_THING_WITH_POS_FLAG_INTERACTING | GAME_THING_WITH_POS_FLAG_LOCKED_SELECT);
#ifdef VERSION_BW1WCI
	CreatureIsleVirtual0x108();
#endif
}

void Object::SetLife(float life)
{
	if ((((Flags & GAME_THING_WITH_POS_FLAG_IN_SCRIPT) != 0 && GGame::g_game->help_system->WideScreen &&
	      GGame::g_game->help_system->WideScreenControl != 0) ||
	     (Flags & GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) != 0) &&
	    life <= OBJECT_MIN_LIFE)
	{
		return;
	}
	this->life = life;
}

GPlayer* Object::GetPlayerHoldingThis()
{
	GInterfaceStatus* status = GetInterfaceStatusHoldingThis();
	if (status != NULL)
	{
		return status->GetPlayer();
	}
	return NULL;
}

GInterfaceStatus* Object::GetInterfaceStatusHoldingThis()
{
	for (GPlayer* player = GGame::g_game->GetNextActivePlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextActivePlayerAndNeutral(player))
	{
		for (uint32_t i = 0; i < MAX_PLAYER_INTERFACES; i++)
		{
			if (player->GetRealInterface(i) != NULL &&
			    player->GetRealInterface(i)->status->GetFirstObjectInCurrentHand() == this)
			{
				return player->GetRealInterface(i)->status;
			}
		}
	}
	return NULL;
}

IMMERSION_EFFECT_TYPE Object::GetImmersionTexture()
{
	return info->immersion;
}

void Object::SetUpPhysObAsATree(PhysOb* phys_ob, float weight, float height, float radius, float scale)
{
	phys_ob->SetUpConstants(weight, &EditorPhysics::PhysicsConstants[PHYSICS_CONSTANTS_TYPE_TREE], true);
	phys_ob->NumVertices = OBJECT_TREE_VERTEX_COUNT;
	phys_ob->Vertices = new (OBJECT_SOURCE_FILE, OBJECT_LINE(2491)) IPoint[phys_ob->NumVertices];

	float halfHeight;
	if (IsARootedObject())
	{
		phys_ob->CentreOfMass.Set(0.0f, OBJECT_TREE_ROOTED_CENTRE_OF_MASS / scale * height, 0.0f);
		halfHeight = height * OBJECT_TREE_ROOTED_HALF_HEIGHT;
	}
	else
	{
		phys_ob->CentreOfMass.Set(0.0f, 0.5f / scale * height, 0.0f);
		halfHeight = height * 0.5f;
	}

	IPoint* vertex = phys_ob->Vertices;
	for (int ring = 1; ring < 4; ring++)
	{
		float ringRadius;
		float y;
		switch (ring)
		{
		case 0:
			ringRadius = radius * OBJECT_TREE_NARROW_RING_RADIUS;
			y = -halfHeight;
			break;
		case 1:
			ringRadius = radius * OBJECT_TREE_WIDE_RING_RADIUS;
			y = halfHeight * -OBJECT_TREE_RING_HEIGHT;
			break;
		case 2:
			ringRadius = radius;
			y = 0.0f;
			break;
		case 3:
			ringRadius = radius * OBJECT_TREE_WIDE_RING_RADIUS;
			y = halfHeight * OBJECT_TREE_RING_HEIGHT;
			break;
		case 4:
			ringRadius = radius * OBJECT_TREE_NARROW_RING_RADIUS;
			y = halfHeight;
			break;
		}
		for (int corner = 0; corner < OBJECT_TREE_RING_CORNERS; corner++)
		{
			vertex->Clear();
			switch (corner)
			{
			case 0:
				vertex->Pos.Set(ringRadius, y, 0.0f);
				break;
			case 1:
				vertex->Pos.Set(0.0f, y, -ringRadius);
				break;
			case 2:
				vertex->Pos.Set(-ringRadius, y, 0.0f);
				break;
			case 3:
				vertex->Pos.Set(0.0f, y, ringRadius);
				break;
			}
			vertex++;
		}
	}

	float baseRadius = radius * OBJECT_TREE_BASE_RADIUS;
	vertex->Clear();
	vertex->Pos.Set(baseRadius, -halfHeight, 0.0f);
	vertex++;
	vertex->Clear();
	vertex->Pos.Set(0.0f, halfHeight, 0.0f);
	vertex++;
	vertex->Clear();
	vertex->Pos.Set(baseRadius, -halfHeight, 0.0f);
	vertex++;
	vertex->Clear();
	vertex->Pos.Set(baseRadius, -halfHeight, 0.0f);

	phys_ob->Radius = max(halfHeight, radius);

	phys_ob->NumFaces = OBJECT_TREE_FACE_COUNT;
	phys_ob->Faces = new (OBJECT_SOURCE_FILE, OBJECT_LINE(2591)) PTri[phys_ob->NumFaces];
	PTri* face = phys_ob->Faces;
	// The two bands between the rings, two triangles per quad.
	int first = 0;
	for (int band = 0; band < 2; band++)
	{
		face[0].Set(first + 0, first + 1, first + 5);
		face[1].Set(first + 0, first + 5, first + 4);
		face[2].Set(first + 1, first + 2, first + 6);
		face[3].Set(first + 1, first + 6, first + 5);
		face[4].Set(first + 2, first + 3, first + 7);
		face[5].Set(first + 2, first + 7, first + 6);
		face[6].Set(first + 3, first + 0, first + 4);
		face[7].Set(first + 3, first + 4, first + 7);
		first += 4;
		face += 8;
	}
	// Fans closing the bottom ring onto vertex 12 and the top ring onto vertex 13.
	face[0].Set(12, 1, 0);
	face[1].Set(12, 2, 1);
	face[2].Set(12, 3, 2);
	face[3].Set(12, 0, 3);
	face += 4;
	face[0].Set(13, 8, 9);
	face[1].Set(13, 9, 10);
	face[2].Set(13, 10, 11);
	face[3].Set(13, 11, 8);

	phys_ob->SetUpMoi();
	phys_ob->WindResist *= OBJECT_TREE_WIND_RESIST_SCALE;
	phys_ob->SetUpPos();
}

void Object::InitialiseIsFixedForMapList()
{
	OBJECT_TYPE type = info->type;
	uint32_t    fixed = MapCell::DoesObjectTypeCountAsFixed(type);
	Flags = (Flags & ~GAME_THING_WITH_POS_FLAG_FIXED_FOR_MAP_LIST) |
	        (fixed << GAME_THING_WITH_POS_FLAG_FIXED_FOR_MAP_LIST_BIT);
}

bool32_t Object::IsSuitableForArtifact()
{
	return IsAbode() || IsWorshipSite();
}

GInterfaceStatus* Object::GetInterfaceStatusWhoLastPickedMeUp()
{
	for (GPlayer* player = GGame::g_game->GetNextPlayer(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayer(player))
	{
		for (uint32_t i = 0; i < MAX_PLAYER_INTERFACES; i++)
		{
			if (player->GetRealInterface(i) != NULL && player->GetRealInterface(i)->status->LastPickedUpObject == this)
			{
				return player->GetRealInterface(i)->status;
			}
		}
	}
	return NULL;
}

GInterfaceStatus* Object::GetInterfaceStatusWhoLastDroppedMe()
{
	for (GPlayer* player = GGame::g_game->GetNextPlayer(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayer(player))
	{
		for (uint32_t i = 0; i < MAX_PLAYER_INTERFACES; i++)
		{
			if (player->GetRealInterface(i) != NULL && player->GetRealInterface(i)->status->LastDroppedObject == this)
			{
				return player->GetRealInterface(i)->status;
			}
		}
	}
	return NULL;
}

bool32_t Object::IsDrowning()
{
	if (Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
	{
		PhysicsObject* physicsObject = PhysicsObject::SearchForPhysicsObject(this);
		if (physicsObject != NULL && physicsObject->Physics.Matrix.m[10] < 0.0f)
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

bool Object::CanBecomeArtifact()
{
	return info->ArtifactMultiplier > 0.0f && !IsInScript();
}

void Object::SetYJustAngle(float angle)
{
	y_angle = angle;
}

SmokyStuff* Object::CreateSmokyStuff(long count, float radius, LH3DColor color)
{
	LHPoint  pos(GetHeight() * 0.5f, 0.0f, 0.0f);
	LHMatrix rotation;
	rotation.SetRotationY(GetYAngle());
	rotation.TransformPoint(pos);
	pos.Add(Game3dObject->matrix.GetPos());
	return SmokyStuff::Create(&pos, count, radius, color);
}

float Object::ApplyWaterSpell(SpellWater* spell)
{
	if (IsOnFire() && spell->PuttingOutFireReaction == NULL)
	{
		spell->PuttingOutFireReaction =
			Reaction::CreateReaction(spell, REACTION_REACT_TO_MAGIC_WATER_PUTTING_OUT_FIRE, spell->GetPlayer(), true);
	}
	return 0.0f;
}

bool32_t Object::BlocksTownClearArea() const
{
	return true;
}

bool32_t Object::DeleteObjectAndTakeResource(Object* object, GInterfaceStatus* status)
{
	return false;
}

void Object::DoDeleteObjectAndTakeResource(Object* object, GInterfaceStatus* status)
{
	if (status != NULL)
	{
		status->GetPlayer();
	}
	uint32_t added = AddResource(object->GetResourceType(), object->GetResource(object->GetResourceType()), status,
	                             object->IsPoisoned(), &object->Pos, 0);
	if (added && status != NULL)
	{
		DoCreatureMimicAfterAddingResource(object->GetResourceType(), *status);
		if (status == GGame::g_game->MyInterfaceStatus())
		{
			GGuidance::ResourceDropSFX(*status, Pos, (RESOURCE_RAIN_TYPE)GetGuidanceResourceType());
		}
	}
	if (object->GetResourceType() == RESOURCE_TYPE_WOOD && !object->IsPot())
	{
		LH_SamplePlayOptions options;
		LHPoint              pos = object->GetPos().GetLHPoint();
		static uint32_t      mulchSample = 0;
		mulchSample = (mulchSample + 1) & 3;
		options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
		options.SampleNumber = LH_SAMPLE_G_TREEMULCH_01 + mulchSample;
		options.AttachedObject = object;
		options.Positional = true;
		options.XPos = pos.x;
		options.YPos = pos.y;
		options.ZPos = pos.z;
		options.Follow = false;
		GGlobal::Global.audio->PlaySoundEffect(&options);
	}
	GoolooGooloo(object);
	object->ToBeDeleted(false);
}

static uint32_t UnusedStatic2 = 0;

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
	ToBeDeleted(false);
}

#ifdef VERSION_BW1WCI
void Object::CreatureIsleVirtual0x108()
{
	if ((GameThing::Flags & GAME_THING_FLAG_REAPPEARED) && Game3dObject != NULL)
	{
		Game3dObject->SetDisappear(false);
	}
}
#endif

LHMatrix Object::StoredMatrix;
