#include "WorldRoom.h"

#include <math.h>    /* For cos, log, sin */
#include <string.h>  /* For _stricmp, strcpy */
#include <windows.h> /* For GetTickCount */

#include <chlasm/AudioSFX.h>      /* For enum AUDIO_SFX_BANK_TYPE */
#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT */
#include <chlasm/LHSample.h>      /* For enum LH_SAMPLE */

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

#include "MapCellConstants.h"  /* For MetresPerMapCell, ahead of the GameTimeConstants.h pair in .rdata */
#include "GameTimeConstants.h" /* For SecondsPerYear */
#include "ColourConstants.h"   /* For White */

// The name is a guess, but not a free one: cl6 orders .bss by a hash of the symbol name, and this
// unit's .bss has the constant between Draw's sign_texts guard and White. PSysProperties.cpp and
// Player.cpp hold the same constant as OneOverLogHalf, which sorts after White.
static float OneOnLogHalf = 1.0f / (float)log(0.5);

#if defined(VERSION_BW1W100)
#define WORLD_ROOM_SOURCE_FILE "C:\\dev\\black\\WorldRoom.cpp"
#elif defined(VERSION_BW1W110)
#define WORLD_ROOM_SOURCE_FILE "C:\\dev\\Black\\WorldRoom.cpp"
#else
#define WORLD_ROOM_SOURCE_FILE "C:\\dev\\MP\\Black\\WorldRoom.cpp"
#endif

// HelpTextEnums.h comes from a later build that has four more entries ahead of the room texts, so its
// HELP_TEXT_ROOM_* values sit four above the ones this build reads.
#define ROOM_TEXT(text) ((text) - 4)

// One name scroll per door; the challenge door's is the last.
#define NUM_SIGNS 7

// The scroll squeaks with one of these samples at random.
#define NUM_SCROLL_SQUEAKS (LH_SAMPLE_G_SCROLLSQUEAK_06 - LH_SAMPLE_G_SCROLLSQUEAK_01 + 1)

// The map markers and the glows drawn under them.
#define MARKER_SCALE     0.05f
#define MARKER_GLOW_SIZE 0.65f
#define MARKER_GLOW_LIFT 0.1f

// The water is the citadel colour darkened to WATER_COLOUR_SCALE / 256.
#define WATER_COLOUR_SCALE 208

// The name scrolls are drawn fully opaque; DrawNameScrolls takes four times the alpha.
#define SIGN_FADE (0xff * 4)

bool32_t WorldRoom::ShowInfluence = true;

static char*         SignNames[NUM_SIGNS] = {"SIGN CREATURE", "SIGN OPTIONS",  "SIGN EXIT",     "SIGN MULTIPLKAYER",
                                             "SIGN CREDITS",  "SIGN SAVEGAME", "SIGN CHALLENGE"};
static unsigned long SignColours[NUM_SIGNS][3] = {{0xec, 0xc6, 0x64}, {0xe5, 0xd4, 0x41}, {0xde, 0xe3, 0xef},
                                                  {0x6f, 0x92, 0xeb}, {0xd4, 0x6b, 0xfb}, {0x9c, 0xd1, 0x40},
                                                  {0xeb, 0x92, 0x6f}};

bool32_t WorldRoom::DisplayCitadel = true;
bool32_t WorldRoom::DisplayMagicActivity = true;
bool32_t WorldRoom::DisplayInfluence = true;
bool32_t WorldRoom::DisplayCreature = true;
bool32_t WorldRoom::DisplayChallenges = true;

wchar_t WorldRoom::WorldStatisticsText[0x2000];

static uint32_t UnusedStatic = 0;

struct WorldRoomCounterPad
{
	static int Pad0;
};

#define LIGHTEN_MARKER_COLOUR(colour)                                                                                  \
	(0xff000000 | (((colour & 0xff0000) + ((0xff0000 - (colour & 0xff0000)) * 64 >> 8)) & 0xff0000) |                  \
	 (((colour & 0xff00) + ((0xff00 - (colour & 0xff00)) * 64 >> 8)) & 0xff00) |                                       \
	 (((colour & 0xff) + ((0xff - (colour & 0xff)) * 64 >> 8)) & 0xff))

inline float MapCoords::MapMetersX()
{
	return MapX() * MetresPerMapCell;
}

inline float MapCoords::MapMetersZ()
{
	return MapZ() * MetresPerMapCell;
}

inline MapCoords::MapCoords(float meters_x, float meters_z)
{
	SetX(meters_x);
	SetZ(meters_z);
	SetAltitude(0.0f);
}

