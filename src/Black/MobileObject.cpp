#include "GameTimeConstants.h"
#include "MobileObject.h"

#include <stdio.h>

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>   /* For LH3DMesh::GetPackedMesh */
#include <Lionhead/LH3DLib/development/LHMatrix.h>   /* For struct LHMatrix */
#include <Lionhead/LHLib/ver5.0/LHWin.h>             /* For operator new(size_t, const char*, uint32_t) */

#include "ColourConstants.h" /* For White */
#include "Creature.h"        /* For class Creed */
#include "DataPath.h"
#include "EditorPhysics.h" /* For enum PHYSICS_CONSTANTS_TYPE */
#include "Field.h"         /* For class Field */
#include "FieldCrop.h"     /* For class FieldCrop */
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "Landscape.h"
#include "MobileObjectInfo.h"
#include "MobileStatic.h"
#include "PhysicsObject.h"
#include "Pot.h"
#include "PotInfo.h"
#include "InterfaceStatus.h"
#include "ScriptedCamera.h"
#include "Poo.h"
#include "Setup.h"
#include "re_common.h"

GMobileObjectInfo GMobileObjectInfo::InfoList[MOBILE_OBJECT_INFO_LAST];

static uint32_t g_MobileObjectCheckSum;

MobileObject::MobileObject(const MapCoords& coords, const GMobileObjectInfo* info, Object* parent, float y_angle,
                           float scale)
	: Mobile(coords, info)
{
	object = parent;
	SetYAngle(y_angle);
	ZAngle = 0.0f;
	XAngle = 0.0f;
	SetScale(scale);
	GGame::g_game->GameLists.MobileObjects.Add(this);
	Path = NULL;
}

MobileObject::~MobileObject()
{
	if (Path != NULL)
	{
		delete Path;
	}
}

void MobileObject::ToBeDeleted(int param_1)
{
	GGame::g_game->GameLists.MobileObjects.Remove(this);
	if (GGame::g_game->GameLists.objects.Contains(this))
	{
		GGame::g_game->GameLists.objects.Remove(this);
	}
	Object::ToBeDeleted(param_1);
}

void MobileObject::AddMobileObjectCheckSum()
{
	for (LHLinkedNode<MobileObject*>* node = GGame::g_game->GameLists.MobileObjects.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		MobileObject* mobileObject = node->payload;
		g_MobileObjectCheckSum += mobileObject->Pos.x;
		g_MobileObjectCheckSum += mobileObject->Pos.z;
	}
}

MobileObject* MobileObject::Create(const MapCoords& coords, const GMobileObjectInfo* info, Object* parent,
                                   float y_angle, float scale)
{
	MobileObject* mobileObject;
	if (info == &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_LUMP_OF_POO])
	{
		mobileObject = new ("C:\\dev\\MP\\Black\\MobileObject.cpp", 97) Poo(coords, info, parent, y_angle, scale);
	}
	else if (info->MobileObjectType == MOBILE_OBJECT_INFO_CROP)
	{
		mobileObject =
			new ("C:\\dev\\MP\\Black\\MobileObject.cpp", 101) FieldCrop(coords, info, parent, y_angle, scale);
	}
	else if (info->MobileObjectType == MOBILE_OBJECT_INFO_CREED)
	{
		mobileObject = new ("C:\\dev\\MP\\Black\\MobileObject.cpp", 105) Creed(coords, info, parent, y_angle, scale);
	}
	else
	{
		mobileObject =
			new ("C:\\dev\\MP\\Black\\MobileObject.cpp", 109) MobileObject(coords, info, parent, y_angle, scale);
	}
	if (mobileObject != NULL)
	{
		mobileObject->CallVirtualFunctionsForCreation(coords);
	}
	return mobileObject;
}

HOLD_TYPE MobileObject::GetHoldType()
{
	return HOLD_TYPE_SIDE;
}

