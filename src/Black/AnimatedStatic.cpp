#include <re_common.h> /* For ARRAY_SIZE */

#include "AnimatedStatic.h"

#ifdef VERSION_BW1WCI
// BW1WCI 00cc9cb0 BW1MCI119 null
LH3DObject* BalistaUnused;
// BW1WCI 00cc9cac BW1MCI119 null
LH3DObject* BalistaTower;
// BW1WCI 00cc9ca8 BW1MCI119 null
LH3DObject* BalistaPivot;
// BW1WCI 00cc9ca4 BW1MCI119 null
LH3DObject* Balista;
#endif

#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "Feature.h"
#include "Game.h"               /* For class GGame */
#include "Object.h"             /* For class Object */
#include "AnimatedStaticInfo.h" /* For class GAnimatedStaticInfo */
#include "FeatureInfo.h"

#include <Lionhead/LH3DLib/development/EclairagePublic.h> /* For struct EclairagePublic */
#include <Lionhead/LH3DLib/development/LH3DAnim.h>        /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>      /* For LH3DIsland::GetColorAndSpecularWithFog */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>        /* For struct LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DTech.h>        /* For LH3DTech::g_game_time_inc */
#include <Lionhead/LH3DLib/development/PhysOb.h>          /* For struct PhysOb */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                  /* For NEW */
#include <Lionhead/LHLib/ver5.0/RPHolder.h>               /* For RPHolder::AddObject */

#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strlen */

#include "EditorPhysics.h" /* For EditorPhysics::PhysicsConstants */
#include "Game3DObject.h"  /* For class Game3DObject */
#include "GameOSFile.h"    /* For class GameOSFile */
#include "HelpSystem.h"    /* For HelpSystem::SendFOVObject */
#include "Interface.h"     /* For GInterface::SendObjectDrawCollision */
#include "Script.h"        /* For SCRIPT_FEATURE_COMMANDS_CREATE_ANIMATED_STATIC */
#include "Setup.h"         /* For GSetup::WriteToFile */

#ifdef VERSION_BW1WCI
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + 5)
#endif

GAnimatedStaticInfo GAnimatedStaticInfo::Infos[ANIMATED_STATIC_INFO_LAST];

static const float GATE_STONE_RISE_SCALE = 7.15f;

AnimatedStatic* AnimatedStatic::Create(const MapCoords& coords, const GAnimatedStaticInfo* info, float y_angle,
                                       float scale, float percent_built, bool32_t under_construction)
{
	AnimatedStatic* animated = NEW(34) AnimatedStatic(coords, info, y_angle, scale, percent_built, under_construction);
	if (animated != NULL)
	{
		GGame::g_game->GameLists.AnimatedStatics.Add(animated);
		animated->CallVirtualFunctionsForCreation(coords);
	}
	return animated;
}

bool AnimatedStatic::ChecksVerticesVObjects()
{
	return false;
}

bool AnimatedStatic::InteractsWithPhysicsObjects()
{
	int type = (const GAnimatedStaticInfo*)GetInfo() - GAnimatedStaticInfo::Infos;
	if (type >= 0 && (type <= ANIMATED_STATIC_INFO_PIPER_CAVE_ENTRANCE || type == ANIMATED_STATIC_INFO_PHONE_BOX))
	{
		return true;
	}
	return false;
}

void AnimatedStatic::SetUpPhysOb(PhysOb* physob)
{
	PHYSICS_CONSTANTS_TYPE type = GetPhysicsConstantsType();
	PhysicsData*           constants = &EditorPhysics::PhysicsConstants[type];
	physob->SetUpConstants(ANIMATED_STATIC_PHYSICS_MASS, constants, 0);
	physob->BuildFromMesh(GetCurrentPhysicsMesh());
}

