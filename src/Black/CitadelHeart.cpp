#include "GameTimeConstants.h"
#include "CitadelHeart.h"

#include <math.h> /* For log */

#include <Lionhead/LH3DLib/development/ArenaLight.h>        /* For ArenaLight::g_cur_arena_light */
#include <Lionhead/LH3DLib/development/InfluenceCircle.h>   /* For InfluenceCircle::g_b_valid */
#include <Lionhead/LH3DLib/development/LH3DCitadel.h>       /* For LH3DCitadel */
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h> /* For LH3DComplexObject */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>        /* For LandCell::g_darkness_to_color */
#include <Lionhead/LH3DLib/development/LH3DMaterial.h>      /* For struct MaterialProperties */
#include <Lionhead/LH3DLib/development/LH3DTech.h>          /* For LH3DTech::g_camera */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>          /* For struct LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DSprite.h>        /* For struct LH3DSprite */
#include <Lionhead/LH3DLib/development/LHRandom.h>          /* For Random */
#include <Lionhead/LH3DLib/development/EclairagePublic.h>   /* For struct EclairagePublic */
#include <Lionhead/LH3DLib/development/Leash.h>             /* For Leash::GetTexture */
#include <Lionhead/LH3DLib/development/LH3DGJAnimVolFX.h>   /* For class LH3DGJAnimVolFX */
#include <Lionhead/LH3DLib/development/LH3DMath.h>          /* For TWO_PI */
#include <Lionhead/LH3DLib/development/LH3DObjectCollide.h> /* For class LH3DObjectCollide */
#include <Lionhead/LHLib/ver5.0/LHCollide.h>                /* For class NewCollide */

#include "Animal.h"
#include "AnimalInfo.h"
#include "Alignment.h"
#include "Audio.h"
#include "Camera.h"
#include "BuildingSite.h"
#include "CitadelBuildingSite.h"
#include "CameraExclusion.h"
#include "Citadel.h"
#include "ControlHand.h"
#include "Creature.h"
#include "CitadelEntrance.h"
#include "CitadelHeartInfo.h"
#include "CitadelInfo.h"
#include "ColourConstants.h" /* For White */
#include "Flock.h"
#include "GJUtils.h"
#include "GameInfo.h"
#include "Game.h"
#include "Game3DObject.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "GameOSFile.h"
#include "EditorPhysics.h"
#include "EffectValues.h"
#include "Global.h"
#include "HelpSystem.h"
#include "Packet.h"
#include "Player.h"
#include "SaveGameRoom.h"
#include "Script.h"
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "PlannedCitadelHeart.h"
#include "PlannedCitadelPart.h"
#include "PlannedTownCitadelHeart.h"
#include "PhysicsObject.h"
#include "PSysGlobal.h"
#include "PSysProperties.h"
#include "ParticleContainer.h"
#include "Rand.h"
#include "SoundGuidance.h"
#include "SoundTag.h"
#include "Town.h"
#include "TribeInfo.h"
#include "WorshipSite.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\CitadelHeart.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CitadelHeart.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CitadelHeart.cpp"
#endif

// TODO: The original emits the int constants below into .rdata although nothing references them; MSVC6 only
// emits an unreferenced const int whose address is taken, so they are missing from this build.
const float DestructionPlasmaStartTime = 0.0f;
const float DestructionPlasmaDuration = 14.0f;
const float DestructionPlasmaEndSpeed = 1.5f;
const float DestructionPlasmaStartSpeed = 1.0f;
const float DestructionPlasmaEndAlpha = 200.0f;
const float DestructionPlasmaStartAlpha = 50.0f;
const float DestructionPlasmaStartInterval = 0.4f;
const float DestructionPlasmaEndInterval = 0.2f;
const float DestructionPlasmaEndWidth = 0.7f;
const float DestructionPlasmaStartWidth = 3.0f;
const float DestructionMagicFXTime = 10.0f;
const float DestructionMagicFXDuration = 6.0f;
const float DestructionExplodeTime = 21.5f;
const float DestructionExplosionDuration = 15.0f;
const float DestructionShockwaveDelay = 0.3f;
const float DestructionSmokeDelay = 0.5f;
const float DestructionSmokeDuration = 7.5f;
const float DestructionFadeStartTime = 14.0f;
const float DestructionFadeDuration = 4.0f;
const float DestructionSpecularStartTime = 3.5f;
const float DestructionMinSpecular = 10.0f;
const float DestructionMaxSpecular = 60.0f;
const float DestructionSpecularFadeInDuration = 3.0f;
const float DestructionVolFXDelay = 0.5f;
const int   DestructionStageCount = 6;
const float DestructionMaxParticleStrength = 1.0f;
const float DestructionMinParticleStrength = 0.25f;
const int   CreaturePenSpriteCount = 10;
const int   CreaturePenSpriteFrames = 1;
const float CreaturePenCollisionRadius = 1.0f;
const float CreaturePenXSpinSpeed = 0.1f;
const float CreaturePenZSpinSpeed = 1.0f;
const float CreaturePenUVSpeed = 0.5f;
const float CreaturePenFrameRate = 10.0f;
const int   CreaturePenColourKey = 0x6e37;
const float DestructionVolFXScale = 0.3f;
const float DestructionVolFXUSpeed = 0.6f;
const float DestructionVolFXVSpeed = 0.2f;
const float DestructionVolFXField14 = 0.7f;
const float DestructionVolFXField18 = 0.1f;
const int   DestructionVolFXFrameCount = 20;
const float ImpactDamageScale = 0.000005f;
const float HeartRouteSize = 21.5f;
const float TransferedEffectPlasmaWidth = 2.0f;
const float TransferedEffectPlasmaSpeed = 1.5f;
const float TransferedEffectPlasmaAlpha = 70.0f;
const float TransferedDamagePlasmaEndWidth = 3.0f;
const float TransferedDamagePlasmaStartWidth = 0.4f;
const float TransferedDamagePlasmaEndAlpha = 20.0f;
const float TransferedDamagePlasmaStartAlpha = 100.0f;
const float CollideRadius = 21.5f;
const float CollideSphereScale = 1.4f;

#define CITADEL_SCRIPT_SCALE               1000.0f
#define CREATURE_PEN_COLLAR_V_STEP         0.125f
#define CREATURE_PEN_COLLAR_V_FIRST        0.375f
#define CREATURE_PEN_SPRITE_FRAME_RANGE    15.0f
#define CREATURE_PEN_LIGHT_ALPHA_SCALE     (1.0f / 6.0f)
#define CREATURE_PEN_HAND_COLLAR_SIZE      173.52948f
#define CREATURE_PEN_HAND_COLLAR_OFFSET_X  0.05f
#define CREATURE_PEN_HAND_COLLAR_OFFSET_Y  0.25f
#define CITADEL_SURFACE_MIN_NORMAL_Y       (-0.1f)
#define MILLISECONDS_TO_SECONDS            0.001f
#define DESTRUCTION_SMOKE_RANDOM_DURATION  0.4f
#define DESTRUCTION_SMOKE_MIN_DURATION     0.8f
#define CITADEL_LANTERN_MIN_STAGE          0.07f
#define CITADEL_LANTERN_0_X                (-8.85f)
#define CITADEL_LANTERN_0_Z                (-10.34f)
#define CITADEL_LANTERN_1_X                (-2.3f)
#define CITADEL_LANTERN_1_Z                (-13.4f)
#define CITADEL_BEAM_ALPHA_SCALE           55.0f
#define CITADEL_CAMERA_EXCLUSION_RADIUS    15.0f
#define CITADEL_MIN_BUILT_FOR_PHYSICS      0.1
#define MAX_IMPACT_DAMAGE                  0.2f
#define CITADEL_DOOR_X                     (-13.82f)
#define CITADEL_DOOR_Z                     (-29.09f)
#define CITADEL_ROUTE_PLAN_RADIUS_SCALE    0.33f
#define CITADEL_ROUTE_INNER_RADIUS_SCALE   0.64f
#define CITADEL_ROUTE_INNER_MARGIN         1.1f
#define CITADEL_ROUTE_SECTOR_START_SCALE   0.1f
#define CITADEL_EVIL_ALIGNMENT             (-0.7f)
#define CITADEL_NASTY_ALIGNMENT            (-0.3f)
#define CITADEL_SECTOR_POINT_RADIUS_SCALE  0.11f
#define CITADEL_SECTOR_STEP_SCALE          0.2f
#define CITADEL_SECTOR_ARM_STEP_1          0.1f
#define CITADEL_SECTOR_ARM_STEP_2          0.07f
#define CITADEL_SECTOR_ARM_ANGLE_1         0.06f
#define CITADEL_SECTOR_ARM_ANGLE_2         0.16f
#define CITADEL_SECTOR_ARM_ANGLE_3         0.27f
#define CITADEL_WORSHIP_SITE_DISTANCE      24.0f
#define CITADEL_WORSHIP_SITE_RADIUS        12.0f
#define CITADEL_COLLIDE_CORE_SCALE         0.7f
#define CITADEL_COLLIDE_SECTOR_START_SCALE 0.74f
#define TRANSFERED_DAMAGE_SPARK_MAX_LIFE   0.6f

struct ExtraMetricsData
{
	uint32_t  size;
	uint32_t  count;
	LHMatrix* matrices;
};

static float OneOverLogHalf = 1.0f / (float)log(0.5);

GCitadelHeartInfo GCitadelHeartInfo::Infos[1];

MapCoords PlannedTownCitadelHeart::ScriptPos;

// BW1W120 00c5e3d4
static CitadelHeart* HeartList;
// BW1W120 00c5e3d8
static LH3DMesh* CollarMeshes[LEASH_TYPE_LAST];

// The original defines the statics from DestructionEndDelay to DestructionVolFXEndTime between
// CitadelHeart::GetDestructionTime and CitadelHeart::GetRandomSurfacePos (their initialisers are at 0x465b20 to
// 0x465c20), and RouteAngleOffset and CollideAngleOffset just before their first users.
static float DestructionEndDelay = 0.5f;
static float HeartBeatFrequencies[HEART_BEAT_STAGES] = {0.63661975f, 1.2732395f, 3.9788735f};
static float HeartBeatTimes[HEART_BEAT_STAGES] = {0.0f, 19.0f, 25.0f};

