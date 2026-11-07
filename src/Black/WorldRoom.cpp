#include "WorldRoom.h"

#include <math.h>    /* For cos, log, sin */
#include <string.h>  /* For _stricmp, strcpy */
#include <windows.h> /* For GetTickCount */

#include <chlasm/AudioSFX.h>      /* For enum AUDIO_SFX_BANK_TYPE */
#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT */
#include <chlasm/HelpTextTooltipEnums.h>
#include <chlasm/LHSample.h> /* For enum LH_SAMPLE */

#include <Lionhead/LH3DLib/development/Glow.h>              /* For class GlowManager */
#include <Lionhead/LH3DLib/development/InfluenceCircle.h>   /* For class InfluenceCircle */
#include <Lionhead/LH3DLib/development/LH3DColor.h>         /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>        /* For struct LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DLevelOfDetail.h> /* For struct LH3DLevelOfDetail */
#include <Lionhead/LH3DLib/development/LH3DMaterial.h>      /* For struct LH3DMaterial */
#include <Lionhead/LH3DLib/development/LH3DMath.h>          /* For QUARTER_PI_F */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>          /* For struct LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DRender.h>        /* For struct LH3DRender */
#include <Lionhead/LH3DLib/development/LH3DStaticObject.h>  /* For class LH3DStaticObject */
#include <Lionhead/LH3DLib/development/LH3DTech.h>          /* For struct LH3DTech */
#include <Lionhead/LH3DLib/development/LH3DText.h>          /* For struct GatheringText */
#include <Lionhead/LH3DLib/development/LH3DTexture.h>       /* For struct LH3DTexture */
#include <Lionhead/LH3DLib/development/LH3DVRAMTex.h>       /* For struct LH3DVRAMTex */
#include <Lionhead/LH3DLib/development/LHMatrix.h>          /* For struct LHMatrix */
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h>   /* For struct LH_SamplePlayOptions */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                    /* For operator new(size_t, const char*, uint32_t) */

#include "Audio.h"            /* For class GAudio */
#include "ChallengeRoom.h"    /* For class ChallengeRoom, struct TempleChallenge */
#include "Citadel.h"          /* For class Citadel */
#include "CreatureRoom.h"     /* For ApplyCitadelColoring */
#include "Creature.h"         /* For class Creature */
#include "Game.h"             /* For class GGame */
#include "GameOSFile.h"       /* For class GameOSFile */
#include "Global.h"           /* For struct GGlobal */
#include "HelpText.h"         /* For struct HelpTextDataBase */
#include "MagicInfo.h"        /* For class GMagicInfo */
#include "MiniMap.h"          /* For class MiniMap */
#include "Player.h"           /* For class GPlayer */
#include "Spell.h"            /* For class Spell */
#include "SpellSeedGraphic.h" /* For class SpellSeedGraphic */
#include "Temple.h"           /* For struct Temple */
#include "WorldRoomCamera.h"  /* For struct WorldRoomCamera, enum WORLD_ROOM_DOOR */

#include "MapCellConstants.h"
#include "GameTimeConstants.h" /* For SecondsPerYear */
#include "ColourConstants.h"   /* For White */

#include "MapCoordsMeters.h" /* For MapCoords::MapMetersX */

static float OneOnLogHalf = 1.0f / static_cast<float>(log(0.5));

#ifdef VERSION_BW1WCI
#define ROOM_TEXT(text)    (text)
#define TOOLTIP_TEXT(text) (text)
#else
#define ROOM_TEXT(text)    ((text) - WORLD_ROOM_TEXT_ID_OFFSET)
#define TOOLTIP_TEXT(text) ((text) - WORLD_ROOM_CI_TOOLTIP_ID_OFFSET)
#endif

#define NUM_SCROLL_SQUEAKS (LH_SAMPLE_G_SCROLLSQUEAK_06 - LH_SAMPLE_G_SCROLLSQUEAK_01 + 1)

bool32_t WorldRoom::ShowInfluence = true;

static char* SignNames[WORLD_ROOM_SIGN_COUNT] = {"SIGN CREATURE", "SIGN OPTIONS",  "SIGN EXIT",     "SIGN MULTIPLKAYER",
                                                 "SIGN CREDITS",  "SIGN SAVEGAME", "SIGN CHALLENGE"};
static unsigned long SignColours[WORLD_ROOM_SIGN_COUNT][3] = {
	{0xec, 0xc6, 0x64}, {0xe5, 0xd4, 0x41}, {0xde, 0xe3, 0xef}, {0x6f, 0x92, 0xeb},
	{0xd4, 0x6b, 0xfb}, {0x9c, 0xd1, 0x40}, {0xeb, 0x92, 0x6f}};

bool32_t WorldRoom::DisplayCitadel = true;
bool32_t WorldRoom::DisplayMagicActivity = true;
bool32_t WorldRoom::DisplayInfluence = true;
bool32_t WorldRoom::DisplayCreature = true;
bool32_t WorldRoom::DisplayChallenges = true;

static uint32_t UnusedStatic = 0;

inline MapCoords::MapCoords(float meters_x, float meters_z)
{
	SetX(meters_x);
	SetZ(meters_z);
	SetAltitude(0.0f);
}

inline char* GetWorldRoomMeshName()
{
	return !LH3DLevelOfDetail::g_citadellod.Lightmaps ? WORLD_ROOM_ENGINE_PATH "mainlo.l3d"
	                                                  : WORLD_ROOM_ENGINE_PATH "main.l3d";
}

WorldRoom::WorldRoom() : TempleRoom("World Room")
{
	ResetStatics();
	LoadOptionData(GetWorldRoomMeshName(), WORLD_ROOM_CONTROL_COUNT, ControlSetCallbacks, ControlGetCallbacks,
	               Controls);
	Map = NULL;
	WaterMesh = NULL;
	WaterObject = NULL;
	strcpy(HelpScriptName, "CitadelWorldRoomHelp");
}

WorldRoom::~WorldRoom() {}

