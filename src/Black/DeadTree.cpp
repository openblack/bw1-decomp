#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include "DeadTree.h"

#include "Audio.h"
#include "CarriedObject.h"
#include "ColourConstants.h"
#include "Creature.h"
#include "FelledTree.h"
#include "FireEffect.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "Global.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "MapCoordsMeters.h"
#include "MobileStaticInfo.h"
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */
#include "PhysicsObject.h"
#include "Player.h"
#include "Reaction.h"
#include "Setup.h"
#include "Tree.h"
#include "TreeInfo.h"
#include "WorshipSite.h"
#include "WorshipTotem.h"
#include <chlasm/AllMeshes.h> /* For MSH_O_WOOD_INHAND, MSH_T_ROOTS */
#include <chlasm/AudioSFX.h>  /* For AUDIO_SFX_BANK_TYPE_IN_GAME */
#include <chlasm/LHSample.h>  /* For LH_SAMPLE_G_SACRIFICE_01 */
#include <Lionhead/LH3DLib/development/FallingRoot.h>
#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For heading_from_direction_vector */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DObject.h>

#include <math.h>   /* For cos, sin */
#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strlen */

// BW1W120 00cc5f10
static LH3DMesh* MeshOverride = NULL;
// BW1W120 00cc5f04
static LH3DObject* RootObject;

void DeadTree::Draw()
{
	if (CreateFallingRoot)
	{
		NEW(37) FallingRoot(Game3dObject, MSH_T_ROOTS);
		CreateFallingRoot = false;
	}
	if (GetFireEffect() != NULL)
	{
		DrawObjectOnFire();
	}
	else
	{
		Game3DObject* object = Game3dObject;
		LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
		object->AddForDrawing(this);
	}
}

DeadTree::DeadTree(Tree* tree, GPlayer* player)
	: Rock(tree->Pos, &GMobileStaticInfo::Infos[MOBILE_STATIC_INFO_DEAD_TREE], NULL, player, 0.0f, 1.0f)
{
	SetToZero();
	Game3dObject = tree->Game3dObject;
	if (Game3dObject != NULL)
	{
		Game3dObject->SetPaper(false);
		Game3dObject->SetShadowOnTexture(false);
		Game3dObject->SetShadowOnTextureChroma(true);
		Game3dObject->SetDynamicLighting(false);
	}
	TreeInfo = tree->GetInfo();
	WoodMultiplier = tree->GetWoodValueMultiplier();
	Pos = tree->Pos;
	tree->Game3dObject = NULL;
	SetScale(tree->GetScale());
	InitialiseIsFixedForMapList();
	AllocateMultiChild();
	FireEffect::MoveFromObjectToObject(tree, this);
	Reaction::CreateReaction(this, REACTION_REACT_TO_WOOD, GetPlayer(), 0);
}

DeadTree::DeadTree(const MapCoords& coords, const GTreeInfo* info, GPlayer* player, float life, float x_angle,
                   float y_angle, float z_angle)
	: Rock(coords, &GMobileStaticInfo::Infos[MOBILE_STATIC_INFO_DEAD_TREE], NULL, player, 0.0f, 1.0f)
{
	SetToZero();
	TreeInfo = info;
	SetLife(life);
}

void DeadTree::SetToZero()
{
	WoodMultiplier = 1.0f;
}

void DeadTree::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	CreateFallingRoot = false;
	field_0x98 = 0;
	Create3DObject();
	InitialiseIsFixedForMapList();
	Game3dObject->SetShadowOnTexture(false);
	Game3dObject->SetShadowOnTextureChroma(true);
	Game3dObject->SetMesh(GetDeadTreeMesh(), GetDeadTreeMesh(), GetDeadTreeMesh());
	AllocateMultiChild();
	Game3dObject->importance = 1.0f;
	Game3dObject->SetDynamicLighting(false);
	Game3dObject->SetPosition(Pos, GetXAngle(), GetYAngle(), GetZAngle(), GetScale());
	if ((Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE) == 0 &&
	    (GameThing::Flags & (GAME_THING_FLAG_UNAVAILABLE | GAME_THING_FLAG_PSYS_FLYING)) == 0)
	{
		InsertMapObject();
	}
}

DeadTree* DeadTree::Create(Tree* tree, GPlayer* player)
{
	if (tree == NULL || tree->Game3dObject == NULL)
	{
		return NULL;
	}
	return NEW(123) DeadTree(tree, player);
}

