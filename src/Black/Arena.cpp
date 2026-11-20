#include "CreatureAttitudeConstants.h" /* For AttitudeFeedbackDecay */
#include "GameTimeConstants.h"
#include "Arena.h"

#include <math.h>   /* For cos, sin */
#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strlen */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For TWO_PI, PI_F */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>      /* For struct LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DRender.h>    /* For LH3DRender::g_zsorter */
#include <Lionhead/LH3DLib/development/LH3DTech.h>      /* For LH3DTech::g_camera */
#include <Lionhead/LH3DLib/development/LH3DZSorter.h>   /* For LH3DZSorter::NewZObject */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                /* For NEW */

#include "Audio.h"
#include "GLightSheet.h"
#include "ColourConstants.h" /* For White */
#include "Creature.h"
#include "Creature3D.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Global.h"
#include "GJUtils.h"
#include "MagicInfo.h"
#include "MapCoords.h"
#include "Player.h"
#include "Reaction.h"
#include "Script.h"
#include "Setup.h"
#include "SingleMapFixedInfo.h"
#include "SpellSeedGraphic.h"
#include "Utils.h"

// BW1W120 00d38338
extern bool32_t UseFightCheckForActivity;

#define NO_OFFSET (*(const MapCoords*)NULL)

static const float ArenaSpellIconRingRadius = 0.8f;
static const float ArenaSpellIconSheetRadiusScale = 1.8f;
static const float ArenaSpellIconSheetIdleIntensity = 0.33f;
static const float ArenaSpellIconSheetWaveHeightScale = 8.0f;
static const float ArenaSpellIconRadiusDivisor = 25.0f;

inline uint32_t ArenaSpellIcon::SaveObject(LHOSFile& file, const MapCoords* origin)
{
	return true;
}

inline bool32_t ArenaSpellIcon::CreatureMustAvoid(Creature* creature)
{
	return false;
}

inline uint32_t ArenaSpellIcon::GetSaveType()
{
	return GAME_THING_TYPE_ARENA_SPELL_ICON;
}

inline char* ArenaSpellIcon::GetDebugText()
{
	return "SpellIcon:";
}

inline MESH_LIST Object::GetMesh() const
{
	return MSH_DUMMY;
}

inline LightSheet::~LightSheet()
{
	Close();
}

GLightSheet::GLightSheet(const LHPoint& origin, float radius, LH3DColor colour, float wave_height, float scale_fac,
                         uint32_t num_samples)
{
	Origin = origin;
	Radius = radius;
	Colour = *(uint32_t*)&colour;
	Intensity = 1.0f;
	NumSamples = num_samples;
	Init();
	WaveHeight = wave_height;
	ScaleFac = scale_fac;
}

GLightSheet::~GLightSheet()
{
	Close();
}

void GLightSheet::Init()
{
	LightSheet::Init(NumSamples);
	for (uint32_t i = 0; i < NumSamples; i++)
	{
		float    angle = i * TWO_PI / ((float)NumSamples - 1);
		LHPoint& point = LHPoint(cos(angle), 0.0f, sin(angle));
		point *= Radius;
		point += Origin;
		LH3DMapCoords coords(point.x, point.z);
		point.y = LH3DIsland::GetAltitude(coords);
		Points[i] = point;
	}
}

void GLightSheet::Draw()
{
	LightSheet::Colour = Colour & LIGHT_SHEET_COLOUR_MASK;
	PulseLevel = GetIntensity();
	Update(LH3DTech::GetGameTimeInc() * LIGHT_SHEET_TIME_SCALE);
	Material = GlobalTextures::GetLightSheetMaterial();
	if (LH3DRender::g_started_frame)
	{
		LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&LightSheet::Draw,
		                                  LH3DTech::GetValueForZSorter(LightSheet::Centre), 0);
	}
}

GArena::GArena(const MapCoords& coords, float radius) : GameThingWithPos(coords), next()
{
	LinkedThing = NULL;
	Radius = radius;
	Scale = 1.0f;
	for (int i = 0; i < ARENA_CREATURE_COUNT; i++)
	{
		Creatures[i] = NULL;
	}
	GGame::g_game->GameLists.arenas.AddToFirst(this);
	CreatedForFight = false;
	Reaction::CreateReaction(this, REACTION_REACT_TO_FIGHT, NULL, 0);
}

GArena* GArena::Create(const MapCoords& coords, float radius)
{
	GArena* arena = NEW(90) GArena(coords, radius);
	if (arena != NULL)
	{
		arena->CallVirtualFunctionsForCreation(coords);
		return arena;
	}
	return NULL;
}

