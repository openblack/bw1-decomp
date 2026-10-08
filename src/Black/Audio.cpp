#include <math.h>    /* For fabs, sqrt */
#include <stdio.h>   /* For sprintf */
#include <stdlib.h>  /* For atoi, free, malloc */
#include <string.h>  /* For strcpy */
#include <windows.h> /* For GetFileAttributes, GetVersionEx, GlobalMemoryStatus */

#include "MaxFloat.h"
#include "GameTimeConstants.h"
#include "Audio.h"

#include <Lionhead/LH3DLib/development/LH3DIsland.h>     /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DTech.h>       /* For LH3DTech */
#include <Lionhead/LHAudio/ver7.0/LH_AudioBank.h>        /* For class LH_AudioBank */
#include <Lionhead/LHAudio/ver7.0/LH_AudioSystem.h>      /* For class LH_AudioSystem */
#include <Lionhead/LHAudio/ver7.0/LH_MusicPlayOptions.h> /* For class LH_MusicPlayOptions */
#include <Lionhead/LHFile/ver3.0/LHFilePath.h>           /* For g_GameDriveCharacter */
#include <Lionhead/LHLib/ver5.0/LHScreen.h>              /* For LHResetFPU */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>              /* For LHSys::TheSystem */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                 /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHRegistry.h>            /* For RegistryRetrieveULong, RegistrySetULong */

#include "Alignment.h"
#include "Arena.h"
#include "Camera.h"
#include "Citadel.h"
#include "Creature.h"
#include "CreatureMental.h"
#include "Dance.h"
#include "Game.h"
#include "GameOSFile.h"
#include "Global.h"
#include "HelpSystem.h"
#include "Interface.h"
#include "Landscape.h"
#include "PCMain.h"
#include "Player.h"
#include "Script.h"
#include "SoundInfo.h"
#include "ThingMusicInfo.h"
#include "Town.h"
#include "TribeInfo.h"
#include "Utils.h"
#include "Villager.h"
#include "WorshipSite.h"

#include "ColourConstants.h" /* For White */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"

#if defined(VERSION_BW1W100)
#define AUDIO_FILE "C:\\dev\\black\\Audio.cpp"
#elif defined(VERSION_BW1W110)
#define AUDIO_FILE "C:\\dev\\Black\\Audio.cpp"
#else
#define AUDIO_FILE "C:\\dev\\MP\\Black\\Audio.cpp"
#endif

#ifndef INVALID_FILE_ATTRIBUTES
#define INVALID_FILE_ATTRIBUTES 0xFFFFFFFF
#endif

#define AUDIO_OVERRIDE_REGISTRY_KEY "Software\\Lionhead Studios Ltd\\Black & White\\Audio\\Override"
#define BWSETUP_REGISTRY_KEY        "Software\\Lionhead Studios Ltd\\Black & White\\BWSetup"

#define AUDIO_HW_RATE     22050
#define AUDIO_MAX_SAMPLES 16
// The sample heap is an eighth of physical memory.
#define AUDIO_HEAP_SIZE_SHIFT 3

// Positional sounds are heard up to this far away.
#define SOUND_EFFECT_MAX_DISTANCE 800.0f
// Sound positions beyond this on any axis are treated as bogus and zeroed.
#define SOUND_EFFECT_MAX_COORDINATE 5000.0

#define MUSIC_DEBUG_CATEGORY 1
// No music plays on this land, which also never autosaves.
#define NO_MUSIC_LAND_NUMBER 6
// Stored style chunks resume this many chunks past the one that was playing.
#define MUSIC_RESUME_CHUNK_OFFSET 2

#define ALIGN_MUSIC_START_TURN 20
#define ALIGN_MUSIC_VOLUME     80
// Alignment music that has run this many game turns without a change is not restarted.
#define ALIGN_MUSIC_MAX_REPEAT_TURNS 3500

// GInterface::ResetActionState picks this while the player's creature fights.
#define INTERFACE_ACTION_STATE_CREATURE_FIGHT 16
// Creature fights from this land on use the big fight music.
#define BIG_FIGHT_MUSIC_FIRST_LAND 4
#define FIGHT_MUSIC_DISTANCE       100.0f

#define CHANT_MUSIC_CITADEL_DISTANCE      150.0f
#define CHANT_MUSIC_WORSHIP_SITE_DISTANCE 100.0f
#define CHANT_MUSIC_HEIGHT_RANGE          100.0f
// Chant music uses the vocal track once more dancers than this have joined.
#define MAX_DANCERS_WITHOUT_CHANT_VOX 8

#define DANCE_MUSIC_DISTANCE     75.0f
#define DANCE_MUSIC_HEIGHT_RANGE 60.0f

inline void GCamera::GetPosition(LHPoint& pos)
{
	pos = *LH3DTech::GetCameraPosition();
}

inline void GCamera::GetFocus(LHPoint& focus)
{
	focus = LHPoint(LH3DTech::GetCameraTarget());
}

inline void GCamera::GetUpVector(LHPoint& up)
{
	up.x = LH3DTech::g_world_to_camera._12;
	up.y = LH3DTech::g_world_to_camera._22;
	up.z = LH3DTech::g_world_to_camera._32;
}

struct MusicTypeInfo
{
	char* Filename;
	char* Name;
};

