#include "Object.h"

#include <math.h>  /* For sqrt */
#include <stdio.h> /* For sprintf */

#include <Lionhead/LH3DLib/development/LH3DAnim.h>      /* For LH3DAnim::GetPackedAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For LH3DMath */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>         /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/PhysOb.h>          /* For struct PhysOb */
#include <Lionhead/LH3DLib/development/SmokyStuff.h>      /* For SmokyStuff::Create */
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h> /* For struct LH_SamplePlayOptions */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                  /* For operator new(size_t, const char*, uint32_t) */
#include "re_common.h"
#include "chlasm/AllMeshes.h"
#include <chlasm/LHSample.h> /* For LH_SAMPLE_G_TREEMULCH_01 */

#include "Alignment.h"          /* For GAlignment::Update */
#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */

#include "Artifact.h"      /* For TownArtifact::IsReadyForParticleEffect */
#include "Audio.h"         /* For GAudio::PlaySoundEffect */
#include "CitadelPart.h"   /* For class CitadelPart */
#include "Creature.h"      /* For Creature::CheckAllCreaturesForCatching */
#include "CreatureMorph.h" /* For LH3DCreature::GetNavRadius */
#include "EditorPhysics.h" /* For EditorPhysics::PhysicsConstants */
#include "EffectValues.h"  /* For struct EffectNumbers, class EffectValues */
#include "FireEffect.h"
#include "Game.h" /* For GGame */
#include "Game3DObject.h"
#include "GameOSFile.h" /* For class GameOSFile, class PhysicsSaveInfo */
#include "GameThingWithPos.h"
#include "Global.h"           /* For GGlobal::Global */
#include "HelpProfile.h"      /* For HelpProfile::Trigger */
#include "HelpSystem.h"       /* For class HelpSystem */
#include "Influence.h"        /* For Influence::CalculatePlayerInfluence */
#include "Interface.h"        /* For class GInterface */
#include "InterfaceStatus.h"  /* For class GInterfaceStatus */
#include "JCGameBlock.h"      /* For GameBlock */
#include "LandBalance.h"      /* For GLandBalance::GetValue */
#include "LandFeature.h"      /* For RequestChangeTexture */
#include "Landscape.h"        /* For GLandscape */
#include "Map.h"              /* For MapCell */
#include "PhysicsObject.h"    /* For class PhysicsObject */
#include "PhysicsSaveInfo.h"  /* For class PhysicsSaveInfo */
#include "Player.h"           /* For class GPlayer */
#include "Reaction.h"         /* For Reaction::CreateReaction, Reaction::RemoveAllReactionsOfTypeInitiatedByObject */
#include "SoundGuidance.h"    /* For class GGuidance */
#include "SpellWater.h"       /* For class SpellWater */
#include "Town.h"             /* For Town::UpdateAggressor */
#include "Utils.h"            /* For GUtils */
#include "VirtualInfluence.h" /* For class GVirtualInfluence */

static const float RouteMinRadius = 0.05f;

GObjectInfo GObjectInfo::Infos[OBJECT_TYPE_LAST];
GObjectInfo GObjectInfo::ComputerPlayerInfo;

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
	LH3DObject* object3d = Game3dObject;
	object3d->SetPosition(position, 0.0f, 1.0f);
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

float GObjectInfo::GetMesh2DRadius(float scale) const
{
	const LHPoint& size = LH3DMesh::GetPackedMesh(GetMesh())->BoundingBox.size;
	return (size.z < size.x ? size.x : size.z) * scale;
}