WorldRoom::WorldRoom() : TempleRoom("World Room")
{
	ResetStatics();
	LoadOptionData(!LH3DLevelOfDetail::g_citadellod.Lightmaps ? "data\\citadel\\engine\\mainlo.l3d"
	                                                          : "data\\citadel\\engine\\main.l3d",
	               NUM_CONTROLS, ControlSetCallbacks, ControlGetCallbacks, Controls);
	Map = NULL;
	WaterMesh = NULL;
	WaterObject = NULL;
	strcpy(HelpScriptName, "CitadelWorldRoomHelp");
}

WorldRoom::~WorldRoom() {}

void WorldRoom::InitEngine()
{
	for (LH3DTexture* texture = LH3DTexture::g_first; texture != NULL; texture = texture->next)
	{
		if (texture->GetType() != LH3D_TEXTURE_TYPE_NAMED && texture->VRAMTex != NULL)
		{
			texture->VRAMTex->Texture = NULL;
			texture->YouLostYourVRAM();
		}
	}
	Unused = 0;
	if (EngineInitialised)
	{
		return;
	}
	TempleRoom::InitEngine(!LH3DLevelOfDetail::g_citadellod.Lightmaps ? "data\\citadel\\engine\\mainlo.l3d"
	                                                                  : "data\\citadel\\engine\\main.l3d",
	                       !LH3DLevelOfDetail::g_citadellod.Lightmaps ? "data\\citadel\\engine\\mainfloorlo.l3d"
	                                                                  : "data\\citadel\\engine\\mainfloor.l3d",
	                       "data\\citadel\\engine\\main.glw", "data\\citadel\\engine\\main.cam");
	WaterMesh =
		LH3DMesh::CreateFromHD(!LH3DLevelOfDetail::g_citadellod.Lightmaps ? "data\\citadel\\engine\\mainwaterlo.l3d"
	                                                                      : "data\\citadel\\engine\\mainwater.l3d",
	                           false);
	WaterObject = LH3DObject::Create(LH3DObject::STATIC);
	WaterObject->SetMesh(WaterMesh, NULL, NULL);
	WaterObject->SetDynamicLighting(true);
	WaterObject->SetPosition(LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 1.0f);
	Font = GatheringText::gamefont;
	Map = new (WORLD_ROOM_SOURCE_FILE, 111) MiniMap;
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
	CitadelIconMesh = LH3DMesh::CreateFromHD("data\\citadel\\icons\\I_citadel_on_map.l3d", false);
	CitadelIconObject = LH3DObject::Create(LH3DObject::STATIC);
	CitadelIconObject->SetMesh(CitadelIconMesh, NULL, NULL);
	CitadelIconObject->SetDynamicLighting(true);
	CitadelIconObject->SetPosition(LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 1.0f);
	CreatureIconMesh = LH3DMesh::CreateFromHD("data\\citadel\\icons\\I_creature_on_map.l3d", false);
	CreatureIconObject = LH3DObject::Create(LH3DObject::STATIC);
	CreatureIconObject->SetMesh(CreatureIconMesh, NULL, NULL);
	CreatureIconObject->SetDynamicLighting(true);
	CreatureIconObject->SetPosition(LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 1.0f);
	ChallengeIconMesh = LH3DMesh::CreateFromHD("data\\citadel\\icons\\I_challenge_on_map.l3d", false);
	ChallengeIconObject = LH3DObject::Create(LH3DObject::STATIC);
	ChallengeIconObject->SetMesh(ChallengeIconMesh, NULL, NULL);
	ChallengeIconObject->SetDynamicLighting(true);
	ChallengeIconObject->SetPosition(LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 1.0f);
	camera->Close();
	delete camera;
	camera = new (WORLD_ROOM_SOURCE_FILE, 150) WorldRoomCamera;
	camera->Init("data\\citadel\\engine\\main.cam");
	ScrollTexture = LH3DTexture::Create("Data\\Citadel\\Controls\\ChallengeScroll.raw", 0x44, 0, NULL);
	ScrollMaterial = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_0x5, ScrollTexture);
	InitNameScrolls(SignNames, NUM_SIGNS);
	SubmeshNameData* names = (SubmeshNameData*)inner_room->Mesh->GetNameData();
	for (unsigned long i = 0; i < names->Count; i++)
	{
		if (_stricmp("LH_Scroll_World", names->Names[i].Name) == 0)
		{
			ScrollSubMesh = &names->Names[i];
			break;
		}
	}
	MakeScrollText(false);
}