static MusicTypeInfo MusicTypes[MUSIC_TYPE_LAST] = {
	{NULL, "MUSIC_TYPE_NONE"},
	{"audio/music/align/evil.sad", "MUSIC_TYPE_GENERIC_EVIL"},
	{"audio/music/align/neutral.sad", "MUSIC_TYPE_GENERIC_NEUTRAL"},
	{"audio/music/align/good.sad", "MUSIC_TYPE_GENERIC_GOOD"},
	{"audio/music/align/celt_evil.sad", "MUSIC_TYPE_CELTIC_TOWN_EVIL"},
	{"audio/music/align/celt_neutral.sad", "MUSIC_TYPE_CELTIC_TOWN_NEUTRAL"},
	{"audio/music/align/celt_good.sad", "MUSIC_TYPE_CELTIC_TOWN_GOOD"},
	{"audio/music/align/aztc_evil.sad", "MUSIC_TYPE_AZTEC_TOWN_EVIL"},
	{"audio/music/align/aztc_neutral.sad", "MUSIC_TYPE_AZTEC_TOWN_NEUTRAL"},
	{"audio/music/align/aztc_good.sad", "MUSIC_TYPE_AZTEC_TOWN_GOOD"},
	{"audio/music/align/japn_evil.sad", "MUSIC_TYPE_JAPANESE_TOWN_EVIL"},
	{"audio/music/align/japn_neutral.sad", "MUSIC_TYPE_JAPANESE_TOWN_NEUTRAL"},
	{"audio/music/align/japn_good.sad", "MUSIC_TYPE_JAPANESE_TOWN_GOOD"},
	{"audio/music/align/indn_evil.sad", "MUSIC_TYPE_INDIAN_TOWN_EVIL"},
	{"audio/music/align/indn_neutral.sad", "MUSIC_TYPE_INDIAN_TOWN_NEUTRAL"},
	{"audio/music/align/indn_good.sad", "MUSIC_TYPE_INDIAN_TOWN_GOOD"},
	{"audio/music/align/egpt_evil.sad", "MUSIC_TYPE_EGYPTIAN_TOWN_EVIL"},
	{"audio/music/align/egpt_neutral.sad", "MUSIC_TYPE_EGYPTIAN_TOWN_NEUTRAL"},
	{"audio/music/align/egpt_good.sad", "MUSIC_TYPE_EGYPTIAN_TOWN_GOOD"},
	{"audio/music/align/grek_evil.sad", "MUSIC_TYPE_GREEK_TOWN_EVIL"},
	{"audio/music/align/grek_neutral.sad", "MUSIC_TYPE_GREEK_TOWN_NEUTRAL"},
	{"audio/music/align/grek_good.sad", "MUSIC_TYPE_GREEK_TOWN_GOOD"},
	{"audio/music/align/celt_evil.sad", "MUSIC_TYPE_NORSE_TOWN_EVIL"},
	{"audio/music/align/celt_neutral.sad", "MUSIC_TYPE_NORSE_TOWN_NEUTRAL"},
	{"audio/music/align/celt_good.sad", "MUSIC_TYPE_NORSE_TOWN_GOOD"},
	{"audio/music/align/tbtn_evil.sad", "MUSIC_TYPE_TIBETAN_TOWN_EVIL"},
	{"audio/music/align/tbtn_neutral.sad", "MUSIC_TYPE_TIBETAN_TOWN_NEUTRAL"},
	{"audio/music/align/tbtn_good.sad", "MUSIC_TYPE_TIBETAN_TOWN_GOOD"},
	{"audio/music/chant/celt_chant.sad", "MUSIC_TYPE_CELTIC_CHANT"},
	{"audio/music/chant/celt_chant_vox.sad", "MUSIC_TYPE_CELTIC_CHANT_VOX"},
	{"audio/music/chant/aztc_chant.sad", "MUSIC_TYPE_AZTEC_CHANT"},
	{"audio/music/chant/aztc_chant_vox.sad", "MUSIC_TYPE_AZTEC_CHANT_VOX"},
	{"audio/music/chant/japn_chant.sad", "MUSIC_TYPE_JAPANESE_CHANT"},
	{"audio/music/chant/japn_chant_vox.sad", "MUSIC_TYPE_JAPANESE_CHANT_VOX"},
	{"audio/music/chant/indn_chant.sad", "MUSIC_TYPE_INDIAN_CHANT"},
	{"audio/music/chant/indn_chant_vox.sad", "MUSIC_TYPE_INDIAN_CHANT_VOX"},
	{"audio/music/chant/egpt_chant.sad", "MUSIC_TYPE_EGYPTIAN_CHANT"},
	{"audio/music/chant/egpt_chant_vox.sad", "MUSIC_TYPE_EGYPTIAN_CHANT_VOX"},
	{"audio/music/chant/grek_chant.sad", "MUSIC_TYPE_GREEK_CHANT"},
	{"audio/music/chant/grek_chant_vox.sad", "MUSIC_TYPE_GREEK_CHANT_VOX"},
	{"audio/music/chant/nrse_chant.sad", "MUSIC_TYPE_NORSE_CHANT"},
	{"audio/music/chant/nrse_chant_vox.sad", "MUSIC_TYPE_NORSE_CHANT_VOX"},
	{"audio/music/chant/tbtn_chant.sad", "MUSIC_TYPE_TIBETAN_CHANT"},
	{"audio/music/chant/tbtn_chant_vox.sad", "MUSIC_TYPE_TIBETAN_CHANT_VOX"},
	{"audio/music/citadel/citadel.sad", "MUSIC_TYPE_CITADEL_EVIL"},
	{"audio/music/citadel/citadel.sad", "MUSIC_TYPE_CITADEL_NEUTRAL"},
	{"audio/music/citadel/citadel.sad", "MUSIC_TYPE_CITADEL_GOOD"},
	{"audio/music/script/pipertune_m.sad", "MUSIC_TYPE_SCRIPT_PIPER_TUNE"},
	{"audio/music/script/pipercave_m.sad", "MUSIC_TYPE_SCRIPT_PIPER_CAVE_TUNE"},
	{"audio/music/script/Hermit.sad", "MUSIC_TYPE_SCRIPT_HERMIT"},
	{"audio/music/script/MissionariesBackground.sad", "MUSIC_TYPE_SCRIPT_MISSIONARIES_BACKGROUND"},
	{"audio/dialogue/MissionariesVerse1.sad", "MUSIC_TYPE_SCRIPT_MISSIONARIES_VERSE_1"},
	{"audio/dialogue/MissionariesVerse2.sad", "MUSIC_TYPE_SCRIPT_MISSIONARIES_VERSE_2"},
	{"audio/dialogue/MissionariesVerse3.sad", "MUSIC_TYPE_SCRIPT_MISSIONARIES_VERSE_3"},
	{"audio/music/intro/intro.sad", "MUSIC_TYPE_SCRIPT_INTRO"},
	{"audio/music/script/singingstonesa.sad", "MUSIC_TYPE_SCRIPT_SINGING_STONE_CIRCLE"},
	{"audio/music/script/FollowUsWelcome.sad", "MUSIC_TYPE_SCRIPT_WELCOME_DANCE"},
	{"audio/music/script/Script01.sad", "MUSIC_TYPE_SCRIPT_GENERIC_01"},
	{"audio/music/script/Script02.sad", "MUSIC_TYPE_SCRIPT_GENERIC_02"},
	{"audio/music/script/Script03.sad", "MUSIC_TYPE_SCRIPT_GENERIC_03"},
	{"audio/music/script/Script04.sad", "MUSIC_TYPE_SCRIPT_GENERIC_04"},
	{"audio/music/script/Epic01.sad", "MUSIC_TYPE_SCRIPT_EPIC_01"},
	{"audio/music/script/Epic02.sad", "MUSIC_TYPE_SCRIPT_EPIC_02"},
	{"audio/music/script/Epic03.sad", "MUSIC_TYPE_SCRIPT_EPIC_03"},
	{"audio/music/script/Epic04.sad", "MUSIC_TYPE_SCRIPT_EPIC_04"},
	{"audio/music/script/CreatureChosen.sad", "MUSIC_TYPE_SCRIPT_CREATURE_CHOSEN"},
	{"audio/music/script/Funeral.sad", "MUSIC_TYPE_SCRIPT_FUNERAL"},
	{"audio/music/script/CreatureGuide.sad", "MUSIC_TYPE_SCRIPT_CREATURE_GUIDE"},
	{"audio/music/script/Khazar.sad", "MUSIC_TYPE_SCRIPT_KHAZAR"},
	{"audio/music/script/Nemesis.sad", "MUSIC_TYPE_SCRIPT_NEMESIS"},
	{"audio/music/script/Twinkle.sad", "MUSIC_TYPE_SCRIPT_TWINKLE"},
	{"audio/music/script/WhistleFuneral.sad", "MUSIC_TYPE_SCRIPT_WHISTLE_FUNERAL"},
	{"audio/music/script/WhistleTwinkle.sad", "MUSIC_TYPE_SCRIPT_WHISTLE_TWINKLE"},
	{"audio/music/script/Sleg.sad", "MUSIC_TYPE_SCRIPT_SLEG"},
	{"audio/music/script/creaturefight.sad", "MUSIC_TYPE_CREATURE_FIGHT"},
	{"audio/music/script/creatureBigfight.sad", "MUSIC_TYPE_CREATURE_BIG_FIGHT"},
	{"audio/music/script/guardianstone.sad", "MUSIC_TYPE_SCRIPT_GUARDIAN_STONE"},
	{"audio/music/outro/outro.sad", "MUSIC_TYPE_OUTRO"},
	{"audio/music/script/failure.sad", "MUSIC_TYPE_SCRIPT_FAILURE"},
	{"audio/music/script/gregorian.sad", "MUSIC_TYPE_SCRIPT_GREGORIAN"},
	{"audio/music/script/christmas.sad", "MUSIC_TYPE_SCRIPT_CHRISTMAS"},
	{"audio/music/script/gregorian3d.sad", "MUSIC_TYPE_SCRIPT_GREGORIAN_3D"},
	{"audio/music/script/circus.sad", "MUSIC_TYPE_SCRIPT_CIRCUS"},
	{"audio/music/script/circus3d.sad", "MUSIC_TYPE_SCRIPT_CIRCUS_3D"},
	{"audio/music/script/creatureendsequence.sad", "MUSIC_TYPE_SCRIPT_CREATURE_END_SEQUENCE"},
};