GArena* GArena::Create(const MapCoords& coords, Creature* creature_a, Creature* creature_b)
{
	float   radius = GetArenaRadius(creature_a, creature_b);
	GArena* arena = NEW(104) GArena(coords, radius);
	if (arena != NULL)
	{
		arena->CallVirtualFunctionsForCreation(coords);
		return arena;
	}
	return NULL;
}

void GArena::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		Sheet = NEW(117) GLightSheet(
			Pos.GetLHPoint(), Radius, LH3DColor(ARENA_SHEET_GREY_LEVEL, ARENA_SHEET_GREY_LEVEL, ARENA_SHEET_GREY_LEVEL),
			Radius * ARENA_SHEET_WAVE_HEIGHT_FACTOR, ARENA_SHEET_SCALE_FAC, ARENA_SHEET_NUM_SAMPLES);
	}
}

void GArena::ToBeDeleted(bool32_t delete_now)
{
	GGame::g_game->GameLists.arenas.Remove(this);
	Deactivate();
	if (Sheet != NULL)
	{
		delete Sheet;
		Sheet = NULL;
	}
	Reaction::RemoveAllReactionsInitiatedByObject(this);
	GameThingWithPos::ToBeDeleted(delete_now);
}

void GArena::Draw()
{
	if (FightInProgress)
	{
		if (Sheet == NULL)
		{
			Sheet = NEW(147)
				GLightSheet(Pos.GetLHPoint(), Radius, LH3DColor(255, 255, 255), Radius * ARENA_SHEET_WAVE_HEIGHT_FACTOR,
			                ARENA_SHEET_SCALE_FAC, ARENA_SHEET_NUM_SAMPLES);
		}
		Sheet->Draw();
	}
}

void GArena::CreateSpellIcons() {}

void GArena::RemoveSpellIcons() {}

void GArena::Activate(Creature* creature_a, Creature* creature_b)
{
	Creatures[0] = creature_a;
	Creatures[1] = creature_b;
	FightInProgress = true;
	LH_SamplePlayOptions options;
	options.Bank = GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_IN_GAME);
	options.SampleNumber = LH_SAMPLE_G_FIGHTARENADRAWN;
	options.Follow = false;
	LHPoint pos = Pos.GetLHPoint();
	options.XPos = pos.x;
	options.YPos = pos.y;
	options.ZPos = pos.z;
	options.AttachedObject = this;
	options.Positional = true;
	GGlobal::Global.audio->PlaySoundEffect(&options);
}

void GArena::Deactivate()
{
	if (FightInProgress)
	{
		for (int i = 0; i < ARENA_CREATURE_COUNT; i++)
		{
			Creatures[i] = NULL;
		}
		FightInProgress = false;
	}
}

bool32_t GArena::SaveAll(LHOSFile& file)
{
	for (GArena* arena = GGame::g_game->GameLists.arenas.head; arena != NULL; arena = arena->next)
	{
		arena->SaveObject(file, NO_OFFSET);
	}
	return true;
}

uint32_t GArena::SaveObject(LHOSFile& file, const MapCoords& origin)
{
	char text[100];
	char coordText[100];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords relative = (&origin != NULL) ? (Pos - origin) : Pos;
		if (Radius == 0.0f)
		{
			Radius = ARENA_DEFAULT_RADIUS;
		}
		sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_ARENA), relative.ConvertToText(coordText),
		        (double)Radius);
		GSetup::WriteToFile(this, file, text, strlen(text));
	}
	return saved;
}

bool32_t GArena::DeleteArenaAt(const MapCoords& coords)
{
	for (GArena* arena = GGame::g_game->GameLists.arenas.head; arena != NULL; arena = arena->next)
	{
		if (arena->DeleteIfWithinRadius(coords))
		{
			return true;
		}
	}
	return false;
}

bool32_t GArena::DeleteIfWithinRadius(const MapCoords& coords)
{
	if (Pos.IsWithinDistance(coords, Radius))
	{
		ToBeDeleted(false);
		return true;
	}
	return false;
}

void GArena::DrawAll()
{
	for (GArena* arena = GGame::g_game->GameLists.arenas.head; arena != NULL; arena = arena->next)
	{
		arena->Draw();
	}
}

float GArena::GetSpellIconAngle(uint32_t slot, uint32_t side)
{
	float step = ((float)((slot % 2) ? 1 : -1)) * (PI_F / 16);
	return step * ((slot / 2) + 1) + side * PI_F;
}

