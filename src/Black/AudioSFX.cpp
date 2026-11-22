#include <Lionhead/LH3DLib/development/LH3DStorm.h> /* For LH3DStorm::g_sheetcallback */
#include <Lionhead/LH3DLib/development/LH3DTech.h>  /* For LH3DTech::g_camera */
#include <Lionhead/LHAudio/ver7.0/LH_AudioBank.h>   /* For LH_BANK_MODE_HEAP */
#include <Lionhead/LHAudio/ver7.0/LH_AudioSystem.h> /* For class LH_AudioSystem */
#include <Lionhead/LHAudio/ver7.0/LH_SampleInfo.h>  /* For struct LH_SampleInfo */

#include "Audio.h"
#include "Camera.h"
#include "ColourConstants.h"
#include "Game.h"
#include "GameThing.h"
#include "Global.h"
#include "HelpSystem.h"
#include "Interface.h"
#include "Script.h"
#include "SoundTag.h"

#define FIRST_THUNDER_SAMPLE 2
#define NUM_THUNDER_SAMPLES  11
#define THUNDER_DELAY        1

static char* SFXBankFileNames[AUDIO_SFX_BANK_TYPE_LAST] = {
	NULL,                                 //
	"audio/sfx/game/ingame.sad",          //
	"audio/sfx/game/editor.sad",          //
	"audio/sfx/game/spells.sad",          //
	"audio/sfx/creature/creature.sad",    //
	"audio/sfx/script/scriptsfx.sad",     //
	"audio/dialogue/HelpSprites.sad",     //
	"audio/dialogue/Villagers.sad",       //
	"audio/dialogue/VillagersBanter.sad", //
	"audio/dialogue/SpellDialogue.sad",   //
	"audio/dialogue/Guidance.sad",        //
#ifdef VERSION_BW1W130
	"audio/dialogue/GloveDialogue.sad", //
#endif
#ifdef VERSION_BW1WCI
	"audio/dialogue/CI_Villagers.sad",     //
	"audio/dialogue/CI_HelpSprites.sad",   //
	"audio/dialogue/CI_SpellDialogue.sad", //
#endif
};

void GAudio::InitSFX()
{
	memset(AudioBanks, 0, sizeof(AudioBanks));
	LoadSFXBanks();
	LH3DStorm::g_sheetcallback = SheetLightningCallback;
}

void __stdcall GAudio::SheetLightningCallback(LH3DStorm* storm, LHPoint& pos, float radius)
{
	unsigned long sample = GetTickCount() % NUM_THUNDER_SAMPLES + FIRST_THUNDER_SAMPLE;
	SoundTag::Create(pos, sample, false, LH_SAMPLE_PLAY_TYPE_ONCE, 0, false, true, ATMOS_TYPE_RAIN, THUNDER_DELAY);
}

// BW1W120 00429d20 BW1M119 inlined
bool IsSoundObjectUnavailable(Base* object);

bool IsSoundObjectUnavailable(Base* object)
{
	if (object != NULL && object != LH_SAMPLE_OBJECT_GONE)
	{
		GameThing* thing = dynamic_cast<GameThing*>(object);
		if (thing != NULL && !thing->IsAvailable())
		{
			return true;
		}
	}
	return false;
}

LH_SampleInfo* GAudio::PlaySoundEffect(Base* object, unsigned long sample, unsigned long play_type,
                                       unsigned long loop_count, bool32_t doppler, bool32_t positional,
                                       AUDIO_SFX_BANK_TYPE bank_type)
{
	return PlaySoundEffect(object, sample, play_type, loop_count, doppler, positional, GetBank(bank_type));
}

LH_SampleInfo* GAudio::PlaySoundEffect(Base* object, unsigned long sample, unsigned long play_type,
                                       unsigned long loop_count, bool32_t doppler, bool32_t positional,
                                       LH_AudioBank* bank)
{
	if (sample != 0)
	{
		LHPoint pos;
		if (positional)
		{
			if (IsSoundObjectUnavailable(object) || object == NULL)
			{
				return NULL;
			}
			object->Get3DSoundPos(&pos);
		}
		else
		{
			pos.x = pos.y = pos.z = 0.0f;
		}
		return PlaySoundEffect(object, pos, sample, play_type, loop_count, doppler, positional, bank);
	}
	return NULL;
}