float MobileObject::GetHoldLoweringMultiplier()
{
	if (GetHoldType() == HOLD_TYPE_SIDE)
	{
		return 0.7f;
	}
	return -0.3f;
}

void MobileObject::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	Create3DObject();
	InitialiseIsFixedForMapList();
	Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetMesh()), NULL, NULL);
	LH3DMesh* mesh = Game3dObject->GetMesh();
	mesh->flags |= LH3D_MESH_FLAGS_UNKNOWN_15;
	Game3dObject->SetPosition(Pos, GetXAngle(), GetYAngle(), GetZAngle(), GetScale());
	if ((Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE) == 0 &&
	    (GameThing::Flags & (GAME_THING_FLAG_UNAVAILABLE | GAME_THING_FLAG_PSYS_FLYING)) == 0)
	{
		InsertMapObject();
	}
}

void MobileObject::Create3DObject()
{
	Object::Create3DObject();
	Game3dObject->SetShadowOnTexture(1);
}

GPlayer* MobileObject::GetPlayer()
{
	return &GGame::g_game->players[GGame::g_game->NeutralPlayerIndex];
}

void MobileObject::InsertMapObjectToCell(MapCell* cell)
{
	Object::InsertMapObjectToCell(cell);
}

void MobileObject::RemoveMapObjectFromCell(MapCell* cell)
{
	Object::RemoveMapObjectFromCell(cell);
}

static inline bool IsSamePosition(const MapCoords& a, const MapCoords& b)
{
	return a.WholeX() == b.WholeX() && a.WholeZ() == b.WholeZ() && a.Altitude() == b.Altitude();
}

uint32_t MobileObject::SaveObject(LHOSFile& file, const MapCoords& origin)
{
	char          text[0xc8];
	char          coordText[0x64];
	MobileObject* other;
	float         scale;

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords relative = (&origin != NULL) ? (Pos - origin) : Pos;
		if (object.Get() == NULL)
		{
			scale = GetScale();
			float yAngle = GetYAngle();
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_MOBILEOBJECT),
			        relative.ConvertToText(coordText), GetInfo() - GMobileObjectInfo::GetInfo(),
			        (int)(yAngle * 1000.0f), (int)(scale * 1000.0f));
			GSetup::WriteToFile(this, file, text, strlen(text));
			other = dynamic_cast<MobileObject*>(Pos.FindType(OBJECT_TYPE_MOBILE_OBJECT, NULL));
			while (other != NULL)
			{
				if (IsSamePosition(Pos, other->Pos) && other != this && GetInfo() == other->GetInfo())
				{
					other->CheckAndSetSaved();
				}
				other = dynamic_cast<MobileObject*>(Pos.FindType(OBJECT_TYPE_MOBILE_OBJECT, other));
			}
		}
		else
		{
			return 0;
		}
	}
	return saved;
}

void MobileObject::AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
                                  void(__cdecl* add_function)(int object_id, Point2D position, float radius,
                                                              int update))
{
	SimpleAddToRoutePlan(holder, creature, update, add_function);
}

uint32_t MobileObject::GetCreatureBeliefType()
{
	switch (GetInfo()->MobileObjectType)
	{
	case MOBILE_OBJECT_INFO_MAGIC_FOOD:
		return CREATURE_BELIEF_TYPE_MAGIC_FOOD;
	case MOBILE_OBJECT_INFO_LUMP_OF_POO:
		return CREATURE_BELIEF_TYPE_POO;
	}
	return CREATURE_BELIEF_TYPE_MOBILE_OBJECT;
}

void MobileObject::SetXYZAngles(float x_angle, float y_angle, float z_angle)
{
	bool32_t inMap = IsObjectInMap();
	if (inMap)
	{
		RemoveMapObject();
	}
	XAngle = x_angle;
	SetYJustAngle(y_angle);
	ZAngle = z_angle;
	if (Game3dObject != NULL)
	{
		Game3dObject->SetPosition(Pos, x_angle, y_angle, z_angle, GetScale());
	}
	if (inMap)
	{
		InsertMapObject();
	}
}