DeadTree* DeadTree::Create(const MapCoords& coords, const GTreeInfo* info, GPlayer* player, float life, float x_angle,
                           float y_angle, float z_angle, LH3DMesh* mesh)
{
	DeadTree* deadTree = NEW(136) DeadTree(coords, info, player, life, x_angle, y_angle, z_angle);
	if (deadTree != NULL)
	{
		MeshOverride = mesh;
		deadTree->CallVirtualFunctionsForCreation(coords);
		deadTree->SetXYZAnglesAndScale(x_angle, y_angle, z_angle, deadTree->GetScale());
		deadTree->CreateFallingRoot = false;
		MeshOverride = NULL;
	}
	return deadTree;
}

LH3DMesh* DeadTree::GetDeadTreeMesh()
{
	if (MeshOverride != NULL)
	{
		return MeshOverride;
	}
	return LH3DMesh::GetPackedMesh(GetTreeInfo()->GetMesh());
}

void DeadTree::ToBeDeleted(bool32_t delete_now)
{
	MobileStatic::ToBeDeleted(delete_now);
}

void DeadTree::ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage)
{
	Object* hitter = physics_object->GetGameObjectWhoHitMe();
	if (hitter != NULL && hitter->IsResourceStore(RESOURCE_TYPE_WOOD))
	{
		hitter->DeleteObjectAndTakeResource(this, physics_object->status);
	}
}

void DeadTree::GetDefaultFireCentrePos(MapCoords* pos)
{
	if (Game3dObject != NULL)
	{
		LHMatrix matrix;
		GetWorldMatrix(&matrix);
		const LHPoint& boxCentre = Game3dObject->GetMesh()->GetBoundingBox().centre;
		LHPoint        centre;
		LHMATRIX_TRANSFORM_POINT(centre, boxCentre, matrix);
		GLandscape::ConvertLHPointToMapCoord(centre, *pos);
		pos->SetAltitude(Pos.GetAltitude());
	}
	else
	{
		*pos = Pos;
	}
}

float DeadTree::GetDefaultFireRadius()
{
	return GetHeight() * 0.35f;
}

void DeadTree::StartOnFire()
{
	Reaction::RemoveAllReactionsInitiatedByObject(this);
}

bool32_t DeadTree::CreatureMustAvoid(Creature* creature)
{
	if (creature == NULL)
	{
		return false;
	}
	bool notScripted = !creature->IsControlledByScript();
	return notScripted && IsOnFire();
}

void DeadTree::EndOnFire()
{
	if (IsAvailable())
	{
		Reaction::CreateReaction(this, REACTION_REACT_TO_WOOD, GetPlayer(), 0);
	}
}

uint32_t DeadTree::ValidToApplyThisToObject(GInterfaceStatus* status, Object* object)
{
	if (dynamic_cast<WorshipTotem*>(object) != NULL)
	{
		return true;
	}
	if (object != NULL && object->IsResourceStore(RESOURCE_TYPE_WOOD))
	{
		return true;
	}
	return false;
}

uint32_t DeadTree::ApplyThisToObject(GInterfaceStatus* status, Object* object, GestureSystemPacketData* data)
{
	WorshipTotem* totem = dynamic_cast<WorshipTotem*>(object);
	if (totem != NULL)
	{
		float        sacrifice = GetSacrificeValue();
		WorshipSite* site = totem->Site.Get();
		sacrifice *= GetLife();
		site->AddToChantStore(sacrifice);
		site->TotalSacrificeValue += sacrifice;
		if (status != NULL)
		{
			LHPoint              pos = status->GetHandPos();
			LH_SamplePlayOptions options;
			options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
			options.SampleNumber = LH_SAMPLE_G_SACRIFICE_01;
			options.AttachedObject = this;
			options.Positional = true;
			options.XPos = pos.x;
			options.YPos = pos.y;
			options.ZPos = pos.z;
			options.Follow = false;
			GGlobal::Global.audio->PlaySoundEffect(&options);
		}
		GoolooGooloo(this);
		ToBeDeleted(false);
		return GAME_RETURNS_RESOURCE_TAKEN;
	}
	if (object != NULL && object->IsResourceStore(RESOURCE_TYPE_WOOD) &&
	    object->DeleteObjectAndTakeResource(this, status))
	{
		return GAME_RETURNS_RESOURCE_TAKEN;
	}
	return GAME_RETURNS_NONE;
}