LH_SampleInfo* GAudio::PlaySoundEffect(LH_SamplePlayOptions* options)
{
	if (GGame::g_game == NULL || GGame::g_game->help_system == NULL)
	{
		return NULL;
	}
	if (options->SampleNumber && options->Positional)
	{
		LHPoint pos;
		pos.x = options->XPos + options->XOffset;
		pos.y = options->YPos + options->YOffset;
		pos.z = options->ZPos + options->ZOffset;
		float distanceSq = GGame::g_game->GetCamera()->GetDistanceSq(pos);
		if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
		{
			distanceSq = LH3DTech::g_camera.pos.GetDistanceSq(pos);
		}
		float maxDistance = GGlobal::Global.audio->GetGSFXSampleMaxDistance(options->SampleNumber, options->Bank);
		if (maxDistance == 0.0f)
		{
			maxDistance = options->MaxDistance;
		}
		if (distanceSq > maxDistance * maxDistance)
		{
			return NULL;
		}
	}
	uint16_t condition = (uint16_t)AudioSystem->LHSampleGetUserParam(options->Bank, options->SampleNumber);
	INTERFACE_ACTION_STATE state = GGame::g_game->MyInterface()->ActionState;
	if (GGame::g_game->help_system->IsInScriptWideScreen() && condition == SFX_PLAY_CONDITION_NOT_IN_WIDESCREEN)
	{
		return NULL;
	}
	if (IsInsideCitadel() && condition != SFX_PLAY_CONDITION_IN_CITADEL)
	{
		return NULL;
	}
	if (GGame::g_game->script->GameSoundDisabled && options->Bank != AudioBanks[AUDIO_SFX_BANK_TYPE_VILLAGERS] &&
#ifdef VERSION_BW1WCI
	    options->Bank != AudioBanks[AUDIO_SFX_BANK_TYPE_CI_VILLAGERS] &&
	    options->Bank != AudioBanks[AUDIO_SFX_BANK_TYPE_HELP_SPRITES] &&
	    options->Bank != AudioBanks[AUDIO_SFX_BANK_TYPE_CI_HELP_SPRITES])
#else
	    options->Bank != AudioBanks[AUDIO_SFX_BANK_TYPE_HELP_SPRITES])
#endif
	{
		return NULL;
	}
	if ((state == INTERFACE_ACTION_STATE_FIGHTING || state == INTERFACE_ACTION_STATE_FIGHT_APPLY ||
	     state == INTERFACE_ACTION_STATE_FIGHT_SELECT) &&
	    condition == SFX_PLAY_CONDITION_NOT_IN_FIGHT)
	{
		return NULL;
	}
	if (options->Positional == true && options->Follow == true && IsSoundObjectUnavailable(options->AttachedObject))
	{
		return NULL;
	}
	AudioSystem->LHSamplePlay(options);
	return NULL;
}

LH_SampleInfo* GAudio::PlaySoundEffect(Base* object, const LHPoint& pos, unsigned long sample, unsigned long play_type,
                                       unsigned long loop_count, bool32_t doppler, bool32_t positional,
                                       AUDIO_SFX_BANK_TYPE bank_type)
{
	return PlaySoundEffect(object, pos, sample, play_type, loop_count, doppler, positional, GetBank(bank_type));
}

LH_SampleInfo* GAudio::PlaySoundEffect(Base* object, const LHPoint& pos, unsigned long sample, unsigned long play_type,
                                       unsigned long loop_count, bool32_t doppler, bool32_t positional,
                                       LH_AudioBank* bank)
{
	if (sample != 0)
	{
		SamplePlayOptions.Bank = bank;
		SamplePlayOptions.SampleNumber = sample;
		SamplePlayOptions.AttachedObject = object;
		SamplePlayOptions.Doppler = doppler;
		SamplePlayOptions.Positional = positional;
		SamplePlayOptions.Follow = positional;
		SamplePlayOptions.XPos = pos.x;
		SamplePlayOptions.YPos = pos.y;
		SamplePlayOptions.ZPos = pos.z;
		SamplePlayOptions.XOffset = 0.0f;
		SamplePlayOptions.YOffset = 0.0f;
		SamplePlayOptions.ZOffset = 0.0f;
		SamplePlayOptions.LoopCount = loop_count;
		SamplePlayOptions.PlayType = (LH_SAMPLE_PLAY_TYPE)play_type;
		if (!SamplePlayOptions.Positional || !SamplePlayOptions.Follow || !IsSoundObjectUnavailable(object))
		{
			return PlaySoundEffect(&SamplePlayOptions);
		}
	}
	return NULL;
}