inline void CreateWorldRoomCitadelIcon(WorldRoom* room, char* path)
{
	room->CitadelIconMesh = LH3DMesh::CreateFromHD(path, false);
	room->CitadelIconObject = LH3DObject::Create(LH3DObject::STATIC);
	room->CitadelIconObject->SetMesh(room->CitadelIconMesh, NULL, NULL);
	room->CitadelIconObject->SetDynamicLighting(true);
	room->CitadelIconObject->SetPosition(LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 1.0f);
}

inline void CreateWorldRoomCreatureIcon(WorldRoom* room, char* path)
{
	room->CreatureIconMesh = LH3DMesh::CreateFromHD(path, false);
	room->CreatureIconObject = LH3DObject::Create(LH3DObject::STATIC);
	room->CreatureIconObject->SetMesh(room->CreatureIconMesh, NULL, NULL);
	room->CreatureIconObject->SetDynamicLighting(true);
	room->CreatureIconObject->SetPosition(LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 1.0f);
}

inline void CreateWorldRoomChallengeIcon(WorldRoom* room, char* path)
{
	room->ChallengeIconMesh = LH3DMesh::CreateFromHD(path, false);
	room->ChallengeIconObject = LH3DObject::Create(LH3DObject::STATIC);
	room->ChallengeIconObject->SetMesh(room->ChallengeIconMesh, NULL, NULL);
	room->ChallengeIconObject->SetDynamicLighting(true);
	room->ChallengeIconObject->SetPosition(LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 1.0f);
}

inline void InvalidateWorldRoomTextures()
{
	for (LH3DTexture* texture = LH3DTexture::g_first; texture != NULL; texture = texture->next)
	{
		if (texture->GetType() != LH3D_TEXTURE_TYPE_NAMED && texture->VRAMTex != NULL)
		{
			texture->VRAMTex->Texture = NULL;
			texture->YouLostYourVRAM();
		}
	}
}

void WorldRoom::InitEngine()
{
	InvalidateWorldRoomTextures();
	Unused = 0;
	if (EngineInitialised)
	{
		return;
	}
	TempleRoom::InitEngine(GetWorldRoomMeshName(),
	                       !LH3DLevelOfDetail::g_citadellod.Lightmaps ? WORLD_ROOM_ENGINE_PATH "mainfloorlo.l3d"
	                                                                  : WORLD_ROOM_ENGINE_PATH "mainfloor.l3d",
	                       WORLD_ROOM_ENGINE_PATH "main.glw", WORLD_ROOM_ENGINE_PATH "main.cam");
	WaterMesh =
		LH3DMesh::CreateFromHD(!LH3DLevelOfDetail::g_citadellod.Lightmaps ? WORLD_ROOM_ENGINE_PATH "mainwaterlo.l3d"
	                                                                      : WORLD_ROOM_ENGINE_PATH "mainwater.l3d",
	                           false);
	WaterObject = LH3DObject::Create(LH3DObject::STATIC);
	WaterObject->SetMesh(WaterMesh, NULL, NULL);
	WaterObject->SetDynamicLighting(true);
	WaterObject->SetPosition(LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 1.0f);
	Font = GatheringText::GetGameFont(GAME_FONT_NEUTRAL);
	Map = NEW(111) MiniMap;
	Map->Init();
	Map->BuildMapTex();
	if (!Temple::MultiplayerCitadel)
	{
		if (DisplayInfluence)
		{
			CreateWorldMapColours();
		}
		else
		{
			DestroyWorldMapColours();
		}
		CreateWorldMapSpells();
	}
	CreateWorldRoomCitadelIcon(this, "data\\citadel\\icons\\I_citadel_on_map.l3d");
	CreateWorldRoomCreatureIcon(this, "data\\citadel\\icons\\I_creature_on_map.l3d");
	CreateWorldRoomChallengeIcon(this, "data\\citadel\\icons\\I_challenge_on_map.l3d");
	camera->Close();
	delete camera;
	camera = NEW(150) WorldRoomCamera;
	camera->Init(WORLD_ROOM_ENGINE_PATH "main.cam");
	ScrollTexture = LH3DTexture::Create("Data\\Citadel\\Controls\\ChallengeScroll.raw",
	                                    LH3D_TEXTURE_TYPE_SYSTEM_MEMORY | LH3D_TEXTURE_FLAGS_ALPHA, 0, NULL);
	ScrollMaterial =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA, ScrollTexture);
	InitNameScrolls(SignNames, WORLD_ROOM_SIGN_COUNT);
	SubmeshNameData* submeshNames = reinterpret_cast<SubmeshNameData*>(inner_room->Mesh->GetNameData());
	for (unsigned long submeshIndex = 0; submeshIndex < submeshNames->Count; submeshIndex++)
	{
		if (_stricmp("LH_Scroll_World", submeshNames->Names[submeshIndex].Name) == 0)
		{
			ScrollSubMesh = &submeshNames->Names[submeshIndex];
			break;
		}
	}
	MakeScrollText(false);
}

template <class Resource> inline void ReleaseWorldRoomResource(Resource* resource)
{
	if (resource != NULL)
	{
		resource->Release();
	}
}

void WorldRoom::CloseEngine()
{
	if (!EngineInitialised)
	{
		return;
	}
	TempleRoom::CloseEngine();
	Font = NULL;
	ReleaseWorldRoomResource(WaterObject);
	ReleaseWorldRoomResource(WaterMesh);
	ReleaseWorldRoomResource(CitadelIconObject);
	ReleaseWorldRoomResource(CitadelIconMesh);
	ReleaseWorldRoomResource(CreatureIconObject);
	ReleaseWorldRoomResource(CreatureIconMesh);
	ReleaseWorldRoomResource(ChallengeIconObject);
	ReleaseWorldRoomResource(ChallengeIconMesh);
	if (Map != NULL)
	{
		Map->Close();
	}
	delete Map;
	ScrollTexture->Release();
	ScrollTexture = NULL;
	ScrollMaterial->texture = NULL;
	ScrollMaterial = NULL;
}