LH3DMesh* AnimatedStatic::GetCurrentPhysicsMesh()
{
	MESH_LIST mesh;
	switch ((const GAnimatedStaticInfo*)GetInfo() - GAnimatedStaticInfo::Infos)
	{
	case ANIMATED_STATIC_INFO_NORS_GATE:
		mesh = State == STATE_OPEN ? MSH_NORS_GATE_PHYS_2 : MSH_NORS_GATE_PHYS_1;
		break;
	case ANIMATED_STATIC_INFO_GATE_STONE_PLINTH:
		if (State != STATE_OPEN && GateStones[0] != NULL)
		{
			mesh = GateStones[1] != NULL ? MSH_GATE_TOTEM_PLINTHE_PHYS_3 : MSH_GATE_TOTEM_PLINTHE_PHYS_2;
		}
		else
		{
			mesh = MSH_GATE_TOTEM_PLINTHE_PHYS_1;
		}
		break;
	case ANIMATED_STATIC_INFO_PIPER_CAVE_ENTRANCE:
		mesh = MSH_PIPER_ENTRANCE_PHYS_1;
		break;
	case ANIMATED_STATIC_INFO_PHONE_BOX:
		mesh = MSH_GATE_TOTEM_PLINTHE_PHYS_1;
		break;
	default:
		return NULL;
	}
	return LH3DMesh::GetPackedMesh(mesh);
}

static inline void SetPositionOnLandscape(LH3DObject* object, const MapCoords& coords, float y_angle, float scale)
{
	LHPoint point;
	GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(coords, point);
	point.y += LH3DIsland::GetAltitudeAndSetColorSpecular(coords, (unsigned long*)&object->color,
	                                                      (unsigned long*)&object->specular);
	object->LH3DObject::SetPosition(point, y_angle, scale);
}

void AnimatedStatic::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
#ifdef VERSION_BW1WCI
	BalistaXAngle = 0.0f;
	BalistaYAngle = 0.0f;
#endif
	Create3DObject();
	Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetMesh()), NULL, NULL);
	SetPositionOnLandscape(Game3dObject, coords, GetYAngle(), GetScale());
	Game3dObject->SetFootPrintOnTexture(true);
	Game3dObject->SetNeedSorting(true);
	Game3dObject->SetShadowOnTexture(false);
	InitialiseIsFixedForMapList();
	AllocateMultiChild();
	if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		InsertMapObject();
	}
	if (!IsBuilt())
	{
		Game3dObject->SetFootPrintOnTexture(true);
		Game3dObject->SetShadowOnTexture(false);
	}
	Game3dObject->SetCurrentAnim(LH3DAnim::GetPackedAnim(((const GAnimatedStaticInfo*)GetInfo())->Anim));
	for (int i = 0; i < ARRAY_SIZE(GateStones); i++)
	{
		if (GateStoneMeshes[i] != MSH_DUMMY)
		{
			AddGateStone(GateStoneMeshes[i]);
		}
	}
	if (IsGate())
	{
		Game3dObject->SetNeedSorting(false);
		for (int i = 0; i < ANIMATED_STATIC_GATE_LIGHT_COUNT; i++)
		{
			LHPoint point;
			if (i != 0)
			{
				point.x = ANIMATED_STATIC_GATE_LIGHT_OFFSET_X;
				point.y = ANIMATED_STATIC_GATE_LIGHT_OFFSET_Y;
				point.z = 0.0f;
			}
			else
			{
				point.x = -ANIMATED_STATIC_GATE_LIGHT_OFFSET_X;
				point.y = ANIMATED_STATIC_GATE_LIGHT_OFFSET_Y;
				point.z = 0.0f;
			}
			Game3dObject->matrix.TransformPoint(point);
			GateStones[i] = Game3DObject::Create(LH3DObject::STATIC);
			GateStones[i]->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_TOWNLIGHT), NULL, NULL);
			GateStones[i]->SetDynamicLighting(true);
			((LH3DObject*)GateStones[i])->SetPosition(point, 0.0f, 1.0f);
			EclairagePublic::Create(&GateStones[i]->matrix.GetPos(), 0);
		}
	}