MapCoords GArena::GetSpellIconPos(uint32_t slot, uint32_t side)
{
	float     angle = GetSpellIconAngle(slot, side);
	float     distance = ArenaSpellIconRingRadius * Radius;
	MapCoords pos = Pos + GUtils::GetPosFromAngle(angle, distance);
	return pos;
}

GArena* GArena::FindNearestArena(const MapCoords& coords, float radius)
{
	float   nearestDistance = radius;
	GArena* nearest = NULL;
	for (GArena* arena = GGame::g_game->GameLists.arenas.head; arena != NULL; arena = arena->next)
	{
		float distance = GUtils::GetDistanceInMetres(coords, arena->GetPos());
		if (distance < nearestDistance)
		{
			nearestDistance = distance;
			nearest = arena;
		}
	}
	return nearest;
}

GArena* GArena::FindNearestArenaOrCreateNew(const MapCoords& coords, Creature* creature_a, Creature* creature_b,
                                            float radius)
{
	float   arenaRadius = GetArenaRadius(creature_a, creature_b);
	GArena* arena = FindNearestArena(coords, radius);
	if (arena != NULL)
	{
		arena->Radius = min(arena->GetRadius(), arenaRadius);
		arena->CreatedForFight = false;
	}
	else
	{
		MapCoords pos;
		pos.SetWholeX(coords.WholeX());
		pos.SetWholeZ(coords.WholeZ());
		pos.SetAltitude(coords.Altitude());
		for (float scale = 1.0f; scale > ARENA_MIN_SCALE; scale -= ARENA_SCALE_STEP)
		{
			creature_a->ClearArea.SearchRadius = ARENA_CLEAR_AREA_SEARCH_RADIUS;
			creature_a->ClearArea.Radius = 2.0 * scale * arenaRadius;
			UseFightCheckForActivity = true;
			bool32_t found = creature_a->ClearArea.FindClearArea(pos, creature_a, false);
			UseFightCheckForActivity = false;
			if (found)
			{
				pos = creature_a->ClearArea.Pos;
				GArena* newArena = Create(pos, scale * arenaRadius);
				if (newArena != NULL)
				{
					newArena->CreatedForFight = true;
					return newArena;
				}
			}
		}
	}
	return arena;
}

static float ArenaRadiusScale = 2.6f;

float GArena::GetArenaRadius(Creature* creature_a, Creature* creature_b)
{
	float radius = max(creature_a->GetCreature3D()->Size1 * ARENA_CREATURE_SIZE_SCALE,
	                   creature_b->GetCreature3D()->Size1 * ARENA_CREATURE_SIZE_SCALE) *
	               ArenaRadiusScale;
	if (radius < 0.0f)
	{
		radius = 0.0f;
	}
	else if (radius > ARENA_MAX_RADIUS)
	{
		radius = ARENA_MAX_RADIUS;
	}
	return radius;
}

uint32_t GArena::GetCreatureIndex(Creature* creature)
{
	for (int i = 0; i < ARENA_CREATURE_COUNT; i++)
	{
		if (Creatures[i] == creature)
		{
			return i;
		}
	}
	return 0;
}

bool32_t GArena::IsCreatureInArena(Creature* creature)
{
	for (int i = 0; i < ARENA_CREATURE_COUNT; i++)
	{
		if (Creatures[i] == creature)
		{
			return true;
		}
	}
	return false;
}

ArenaSpellIcon* GArena::FindSpellIcon(MAGIC_TYPE type, Creature* creature)
{
	return NULL;
}

void GArena::SetSpellSelection(MAGIC_TYPE type, Creature* creature, bool selected)
{
	ArenaSpellIcon* icon = FindSpellIcon(type, creature);
	if (icon != NULL)
	{
		icon->SetSelected(selected);
	}
}

bool32_t GArena::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		file.WriteIt(Scale);
		file.WriteIt(Radius);
		file.WriteIt(FightInProgress);
		file.WritePtrArray((GameThing**)Creatures, ARENA_CREATURE_COUNT);
		file.WritePtr(LinkedThing);
		return true;
	}
	return false;
}

bool32_t GArena::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadIt(Scale);
		file.ReadIt(Radius);
		file.ReadIt(FightInProgress);
		file.ReadPtrArray((GameThing**)Creatures);
		file.ReadPtr(&LinkedThing);
		return true;
	}
	return false;
}

ArenaSpellIcon::ArenaSpellIcon()
{
	field_0x70 = 0;
	SpellSeed = NULL;
	Sheet = NULL;
	Arena = NULL;
}