static float DestructionVolFXIntensities[DESTRUCTION_VOL_FX_STAGES] = {0.0f, 5.0f, 5.0f, 10.0f};
static float DestructionVolFXScales[DESTRUCTION_VOL_FX_STAGES] = {0.0f, 1.0f, 1.0f, 2.0f};
static float DestructionVolFXTimes[DESTRUCTION_VOL_FX_STAGES] = {0.0f, 1.0f, 20.0f, 22.0f};

static float DestructionFlashEndTime = DestructionExplodeTime + 0.3f;
static float DestructionShockwaveTime = DestructionExplodeTime + DestructionShockwaveDelay;
static float DestructionSmokeTime = DestructionExplodeTime + DestructionSmokeDelay;
static float DestructionEndTime = DestructionExplodeTime + DestructionEndDelay;
static float DestructionVolFXStartTime = DestructionFadeStartTime;
static float DestructionVolFXEndTime = DestructionExplodeTime + DestructionVolFXDelay;
static float RouteAngleOffset = 3.83f;
static float CollideAngleOffset = 3.83f;

// BW1W120 00466560 BW1M119 inlined
static float InRange(float min, float value, float max);

float GCitadelHeartInfo::GetTransferedDamageMultiplier()
{
	return GetInfo()->TransferedDamageMultiplier;
}

uint32_t LeashObj::InterfaceValidToTap(GInterfaceStatus* status)
{
	return GGame::g_game->MyPlayer()->player_number == PlayerNumber;
}

uint32_t LeashObj::InterfaceTap(GInterfaceStatus* status)
{
	if (GGame::g_game->MyPlayer()->player_number == PlayerNumber)
	{
		if (temple_leash->CurrentLeash == LeashIndex)
		{
			temple_leash->CurrentLeash = -1;
			return true;
		}
		if (status == GGame::g_game->MyInterfaceStatus())
		{
			LH_SamplePlayOptions options;
			options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
			options.SampleNumber = LH_SAMPLE_G_CLICKONSPELL_01;
			options.AttachedObject = NULL;
			options.Positional = 0;
			GGlobal::Global.audio->PlaySoundEffect(&options);
		}
		temple_leash->CurrentLeash = LeashIndex;
		LEASH_TYPE type = LeashIndex != LEASH_TYPE_EVIL - 1
		                      ? (LeashIndex == LEASH_TYPE_ROPE - 1 ? LEASH_TYPE_ROPE : LEASH_TYPE_GOOD)
		                      : LEASH_TYPE_EVIL;
		GGame::g_game->SetPacket(PACKET_TYPE_TEMPLE_LEASH, type, 0);
	}
	return true;
}

uint32_t LeashObj::GetOverwriteInteractableToolTip()
{
	switch (LeashIndex)
	{
	case LEASH_TYPE_EVIL - 1:
		return HELP_TEXT_TOOLTIP_78;
	case LEASH_TYPE_ROPE - 1:
		return HELP_TEXT_TOOLTIP_80;
	default:
		return HELP_TEXT_TOOLTIP_79;
	}
}

LH3DMesh* TempleLeash::GetCollarMesh(LEASH_TYPE type)
{
	if (type < LEASH_TYPE_EVIL || type > LEASH_TYPE_GOOD)
	{
		type = LEASH_TYPE_EVIL;
	}
	if (CollarMeshes[0] == NULL)
	{
		LoadCollarMeshes();
	}
	return CollarMeshes[type - 1];
}

void TempleLeash::LoadCollarMeshes()
{
	if (CollarMeshes[0] == NULL)
	{
		CollarMeshes[0] = LH3DMesh::CreateFromHD("Data\\MISC\\leash.l3d", true);
		CollarMeshes[0]->SetAllTextures(Leash::GetTexture());
		CollarMeshes[1] = LH3DMesh::CreateFromHD("Data\\MISC\\leash.l3d", true);
		CollarMeshes[1]->SetAllTextures(Leash::GetTexture());
		CollarMeshes[2] = LH3DMesh::CreateFromHD("Data\\MISC\\leash.l3d", true);
		CollarMeshes[2]->SetAllTextures(Leash::GetTexture());
	}
}

TempleLeash::TempleLeash(LH3DObject* object, unsigned long player_number)
{
	if (CollarMeshes[0] == NULL)
	{
		LoadCollarMeshes();
	}
	for (int i = 0; i < LEASH_TYPE_LAST; i++)
	{
		LHPoint pos;
		object->GetExtraPos(i, &pos);
		MapCoords coords(pos);
		LeashObj* leash = new (FILEPATH, 204) LeashObj(coords, player_number);
		leashes[i] = leash;
		leash->LeashIndex = i;
		leash->temple_leash = this;
		LH3DObject* obj = LH3DObject::Create(LH3DObject::STATIC);
		leash->Game3dObject = (Game3DObject*)obj;
		obj->SetMesh(LH3DMesh::GetPackedMesh(0), NULL, NULL);
		obj->SetPosition(pos, 0.0f, 1.0f);
		leash->collar = LH3DObject::Create(LH3DObject::STATIC);
		leash->collar->SetMesh(CollarMeshes[i], NULL, NULL);
		leash->collar->SetPosition(pos, 0.0f, 1.0f);
		leash->collar->SetDynamicLighting(true);
		leash->collar->SetAnimatedUV_1(0.0f, i ? i * CREATURE_PEN_COLLAR_V_STEP : CREATURE_PEN_COLLAR_V_FIRST);
		leash->collar->SetNeedSorting(true);
		leash->CollarUVOffset = Random(0.0f, 1.0f);
		leash->CollarXSpin = Random(0.0f, TWO_PI);
		leash->CollarZSpin = Random(0.0f, TWO_PI);
		leash->SpriteFrame = Random(0.0f, CREATURE_PEN_SPRITE_FRAME_RANGE);
		LH3DSprite* sprite = LH3DSprite::Create(1, 1);
		leash->sprite = sprite;
		sprite->SetMaterial(g_smoke_mat);
		sprite->SetSize(2.0f);
		sprite->colour = LH3DColor(0x80ffffff);
		sprite->pos = pos;
	}
	CurrentLeash = -1;
}

TempleLeash::~TempleLeash()
{
	for (int i = 0; i < LEASH_TYPE_LAST; i++)
	{
		delete leashes[i];
	}
}

void CitadelHeart::SetLeash(LEASH_TYPE type)
{
	if (leashes != NULL)
	{
		switch (type)
		{
		case LEASH_TYPE_EVIL:
			leashes->CurrentLeash = LEASH_TYPE_EVIL - 1;
			break;
		case LEASH_TYPE_ROPE:
			leashes->CurrentLeash = LEASH_TYPE_ROPE - 1;
			break;
		case LEASH_TYPE_GOOD:
			leashes->CurrentLeash = LEASH_TYPE_GOOD - 1;
			break;
		}
	}
}

LEASH_TYPE CitadelHeart::GetLeashToCreate()
{
	LEASH_TYPE type = LEASH_TYPE_NONE;
	if (leashes != NULL && leashes->CurrentLeash != -1)
	{
		type = leashes->CurrentLeash != LEASH_TYPE_EVIL - 1
		           ? (leashes->CurrentLeash == LEASH_TYPE_ROPE - 1 ? LEASH_TYPE_ROPE : LEASH_TYPE_GOOD)
		           : LEASH_TYPE_EVIL;
	}
	return type;
}

void CitadelHeart::CreateLeashes()
{
	if (leashes == NULL)
	{
		leashes = new (FILEPATH, 296) TempleLeash(Object::Get3DObjectForPSys(), GetPlayer()->player_number);
	}
}

CitadelHeart::CitadelHeart(const MapCoords& coords, const GCitadelHeartInfo* info, Citadel* citadel, float y_angle,
                           float scale, float food, int wood)
	: CitadelPart(coords, info, citadel, y_angle, scale, food, wood)
{
	if (this->citadel.Get() != NULL && this->citadel.Get()->heart.Get() == NULL)
	{
		this->citadel.Get()->heart.Set(this);
		Citadel* c = this->citadel.Get();
		if (GGame::g_game->LandNumber)
		{
			c->influence = c->GetInfluence() + scale * GetInfo()->LandInfluence[GGame::g_game->LandNumber - 1];
		}
		else
		{
			c->influence = c->GetInfluence() + scale * GetInfo()->influence;
		}
	}
	SetToZero();
	LastImpactTurn = 0;
	HeartState = 2;
}

CitadelHeart::~CitadelHeart()
{
	if (BeamObject != NULL)
	{
		BeamObject->Release();
		BeamObject = NULL;
	}
	if (leashes != NULL)
	{
		delete leashes;
		leashes = NULL;
	}
}