#ifdef VERSION_BW1WCI
	if (IsBalista())
	{
		BalistaTower = LH3DObject::Create(LH3DObject::STATIC);
		BalistaTower->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_BALISTA_TOWER), NULL, NULL);
		BalistaTower->SetPosition(*(LHPoint*)&Game3dObject->matrix._41, GetYAngle(), GetScale());
		BalistaTower->SetDynamicLighting(true);
		BalistaPivot = LH3DObject::Create(LH3DObject::STATIC);
		BalistaPivot->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_BALISTA_PIVOT), NULL, NULL);
		BalistaPivot->SetPosition(*(LHPoint*)&Game3dObject->matrix._41, GetYAngle(), GetScale());
		BalistaPivot->SetDynamicLighting(true);
		Balista = LH3DObject::Create(LH3DObject::ANIMATED);
		Balista->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_BALISTA_BALISTA), NULL, NULL);
		Balista->SetCurrentAnim(LH3DAnim::GetPackedAnim(ANM_BALISTA_BALISTA_SHOOT));
		Balista->SetPosition(*(LHPoint*)&Game3dObject->matrix._41, GetYAngle(), GetScale());
		Balista->SetDynamicLighting(true);
	}
#endif
}

void AnimatedStatic::SetToZero()
{
	CollideData = NULL;
	State = STATE_CLOSED;
	for (int i = 0; i < ARRAY_SIZE(GateStones); i++)
	{
		GateStones[i] = NULL;
		GateStoneMeshes[i] = MSH_DUMMY;
	}
}

void AnimatedStatic::ToBeDeleted(bool32_t delete_now)
{
	GGame::g_game->GameLists.AnimatedStatics.Remove(this);
	Feature::ToBeDeleted(delete_now);
}

int AnimatedStatic::GetInfoFromText(char* text)
{
	int index = 0;
	for (GAnimatedStaticInfo* info = GAnimatedStaticInfo::Infos;
	     info < &GAnimatedStaticInfo::Infos[ANIMATED_STATIC_INFO_LAST]; info++)
	{
		if (_stricmp(text, info->GetInfoText()) == 0)
		{
			return index;
		}
		index++;
	}
	return ANIMATED_STATIC_INFO_LAST;
}

uint32_t AnimatedStatic::SaveObject(LHOSFile& file, const MapCoords* coords)
{
	char text[200];
	char infoText[100];
	char coordText[100];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords relative = (coords != NULL) ? (Pos - *coords) : Pos;
		float     scale = GetScale();
		float     yAngle = GetYAngle();
		sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_ANIMATED_STATIC),
		        relative.ConvertToText(coordText), GetInfoText(infoText), (int)(yAngle * ANIMATED_STATIC_SAVE_SCALE),
		        (int)(scale * ANIMATED_STATIC_SAVE_SCALE));
		GSetup::WriteToFile(this, file, text, strlen(text));
	}
	return saved;
}

int GetLastFrameTime(LH3DAnim* anim)
{
	return (anim->NumFrames - ANIMATED_STATIC_ANIM_END_FRAME_MARGIN) * anim->Duration / anim->NumFrames;
}