void WorldRoom::DrawDoors()
{
	if (Temple::DoorPosition > WORLD_ROOM_DOOR_DRAW_THRESHOLD)
	{
		Draw();
		return;
	}
	LH3DMesh::g_hinge_only = true;
	inner_room->Object->SetNeedClipping(true);
	inner_room->Object->SetColorSpecular(Temple::CitadelColour.GetColor(), Temple::CitadelSpecular.GetColor());
	static_cast<LH3DStaticObject*>(inner_room->Object)
		->DrawLightMap(
			NULL, 0, LH3DLevelOfDetail::g_citadellod.Lightmaps ? LH3D_2ND_TEX_MODE_MODULATE_2X : LH3D_2ND_TEX_MODE_OFF,
			4, false, true);
	LH3DMesh::g_hinge_only = false;
}

void WorldRoom::DrawCitadel(bool glow)
{
	for (GPlayer* player = GGame::g_game->GetNextPlayer(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayer(player))
	{
		if (player->citadel.Get() != NULL)
		{
			MapCoords citadelPos = player->citadel->Pos;
			if (glow)
			{
				LHPoint glowPos = Map->CalcPoint(citadelPos.MapMetersX(), citadelPos.MapMetersZ(), NULL);
				glowPos.y += WORLD_ROOM_MARKER_GLOW_LIFT;
				LH3DColor glowColour(WORLD_ROOM_MARKER_GLOW_RED, WORLD_ROOM_MARKER_GLOW_GREEN,
				                     WORLD_ROOM_MARKER_GLOW_BLUE);
				inner_room->Glow->DrawGlowAtPoint(glowPos, glowColour, WORLD_ROOM_MARKER_GLOW_SIZE);
			}
			else
			{
				LH3DColor markerColour = player->GetPlayer3DColor();
				uint32_t  packedColour = markerColour.GetColor();
				if ((packedColour & LH3D_COLOR_RGB_MASK) == 0)
				{
					packedColour = LH3D_COLOR_WHITE;
				}
				markerColour =
					LH3DColor(LH3D_BLEND_COLOR(packedColour, LH3D_COLOR_WHITE, WORLD_ROOM_MARKER_LIGHTEN_AMOUNT));
				Map->DrawMarkerAt(markerColour, citadelPos.MapMetersX(), citadelPos.MapMetersZ(), CitadelIconObject,
				                  MarkerAngle, WORLD_ROOM_MARKER_SCALE);
			}
		}
	}
}

void MiniMap::DrawMarker(const LH3DColor& colour, LHPoint pos, LH3DObject* object, float angle, float scale)
{
	object->SetPosition(pos, angle, scale);
	unsigned long markerColour;
	memcpy(&markerColour, &colour, sizeof(markerColour));
	markerColour |= LH3D_COLOR_WHITE & ~LH3D_COLOR_RGB_MASK;
	unsigned long specular = 0;
	ApplyCitadelColoring(markerColour, specular);
	object->SetColorSpecular(markerColour, specular);
	object->AddDrawing();
}

void WorldRoom::DrawCreature(bool glow)
{
	for (LHLinkedNode<Creature*>* creatureNode = Creature::CreatureList.GetStart(); creatureNode != NULL;
	     creatureNode = creatureNode->next.Get())
	{
		Creature* creature = creatureNode->payload;
		if (creature != NULL)
		{
			MapCoords creaturePos = creature->Pos;
			if (glow)
			{
				LHPoint glowPos = Map->CalcPoint(creaturePos.MapMetersX(), creaturePos.MapMetersZ(), NULL);
				glowPos.y += WORLD_ROOM_MARKER_GLOW_LIFT;
				LH3DColor glowColour(WORLD_ROOM_MARKER_GLOW_RED, WORLD_ROOM_MARKER_GLOW_GREEN,
				                     WORLD_ROOM_MARKER_GLOW_BLUE);
				inner_room->Glow->DrawGlowAtPoint(glowPos, glowColour, WORLD_ROOM_MARKER_GLOW_SIZE);
			}
			else
			{
				GPlayer*  creaturePlayer = creature->GetPlayer();
				LH3DColor markerColour =
					creaturePlayer != NULL ? creaturePlayer->GetPlayer3DColor() : LH3DColor(LH3D_COLOR_WHITE);
				uint32_t packedColour = markerColour.GetColor();
				if ((packedColour & LH3D_COLOR_RGB_MASK) == 0)
				{
					packedColour = LH3D_COLOR_WHITE;
				}
				markerColour =
					LH3DColor(LH3D_BLEND_COLOR(packedColour, LH3D_COLOR_WHITE, WORLD_ROOM_MARKER_LIGHTEN_AMOUNT));
				Map->DrawMarkerAt(markerColour, creaturePos.MapMetersX(), creaturePos.MapMetersZ(), CreatureIconObject,
				                  MarkerAngle, WORLD_ROOM_MARKER_SCALE);
			}
		}
	}
}

void WorldRoom::DrawWorldMapColours() {}

void WorldRoom::CreateWorldMapColours()
{
	DestroyWorldMapColours();
}

void WorldRoom::DestroyWorldMapColours()
{
	for (unsigned long z = 0; z < MINI_MAP_SIZE; z++)
	{
		for (unsigned long x = 0; x < MINI_MAP_SIZE; x++)
		{
			Map->ClearCellColour(x, z);
		}
	}
}

void Spell::DeleteSpellSeedGraphic()
{
	if (SeedGraphic != NULL)
	{
		SeedGraphic->ToBeDeleted(false);
		SeedGraphic = NULL;
	}
}

void SpellPosToWorldRoomPos(MapCoords& pos, LHMatrix* matrix, float* scale)
{
	WorldRoom* room = static_cast<WorldRoom*>(GGame::g_game->temple->GetRoom(TEMPLE_ROOM_WORLD));
	LHPoint    point = room->Map->CalcPoint(pos.MapMetersX(), pos.MapMetersZ(), NULL);
	*scale = WORLD_ROOM_SPELL_MARKER_SCALE;
	point.y += WORLD_ROOM_SPELL_HEIGHT_OFFSET;
	matrix->SetScale(WORLD_ROOM_SPELL_MARKER_SCALE);
	matrix->SetTranslateOnly(point);
}

void Spell::CreateSpellSeedGraphic()
{
	DeleteSpellSeedGraphic();
	MapCoords       spellPos = Pos;
	SPELL_SEED_TYPE seedType = GetMagicInfo()->SpellSeedType;
	LHPoint         mapPoint;
	mapPoint = static_cast<WorldRoom*>(GGame::g_game->temple->GetRoom(TEMPLE_ROOM_WORLD))
	               ->Map->CalcPoint(spellPos.MapMetersX(), spellPos.MapMetersZ(), NULL);
	mapPoint.y += WORLD_ROOM_SPELL_HEIGHT_OFFSET;
	MapCoords seedPos(mapPoint.x, mapPoint.z);
	seedPos.SetAltitude(mapPoint.y - LH3DIsland::GetAltitude(mapPoint));
	if (seedType != SPELL_SEED_TYPE_NONE)
	{
		SeedGraphic =
			SpellSeedGraphic::Create(seedPos, seedType, GetPlayer(), WORLD_ROOM_SPELL_SEED_SIZE, POWER_UP_TYPE_NONE);
		SeedGraphic->SetAutoUpdate(false);
	}
}

void WorldRoom::CreateWorldMapSpells()
{
	DestroyWorldMapSpells();
	for (Spell* spell = GGame::g_game->GameLists.spells.Get(); spell != NULL; spell = spell->next.Get())
	{
		if (spell->IsAvailable() == true)
		{
			spell->CreateSpellSeedGraphic();
		}
	}
}

void WorldRoom::DrawWorldMapSpells()
{
	for (Spell* spell = GGame::g_game->GameLists.spells.Get(); spell != NULL; spell = spell->next.Get())
	{
		if (spell->IsAvailable() && spell->SeedGraphic != NULL)
		{
			LHMatrix matrix;
			float    scale;
			SpellPosToWorldRoomPos(spell->Pos, &matrix, &scale);
			spell->SeedGraphic->DrawUpdateAtPos(matrix, scale);
			spell->SeedGraphic->DrawSpellGraphic(NULL, true, false, LH3D_COLOR_CHANNEL_MAX);
		}
	}
}

void WorldRoom::DestroyWorldMapSpells()
{
	for (Spell* spell = GGame::g_game->GameLists.spells.Get(); spell != NULL; spell = spell->next.Get())
	{
		if (spell->IsAvailable() == true)
		{
			spell->DeleteSpellSeedGraphic();
		}
	}
}

void WorldRoom::DrawChallenges(bool glow)
{
	for (unsigned long challengeIndex = 0; challengeIndex < ChallengeRoom::GetNumOfChallenges(); challengeIndex++)
	{
		TempleChallenge* challenge = ChallengeRoom::GetChallengeAtPosition(challengeIndex);
		LHPoint          challengePos = challenge->GetPosition();
		if (challenge->GetSuccess() < 1.0)
		{
			if (glow)
			{
				LHPoint glowPos = challengePos;
				glowPos.y += WORLD_ROOM_MARKER_GLOW_LIFT;
				LH3DColor glowColour(WORLD_ROOM_MARKER_GLOW_RED, WORLD_ROOM_MARKER_GLOW_GREEN,
				                     WORLD_ROOM_MARKER_GLOW_BLUE);
				inner_room->Glow->DrawGlowAtPoint(glowPos, glowColour, WORLD_ROOM_MARKER_GLOW_SIZE);
			}
			else
			{
				Map->DrawMarkerAt(LH3DColor(LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX),
				                  challengePos.x, challengePos.z, ChallengeIconObject, MarkerAngle,
				                  WORLD_ROOM_MARKER_SCALE);
			}
		}
	}
}

inline bool32_t ShouldDrawWorldRoomGlowPass(WorldRoom* room)
{
#ifdef VERSION_BW1WCI
	return GGame::g_game->temple->ActiveRoom == room;
#else
	return true;
#endif
}

void WorldRoom::DrawAdditional(bool reflection)
{
	if (!reflection)
	{
		for (int pass = WORLD_ROOM_DRAW_PASS_GLOW; pass < WORLD_ROOM_DRAW_PASS_COUNT; pass++)
		{
			if (pass != WORLD_ROOM_DRAW_PASS_GLOW && DisplayMagicActivity)
			{
				DrawWorldMapSpells();
			}
			if (pass == WORLD_ROOM_DRAW_PASS_GLOW && ShouldDrawWorldRoomGlowPass(this))
			{
				LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
			}
			if (DisplayCitadel)
			{
				DrawCitadel(pass == WORLD_ROOM_DRAW_PASS_GLOW);
			}
			if (DisplayCreature)
			{
				DrawCreature(pass == WORLD_ROOM_DRAW_PASS_GLOW);
			}
			if (DisplayChallenges)
			{
				DrawChallenges(pass == WORLD_ROOM_DRAW_PASS_GLOW);
			}
			if (pass == WORLD_ROOM_DRAW_PASS_GLOW)
			{
				LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
			}
		}
		MarkerAngle += LH3DTech::g_delta_time * WORLD_ROOM_ANIMATION_TIME_SCALE;
	}
	TempleRoom::DrawAdditional(reflection);
}

void WorldRoom::Update()
{
	TempleRoom::Update();
	if (Temple::LeaveCitadel)
	{
		GGame::g_game->LeaveInsideCitadel();
		Temple::LeaveCitadel = false;
	}
}

inline int CalcWorldRoomWaterAlpha(float animation_time)
{
	return static_cast<int>(WORLD_ROOM_WATER_ALPHA_AMPLITUDE * sin(animation_time) + WORLD_ROOM_WATER_ALPHA_BASE);
}

inline uint32_t CalcWorldRoomWaterColour()
{
	uint32_t citadelColour = Temple::CitadelColour.GetColor();
	uint32_t waterRed = ((citadelColour & 0xff0000) >> 8) * WORLD_ROOM_WATER_COLOUR_SCALE & 0xff0000;
	uint32_t waterGreen = ((citadelColour >> 8 & 0xff) * WORLD_ROOM_WATER_COLOUR_SCALE >> 8) << 8;
	uint32_t waterBlue = (citadelColour & 0xff) * WORLD_ROOM_WATER_COLOUR_SCALE >> 8;
	return (waterRed | waterGreen | waterBlue) & LH3D_COLOR_RGB_MASK;
}

inline float CalcWorldRoomExitGlowProgress(float state_time)
{
	float exitGlowProgress =
		static_cast<float>((state_time - WORLD_ROOM_EXIT_GLOW_DELAY) * WORLD_ROOM_EXIT_GLOW_INITIAL_RATE);
	if (exitGlowProgress < 0.0f)
	{
		exitGlowProgress = 0.0f;
	}
	if (exitGlowProgress > WORLD_ROOM_EXIT_GLOW_KNEE)
	{
		exitGlowProgress = (exitGlowProgress - WORLD_ROOM_EXIT_GLOW_KNEE) * WORLD_ROOM_EXIT_GLOW_ACCELERATION +
		                   WORLD_ROOM_EXIT_GLOW_KNEE;
	}
	if (exitGlowProgress > WORLD_ROOM_EXIT_GLOW_LIMIT)
	{
		exitGlowProgress = WORLD_ROOM_EXIT_GLOW_LIMIT;
	}
	return exitGlowProgress;
}

inline void UpdateWorldRoomStatistics()
{
	WorldRoom* room = static_cast<WorldRoom*>(GGame::g_game->temple->GetRoom(TEMPLE_ROOM_WORLD));
	if (!WorldRoom::ShowStatistics)
	{
		if (room->camera->ZoomProgress > WORLD_ROOM_STATISTICS_ZOOM_THRESHOLD)
		{
			WorldRoom::ShowStatistics = true;
		}
	}
	else
	{
		WorldRoom::MakeScrollText(true);
		if (room->camera->ZoomProgress <= WORLD_ROOM_STATISTICS_ZOOM_THRESHOLD)
		{
			WorldRoom::ShowStatistics = false;
			WorldRoom::MakeScrollText(false);
		}
	}
}

inline void DrawWorldRoomSignLabels(WorldRoom* room, wchar_t** sign_texts)
{
	int highlightedSignIndex = room->camera->HighlightedDoor;
	if (highlightedSignIndex == WORLD_ROOM_DOOR_CHALLENGE)
	{
		highlightedSignIndex = WORLD_ROOM_SIGN_COUNT - 1;
	}
	room->DrawNameScrolls(WORLD_ROOM_SIGN_COUNT, WORLD_ROOM_SIGN_FADE, highlightedSignIndex, sign_texts, SignColours,
	                      1.0f, 1.0f);
}

void WorldRoom::Draw()
{
	RoomsAvailable = true;
	if (LH3DLevelOfDetail::g_citadellod.Reflections && LH3DLevelOfDetail::g_citadellod.Lightmaps)
	{
		inner_room->Draw(true, ControlDrawData, NumControls);
		DrawAdditional(true);
		inner_room->DrawGlow(true);
	}
	inner_room->DrawFloor(LH3D_COLOR_OPAQUE);

	static float waterAnimationTime = 0.0f;
	waterAnimationTime += LH3DTech::g_delta_time * WORLD_ROOM_ANIMATION_TIME_SCALE;
	uint32_t waterAlpha = static_cast<uint32_t>(CalcWorldRoomWaterAlpha(waterAnimationTime));
	uint32_t waterColour = CalcWorldRoomWaterColour();

	WaterObject->SetDrawWithGlobalAlpha(true);
	WaterObject->SetPosition(LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 1.0f);
	WaterObject->SetColorSpecular(waterColour + (waterAlpha << 24), Temple::CitadelSpecular.GetColor());
	WaterObject->SetNeedClipping(true);
	WaterObject->SetAnimatedUV(-waterAnimationTime * WORLD_ROOM_WATER_U_SPEED,
	                           waterAnimationTime * WORLD_ROOM_WATER_BASE_V_SPEED);
	WaterObject->Draw();

	WaterObject->SetDrawWithGlobalAlpha(true);
	WaterObject->SetPosition(LHPoint(0.0f, WORLD_ROOM_UPPER_WATER_OFFSET, 0.0f), QUARTER_PI_F, 1.0f);
	WaterObject->SetColorSpecular(waterColour + ((LH3D_COLOR_CHANNEL_MAX - waterAlpha) << 24),
	                              Temple::CitadelSpecular.GetColor());
	WaterObject->SetNeedClipping(true);
	WaterObject->SetAnimatedUV(waterAnimationTime * WORLD_ROOM_WATER_U_SPEED,
	                           waterAnimationTime * WORLD_ROOM_WATER_UPPER_V_SPEED);
	WaterObject->Draw();

	static bool32_t useGlobalAlpha = false;
	LH3DMaterial::g_list_render_func =
		useGlobalAlpha ? LH3DMaterial::g_list_render_func_global_alpha : LH3DMaterial::g_list_render_func_normal;

	Map->DrawMap();
	TempleRoom::Draw();

	static wchar_t* signTexts[WORLD_ROOM_SIGN_COUNT] = {
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_CREATURE_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_GAMEOPTIONS_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_EXIT_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_UNIVERSE_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_CREDITS_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_SAVEGAME_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_CHALLENGE_TITLE)),
	};
	DrawWorldRoomSignLabels(this, signTexts);

	// Walking out of the citadel: the exit door fills with light.
	if (camera->State == INNER_CAMERA_STATE_THROUGH_DOOR && camera->TargetRoom == TEMPLE_ROOM_COUNT)
	{
		float exitGlowProgress = CalcWorldRoomExitGlowProgress(camera->StateTime);
		if (exitGlowProgress > 0.0f)
		{
			uint32_t exitGlowBrightness =
				static_cast<uint32_t>(exitGlowProgress * WORLD_ROOM_EXIT_GLOW_BRIGHTNESS_RATE);
			exitGlowBrightness = min(LH3D_COLOR_CHANNEL_MAX, exitGlowBrightness);
			uint32_t glowAlpha = static_cast<uint32_t>(exitGlowProgress * WORLD_ROOM_EXIT_GLOW_ALPHA_RATE);
			glowAlpha = min(LH3D_COLOR_CHANNEL_MAX, glowAlpha);
			float startRadius = (exitGlowProgress - WORLD_ROOM_EXIT_GLOW_KNEE) * WORLD_ROOM_EXIT_GLOW_SPREAD_RATE;
			if (startRadius < 0.0f)
			{
				startRadius = 0.0f;
			}
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
			LHPoint  start(WORLD_ROOM_EXIT_GLOW_START_X, WORLD_ROOM_EXIT_GLOW_HEIGHT, 0.0f);
			LHPoint  end(WORLD_ROOM_EXIT_GLOW_END_X, WORLD_ROOM_EXIT_GLOW_HEIGHT, 0.0f);
			LHMatrix rotation;
			rotation.SetRotationY(static_cast<WorldRoomCamera*>(camera)->SelectedDoor * QUARTER_PI_F);
			rotation.TransformPoint(start);
			rotation.TransformPoint(end);
			inner_room->Glow->DrawWhiteGlow(
				start, end, WORLD_ROOM_EXIT_GLOW_START_HEIGHT,
				exitGlowProgress * WORLD_ROOM_EXIT_GLOW_END_HEIGHT_RATE + WORLD_ROOM_EXIT_GLOW_END_HEIGHT_BASE,
				startRadius, exitGlowProgress * WORLD_ROOM_EXIT_GLOW_END_RADIUS_RATE,
				(glowAlpha << 24) + (exitGlowBrightness << 16) + (exitGlowBrightness << 8) + exitGlowBrightness);
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		}
	}

	UpdateWorldRoomStatistics();

	InfluenceCircle::g_pos_inside_citadel = Map->CalcPoint(0.0f, 0.0f, NULL);
	InfluenceCircle::g_scale_inside_citadel = Map->Scale / WORLD_ROOM_INFLUENCE_SCALE_DIVISOR;
}