void CitadelHeart::ToBeDeleted(bool32_t delete_now)
{
	if (entrance != NULL)
	{
		for (int i = 0; i < CITADEL_ENTRANCE_LANTERNS; i++)
		{
			if (entrance->lanterns[i] != NULL)
			{
				entrance->lanterns[i]->Release();
				entrance->lanterns[i] = NULL;
			}
			if (entrance->lights[i] != NULL)
			{
				entrance->lights[i]->Release();
				entrance->lights[i] = NULL;
			}
		}
		if (entrance->Game3dObject != NULL)
		{
			entrance->Game3dObject->Release();
			entrance->Game3dObject = NULL;
		}
		entrance->ToBeDeleted(delete_now);
	}
	if (camera_exclusion != NULL)
	{
		CameraExclusion::Remove(camera_exclusion);
		camera_exclusion = NULL;
	}
	if (GetCitadel() != NULL && GetCitadel()->heart.Get() == this)
	{
		GetCitadel()->heart.Set(NULL);
	}
	CitadelHeart* prev = NULL;
	CitadelHeart* heart;
	for (heart = HeartList; heart != NULL; heart = heart->NextHeart)
	{
		if (heart == this)
		{
			break;
		}
		prev = heart;
	}
	if (heart == this)
	{
		if (prev == NULL)
		{
			HeartList = heart->NextHeart;
		}
		else
		{
			prev->NextHeart = heart->NextHeart;
		}
	}
	RemoveAlignmentFlock();
	CitadelPart::ToBeDeleted(delete_now);
	if (GetCitadel() != NULL && !(GetCitadel()->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
	{
		GetCitadel()->ToBeDeleted(0);
	}
}

void CitadelHeart::SetToZero()
{
	BeamObject = NULL;
	LastImpactTurn = 0;
	AlignmentFlock = NULL;
	town = NULL;
	SpecularColor = 0;
	DrawColour = -1;
	entrance = NULL;
	TransferContainer = NULL;
	TransferObject = NULL;
	LastTransferTurn = 0;
	DestructionStarted = 0;
	DestructionTime = 0.0f;
	DestructionPlasmaContainer = NULL;
	DestructionMagicContainer = NULL;
	VolFXObject = 0;
	VolFX = 0;
	NextPlasmaTime = 0.0f;
	DestructionReserved = 0;
	leashes = NULL;
	CollideData = NULL;
}

CitadelHeart* CitadelHeart::Create(const MapCoords& coords, const GCitadelHeartInfo* info, Citadel* citadel,
                                   float y_angle, float scale, float food, int wood)
{
	CitadelHeart* heart = new (FILEPATH, 463) CitadelHeart(coords, info, citadel, y_angle, scale, food, wood);
	if (heart != NULL)
	{
		heart->CallVirtualFunctionsForCreation(coords);
		heart->AlignmentFlock = CreateAlignmentFlock(coords, heart->GetPlayer());
		heart->AlignmentFlock->citadel_heart = heart;
		if (food >= 1.0f)
		{
			heart->AddAllWorshipSitesNeeded(citadel, 0.0f);
		}
	}
	return heart;
}

CitadelHeart* CitadelHeart::CreateTownHeart(const MapCoords& coords, const GCitadelHeartInfo* info, Town* town,
                                            float y_angle, float scale, float food, int wood)
{
	GPlayer* player = town->GetPlayer();
	Citadel* citadel = NULL;
	if (player != NULL)
	{
		citadel = player->citadel.Get();
		if (citadel == NULL)
		{
			citadel = new (FILEPATH, 489) Citadel(coords, GCitadelInfo::GetInfo(), player);
		}
	}
	CitadelHeart* heart = Create(coords, info, citadel, y_angle, scale, food, wood);
	if (heart != NULL)
	{
		heart->town = town;
	}
	return heart;
}

bool32_t CitadelHeart::AddAllWorshipSitesNeeded(Citadel* citadel, float forced_desire)
{
	for (Town* town = GetPlayer()->towns.head; town != NULL; town = town->next)
	{
		WorshipSite* site = citadel->FindOrCreateWorshipSite(town);
		if (site != NULL)
		{
			if (!site->Towns.IsThisInList(town))
			{
				site->AddTown(town);
			}
			if (site->IsBuilt() != true || !site->IsRepaired())
			{
				BuildingSite* building_site = town->GetBuildingSiteInList(site);
				if (building_site == NULL)
				{
					building_site = town->AddBuildingSite(site);
				}
				if (building_site != NULL)
				{
					building_site->ForcedDesire = forced_desire;
				}
			}
		}
	}
	return true;
}

bool32_t CitadelHeart::Built()
{
	MultiMapFixed::Built();
	GPlayer* player = GetPlayer();
	SetLife(1.0f);
	for (Town* town = player->towns.head; town != NULL; town = town->next)
	{
		if (town->GetBuildingSiteInList(this) != NULL)
		{
			town->RemoveBuildingSite(this);
		}
	}
	if (GetCitadel() != NULL)
	{
		AddAllWorshipSitesNeeded(GetCitadel(), 0.0f);
		if (GetPlayer() == GGame::g_game->MyPlayer() &&
		    (!GGame::g_game->help_system->WideScreen || !GGame::g_game->help_system->WideScreenControl))
		{
			if (!GGlobal::Global.audio->ScriptMusicType && GGame::g_game->LandNumber != 1)
			{
				GGlobal::Global.audio->StartScriptMusic(MUSIC_TYPE_SCRIPT_EPIC_01);
			}
			if (!GGame::g_game->SkirmishGame && !GGame::g_game->IsMultiplayerGame())
			{
				SaveGameRoom::InstantSaveGame(SAVE_GAME_ROOM_AUTO_SAVE_SLOT);
			}
		}
	}
	return true;
}

WorshipSite* CitadelHeart::CreateBuiltWorshipSite(const MapCoords& coords, const GWorshipSiteInfo* info,
                                                  Citadel* citadel, const GTribeInfo* tribe_info)
{
	GPlayer*     player = GetPlayer();
	WorshipSite* site = citadel->FindOrCreateWorshipSite(tribe_info);
	if (site == NULL)
	{
		return NULL;
	}
	for (Town* town = player->towns.head; town != NULL; town = town->next)
	{
		if (town->tribe_type == tribe_info - GTribeInfo::Infos)
		{
			if (!site->Towns.IsThisInList(town))
			{
				site->AddTown(town);
			}
			if (town->GetBuildingSiteInList(site) != NULL)
			{
				site->BuildBy(1.0f);
				town->RemoveBuildingSite(site);
			}
			return site;
		}
	}
	site->BuildBy(1.0f);
	return NULL;
}

Flock* CitadelHeart::CreateAlignmentFlock(const MapCoords& coords, GPlayer* player)
{
	Flock* flock = new (FILEPATH, 615)
		Flock(coords, (const GFlockInfo*)&GContainerInfo::Definitions[CONTAINER_INFO_FLOCK], player, FLOCK_MAGIC);
	flock->DomainRadius = ALIGNMENT_FLOCK_DOMAIN_RADIUS;
	flock->FlockDistance = ALIGNMENT_FLOCK_DISTANCE;
	return flock;
}

void CitadelHeart::RemoveAlignmentFlock()
{
	if (AlignmentFlock != NULL)
	{
		AlignmentFlock->citadel_heart = NULL;
		AlignmentFlock->DeleteAllLivingInFlock();
		AlignmentFlock->ToBeDeleted(0);
		AlignmentFlock = NULL;
	}
}

void CitadelHeart::SetAlignmentFlock(float alignment, bool32_t force_resize)
{
	bool32_t changed = false;
	if (GGame::g_game->data.GameTurn % ALIGNMENT_FLOCK_UPDATE_TURNS == 0)
	{
		ANIMAL_INFO type;
		if (alignment < 0.0f)
		{
			type = ANIMAL_INFO_BAT;
			alignment = -alignment;
		}
		else
		{
			type = ANIMAL_INFO_DOVE;
		}
		unsigned long count = (unsigned long)(GetInfo()->MaxAlignmentFlockSize * alignment);
		if (GetPercentBuilt() < 1.0f)
		{
			count = 0;
		}
		if (AlignmentFlock == NULL)
		{
			AlignmentFlock = CreateAlignmentFlock(Pos, GetPlayer());
			AlignmentFlock->citadel_heart = this;
		}
		AlignmentFlock->ResetForIteration();
		for (Living* living = AlignmentFlock->IterateToNext(); living != NULL; living = AlignmentFlock->IterateToNext())
		{
			if (living->info != &GAnimalInfo::Infos[type])
			{
				AlignmentFlock->RemoveLivingFromFlock(living, false);
				living->ToBeDeleted(0);
				changed = true;
			}
		}
		if (count > AlignmentFlock->Members.Size)
		{
			Animal::CreateFromType(Pos, &GAnimalInfo::Infos[type], NULL, AlignmentFlock, 0);
			changed = true;
		}
		else if (count < AlignmentFlock->Members.Size)
		{
			Living* living = AlignmentFlock->Members.GetFirst();
			AlignmentFlock->RemoveLivingFromFlock(living, false);
			living->ToBeDeleted(0);
			changed = true;
		}
		if (force_resize || changed)
		{
			float scale = GetScale();
			AlignmentFlock->FlyingHeight = scale * Game3dObject->GetMesh()->BoundingBox.size.y * 2 + 10.0f;
		}
	}
}

PlannedMultiMapFixed* CitadelHeart::ConvertToPlanned()
{
	if (town != NULL)
	{
		PlannedTownCitadelHeart* planned =
			new (FILEPATH, 709) PlannedTownCitadelHeart(Pos, GetInfo(), town, GetYAngle(), GetScale());
		planned->FootpathLink.Set(FootpathLink);
		FootpathLink = NULL;
		ToBeDeleted(false);
		return planned;
	}
	PlannedCitadelHeart* planned =
		new (FILEPATH, 717) PlannedCitadelHeart(Pos, GetInfo(), citadel.Get(), GetYAngle(), GetScale());
	ToBeDeleted(false);
	return planned;
}

bool32_t CitadelHeart::Save(GameOSFile& file)
{
	if (CitadelPart::Save(file))
	{
		file.WriteIt(LastImpactTurn);
		file.WritePtr(town);
		file.WritePtr(AlignmentFlock);
		file.WriteIt(SpecularColor);
		file.WriteIt(DrawColour);
		file.WriteIt(DestructionStarted);
		file.WriteIt(DestructionTime);
		file.WritePtr(DestructionPlasmaContainer);
		file.WritePtr(DestructionMagicContainer);
		file.WriteIt(NextPlasmaTime);
		file.WritePtr(TransferContainer);
		file.WritePtr(TransferObject);
		file.WriteIt(LastTransferTurn);
		file.WritePtr(entrance);
		return true;
	}
	return false;
}

bool32_t CitadelHeart::Load(GameOSFile& file)
{
	if (CitadelPart::Load(file))
	{
		file.ReadIt(LastImpactTurn);
		file.ReadPtr((GameThing**)&town);
		file.ReadPtr((GameThing**)&AlignmentFlock);
		file.ReadIt(SpecularColor);
		file.ReadIt(DrawColour);
		file.ReadIt(DestructionStarted);
		file.ReadIt(DestructionTime);
		file.ReadPtr((GameThing**)&DestructionPlasmaContainer);
		file.ReadPtr((GameThing**)&DestructionMagicContainer);
		file.ReadIt(NextPlasmaTime);
		file.ReadPtr((GameThing**)&TransferContainer);
		file.ReadPtr((GameThing**)&TransferObject);
		file.ReadIt(LastTransferTurn);
		file.ReadPtr((GameThing**)&entrance);
		return true;
	}
	return false;
}

void CitadelHeart::ResolveLoad()
{
	Object::ResolveLoad();
}

MultiMapFixed* PlannedCitadelHeart::CreatePlanned(float food)
{
	if (((const GCitadelPartInfo*)GetInfo())->IsOkToCreateAtPos(Pos, GetAngle(), GetScale(), citadel.Get()))
	{
		CitadelHeart* heart = CitadelHeart::Create(Pos, (const GCitadelHeartInfo*)GetInfo(), citadel.Get(), GetAngle(),
		                                           GetScale(), food, 1);
		if (heart != NULL)
		{
			PostCreatePlanned(*heart);
		}
		return heart;
	}
	return NULL;
}

void CitadelHeart::DestructionSequenceStart()
{
	DestructionStarted = true;
	DestructionTime = 0.0f;
	bool32_t deleted;
	do
	{
		deleted = false;
		LHListHead<CitadelPart>& parts = GetCitadel()->PartList;
		for (CitadelPart* part = parts.head; part != NULL; part = part->next)
		{
			if (part != this)
			{
				part->ToBeDeleted(0);
				deleted = true;
				break;
			}
		}
	} while (deleted);
}

float CitadelHeart::GetDestructionSequenceTime()
{
	return DestructionTime;
}

float CitadelHeart::GetDestructionTime()
{
	return DestructionTime;
}

void CitadelHeart::GetRandomSurfacePos(LHPoint* pos, LHPoint* normal)
{
	do
	{
		GJUtils::GetRandomSurfacePos(Game3dObject->GetMesh(), Game3dObject->matrix, pos, normal);
	} while (normal->y < CITADEL_SURFACE_MIN_NORMAL_Y);
}

void CitadelHeart::DestructionSequenceProcess()
{
	if (DestructionPlasmaContainer != NULL && DestructionPlasmaContainer->IsAvailable() != true)
	{
		DestructionPlasmaContainer = NULL;
	}
	if (DestructionMagicContainer != NULL && DestructionMagicContainer->IsAvailable() != true)
	{
		DestructionMagicContainer = NULL;
	}
	Citadel* owner = GetCitadel();
	if (!DestructionStarted || owner == NULL)
	{
		return;
	}

	float lastTime = DestructionTime;
	float time = DestructionTime += GGameInfo::Info.MillisecondsPerGameTurn * MILLISECONDS_TO_SECONDS;
	float frequency = LinterpTable(HeartBeatTimes, HeartBeatFrequencies, HEART_BEAT_STAGES, time);
	if (GetPlayer() == GGame::g_game->MyPlayer())
	{
		GGame::g_game->MyInterface()->GetStatus()->guidance->SetHeartBeatSFXFrequencyPerSecond(frequency);
	}

	float fade = (DestructionTime - DestructionFadeStartTime) / DestructionFadeDuration;
	fade = min(max(fade, 0.0f), 1.0f);
	DrawColour = ((uint8_t)(255.0f - fade * 255.0f) << 24) | 0xffffff;

	if (InRange(lastTime, DestructionVolFXStartTime, DestructionTime) && VolFXObject == NULL)
	{
		VolFXObject = LH3DObject::Create(LH3DObject::STATIC);
		if (VolFXObject != NULL)
		{
			VolFXObject->SetMesh(LH3DMesh::GetPackedMesh(MSH_P_BOY_WHITE_2), NULL, NULL);
			VolFX = LH3DGJAnimVolFX::Create(VolFXObject,
			                                GlobalTextures::GetAnimVolFXMaterial(GlobalTextures::VOL_FX_MAT_TYPE_6));
		}
	}
	if (InRange(lastTime, DestructionVolFXEndTime, DestructionTime) && VolFX != NULL)
	{
		VolFX->Release();
		VolFX = NULL;
	}
	if (InRange(lastTime, DestructionPlasmaStartTime, DestructionTime))
	{
		NextPlasmaTime = DestructionTime;
		SoundTag::Create(citadel.Get(), LH_SAMPLE_G_CITADELPLASMA, false, 2, -1, 0, 1, AUDIO_SFX_BANK_TYPE_IN_GAME, 0);
	}
	if (InRange(DestructionPlasmaStartTime, DestructionTime, DestructionPlasmaStartTime + DestructionPlasmaDuration))
	{
		while (NextPlasmaTime < DestructionTime)
		{
			float fraction = (DestructionTime - DestructionPlasmaStartTime) / DestructionPlasmaDuration;
			float t = min(max(fraction, 0.0f), 1.0f);
			float interval = GJUtils::Linterp(DestructionPlasmaStartInterval, DestructionPlasmaEndInterval, t);
			NextPlasmaTime += interval;
			if (DestructionPlasmaContainer == NULL)
			{
				DestructionPlasmaContainer = GParticleContainer::CreateSpotVisualWithSpecifiedDuration(
					Pos, SPOT_VISUAL_MAGIC_BEAM_ON_CITADEL, 1.0f,
					GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(DestructionPlasmaDuration), NULL);
				if (DestructionPlasmaContainer != NULL)
				{
					DestructionPlasmaContainer->SetPlayer(GetPlayer());
				}
			}
			LHPoint start;
			LHPoint startNormal;
			LHPoint end;
			LHPoint endNormal;
			GetRandomSurfacePos(&start, &startNormal);
			GetRandomSurfacePos(&end, &endNormal);
			endNormal *= -1.0f;
			if (DestructionPlasmaContainer != NULL)
			{
				float width = GJUtils::Linterp(DestructionPlasmaStartWidth, DestructionPlasmaEndWidth, t);
				float speed = GJUtils::Linterp(DestructionPlasmaStartSpeed, DestructionPlasmaEndSpeed, t);
				float alpha = GJUtils::Linterp(DestructionPlasmaStartAlpha, DestructionPlasmaEndAlpha, t);
				DestructionPlasmaContainer->AddTarget(
					new (FILEPATH, 997) UR_PlasmaInf(start, end, startNormal, endNormal, width, speed, alpha));
			}
		}
	}
	if (InRange(lastTime, DestructionMagicFXTime, DestructionTime))
	{
		Citadel* c = GetCitadel();
		if (c != NULL)
		{
			DestructionMagicContainer = GParticleContainer::CreateSpotVisualWithSpecifiedDuration(
				Pos, SPOT_VISUAL_MAGIC_FX_ON_CITADEL, 1.0f,
				GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(DestructionMagicFXDuration), NULL);
			if (DestructionMagicContainer != NULL)
			{
				DestructionMagicContainer->SetPlayer(GetPlayer());
				for (CitadelPart* part = c->PartList.Get(); part != NULL; part = part->next.Get())
				{
					DestructionMagicContainer->AddTarget(part);
				}
			}
		}
	}
	if (DestructionMagicContainer != NULL && GetPlayer() == GGame::g_game->MyPlayer())
	{
		GGuidance* guidance = GGame::g_game->MyInterface()->GetStatus()->guidance;
		float      strength = (DestructionMaxParticleStrength - DestructionMinParticleStrength) *
		                          guidance->GetNonInterpedHeartBeatPulseValue() +
		                      DestructionMinParticleStrength;
		DestructionMagicContainer->SetParticleStrength(strength);
	}
	if (InRange(lastTime, DestructionExplodeTime, DestructionTime))
	{
		SoundTag::Remove(citadel.Get(), LH_SAMPLE_G_CITADELPLASMA, AUDIO_SFX_BANK_TYPE_IN_GAME);
		SoundTag::Create(citadel.Get(), LH_SAMPLE_G_CITADELEXPLODE_01, false, 2, 0, 0, 1, AUDIO_SFX_BANK_TYPE_IN_GAME,
		                 0);
		GParticleContainer* explosion = GParticleContainer::CreateSpotVisualWithSpecifiedDuration(
			Pos, SPOT_VISUAL_EXPLOSION_CITADEL, 1.0f,
			GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(DestructionExplosionDuration), NULL);
		if (explosion != NULL)
		{
			explosion->SetPlayer(GetPlayer());
		}
	}
	if (InRange(lastTime, DestructionSmokeTime, DestructionTime))
	{
		GParticleContainer* smoke = GParticleContainer::CreateSpotVisualWithSpecifiedDuration(
			Pos, SPOT_VISUAL_EVIL_SMOKE, 1.0f,
			GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				(GRand::GameFloatRand(DESTRUCTION_SMOKE_RANDOM_DURATION, FILEPATH, 1046) +
		         DESTRUCTION_SMOKE_MIN_DURATION) *
				DestructionSmokeDuration),
			NULL);
		if (smoke != NULL)
		{
			smoke->SetScale(10.0f);
		}
	}
	if (InRange(lastTime, DestructionEndTime, DestructionTime))
	{
		DestructionStarted = false;
		DestructionTime = 0.0f;
		if (GetPlayer() == GGame::g_game->MyPlayer())
		{
			GGame::g_game->MyInterface()->GetStatus()->guidance->SetHeartBeatSFXFrequencyPerSecond(0.0f);
		}
		SetSpecularColor(0);
		DrawColour = -1;
		if (VolFXObject != NULL)
		{
			VolFXObject->Release();
			VolFXObject = NULL;
		}
		if (VolFX != NULL)
		{
			VolFX->Release();
			VolFX = NULL;
		}
		ToBeDeleted(false);
	}
}

static float InRange(float min, float value, float max)
{
	return value >= min && value < max;
}

uint32_t CitadelHeart::Process()
{
	DestructionSequenceProcess();
	ValidateTransferedEffectObjects();
	ProcessTransferedDamageEffect();
	return true;
}

void CitadelHeart::DrawLantern()
{
	if (entrance != NULL && ((LH3DCitadel*)Game3dObject)->Stage > CITADEL_LANTERN_MIN_STAGE)
	{
		if (entrance->lanterns[0] == NULL)
		{
			for (int i = 0; i < CITADEL_ENTRANCE_LANTERNS; i++)
			{
				entrance->lanterns[i] = LH3DObject::Create(LH3DObject::STATIC);
				LH3DObject* lantern = entrance->lanterns[i];
				lantern->SetMesh(LH3DMesh::GetPackedMesh(MSH_I_MINISCROLL), NULL, NULL);
				LHPoint pos;
				if (i != 0)
				{
					pos.Set(CITADEL_LANTERN_1_X, 0.0f, CITADEL_LANTERN_1_Z);
				}
				else
				{
					pos.Set(CITADEL_LANTERN_0_X, 0.0f, CITADEL_LANTERN_0_Z);
				}
				Game3dObject->matrix.TransformPoint(pos);
				lantern->SetDynamicLighting(true);
				lantern->SetPosition(pos, 0.0f, 1.0f);
				entrance->lights[i] = EclairagePublic::Create((LHPoint*)&lantern->matrix.GetPos(), 0);
			}
		}
		entrance->lanterns[0]->AddDrawing();
		entrance->lanterns[1]->AddDrawing();
	}
}

void CitadelHeart::DrawCreaturePen()
{
	Creature* creature = GetPlayer() != NULL ? GetPlayer()->GetCreature() : NULL;
	if (((LH3DCitadel*)Game3dObject)->Stage == 1.0f && creature != NULL)
	{
		int        i = 0;
		LEASH_TYPE types[LEASH_TYPE_LAST] = {LEASH_TYPE_EVIL, LEASH_TYPE_ROPE, LEASH_TYPE_GOOD};
		for (; i < LEASH_TYPE_LAST; i++)
		{
			if ((&creature->ScriptFlag0)[types[i] - 1] == 0)
			{
				continue;
			}
			LHPoint pos;
			Game3dObject->GetExtraPos(i, &pos);
			float     dt = LH3DTech::GetGameTimeInc() / 1000.0f;
			LeashObj* leash = leashes->leashes[i];
			leash->CollarXSpin += CreaturePenXSpinSpeed * dt;
			Wrap(leash->CollarXSpin, TWO_PI);
			leash->CollarZSpin += CreaturePenZSpinSpeed * dt;
			Wrap(leash->CollarZSpin, TWO_PI);
			leash->CollarUVOffset += CreaturePenUVSpeed * dt;
			Wrap(leash->CollarUVOffset, 1.0f);
			leash->collar->SetAnimatedUV_1(leash->CollarUVOffset,
			                               i != 0 ? i * CREATURE_PEN_COLLAR_V_STEP : CREATURE_PEN_COLLAR_V_FIRST);
			leash->collar->matrix = leash->Game3dObject->matrix;
			LHMatrix rotation;
			rotation.SetYXZMatrixOnly(0.0f, leash->CollarXSpin, leash->CollarZSpin);
			rotation.GetPos().SetNull();
			leash->collar->matrix.PreMultiply(rotation);
			leash->SpriteFrame += CreaturePenFrameRate * dt;
			WrapScaled(leash->SpriteFrame, CREATURE_PEN_SPRITE_FRAME_RANGE, 1.0f / CREATURE_PEN_SPRITE_FRAME_RANGE);
			leash->sprite->Frame = (uint8_t)leash->SpriteFrame;
			const LH3DColor& light = (const LH3DColor&)LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS];
			int              alpha = (int)((light.r + light.g + light.b) * CREATURE_PEN_LIGHT_ALPHA_SCALE);
			leash->collar->GetMesh();
			if (i == leashes->CurrentLeash && GGame::g_game->MyPlayer() == GetPlayer())
			{
				LH3DComplexObject* hand = GGame::g_game->MyInterface()->GetRenderHand()->DynamicShadow;
				if (hand->Hidden != 0)
				{
					continue;
				}
				leash->sprite->colour = (alpha << 24) | 0xc18119;
				leash->sprite->material = g_smoke_additif_mat;
				LHMatrix handMatrix = *hand->Matrix0x80;
				float    yAngle;
				float    xAngle;
				float    zAngle;
				handMatrix.GetYXZ(&yAngle, &xAngle, &zAngle);
				leash->collar->SetPosition(handMatrix.GetPos(), 0.0f, 1.0f);
				leash->collar->matrix.SetYXZMatrixOnly(yAngle, xAngle, zAngle);
				float    size = hand->scale * CREATURE_PEN_HAND_COLLAR_SIZE;
				float    half = size * 0.5f;
				LHMatrix scale;
				LHPoint  offset(size * CREATURE_PEN_HAND_COLLAR_OFFSET_X, size * CREATURE_PEN_HAND_COLLAR_OFFSET_Y,
				                0.0f);
				scale.SetScale(half);
				(LHPoint&)scale.GetPos() = offset;
				leash->collar->matrix.PreMultiply(scale);
				leash->sprite->AddDrawing();
				leash->collar->AddDrawing();
				GInterface::SendInvisibleDrawCollision(leashes->leashes[i], &pos, CreaturePenCollisionRadius);
			}
			else
			{
				leash->sprite->colour = (alpha << 24) | 0xffffff;
				leash->sprite->material = g_smoke_mat;
				leash->sprite->AddDrawing();
				leash->collar->AddDrawing();
				GInterface::SendInvisibleDrawCollision(leashes->leashes[i], &pos, CreaturePenCollisionRadius);
			}
		}
	}
}