static MUSIC_ALIGNMENT AlignmentMusicAlignments[NUM_DISCRETE_ALIGNMENTS] = {
	MUSIC_ALIGNMENT_EVIL,    // ALIGNMENT_DEVILISH
	MUSIC_ALIGNMENT_EVIL,    // ALIGNMENT_EVIL
	MUSIC_ALIGNMENT_NEUTRAL, // ALIGNMENT_BAD
	MUSIC_ALIGNMENT_NEUTRAL, // ALIGNMENT_NEUTRAL
	MUSIC_ALIGNMENT_NEUTRAL, // ALIGNMENT_NICE
	MUSIC_ALIGNMENT_GOOD,    // ALIGNMENT_GOOD
	MUSIC_ALIGNMENT_GOOD,    // ALIGNMENT_ANGELIC
};

// The first of each tribe's three alignment variants.
static MUSIC_TYPE TribeTownMusicTypes[TRIBE_TYPE_LAST] = {
	MUSIC_TYPE_CELTIC_TOWN_EVIL,   // TRIBE_TYPE_CELTIC
	MUSIC_TYPE_CELTIC_TOWN_EVIL,   // TRIBE_TYPE_AFRICAN
	MUSIC_TYPE_AZTEC_TOWN_EVIL,    // TRIBE_TYPE_AZTEC
	MUSIC_TYPE_JAPANESE_TOWN_EVIL, // TRIBE_TYPE_JAPANESE
	MUSIC_TYPE_INDIAN_TOWN_EVIL,   // TRIBE_TYPE_INDIAN
	MUSIC_TYPE_EGYPTIAN_TOWN_EVIL, // TRIBE_TYPE_EGYPTIAN
	MUSIC_TYPE_GREEK_TOWN_EVIL,    // TRIBE_TYPE_GREEK
	MUSIC_TYPE_NORSE_TOWN_EVIL,    // TRIBE_TYPE_NORSE
	MUSIC_TYPE_TIBETAN_TOWN_EVIL,  // TRIBE_TYPE_TIBETAN
};

// Each chant is followed by its vocal variant.
static MUSIC_TYPE TribeChantMusicTypes[TRIBE_TYPE_LAST] = {
	MUSIC_TYPE_CELTIC_CHANT,   // TRIBE_TYPE_CELTIC
	MUSIC_TYPE_CELTIC_CHANT,   // TRIBE_TYPE_AFRICAN
	MUSIC_TYPE_AZTEC_CHANT,    // TRIBE_TYPE_AZTEC
	MUSIC_TYPE_JAPANESE_CHANT, // TRIBE_TYPE_JAPANESE
	MUSIC_TYPE_INDIAN_CHANT,   // TRIBE_TYPE_INDIAN
	MUSIC_TYPE_EGYPTIAN_CHANT, // TRIBE_TYPE_EGYPTIAN
	MUSIC_TYPE_GREEK_CHANT,    // TRIBE_TYPE_GREEK
	MUSIC_TYPE_NORSE_CHANT,    // TRIBE_TYPE_NORSE
	MUSIC_TYPE_TIBETAN_CHANT,  // TRIBE_TYPE_TIBETAN
};

unsigned long sound_effect_callback_function(LH_SampleInfo* info, float* x, float* y, float* z, float* distance,
                                             bool32_t* valid);

// BW1W120 00426b40 BW1M119 01184da0
void alignment_music_finished_callback(unsigned long group)
{
	group--;
	if (group < GGlobal::Global.audio->AudioSystem->LHMusicGetTotalGroups())
	{
		GGlobal::Global.audio->MusicStyleChunks[group] = LH_MUSIC_FIRST_CHUNK;
		GGlobal::Global.audio->AlignmentMusicFinished();
	}
}