void WorldRoom::UpdateMouse(LHCoord coord, INTERFACE_MESSAGE_TYPES message)
{
	TempleRoom::UpdateMouse(coord, message);
}

void WorldRoom::UpdateKeyboard(LH_KEY key, uint16_t modifiers)
{
	TempleRoom::UpdateKeyboard(key, modifiers);
}

inline void PlayCitadelButtonSound(LH_SamplePlayOptions& options, Base* attached_object, LH_SAMPLE sample,
                                   uint32_t pitch)
{
	options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
	options.AttachedObject = attached_object;
	options.SampleNumber = sample;
	options.Positional = false;
	options.PlayType = LH_SAMPLE_PLAY_TYPE_RESTART;
	options.Pitch = pitch;
	GGlobal::Global.audio->PlaySoundEffect(&options);
}

bool32_t WorldRoom::WorldButtonDisplayCitadelCheckedSet(CallbackData& data)
{
	LH_SamplePlayOptions options;
	PlayCitadelButtonSound(options, NULL, LH_SAMPLE_G_CITADELBUTTONDOWN_01, WORLD_ROOM_BUTTON_PITCH_NORMAL);
	DisplayCitadel = false;
	return true;
}

bool32_t WorldRoom::WorldButtonDisplayCitadelUncheckedSet(CallbackData& data)
{
	LH_SamplePlayOptions options;
	PlayCitadelButtonSound(options, NULL, LH_SAMPLE_G_CITADELBUTTONUP_01, WORLD_ROOM_BUTTON_PITCH_NORMAL);
	DisplayCitadel = true;
	return true;
}