void CitadelHeart::DrawBeam()
{
	unsigned long playerNumber = GetPlayer()->GetPlayerNumber();
	if (BeamObject != NULL && InfluenceCircle::g_b_valid[GetRemapedPlayer(playerNumber)])
	{
		LHPoint cameraPos;
		GGame::g_game->GetCamera()->GetPosition(cameraPos);
		LHPoint  pos = Pos.GetLHPoint();
		LHPoint  delta = cameraPos - pos;
		float    angle = (float)atan2(delta.z, delta.x) + HALF_PI_F;
		LHMatrix matrix;
		matrix.SetRotationY(angle);
		matrix.PreScale(1.0f, 3.0f, 1.0f);
		matrix.SetTranslateOnly(pos);
		BeamObject->matrix = matrix;
		BeamObject->scale = 3.0f;
		unsigned long colour = 0xffffffff;
		GPlayer*      player = GetPlayer();
		if (player != NULL)
		{
			colour = player->GetPlayerColour();
		}
		float pulse = GetPlayer()->GetTempFirstInterfaceStatus()->guidance->GetInterpedHeartBeatPulseValue();
		pulse = min(max(pulse, 0.0f), 1.0f);
		uint8_t alpha = (uint8_t)((pulse + 1.0f) * CITADEL_BEAM_ALPHA_SCALE);
		BeamObject->SetColorSpecular((alpha << 24) | (colour & 0xffffff), 0);
		BeamObject->SetDrawWithGlobalAlpha(true);
		if (!DestructionStarted || GetDestructionTime() < DestructionShockwaveTime)
		{
			BeamObject->AddDrawing();
		}
	}
}