void WorldRoom::CloseEngine()
{
	if (!EngineInitialised)
	{
		return;
	}
	TempleRoom::CloseEngine();
	Font = NULL;
	if (WaterObject != NULL)
	{
		WaterObject->Release();
	}
	if (WaterMesh != NULL)
	{
		WaterMesh->Release();
	}
	if (CitadelIconObject != NULL)
	{
		CitadelIconObject->Release();
	}
	if (CitadelIconMesh != NULL)
	{
		CitadelIconMesh->Release();
	}
	if (CreatureIconObject != NULL)
	{
		CreatureIconObject->Release();
	}
	if (CreatureIconMesh != NULL)
	{
		CreatureIconMesh->Release();
	}
	if (ChallengeIconObject != NULL)
	{
		ChallengeIconObject->Release();
	}
	if (ChallengeIconMesh != NULL)
	{
		ChallengeIconMesh->Release();
	}
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
	if (Temple::DoorPosition > 0.01f)
	{
		Draw();
		return;
	}
	LH3DMesh::g_hinge_only = true;
	inner_room->Object->SetNeedClipping(true);
	inner_room->Object->SetColorSpecular(*(unsigned long*)&Temple::CitadelColour,
	                                     *(unsigned long*)&Temple::CitadelSpecular);
	((LH3DStaticObject*)inner_room->Object)
		->DrawLightMap(NULL, 0, LH3DLevelOfDetail::g_citadellod.Lightmaps ? 5 : 0, 4, 0, true);
	LH3DMesh::g_hinge_only = false;
}