// BW1W120 00426b80 BW1M119 01184d40
void script_music_finished_callback(unsigned long type)
{
	if (type == GGlobal::Global.audio->ScriptMusicType)
	{
		GGlobal::Global.audio->ScriptMusicType = MUSIC_TYPE_NONE;
	}
}

// BW1W120 00426ba0 BW1M119 01184bf0
void script_music_marker_callback(unsigned long param)
{
	char* marker = (char*)param;
	switch (*marker)
	{
	case 'L':
	case 'l':
		GGame::g_game->script->LastMusicLine = atoi(marker + 1);
		GGame::g_game->script->LastMusicWord = 1;
		break;
	case 'P':
	case 'p':
	case 'W':
	case 'w':
		GGame::g_game->script->LastMusicWord = GGame::g_game->script->GetLastMusicWord() + 1;
		break;
	}
}

bool32_t GAudio::IsUsingBouncingBall()
{
	switch (GGame::g_game->CurrentLanguage)
	{
	case GAME_LANGUAGE_UK_ENGLISH:
	case GAME_LANGUAGE_US_ENGLISH:
	case GAME_LANGUAGE_FRENCH:
	case GAME_LANGUAGE_GERMAN:
	case GAME_LANGUAGE_SWEDISH:
	case GAME_LANGUAGE_SPANISH:
	case GAME_LANGUAGE_JAPANESE:
	case GAME_LANGUAGE_DUTCH:
	case GAME_LANGUAGE_ITALIAN:
	case GAME_LANGUAGE_POLISH:
		return true;
	}
	return false;
}

MUSIC_ALIGNMENT GAudio::GetMusicAlignment(DISCRETE_ALIGNMENT_VALUES alignment)
{
	if (alignment >= NUM_DISCRETE_ALIGNMENTS)
	{
		return MUSIC_ALIGNMENT_NEUTRAL;
	}
	return AlignmentMusicAlignments[alignment];
}

void GAudio::Reset()
{
	CurrentTown = NULL;
	ResetMusicStyleChunks();
	ScriptMusicType = MUSIC_TYPE_NONE;
	LastAlignMusicType = MUSIC_TYPE_NONE;
	ScriptMusicPlaying = false;
	Alignment = 0.0f;
	CurrentMusicType = MUSIC_TYPE_UNSET;
	if (AudioSystem != NULL)
	{
		AudioSystem->LHMusicStop(false);
		AudioSystem->LHAtmosProcess(false);
		AudioSystem->LHSampleStopAll();
		AudioSystem->LHGlobalSwitch(0);
		while (AudioSystem->LHSampleGetNumberPlaying())
		{
			AudioSystem->LHSampleGetNumberPlaying();
		}
		AudioSystem->LHSampleClearInfoList();
		AudioSystem->LHGlobalSwitch(1);
	}
	ReleaseAllThingMusicInfo();
}

bool32_t GAudio::IsInstalled()
{
	return AudioSystem->LHWaveIsInstalled();
}

GAudio::GAudio()
{
	MEMORYSTATUS  memoryStatus;
	char          filename[MAX_PATH];
	OSVERSIONINFO versionInfo;

	AudioSystem = new (AUDIO_FILE, 325) LH_AudioSystem;
	AudioSystem->EnableWave = true;
	AudioSystem->EnableMidi = false;
	AudioSystem->EnableMusic = true;
	AudioSystem->EnableRedbook = true;
	AudioSystem->UseHeap = true;
	GlobalMemoryStatus(&memoryStatus);
	AudioSystem->HeapSize = memoryStatus.dwTotalPhys >> AUDIO_HEAP_SIZE_SHIFT;
	AudioSystem->HWRate = AUDIO_HW_RATE;
	AudioSystem->MaxSamples = AUDIO_MAX_SAMPLES;
	AudioSystem->UseHardware = false;
	sprintf(AudioSystem->OverrideKey, AUDIO_OVERRIDE_REGISTRY_KEY);
	versionInfo.dwOSVersionInfoSize = sizeof(versionInfo);
	GetVersionEx(&versionInfo);
	CurrentTown = NULL;
	AudioSystem->Window = LHSys::TheSystem.screen.MsWindowHandle;
	AudioSystem->Create();
	if (AudioSystem->LHWaveIsInstalled() == true)
	{
		AudioSystem->LHSampleRegister3DObjectFunction(sound_effect_callback_function, SOUND_EFFECT_MAX_DISTANCE);
		RegistrySetup();
		for (unsigned long i = 0; i < MUSIC_TYPE_LAST; i++)
		{
#ifdef VERSION_BW1W100
			// 1.00 has no NOLOADMUSIC command line switch.
			if (MusicTypes[i].Filename != NULL)
#else
			if (MusicTypes[i].Filename != NULL && !ARGS_NOLOADMUSIC)
#endif
			{
				strcpy(filename, MusicTypes[i].Filename);
				if (GetFileAttributes(filename) == INVALID_FILE_ATTRIBUTES)
				{
					sprintf(filename, "%c:\\%s", g_GameDriveCharacter, MusicTypes[i].Filename);
				}
				MusicBanks[i] = AudioSystem->LHBankRegister(filename, 0);
			}
			else
			{
				MusicBanks[i] = NULL;
			}
		}
		MusicStyleChunks = (unsigned long*)malloc(AudioSystem->LHMusicGetTotalGroups() * sizeof(unsigned long));
		ResetMusicStyleChunks();
	}
	else
	{
		MusicStyleChunks = NULL;
		memset(MusicBanks, 0, sizeof(MusicBanks));
	}
	InitSFX();
	ScriptMusicType = MUSIC_TYPE_NONE;
	Alignment = 0.0f;
	LHResetFPU();
}
void GAudio::ToBeDeleted(int delete_now)
{
	if (AudioSystem->LHWaveIsInstalled() == true)
	{
		RegistryShutdown();
	}
	ReleaseSFXBanks();
	ReleaseAtmosSoundBanks();
	for (int i = 0; i < MUSIC_TYPE_LAST; i++)
	{
		if (MusicBanks[i] != NULL)
		{
			AudioSystem->LHBankRelease(MusicBanks[i]);
			MusicBanks[i] = NULL;
		}
	}
	delete AudioSystem;
	AudioSystem = NULL;
	if (MusicStyleChunks != NULL)
	{
		free(MusicStyleChunks);
	}
	LHResetFPU();
	GameThing::ToBeDeleted(delete_now);
}