void CitadelHeart::DrawDestruction()
{
	float pulse = GetPlayer()->GetTempFirstInterfaceStatus()->guidance->GetInterpedHeartBeatPulseValue();
	if (VolFXObject != NULL)
	{
		float scale = LinterpTable(DestructionVolFXTimes, DestructionVolFXScales, DESTRUCTION_VOL_FX_STAGES,
		                           GetDestructionTime()) *
		              DestructionVolFXScale;
		VolFXObject->scale = scale;
		VolFXObject->matrix.SetScale(scale);
		(LHPoint&)VolFXObject->matrix.GetPos() = Game3dObject->matrix.GetPos();
		if (VolFX != NULL)
		{
			unsigned long colour = GetPlayer()->GetPlayerColour();
			VolFX->SetColorSpecular(colour, 0x141414);
			VolFX->SetUSpeed(DestructionVolFXUSpeed);
			VolFX->SetVSpeed(DestructionVolFXVSpeed);
			VolFX->SetField14(DestructionVolFXField14);
			VolFX->SetField18(DestructionVolFXField18);
			float intensity = LinterpTable(DestructionVolFXTimes, DestructionVolFXIntensities,
			                               DESTRUCTION_VOL_FX_STAGES, GetDestructionTime()) *
			                  pulse;
			VolFX->Intensity = intensity;
			VolFX->Update(LH3DTech::GetGameTimeInc() * MILLISECONDS_TO_SECONDS);
			VolFX->Draw();
		}
	}
	if (DestructionStarted && GetDestructionTime() > DestructionSpecularStartTime)
	{
		float fade = (GetDestructionTime() - DestructionSpecularStartTime) / DestructionSpecularFadeInDuration;
		fade = (fade > 0.0f ? min(fade, 1.0f) : 0.0f) * pulse;
		uint8_t       level = (uint8_t)GJUtils::Linterp(DestructionMinSpecular, DestructionMaxSpecular, fade);
		unsigned long colour = GetPlayer()->GetPlayerColour();
		SetSpecularColor((colour & 0xff000000) | ((((colour & 0xff0000) * level) >> 8) & 0xff0000) |
		                 ((((colour & 0xff00) * level) >> 8) & 0xff00) | ((((colour & 0xff) * level) >> 8) & 0xff));
	}
}