void AnimatedStatic::Draw()
{
#ifdef VERSION_BW1WCI
	LH3DObject* object = IsBalista() ? Balista : Game3dObject;
	LH3DAnim*   anim = object->GetCurrentAnim();
	long        time = object->GetCurrentCycleTime();
	if (State == STATE_OPEN || IsBalista())
	{
		time += LH3DTech::g_game_time_inc;
		long endTime = GetLastFrameTime(anim);
		if (time > endTime)
		{
			time = endTime;
		}
	}
	else
	{
		time -= LH3DTech::g_game_time_inc;
		if (time < 0)
		{
			time = 0;
		}
	}
	object->SetCurrentCycleTime(time);
#else
	long time = Game3dObject->GetCurrentCycleTime();
	if (State == STATE_OPEN)
	{
		time += LH3DTech::g_game_time_inc;
		long endTime = GetLastFrameTime(Game3dObject->GetCurrentAnim());
		if (time > endTime)
		{
			time = endTime;
		}
	}
	else
	{
		time -= LH3DTech::g_game_time_inc;
		if (time < 0)
		{
			time = 0;
		}
	}
	Game3dObject->SetCurrentCycleTime(time);
#endif
	LH3DIsland::GetColorAndSpecularWithFog(&Game3dObject->matrix.GetPos(), &Game3dObject->color,
	                                       &Game3dObject->specular);
	switch ((const GAnimatedStaticInfo*)GetInfo() - GAnimatedStaticInfo::Infos)
	{
	case ANIMATED_STATIC_INFO_NORS_GATE: {
		Game3dObject->AddForDrawing(this);
		bool32_t onScreen = LH3DObject::g_b_last_on_screen;
		if (onScreen)
		{
			for (int i = 0; i < ANIMATED_STATIC_GATE_LIGHT_COUNT; i++)
			{
				GateStones[i]->color = Game3dObject->color;
				GateStones[i]->specular = Game3dObject->specular;
				GateStones[i]->AddDrawing();
			}
		}
		LH3DObject::g_b_last_on_screen = onScreen;
		break;
	}
	case ANIMATED_STATIC_INFO_GATE_STONE_PLINTH: {
		Game3dObject->AddForDrawing(this);
		bool32_t onScreen = LH3DObject::g_b_last_on_screen;
		if (IsTransition())
		{
			for (int i = 0; i < ANIMATED_STATIC_GATE_STONE_COUNT; i++)
			{
				if (GateStones[i] != NULL)
				{
					float progress =
						(float)Game3dObject->GetCurrentCycleTime() /
						(float)(Game3dObject->GetCurrentAnim()->Duration - ANIMATED_STATIC_ANIM_CYCLE_END_MARGIN);
					LH3DMesh* stoneMesh = GateStones[i]->GetMesh();
					float     height = stoneMesh->BoundingBox.size.y * 2.0f;
					float     offset = height * i - GATE_STONE_RISE_SCALE * height * progress;
					GateStones[i]->matrix = Game3dObject->matrix;
					LH3DMesh* mesh = Game3dObject->GetMesh();
					GateStones[i]->matrix._42 +=
						mesh->BoundingBox.size.y * 2.0f + offset - ANIMATED_STATIC_GATE_STONE_SINK;
					GateStones[i]->AddForDrawing(NULL);
				}
			}
		}
		if (State == STATE_CLOSED)
		{
			for (int i = 0; i < ANIMATED_STATIC_GATE_STONE_COUNT; i++)
			{
				if (GateStones[i] != NULL)
				{
					float height = i * GateStones[i]->GetMesh()->BoundingBox.size.y * 2.0f;
					GateStones[i]->matrix = Game3dObject->matrix;
					LH3DMesh* mesh = Game3dObject->GetMesh();
					GateStones[i]->matrix._42 +=
						mesh->BoundingBox.size.y * 2.0f + height - ANIMATED_STATIC_GATE_STONE_SINK;
					GateStones[i]->SetSnowlevel(GateStones[i]->matrix.GetPos());
					GateStones[i]->color = Game3dObject->color;
					GateStones[i]->specular = Game3dObject->specular;
					GateStones[i]->AddDrawing();
					if (LH3DObject::g_b_last_on_screen)
					{
						GGame::g_game->help_system->SendFOVObject(this, LH3DObject::g_last_distance);
						if (LH3DObject::g_last_selected_box)
						{
							GGame::g_game->MyInterface()->SendObjectDrawCollision(this, 0, GateStones[i]);
						}
					}
				}
			}
		}
		LH3DObject::g_b_last_on_screen = onScreen;
		break;
	}
	case ANIMATED_STATIC_INFO_PIPER_CAVE_ENTRANCE:
	case ANIMATED_STATIC_INFO_PHONE_BOX:
		Game3dObject->AddForDrawing(this);
		break;
#ifdef VERSION_BW1WCI
	case ANIMATED_STATIC_INFO_BALISTA:
		if (BalistaPivot != NULL && BalistaTower != NULL && Balista != NULL)
		{
			unsigned long color;
			unsigned long specular;
			LH3DIsland::GetColorAndSpecular(&BalistaPivot->matrix.GetPos(), &color, &specular);
			BalistaTower->SetColorSpecular(color, specular);
			BalistaPivot->SetColorSpecular(color, specular);
			Balista->SetColorSpecular(color, specular);
			LHPoint pivotPos(0.0f, ANIMATED_STATIC_BALISTA_PIVOT_HEIGHT, 0.0f);
			BalistaTower->matrix.TransformPoint(pivotPos);
			BalistaPivot->SetPosition(pivotPos, GetYAngle() + BalistaYAngle, GetScale());
			BalistaPivot->AddDrawing();
			BalistaTower->AddDrawing();
			LHPoint balistaPos(ANIMATED_STATIC_BALISTA_OFFSET_X, ANIMATED_STATIC_BALISTA_OFFSET_Y,
			                   ANIMATED_STATIC_BALISTA_OFFSET_Z);
			BalistaTower->matrix.TransformPoint(balistaPos);
			Balista->SetPosition(balistaPos, GetYAngle() + BalistaYAngle, GetScale());
			Balista->matrix.RotateX(BalistaXAngle);
			Balista->SetCurrentCycleTime(time);
			Balista->AddDrawing();
		}
		break;
#endif
	}
}