void GAudio::ProcessAudioGameTurn()
{
	if (AudioSystem->LHWaveIsActive())
	{
		ProcessMusic();
		CalculateAtmosTargetVolumes();
		ProcessAtmosBanks();
		Update3DAudioPositions();
		if (GGame::g_game->VideoPlayer == NULL)
		{
			AudioSystem->LHAtmosProcess(true);
		}
	}
	ValidateThingMusic();
}

void GAudio::Update3DAudioPositions()
{
	LHPoint position;
	LHPoint focus;
	LHPoint up;
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		position = LHPoint(LH3DTech::GetCameraPosition());
		focus = LHPoint(LH3DTech::GetCameraTarget());
		up.x = LH3DTech::g_world_to_camera._12;
		up.y = LH3DTech::g_world_to_camera._22;
		up.z = LH3DTech::g_world_to_camera._32;
	}
	else
	{
		GGame::g_game->GetCamera()->GetPosition(position);
		GGame::g_game->GetCamera()->GetUpVector(up);
		GGame::g_game->GetCamera()->GetFocus(focus);
	}
	AudioSystem->LHSampleUpdate3DChannels();
	AudioSystem->LHListenerUpdate((LHAudioPoint*)&position, (LHAudioPoint*)&focus, (LHAudioPoint*)&up);
}

// BW1W120 00427200 BW1M119 01183ff0
unsigned long sound_effect_callback_function(LH_SampleInfo* info, float* x, float* y, float* z, float* distance,
                                             bool32_t* valid)
{
	LHPoint pos(info->X, info->Y, info->Z);
	LHPoint camera;
	Base*   object = info->AttachedObject;

	if (fabs(info->X) > SOUND_EFFECT_MAX_COORDINATE)
	{
		info->X = 0.0f;
	}
	if (fabs(info->Y) > SOUND_EFFECT_MAX_COORDINATE)
	{
		info->Y = 0.0f;
	}
	if (fabs(info->Z) > SOUND_EFFECT_MAX_COORDINATE)
	{
		info->Z = 0.0f;
	}
	if (object == LH_SAMPLE_OBJECT_GONE)
	{
		*valid = false;
		return 0;
	}
	if (object != NULL)
	{
		GameThing* thing = dynamic_cast<GameThing*>(object);
		if (thing != NULL)
		{
			if (thing->IsAvailable())
			{
				if (thing->Get3DSoundPos(&pos) != true)
				{
					*valid = false;
					return 0;
				}
			}
			else
			{
				*valid = false;
				return 0;
			}
		}
		else if (object->Get3DSoundPos(&pos) != true)
		{
			*valid = false;
			return 0;
		}
	}
	else
	{
		GGame::g_game->GetCamera()->GetPosition(pos);
	}
	*valid = true;
	*x = pos.x;
	*y = pos.y;
	*z = pos.z;
	if (fabs(*x) > SOUND_EFFECT_MAX_COORDINATE)
	{
		*x = 0.0f;
	}
	if (fabs(*y) > SOUND_EFFECT_MAX_COORDINATE)
	{
		*y = 0.0f;
	}
	if (fabs(*z) > SOUND_EFFECT_MAX_COORDINATE)
	{
		*z = 0.0f;
	}
	GGame::g_game->GetCamera()->GetPosition(camera);
	pos.x += info->OffsetX;
	pos.y += info->OffsetY;
	pos.z += info->OffsetZ;
	*distance = camera.GetDistance(pos);
	return 0;
}

MUSIC_TYPE GAudio::GetTownMusicType(MUSIC_ALIGNMENT alignment, TRIBE_TYPE tribe)
{
	if (tribe >= TRIBE_TYPE_LAST)
	{
		return MUSIC_TYPE_CELTIC_TOWN_NEUTRAL;
	}
	return (MUSIC_TYPE)(TribeTownMusicTypes[tribe] + alignment);
}

MUSIC_TYPE GAudio::GetChantMusicType(TRIBE_TYPE tribe, unsigned long num_dancers)
{
	if (tribe >= TRIBE_TYPE_LAST)
	{
		return MUSIC_TYPE_CELTIC_TOWN_NEUTRAL;
	}
	MUSIC_TYPE type = TribeChantMusicTypes[tribe];
	if (num_dancers > MAX_DANCERS_WITHOUT_CHANT_VOX)
	{
		type = (MUSIC_TYPE)(type + 1);
	}
	return type;
}

MUSIC_TYPE GAudio::GetMusicType(const MapCoords& coords)
{
	float           value = Alignment;
	MUSIC_ALIGNMENT alignment = GetMusicAlignment(GAlignment::GetDiscreteAlignmentValue(value));
	Town*           town = coords.GetNearestTownWithTownCentre(GSoundInfo::Info.TownMusicFarDistance);
	// A reference to the copy keeps it in memory: the target copies through fld/fstp, not eax.
	const float& altitude = coords.Altitude();
	if (CurrentTown != NULL && !CurrentTown->IsAvailable())
	{
		CurrentTown = NULL;
	}
	if (town != NULL && altitude < GSoundInfo::Info.TownMusicFarDistance)
	{
		if (GUtils::GetDistanceInMetres(GGame::g_game->GetCamera()->Pos, town->Pos) >
		    GSoundInfo::Info.TownMusicNearDistance)
		{
			if (CurrentTown != town && CurrentTown != NULL &&
			    GUtils::GetDistanceInMetres(GGame::g_game->GetCamera()->Pos, CurrentTown->Pos) <
			        GSoundInfo::Info.TownMusicFarDistance)
			{
				return GetTownMusicType(alignment, CurrentTown->tribe_type);
			}
		}
		else
		{
			CurrentTown = town;
			TRIBE_TYPE tribe = town->tribe_type;
			return GetTownMusicType(alignment, tribe);
		}
	}
	CurrentTown = NULL;
	return (MUSIC_TYPE)(alignment + MUSIC_TYPE_GENERIC_EVIL);
}