void WorldRoom::DrawCitadel(bool glow)
{
	for (GPlayer* player = GGame::g_game->GetNextPlayer(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayer(player))
	{
		if (player->citadel.Get() != NULL)
		{
			MapCoords pos = player->citadel->Pos;
			if (glow)
			{
				LHPoint point = Map->CalcPoint(pos.MapMetersX(), pos.MapMetersZ(), NULL);
				point.y += MARKER_GLOW_LIFT;
				LH3DColor colour(0x7c, 0x6e, 0x61);
				inner_room->Glow->DrawGlowAtPoint(point, colour, MARKER_GLOW_SIZE);
			}
			else
			{
				LH3DColor     marker_colour = player->GetPlayer3DColor();
				unsigned long colour = *(unsigned long*)&marker_colour;
				if ((colour & 0xffffff) == 0)
				{
					colour = 0xffffffff;
				}
				marker_colour = LH3DColor(LIGHTEN_MARKER_COLOUR(colour));
				Map->DrawMarkerAt(marker_colour, pos.MapMetersX(), pos.MapMetersZ(), CitadelIconObject, MarkerAngle,
				                  MARKER_SCALE);
			}
		}
	}
}

void MiniMap::DrawMarker(const LH3DColor& colour, LHPoint pos, LH3DObject* object, float angle, float scale)
{
	object->SetPosition(pos, angle, scale);
	unsigned long marker_colour = *(unsigned long*)&colour | 0xff000000;
	unsigned long specular = 0;
	ApplyCitadelColoring(marker_colour, specular);
	object->SetColorSpecular(marker_colour, specular);
	object->AddDrawing();
}

void WorldRoom::DrawCreature(bool glow)
{
	for (LHLinkedNode<Creature*>* node = Creature::CreatureList.GetStart(); node != NULL; node = node->next.Get())
	{
		Creature* creature = node->payload;
		if (creature != NULL)
		{
			MapCoords pos = creature->Pos;
			if (glow)
			{
				LHPoint point = Map->CalcPoint(pos.MapMetersX(), pos.MapMetersZ(), NULL);
				point.y += MARKER_GLOW_LIFT;
				LH3DColor colour(0x7c, 0x6e, 0x61);
				inner_room->Glow->DrawGlowAtPoint(point, colour, MARKER_GLOW_SIZE);
			}
			else
			{
				GPlayer*      player = creature->GetPlayer();
				LH3DColor     marker_colour = player != NULL ? player->GetPlayer3DColor() : LH3DColor(0xffffffff);
				unsigned long colour = *(unsigned long*)&marker_colour;
				if ((colour & 0xffffff) == 0)
				{
					colour = 0xffffffff;
				}
				marker_colour = LH3DColor(LIGHTEN_MARKER_COLOUR(colour));
				Map->DrawMarkerAt(marker_colour, pos.MapMetersX(), pos.MapMetersZ(), CreatureIconObject, MarkerAngle,
				                  MARKER_SCALE);
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
		SeedGraphic->ToBeDeleted(0);
		SeedGraphic = NULL;
	}
}

void SpellPosToWorldRoomPos(MapCoords& pos, LHMatrix* matrix, float* scale)
{
	LHPoint point = ((WorldRoom*)GGame::g_game->temple->GetRoom(TEMPLE_ROOM_WORLD))
	                    ->Map->CalcPoint(pos.MapMetersX(), pos.MapMetersZ(), NULL);
	*scale = 0.1f;
	point.y += 0.5f;
	matrix->SetScale(0.1f);
	matrix->SetTranslateOnly(point);
}

void Spell::CreateSpellSeedGraphic()
{
	DeleteSpellSeedGraphic();
	MapCoords       pos = Pos;
	SPELL_SEED_TYPE type = GetMagicInfo()->SpellSeedType;
	LHPoint         point;
	point = ((WorldRoom*)GGame::g_game->temple->GetRoom(TEMPLE_ROOM_WORLD))
	            ->Map->CalcPoint(pos.MapMetersX(), pos.MapMetersZ(), NULL);
	point.y += 0.5f;
	MapCoords seed_pos(point.x, point.z);
	seed_pos.SetAltitude(point.y - LH3DIsland::GetAltitude(point));
	if (type != SPELL_SEED_TYPE_NONE)
	{
		SeedGraphic = SpellSeedGraphic::Create(seed_pos, type, GetPlayer(), 0.1f, POWER_UP_TYPE_NONE);
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
			spell->SeedGraphic->DrawSpellGraphic(NULL, true, false, 0xff);
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
	for (unsigned long i = 0; i < ChallengeRoom::GetNumOfChallenges(); i++)
	{
		TempleChallenge* challenge = ChallengeRoom::GetChallengeAtPosition(i);
		LHPoint          pos = challenge->GetPosition();
		if (challenge->GetSuccess() < 1.0)
		{
			if (glow)
			{
				LHPoint glow_pos = pos;
				glow_pos.y += MARKER_GLOW_LIFT;
				LH3DColor colour(0x7c, 0x6e, 0x61);
				inner_room->Glow->DrawGlowAtPoint(glow_pos, colour, MARKER_GLOW_SIZE);
			}
			else
			{
				Map->DrawMarkerAt(LH3DColor(0xff, 0xff, 0xff), pos.x, pos.z, ChallengeIconObject, MarkerAngle,
				                  MARKER_SCALE);
			}
		}
	}
}

void WorldRoom::DrawAdditional(bool reflection)
{
	if (!reflection)
	{
		for (int pass = 0; pass < 2; pass++)
		{
			if (pass != 0)
			{
				if (DisplayMagicActivity)
				{
					DrawWorldMapSpells();
				}
			}
			else
			{
				LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
			}
			if (DisplayCitadel)
			{
				DrawCitadel(pass == 0);
			}
			if (DisplayCreature)
			{
				DrawCreature(pass == 0);
			}
			if (DisplayChallenges)
			{
				DrawChallenges(pass == 0);
			}
			if (pass == 0)
			{
				LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
			}
		}
		MarkerAngle += LH3DTech::g_delta_time * 0.001f;
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

void WorldRoom::Draw()
{
	RoomsAvailable = true;
	if (LH3DLevelOfDetail::g_citadellod.Reflections && LH3DLevelOfDetail::g_citadellod.Lightmaps)
	{
		inner_room->Draw(true, ControlDrawData, NumControls);
		DrawAdditional(true);
		inner_room->DrawGlow(true);
	}
	inner_room->DrawFloor(0xff);

	static float time = 0.0f;
	time += LH3DTech::g_delta_time * 0.001f;
	int alpha = (int)(32.0 * sin(time) + 128.0);

	unsigned long water_colour =
		((((*(unsigned long*)&Temple::CitadelColour & 0xff0000) >> 8) * WATER_COLOUR_SCALE & 0xff0000) |
	     (((*(unsigned long*)&Temple::CitadelColour >> 8 & 0xff) * WATER_COLOUR_SCALE >> 8) << 8) |
	     ((*(unsigned long*)&Temple::CitadelColour & 0xff) * WATER_COLOUR_SCALE >> 8)) &
		0xffffff;

	WaterObject->SetDrawWithGlobalAlpha(true);
	WaterObject->SetPosition(LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 1.0f);
	WaterObject->SetColorSpecular(water_colour + (alpha << 24), *(unsigned long*)&Temple::CitadelSpecular);
	WaterObject->SetNeedClipping(true);
	WaterObject->SetAnimatedUV_1(-time * 0.01f, time * 0.007f);
	WaterObject->Draw();

	WaterObject->SetDrawWithGlobalAlpha(true);
	WaterObject->SetPosition(LHPoint(0.0f, 0.05f, 0.0f), QUARTER_PI_F, 1.0f);
	WaterObject->SetColorSpecular(water_colour + ((255 - alpha) << 24), *(unsigned long*)&Temple::CitadelSpecular);
	WaterObject->SetNeedClipping(true);
	WaterObject->SetAnimatedUV_1(time * 0.01f, time * 0.005f);
	WaterObject->Draw();

	static int global_alpha = 0;
	LH3DMaterial::g_list_render_func =
		global_alpha ? LH3DMaterial::g_list_render_func_global_alpha : LH3DMaterial::g_list_render_func_normal;

	Map->DrawMap();
	TempleRoom::Draw();

	static wchar_t* sign_texts[NUM_SIGNS] = {
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_CREATURE_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_GAMEOPTIONS_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_EXIT_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_UNIVERSE_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_CREDITS_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_SAVEGAME_TITLE)),
		HelpTextDataBase::HelpTextDatabase.GetHelpText(ROOM_TEXT(HELP_TEXT_ROOM_CHALLENGE_TITLE)),
	};
	int highlighted = camera->HighlightedDoor;
	if (highlighted == WORLD_ROOM_DOOR_CHALLENGE)
	{
		highlighted = NUM_SIGNS - 1;
	}
	DrawNameScrolls(NUM_SIGNS, SIGN_FADE, highlighted, sign_texts, SignColours, 1.0f, 1.0f);

	// Walking out of the citadel: the exit door fills with light.
	if (camera->State == INNER_CAMERA_STATE_THROUGH_DOOR && camera->TargetRoom == TEMPLE_ROOM_COUNT)
	{
		float t = (float)((camera->StateTime - 2.2) * 1.5);
		if (t < 0.0f)
		{
			t = 0.0f;
		}
		if (t > 2.0f)
		{
			t = (t - 2.0f) * 1.5f + 2.0f;
		}
		if (t > 4.0f)
		{
			t = 4.0f;
		}
		if (t > 0.0f)
		{
			unsigned long grey = (unsigned long)(t * 127.0f);
			if (grey > 0xff)
			{
				grey = 0xff;
			}
			unsigned long glow_alpha = (unsigned long)(t * 75.0f);
			if (glow_alpha > 0xff)
			{
				glow_alpha = 0xff;
			}
			float spread = (t - 2.0f) * 7.0f;
			if (spread < 0.0f)
			{
				spread = 0.0f;
			}
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
			LHPoint  start(80.0f, 5.0f, 0.0f);
			LHPoint  end(60.0f, 5.0f, 0.0f);
			LHMatrix rotation;
			rotation.SetRotationY(((WorldRoomCamera*)camera)->SelectedDoor * QUARTER_PI_F);
			rotation.TransformPoint(start);
			rotation.TransformPoint(end);
			inner_room->Glow->DrawWhiteGlow(start, end, 20.0f, t * 10.0f + 20.0f, spread, t * 15.0f,
			                                (glow_alpha << 24) + (grey << 16) + (grey << 8) + grey);
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		}
	}

	WorldRoom* room = (WorldRoom*)GGame::g_game->temple->GetRoom(TEMPLE_ROOM_WORLD);
	if (!ShowStatistics)
	{
		if (room->camera->ZoomProgress > 0.5)
		{
			ShowStatistics = true;
		}
	}
	else
	{
		MakeScrollText(true);
		if (room->camera->ZoomProgress <= 0.5)
		{
			ShowStatistics = false;
			MakeScrollText(false);
		}
	}

	InfluenceCircle::g_pos_inside_citadel = Map->CalcPoint(0.0f, 0.0f, NULL);
	InfluenceCircle::g_scale_inside_citadel = Map->Scale / 80.0f;
}

void WorldRoom::UpdateMouse(LHCoord coord, INTERFACE_MESSAGE_TYPES message)
{
	TempleRoom::UpdateMouse(coord, message);
}

void WorldRoom::UpdateKeyboard(LH_KEY key, uint16_t modifiers)
{
	TempleRoom::UpdateKeyboard(key, modifiers);
}

#define PLAY_CITADEL_BUTTON_SOUND(attached_object, sample, pitch)                                                      \
	LH_SamplePlayOptions options;                                                                                      \
	options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];                                     \
	options.AttachedObject = attached_object;                                                                          \
	options.SampleNumber = sample;                                                                                     \
	options.Positional = 0;                                                                                            \
	options.Priority = 3;                                                                                              \
	options.Pitch = pitch;                                                                                             \
	GGlobal::Global.audio->PlaySoundEffect(&options)

int WorldRoom::WorldButtonDisplayCitadelCheckedSet(CallbackData& data)
{
	PLAY_CITADEL_BUTTON_SOUND(NULL, LH_SAMPLE_G_CITADELBUTTONDOWN_01, 100);
	DisplayCitadel = false;
	return 1;
}

int WorldRoom::WorldButtonDisplayCitadelUncheckedSet(CallbackData& data)
{
	PLAY_CITADEL_BUTTON_SOUND(NULL, LH_SAMPLE_G_CITADELBUTTONUP_01, 100);
	DisplayCitadel = true;
	return 1;
}

int WorldRoom::WorldButtonDisplayCreatureCheckedSet(CallbackData& data)
{
	PLAY_CITADEL_BUTTON_SOUND(NULL, LH_SAMPLE_G_CITADELBUTTONDOWN_01, 110);
	DisplayCreature = false;
	return 1;
}

int WorldRoom::WorldButtonDisplayCreatureUncheckedSet(CallbackData& data)
{
	PLAY_CITADEL_BUTTON_SOUND((Base*)110, LH_SAMPLE_G_CITADELBUTTONUP_01, 100);
	DisplayCreature = true;
	return 1;
}

int WorldRoom::WorldButtonDisplayMagicActivityCheckedSet(CallbackData& data)
{
	PLAY_CITADEL_BUTTON_SOUND(NULL, LH_SAMPLE_G_CITADELBUTTONDOWN_01, 95);
	DisplayMagicActivity = false;
	return 1;
}

int WorldRoom::WorldButtonDisplayMagicActivityUncheckedSet(CallbackData& data)
{
	PLAY_CITADEL_BUTTON_SOUND(NULL, LH_SAMPLE_G_CITADELBUTTONUP_01, 95);
	DisplayMagicActivity = true;
	return 1;
}

int WorldRoom::WorldButtonDisplayInfluenceCheckedSet(CallbackData& data)
{
	PLAY_CITADEL_BUTTON_SOUND(NULL, LH_SAMPLE_G_CITADELBUTTONDOWN_01, 105);
	DisplayInfluence = false;
	ShowInfluence = false;
	return 1;
}

int WorldRoom::WorldButtonDisplayInfluenceUncheckedSet(CallbackData& data)
{
	PLAY_CITADEL_BUTTON_SOUND(NULL, LH_SAMPLE_G_CITADELBUTTONUP_01, 105);
	DisplayInfluence = true;
	ShowInfluence = true;
	((WorldRoom*)GGame::g_game->temple->GetRoom(TEMPLE_ROOM_WORLD))->CreateWorldMapColours();
	return 1;
}

int WorldRoom::WorldButtonDisplayChallengesCheckedSet(CallbackData& data)
{
	PLAY_CITADEL_BUTTON_SOUND(NULL, LH_SAMPLE_G_CITADELBUTTONDOWN_01, 108);
	DisplayChallenges = false;
	return 1;
}

int WorldRoom::WorldButtonDisplayChallengesUncheckedSet(CallbackData& data)
{
	PLAY_CITADEL_BUTTON_SOUND(NULL, LH_SAMPLE_G_CITADELBUTTONUP_01, 108);
	DisplayChallenges = true;
	return 1;
}

int WorldRoom::WorldButtonDisplayCitadelCheckedGet(CallbackData& data)
{
	data.Visible = DisplayCitadel == true;
	if (data.Highlighted)
	{
		ToolTipAction = BINDABLE_ACTION_MOVE;
		ToolTipText = HELP_TEXT_TOOLTIP_23;
		ToolTipAlign = KEYALIGN_0x0;
	}
	return 1;
}

int WorldRoom::WorldButtonDisplayCitadelUncheckedGet(CallbackData& data)
{
	data.Visible = DisplayCitadel == false;
	if (data.Highlighted)
	{
		ToolTipAction = BINDABLE_ACTION_MOVE;
		ToolTipText = HELP_TEXT_TOOLTIP_23;
		ToolTipAlign = KEYALIGN_0x0;
	}
	return 1;
}

int WorldRoom::WorldButtonDisplayCreatureCheckedGet(CallbackData& data)
{
	data.Visible = DisplayCreature == true;
	if (data.Highlighted)
	{
		ToolTipAction = BINDABLE_ACTION_MOVE;
		ToolTipText = HELP_TEXT_TOOLTIP_21;
		ToolTipAlign = KEYALIGN_0x0;
	}
	return 1;
}

int WorldRoom::WorldButtonDisplayCreatureUncheckedGet(CallbackData& data)
{
	data.Visible = DisplayCreature == false;
	if (data.Highlighted)
	{
		ToolTipAction = BINDABLE_ACTION_MOVE;
		ToolTipText = HELP_TEXT_TOOLTIP_21;
		ToolTipAlign = KEYALIGN_0x0;
	}
	return 1;
}

int WorldRoom::WorldButtonDisplayMagicActivityCheckedGet(CallbackData& data)
{
	data.Visible = DisplayMagicActivity == true;
	if (data.Highlighted)
	{
		ToolTipAction = BINDABLE_ACTION_MOVE;
		ToolTipText = HELP_TEXT_TOOLTIP_25;
		ToolTipAlign = KEYALIGN_0x0;
	}
	return 1;
}

int WorldRoom::WorldButtonDisplayMagicActivityUncheckedGet(CallbackData& data)
{
	data.Visible = DisplayMagicActivity == false;
	if (data.Highlighted)
	{
		ToolTipAction = BINDABLE_ACTION_MOVE;
		ToolTipText = HELP_TEXT_TOOLTIP_25;
		ToolTipAlign = KEYALIGN_0x0;
	}
	return 1;
}

int WorldRoom::WorldButtonDisplayInfluenceCheckedGet(CallbackData& data)
{
	data.Visible = DisplayInfluence == true;
	if (data.Highlighted)
	{
		ToolTipAction = BINDABLE_ACTION_MOVE;
		ToolTipText = HELP_TEXT_TOOLTIP_24;
		ToolTipAlign = KEYALIGN_0x0;
	}
	return 1;
}

int WorldRoom::WorldButtonDisplayInfluenceUncheckedGet(CallbackData& data)
{
	data.Visible = DisplayInfluence == false;
	if (data.Highlighted)
	{
		ToolTipAction = BINDABLE_ACTION_MOVE;
		ToolTipText = HELP_TEXT_TOOLTIP_24;
		ToolTipAlign = KEYALIGN_0x0;
	}
	return 1;
}

int WorldRoom::WorldButtonDisplayChallengesCheckedGet(CallbackData& data)
{
	data.Visible = DisplayChallenges == true;
	if (data.Highlighted)
	{
		ToolTipAction = BINDABLE_ACTION_MOVE;
		ToolTipText = HELP_TEXT_TOOLTIP_22;
		ToolTipAlign = KEYALIGN_0x0;
	}
	return 1;
}

int WorldRoom::WorldButtonDisplayChallengesUncheckedGet(CallbackData& data)
{
	data.Visible = DisplayChallenges == false;
	if (data.Highlighted)
	{
		ToolTipAction = BINDABLE_ACTION_MOVE;
		ToolTipText = HELP_TEXT_TOOLTIP_22;
		ToolTipAlign = KEYALIGN_0x0;
	}
	return 1;
}

int WorldRoom::WorldScrollSet(CallbackData& data)
{
	GGame::g_game->temple->SetCameraToLookAtSubMesh(data.SubMesh, -30.0f, 0.0f, 0.0f);
	if (!GGame::g_game->temple->HelpSuppressed)
	{
		Temple::StartTempleScript("CitadelWorldRoomScrollHelp");
	}
	return 1;
}

int WorldRoom::WorldScrollGet(CallbackData& data)
{
	static bool32_t sound_played = false;

	data.Visible = true;
	data.V0 = 0.0f;
	data.U0 = 0.0f;
	data.U1 = data.V1 = 1.0f;
	WorldRoom* room = (WorldRoom*)GGame::g_game->temple->GetRoom(TEMPLE_ROOM_WORLD);
	if (data.ScrollAmount != 0)
	{
		long previous_offset = ScrollOffset;
		ScrollOffset -= data.ScrollAmount;
		ScrollOffset = FindProperTextOffset(ScrollNumLines, ScrollOffset);
		if (!ShowStatistics)
		{
			MakeScrollText(false);
		}
		if (ScrollOffset != previous_offset)
		{
			if (!sound_played)
			{
				GGlobal::Global.audio->PlaySoundEffect(
					NULL, LH_SAMPLE_G_SCROLLSQUEAK_01 + GetTickCount() % NUM_SCROLL_SQUEAKS, 2, 0, 0, 0,
					AUDIO_SFX_BANK_TYPE_IN_GAME);
				sound_played = true;
			}
		}
		else
		{
			sound_played = false;
		}
	}
	else
	{
		sound_played = false;
	}
	if (ScrollMaterial->texture != NULL)
	{
		data.Material = ScrollMaterial;
	}
	else
	{
		data.Material = NULL;
	}
	if (data.Highlighted)
	{
		if (room->camera->ZoomProgress != 1.0)
		{
			ToolTipAction = BINDABLE_ACTION_MOVE;
			ToolTipText = HELP_TEXT_TOOLTIP_105;
			ToolTipAlign = KEYALIGN_0x0;
		}
		else
		{
			ToolTipAction = BINDABLE_ACTION_MOVE;
			ToolTipText = HELP_TEXT_TOOLTIP_104;
			ToolTipAlign = KEYALIGN_0x300;
		}
	}
	else if (room->camera->State == INNER_CAMERA_STATE_FOCUSED && room->camera->ZoomProgress == 1.0)
	{
		ToolTipAction = BINDABLE_ACTION_MOVE;
		ToolTipText = HELP_TEXT_TOOLTIP_17;
		ToolTipAlign = KEYALIGN_0x0;
	}
	return 1;
}

void WorldRoom::MakeScrollText(bool32_t show_statistics)
{
	ClearText(WorldStatisticsText);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_WORLD_TITLE), 0);
	AddNewLine(WorldStatisticsText);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_TOTAL_POPULATION), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_PERCENT_OF_POPULATION_BELIEVE_IN_YOU), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_PERCENT_OF_POPULATION_THAT_ARE_MALE), 0);
	AddNewLine(WorldStatisticsText);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_DEATHS_IN_YOUR_REGION), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_BIRTHS_IN_YOUR_REGION), 0);
	AddText(WorldStatisticsText, HELP_TEXT_PAUSE_STATS_83, 0);
	AddNewLine(WorldStatisticsText);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_BUILDINGS_BUILT), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_WONDERS_BUILT), 0);
	AddNewLine(WorldStatisticsText);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_DISCIPLES), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_BUILDERS), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_BREEDERS), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_FISHERMEN), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_FARMERS), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_FORESTERS), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_MISSIONARIES), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_CRAFTSMEN), 0);
	AddText(WorldStatisticsText, ROOM_TEXT(HELP_TEXT_ROOM_NUMBER_OF_TRADERS), 0);
	EndText(WorldStatisticsText);
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
		texture->ReloadPending = 1;
	}
}