LH_SampleInfo* GAudio::PlaySoundEffect(Base* object, const LHPoint& pos, const LHPoint& offset, unsigned long sample,
                                       bool follow, unsigned long play_type, unsigned long loop_count, bool32_t doppler,
                                       bool32_t positional, LH_AudioBank* bank)
{
	if (sample != 0)
	{
		SamplePlayOptions.Bank = bank;
		SamplePlayOptions.SampleNumber = sample;
		SamplePlayOptions.AttachedObject = object;
		SamplePlayOptions.Doppler = doppler;
		SamplePlayOptions.Positional = positional;
		SamplePlayOptions.XPos = pos.x;
		SamplePlayOptions.YPos = pos.y;
		SamplePlayOptions.ZPos = pos.z;
		SamplePlayOptions.XOffset = offset.x;
		SamplePlayOptions.YOffset = offset.y;
		SamplePlayOptions.ZOffset = offset.z;
		SamplePlayOptions.LoopCount = loop_count;
		SamplePlayOptions.PlayType = (LH_SAMPLE_PLAY_TYPE)play_type;
		SamplePlayOptions.Follow = follow;
		if (!positional || !follow || !IsSoundObjectUnavailable(object))
		{
			return PlaySoundEffect(&SamplePlayOptions);
		}
	}
	return NULL;
}

LH_SampleInfo* GAudio::GetSoundEffectInfo(Base* object, unsigned long sample, LH_AudioBank* bank) const
{
	return AudioSystem->LHSampleGetInfo(bank, (unsigned long)object, sample);
}

#ifndef VERSION_BW1W100
LH_SampleInfo* GAudio::GetSoundEffectInfo(Base* object, unsigned long sample, AUDIO_SFX_BANK_TYPE type) const
{
	return GetSoundEffectInfo(object, sample, GetBank(type));
}
#endif

void GAudio::StopPlayingSoundEffect(uint32_t sample, uint32_t object, AUDIO_SFX_BANK_TYPE type) const
{
	AudioSystem->LHSampleStop(AudioBanks[type], object, sample);
}

void GAudio::StopPlayingSoundEffect(Base* object, unsigned long sample, AUDIO_SFX_BANK_TYPE type) const
{
	StopPlayingSoundEffect(sample, (unsigned long)object, type);
}

#ifndef VERSION_BW1W100
void GAudio::StopPlayingSoundEffect(LH_SampleInfo* info) const
{
	AudioSystem->LHSampleStop(info);
}
#endif

bool32_t GAudio::IsSamplePlaying(unsigned long object, unsigned long sample, AUDIO_SFX_BANK_TYPE type) const
{
	return AudioSystem->LHSampleIsPlaying(GetBank(type), object, sample);
}

bool32_t GAudio::IsSamplePlaying(Base* object, AUDIO_SFX_BANK_TYPE type) const
{
	return AudioSystem->LHSampleIsPlaying(GetBank(type), (unsigned long)object);
}

bool32_t GAudio::IsSamplePlaying(Base* object, unsigned long sample, LH_AudioBank* bank) const
{
	return AudioSystem->LHSampleIsPlaying(bank, (unsigned long)object, sample);
}

#ifndef VERSION_BW1W100
bool32_t GAudio::IsSamplePlaying(Base* object, unsigned long sample, AUDIO_SFX_BANK_TYPE type) const
{
	return IsSamplePlaying(object, sample, GetBank(type));
}
#endif

void GAudio::ReleaseLoopOnSoundEffect(Base* object, unsigned long sample, LH_AudioBank* bank) const
{
	AudioSystem->LHSampleReleaseLoop(bank, (unsigned long)object, sample);
}

void GAudio::ReleaseLoopOnSoundEffect(Base* object, uint32_t sample, AUDIO_SFX_BANK_TYPE type) const
{
	ReleaseLoopOnSoundEffect(object, sample, GetBank(type));
}

void GAudio::LoadSFXBanks()
{
	for (unsigned long i = 0; i < AUDIO_SFX_BANK_TYPE_LAST; i++)
	{
		LoadSFXBank((AUDIO_SFX_BANK_TYPE)i);
	}
}

void GAudio::ReleaseSFXBanks()
{
	for (unsigned long i = 0; i < AUDIO_SFX_BANK_TYPE_LAST; i++)
	{
		ReleaseSFXBank((AUDIO_SFX_BANK_TYPE)i);
	}
}