void CitadelHeart::DrawNow()
{
	Game3DObject* object = Game3dObject;
	unsigned long color = DrawColour;
	object->CombineColorFromPos(color, GetSpecularColor());
	if (ArenaLight::g_cur_arena_light != NULL)
	{
		LH3DColor faded(object->color);
		float     value = GJUtils::Linterp((float)faded.r, 255.0f, ArenaLight::g_land_fade);
		if (value > 255.0f)
		{
			value = 255.0f;
		}
		faded.r = (uint8_t)value;
		value = GJUtils::Linterp((float)faded.g, 255.0f, ArenaLight::g_land_fade);
		if (value > 255.0f)
		{
			value = 255.0f;
		}
		faded.g = (uint8_t)value;
		value = GJUtils::Linterp((float)faded.b, 255.0f, ArenaLight::g_land_fade);
		if (value > 255.0f)
		{
			value = 255.0f;
		}
		faded.b = (uint8_t)value;
		object->color = faded.GetColor();
	}
	object->SetSnowlevel((LHPoint&)object->matrix.GetPos());
	int alpha = object->color >> 24;
	if (alpha <= 240 && DestructionStarted)
	{
		MaterialProperties props;
		props.ApplyToMesh = true;
		props.Transparent = true;
		props.Additive = false;
		props.AlphaBlend = false;
		props.cull = false;
		GJUtils::SetMaterialProperties(object->GetMesh(), props);
		object->SetDrawWithGlobalAlpha(true);
		object->SetSnowlevel(
			((alpha - 128) * object->SnowLevel) >> 7 > 0 ? min(((alpha - 128) * object->SnowLevel) >> 7, 255) : 0);
	}
	DrawDestruction();
	if (!DestructionStarted || DestructionTime <= DestructionFlashEndTime)
	{
		object->Draw();
		if (GetFireEffect() != NULL)
		{
			DrawFireEffect();
		}
		bool32_t selected = LH3DObject::g_last_selected_box;
		if (LH3DObject::g_b_last_on_screen && GGame::g_game->MyPlayer() == GetPlayer())
		{
			GGame::g_game->help_system->SendFOVObject(this, LH3DObject::g_last_distance);
		}
		unsigned long playerNumber = GetPlayer()->GetPlayerNumber();
		if (entrance != NULL && InfluenceCircle::g_b_valid[GetRemapedPlayer(playerNumber)])
		{
			entrance->Game3dObject->AddJustForCollide(entrance);
		}
		if (selected)
		{
			GGame::g_game->MyInterface()->SendObjectDrawCollision(this, 0.0f, NULL);
		}
		DrawCreaturePen();
		DrawBeam();
		DrawLantern();
	}
}

void CitadelHeart::DrawAll()
{
	CitadelHeart* heart = HeartList;
	if (GGlobal::Global.Editor == NULL)
	{
		CameraExclusion::UseExclusions = true;
	}
	for (; heart != NULL; heart = heart->NextHeart)
	{
		heart->DrawNow();
	}
}

uint32_t CitadelHeart::SaveObject(LHOSFile& file, const MapCoords* coords)
{
	char text[CITADEL_SAVE_TEXT_LENGTH];
	char coordText[CITADEL_SAVE_COORD_TEXT_LENGTH];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords relative = (coords != NULL) ? (Pos - *coords) : Pos;
		if (GetCitadel() != NULL && !UnderConstruction)
		{
			float scale = GetScale();
			float yAngle = GetYAngle();
			char* playerName = GPlayer::PlayerNameText[GetPlayer()->GetPlayerNumber()];
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_CITADEL),
			        relative.ConvertToText(coordText), GetInfo() - GCitadelHeartInfo::Infos, playerName,
			        (int)(yAngle * CITADEL_SCRIPT_SCALE), (int)(scale * CITADEL_SCRIPT_SCALE));
		}
		else if (town != NULL)
		{
			float scale = GetScale();
			float yAngle = GetYAngle();
			char* playerName = GPlayer::PlayerNameText[GetPlayer()->GetPlayerNumber()];
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_PLANNED_CITADEL), town->ID,
			        relative.ConvertToText(coordText), GetInfo() - GCitadelHeartInfo::Infos, playerName,
			        (int)(yAngle * CITADEL_SCRIPT_SCALE), (int)(scale * CITADEL_SCRIPT_SCALE));
		}
		GSetup::WriteToFile(this, file, text, strlen(text));
	}
	return saved;
}

void CitadelHeart::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	if (Game3dObject == NULL)
	{
		Game3dObject = (Game3DObject*)LH3DObject::Create(Get3DType());
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, pos);
		SetPositionOnMap(Game3dObject, Pos, GetYAngle(), 1.0f);
		LH3DCitadel* citadel = (LH3DCitadel*)Game3dObject;
		citadel->InitTemple(&pos, GetPercentBuilt(), GetRemapedPlayer(GetPlayer()->GetPlayerNumber()));
		InitialiseIsFixedForMapList();
		if (entrance == NULL)
		{
			entrance = new (FILEPATH, 1504) CitadelEntrance(Pos, &GObjectInfo::Definitions[OBJECT_TYPE_TERRAIN]);
		}
		LH3DObject* object = LH3DObject::Create(LH3DObject::MORPHABLE);
		entrance->Game3dObject = (Game3DObject*)object;
		object->SetMesh((LH3DMesh*)Game3dObject->GetTempleEntrance(), NULL, NULL);
		SetPositionOnMap(entrance->Game3dObject, Pos, GetYAngle(), 1.0f);
		object->UpdateMelting();
		entrance->Heart = this;
		InsertMapObject();
		camera_exclusion = CameraExclusion::CreateDome(
			CAMERA_EXCLUSION_ID_CITADEL, *(LHPoint*)&Game3dObject->matrix._41, CITADEL_CAMERA_EXCLUSION_RADIUS,
			Game3dObject->GetMesh()->BoundingBox.size.y * 2.0f);
		if (camera_exclusion != NULL)
		{
			camera_exclusion->Saved = false;
		}
		NextHeart = HeartList;
		HeartList = this;
		ObjectCollide = LH3DObjectCollide::Create(Game3dObject);
		CreateLeashes();
		BeamObject = LH3DObject::Create(LH3DObject::STATIC);
		BeamObject->SetMesh(LH3DMesh::GetPackedMesh(PSysGlobal::CitadelHeartBeamMesh), NULL, NULL);
		LH3DMesh*          mesh = BeamObject->GetMesh();
		MaterialProperties props;
		props.ApplyToMesh = true;
		props.Transparent = true;
		props.Additive = true;
		props.AlphaBlend = false;
		props.cull = false;
		GJUtils::SetMaterialProperties(mesh, props);
		BeamObject->SetDisappear(false);
	}
	UpdateLeashes();
}

void CitadelHeart::GetWorldMatrix(LHMatrix* matrix)
{
	*matrix = Game3dObject->matrix;
}

bool32_t CitadelHeart::GetSpecialPos(unsigned long index, float angle, MapCoords* coords)
{
	LHPoint           point;
	LH3DMesh*         mesh = ((LH3DCitadel*)Game3dObject)->CitadelMesh;
	ExtraMetricsData* data = (ExtraMetricsData*)mesh->GetEMetricsData();
	if (data == NULL)
	{
		point = *(LHPoint*)&Game3dObject->matrix._41;
		GLandscape::ConvertLandscapePointToMapCoord(point, *coords);
		return false;
	}
	if (index < data->count)
	{
		const LHMatrix& offset = data->matrices[index];
		LHPoint         extra(offset._41, offset._42, offset._43);
		LHMatrix        matrix;
		matrix.SetRotationY(angle - GetYAngle());
		matrix.PostMultiply(Game3dObject->matrix);
		matrix.TransformPoint(extra);
		if (Game3dObject->IsStaticMorphable())
		{
			LH3DMapCoords  pointCoords(extra.x, extra.z);
			const LHPoint& pos = *(LHPoint*)&Game3dObject->matrix._41;
			LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z));
			LH3DIsland::GetAltitude(pointCoords);
		}
		GLandscape::ConvertLandscapePointToMapCoord(extra, *coords);
		return true;
	}
	point = *(LHPoint*)&Game3dObject->matrix._41;
	GLandscape::ConvertLandscapePointToMapCoord(point, *coords);
	return false;
}

bool CitadelHeart::ChecksVerticesVObjects()
{
	return false;
}

bool CitadelHeart::InteractsWithPhysicsObjects()
{
	return GetPercentBuilt() > CITADEL_MIN_BUILT_FOR_PHYSICS;
}

PHYSICS_CONSTANTS_TYPE CitadelHeart::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_DEFAULT_UNMOVABLE;
}

void CitadelHeart::SetUpPhysOb(PhysOb* phys_ob)
{
	phys_ob->SetUpConstants((float)CITADEL_HEART_MASS, &EditorPhysics::PhysicsConstants[GetPhysicsConstantsType()], 0);
	phys_ob->BuildFromVertices();
}

void CitadelHeart::ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage)
{
	if (physics_object->WhoHitMe != NULL)
	{
		Object*  hitter = physics_object->GetGameObjectWhoHitMe();
		GPlayer* player = NULL;
		if (physics_object->GetInterfaceStatusWhoHitMe() != NULL)
		{
			player = physics_object->GetInterfaceStatusWhoHitMe()->GetPlayer();
		}
		Object* target = (Object*)GetActualObjectToEffect(player, hitter != NULL && hitter->PhysicallyDestroysAbodes());
		if (target != NULL && target != this)
		{
			target->ReactToPhysicsImpact(physics_object, true);
			return;
		}
		if (hitter != NULL && hitter->IsAvailable() == true && hitter->PhysicallyDestroysAbodes())
		{
			PhysOb& physics = physics_object->WhoHitMe->Physics;
			float   damage = physics.Velocity.GetNorme() * physics.Mass * ImpactDamageScale;
			damage = min(MAX_IMPACT_DAMAGE, damage);
			LastImpactTurn = GGame::g_game->data.GameTurn;
			EffectValues values(EFFECT_TYPE_HIT, damage, player, 1.0f, NULL);
			ApplyEffect(values, 0);
		}
	}
}

