#include "CellSize.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "Landscape.h"

#include "ColourConstants.h" /* For White */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>  /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DObject.h>  /* For LH3DObject */
#include <Lionhead/LH3DLib/development/LH3DRender.h>  /* For LH3DRender */
#include <Lionhead/LH3DLib/development/LH3DSprite.h>  /* For struct LH3DSprite */
#include <Lionhead/LH3DLib/development/LH3DTech.h>    /* For LH3DTech */
#include <Lionhead/LH3DLib/development/LH3DZSorter.h> /* For LH3DZSorter */
#include <Lionhead/LH3DLib/development/Water.h>       /* For GWater */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>           /* For LHSys */
#include <Lionhead/LHLib/ver5.0/LHWin.h>              /* For NEW */

#include <chlasm/AllMeshes.h> /* For MSH_O_LIGHT_BULB */
#include <chlasm/Enum.h>      /* For IMMERSION_EFFECT_TYPE_HAND_HIT_INFLUENCE */
#include <chlasm/LHSample.h>  /* For LH_SAMPLE_G_HANDTHROUGHINFLUENCE_01 */

#include <Lionhead/LH3DLib/development/DynamicLightAndShadow.h> /* For DynamicLightAndShadow */
#include <Lionhead/LH3DLib/development/EclairagePublic.h>       /* For EclairagePublic */
#include <Lionhead/LH3DLib/development/LH3DAtmos.h>             /* For LH3DAtmos */
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h>     /* For LH3DComplexObject */
#include <Lionhead/LH3DLib/development/LH3DDivers.h>            /* For ClearLightLikeHand */
#include <Lionhead/LH3DLib/development/LH3DLandscape.h>         /* For LH3DLandscape */
#include <Lionhead/LH3DLib/development/LH3DMaterial.h>          /* For struct LH3DMaterial */
#include <Lionhead/LH3DLib/development/LH3DMem.h>               /* For LH3DMem */
#include <Lionhead/LH3DLib/development/LH3DSky.h>               /* For LH3DSky */
#include <Lionhead/LH3DLib/development/LH3DStorm.h>             /* For LH3DStorm */
#include <Lionhead/LH3DLib/development/LH3DTexture.h>           /* For struct LH3DTexture */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>                    /* For LHFileLength */

#include "Camera.h"
#include "ControlHand.h"
#include "Game.h"
#include "Interface.h"
#include <Lionhead/LH3DLib/development/DansLesNuages.h>     /* For DansLesNuages */
#include <Lionhead/LH3DLib/development/Eureka.h>            /* For Eureka */
#include <Lionhead/LH3DLib/development/EvilOrAngel.h>       /* For EvilOrAngel */
#include <Lionhead/LH3DLib/development/FallingRoot.h>       /* For FallingRoot */
#include <Lionhead/LH3DLib/development/Fish.h>              /* For FishRush */
#include <Lionhead/LH3DLib/development/HowManyPeople.h>     /* For HowManyPeople */
#include <Lionhead/LH3DLib/development/LH3DAnim.h>          /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DDynamicShadow.h> /* For LH3DDynamicShadow */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>          /* For struct LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DMist.h>          /* For LH3DMist */
#include <Lionhead/LH3DLib/development/LH3DSubMesh.h>       /* For struct LH3DSubMesh */
#include <Lionhead/LH3DLib/development/LH3DWater.h>         /* For LH3DWater */
#include <Lionhead/LH3DLib/development/LH3DWetFeet.h>       /* For LH3DWetFeet */
#include <Lionhead/LH3DLib/development/LHPlane.h>           /* For struct LHPlane */
#include <Lionhead/LH3DLib/development/LHRandom.h>          /* For Random */
#include <Lionhead/LH3DLib/development/RootsPile.h>         /* For RootsPile */
#include <Lionhead/LH3DLib/development/SmokyStuff.h>        /* For SmokyStuff */
#include <Lionhead/LH3DLib/development/SuperVillager.h>     /* For SuperVillager */
#include <Lionhead/LH3DLib/development/TemporaryShadow.h>   /* For TemporaryShadow */
#include <Lionhead/LH3DLib/development/TouchMyEdge.h>       /* For TouchMyEdge */
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h>   /* For LH_SamplePlayOptions */

#include "Audio.h"
#include "Bookmark.h"
#include "Citadel.h"
#include "CitadelHeart.h"
#include "Creature.h"
#include "Creature3D.h"
#include "CreaturePhysical.h"
#include "Global.h"
#include "HelpSystem.h"
#include "InterfaceStatus.h"
#include "Intro.h"
#include "JCGameBlock.h"
#include "JCMisc.h"
#include "MagicVortex.h"
#include "PhysicsObject.h"
#include "Player.h"
#include "Reward.h"
#include "StoragePit.h"
#include "Town.h"
#include "Tree.h"
#include "Utils.h"
#include "Waterfall.h"
#include "Whale.h"
#include "Windmill.h"
#include "LandAlignement.h"
#include "LandFeature.h"
#include "RoutePlan.h"
#include "SoundMap.h"
#include "StreetLantern.h"
#include "Game3DObject.h"
#include "GameInfo.h"
#include "Object.h"
#include "PCInput.h"

// BW1W120 00eb9948 BW1M119 011f38c0 (LHCombined Release)
extern long g_bulb_index;
// BW1W120 00e9a100 BW1M119 012d35ec (LHCombined Release)
extern LHPoint g_pos_hand;
// BW1W120 00e9a110 BW1M119 012d35f8 (LHCombined Release)
extern LHPoint g_wind_hand;
// BW1W120 00e9a124 BW1M119 012d35e8 (LHCombined Release)
extern float g_wind_hand_power;
// BW1W120 00e9fe78 BW1M119 012b1aa8 (LHCombined Release)
extern LHPoint special_jc_mouse_pos;
// BW1W120 00ec81bc BW1M119 012d1f4c (LHCombined Release)
extern int g_caca_object_processed;
// BW1W120 00ea1ab4 BW1M119 012b3718 (LHCombined Release)
extern LH3DMaterial* g_cool_effect_mat;
// BW1W120 00d13f30 BW1M119 null
extern LHPoint HeldObjectPos;
// BW1W120 00d189d8 BW1M119 null
extern GameBlock* GameBlocks[LAND_BLOCKS_SIDE][LAND_BLOCKS_SIDE];
// BW1W120 00d199e0 BW1M119 null
extern GameBlock GameBlockEverywhere;
// BW1W120 00d19c34 BW1M119 null
extern bool32_t IntroActive;