ArenaSpellIcon::ArenaSpellIcon(GArena* arena, MAGIC_TYPE spell_type, uint32_t slot, uint32_t creature_index)
	: Fixed(arena->GetSpellIconPos(slot, creature_index), &GSingleMapFixedInfo::Infos[MISC_INFO_ARENA_SPELL_ICON], 0.0f,
            1.0f),
	  field_0x70(0)
{
	Sheet = NULL;
	Arena = arena;
	SeedType = GMagicInfo::Infos[spell_type]->SpellSeedType;
	SetScale(arena->GetRadius() / ArenaSpellIconRadiusDivisor);
	SetYAngle(Arena->GetSpellIconAngle(slot, creature_index));
	SpellType = spell_type;
	CreatureIndex = creature_index;
}

ArenaSpellIcon::~ArenaSpellIcon() {}

void ArenaSpellIcon::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	Object::CallVirtualFunctionsForCreation(coords);
	LH3DMesh* mesh = Game3dObject->GetMesh();
	mesh->flags |= LH3D_MESH_FLAGS_UNKNOWN_15;
	Game3dObject->SetShadowOnTexture(true);
	GPlayer*  player = Arena->GetCreature(CreatureIndex)->GetPlayer();
	LH3DColor colour = player != NULL ? player->GetPlayer3DColor() : LH3DColor(255, 255, 255);
	if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		Sheet = NEW(534) GLightSheet(Pos.GetLHPoint(), GetScale() * ArenaSpellIconSheetRadiusScale, colour,
		                             GetScale() * ArenaSpellIconSheetWaveHeightScale, ARENA_SPELL_ICON_SHEET_SCALE_FAC,
		                             ARENA_SPELL_ICON_SHEET_SAMPLES);
		if (Sheet != NULL)
		{
			Sheet->SetIntensity(ArenaSpellIconSheetIdleIntensity);
		}
	}
}

bool32_t ArenaSpellIcon::GetSeedPos(MapCoords* pos)
{
	return GetSpecialPos(0, pos);
}

void ArenaSpellIcon::Create3DObject()
{
	Game3dObject =
		Game3DObject::Create(Pos, LH3DObject::STATIC, MSH_B_VILLAGECENTRE_SPELLHAND, GetYAngle(), GetScale());
	if (Game3dObject != NULL)
	{
		Game3dObject->SetDynamicLighting(true);
		Game3dObject->SetCastDynamicShadow(true);
		MapCoords coords;
		GetSeedPos(&coords);
		SpellSeed = SpellSeedGraphic::Create(coords, SeedType, GetPlayer(), GetScale(), POWER_UP_TYPE_NONE);
		if (SpellSeed != NULL)
		{
			SpellSeed->SetAutoUpdate(false);
		}
	}
}

void ArenaSpellIcon::ToBeDeleted(bool32_t delete_now)
{
	if (SpellSeed != NULL)
	{
		SpellSeed->ToBeDeleted(false);
		SpellSeed = NULL;
	}
	if (Sheet != NULL)
	{
		delete Sheet;
		Sheet = NULL;
	}
	Object::ToBeDeleted(delete_now);
}

Creature* ArenaSpellIcon::GetCreature()
{
	return Arena->GetCreature(CreatureIndex);
}

void ArenaSpellIcon::SetSelected(bool selected)
{
	if (Sheet != NULL)
	{
		if (selected == true)
		{
			GGlobal::Global.audio->PlaySoundEffect(NULL, LH_SAMPLE_G_CLICKONSPELL_01, LH_SAMPLE_PLAY_TYPE_ONCE, 0,
			                                       false, false, AUDIO_SFX_BANK_TYPE_IN_GAME);
			Sheet->Intensity = ARENA_SPELL_ICON_SHEET_FULL_INTENSITY;
		}
		else if (selected == false)
		{
			Sheet->SetIntensity(ArenaSpellIconSheetIdleIntensity);
		}
	}
}

void ArenaSpellIcon::Draw() {}

bool32_t ArenaSpellIcon::IsEffectReceiver(EffectValues* effect)
{
	return false;
}

bool32_t ArenaSpellIcon::Save(GameOSFile& file)
{
	if (Fixed::Save(file))
	{
		file.WritePtr((GameThing*)Arena);
		file.WriteIt(CreatureIndex);
		file.WriteIt(SpellType);
		file.WriteIt(SeedType);
		return true;
	}
	return false;
}

bool32_t ArenaSpellIcon::Load(GameOSFile& file)
{
	if (Fixed::Load(file))
	{
		file.ReadPtr((GameThing**)&Arena);
		file.ReadIt(CreatureIndex);
		file.ReadIt(SpellType);
		file.ReadIt(SeedType);
		return true;
	}
	return false;
}