void GAudio::PlayFightMusic()
{
	LH_MusicPlayOptions options;
	MUSIC_TYPE          type;
	if (!GGame::g_game->SkirmishGame && !GGame::g_game->IsMultiplayerGame() &&
	    GGame::g_game->LandNumber < BIG_FIGHT_MUSIC_FIRST_LAND)
	{
		type = MUSIC_TYPE_CREATURE_FIGHT;
	}
	else
	{
		type = MUSIC_TYPE_CREATURE_BIG_FIGHT;
	}
	if (MusicBanks[type] != NULL)
	{
		options.Loop = false;
		options.Bank = MusicBanks[type];
		options.Volume = LH_MUSIC_VOLUME_MAX;
		options.StartChunk = MusicStyleChunks[MusicBanks[type]->LHBankGetMusicGroupId() - 1];
		options.FadeIn = true;
		options.Positional = false;
		options.Pitch = LH_MUSIC_PITCH_NORMAL;
		StoreMusicStyleChunks();
		AudioSystem->LHMusicPlay(&options);
		GGlobal::Global.debug.SetMessage(MUSIC_DEBUG_CATEGORY, "Music Playing=%s",
		                                 MusicTypes[MUSIC_TYPE_CREATURE_FIGHT].Name);
	}
}

bool32_t GAudio::ProcessFightMusic()
{
	Creature* creature = GGame::g_game->players[GGame::g_game->PlayerIndex].GetCreature();
	LHPoint   camera;
	GGame::g_game->GetCamera()->GetPosition(camera);
	if (creature != NULL)
	{
		if (GGame::g_game->MyInterface()->ActionState == INTERFACE_ACTION_STATE_CREATURE_FIGHT)
		{
			PlayFightMusic();
			return true;
		}
		FOREACH_LH_LIST_HEAD(GArena, arena, GGame::g_game->GameLists.arenas)
		{
			if (arena->FightInProgress && arena->IsCreatureInArena(creature))
			{
				LHPoint arenaPos;
				GLandscape::ConvertMapCoordToLandscapePoint(arena->GetPos(), arenaPos);
				arenaPos -= camera;
				if (arenaPos.GetNorme() < FIGHT_MUSIC_DISTANCE)
				{
					PlayFightMusic();
					return true;
				}
			}
		}
	}
	return false;
}

bool32_t GAudio::ProcessChantMusic()
{
	LH_MusicPlayOptions options;
	Citadel*            citadel = GGame::g_game->GetCamera()->Pos.GetNearestCitadel(CHANT_MUSIC_CITADEL_DISTANCE);
	if (citadel != NULL)
	{
		WorshipSite* site =
			citadel->GetNearestActiveWorshipSite(GGame::g_game->GetCamera()->Pos, CHANT_MUSIC_WORSHIP_SITE_DISTANCE);
		if (site != NULL)
		{
			Dance* dance = site->dance;
			if (dance != NULL)
			{
				float     cameraHeight = GGame::g_game->GetCamera()->Pos.Altitude() +
				                         LH3DIsland::GetAltitude(GGame::g_game->GetCamera()->Pos);
				MapCoords dancePos;
				site->GetDancePos(&dancePos);
				if (fabsf(cameraHeight - LH3DIsland::GetAltitude(dancePos)) < CHANT_MUSIC_HEIGHT_RANGE)
				{
					TRIBE_TYPE    tribe = site->GetTribeType();
					unsigned long dancers = dance->NumDancers;
					MUSIC_TYPE    type = GetChantMusicType(tribe, dancers);
					if (MusicBanks[type] != NULL)
					{
						MapCoords coords;
						site->GetDancePos(&coords);
						LHPoint pos;
						GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
						long group = MusicBanks[type]->LHBankGetMusicGroupId();
						options.Loop = true;
						options.Bank = MusicBanks[type];
						options.Volume = LH_MUSIC_VOLUME_MAX;
						options.StartChunk = MusicStyleChunks[group - 1];
						options.FadeIn = false;
						options.Positional = true;
						options.Pitch = LH_MUSIC_PITCH_NORMAL;
						options.X = pos.x;
						options.Y = pos.y;
						options.Z = pos.z;
						StoreMusicStyleChunks();
						LH_MusicInfo* info = AudioSystem->LHMusicPlay(&options);
						if (info != NULL)
						{
							AudioSystem->LHMusicSet3DPosition(info, pos.x, pos.y, pos.z);
						}
						GGlobal::Global.debug.SetMessage(MUSIC_DEBUG_CATEGORY, "Music Playing=%s",
						                                 MusicTypes[type].Name);
						return true;
					}
				}
			}
		}
	}
	return false;
}

void GAudio::AlignmentMusicFinished()
{
	LastAlignMusicType = CurrentMusicType;
	AlignMusicRepeatCount = 0;
	CurrentMusicType = MUSIC_TYPE_UNSET;
}

bool32_t GAudio::ProcessAlignMusic()
{
	LH_MusicPlayOptions options;
	if (GGame::g_game->GetCamera() == NULL)
	{
		return false;
	}
	HelpSystem* helpSystem = GGame::g_game->help_system;
	if (helpSystem->WideScreen && helpSystem->GetWideScreenControl())
	{
		return false;
	}
	if (helpSystem->IsInWideScreenTransition())
	{
		return false;
	}
	if (!GGame::g_game->script->AlignmentMusic || GGame::g_game->data.GetGameTurn() <= ALIGN_MUSIC_START_TURN)
	{
		return false;
	}
	MUSIC_TYPE type = GetMusicType(GGame::g_game->GetCamera()->Pos);
	if (type == MUSIC_TYPE_NONE)
	{
		return false;
	}
	if (LastAlignMusicType == type && ++AlignMusicRepeatCount < ALIGN_MUSIC_MAX_REPEAT_TURNS)
	{
		return false;
	}
	LastAlignMusicType = MUSIC_TYPE_NONE;
	if (MusicBanks[type] == NULL)
	{
		return false;
	}
	if (CurrentMusicType != type)
	{
		StoreMusicStyleChunks();
		long group = MusicBanks[type]->LHBankGetMusicGroupId();
		options.Loop = true;
		options.Bank = MusicBanks[type];
		options.Volume = ALIGN_MUSIC_VOLUME;
		options.StartChunk = MusicStyleChunks[group - 1];
		options.FadeIn = true;
		options.Positional = false;
		options.Pitch = LH_MUSIC_PITCH_NORMAL;
		options.FinishedCallback = alignment_music_finished_callback;
		options.CallbackParam = group;
		options.StartInSecondHalf = options.StartChunk >= (long)AudioSystem->LHBankGetNumberOfSamples(options.Bank) / 2;
		AudioSystem->LHMusicPlay(&options);
		CurrentMusicType = type;
	}
	GGlobal::Global.debug.SetMessage(MUSIC_DEBUG_CATEGORY, "Music Playing=%s", MusicTypes[type].Name);
	return true;
}