#ifndef VERSION_BW1WCI
class PetitNavire
{
public:
	// BW1W120 00d19cb4 BW1M119 null
	static PetitNavire* Current;

	// BW1W120 005dff20 BW1M119 01379010
	void PreDraw();
	// BW1W120 005e03f0 BW1M119 01377e30
	void PostDraw();
};
#endif

// BW1W120 005e3f50 BW1M119 null
bool32_t IsNight();
// BW1W120 005e3f70 BW1M119 013822a0
void DrawHandGlowOnWater(LHPoint pos, unsigned long colour);
// BW1W120 005e55d0 BW1M119 01381830
bool32_t LineIntersectPlane(LHPoint* from, LHPoint* to, LHPoint* result);
// BW1W120 005e5830 BW1M119 0106ec40
void SetLight();
// BW1W120 005e5b90 BW1M119 null
bool32_t __fastcall GetLHPointFromScreenCoord(GLandscape* landscape, Point2D* coord, LHPoint* point, float* depth);
// BW1W120 005e5cb0 BW1M119 null
LH3DColor GetDebugColour();
// BW1W120 005e5cd0 BW1M119 010484f0
void ProcessAllObjectsOnCells();

class Desintegration;

#define HAND_GLOW_SIZE                60.0f
#define HAND_GLOW_MARGIN              10.0f
#define HAND_GLOW_MAX_ALTITUDE        5
#define HAND_GLOW_COLOUR              0x00ff8040
#define HAND_GLOW_BLEND               64
#define HAND_GLOW_MAX_ALPHA           190
#define HAND_GLOW_MIN_LIGHT_ALPHA     0.01f
#define HAND_WIND_SCALE               10.0f
#define HAND_WIND_POWER_MIN           0.5f
#define HAND_WIND_POWER_MAX           5.0f
#define HAND_SIZE                     173.52948f
#define HAND_LIGHT_ALTITUDE           10.0f
#define HAND_SUN_DISTANCE             3.0f
#define HAND_UNDER_WATER_COLOUR       0x65a0a0a0
#define HELD_OBJECT_DISTANCE_SCALE    1.5f
#define CREATURE_UNDER_WATER_COLOUR   0x65a0a0d0
#define CREATURE_UNDER_WATER_SPECULAR 0x30
#define CREATURE_UNDER_WATER_ALTITUDE 6.0f
#define CREATURE_UNDER_WATER_MAX_FIZZ 0.2f
#define SWIMMER_COLOUR                0xff303070
#define SWIMMER_CIRCLE_BONE           5
#define SWIMMER_CIRCLE_ALTITUDE       0.05f
#define SWIMMER_CIRCLE_FRAME          48
#define WATER_CIRCLE_SPEED            (0.4f / 33.0f)
#define LIGHT_HAND_LEVELS             48.0f
#define NIGHT_BRIGHTNESS              120
#define NIGHT_BRIGHTNESS_RANGE        15.0f
#define NIGHT_SKY_TYPE                1.5
#define DRAW_LIST_REBUILD_TURNS       10
#define NEAREST_STORAGE_PIT_DISTANCE  99990.0f
#define DESINTEGRATION_ALPHA_REF      10
#define DESINTEGRATION_U_SCALE        2.0f
#define DESINTEGRATION_V_SPEED        0.7
#define DESINTEGRATION_V_SCALE        1.7f

float           HandRadius = 1.0f;
static int      LightHandSize = 12;
static int      Unused = 0;
int             HandUnknown = 0;
static bool32_t HandIsOverLand = false;
static uint8_t* LightHand = NULL;
static float    LightHandAlpha = 0.0f;

Object*  GLandscape::DrawObjects[GLANDSCAPE_MAX_DRAW_OBJECTS];
uint32_t GLandscape::DrawObjectActive[GLANDSCAPE_MAX_DRAW_OBJECTS];

static LHPoint HandPosOnLand(0.0f, 0.0f, 0.0f);
static LHPoint HandPos[4];
static LHPoint CenterWorld(2560.0f, 0.0f, 2560.0f);

inline MapCoords::MapCoords(float x, float z, float altitude)
{
	this->x = (LH3DMapCoordsFull)(x * MAP_COORDS_UNITS_PER_CELL / CellSize);
	this->z = (LH3DMapCoordsFull)(z * MAP_COORDS_UNITS_PER_CELL / CellSize);
	this->altitude = altitude;
}

static inline void MovePoint(LHPoint& point, float x, float y, float z)
{
	point.x += x;
	point.y += y;
	point.z += z;
}

static inline float GetHeading(LH3DObject* object)
{
	return object->y_angle;
}

static inline void SetHeading(LH3DObject* object, float heading)
{
	object->y_angle = heading;
}

static inline float GetScale(LH3DObject* object)
{
	return object->scale;
}

static inline void SetLength(LHPoint& point, float size)
{
	float px = point.x;
	float py = point.y;
	float pz = point.z;
	if (px != 0.0f || py != 0.0f || pz != 0.0f)
	{
		float scale = size / sqrt(pz * pz + py * py + px * px);
		point.x = scale * px;
		point.y = scale * py;
		point.z = scale * pz;
	}
}

static inline void AddDrawObject(Object* object)
{
	if (GLandscape::DrawObjectCount != GLANDSCAPE_MAX_DRAW_OBJECTS - 1 && !object->InDrawList &&
	    !(object->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) &&
	    (object->Game3dObject == NULL || !object->Game3dObject->GetDontDraw()))
	{
		GLandscape::DrawObjects[GLandscape::DrawObjectCount] = object;
		object->InDrawList = true;
		GLandscape::DrawObjectCount++;
	}
}

bool32_t IsNight()
{
	return GGameInfo::Info.IsVisualNight();
}

uint32_t GLandscape::PreDraw()
{
	LH3DIsland::PreDraw();
	return 1;
}

static inline uint8_t GetCellAltitude(long x, long z)
{
	LandCell* cell = LH3DIsland::GetCell(x, z);
	if (cell != NULL)
	{
		return cell->altitude;
	}
	return 0;
}

static inline LandBlock* GetLandBlock(long x, long z)
{
	long index = LH3DIsland::GetIndex(x, z);
	if (index != 0)
	{
		return LH3DIsland::g_ptr_blocks[index];
	}
	return NULL;
}