void WorldRoom::PreDraw()
{
	TempleRoom::PreDraw();
}

void WorldRoom::PreToolTipProcess()
{
	ToolTipAction = BINDABLE_ACTION_MOVE;
	ToolTipText = HELP_TEXT_TOOLTIP_04;
	ToolTipAlign = KEYALIGN_0xf00;
	if (camera->MouseHitType == INNER_CAMERA_HIT_NEAR)
	{
		if (camera->ClickHitType == INNER_CAMERA_HIT_NEAR && camera->ZoomProgress == 1.0)
		{
			ToolTipAction = BINDABLE_ACTION_MOVE;
			ToolTipText = HELP_TEXT_TOOLTIP_115;
			ToolTipAlign = KEYALIGN_0xf00;
		}
		else if (camera->ZoomProgress != 1.0)
		{
			ToolTipAction = BINDABLE_ACTION_MOVE;
			ToolTipText = HELP_TEXT_INTERRUPTION_IN_CITADEL_21;
			ToolTipAlign = KEYALIGN_0x0;
		}
	}
	int door = camera->HighlightedDoor;
	if (door != -1 && People == NULL)
	{
		switch (door)
		{
		case WORLD_ROOM_DOOR_CREATURE:
			ToolTipAction = BINDABLE_ACTION_MOVE;
			ToolTipText = HELP_TEXT_TOOLTIP_27;
			ToolTipAlign = KEYALIGN_0x0;
			break;
		case WORLD_ROOM_DOOR_CHALLENGE:
			ToolTipAction = BINDABLE_ACTION_MOVE;
			ToolTipText = HELP_TEXT_TOOLTIP_26;
			ToolTipAlign = KEYALIGN_0x0;
			break;
		case WORLD_ROOM_DOOR_SAVE_GAME:
			ToolTipAction = BINDABLE_ACTION_MOVE;
			ToolTipText = HELP_TEXT_TOOLTIP_28;
			ToolTipAlign = KEYALIGN_0x0;
			break;
		case WORLD_ROOM_DOOR_UNIVERSE:
			ToolTipAction = BINDABLE_ACTION_MOVE;
			ToolTipText = HELP_TEXT_TOOLTIP_32;
			ToolTipAlign = KEYALIGN_0x0;
			break;
		case WORLD_ROOM_DOOR_GAME_OPTIONS:
			ToolTipAction = BINDABLE_ACTION_MOVE;
			ToolTipText = HELP_TEXT_TOOLTIP_31;
			ToolTipAlign = KEYALIGN_0x0;
			break;
		case WORLD_ROOM_DOOR_CREDITS:
			ToolTipAction = BINDABLE_ACTION_MOVE;
			ToolTipText = HELP_TEXT_TOOLTIP_29;
			ToolTipAlign = KEYALIGN_0x0;
			break;
		case WORLD_ROOM_DOOR_EXIT:
			ToolTipAction = BINDABLE_ACTION_MOVE;
			ToolTipText = HELP_TEXT_TOOLTIP_30;
			ToolTipAlign = KEYALIGN_0x0;
			break;
		}
	}
}

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