bool32_t WorldRoom::WorldButtonDisplayCreatureCheckedSet(CallbackData& data)
{
	LH_SamplePlayOptions options;
	PlayCitadelButtonSound(options, NULL, LH_SAMPLE_G_CITADELBUTTONDOWN_01, WORLD_ROOM_BUTTON_PITCH_CREATURE);
	DisplayCreature = false;
	return true;
}

bool32_t WorldRoom::WorldButtonDisplayCreatureUncheckedSet(CallbackData& data)
{
	LH_SamplePlayOptions options;
	PlayCitadelButtonSound(options, reinterpret_cast<Base*>(110), LH_SAMPLE_G_CITADELBUTTONUP_01,
	                       WORLD_ROOM_BUTTON_PITCH_NORMAL);
	DisplayCreature = true;
	return true;
}

bool32_t WorldRoom::WorldButtonDisplayMagicActivityCheckedSet(CallbackData& data)
{
	LH_SamplePlayOptions options;
	PlayCitadelButtonSound(options, NULL, LH_SAMPLE_G_CITADELBUTTONDOWN_01, WORLD_ROOM_BUTTON_PITCH_MAGIC);
	DisplayMagicActivity = false;
	return true;
}

bool32_t WorldRoom::WorldButtonDisplayMagicActivityUncheckedSet(CallbackData& data)
{
	LH_SamplePlayOptions options;
	PlayCitadelButtonSound(options, NULL, LH_SAMPLE_G_CITADELBUTTONUP_01, WORLD_ROOM_BUTTON_PITCH_MAGIC);
	DisplayMagicActivity = true;
	return true;
}