bool32_t GAudio::ProcessCitadelMusic()
{
	static bool32_t samplesStopped = false;
	if (IsInsideCitadel())
	{
		if (!samplesStopped)
		{
			AudioSystem->LHSampleStopAll();
			samplesStopped = true;
		}
		LH_MusicPlayOptions options;
		MUSIC_TYPE type = (MUSIC_TYPE)(MUSIC_TYPE_CITADEL_EVIL +
		                               GetMusicAlignment(GAlignment::GetDiscreteAlignmentValue(
										   GGame::g_game->players[GGame::g_game->PlayerIndex].GetAlignmentValue())));
		if (MusicBanks[type] != NULL)
		{
			long group = MusicBanks[type]->LHBankGetMusicGroupId();
			options.Loop = true;
			options.StartChunk = MusicStyleChunks[group - 1];
			options.Bank = MusicBanks[type];
			options.Volume = LH_MUSIC_VOLUME_MAX;
			options.FadeIn = true;
			options.Positional = false;
			options.Pitch = LH_MUSIC_PITCH_NORMAL;
			StoreMusicStyleChunks();
			AudioSystem->LHMusicPlay(&options);
			GGlobal::Global.debug.SetMessage(MUSIC_DEBUG_CATEGORY, "Music Playing=%s", MusicTypes[type].Name);
			return true;
		}
		return false;
	}
	samplesStopped = false;
	return false;
}

MUSIC_TYPE GAudio::GetScriptMusicType(MUSIC_ALIGNMENT alignment)
{
	return ScriptMusicType;
}

bool32_t GAudio::ProcessScriptMusic()
{
	if (ScriptMusicType != MUSIC_TYPE_NONE)
	{
		if (ScriptMusicPlaying)
		{
			GGlobal::Global.debug.SetMessage(MUSIC_DEBUG_CATEGORY, "Music Playing=%s",
			                                 MusicTypes[ScriptMusicType].Name);
			return true;
		}
		LH_MusicPlayOptions options;
		float               value = Alignment;
		MUSIC_TYPE          type = GetScriptMusicType(GetMusicAlignment(GAlignment::GetDiscreteAlignmentValue(value)));
		if (MusicBanks[type] != NULL)
		{
			options.Loop = false;
			options.StartChunk = LH_MUSIC_FIRST_CHUNK;
			options.Bank = MusicBanks[type];
			options.Volume = LH_MUSIC_VOLUME_MAX;
			options.FadeIn = false;
			options.Positional = false;
			options.Pitch = LH_MUSIC_PITCH_NORMAL;
			options.FinishedCallback = script_music_finished_callback;
			options.CallbackParam = ScriptMusicType;
			options.MarkerCallback = script_music_marker_callback;
			StoreMusicStyleChunks();
			AudioSystem->LHMusicPlay(&options);
			ScriptMusicPlaying = true;
			GGlobal::Global.debug.SetMessage(MUSIC_DEBUG_CATEGORY, "Music Playing=%s",
			                                 MusicTypes[ScriptMusicType].Name);
			return true;
		}
		return false;
	}
	if (ScriptMusicPlaying)
	{
		ScriptMusicPlaying = false;
		AudioSystem->LHMusicStop(true);
		CurrentMusicType = MUSIC_TYPE_UNSET;
	}
	return false;
}

void GAudio::ProcessMusic()
{
	if (GGame::g_game->VideoPlayer == NULL)
	{
		if (!AudioSystem->LHMusicIsInstalled() || GGame::g_game->LandNumber == NO_MUSIC_LAND_NUMBER)
		{
			return;
		}
		if (!ProcessCitadelMusic())
		{
			if (ProcessScriptMusic())
			{
				CurrentMusicType = MUSIC_TYPE_UNSET;
				return;
			}
			if (!ProcessFightMusic() && !ProcessChantMusic() && !ProcessCreatureDanceMusic() && !ProcessThingMusic())
			{
				if (ProcessAlignMusic())
				{
					ScriptMusicPlaying = false;
					return;
				}
				StoreMusicStyleChunks();
				AudioSystem->LHMusicStop(true);
			}
		}
	}
	GGlobal::Global.debug.SetMessage(MUSIC_DEBUG_CATEGORY, "Music Playing=NONE");
	ScriptMusicPlaying = false;
	CurrentMusicType = MUSIC_TYPE_UNSET;
}

bool32_t GAudio::ProcessCreatureDanceMusic()
{
	float     nearestDistance = DANCE_MUSIC_DISTANCE;
	Creature* nearestCreature = NULL;
	Villager* nearestVillager;
	Dance*    nearestDance;
	Dance*    dance;
	for (LHLinkedNode<Creature*>* node = Creature::CreatureList.GetStart(); node != NULL; node = node->next.Get())
	{
		Creature* creature = node->payload;
		if (creature->mind->agenda.SubActionAgenda.IsValid() &&
		    creature->mind->agenda.SubActionAgenda
		            .SubActions[creature->mind->agenda.SubActionAgenda.GetSubActionIndex()]
		            .Action == CREATURE_SUB_STATE_ACTIONS_DANCE)
		{
			dance = creature->dance;
			if (dance != NULL)
			{
				Living* member = dance->FindFirstDanceMember(NULL);
				if (member != NULL)
				{
					Villager* villager = dynamic_cast<Villager*>(member);
					if (villager != NULL)
					{
						float distance = GUtils::GetDistanceInMetres(GGame::g_game->GetCamera()->Pos, creature->Pos);
						if (distance < nearestDistance)
						{
							nearestDistance = distance;
							nearestCreature = creature;
							nearestVillager = villager;
							nearestDance = dance;
						}
					}
				}
			}
		}
	}
	if (nearestCreature != NULL)
	{
		float cameraHeight =
			GGame::g_game->GetCamera()->Pos.Altitude() + LH3DIsland::GetAltitude(GGame::g_game->GetCamera()->Pos);
		if (fabsf(cameraHeight - LH3DIsland::GetAltitude(nearestCreature->Pos)) < DANCE_MUSIC_HEIGHT_RANGE)
		{
			MUSIC_TYPE type;
			if (nearestVillager != NULL)
			{
				unsigned long dancers = nearestDance->NumDancers;
				type = GetChantMusicType((TRIBE_TYPE)(nearestVillager->GetTribe() - GTribeInfo::Infos), dancers);
			}
			else
			{
				Town* town = Town::GetNearestTownToPos(dance->GetPos(), TRIBE_TYPE_NONE, ABODE_TYPE_ANY, MaxFloat);
				if (town != NULL)
				{
					TRIBE_TYPE tribe = town->tribe_type;
					type = GetChantMusicType(tribe, 1);
				}
				else
				{
					type = GetChantMusicType(TRIBE_TYPE_CELTIC, 1);
				}
			}
			if (MusicBanks[type] != NULL)
			{
				long                group = MusicBanks[type]->LHBankGetMusicGroupId();
				LH_MusicPlayOptions options;
				LHPoint             pos;
				GLandscape::ConvertMapCoordToLandscapePoint(nearestCreature->Pos, pos);
				options.Loop = true;
				options.Bank = MusicBanks[type];
				options.Volume = LH_MUSIC_VOLUME_MAX;
				options.StartChunk = MusicStyleChunks[group - 1];
				options.FadeIn = true;
				options.Positional = true;
				options.Pitch = LH_MUSIC_PITCH_NORMAL;
				options.X = pos.x;
				options.Y = pos.y;
				options.Z = pos.z;
				StoreMusicStyleChunks();
				LH_MusicInfo* info = AudioSystem->LHMusicPlay(&options);
				if (info != NULL)
				{
					AudioSystem->LHMusicSet3DPosition(info, pos.x, pos.y, pos.z);
				}
				GGlobal::Global.debug.SetMessage(MUSIC_DEBUG_CATEGORY, "Music Playing=%s", MusicTypes[type].Name);
				return true;
			}
		}
	}
	return false;
}