uint32_t DeadTree::ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords, GestureSystemPacketData* data)
{
	Object* site = Pos.IsWithinBuilingSite();
	if (site != NULL && site->IsResourceStore(GetResourceType()) && site->DeleteObjectAndTakeResource(this, status))
	{
		return GAME_RETURNS_RESOURCE_TAKEN;
	}
	return MobileStatic::ApplyThisToMapCoord(status, coords, data);
}

RESOURCE_TYPE DeadTree::GetResourceType()
{
	return RESOURCE_TYPE_WOOD;
}

HOLD_TYPE DeadTree::GetHoldType()
{
	return HOLD_TYPE_TREE;
}

float DeadTree::GetHoldRadius()
{
	return Get2DRadius() * 0.2f;
}

float DeadTree::GetHoldLoweringMultiplier()
{
	return 0.1f;
}

PHYSICS_CONSTANTS_TYPE DeadTree::GetPhysicsConstantsType()
{
	return Game3dObject->GetMesh() == LH3DMesh::GetPackedMesh(MSH_O_WOOD_INHAND)
	           ? PHYSICS_CONSTANTS_TYPE_DEFAULT_MOVABLE
	           : PHYSICS_CONSTANTS_TYPE_TREE;
}

SOUND_COLLISION_TYPE DeadTree::GetCollideSoundType()
{
	if (Game3dObject->GetMesh() == LH3DMesh::GetPackedMesh(MSH_O_WOOD_INHAND))
	{
		return SOUND_COLLISION_TYPE_HOLLOW_WOOD;
	}
	return info->CollideSound;
}

void DeadTree::SetUpPhysOb(PhysOb* phys_ob)
{
	if (Game3dObject->GetMesh() == LH3DMesh::GetPackedMesh(MSH_O_WOOD_INHAND))
	{
		Object::SetUpPhysOb(phys_ob);
	}
	else
	{
		SetUpPhysObAsATree(phys_ob, GetWeight(), GetHeight(), Get2DRadius(), GetScale());
	}
}

bool DeadTree::InteractsWithPhysicsObjects()
{
	return true;
}

bool32_t DeadTree::IsARootedObject()
{
	return false;
}

void DeadTree::Init()
{
	if (RootObject == NULL)
	{
		RootObject = LH3DObject::Create(LH3DObject::STATIC);
		RootObject->SetMesh(LH3DMesh::GetPackedMesh(MSH_T_ROOTS), NULL, NULL);
	}
}

void DeadTree::Close()
{
	if (RootObject != NULL)
	{
		RootObject->Release();
		RootObject = NULL;
	}
}

void DeadTree::DrawRoots(Game3DObject* object)
{
	if (object != NULL)
	{
		RootObject->SetColorSpecular(object->color, object->specular);
		RootObject->matrix = object->matrix;
		float scale = object->GetMesh()->GetBoundingBox().size.x;
		scale *= 0.15f;
		RootObject->matrix.PreScale(scale, scale, scale);
		RootObject->SetNeedClipping(true);
		RootObject->Draw();
	}
}

int DeadTree::GetDefaultResource()
{
	return (int)(GetScale() * (GetTreeInfo()->WoodValue * WoodMultiplier));
}

uint32_t DeadTree::RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* removed)
{
	uint32_t held = GetResource(type);
	if (held <= amount)
	{
		ToBeDeleted(false);
		return held;
	}
	SetScale((held - amount) / (TreeInfo->WoodValue * WoodMultiplier));
	return amount;
}

Object* DeadTree::EndPhysics(PhysicsObject* physics_object, bool insert_back_into_map)
{
	Object* result = Rock::EndPhysics(physics_object, insert_back_into_map);
	Reaction::CreateReaction(this, REACTION_REACT_TO_WOOD, physics_object->GetPlayer(), 0);
	return result;
}

uint32_t DeadTree::SaveObject(LHOSFile& file, const MapCoords* coords)
{
	char text[200];
	char coordText[100];

	if (CheckAndSetSaved())
	{
		MapCoords        relative = (coords != NULL) ? (Pos - *coords) : Pos;
		GPlayer*         player = (GetPlayer() != NULL) ? GetPlayer() : GGame::g_game->GetNeutralPlayer();
		const GTreeInfo* info = GetTreeInfo();
		const char*      playerName = GPlayer::PlayerNameText[player->GetPlayerNumber()];
		sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_DEAD_TREE),
		        relative.ConvertToText(coordText), playerName, info - GTreeInfo::GetInfo(), GetLife(), GetXAngle(),
		        GetYAngle(), GetZAngle());
		GSetup::WriteToFile(this, file, text, strlen(text));
		return CheckAndSetSaved();
	}
	return false;
}