bool32_t WorldRoom::WorldButtonDisplayInfluenceCheckedSet(CallbackData& data)
{
	LH_SamplePlayOptions options;
	PlayCitadelButtonSound(options, NULL, LH_SAMPLE_G_CITADELBUTTONDOWN_01, WORLD_ROOM_BUTTON_PITCH_INFLUENCE);
	DisplayInfluence = false;
	ShowInfluence = false;
	return true;
}

bool32_t WorldRoom::WorldButtonDisplayInfluenceUncheckedSet(CallbackData& data)
{
	LH_SamplePlayOptions options;
	PlayCitadelButtonSound(options, NULL, LH_SAMPLE_G_CITADELBUTTONUP_01, WORLD_ROOM_BUTTON_PITCH_INFLUENCE);
	DisplayInfluence = true;
	ShowInfluence = true;
	static_cast<WorldRoom*>(GGame::g_game->temple->GetRoom(TEMPLE_ROOM_WORLD))->CreateWorldMapColours();
	return true;
}

bool32_t WorldRoom::WorldButtonDisplayChallengesCheckedSet(CallbackData& data)
{
	LH_SamplePlayOptions options;
	PlayCitadelButtonSound(options, NULL, LH_SAMPLE_G_CITADELBUTTONDOWN_01, WORLD_ROOM_BUTTON_PITCH_CHALLENGES);
	DisplayChallenges = false;
	return true;
}