void GAudio::ResetMusicStyleChunks()
{
	for (unsigned long i = 0; i < AudioSystem->LHMusicGetTotalGroups(); i++)
	{
		MusicStyleChunks[i] = LH_MUSIC_FIRST_CHUNK;
	}
}

void GAudio::StoreMusicStyleChunks()
{
	if (AudioSystem->LHMusicIsActive())
	{
		for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
		{
			if (AudioSystem->MusicInfos[i].Status == LH_MUSIC_STATUS_PLAYING && AudioSystem->MusicInfos[i].GroupId > 0)
			{
				unsigned long group = AudioSystem->MusicInfos[i].GroupId - 1;
				if (group < AudioSystem->LHMusicGetTotalGroups())
				{
					MusicStyleChunks[group] = AudioSystem->MusicInfos[i].CurrentChunk + MUSIC_RESUME_CHUNK_OFFSET;
				}
			}
		}
	}
}

void GAudio::StartScriptMusic(MUSIC_TYPE type)
{
	ScriptMusicType = type;
	if (type != MUSIC_TYPE_NONE)
	{
		ScriptMusicPlaying = false;
	}
}

void GAudio::RegistrySetup()
{
	unsigned long volume;
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "AudioSampleMasterVolume", &volume) == LH_OK)
	{
		AudioSystem->LHSampleSetMasterVolume(volume);
	}
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "AudioMusicMasterVolume", &volume) == LH_OK)
	{
		AudioSystem->LHMusicSetMasterVolume(volume);
	}
}

void GAudio::RegistryShutdown()
{
	RegistrySetULong(BWSETUP_REGISTRY_KEY, "AudioSampleMasterVolume", AudioSystem->LHSampleGetMasterVolume());
	RegistrySetULong(BWSETUP_REGISTRY_KEY, "AudioMusicMasterVolume", AudioSystem->LHMusicGetMasterVolume());
}

bool32_t GAudio::IsInsideCitadel() const
{
	return GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL;
}

uint32_t GAudio::Save(GameOSFile& file)
{
	file.WriteSafe(ThingMusicList);
	file.WriteIt(ScriptMusicType);
	file.WriteIt(ScriptMusicPlaying);
	file.WritePtr(CurrentTown);
	file.WriteIt(Alignment);
	return true;
}

uint32_t GAudio::Load(GameOSFile& file)
{
	CurrentMusicType = MUSIC_TYPE_UNSET;
	LastAlignMusicType = MUSIC_TYPE_NONE;
	file.ReadSafe(ThingMusicList);
	file.ReadIt(ScriptMusicType);
	file.ReadIt(ScriptMusicPlaying);
	file.ReadPtr((GameThing**)&CurrentTown);
	file.ReadIt(Alignment);
	return true;
}

void GAudio::SampleSetMasterVolume(unsigned long volume)
{
	AudioSystem->LHSampleSetMasterVolume(volume);
}

LH_AudioBank* GAudio::BankRegister(char* filename, unsigned char mode)
{
	return AudioSystem->LHBankRegister(filename, mode);
}

void GAudio::BankRelease(LH_AudioBank* bank)
{
	AudioSystem->LHBankRelease(bank);
}

void GAudio::MusicSetMasterVolume(unsigned long volume)
{
	AudioSystem->LHMusicSetMasterVolume(volume);
}

unsigned long GAudio::SampleGetMasterVolume()
{
	return AudioSystem->LHSampleGetMasterVolume();
}

long GAudio::MusicGetMasterVolume()
{
	return AudioSystem->LHMusicGetMasterVolume();
}

LH_MusicInfo* GAudio::MusicPlay(LH_MusicPlayOptions* options)
{
	return AudioSystem->LHMusicPlay(options);
}

void GAudio::AtmosProcess(bool32_t active)
{
	AudioSystem->LHAtmosProcess(active);
}

bool32_t GAudio::MusicIsActive()
{
	return AudioSystem->LHMusicIsActive();
}

void GAudio::MusicSwitch(unsigned long on)
{
	AudioSystem->LHMusicSwitch(on);
}

void GAudio::Shutdown()
{
	AudioSystem->Shutdown();
}

void GAudio::GlobalSwitch(unsigned long on)
{
	AudioSystem->LHGlobalSwitch(on);
}

LH_SampleInfo* GAudio::SampleSetPitch(LH_AudioBank* bank, unsigned long object, unsigned long sample,
                                      unsigned long pitch)
{
	return AudioSystem->LHSampleSetPitch(bank, object, sample, pitch);
}

LH_SampleInfo* GAudio::SampleSet3DPosition(LH_AudioBank* bank, unsigned long object, unsigned long sample, float x,
                                           float y, float z, bool32_t relative)
{
	return AudioSystem->LHSampleSet3DPosition(bank, object, sample, x, y, z, relative);
}

LH_SampleInfo* GAudio::SampleSet3DPosition(LH_SampleInfo* info, float x, float y, float z, bool32_t relative)
{
	return AudioSystem->LHSampleSet3DPosition(info, x, y, z, relative);
}

unsigned int GAudio::RedbookGetHandle()
{
	return AudioSystem->LHRedbookGetHandle();
}

void GAudio::StopAllSamples()
{
	AudioSystem->LHSampleStopAll();
}