bool32_t AnimatedStatic::Save(GameOSFile& file)
{
	if (MultiMapFixed::Save(file))
	{
		uint32_t count = ANIMATED_STATIC_GATE_STONE_COUNT;
		if (GameOSFile::WriteEnabled)
		{
			file.WriteIt(count);
			for (uint32_t i = 0; i < count; i++)
			{
				file.WriteIt(GateStoneMeshes[i]);
				if (!GameOSFile::WriteEnabled)
				{
					break;
				}
			}
		}
		file.WriteIt(State);
#ifdef VERSION_BW1WCI
		file.WriteIt(BalistaXAngle);
		file.WriteIt(BalistaYAngle);
#endif
		return true;
	}
	return false;
}

bool32_t AnimatedStatic::Load(GameOSFile& file)
{
	if (MultiMapFixed::Load(file))
	{
		if (GameOSFile::ReadEnabled)
		{
			uint32_t count;
			file.ReadIt(count);
			for (uint32_t i = 0; i < count; i++)
			{
				file.ReadIt(GateStoneMeshes[i]);
			}
		}
		file.ReadIt(State);
#ifdef VERSION_BW1WCI
		file.ReadIt(BalistaXAngle);
		file.ReadIt(BalistaYAngle);
#endif
		return true;
	}
	return false;
}

void AnimatedStatic::SetAnimatedState(STATE state)
{
#ifdef VERSION_BW1WCI
	if (IsBalista())
	{
		if (State != state)
		{
			Balista->SetCurrentCycleTime(0);
		}
		if (state == STATE_OPEN)
		{
			Balista->SetCurrentAnim(LH3DAnim::GetPackedAnim(ANM_BALISTA_BALISTA_SHOOT));
		}
		else
		{
			Balista->SetCurrentAnim(LH3DAnim::GetPackedAnim(ANM_BALISTA_BALISTA_PULLBACK));
		}
	}
#endif
	State = state;
}

bool32_t AnimatedStatic::IsTransition()
{
	long time = Game3dObject->GetCurrentCycleTime();
	if (State == STATE_CLOSED && time == GetLastFrameTime(Game3dObject->GetCurrentAnim()))
	{
		return true;
	}
	if (State == STATE_OPEN && time == 0)
	{
		return true;
	}
	if (time != 0 && time != GetLastFrameTime(Game3dObject->GetCurrentAnim()))
	{
		return true;
	}
	return false;
}

bool32_t AnimatedStatic::AddGateStone(MESH_LIST mesh)
{
	for (int i = 0; i < ANIMATED_STATIC_GATE_STONE_COUNT; i++)
	{
		if (GateStones[i] == NULL)
		{
			GateStones[i] = Game3DObject::Create(LH3DObject::STATIC);
			GateStones[i]->SetMesh(LH3DMesh::GetPackedMesh(mesh), NULL, NULL);
			GateStones[i]->SetDynamicLighting(true);
			GateStones[i]->SetNeedSorting(true);
			GateStoneMeshes[i] = mesh;
			return true;
		}
	}
	return false;
}