bool32_t WorldRoom::WorldButtonDisplayChallengesUncheckedSet(CallbackData& data)
{
	LH_SamplePlayOptions options;
	PlayCitadelButtonSound(options, NULL, LH_SAMPLE_G_CITADELBUTTONUP_01, WORLD_ROOM_BUTTON_PITCH_CHALLENGES);
	DisplayChallenges = true;
	return true;
}

inline void SetWorldRoomToolTip(unsigned long text, KEYALIGN align)
{
	TempleRoom::ToolTipAction = BINDABLE_ACTION_MOVE;
	TempleRoom::ToolTipText = text;
	TempleRoom::ToolTipAlign = align;
}

inline bool32_t UpdateWorldRoomButtonDisplay(CallbackData& data, bool32_t visible, unsigned long tooltip_text)
{
	data.Visible = visible;
	if (data.Highlighted)
	{
		SetWorldRoomToolTip(tooltip_text, KEYALIGN_LEFT);
	}
	return true;
}

bool32_t WorldRoom::WorldButtonDisplayCitadelCheckedGet(CallbackData& data)
{
	return UpdateWorldRoomButtonDisplay(data, DisplayCitadel == true, TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_TOGGLE_TEMPLES));
}

bool32_t WorldRoom::WorldButtonDisplayCitadelUncheckedGet(CallbackData& data)
{
	return UpdateWorldRoomButtonDisplay(data, !DisplayCitadel, TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_TOGGLE_TEMPLES));
}

bool32_t WorldRoom::WorldButtonDisplayCreatureCheckedGet(CallbackData& data)
{
	return UpdateWorldRoomButtonDisplay(data, DisplayCreature == true,
	                                    TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_TOGGLE_CREATURES));
}

bool32_t WorldRoom::WorldButtonDisplayCreatureUncheckedGet(CallbackData& data)
{
	return UpdateWorldRoomButtonDisplay(data, !DisplayCreature, TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_TOGGLE_CREATURES));
}

bool32_t WorldRoom::WorldButtonDisplayMagicActivityCheckedGet(CallbackData& data)
{
	return UpdateWorldRoomButtonDisplay(data, DisplayMagicActivity == true,
	                                    TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_TOGGLE_MIRACLE_ACTIVITY));
}

bool32_t WorldRoom::WorldButtonDisplayMagicActivityUncheckedGet(CallbackData& data)
{
	return UpdateWorldRoomButtonDisplay(data, !DisplayMagicActivity,
	                                    TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_TOGGLE_MIRACLE_ACTIVITY));
}

bool32_t WorldRoom::WorldButtonDisplayInfluenceCheckedGet(CallbackData& data)
{
	return UpdateWorldRoomButtonDisplay(data, DisplayInfluence == true,
	                                    TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_TOGGLE_INFLUENCE));
}

bool32_t WorldRoom::WorldButtonDisplayInfluenceUncheckedGet(CallbackData& data)
{
	return UpdateWorldRoomButtonDisplay(data, !DisplayInfluence, TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_TOGGLE_INFLUENCE));
}

bool32_t WorldRoom::WorldButtonDisplayChallengesCheckedGet(CallbackData& data)
{
	return UpdateWorldRoomButtonDisplay(data, DisplayChallenges == true,
	                                    TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_TOGGLE_CHALLENGES));
}

bool32_t WorldRoom::WorldButtonDisplayChallengesUncheckedGet(CallbackData& data)
{
	return UpdateWorldRoomButtonDisplay(data, !DisplayChallenges, TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_TOGGLE_CHALLENGES));
}

bool32_t WorldRoom::WorldScrollSet(CallbackData& data)
{
	GGame::g_game->temple->SetCameraToLookAtSubMesh(data.SubMesh, WORLD_ROOM_SCROLL_CAMERA_PITCH, 0.0f, 0.0f);
	if (!GGame::g_game->temple->HelpSuppressed)
	{
		Temple::StartTempleScript("CitadelWorldRoomScrollHelp");
	}
	return true;
}

inline void UpdateWorldRoomScrollSound(long previous_offset, bool32_t& sound_played)
{
	if (WorldRoom::ScrollOffset != previous_offset)
	{
		if (!sound_played)
		{
			GGlobal::Global.audio->PlaySoundEffect(
				NULL, LH_SAMPLE_G_SCROLLSQUEAK_01 + GetTickCount() % NUM_SCROLL_SQUEAKS, LH_SAMPLE_PLAY_TYPE_ONCE, 0,
				false, false, AUDIO_SFX_BANK_TYPE_IN_GAME);
			sound_played = true;
		}
	}
	else
	{
		sound_played = false;
	}
}

inline void UpdateWorldRoomScrollToolTip(WorldRoom* room, const CallbackData& data)
{
	if (data.Highlighted)
	{
		if (room->camera->ZoomProgress != 1.0)
		{
			SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_WORLD_STATISTICS), KEYALIGN_LEFT);
		}
		else
		{
			SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_SCROLL), KEYALIGN_VERTICAL_ARROWS);
		}
	}
	else if (room->camera->State == INNER_CAMERA_STATE_FOCUSED && room->camera->ZoomProgress == 1.0)
	{
		SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_ZOOM_OUT), KEYALIGN_LEFT);
	}
}

bool32_t WorldRoom::WorldScrollGet(CallbackData& data)
{
	static bool32_t scrollSoundPlayed = false;

	data.Visible = true;
	data.V0 = 0.0f;
	data.U0 = 0.0f;
	data.U1 = data.V1 = 1.0f;
	WorldRoom* room = static_cast<WorldRoom*>(GGame::g_game->temple->GetRoom(TEMPLE_ROOM_WORLD));
	if (data.ScrollAmount != 0)
	{
		long previousOffset = ScrollOffset;
		ScrollOffset -= data.ScrollAmount;
		ScrollOffset = FindProperTextOffset(ScrollNumLines, ScrollOffset);
		if (!ShowStatistics)
		{
			MakeScrollText(false);
		}
		UpdateWorldRoomScrollSound(previousOffset, scrollSoundPlayed);
	}
	else
	{
		scrollSoundPlayed = false;
	}
	if (ScrollMaterial->texture != NULL)
	{
		data.Material = ScrollMaterial;
	}
	else
	{
		data.Material = NULL;
	}
	UpdateWorldRoomScrollToolTip(room, data);
	return true;
}