MapCoords CitadelHeart::GetDoorPos()
{
	LHPoint pos(CITADEL_DOOR_X, 0.0f, CITADEL_DOOR_Z);
	GetCitadel()->GetCitadelHeart()->Game3dObject->matrix.TransformPoint(pos);
	return MapCoords(pos);
}

PlannedTownCitadelHeart::PlannedTownCitadelHeart(const MapCoords& coords, const GCitadelHeartInfo* info, Town* town,
                                                 float y_angle, float scale)
	: PlannedMultiMapFixed(coords, info, y_angle, scale)
{
	this->town = town;
	if (town != NULL)
	{
		town->AddPlanned(this);
	}
}

void PlannedTownCitadelHeart::ToBeDeleted(int delete_now)
{
	if (town != NULL)
	{
		town->RemovePlanned(this);
	}
	GameThingWithPos::ToBeDeleted(delete_now);
}

MultiMapFixed* PlannedTownCitadelHeart::CreatePlanned(float food)
{
	if (((const GCitadelPartInfo*)GetInfo())->IsOkToCreateAtPos(Pos, GetAngle(), GetScale(), NULL))
	{
		return CreatePlannedNoFixedCheck(food);
	}
	return NULL;
}

MultiMapFixed* PlannedTownCitadelHeart::CreatePlannedNoFixedCheck(float food)
{
	GPlayer* player = town->GetPlayer();
	if (player != NULL)
	{
		Citadel* citadel = player->citadel.Get();
		if (citadel == NULL)
		{
			citadel = new (FILEPATH, 1812) Citadel(Pos, GCitadelInfo::GetInfo(), player);
		}
		if (citadel != NULL)
		{
			CitadelHeart* heart = CitadelHeart::Create(Pos, (const GCitadelHeartInfo*)GetInfo(), citadel, GetAngle(),
			                                           GetScale(), food, 1);
			if (heart != NULL)
			{
				heart->town = town;
				if (WasConstructed)
				{
					heart->Damaged = true;
				}
				PostCreatePlanned(*heart);
				ToBeDeleted(0);
				return heart;
			}
		}
	}
	return NULL;
}

bool32_t PlannedTownCitadelHeart::Save(GameOSFile& file)
{
	if (PlannedMultiMapFixed::Save(file))
	{
		file.WritePtr((GameThing*)town);
		return true;
	}
	return false;
}

bool32_t PlannedTownCitadelHeart::Load(GameOSFile& file)
{
	if (PlannedMultiMapFixed::Load(file))
	{
		file.ReadPtr((GameThing**)&town);
		return true;
	}
	return false;
}

GPlayer* CitadelHeart::GetPlayer()
{
	if (citadel.Get() != NULL)
	{
		return CitadelPart::GetPlayer();
	}
	if (town != NULL)
	{
		return town->GetPlayer();
	}
	return NULL;
}

MapCoords CitadelHeart::GetCreatureHomePos()
{
	MapCoords pos;
	GetSpecialPos(0, GetYAngle(), &pos);
	return pos;
}

SCRIPT_OBJECT_TYPE CitadelHeart::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_CITADEL;
}

float CitadelHeart::GetRoutePlanRadius(Creature* creature)
{
	return Get2DRadius() * CITADEL_ROUTE_PLAN_RADIUS_SCALE;
}

void CitadelHeart::AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
                                  void(__cdecl* callback)(int, Point2D, float, int))
{
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, point);
	Point2D centre(point.x, point.z);
	float   innerRadius = HeartRouteSize * CITADEL_ROUTE_INNER_RADIUS_SCALE;
	if (callback != NULL)
	{
		callback((int)this, centre, innerRadius + CITADEL_ROUTE_INNER_MARGIN, update);
	}
	else
	{
		holder->AddObject((int)this, centre, innerRadius + CITADEL_ROUTE_INNER_MARGIN, update);
	}

	float alignment = GetPlayer()->alignment->GetValue();
	int   count;
	if (alignment < CITADEL_EVIL_ALIGNMENT)
	{
		count = 2;
	}
	else if (alignment < CITADEL_NASTY_ALIGNMENT)
	{
		count = 3;
	}
	else
	{
		count = 4;
	}

	float angle = GetYAngle() + RouteAngleOffset;
	float pointRadius = HeartRouteSize * CITADEL_SECTOR_POINT_RADIUS_SCALE;
	for (int i = 0; i < CITADEL_COLLIDE_SECTORS; i++)
	{
		float s = sin(angle);
		float c = cos(angle);
		float dist = HeartRouteSize * CITADEL_ROUTE_SECTOR_START_SCALE + innerRadius;
		for (int j = 0; j < CITADEL_COLLIDE_RINGS; j++)
		{
			if (i < 2)
			{
				Point2D pos;
				if (j < 3)
				{
					pos.x = dist * c + centre.x;
					pos.y = dist * s + centre.y;
					dist += HeartRouteSize * CITADEL_SECTOR_STEP_SCALE;
				}
				else if (j == 3)
				{
					float a = angle + (i == 0 ? CITADEL_SECTOR_ARM_ANGLE_1 : -CITADEL_SECTOR_ARM_ANGLE_1);
					pos.x = cos(a) * dist + centre.x;
					pos.y = sin(a) * dist + centre.y;
					dist += HeartRouteSize * CITADEL_SECTOR_ARM_STEP_1;
				}
				else if (j == 4)
				{
					float a = angle + (i == 0 ? CITADEL_SECTOR_ARM_ANGLE_2 : -CITADEL_SECTOR_ARM_ANGLE_2);
					pos.x = cos(a) * dist + centre.x;
					pos.y = sin(a) * dist + centre.y;
					dist += HeartRouteSize * CITADEL_SECTOR_ARM_STEP_2;
				}
				else if (j == 5)
				{
					float a = angle + (i == 0 ? CITADEL_SECTOR_ARM_ANGLE_3 : -CITADEL_SECTOR_ARM_ANGLE_3);
					pos.x = cos(a) * dist + centre.x;
					pos.y = sin(a) * dist + centre.y;
				}
				if (callback != NULL)
				{
					callback((int)this, pos, pointRadius, update);
				}
				else
				{
					holder->AddObject((int)this, pos, pointRadius, update);
				}
			}
			else if (j < count)
			{
				Point2D pos(dist * c + centre.x, dist * s + centre.y);
				if (callback != NULL)
				{
					callback((int)this, pos, pointRadius, update);
				}
				else
				{
					holder->AddObject((int)this, pos, pointRadius, update);
				}
				dist += HeartRouteSize * CITADEL_SECTOR_STEP_SCALE;
			}
		}
		if (creature != NULL && i != 0)
		{
			Citadel* heartCitadel = citadel.Get();
			int      site = i - 1;
			if (site < MAX_WORSHIP_SITES && heartCitadel != NULL && heartCitadel->WorshipSites[site] != NULL)
			{
				float   a = angle + 0.5f;
				Point2D pos;
				pos.x = (float)cos(a) * CITADEL_WORSHIP_SITE_DISTANCE + centre.x;
				pos.y = (float)sin(a) * CITADEL_WORSHIP_SITE_DISTANCE + centre.y;
				if (callback != NULL)
				{
					callback((int)this, pos, CITADEL_WORSHIP_SITE_RADIUS, update);
				}
				else
				{
					holder->AddObject((int)this, pos, CITADEL_WORSHIP_SITE_RADIUS, update);
				}
			}
		}
		angle += TWO_PI / CITADEL_COLLIDE_SECTORS;
	}
}

void CitadelHeart::CreateTransferedEffectVisual()
{
	if (TransferContainer == NULL)
	{
		TransferContainer = GParticleContainer::CreateSpotVisualWithSpecifiedDuration(
			Pos, SPOT_VISUAL_MAGIC_BEAM_ON_CITADEL, 1.0f, -1, NULL);
		if (TransferContainer != NULL)
		{
			TransferContainer->SetPlayer(GetPlayer());
		}
	}
}

void CitadelHeart::SetTransferedEffectSelf(bool show_effect)
{
	if (show_effect)
	{
		if (TransferObject != NULL)
		{
			TransferObject = NULL;
			LastTransferTurn = 0;
		}
		if (GGame::g_game->data.GameTurn >
		    LastTransferTurn + GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(TransferedEffectPlasmaWidth))
		{
			LastTransferTurn = GGame::g_game->data.GameTurn;
			if (TransferContainer == NULL)
			{
				CreateTransferedEffectVisual();
			}
			LHPoint start = Pos.GetLHPoint();
			start.y += GetHeight();
			LHPoint end;
			LHPoint endNormal;
			GetRandomSurfacePos(&end, &endNormal);
			endNormal *= -1.0f;
			if (TransferContainer != NULL)
			{
				TransferContainer->AddTarget(new (FILEPATH, 2116) UR_PlasmaInf(
					start, end, LHPoint(0.0f, 1.0f, 0.0f), endNormal, TransferedEffectPlasmaWidth,
					TransferedEffectPlasmaSpeed, TransferedEffectPlasmaAlpha));
			}
		}
	}
}

void CitadelHeart::SetTransferedEffectObject(Object* object, bool show_effect)
{
	if (show_effect)
	{
		if (object != TransferObject)
		{
			TransferObject = object;
			LastTransferTurn = 0;
		}
		if (TransferObject != NULL &&
		    GGame::g_game->data.GameTurn >
		        LastTransferTurn + GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(TransferedEffectPlasmaWidth))
		{
			LastTransferTurn = GGame::g_game->data.GameTurn;
			if (TransferContainer == NULL)
			{
				CreateTransferedEffectVisual();
			}
			LHPoint start = Pos.GetLHPoint();
			start.y += GetHeight();
			LHPoint end = TransferObject->Pos.GetLHPoint();
			end.y += TransferObject->GetHeight();
			if (TransferContainer != NULL)
			{
				static int           sampleIndex = 0;
				LH_SamplePlayOptions options;
				options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
				options.SampleNumber = LH_SAMPLE_G_CITADELSPARK_01 + sampleIndex;
				if (++sampleIndex == CITADEL_SPARK_SAMPLE_COUNT)
				{
					sampleIndex = 0;
				}
				options.AttachedObject = this;
				options.Positional = 1;
				LHPoint soundPos = Pos.GetLHPoint();
				options.Pos = soundPos;
				options.Looping = 0;
				GGlobal::Global.audio->PlaySoundEffect(&options);
				TransferContainer->AddTarget(new (FILEPATH, 2179) UR_PlasmaInf(
					start, end, LHPoint(0.0f, 1.0f, 0.0f), LHPoint(0.0f, -1.0f, 0.0f), TransferedEffectPlasmaWidth,
					TransferedEffectPlasmaSpeed, TransferedEffectPlasmaAlpha));
			}
		}
	}
}