void MobileObject::SetXYZAnglesAndScale(float x_angle, float y_angle, float z_angle, float scale)
{
	bool32_t inMap = IsObjectInMap();
	if (inMap)
	{
		RemoveMapObject();
	}
	XAngle = x_angle;
	SetYJustAngle(y_angle);
	ZAngle = z_angle;
	SetJustScale(scale);
	if (Game3dObject != NULL)
	{
		Game3dObject->SetPosition(Pos, x_angle, y_angle, z_angle, scale);
	}
	if (inMap)
	{
		InsertMapObject();
	}
}

void MobileObject::GetWorldMatrix(LHMatrix* matrix)
{
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, pos);
	float scale = GetScale();
	if (scale != 1.0f)
	{
		matrix->SetYXZMatrixOnly(GetYAngle(), GetXAngle(), GetZAngle());
		matrix->PreScale(scale, scale, scale);
		matrix->SetTranslateOnly(pos);
		return;
	}
	matrix->SetYXZMatrixOnly(GetYAngle(), GetXAngle(), GetZAngle());
	matrix->SetTranslateOnly(pos);
}

int MobileObject::SetupMoveAlongPath(SCRIPT_PATH path, float start, float end, int reverse)
{
	if (!GGame::g_game->GameLists.objects.Contains(this))
	{
		GGame::g_game->GameLists.objects.Add(this);
	}
	Path = new ("C:\\dev\\MP\\Black\\MobileObject.cpp", 312) DataPath();
	Path->scripted_camera = ScriptedCamera::Create(path);
	Path->field_0x1c = end;
	Path->field_0x20 = reverse;
	Path->field_0x28 = 100.0f;
	Path->field_0x2c = 1.0f;
	Path->field_0x24 = (float)Path->scripted_camera->field_0x4->way->NumFrames * start;
	return 1;
}

uint32_t MobileObject::MoveAlongPath()
{
	LHPoint         position;
	LHPoint         unused;
	ScriptedCamera* camera;
	int             index;
	if (Path->field_0x20)
	{
		index = (int)Path->field_0x24;
		camera = Path->scripted_camera;
		if (index < 0)
		{
			index = 0;
		}
		else if (index >= camera->field_0x4->way->NumFrames)
		{
			index = camera->field_0x4->way->NumFrames;
		}
		camera->field_0x4->GetPosAtTime(index, &unused);
		if (&position != NULL)
		{
			camera->field_0x8->way->GetPosAtSegment(camera->field_0x4->field_0x0, camera->field_0x4->field_0x204,
			                                        &position);
		}
	}
	else
	{
		index = (int)((float)Path->scripted_camera->GetDuration() - Path->field_0x24);
		camera = Path->scripted_camera;
		if (index < 0)
		{
			index = 0;
		}
		else if (index >= camera->field_0x4->way->NumFrames)
		{
			index = camera->field_0x4->way->NumFrames;
		}
		camera->field_0x4->GetPosAtTime(index, &unused);
		if (&position != NULL)
		{
			camera->field_0x8->way->GetPosAtSegment(camera->field_0x4->field_0x0, camera->field_0x4->field_0x204,
			                                        &position);
		}
	}
	if (GetWalkPathPercentage() < Path->field_0x1c)
	{
		Path->field_0x24 += Path->field_0x28;
		if ((float)Path->scripted_camera->field_0x4->way->NumFrames < Path->field_0x24)
		{
			Path->field_0x24 = (float)Path->scripted_camera->field_0x4->way->NumFrames;
		}
		MapCoords coords;
		GLandscape::ConvertLandscapePointToMapCoord(position, coords);
		SetPos(coords);
		Game3dObject->SetPosition(coords, 0.0f, 0.0f, 0.0f, 1.0f);
		return 1;
	}
	GGame::g_game->GameLists.objects.Remove(this);
	return 1;
}