inline void BuildWorldRoomStatisticsText()
{
	WorldRoom::ClearText(WorldRoom::WorldStatisticsText);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_WORLD_TITLE), 0);
	WorldRoom::AddNewLine(WorldRoom::WorldStatisticsText);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_TOTAL_POPULATION), 0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_PERCENT_OF_POPULATION_BELIEVE_IN_YOU),
	                   0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_PERCENT_OF_POPULATION_THAT_ARE_MALE),
	                   0);
	WorldRoom::AddNewLine(WorldRoom::WorldStatisticsText);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_DEATHS_IN_YOUR_REGION), 0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_BIRTHS_IN_YOUR_REGION), 0);
#ifdef VERSION_BW1WCI
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, HELP_TEXT_PAUSE_STATS_108, 0);
#else
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, HELP_TEXT_PAUSE_STATS_83, 0);
#endif
	WorldRoom::AddNewLine(WorldRoom::WorldStatisticsText);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_BUILDINGS_BUILT), 0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_WONDERS_BUILT), 0);
	WorldRoom::AddNewLine(WorldRoom::WorldStatisticsText);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_DISCIPLES), 0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_BUILDERS), 0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_BREEDERS), 0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_FISHERMEN), 0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_FARMERS), 0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_FORESTERS), 0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_MISSIONARIES), 0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_CRAFTSMEN), 0);
	WorldRoom::AddText(WorldRoom::WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_TRADERS), 0);
	WorldRoom::EndText(WorldRoom::WorldStatisticsText);
}

void WorldRoom::MakeScrollText(bool32_t show_statistics)
{
	BuildWorldRoomStatisticsText();
	if (show_statistics)
	{
		ScrollNumLines =
			FormatTextureForScroll(ScrollTexture, ScrollFont, WorldStatisticsText, ScrollOffset, ScrollSubMesh);
	}
	else
	{
		ScrollNumLines = FormatTextureForScroll(ScrollTexture, ScrollFont, WorldStatisticsText, ScrollOffset, NULL);
	}
	LH3DTexture* texture = ScrollMaterial->texture;
	if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
	{
		texture->ReloadPending = true;
	}
}

void WorldRoom::PreDraw()
{
	TempleRoom::PreDraw();
}

void WorldRoom::PreToolTipProcess()
{
	SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_MOVE), KEYALIGN_ALL_ARROWS);
	if (camera->MouseHitType == INNER_CAMERA_HIT_NEAR)
	{
		if (camera->ClickHitType == INNER_CAMERA_HIT_NEAR && camera->ZoomProgress == 1.0)
		{
			SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_TILT_ROTATE), KEYALIGN_ALL_ARROWS);
		}
		else if (camera->ZoomProgress != 1.0)
		{
			SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_ZOOM_IN), KEYALIGN_LEFT);
		}
	}
	if (camera->HighlightedDoor != -1 && People == NULL)
	{
		switch (camera->HighlightedDoor)
		{
		case WORLD_ROOM_DOOR_CREATURE:
			SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_CREATURE_ROOM), KEYALIGN_LEFT);
			break;
		case WORLD_ROOM_DOOR_CHALLENGE:
			SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_CHALLENGE_ROOM), KEYALIGN_LEFT);
			break;
		case WORLD_ROOM_DOOR_SAVE_GAME:
			SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_SAVE_GAME_ROOM), KEYALIGN_LEFT);
			break;
		case WORLD_ROOM_DOOR_UNIVERSE:
			SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_FUTURE_ROOM), KEYALIGN_LEFT);
			break;
		case WORLD_ROOM_DOOR_GAME_OPTIONS:
			SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_OPTIONS_ROOM), KEYALIGN_LEFT);
			break;
		case WORLD_ROOM_DOOR_CREDITS:
			SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_LIBRARY), KEYALIGN_LEFT);
			break;
		case WORLD_ROOM_DOOR_EXIT:
			SetWorldRoomToolTip(TOOLTIP_TEXT(HELP_TEXT_TOOLTIP_EXIT_TEMPLE), KEYALIGN_LEFT);
			break;
		}
	}
}

wchar_t WorldRoom::WorldStatisticsText[];

float         WorldRoom::MarkerAngle = 0.0f;
SubmeshName*  WorldRoom::ScrollSubMesh = NULL;
unsigned long WorldRoom::ScrollNumLines = 0;
long          WorldRoom::ScrollOffset = 0;
LH3DTexture*  WorldRoom::ScrollTexture = NULL;
LH3DMaterial* WorldRoom::ScrollMaterial = NULL;
bool32_t      WorldRoom::ShowStatistics = false;
bool32_t      WorldRoom::RoomsAvailable = false;

void WorldRoom::ResetStatics()
{
	DisplayCitadel = true;
	DisplayMagicActivity = true;
	DisplayInfluence = true;
	DisplayCreature = true;
	DisplayChallenges = true;
	MarkerAngle = 0.0f;
	ScrollSubMesh = NULL;
	ScrollNumLines = 0;
	memset(WorldStatisticsText, 0, sizeof(WorldStatisticsText));
	ScrollOffset = 0;
	ScrollTexture = NULL;
	ScrollMaterial = NULL;
	ShowStatistics = false;
	RoomsAvailable = false;
}

void WorldRoom::SaveButtonConfig(GameOSFile& file)
{
	file.WriteSafe(DisplayCitadel);
	file.WriteSafe(DisplayCreature);
	file.WriteSafe(DisplayMagicActivity);
	file.WriteSafe(DisplayInfluence);
	file.WriteSafe(DisplayChallenges);
}

void WorldRoom::LoadButtonConfig(GameOSFile& file)
{
	file.ReadSafe(DisplayCitadel);
	file.ReadSafe(DisplayCreature);
	file.ReadSafe(DisplayMagicActivity);
	file.ReadSafe(DisplayInfluence);
	file.ReadSafe(DisplayChallenges);
	ShowInfluence = DisplayInfluence;
}