void GAudio::LoadSFXBank(AUDIO_SFX_BANK_TYPE type)
{
	if (SFXBankFileNames[type] != NULL && AudioBanks[type] == NULL)
	{
		AudioBanks[type] = AudioSystem->LHBankRegister(SFXBankFileNames[type], LH_BANK_MODE_HEAP);
	}
}

void GAudio::ReleaseSFXBank(AUDIO_SFX_BANK_TYPE type)
{
	if (SFXBankFileNames[type] != NULL && AudioBanks[type] != NULL)
	{
		AudioSystem->LHBankRelease(AudioBanks[type]);
		AudioBanks[type] = NULL;
	}
}

#ifndef VERSION_BW1W100
float GAudio::GetGSFXSampleMaxDistance(uint32_t sample, AUDIO_SFX_BANK_TYPE type) const
{
	return GetGSFXSampleMaxDistance(sample, GetBank(type));
}
#endif

float GAudio::GetGSFXSampleMaxDistance(uint32_t sample, LH_AudioBank* bank) const
{
	if (bank)
	{
		return AudioSystem->LHSampleGetMaxDistance(bank, sample);
	}
	return 0.0f;
}

bool32_t GAudio::IsSampleLooped(Base* object, unsigned long sample, LH_AudioBank* bank) const
{
	LH_SampleInfo* info = GetSoundEffectInfo(object, sample, bank);
	if (info != NULL && info->LoopCount != 0)
	{
		return true;
	}
	return false;
}

#ifndef VERSION_BW1W100
bool32_t GAudio::IsSampleLooped(Base* object, unsigned long sample, AUDIO_SFX_BANK_TYPE type) const
{
	return IsSampleLooped(object, sample, GetBank(type));
}
#endif

LH_SampleInfo* GAudio::SamplePlayAnimEffect(void* object, float distance, long* sound, int action, LH_AudioBank* bank,
                                            bool32_t follow, float min_distance, float max_distance)
{
	if (action)
	{
		return AudioSystem->LHSamplePlayAnimEffect(object, distance, sound, action, follow, bank, 0.0f, 0.0f);
	}
	unsigned long          sample = AudioSystem->LHSampleGetAnimEffectNumber(sound, bank);
	INTERFACE_ACTION_STATE state = GGame::g_game->MyInterface()->ActionState;
	if (sample)
	{
		uint16_t condition = (uint16_t)AudioSystem->LHSampleGetUserParam(bank, sample);
		if (GGame::g_game->help_system->IsInScriptWideScreen() && condition == SFX_PLAY_CONDITION_NOT_IN_WIDESCREEN)
		{
			return NULL;
		}
		if (IsInsideCitadel() && condition != SFX_PLAY_CONDITION_IN_CITADEL)
		{
			return NULL;
		}
		if (GGame::g_game->script->GameSoundDisabled && bank != AudioBanks[AUDIO_SFX_BANK_TYPE_VILLAGERS] &&
		    bank != AudioBanks[AUDIO_SFX_BANK_TYPE_HELP_SPRITES])
		{
			return NULL;
		}
		if ((state == INTERFACE_ACTION_STATE_FIGHTING || state == INTERFACE_ACTION_STATE_FIGHT_APPLY ||
		     state == INTERFACE_ACTION_STATE_FIGHT_SELECT) &&
		    condition == SFX_PLAY_CONDITION_NOT_IN_FIGHT)
		{
			return NULL;
		}
		if (follow && IsSoundObjectUnavailable((Base*)object))
		{
			return NULL;
		}
		return AudioSystem->LHSamplePlayAnimEffect(object, distance, sample, follow, bank, min_distance, max_distance);
	}
	return NULL;
}

void GAudio::SetGameSFX(bool32_t enabled)
{
	if (!enabled)
	{
		AudioSystem->LHSampleStopAll();
	}
	AudioSystem->DisableSfx = !enabled;
}

#ifdef VERSION_BW1WCI
bool32_t GAudio::IsHelpSpritesSoundBank(AUDIO_SFX_BANK_TYPE type)
{
	if (type == AUDIO_SFX_BANK_TYPE_HELP_SPRITES || type == AUDIO_SFX_BANK_TYPE_CI_HELP_SPRITES)
	{
		return true;
	}
	return false;
}
#endif