void DrawHandGlowOnWater(LHPoint pos, unsigned long colour)
{
	static const long  indices[6] = {0, 1, 2, 2, 3, 0};
	static const float uvs[8] = {0.75f, 0.375f, 0.796875f, 0.375f, 0.796875f, 0.421875f, 0.75f, 0.421875f};

	if (!LH3DAtmos::inited || LH3DAtmos::mat1 == NULL)
	{
		return;
	}
	long minX = (long)(pos.x - HAND_GLOW_SIZE - HAND_GLOW_MARGIN) / (long)LAND_CELL_SIZE;
	long minZ = (long)(pos.z - HAND_GLOW_SIZE - HAND_GLOW_MARGIN) / (long)LAND_CELL_SIZE;
	long maxX = (long)(HAND_GLOW_MARGIN + (pos.x + HAND_GLOW_SIZE)) / (long)LAND_CELL_SIZE;
	long maxZ = (long)(pos.z + HAND_GLOW_SIZE + HAND_GLOW_MARGIN) / (long)LAND_CELL_SIZE;
	minX = minX > 0 ? (minX < LAND_MAP_MAX ? minX : LAND_MAP_MAX) : 0;
	minZ = minZ > 0 ? (minZ < LAND_MAP_MAX ? minZ : LAND_MAP_MAX) : 0;
	bool       overWater = false;
	long       lastBlockX = -1;
	long       lastBlockZ = -1;
	LandBlock* block = NULL;
	for (long z = minZ; z <= maxZ; z++)
	{
		for (long x = minX; x <= maxX; x++)
		{
			long blockX = x / LAND_MESH_LOD_0_CELLS;
			long blockZ = z / LAND_MESH_LOD_0_CELLS;
			if (blockX != lastBlockX || blockZ != lastBlockZ)
			{
				lastBlockX = blockX;
				lastBlockZ = blockZ;
				block = GetLandBlock(blockX, blockZ);
			}
			if (block == NULL)
			{
				overWater = true;
				break;
			}
			if (GetCellAltitude(x, z) < HAND_GLOW_MAX_ALTITUDE)
			{
				overWater = true;
				break;
			}
		}
	}
	if (!overWater)
	{
		return;
	}
	LHPoint       points[4];
	unsigned long colours[4] = {colour, colour, colour, colour};
	pos.y = 0.0f;
	points[0] = pos + LHPoint(-HAND_GLOW_SIZE, 0.0f, -HAND_GLOW_SIZE);
	points[1] = pos + LHPoint(HAND_GLOW_SIZE, 0.0f, -HAND_GLOW_SIZE);
	points[2] = pos + LHPoint(HAND_GLOW_SIZE, 0.0f, HAND_GLOW_SIZE);
	points[3] = pos + LHPoint(-HAND_GLOW_SIZE, 0.0f, HAND_GLOW_SIZE);
	unsigned long zFunc;
	LH3DRender::GetRenderState(D3DRENDERSTATE_ZFUNC, zFunc);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	LH3DTech::Draw3DWorldTriangle(ARRAY_SIZE(points), points, (LH3DColor*)colours, (float*)uvs, ARRAY_SIZE(indices) / 3,
	                              (long*)indices, LH3DAtmos::mat1, false);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, zFunc);
}