int MobileObject::HasReachedPathPercentage(float percentage)
{
	if (Path == NULL)
	{
		return 1;
	}
	if (GetWalkPathPercentage() >= percentage)
	{
		return 1;
	}
	return 0;
}

float MobileObject::GetWalkPathPercentage()
{
	return Path->field_0x24 / (float)Path->scripted_camera->field_0x4->way->NumFrames;
}

int MobileObject::HasFinishedPath()
{
	return HasReachedPathPercentage(Path->field_0x1c);
}

uint32_t Poo::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_POO;
}

void Poo::InsertMapObject()
{
	Object::InsertMapObject();
}

bool MobileObject::IsPoisoned()
{
	return info == &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_TOADSTOOL] ? true : false;
}

uint32_t MobileObject::GetPhysicsConstantsType()
{
	if (info == &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_CHAMPI])
	{
		return PHYSICS_CONSTANTS_TYPE_CHAMPI;
	}
	if (info == &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_MAGIC_MUSHROOM])
	{
		return PHYSICS_CONSTANTS_TYPE_MAGIC_MUSHROOM;
	}
	if (info == &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_TOADSTOOL])
	{
		return PHYSICS_CONSTANTS_TYPE_TOADSTOOL;
	}
	return Object::GetPhysicsConstantsType();
}

void MobileObject::ReactToPhysicsImpact(PhysicsObject* physics_object, bool unused)
{
	if (info == &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_CHAMPI] ||
	    info == &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_MAGIC_MUSHROOM] ||
	    info == &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_TOADSTOOL])
	{
		Object*           hitter = physics_object->GetGameObjectWhoHitMe();
		PhysicsObjectHit* hit = physics_object->field_0x20;
		if (hitter != NULL && hitter->IsResourceStore(GetResourceType()))
		{
			hitter->DeleteObjectAndTakeResource(this, hit != NULL ? hit->status : NULL);
		}
	}
}

bool32_t MobileObject::CanBecomeAPhysicsObject()
{
	return true;
}

void MobileObject::PhysicsEditorCreate(bool32_t keep_altitude)
{
	if (CanBecomeAPhysicsObject())
	{
		LHPoint velocity;
		velocity.x = 0.0f;
		velocity.y = 0.0f;
		velocity.z = 0.0f;
		if (info != &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_CHAMPI] &&
		    info != &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_MAGIC_MUSHROOM] &&
		    info != &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_TOADSTOOL])
		{
			PhysicsObject* physicsObject = InitialisePhysics(velocity, velocity, NULL, true, NULL).Physics;
			if (physicsObject != NULL)
			{
				if (!keep_altitude)
				{
					physicsObject->Physics.AdjustToGroundLevel(false, true);
				}
				PhysicsObject::RaiseUntilNotIntersecting(&physicsObject);
			}
		}
		else
		{
			Pos.altitude = 0.0f;
		}
	}
}

SCRIPT_OBJECT_TYPE MobileObject::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_MOBILE_OBJECT;
}

uint32_t MobileObject::ValidToApplyThisToObject(GInterfaceStatus* status, Object* target)
{
	if (target != NULL && target->IsResourceStore(GetResourceType()))
	{
		MOBILE_OBJECT_INFO type = GetInfo()->MobileObjectType;
		if (type == MOBILE_OBJECT_INFO_CHAMPI || type == MOBILE_OBJECT_INFO_MAGIC_MUSHROOM ||
		    type == MOBILE_OBJECT_INFO_TOADSTOOL)
		{
			return 1;
		}
	}
	return 0;
}

uint32_t MobileObject::ApplyThisToObject(GInterfaceStatus* status, Object* target, GestureSystemPacketData* packet)
{
	if (target != NULL && target->DeleteObjectAndTakeResource(this, status))
	{
		return OBJECT_APPLY_RESULT_RESOURCE_TAKEN;
	}
	return OBJECT_APPLY_RESULT_NONE;
}