uint32_t AnimatedStatic::CountGateStones()
{
	uint32_t count = 0;
	for (uint32_t i = 0; i < ARRAY_SIZE(GateStoneMeshes); i++)
	{
		switch (GateStoneMeshes[i])
		{
		case MSH_O_GATE_TOTEM_APE:
			count += 1;
			break;
		case MSH_O_GATE_TOTEM_TIGER:
			count += 2;
			break;
		case MSH_O_GATE_TOTEM_COW:
			count += 4;
			break;
		}
	}
	return count;
}

AnimatedStatic::~AnimatedStatic()
{
	for (int i = 0; i < ARRAY_SIZE(GateStones); i++)
	{
		if (GateStones[i])
		{
			GateStones[i]->Release();
			GateStones[i] = NULL;
		}
	}
}

bool32_t AnimatedStatic::CreatureMustAvoid(Creature* creature)
{
	return true;
}

void AnimatedStatic::AddToRoutePlan(RPHolder* holder, Creature* creature, bool32_t update,
                                    void(__cdecl* add_function)(int, Point2D, float, int))
{
	LH3DBoundingBox* box = &Game3dObject->GetMesh()->BoundingBox;
	if (IsGate())
	{
		float    offset = 0.0f;
		float    step = GetScale() * box->size.x * 2.0f / ANIMATED_STATIC_GATE_ROUTE_POINTS;
		LHMatrix matrix;
		LHPoint  point;
		GetWorldMatrix(&matrix);
		for (int i = 0; i < ANIMATED_STATIC_GATE_ROUTE_POINTS; i++)
		{
			if (i & 1)
			{
				offset += step;
				point.x = offset;
				point.y = 0.0f;
				point.z = 0.0f;
			}
			else
			{
				point.x = -offset;
				point.y = 0.0f;
				point.z = 0.0f;
			}
			matrix.TransformPoint(point);
			if (State == STATE_OPEN && !IsTransition())
			{
				if (i > ANIMATED_STATIC_GATE_ROUTE_INNER_LAST)
				{
					if (add_function != NULL)
					{
						add_function((int)this, Point2D(point.x, point.z), ANIMATED_STATIC_ROUTE_RADIUS, update);
					}
					else
					{
						holder->AddObject((int)this, Point2D(point.x, point.z), ANIMATED_STATIC_ROUTE_RADIUS, update);
					}
				}
			}
			else
			{
				if (add_function != NULL)
				{
					add_function((int)this, Point2D(point.x, point.z), ANIMATED_STATIC_ROUTE_RADIUS, update);
				}
				else
				{
					holder->AddObject((int)this, Point2D(point.x, point.z), ANIMATED_STATIC_ROUTE_RADIUS, update);
				}
			}
		}
	}
	else
	{
		LHMatrix matrix;
		GetWorldMatrix(&matrix);
		float radius = box->DiagonalLength * ANIMATED_STATIC_ROUTE_DIAGONAL_SCALE;
		if (add_function != NULL)
		{
			add_function((int)this, Point2D(matrix._41, matrix._43), radius, update);
		}
		else
		{
			holder->AddObject((int)this, Point2D(matrix._41, matrix._43), radius, update);
		}
	}
}

bool32_t AnimatedStatic::IsGate()
{
	if (Game3dObject != NULL && Game3dObject->GetMesh() == LH3DMesh::GetPackedMesh(MSH_B_NORS_GATE))
	{
		return true;
	}
	return false;
}

#ifdef VERSION_BW1WCI
bool32_t AnimatedStatic::IsBalista()
{
	return (const GAnimatedStaticInfo*)GetInfo() - GAnimatedStaticInfo::Infos == ANIMATED_STATIC_INFO_BALISTA;
}
#endif