void CitadelHeart::ValidateTransferedEffectObjects()
{
	if (TransferContainer != NULL && TransferContainer->IsAvailable() != true)
	{
		TransferContainer = NULL;
	}
	if (TransferObject != NULL && TransferObject->IsAvailable() != true)
	{
		TransferObject = NULL;
		LastTransferTurn = 0;
	}
}

void CitadelHeart::ProcessTransferedDamageEffect()
{
	float currentLife = GetLife();
	float life;
	if (currentLife > 0.0f)
	{
		if (currentLife >= 1.0f)
		{
			return;
		}
		life = currentLife;
	}
	else
	{
		life = 0.0f;
	}
	if (this != GetActualObjectToEffect(GetPlayer(), false))
	{
		return;
	}
	float interval = GJUtils::Linterp(TransferedDamagePlasmaStartWidth, TransferedDamagePlasmaEndWidth, life);
	if (GGame::g_game->data.GameTurn > LastTransferTurn + GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(interval))
	{
		LastTransferTurn = GGame::g_game->data.GameTurn;
		if (TransferContainer == NULL)
		{
			CreateTransferedEffectVisual();
		}
		LHPoint start;
		LHPoint startNormal;
		LHPoint end;
		LHPoint endNormal;
		GetRandomSurfacePos(&start, &startNormal);
		GetRandomSurfacePos(&end, &endNormal);
		endNormal *= -1.0f;
		float width = GJUtils::Linterp(TransferedDamagePlasmaStartWidth, TransferedDamagePlasmaEndWidth, life);
		float alpha = GJUtils::Linterp(TransferedDamagePlasmaStartAlpha, TransferedDamagePlasmaEndAlpha, life);
		if (TransferContainer != NULL)
		{
			if (life <= TRANSFERED_DAMAGE_SPARK_MAX_LIFE)
			{
				static int           sampleIndex = 0;
				LH_SamplePlayOptions options;
				options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
				options.SampleNumber = LH_SAMPLE_G_CITADELSPARK_01 + sampleIndex;
				if (++sampleIndex == CITADEL_SPARK_SAMPLE_COUNT)
				{
					sampleIndex = 0;
				}
				options.AttachedObject = this;
				options.Positional = 1;
				LHPoint soundPos = Pos.GetLHPoint();
				options.Pos = soundPos;
				options.Looping = 0;
				GGlobal::Global.audio->PlaySoundEffect(&options);
			}
			TransferContainer->AddTarget(new (FILEPATH, 2255) UR_PlasmaInf(start, end, startNormal, endNormal, width,
			                                                               TransferedEffectPlasmaSpeed, alpha));
		}
	}
}

void* CitadelHeart::GetActualObjectToEffect(GPlayer* player, bool show_effect)
{
	GPlayer* owner = GetCitadel()->GetPlayer();
	Abode*   damagedAbode = NULL;
	Town*    town;
	for (town = owner->GetNextTown(NULL); town != NULL; town = owner->GetNextTown(town))
	{
		Abode* abode = NULL;
		while ((abode = abode != NULL ? abode->next.Get() : town->AbodeList.Get()) != NULL)
		{
			if (abode->IsAvailable() == true && abode->GetLife() > 0.0f && abode->GetPercentBuilt() > 0.0f &&
			    !abode->IsField() && !abode->IsFootball())
			{
				if (abode->GetLife() > 0.25f)
				{
					SetTransferedEffectObject(abode, show_effect);
					return abode;
				}
				if (damagedAbode == NULL)
				{
					damagedAbode = abode;
				}
			}
		}
	}
	if (damagedAbode != NULL)
	{
		SetTransferedEffectObject(damagedAbode, show_effect);
		return damagedAbode;
	}
	for (town = owner->GetNextTown(NULL); town != NULL; town = owner->GetNextTown(town))
	{
		FOREACH_LH_LIST_HEAD(Villager, villager, town->HomelessList)
		{
			if (villager->IsAvailable() == true)
			{
				SetTransferedEffectObject(villager, show_effect);
				return villager;
			}
		}
	}
	SetTransferedEffectSelf(show_effect);
	return this;
}

uint32_t CitadelHeart::DestroyedByEffect(GPlayer* player, float damage)
{
	DestructionSequenceStart();
	return true;
}

void CitadelHeart::UpdateLeashes() {}

BuildingSite* CitadelHeart::CreateBuildingSite()
{
	return new (FILEPATH, 2338) CitadelBuildingSite(this);
}

BuildingSite* PlannedCitadelHeart::CreateBuildingSite()
{
	return new (FILEPATH, 2344) CitadelBuildingSite(this);
}

CitadelEntrance::CitadelEntrance() : Heart(NULL)
{
	lanterns[0] = NULL;
	lanterns[1] = NULL;
	lights[0] = NULL;
	lights[1] = NULL;
}

CitadelEntrance::CitadelEntrance(const MapCoords& coords, const GObjectInfo* info) : Object(coords, info), Heart(NULL)
{
	lanterns[0] = NULL;
	lanterns[1] = NULL;
	lights[0] = NULL;
	lights[1] = NULL;
}

uint32_t CitadelEntrance::InterfaceTap(GInterfaceStatus* status)
{
	if (Heart != NULL && Heart->GetPlayer() == GGame::g_game->MyPlayer() &&
	    status == GGame::g_game->MyInterfaceStatus())
	{
		GGame::g_game->GoInsideCitadel(0, 0);
	}
	return true;
}

uint32_t CitadelEntrance::InterfaceValidToTap(GInterfaceStatus* status)
{
	if (!GGame::g_game->IsMultiplayerGame())
	{
		return GGame::g_game->script->CitadelInteract != 0;
	}
	return true;
}

HELP_TEXT CitadelEntrance::GetQueryFirstEnumText()
{
	return (HELP_TEXT)HELP_TEXT_TAKE_AZTEC_VILLAGE_04;
}

HELP_TEXT CitadelEntrance::GetQueryLastEnumText()
{
	return GetQueryFirstEnumText();
}

void CitadelHeart::CreateCollideData()
{
	ReleaseCollideData();
	CollideData = new (FILEPATH, 2413) NewCollide(Game3dObject);
	if (CollideData->obj->IteratorList != NULL)
	{
		delete CollideData->obj->IteratorList;
	}
	CollideData->obj->IteratorList = new (FILEPATH, 2418) NewCollide::List(CITADEL_COLLIDE_OBJ_COUNT);
	LHMatrix matrix;
	GetWorldMatrix(&matrix);
	LHPoint centre = matrix.GetPos();
	CollideData->obj->IteratorList->Add(new (FILEPATH, 2424)
	                                        NewCollide::Obj(CollideRadius * CITADEL_COLLIDE_CORE_SCALE, &centre));
	float angle = GetYAngle() + CollideAngleOffset;
	float sphereRadius = CollideRadius * CITADEL_SECTOR_POINT_RADIUS_SCALE;
	for (int i = 0; i < CITADEL_COLLIDE_SECTORS; i++)
	{
		float   s = sin(angle);
		float   c = cos(angle);
		float   dist = CollideRadius * CITADEL_COLLIDE_SECTOR_START_SCALE;
		LHPoint pos;
		for (int j = 0; j < CITADEL_COLLIDE_RINGS; j++)
		{
			if (i < 2)
			{
				if (j < 3)
				{
					pos.Set(dist * c + centre.x, centre.y, dist * s + centre.z);
					dist += CollideRadius * CITADEL_SECTOR_STEP_SCALE;
				}
				else if (j == 3)
				{
					float a = angle + (i == 0 ? CITADEL_SECTOR_ARM_ANGLE_1 : -CITADEL_SECTOR_ARM_ANGLE_1);
					pos.Set(cos(a) * dist + centre.x, centre.y, sin(a) * dist + centre.z);
					dist += CollideRadius * CITADEL_SECTOR_ARM_STEP_1;
				}
				else if (j == 4)
				{
					float a = angle + (i == 0 ? CITADEL_SECTOR_ARM_ANGLE_2 : -CITADEL_SECTOR_ARM_ANGLE_2);
					pos.Set(cos(a) * dist + centre.x, centre.y, sin(a) * dist + centre.z);
					dist += CollideRadius * CITADEL_SECTOR_ARM_STEP_2;
				}
				else if (j == 5)
				{
					float a = angle + (i == 0 ? CITADEL_SECTOR_ARM_ANGLE_3 : -CITADEL_SECTOR_ARM_ANGLE_3);
					pos.Set(cos(a) * dist + centre.x, centre.y, sin(a) * dist + centre.z);
				}
				CollideData->obj->IteratorList->Add(new (FILEPATH, 2479)
				                                        NewCollide::Obj(CollideSphereScale * sphereRadius, &pos));
			}
			else if (j < 4)
			{
				pos.Set(dist * c + centre.x, centre.y, s * dist + centre.z);
				CollideData->obj->IteratorList->Add(new (FILEPATH, 2487)
				                                        NewCollide::Obj(CollideSphereScale * sphereRadius, &pos));
				dist += CollideRadius * CITADEL_SECTOR_STEP_SCALE;
			}
		}
		angle += TWO_PI / CITADEL_COLLIDE_SECTORS;
	}
}

void CitadelEntrance::ResolveLoad()
{
	info = &GObjectInfo::Definitions[OBJECT_TYPE_TERRAIN];
}