void Object::RemoveDraggingCreatureByLeash()
{
	if ((Flags & GAME_THING_WITH_POS_FLAG_DRAGGED_BY_LEASH) == 0)
	{
		return;
	}
	Flags &= ~GAME_THING_WITH_POS_FLAG_DRAGGED_BY_LEASH;
	// GetPlayer() is this object's owner, so the inner walk covers the same statuses on
	// every pass of the outer loop. That is what the original does.
	for (GPlayer* player = GGame::g_game->GetNextPlayer(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayer(player))
	{
		for (GInterfaceStatus* status = GetPlayer()->GetNextInterfaceStatus(NULL); status != NULL;
		     status = GetPlayer()->GetNextInterfaceStatus(status))
		{
			if (status->influence->field_0x24 == this)
			{
				status->influence->field_0x24 = NULL;
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
			Game3dObject->SetPaper(0);
		}
		if (Game3dObject->IsDisappear())
		{
			physicsObject->Flags |= PHYSICS_OBJECT_FLAG_WAS_DISAPPEARING;
			Game3dObject->SetDisappear(0);
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
		thrown = velocity.x * velocity.x + velocity.z * velocity.z > 4.0f;
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
			LandCell* cell = LH3DIsland::GetCell((int)(physicsObject->Physics.Matrix.GetPos().x / 10.0f),
			                                     (int)(physicsObject->Physics.Matrix.GetPos().z / 10.0f));
			if (cell != NULL && cell->altitude > 1)
			{
				landed = true;
			}
		}
	}
	if (landed && (IsLiving() || IsFence()))
	{
		LH3DMapCoords landCoords(physicsObject->Physics.Matrix.GetPos().x, physicsObject->Physics.Matrix.GetPos().z);
		LHPoint       normal;
		LH3DIsland::GetNormal(landCoords, &normal);
		if (normal.y < 0.7f)
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
			// TODO: field_0x10c doubles as the last disciple type here; see VillagerStates.cpp.
			if (myStatus == status && *(uint32_t*)&villager->field_0x10c != villager->DiscipleType)
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
				if (dont_replant != 0 || (float)fabs(xAngle) > 0.2f || (float)fabs(zAngle) > 0.2f)
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
		Reaction::CreateReaction(this, 9, player, 0);
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

PhysicsInitialisation Object::InitialisePhysics(const LHPoint& param_1, const LHPoint& param_2, Object* param_3,
                                                bool param_4, GInterfaceStatus* param_5)
{
	PhysicsInitialisation result;

	if ((Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) != 0 || (Flags & GAME_THING_WITH_POS_FLAG_IMMOVABLE) != 0)
	{
		result.Physics = NULL;
		result.Started = false;
		return result;
	}
	RemoveDraggingCreatureByLeash();
	Flags |= GAME_THING_WITH_POS_FLAG_IN_PHYSICS;
	Flags &= ~GAME_THING_WITH_POS_FLAG_LOCKED_SELECT;
	if (IsObjectInMap())
	{
		RemoveMapObject();
	}

	PhysicsObject* physicsObject = NULL;
	if (param_4)
	{
		GetWorldMatrix(&Game3dObject->matrix);
		physicsObject = PhysicsObject::AddObject(this, param_1, param_2, param_3, param_5);
		if (physicsObject == NULL)
		{
			result.Physics = NULL;
			result.Started = false;
			return result;
		}
		if (Game3dObject != NULL)
		{
			if (Game3dObject->IsPaper())
			{
				physicsObject->Flags |= PHYSICS_OBJECT_FLAG_WAS_PAPER;
				Game3dObject->SetPaper(0);
			}
			if (Game3dObject->IsDisappear() && (physicsObject->Flags & PHYSICS_OBJECT_FLAG_FROM_HAND) != 0)
			{
				physicsObject->Flags |= PHYSICS_OBJECT_FLAG_WAS_DISAPPEARING;
				Game3dObject->SetDisappear(0);
			}
			Creature::CheckAllCreaturesForCatching(this, physicsObject);
		}
	}
	if (fire_effect != NULL && (GGame::g_game->field_0x14 & 0x8000) == 0)
	{
		fire_effect->StartedMoving(0);
	}
	result.Physics = physicsObject;
	result.Started = true;
	return result;
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
			Game3dObject->SetPaper(1);
		}
		if (physics_object->Flags & PHYSICS_OBJECT_FLAG_WAS_DISAPPEARING)
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

uint32_t Object::DestroyedByEffect(GPlayer* player, float param_2)
{
	if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		ToBeDeleted(0);
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
	if (values.numbers.values[EFFECT_TYPE_CRUSH] > 0.01f && CanBeCrushed() &&
	    Reaction::GetReactionInitiatedByObject(this) == NULL)
	{
		GameThingWithPos* crusher = dynamic_cast<GameThingWithPos*>(values.AppliedBy);
		Reaction::CreateReaction(crusher != NULL ? crusher : this, REACTION_REACT_TO_OBJECT_CRUSHED, GetPlayer(), 1);
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

float Object::ReduceLifeDueToBurning(float param_1, GPlayer* param_2)
{
	if ((GameThing::Flags & GAME_THING_FLAG_NO_BURN_DAMAGE) == 0)
	{
		ReduceLife(param_1, param_2);
		Town* town = GetTown();
		if (town != NULL && param_1 != 0.0f)
		{
			town->UpdateAggressor(EffectValues(EFFECT_TYPE_BURN, GetTemperature(), NULL, 1.0f, param_2),
			                      GetAggressorValueFromDamage(param_1));
		}
	}
	return GetLife();
}

void Object::DrawFireEffect()
{
	fire_effect->Draw();
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

float Object::GetHealEffect(EffectValues& values)
{
	float         heal = 0.0f;
	EffectNumbers defence;
	FillInEffectDefenceMultiplier(defence);
	float effect = values.numbers.values[EFFECT_TYPE_HEAL] * defence.values[EFFECT_TYPE_HEAL];
	if (effect > 0.0f)
	{
		heal = effect;
	}
	return heal;
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
	float x1 = corner1.WholeX() * CellSize * (1.0f / (float)0x10000);
	float x2 = corner2.WholeX() * CellSize * (1.0f / (float)0x10000);
	float minX = x1 < x2 ? x1 : x2;
	float z1 = corner1.WholeZ() * CellSize * (1.0f / (float)0x10000);
	float z2 = corner2.WholeZ() * CellSize * (1.0f / (float)0x10000);
	float minZ = z1 < z2 ? z1 : z2;
	float maxX = x1 > x2 ? x1 : x2;
	float maxZ = z1 > z2 ? z1 : z2;

	float radius = Get2DRadius();
	float myX = Pos.WholeX() * CellSize * (1.0f / (float)0x10000);
	if (myX + radius < minX || myX - radius > maxX)
	{
		return false;
	}
	float myZ = Pos.WholeZ() * CellSize * (1.0f / (float)0x10000);
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
		if (object3d->GetMesh()->BoundingBox.size.z < object3d->GetMesh()->BoundingBox.size.x)
		{
			return objectScale * object3d->GetMesh()->BoundingBox.size.x;
		}
		return objectScale * object3d->GetMesh()->BoundingBox.size.z;
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
			out->m[11] = 0.0f;
			out->m[10] = 0.0f;
			out->m[9] = 0.0f;
			out->m[7] = 0.0f;
			out->m[6] = 0.0f;
			out->m[5] = 0.0f;
			out->m[3] = 0.0f;
			out->m[2] = 0.0f;
			out->m[1] = 0.0f;
			out->m[8] = scale;
			out->m[4] = scale;
			out->m[0] = scale;
			out->PostTranslation(position);
			out->RotateY(yAngle);
		}
		else
		{
			out->Translation(position);
			out->RotateY(yAngle);
		}
	}
	else
	{
		if (scale != 1.0f)
		{
			out->m[11] = 0.0f;
			out->m[10] = 0.0f;
			out->m[9] = 0.0f;
			out->m[7] = 0.0f;
			out->m[6] = 0.0f;
			out->m[5] = 0.0f;
			out->m[3] = 0.0f;
			out->m[2] = 0.0f;
			out->m[1] = 0.0f;
			out->m[8] = scale;
			out->m[4] = scale;
			out->m[0] = scale;
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

float Object::GetWeightForce(Living* param_1)
{
	return GetWeight() * 9.81f;
}

float Object::GetRoutePlanRadius(Creature* creature)
{
	if (creature == NULL)
	{
		return Get2DRadius();
	}
	float height = GetHeight();
	float limit = creature->GetHeight() * 0.8f;
	float factor;
	if (height > limit)
	{
		factor = 0.4f;
	}
	else
	{
		factor = 0.7f - (height / limit) * 0.3f;
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
		physicsObject->Physics.Inertia = 0.0f;
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
	return creature->GetHeight() * 0.1f <= height || IsOnFire();
}

void Object::AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
                            void(__cdecl* add_function)(int, Point2D, float, int))
{
	bool onFire = false;
	if (GetFireEffect() != NULL && creature != NULL)
	{
		onFire = true;
	}
	float         fireMargin = onFire ? 5.0f : 0.0f;
	Game3DObject* object3d = Game3dObject;
	float         margin = holder->ObjectMargin;
	if (creature != NULL)
	{
		float height = GetHeight();
		float creatureHeight = reinterpret_cast<Object*>(creature)->GetHeight();
		float factor;
		if (height > creatureHeight * 0.8f)
		{
			factor = 0.4f;
		}
		else
		{
			factor = 0.7f - 0.3f * (height / (creatureHeight * 0.8f));
		}
		margin -= factor * holder->ObjectMargin;
	}
	if (object3d != NULL)
	{
		LHMatrix matrix;
		GetWorldMatrix(&matrix);
		LHPoint worldCentre = matrix * object3d->GetMesh()->BoundingBox.centre;
		Point2D pos(worldCentre.x, worldCentre.z);
		LHPoint size = object3d->GetMesh()->BoundingBox.size * GetScale();
		size.x = size.x + margin + fireMargin;
		size.z = size.z + margin + fireMargin;
		int      count = 1;
		bool32_t alongX = true;
		float    spacing;
		float    width;
		if (size.x > size.z * 1.2f)
		{
			count = (int)(size.x / size.z) + 1;
			if (count > 5)
			{
				count = 5;
				size.z = size.x * 0.2f;
			}
			alongX = true;
			spacing = size.x / count;
			width = size.z;
		}
		else if (size.x * 1.2f < size.z)
		{
			count = (int)(size.z / size.x) + 1;
			if (count > 5)
			{
				count = 5;
				size.x = size.z * 0.2f;
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
			pos -= step * (float)(count - 1);
			step.x *= 2.0f;
			step.y *= 2.0f;
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

void Object::SimpleAddToRoutePlan(RPHolder* holder, Creature* creature, int update,
                                  void(__cdecl* add_function)(int, Point2D, float, int))
{
	bool onFire = false;
	if (GetFireEffect() != NULL && creature != NULL)
	{
		onFire = true;
	}
	float fireMargin = onFire ? 5.0f : 0.0f;
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

bool32_t GObjectInfo::IsOkToCreateAtPos(const MapCoords& coords, float param_2, float param_3) const
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
		LHPoint     position;
		LH3DObject* object3d = Game3dObject;
		object3d->SetPosition(*GLandscape::ConvertMapCoordToLandscapePoint(Pos, position), yAngle, scale);
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
		LHPoint     position;
		LH3DObject* object3d = Game3dObject;
		object3d->SetPosition(*GLandscape::ConvertMapCoordToLandscapePoint(Pos, position), yAngle, objectScale);
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

void Object::DrawValue(int param_1, float param_2) {}

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

void Object::IsActuallyInTheAir() {}

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
	return Pos + GUtils::GetPosFromAngle(angle, object->GetRadius() + GetRadius());
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

float Object::GetArtifactImpressiveModifier()
{
	float         modifier = 1.0f;
	TownArtifact* artifact = static_cast<TownArtifact*>(GetTownArtifact());
	if (artifact != NULL && artifact->IsReadyForParticleEffect())
	{
		return GetTownArtifactValue() + 1.0f;
	}
	return modifier;
}

float Object::GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2)
{
	return GameThingWithPos::GetUpdateOfBoredomValue(param_1, param_2);
}

bool32_t Object::CanBeDestroyedBySpell(Spell* spell)
{
	if (IsEffectReceiver(NULL) != 1 || (Flags & GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) != 0)
	{
		return false;
	}
	if (IsInScript() && GGame::g_game->help_system->field_0x45e8 != 0 && GGame::g_game->help_system->field_0x45ec != 0)
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
	if (fire_effect != NULL)
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
	if (Influence::CalculatePlayerInfluence(Pos, GetPlayerHoldingThis(), 0, INFL_CALC_TYPE_0, 1) > 0.0f)
	{
		FireEffect::CheckToSeeIfObjectIsNearOnFireObject(this);
	}
	return 1;
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
	if (GameThingWithPos::Save(file))
	{
		file.WriteInfo(info);
		file.WriteSafe(coords);
		file.WriteSafe(ObjectCreationIndex);
		file.WriteSafe(reinterpret_cast<uint32_t&>(life));
		file.WriteSafe(reinterpret_cast<uint32_t&>(scale));
		file.WriteSafe(reinterpret_cast<uint32_t&>(y_angle));
		file.WritePtr(fire_effect);
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
			file.WriteSafe(matrix);
			file.WriteSafe(velocity);
			file.WriteSafe(point);
		}
		return 1;
	}
	return 0;
}

uint32_t Object::Load(GameOSFile& file)
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
		return 1;
	}
	return 0;
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
}

void Object::SetLife(float life)
{
	if ((((Flags & GAME_THING_WITH_POS_FLAG_IN_SCRIPT) != 0 && GGame::g_game->help_system->field_0x45e8 != 0 &&
	      GGame::g_game->help_system->field_0x45ec != 0) ||
	     (Flags & GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) != 0) &&
	    life <= 0.01f)
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
		for (uint32_t i = 0; i < 18; i++)
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
	// Row 6 of physicsconstants.txt.
	phys_ob->SetUpConstants(weight, &EditorPhysics::PhysicsConstants[6], 1);
	phys_ob->NumVertices = 16;
	phys_ob->Vertices = new ("C:\\dev\\MP\\Black\\Object.cpp", 2491) PhysOb::Vertex[phys_ob->NumVertices];

	float halfHeight;
	if (IsARootedObject())
	{
		phys_ob->CentreOfMass.Set(0.0f, 0.4f / scale * height, 0.0f);
		halfHeight = height * 0.6f;
	}
	else
	{
		phys_ob->CentreOfMass.Set(0.0f, 0.5f / scale * height, 0.0f);
		halfHeight = height * 0.5f;
	}

	PhysOb::Vertex* vertex = phys_ob->Vertices;
	for (int ring = 1; ring < 4; ring++)
	{
		float ringRadius;
		float y;
		switch (ring)
		{
		case 0:
			ringRadius = radius * 0.2f;
			y = -halfHeight;
			break;
		case 1:
			ringRadius = radius * 0.65f;
			y = halfHeight * -0.6f;
			break;
		case 2:
			ringRadius = radius;
			y = 0.0f;
			break;
		case 3:
			ringRadius = radius * 0.65f;
			y = halfHeight * 0.6f;
			break;
		case 4:
			ringRadius = radius * 0.2f;
			y = halfHeight;
			break;
		}
		for (int corner = 0; corner < 4; corner++)
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

	float baseRadius = radius * 0.1f;
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

	phys_ob->Radius = halfHeight > radius ? halfHeight : radius;

	phys_ob->NumFaces = 24;
	phys_ob->Faces = new ("C:\\dev\\MP\\Black\\Object.cpp", 2591) PhysOb::Face[phys_ob->NumFaces];
	PhysOb::Face* face = phys_ob->Faces;
	// The two bands between the rings, two triangles per quad.
	for (int band = 0; band < 2; band++)
	{
		face[0].Set(band * 4 + 0, band * 4 + 1, band * 4 + 5);
		face[1].Set(band * 4 + 0, band * 4 + 5, band * 4 + 4);
		face[2].Set(band * 4 + 1, band * 4 + 2, band * 4 + 6);
		face[3].Set(band * 4 + 1, band * 4 + 6, band * 4 + 5);
		face[4].Set(band * 4 + 2, band * 4 + 3, band * 4 + 7);
		face[5].Set(band * 4 + 2, band * 4 + 7, band * 4 + 6);
		face[6].Set(band * 4 + 3, band * 4 + 0, band * 4 + 4);
		face[7].Set(band * 4 + 3, band * 4 + 4, band * 4 + 7);
		face += 8;
	}
	// Fans closing the bottom ring onto vertex 12 and the top ring onto vertex 13.
	face[0].Set(12, 1, 0);
	face[1].Set(12, 2, 1);
	face[2].Set(12, 3, 2);
	face[3].Set(12, 0, 3);
	face[4].Set(13, 8, 9);
	face[5].Set(13, 9, 10);
	face[6].Set(13, 10, 11);
	face[7].Set(13, 11, 8);

	phys_ob->SetUpMoi();
	phys_ob->Inertia *= 0.3f;
	phys_ob->SetUpPos();
}

void Object::InitialiseIsFixedForMapList()
{
	Flags = (Flags & ~GAME_THING_WITH_POS_FLAG_FIXED) | (MapCell::DoesObjectTypeCountAsFixed(info->type) << 15);
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
		for (uint32_t i = 0; i < 18; i++)
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
		for (uint32_t i = 0; i < 18; i++)
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

SmokyStuff* Object::CreateSmokyStuff(long param_1, float param_2, LH3DColor color)
{
	LHPoint  pos(GetHeight() * 0.5f, 0.0f, 0.0f);
	LHMatrix rotation;
	rotation.SetRotationY(GetYAngle());
	rotation.TransformPoint(pos);
	pos.Add(Game3dObject->matrix.GetPos());
	return SmokyStuff::Create(&pos, param_1, param_2, color);
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

bool32_t Object::BlocksTownClearArea() const
{
	return true;
}

bool32_t Object::DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2)
{
	return false;
}

void Object::DoDeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2)
{
	if (param_2 != NULL)
	{
		param_2->GetPlayer();
	}
	if (AddResource(param_1->GetResourceType(), param_1->GetResource(param_1->GetResourceType()), param_2,
	                param_1->IsPoisoned(), &param_1->Pos, 0) &&
	    param_2 != NULL)
	{
		DoCreatureMimicAfterAddingResource(param_1->GetResourceType(), *param_2);
		if (param_2 == GGame::g_game->MyInterfaceStatus())
		{
			GGuidance::ResourceDropSFX(*param_2, Pos, (RESOURCE_RAIN_TYPE)GetGuidanceResourceType());
		}
	}
	if (param_1->GetResourceType() == RESOURCE_TYPE_WOOD && !param_1->IsPot())
	{
		LH_SamplePlayOptions options;
		LHPoint              pos = param_1->GetPos().GetLHPoint();
		static uint32_t      mulchSample = 0;
		mulchSample = (mulchSample + 1) & 3;
		options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
		options.SampleNumber = LH_SAMPLE_G_TREEMULCH_01 + mulchSample;
		options.Pos = pos;
		options.AttachedObject = param_1;
		options.field_0x8 = 1;
		options.field_0xc = 0;
		GGlobal::Global.audio->PlaySoundEffect(&options);
	}
	GoolooGooloo(param_1);
	param_1->ToBeDeleted(0);
}

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