uint32_t GLandscape::Draw()
{
	g_bulb_index = MSH_O_LIGHT_BULB;
	if (GGame::g_game != NULL && GGame::g_game->MyInterface() != NULL &&
	    GGame::g_game->MyInterface()->GetRenderHand()->DynamicShadow->GetMesh() != NULL)
	{
		LH3DComplexObject* hand = GGame::g_game->MyInterface()->GetRenderHand()->DynamicShadow;
		g_wind_hand.Set(*GGame::g_game->MyInterface()->GetStatus()->GetHandVelocity());
		g_pos_hand.Set(hand->matrix.GetPos());
		float power = g_wind_hand.GetNorme() / HAND_WIND_SCALE;
		if (power < HAND_WIND_POWER_MIN)
		{
			power = HAND_WIND_POWER_MIN;
		}
		else if (power > HAND_WIND_POWER_MAX)
		{
			power = HAND_WIND_POWER_MAX;
		}
		g_wind_hand_power = power;
		SetLength(g_wind_hand, power);
	}

	LH3DObject::g_selected_px = LHSys::GetMouse().Pos().x;
	LH3DObject::g_selected_py = LHSys::GetMouse().Pos().y;
	{
		LHPoint mouse;
		LH3DTech::Get3DPointFromScreen(LHSys::GetMouse().Pos(), mouse, 0.0f);
		LHPoint direction(mouse);
		direction -= LHPoint(LH3DTech::GetCameraPosition());
		SetLength(direction, LH3DTech::GetNearClipping());
		direction += LHPoint(LH3DTech::GetCameraPosition());
		special_jc_x = LHSys::GetMouse().Pos().x;
		special_jc_y = LHSys::GetMouse().Pos().y;
		if (GGame::g_game->MyInterface()->GetRenderHand()->DynamicShadow->CarriedObject != NULL)
		{
			LHPoint held(HeldObjectPos);
			held -= LHPoint(LH3DTech::GetCameraPosition());
			SetLength(held, LH3DTech::GetNearClipping() * HELD_OBJECT_DISTANCE_SCALE);
			held += LHPoint(LH3DTech::GetCameraPosition());
			special_jc_mouse_pos = held;
			float screenX;
			float screenY;
			if (GCamera::TranslatePointToScreen(&screenX, &screenY, &held))
			{
				special_jc_x = (long)screenX;
				special_jc_y = (long)screenY;
				LH3DObject::g_selected_px = special_jc_x;
				LH3DObject::g_selected_py = special_jc_y;
			}
		}
	}

	{
		LH3DComplexObject* hand = GGame::g_game->MyInterface()->GetRenderHand()->DynamicShadow;
		static float       handRadiusScale = 1.2f;
		float              radius =
			handRadiusScale * GGame::g_game->MyInterface()->GetRenderHand()->DynamicShadow->scale * HAND_SIZE;
		int     boneCount = hand->GetMesh()->submeshes[0]->NumBones;
		LHPoint first(hand->BoneMatrices[1].GetPos());
		LHPoint min;
		LHPoint max;
		min = first;
		max = first;
		for (int i = 1; i < boneCount; i++)
		{
			LHPoint bone(hand->BoneMatrices[i].GetPos());
			if (min.x > bone.x)
			{
				min.x = bone.x;
			}
			else if (max.x < bone.x)
			{
				max.x = bone.x;
			}
			if (min.y > bone.y)
			{
				min.y = bone.y;
			}
			else if (max.y < bone.y)
			{
				max.y = bone.y;
			}
			if (min.z > bone.z)
			{
				min.z = bone.z;
			}
			else if (max.z < bone.z)
			{
				max.z = bone.z;
			}
		}
		LHPoint centre = max + min;
		centre *= 0.5f;
		float hitX;
		float hitZ;
		HandIsOverLand = LH3DIsland::RayCast(LHPoint(LH3DTech::GetCameraPosition()), centre, &hitX, &hitZ) != false;
		HandPosOnLand.Set(hitX, 0.0f, hitZ);
		HandRadius = radius;
	}

	Windmill::PreDraw();
	Tree::PreDraw();
	HowManyPeople::Process();
	SetLight();
	if (LH3DRender::g_b_use_wireframe)
	{
		LH3DRender::g_mode_cleaning = LH3D_CLEANING_MODE_SCREEN;
	}
	else
	{
		LH3DRender::g_mode_cleaning = LH3D_CLEANING_MODE_NONE;
		GLandAlignement::DrawSky();
	}
	if (LH3DIsland::g_b_draw_reflection)
	{
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, false);
		LH3DIsland::DrawUnderWater();
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, true);
	}
	if (PetitNavire::Current != NULL)
	{
		PetitNavire::Current->PreDraw();
	}
	if (GGame::g_game->MyInterface()->GetRenderHand()->DynamicShadow->GetMesh() != NULL)
	{
		LH3DComplexObject* object = GGame::g_game->MyInterface()->GetRenderHand()->DynamicShadow;
		if (object != NULL && !object->Hidden)
		{
			unsigned long color = object->color;
			unsigned long specular = object->specular;
			object->SetColorSpecular(HAND_UNDER_WATER_COLOUR, 0);
			object->SetDynamicLighting(false);
			object->DrawUnderWater();
			object->SetDynamicLighting(true);
			LH3DObject* carried = object->CarriedObject;
			if (carried != NULL)
			{
				carried->DrawUnderWater();
				float scale = carried->scale;
				FlyingObjects::Add(&carried->matrix.GetPos(), FLYING_OBJECTS_INDEX_HELD,
				                   scale * carried->GetMesh()->BoundingBox.DiagonalLength);
			}
			object->SetColorSpecular(color, specular);
		}
	}
	PhysicsObject::DrawAllUnderWater();
	Creature* creature = GGame::g_game->MyPlayer()->GetCreature();
	if (creature != NULL)
	{
		LH3DComplexObject* object = creature->physical->Creature3d->DynamicShadow;
		LHPoint&           pos = object->matrix.GetPos();
		long               cellX = (long)(pos.x / LAND_CELL_SIZE);
		long               cellZ = (long)(pos.z / LAND_CELL_SIZE);
		LandBlock*         block = LH3DIsland::GetBlock(cellX, cellZ);
		if (block != NULL && block->IsVisibleThisFrame() && !(block->Distance > LH3DIsland::g_distance_vanish))
		{
			if (object == NULL)
			{
				goto creature_done;
			}
			if (object->matrix.GetPos().y < CREATURE_UNDER_WATER_ALTITUDE &&
			    object->FizzAmount < CREATURE_UNDER_WATER_MAX_FIZZ)
			{
				object->SetColorSpecular(CREATURE_UNDER_WATER_COLOUR, CREATURE_UNDER_WATER_SPECULAR);
				object->SetDynamicLighting(false);
				object->DrawUnderWater();
				object->SetDynamicLighting(true);
				object->SetColorSpecular(0xffffffff, 0);
			}
		}
		if (object != NULL)
		{
			FlyingObjects::Add(&pos, FLYING_OBJECTS_INDEX_CREATURE, creature->physical->Creature3d->GetBodyRadius());
		}
	}