float DeadTree::GetWeight()
{
	float scale = GetScale();
	return (scale * scale * scale) * TreeInfo->weight;
}

SCRIPT_OBJECT_TYPE DeadTree::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_DEAD_TREE;
}

bool32_t DeadTree::Save(GameOSFile& file)
{
	if (Rock::Save(file))
	{
		file.WriteInfo(TreeInfo);
		WRITE_IT(file, WoodMultiplier);
		return true;
	}
	return false;
}

bool32_t DeadTree::Load(GameOSFile& file)
{
	if (Rock::Load(file))
	{
		file.ReadInfo((const GBaseInfo**)&TreeInfo);
		file.ReadIt(WoodMultiplier);
		return true;
	}
	return false;
}

FelledTree* FelledTree::Create(Tree* tree, Object* feller)
{
	if (tree == NULL || tree->Game3dObject == NULL)
	{
		return NULL;
	}
	float    height = tree->GetHeight() * 0.5f;
	float    speed = height * 0.4f;
	LHPoint  direction(tree->Pos.MetersX() - feller->Pos.MetersX(), 0.0f, tree->Pos.MetersZ() - feller->Pos.MetersZ());
	GPlayer* player = GGame::g_game->GetNeutralPlayer();
	FelledTree* felledTree = NEW(510) FelledTree(tree, player);
	if (felledTree != NULL)
	{
		float   heading = (direction.GetNorm() > 0.001f) ? heading_from_direction_vector(direction) : 0.0f;
		LHPoint velocity(sin(heading) * speed, 0.0f, -cos(heading) * speed);
		LHPoint up(0.0f, 1.0f, 0.0f);
		LHPoint angularVelocity = velocity ^ up;
		angularVelocity *= 1.0f / height;
		PhysicsObject* physicsObject =
			felledTree->InitialisePhysics(velocity, angularVelocity, feller, true, NULL).Physics;
		if (physicsObject != NULL)
		{
			physicsObject->Physics.AdjustToGroundLevel(false, true);
			physicsObject->Flags |= PHYSICS_OBJECT_FLAG_PUSHED;
			PhysicsObject::RaiseUntilNotIntersecting(&physicsObject);
			physicsObject->field_0x1a4 = 2;
			Reaction::CreateReaction(felledTree, REACTION_REACT_TO_WOOD, player, 0);
		}
	}
	return felledTree;
}

PHYSICS_CONSTANTS_TYPE FelledTree::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_TREE;
}

void FelledTree::SetUpPhysOb(PhysOb* phys_ob)
{
	SetUpPhysObAsATree(phys_ob, GetWeight(), GetHeight(), Get2DRadius(), GetScale());
}

Object* FelledTree::EndPhysics(PhysicsObject* physics_object, bool insert_back_into_map)
{
	return Fixed::EndPhysics(physics_object, insert_back_into_map);
}

void FelledTree::Draw()
{
	if (GetFireEffect() != NULL)
	{
		DrawObjectOnFire();
	}
	else
	{
		Game3DObject* object = Game3dObject;
		LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
		object->AddForDrawing(this);
	}
	Game3DObject* object = Game3dObject;
	LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
	object->AddForDrawing(this);
}

bool32_t DeadTree::CanBecomeAPhysicsObject()
{
	return true;
}

uint32_t DeadTree::GetCarriedTreeType()
{
	if (Game3dObject->GetMesh() == CarriedObject::Objects[CARRIED_OBJECT_WOOD]->GetMesh())
	{
		return CARRIED_TREE_TYPE_NONE;
	}
	if (Game3dObject->GetMesh() == CarriedObject::Objects[CARRIED_OBJECT_TREE_1]->GetMesh())
	{
		return CARRIED_TREE_TYPE_EVERGREEN;
	}
	if (Game3dObject->GetMesh() == CarriedObject::Objects[CARRIED_OBJECT_TREE_2]->GetMesh())
	{
		return CARRIED_TREE_TYPE_FRUIT;
	}
	if (Game3dObject->GetMesh() == CarriedObject::Objects[CARRIED_OBJECT_TREE_3]->GetMesh())
	{
		return CARRIED_TREE_TYPE_HARDWOOD;
	}
	return GetTreeInfo()->CarriedType;
}

float DeadTree::GetWoodValue()
{
	float scale = GetScale();
	return GetLife() * GetTreeInfo()->WoodValue * scale * scale * scale;
}