int MobileObject::GetDefaultResource()
{
	const GMobileObjectInfo* mobileInfo = GetInfo();
	MOBILE_OBJECT_INFO       type = mobileInfo->MobileObjectType;
	if (type == MOBILE_OBJECT_INFO_CHAMPI || type == MOBILE_OBJECT_INFO_MAGIC_MUSHROOM ||
	    type == MOBILE_OBJECT_INFO_TOADSTOOL)
	{
		return (int)mobileInfo->FoodValue;
	}
	return 0;
}

RESOURCE_TYPE MobileObject::GetResourceType()
{
	MOBILE_OBJECT_INFO type = GetInfo()->MobileObjectType;
	if (type == MOBILE_OBJECT_INFO_CHAMPI || type == MOBILE_OBJECT_INFO_MAGIC_MUSHROOM ||
	    type == MOBILE_OBJECT_INFO_TOADSTOOL)
	{
		return RESOURCE_TYPE_FOOD;
	}
	return RESOURCE_TYPE_NONE;
}

uint32_t MobileObject::Save(GameOSFile& file)
{
	if (Mobile::Save(file))
	{
		file.WritePtr(object.Get());
		// TODO: GameOSFile has no float overloads; the angles are saved as raw 32-bit words
		WRITE_SAFE(file, (uint32_t&)XAngle);
		WRITE_SAFE(file, (uint32_t&)ZAngle);
		file.WritePtr(Path);
		return 1;
	}
	return 0;
}

uint32_t MobileObject::Load(GameOSFile& file)
{
	if (Mobile::Load(file))
	{
		file.ReadPtr((GameThing**)&object);
		file.ReadSafe((uint32_t&)XAngle);
		file.ReadSafe((uint32_t&)ZAngle);
		file.ReadPtr((GameThing**)&Path);
		return 1;
	}
	return 0;
}

// FieldCrop (and some Poo) methods were written in this file, not FieldCrop.cpp: FieldCrop::Create passes
// __FILE__ "C:\dev\MP\Black\MobileObject.cpp" line 634 to operator new.
// Additionally, if these functions were inlined in a header, GameOSFile.obj and FieldCrop.obj would be
// linked before MobileObject.obj so they wouldn't show up here.
// GameOSFile.obj emits the FieldCrop vtable, yet only PhysicsEditorCreate/GetSaveType/GetDebugText/dtor have copies
// there, so only those are inline. BW1M119 interleaves FieldCrop, Poo and MobileObject in the same order.

HOLD_TYPE FieldCrop::GetHoldType()
{
	return HOLD_TYPE_SIDE;
}

FieldCrop::FieldCrop(const MapCoords& coords, const GMobileObjectInfo* info, Object* field, float y_angle, float scale)
	: MobileObject(coords, info, field, y_angle, scale)
{
	FieldCrop::SetLife(scale);
}

FieldCrop::~FieldCrop() {}

void FieldCrop::ToBeDeleted(int delete_now)
{
	RemoveFromField();
	MobileObject::ToBeDeleted(delete_now);
}

FieldCrop* FieldCrop::Create(const MapCoords& coords, const GMobileObjectInfo* info, Object* field, float y_angle,
                             float scale)
{
	FieldCrop* crop = new ("C:\\dev\\MP\\Black\\MobileObject.cpp", 634) FieldCrop(coords, info, field, y_angle, scale);
	if (crop != NULL)
	{
		crop->CallVirtualFunctionsForCreation(coords);
		crop->Game3dObject->SetDynamicLighting(0);
		crop->Game3dObject->SetShadowOnTextureChroma(0);
		crop->Game3dObject->SetShadowOnTexture(0);
		crop->Game3dObject->SetCastDynamicShadow(0);
		scale = crop->GetScale();
		y_angle = crop->GetYAngle();
		LH3DObject* object3d = crop->Game3dObject;
		LHPoint     pos;
		GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
		object3d->SetPosition(pos, y_angle, scale);
		crop->Game3dObject->SetPaper(1);
	}
	return crop;
}