creature_done:
	Whale::PreDrawAll();
	FishRush::DrawPreAll();
	LHPoint kiddos;
	Intro::SetPosKiddos(&kiddos);
	SuperVillager* villager = SuperVillager::g_first;
	if (!GGame::g_game->help_system->IsInScriptWideScreen())
	{
		if (villager != NULL)
		{
			villager = SuperVillager::g_first;
			while (villager != NULL)
			{
				SuperVillager* dead = villager;
				villager = villager->Next;
				dead->Release();
			}
			SuperVillager::g_first = NULL;
			DrawListRebuildCount = 1;
		}
	}
	else
	{
		while (villager != NULL)
		{
			if (villager->UserData != NULL)
			{
				if (((GameThing*)villager->UserData)->IsAvailable())
				{
					((Object*)villager->UserData)->Draw();
					if (villager->AtIntro && IntroActive)
					{
						LH3DAnimatedObject* object = villager->Object;
						object->SetPosition(kiddos, GetHeading(object), GetScale(object));
					}
					villager->Shadow->Shadow->Prepare(villager->Object);
					LH3DAnimatedObject* object = villager->Object;
					if (strcmp(object->GetCurrentAnim()->name, "M_P_Swim2") == 0)
					{
						LHPlane plane;
						plane.Normal.Set(0.0f, -1.0f, 0.0f);
						plane.Distance = 0.0f;
						UpdateClippingPlane(&plane);
						object->SetColorSpecular(SWIMMER_COLOUR, 0);
						object->DrawCutByPlane();
						static int swimCircleTimer = 0;
						static int swimCircleTime = 1000;
						swimCircleTimer += LH3DTech::GetGameTimeInc();
						if (swimCircleTimer > swimCircleTime)
						{
							swimCircleTimer = 0;
							LHPoint pos = LH3DMesh::GetListMatrix()[SWIMMER_CIRCLE_BONE].GetPos();
							pos.y = SWIMMER_CIRCLE_ALTITUDE;
							float angle = Random(0.0f, TWO_PI);
							for (unsigned long i = 0; i < GWATER_MAX_CIRCLES; i++)
							{
								if (!GWater::g_circle[i].IsValid())
								{
									GWater::g_circle[i].SetValid(true);
									GWater::g_circle[i].Pos.Set(pos);
									GWater::g_circle[i].Growth = 1.0f;
									GWater::g_circle[i].Age = 0;
									GWater::g_circle[i].Size = 1.0f;
									GWater::g_circle[i].Aspect = 1.0f;
									GWater::g_circle[i].Frame = SWIMMER_CIRCLE_FRAME;
									GWater::g_circle[i].Angle = angle;
									GWater::g_circle[i].Colour = 0xffffffff;
									GWater::g_circle[i].AgeSpeed = 1.0f;
									GWater::g_count_activated_circle++;
									break;
								}
							}
						}
						plane.Normal.Set(0.0f, 1.0f, 0.0f);
						plane.Distance = 0.0f;
						UpdateClippingPlane(&plane);
					}
					villager = villager->Next;
				}
				else
				{
					SuperVillager* dead = villager;
					villager = villager->Next;
					dead->Release();
				}
			}
			else
			{
				villager = villager->Next;
			}
		}
	}

	if (LightHandAlpha > HAND_GLOW_MIN_LIGHT_ALPHA)
	{
		LH3DColor colour =
			LH3D_BLEND_COLOR(LH3DSky::lightcols[6].GetColor(), HAND_GLOW_COLOUR, HAND_GLOW_BLEND) | 0xff000000;
		long alpha = (long)(LightHandAlpha * (float)HAND_GLOW_MAX_ALPHA);
		if (alpha > 0)
		{
			if (alpha < HAND_GLOW_MAX_ALPHA)
			{
				colour.a = alpha;
			}
			else
			{
				colour.a = HAND_GLOW_MAX_ALPHA;
			}
		}
		else
		{
			colour.a = 0;
		}
		DrawHandGlowOnWater(HandPos[0], colour.GetColor());
	}
	if (!LH3DRender::g_motion_blur_value && !LH3DRender::g_b_use_wireframe)
	{
		LH3DWater::DrawSea(material);
	}
	LandscapeVortex::PreLandscapeDrawAll();
	LH3DIsland::Draw();
	LH3DWetFeet::Draw();
	CitadelHeart::DrawAll();
	if (GWater::g_count_activated_circle != 0)
	{
		GWater::g_speed = LH3DTech::GetGameTimeInc() * WATER_CIRCLE_SPEED;
		for (GWater::Circle* circle = GWater::g_circle; circle < &GWater::g_circle[GWATER_MAX_CIRCLES]; circle++)
		{
			if (circle->IsValid())
			{
				circle->Draw();
			}
		}
	}
	ProcessAllObjectsOnCells();

	Town*         nearest = NULL;
	LH3DMapCoords home;
	float         nearestDistance = NEAREST_STORAGE_PIT_DISTANCE;
	home = GGame::g_game->MyPlayer()->GetCitadel() != NULL
	           ? GGame::g_game->MyPlayer()->GetCitadel()->Pos
	           : MapCoords(LAND_MAP_SIZE / 2.0f, LAND_MAP_SIZE / 2.0f, 0.0f);
	for (Town* town = GGame::g_game->MyPlayer()->towns.head; town != NULL; town = town->next)
	{
		if (town->GetStoragePit() != NULL)
		{
			float distance = GUtils::GetDistanceInMetres((MapCoords&)home, town->GetStoragePit()->Pos);
			if (distance < nearestDistance)
			{
				nearestDistance = distance;
				nearest = town;
			}
		}
	}
	if (nearest != NULL)
	{
		StoragePit* pit = nearest->GetStoragePit();
		MapCoords   coords = pit->Pos + GUtils::GetPosFromAngle(pit->GetYAngle(), pit->Get2DRadius());
		coords.altitude = 0.0f;
		LHPoint point;
		ConvertMapCoordToLandscapePoint(coords, point);
		LandFeature::DrawWorm(&point);
	}
	static bool32_t checkAltitudes = false;
	if (checkAltitudes)
	{
		for (int x = 0; x < LAND_MAP_SIZE; x++)
		{
			for (int z = 0; z < LAND_MAP_SIZE; z++)
			{
				for (MapCellIterator iter = GGame::g_game->map.ToMap(x, z)->GetFirstIterator(); iter.object != NULL;
				     iter.object = iter.object->GetMapChild(*iter.cell), iter.MoveToMobileObsIfNeededAndPoss())
				{
					LHPoint point;
					ConvertMapCoordToLandscapePoint(iter->Pos, point);
				}
			}
		}
	}
	return 1;
}

static bool32_t        IsOpen = false;
static Desintegration* FirstDesintegration = NULL;
static int             DesintegrationTime = 500;
int                    GLandscape::DrawListRebuildCount = 1;
int                    GLandscape::DrawObjectCount = 0;

class Desintegration : public DrawingObject
{
public:
	Desintegration* Next;
	LH3DObject*     Object3D;
	int             Time;

	// BW1W120 inlined BW1M119 inlined
	Desintegration(LH3DObject* object)
	{
		Next = FirstDesintegration;
		FirstDesintegration = this;
		if (object->IsAnimated())
		{
			Object3D = LH3DObject::Create(LH3DObject::ANIMATED);
		}
		else
		{
			Object3D = LH3DObject::Create(LH3DObject::STATIC);
		}
		Object3D->SetMesh(object->GetMesh(), NULL, NULL);
		Object3D->matrix = object->matrix;
		Object3D->scale = object->scale;
		SetHeading(Object3D, GetHeading(object));
		Object3D->color = object->color;
		Object3D->specular = object->specular;
		if (!object->IsShadowOnTextureChroma())
		{
			Object3D->SetDynamicLighting(true);
		}
		Time = DesintegrationTime;
	}
	// BW1W120 005e6350 BW1M119 01380f30
	~Desintegration();
	// BW1W120 005e6390 BW1M119 01381010
	void Draw();
	// BW1W120 inlined BW1M119 inlined
	void AddDrawing()
	{
		LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&Desintegration::Draw,
		                                  LH3DTech::GetValueForZSorter(Object3D->matrix.GetPos()), 0);
	}
	// BW1W120 inlined BW1M119 inlined
	static void DrawAll()
	{
		Desintegration* desintegration = FirstDesintegration;
		while (desintegration != NULL)
		{
			if (desintegration->Time == 0)
			{
				Desintegration* dead = desintegration;
				desintegration = desintegration->Next;
				delete dead;
			}
			else
			{
				desintegration->AddDrawing();
				desintegration = desintegration->Next;
			}
		}
	}
};