Field* FieldCrop::GetField()
{
	return dynamic_cast<Field*>(object.Get());
}

float FieldCrop::GetFoodAmount()
{
	return GetLife() * GetInfo()->FoodValue;
}

float FieldCrop::TakeFood(EffectValues& effect)
{
	if (GetLife() < 1.0f && IsPlacedInField())
	{
		float before = GetFoodAmount();
		ApplyEffect(effect, 0);
		if (IsAvailable())
		{
			return GetFoodAmount() - before;
		}
		SetScale(GetLife());
	}
	return 0.0f;
}

void FieldCrop::RemoveFromFieldAndDelete(int unused)
{
	RemoveFromField();
}

void FieldCrop::SetLife(float life)
{
	if (life <= 0.0f)
	{
		ToBeDeleted(0);
		return;
	}
	Object::SetLife(life);
	SetScale(GetLife() * GetInfo()->field_0x110);
}

void FieldCrop::RemoveFromField()
{
	GetField();
}

void FieldCrop::RemoveMapObject()
{
	Object::RemoveMapObject();
}

void FieldCrop::InsertMapObject()
{
	Object::InsertMapObject();
}

bool32_t FieldCrop::IsFunctional()
{
	return IsAvailable();
}

bool32_t FieldCrop::IsPlacedInField()
{
	return GetField() != NULL && IsObjectInMap();
}

uint32_t FieldCrop::ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
                                        GestureSystemPacketData* packet)
{
	ThrowObjectFromHand(status, false);
	return OBJECT_APPLY_RESULT_THROWN;
}

bool32_t FieldCrop::CanBecomeAPhysicsObject()
{
	return true;
}

uint32_t FieldCrop::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_CROP;
}

void FieldCrop::SetUpPhysOb(PhysOb* phys_ob)
{
	SetUpPhysObAsATree(phys_ob, GetWeight(), GetHeight(), Get2DRadius(), GetScale());
}

bool FieldCrop::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t FieldCrop::IsARootedObject()
{
	return true;
}

uint32_t FieldCrop::ValidToApplyThisToObject(GInterfaceStatus* status, Object* target)
{
	if (target != NULL && target->IsResourceStore(RESOURCE_TYPE_FOOD))
	{
		return 1;
	}
	return 0;
}

uint32_t FieldCrop::ApplyThisToObject(GInterfaceStatus* status, Object* target, GestureSystemPacketData* packet)
{
	if (target != NULL && target->DeleteObjectAndTakeResource(this, status))
	{
		return OBJECT_APPLY_RESULT_RESOURCE_TAKEN;
	}
	return OBJECT_APPLY_RESULT_NONE;
}

SCRIPT_OBJECT_TYPE Poo::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_POO;
}

HOLD_TYPE Poo::GetHoldType()
{
	return HOLD_TYPE_ABOVE;
}

bool32_t FieldCrop::InterfaceSetInMagicHand(GInterfaceStatus* status)
{
	const GPotInfo* potInfo = &GPotInfo::GetInfo()[POT_INFO_HAND_FOOD];
	unsigned long   resource = (long)potInfo->GetResourceValue();
	Pot*            pot = Pot::Create(Pos, potInfo, resource, NULL, GetTown(), 0, 0.0f, 1.0f, 0);
	if (pot != NULL)
	{
		status->PlaceObjectInMagicHand(pot);
	}
	ToBeDeleted(0);
	return false;
}

static inline bool IsNotControlledByScript(const GameThingWithPos* thing)
{
	return ((uint16_t)~thing->Flags >> 10) & 1;
}

bool32_t FieldCrop::CreatureMustAvoid(Creature* creature)
{
	if (creature != NULL && IsNotControlledByScript(creature) && IsOnFire())
	{
		return true;
	}
	return false;
}