void GWater::Circle::Draw()
{
	if (Drift)
	{
		MovePoint(Pos, g_speed * LH3DTech::g_ambient_wind_direction.x, 0.0f,
		          g_speed * LH3DTech::g_ambient_wind_direction.z);
	}
	g_sprite_circle->pos.Set(Pos);
	Age += (long)(LH3DTech::GetGameTimeInc() * AgeSpeed);
	if (Age >= GWATER_PLOUF_LIFE)
	{
		Age = 0;
		SetValid(false);
		Angle = 0.0f;
		g_count_activated_circle--;
		return;
	}
	g_sprite_circle->SetShapeOnly(Size, Aspect);
	g_sprite_circle->Size = GetSizeCircle();
	g_sprite_circle->colour = GetColor(Age, Colour);
	g_sprite_circle->SetRotation(Angle);
	g_sprite_circle->SetFrameNumber(Frame);
	g_sprite_circle->Draw();
}

void GLandscape::Close()
{
	IsOpen = false;
	GLandAlignement::Close();
	LH3DLandscape::Release();
	LH3DIsland::Release();
	delete material;
	texture->Release();
	texture = NULL;
	LHResetFPU();
	GameBlock::Close();
}

void GLandscape::Open(char* path)
{
	LHResetFPU();
	LightHandAlpha = 0.0f;
	IsOpen = true;
	strcpy(Filename, path);
	LH3DLandscape::Release();
	LH3DIsland::Release();
	LH3DIsland::SetFileToLoad(path);
	LH3DIsland::Create();
	float minX = LAND_MAP_SIZE * LAND_CELL_SIZE;
	float maxX = 0.0f;
	float minZ = LAND_MAP_SIZE * LAND_CELL_SIZE;
	float maxZ = 0.0f;
	for (int x = 0; x < LAND_BLOCKS_SIDE; x++)
	{
		for (int z = 0; z < LAND_BLOCKS_SIDE; z++)
		{
			int index = LH3DIsland::GetIndex(x, z);
			if (index != 0 && LH3DIsland::g_ptr_blocks[index] != NULL)
			{
				float blockX = x * (int)LAND_BLOCK_WIDTH;
				if (minX > blockX)
				{
					minX = blockX;
				}
				if (maxX < blockX)
				{
					maxX = blockX;
				}
				float blockZ = z * (int)LAND_BLOCK_WIDTH;
				if (minZ > blockZ)
				{
					minZ = blockZ;
				}
				if (maxZ < blockZ)
				{
					maxZ = blockZ;
				}
			}
		}
	}
	CenterWorld.Set((maxX + minX) * 0.5f, 0.0f, (maxZ + minZ) * 0.5f);
	texture =
		LH3DTexture::Create(".\\Data\\Textures\\sky.raw", LH3D_TEXTURE_TYPE_FILE | LH3D_TEXTURE_FLAGS_ALPHA, 0, NULL);
	material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA, texture);
	material->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	FuncDrawSubPixel = DrawSubPixel;
	{
		uint32_t length;
		LHFileLength(".\\Data\\Textures\\light_hand.raw", &length);
		LightHand = (uint8_t*)LH3DMem::Alloc(length);
		LHLoadData(".\\Data\\Textures\\light_hand.raw", LightHand, length, NULL);
		for (int i = 0; i < LightHandSize * LightHandSize; i++)
		{
			float light = LightHand[i] * LIGHT_HAND_LEVELS / 255.0f + 0.5f;
			if (light >= LIGHT_HAND_LEVELS)
			{
				light = LIGHT_HAND_LEVELS - 1.0f;
			}
			LightHand[i] = (uint8_t)light;
		}
	}
	GLandAlignement::Open(0);
	LH3DLandscape::g_init_func = EnumLH3DObjectOnBigSquare::Init;
	LH3DLandscape::g_get_next_func = EnumLH3DObjectOnBigSquare::GetNext;
	LHResetFPU();
	GameBlock::Open();
	LHResetFPU();
	LandAvoidValid = false;
	ValidateLandAvoid();
	LHResetFPU();
	GGame::g_game->terrain_map.Init();
	GSoundMap* soundMap = GGame::g_game->SoundMap;
	soundMap->CalculateRadiusPointAndDistance();
	soundMap->UpdateFromMap(MapCoords(soundMap->GetReceiverPos()));
	LHResetFPU();
}

GLandscape::~GLandscape()
{
	LHResetFPU();
}

bool32_t LineIntersectPlane(LHPoint* from, LHPoint* to, LHPoint* result)
{
	if (to->y >= from->y)
	{
		return false;
	}
	float t = -(from->y / (to->y - from->y));
	result->Set((to->x - from->x) * t + from->x, 0.0f, (to->z - from->z) * t + from->z);
	return true;
}

bool32_t __fastcall GLandscape::GetLHPointFromScreenCoord(LHCoord* coord, LHPoint* point, float* depth)
{
	LHPoint screen_point;
	LH3DTech::Get3DPointFromScreen(*coord, screen_point, 0.0f);
	LHPoint camera(LH3DTech::GetCameraPosition());
	float   x;
	float   z;
	if (!LH3DIsland::RayCast(camera, screen_point, &x, &z))
	{
		if (!LineIntersectPlane(&camera, &screen_point, point))
		{
			return false;
		}
	}
	else
	{
		point->Set(x, 0.0f, z);
	}
	LHPoint       copy(*point);
	LH3DMapCoords coords(copy.x, copy.z);
	point->y = LH3DIsland::GetAltitude(coords);
	if (depth != NULL)
	{
		*depth = LH3DTech::g_world_to_clipping.m[2] * point->x + LH3DTech::g_world_to_clipping.m[5] * point->y +
		         LH3DTech::g_world_to_clipping.m[8] * point->z + LH3DTech::g_world_to_clipping.m[11];
	}
	GGame::g_game->GetCamera()->ClipToCameraRadius(point);
	return true;
}

bool32_t __fastcall GLandscape::GetMapCoordFromScreenCoord(LHCoord* coord, MapCoords* coords, float* depth)
{
	LHPoint point;
	if (GetLHPointFromScreenCoord(coord, &point, depth))
	{
		ConvertLandscapePointToMapCoord(point, *coords);
		return true;
	}
	return false;
}

void __fastcall GLandscape::DrawSubPixel(uint16_t* dest, unsigned long pitch, unsigned long x, unsigned long z) {}

void ClearLight()
{
	if (LightHandAlpha > 0.0f)
	{
		if (!GGame::g_game->MyInterface()->GetRenderHand()->DynamicShadow->Hidden)
		{
			float offset = (LightHandSize * (int)LAND_CELL_SIZE - (int)LAND_CELL_SIZE) / 2;
			ClearLightLikeHand(HandPos[0].x - offset, HandPos[0].z - offset, LightHandSize);
		}
		EclairagePublic::ClearAll();
	}
	DynamicLightAndShadow::Clear();
}

void SetLight()
{
	CloudInSky::Draw();
	LH3DStorm::DrawCloudsAll();
	HandPos[0] = GGame::g_game->MyInterface()->GetRenderHand()->position;
	float altitude = LH3DIsland::GetAltitude(HandPos[0]) + HAND_LIGHT_ALTITUDE;
	if (HandPos[0].y < altitude)
	{
		HandPos[0].y = altitude;
	}
	float skyType = LH3DSky::Time2SkyType(GGameInfo::Info.GetVisualTime());
	LightHandAlpha = 0.0f;
	int brightness = (LH3DSky::topcol.r + LH3DSky::topcol.g + LH3DSky::topcol.b) / 3;
	if (brightness < NIGHT_BRIGHTNESS)
	{
		EclairagePublic::DrawAllPre();
		DynamicLightAndShadow::Draw();
		LH3DIsland::g_hand_position = HandPos[0];
		float alpha = (NIGHT_BRIGHTNESS - brightness) * (1.0f / NIGHT_BRIGHTNESS_RANGE);
		if (alpha > 0.0f)
		{
			if (alpha < 1.0f)
			{
				LightHandAlpha = alpha;
			}
			else
			{
				LightHandAlpha = 1.0f;
			}
		}
		else
		{
			LightHandAlpha = 0.0f;
		}
		GStreetLantern::SetLanternsOn(true);
		if (!GGame::g_game->MyInterface()->GetRenderHand()->DynamicShadow->Hidden)
		{
			float offset = (LightHandSize * (int)LAND_CELL_SIZE - (int)LAND_CELL_SIZE) / 2;
			DrawLightLikeHand(HandPos[0].x - offset, HandPos[0].z - offset, LightHand, LightHandSize, LightHandAlpha);
		}
		EclairagePublic::DrawAllPost();
	}
	else
	{
		EclairagePublic::g_alpha = 0.0f;
		DynamicLightAndShadow::Draw();
		GStreetLantern::SetLanternsOn(false);
		LH3DIsland::g_hand_position = LH3DTech::GetSun();
	}
	if (skyType > NIGHT_SKY_TYPE)
	{
		LHPoint direction = *LH3DTech::GetCameraPosition() - HandPos[0];
		direction.Normalise();
		LH3DTech::SetSun(direction * HAND_SUN_DISTANCE + HandPos[0]);
	}
	else
	{
		LH3DTech::SetSun(DEFAULT_SUN);
	}
}

bool32_t __fastcall GetLHPointFromScreenCoord(GLandscape* landscape, Point2D* coord, LHPoint* point, float* depth)
{
	LHCoord screen;
	screen.x = (long)coord->x;
	screen.y = (long)coord->y;
	return landscape->GetLHPointFromScreenCoord(&screen, point, depth);
}

void GLandscape::ConvertJustMapXZToLandscapePoint(const JustMapXZ& xz, LHPoint& point)
{
	point.x = (float)(xz.x << 16) * CellSize * (1.0f / MAP_COORDS_UNITS_PER_CELL);
	point.z = (float)(xz.z << 16) * CellSize * (1.0f / MAP_COORDS_UNITS_PER_CELL);
	point.y = LH3DIsland::GetHeightAsFloat(xz.x, xz.z);
}

void GetCenterWorld(LHPoint* point)
{
	point->Set(CenterWorld);
}

LH3DColor GetDebugColour()
{
	return LH3DColor(0xff, 0, 0);
}

void ProcessAllObjectsOnCells()
{
	DesignedWaterFall();
	Desintegration::DrawAll();

	static uint32_t lastRebuildTurn = 0;
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	static bool32_t redraw = true;
	if (GLandscape::DrawListRebuildCount != 0 ||
	    GGame::g_game->data.GetGameTurn() > lastRebuildTurn + DRAW_LIST_REBUILD_TURNS ||
	    LH3DIsland::g_b_view_has_changed)
	{
		redraw = true;
		if (GLandscape::DrawListRebuildCount != 0)
		{
			GLandscape::DrawListRebuildCount--;
		}
		lastRebuildTurn = GGame::g_game->data.GetGameTurn();
		for (int i = 0; i < GLandscape::DrawObjectCount; i++)
		{
			if (GLandscape::DrawObjects[i] != NULL)
			{
				GLandscape::DrawObjects[i]->InDrawList = false;
			}
		}
		GLandscape::DrawObjectCount = 0;
		for (LandBlock* block = LandBlock::g_first_sorting; block != NULL; block = block->Next)
		{
			if (!(block->Distance < LH3DIsland::g_distance_vanish))
			{
				break;
			}
			GameBlock* gameBlock = GameBlocks[block->GridX][block->GridZ];
			if (gameBlock != NULL)
			{
				for (int i = 0; i < (int)gameBlock->size; i++)
				{
					AddDrawObject(gameBlock->array[i]);
				}
			}
			for (int j = 0; j < (int)GameBlockEverywhere.size; j++)
			{
				AddDrawObject(GameBlockEverywhere.array[j]);
			}
		}
	}
	g_caca_object_processed = GLandscape::DrawObjectCount;
	if (!redraw)
	{
		static LHPoint lastCameraPos(0.0f, 0.0f, 0.0f);
		static LHPoint lastCameraTarget(0.0f, 0.0f, 0.0f);
		static float   maxCameraMoveSq = 1.0f;
		if (LH3DTech::GetCameraPosition()->GetDistanceSq(lastCameraPos) > maxCameraMoveSq ||
		    LH3DTech::GetCameraTarget()->GetDistanceSq(lastCameraTarget) > maxCameraMoveSq)
		{
			redraw = true;
			lastCameraPos = *LH3DTech::GetCameraPosition();
			lastCameraTarget = *LH3DTech::GetCameraTarget();
		}
	}
	if (redraw)
	{
		redraw = false;
		for (int i = 0; i < GLandscape::DrawObjectCount; i++)
		{
			Object* object = GLandscape::DrawObjects[i];
			if (object != NULL)
			{
				LH3DObject::g_b_last_on_screen = true;
				if (!(object->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
				{
					object->Draw();
					if (LH3DObject::g_b_last_on_screen)
					{
						GLandscape::DrawObjectActive[i] = true;
					}
					else if (object->Game3dObject != NULL &&
					         (object->Game3dObject->IsHuman() || object->Game3dObject->IsComplex()))
					{
						GLandscape::DrawObjectActive[i] = true;
					}
					else
					{
						GLandscape::DrawObjectActive[i] = false;
					}
				}
				else
				{
					GLandscape::DrawObjects[i] = NULL;
					GLandscape::DrawObjectActive[i] = false;
				}
			}
			else
			{
				GLandscape::DrawObjectActive[i] = false;
			}
		}
	}
	else
	{
		g_caca_object_processed = 0;
		for (int i = 0; i < GLandscape::DrawObjectCount; i++)
		{
			if (GLandscape::DrawObjectActive[i])
			{
				Object* object = GLandscape::DrawObjects[i];
				if (object != NULL && !(object->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
				{
					object->Draw();
				}
				else
				{
					GLandscape::DrawObjects[i] = NULL;
					GLandscape::DrawObjectActive[i] = false;
				}
				g_caca_object_processed++;
			}
		}
	}

	FallingRoot* root = FallingRoot::g_first;
	while (root != NULL)
	{
		FallingRoot* current = root;
		root = root->Next;
		current->Draw();
	}
	LHLinkedNode<Object*>* node = GGame::g_game->GameLists.objects.GetStart();
	while (node != NULL)
	{
		LHLinkedNode<Object*>* next = node->next.Get();
		node->payload->Draw();
		node = next;
	}
	EvilOrAngel::DrawAll();
	BookmarkGraphic::DrawLoopUpdate();
	Bookmark::DrawAll();
	Reward::DrawAll();
	if (DebugText::Display.Active)
	{
		DebugText::Display.Draw();
	}
	RootsPile::DrawAll();
	SmokyStuff::ProcessAll();
	if (!(GGame::g_game->GameFlags & GAME_FLAG_PAUSED))
	{
		TouchMyEdge::Check(g_pos_hand);
		if (TouchMyEdge::g_b_collide)
		{
			LH_SamplePlayOptions options;
			options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
			options.SampleNumber = LH_SAMPLE_G_HANDTHROUGHINFLUENCE_01;
			options.AttachedObject = NULL;
			options.Positional = true;
			options.Follow = false;
			options.XPos = g_pos_hand.x;
			options.YPos = g_pos_hand.y;
			options.ZPos = g_pos_hand.z;
			GGlobal::Global.audio->PlaySoundEffect(&options);
			GGame::g_game->MyInterface()->StartImmersion(IMMERSION_EFFECT_TYPE_HAND_HIT_INFLUENCE,
			                                             IMM_EFFECT_DONT_CHANGE);
		}
	}
	Intro::Process();
	if (PetitNavire::Current != NULL)
	{
		PetitNavire::Current->PostDraw();
	}
	SuperVillager::DrawAll();
	TouchMyEdge* edge = TouchMyEdge::g_first;
	while (edge != NULL)
	{
		if (edge->PreDraw())
		{
			TouchMyEdge* dead = edge;
			edge = edge->Next;
			delete dead;
		}
		else
		{
			edge = edge->Next;
		}
	}
	EclairagePublic::DrawAllFinal();
	FishRush::DrawPostAll();
	Eureka::DrawAll();
	for (LH3DMist* mist = LH3DMist::g_first_mist; mist != NULL; mist = mist->next)
	{
		if (mist->Flags & LH3D_MIST_FLAG_VISIBLE)
		{
			mist->SetColorSpecular((mist->color & LH3D_COLOR_RGB_MASK) | ((mist->Alpha * 255 >> 8) << 24),
			                       mist->specular);
			mist->AddDrawing();
		}
	}
	DansLesNuages::DrawAll();
}

Desintegration::~Desintegration()
{
	if (FirstDesintegration == this)
	{
		FirstDesintegration = Next;
	}
	else
	{
		Desintegration* previous = FirstDesintegration;
		Desintegration* current = previous->Next;
		while (current != this)
		{
			previous = current;
			current = current->Next;
		}
		previous->Next = Next;
	}
	if (Object3D != NULL)
	{
		Object3D->Release();
		Object3D = NULL;
	}
}

void Desintegration::Draw()
{
	g_cool_effect_mat->AlphaReference = 255 - (uint8_t)(long)(Time * 255.0f / DesintegrationTime);
	LH3DRender::SetMaterial(g_cool_effect_mat, 0);
	LH3DRender::SetDoUpdateMaterial(false);
	Object3D->SetNeedClipping(true);
	float progress = (float)Time / DesintegrationTime;
	Object3D->SetAnimatedUV((float)cos(progress) * DESINTEGRATION_U_SCALE,
	                        (float)(sin(progress * DESINTEGRATION_V_SPEED) * DESINTEGRATION_V_SCALE));
	Object3D->Draw();
	Object3D->SetAnimatedUV(0.0f, 0.0f);
	LH3DRender::SetDoUpdateMaterial(true);
	Object3D->SetNeedClipping(true);
	LH3DRender::g_alpha_ref = DESINTEGRATION_ALPHA_REF;
	LH3DRender::g_b_active_g_alpha_ref = true;
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
	Object3D->Draw();
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	LH3DRender::g_b_active_g_alpha_ref = false;
	Time -= LH3DTech::GetGameTimeInc();
	if (Time < 0)
	{
		Time = 0;
	}
}

void GoolooGooloo(Object* object)
{
	static int count = 0;

	if (object == NULL)
	{
		return;
	}
	Game3DObject* object3D = object->Game3dObject;
	if (object3D == NULL)
	{
		return;
	}
	count++;
	NEW(1488) Desintegration(object3D);
}

void DebugText::DrawLines()
{
	LHColor colour;
	colour.r = 0xff;
	colour.g = 0xff;
	colour.b = 0xff;
	if (Line != 0)
	{
		for (int i = 0; i < DEBUG_TEXT_LINE_COUNT; i++)
		{
			LHSys::TheSystem.text.DrawSimple(0, i * DEBUG_TEXT_LINE_HEIGHT, Lines[i], &colour, 0);
		}
	}
	else
	{
		LHSys::TheSystem.text.DrawSimple(0, 0, Lines[0], &colour, 0);
	}
}

void DebugText::Draw()
{
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&DebugText::DrawLines, 0.0f, 0);
	DisplayTime -= 1.0f;
	if (DisplayTime < 0.0f)
	{
		Active = false;
		for (int i = 0; i < DEBUG_TEXT_LINE_COUNT; i++)
		{
			Lines[i][0] = '\0';
		}
	}
}
