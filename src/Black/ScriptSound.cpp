#include "WhiteColour.h"
#include "Script.h"

#ifdef VERSION_BW1W130
#include <windows.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys::TheSystem */
#endif

#include "Audio.h"
#include "CameraModeNew3.h"
#include "Game.h"
#include "GloveHelpTextSamples.h"
#include "Global.h"
#include "HelpText.h"
#ifdef VERSION_BW1WCI
#include "HelpSystem.h"
#endif
#include "HelpTextSamples.h"
#include "SoundConfirmation.h"
#include "SoundTag.h"

#define SCRIPT_ANGLE_SOUND_RANGE 7.0f
#define SCRIPT_PITCH_SOUND_RANGE 5.0f

void GScript::PlaySoundEffect()
{
	bool32_t positional = g_scriptDLL->ULONG_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	AUDIO_SFX_BANK_TYPE  bank = (AUDIO_SFX_BANK_TYPE)g_scriptDLL->ULONG_POP();
	uint32_t             sample = g_scriptDLL->ULONG_POP();
	LH_SamplePlayOptions options;
	options.SampleNumber = sample;
	options.Bank = GGlobal::Global.audio->GetBank(bank);
	options.AttachedObject = (Base*)sample;
	options.Flags = LH_SAMPLE_FLAG_KEEP_DATA;
	options.XPos = pos.x;
	options.YPos = pos.y;
	options.ZPos = pos.z;
	options.Positional = positional;
	options.Follow = false;
	GGlobal::Global.audio->PlaySoundEffect(&options);
}

void GScript::SaySoundEffect(unsigned long text, bool32_t positional, bool32_t extra, LHPoint* pos)
{
	if (text >= HELP_TEXT_LAST)
	{
		text = 0;
	}
#ifdef VERSION_BW1W130
	AUDIO_SFX_BANK_TYPE bank;
	uint32_t            sample;
	if (LHSys::TheSystem.GloveActive)
	{
		bank = GloveHelpTextSamples[text].Bank;
		sample = GloveHelpTextSamples[text].Sample;
	}
	else
	{
		bank = HelpTextSamples[text].Bank;
		sample = HelpTextSamples[text].Sample;
	}
	if (sample == 0)
	{
		return;
	}
	if (LHSys::TheSystem.GloveActive)
	{
		if (GloveHelpTextSamples[text].Text != text)
		{
			bank = AUDIO_SFX_BANK_TYPE_NONE;
		}
	}
	else if (HelpTextSamples[text].Text != text)
	{
		bank = AUDIO_SFX_BANK_TYPE_NONE;
	}
#else
	uint32_t            sample = HelpTextSamples[text].Sample;
	AUDIO_SFX_BANK_TYPE bank = HelpTextSamples[text].Bank;
	if (sample == 0)
	{
		return;
	}
	if (HelpTextSamples[text].Text != text)
	{
		bank = AUDIO_SFX_BANK_TYPE_NONE;
	}
#endif
	LH_SamplePlayOptions options;
	options.SampleNumber = sample;
	options.Bank = GGlobal::Global.audio->GetBank(bank);
	options.AttachedObject = (Base*)(extra ? HELP_SPEECH_OBJECT_EXTRA : HELP_SPEECH_OBJECT_TEXT);
	options.Flags = LH_SAMPLE_FLAG_KEEP_DATA;
	options.Positional = positional;
	if (pos != NULL && positional)
	{
		options.XPos = pos->x;
		options.YPos = pos->y;
		options.ZPos = pos->z;
	}
	options.Follow = false;
	GGlobal::Global.audio->PlaySoundEffect(&options);
}

void GScript::SaySoundEffect()
{
	bool32_t positional = g_scriptDLL->ULONG_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	uint32_t text = g_scriptDLL->ULONG_POP();
	bool32_t extra = g_scriptDLL->ULONG_POP();
	SaySoundEffect(text, positional, extra, &pos);
}

void GScript::StopSoundEffect()
{
	AUDIO_SFX_BANK_TYPE bank = (AUDIO_SFX_BANK_TYPE)g_scriptDLL->ULONG_POP();
	uint32_t            sample = g_scriptDLL->ULONG_POP();
	bool32_t            say = g_scriptDLL->ULONG_POP();
	if (say)
	{
		HelpTextInfo* info = HelpTextDataBase::HelpTextDatabase.GetData(sample);
#ifdef VERSION_BW1W130
		AUDIO_SFX_BANK_TYPE speechBank;
		uint32_t            speechSample;
		if (LHSys::TheSystem.GloveActive)
		{
			speechBank = GloveHelpTextSamples[sample].Bank;
			speechSample = GloveHelpTextSamples[sample].Sample;
		}
		else
		{
			speechBank = HelpTextSamples[sample].Bank;
			speechSample = HelpTextSamples[sample].Sample;
		}
#else
		AUDIO_SFX_BANK_TYPE speechBank = HelpTextSamples[sample].Bank;
		uint32_t            speechSample = HelpTextSamples[sample].Sample;
#endif
		HELP_SPEECH_OBJECT object;
		if (info->Narrator != HELP_TEXT_NARRATOR_GOOD_SPIRIT)
		{
			GGlobal::Global.audio->StopPlayingSoundEffect(speechSample, HELP_SPEECH_OBJECT_EXTRA_2, speechBank);
			object = HELP_SPEECH_OBJECT_EXTRA;
		}
		else
		{
			object = HELP_SPEECH_OBJECT_HELP_DUDE;
		}
		GGlobal::Global.audio->StopPlayingSoundEffect(speechSample, object, speechBank);
	}
	else
	{
		GGlobal::Global.audio->StopPlayingSoundEffect(sample, sample, bank);
	}
}

void GScript::StartMusic()
{
#ifdef VERSION_BW1WCI
	float start = g_scriptDLL->FLOAT_POP();
#endif
	MUSIC_TYPE type = (MUSIC_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(type >= MUSIC_TYPE_NONE && type <= MUSIC_TYPE_LAST, "Jonty - Strange Music Type in script");
	GGame::g_game->script->LastMusicLine = 0;
	GGame::g_game->script->LastMusicWord = 0;
#ifdef VERSION_BW1WCI
	if (start == 0.0f)
	{
		GGlobal::Global.audio->StartScriptMusic(type);
	}
	else
	{
		GGlobal::Global.audio->StartScriptMusic(type, (unsigned long)start);
	}
#else
	GGlobal::Global.audio->StartScriptMusic(type);
#endif
}

void GScript::StopMusic()
{
	GGlobal::Global.audio->StartScriptMusic(MUSIC_TYPE_NONE);
}

void GScript::IsMusicPlayed()
{
	MUSIC_TYPE type = (MUSIC_TYPE)g_scriptDLL->ULONG_POP();
	if (GGlobal::Global.audio->IsInstalled())
	{
		g_scriptDLL->PUSH((void*)(GGlobal::Global.audio->ScriptMusicType != type), VMType_BOOLEAN);
	}
	else
	{
		TextRead();
	}
}

void GScript::AttachMusic()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	MUSIC_TYPE        type = (MUSIC_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	SCRIPT_ASSERT(type > MUSIC_TYPE_NONE && type < MUSIC_TYPE_LAST, "Jonty - Strange Music Type in script");
	if (thing != NULL)
	{
		GGlobal::Global.audio->AddThingMusic(type, thing);
	}
}

void GScript::DetachMusic()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (thing != NULL)
	{
		GGlobal::Global.audio->RemoveThingMusic(thing);
	}
}

void GScript::MoveMusicThing()
{
	GameThingWithPos* to = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* from = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(to != NULL && from != NULL, "Thing no longer valid");
	if (to != NULL && from != NULL)
	{
		GGlobal::Global.audio->SwapThingMusic(from, to);
	}
}

void GScript::SetMusicEnable()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          enable = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (thing != NULL)
	{
		GGlobal::Global.audio->EnableMusicThing(thing, enable);
	}
}

void GScript::GetMusicObjectDistance()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (thing != NULL)
	{
		g_scriptDLL->FLOAT_PUSH(GGlobal::Global.audio->GetPlayDistance(thing));
	}
	else
	{
		g_scriptDLL->FLOAT_PUSH(0.0f);
	}
}

void GScript::GetMusicEnumDistance()
{
	MUSIC_TYPE type = (MUSIC_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(type > MUSIC_TYPE_NONE && type < MUSIC_TYPE_LAST, "Invalid music man!");
	if (type <= MUSIC_TYPE_NONE || type >= MUSIC_TYPE_LAST)
	{
		g_scriptDLL->FLOAT_PUSH(0.0f);
	}
	g_scriptDLL->FLOAT_PUSH(GGlobal::Global.audio->GetPlayDistance(type));
}

void GScript::SetMusicPlayPosition()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (thing != NULL)
	{
		GGlobal::Global.audio->SetPlayPosition(thing, MapCoords(pos));
	}
}

void GScript::RestartMusic()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (thing != NULL)
	{
		GGlobal::Global.audio->RestartMusicThing(thing);
	}
}

void GScript::MusicPlayed()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (thing != NULL)
	{
		bool32_t finished = GGlobal::Global.audio->IsMusicThingFinished(thing);
		g_scriptDLL->PUSH((void*)finished, VMType_BOOLEAN);
	}
	else
	{
		g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
	}
}

void GScript::StartAngleSound()
{
	if (g_scriptDLL->ULONG_POP())
	{
		CameraModeNew3::StrafeSpeedX = 0.0f;
		GConfirmation::Start(&CameraModeNew3::StrafeSpeedX, SCRIPT_ANGLE_SOUND_RANGE, 1);
	}
	else
	{
		GConfirmation::Stop();
	}
}

void GScript::StartPitchSound()
{
	if (g_scriptDLL->ULONG_POP())
	{
		CameraModeNew3::StrafeSpeedZ = 0.0f;
		GConfirmation::Start(&CameraModeNew3::StrafeSpeedZ, SCRIPT_PITCH_SOUND_RANGE, 1);
	}
	else
	{
		GConfirmation::Stop();
	}
}

void GScript::SetPlayCreatureSounds()
{
	GGame::g_game->script->PlayCreatureSounds = g_scriptDLL->ULONG_POP();
}

void GScript::IsLastMusicLine()
{
	float line = g_scriptDLL->FLOAT_POP();
	if (GGlobal::Global.audio->IsInstalled())
	{
		g_scriptDLL->PUSH((void*)(GGame::g_game->script->LastMusicLine >= (uint32_t)line), VMType_BOOLEAN);
	}
	else
	{
		TextRead();
	}
}

void GScript::SetGameSound()
{
	if (!g_scriptDLL->ULONG_POP())
	{
		GGlobal::Global.audio->StopAllSamples();
		GGame::g_game->script->GameSoundDisabled = true;
	}
	else
	{
		GGame::g_game->script->GameSoundDisabled = false;
	}
}

void GScript::SoundExists()
{
	bool32_t exists = GGlobal::Global.audio->IsInstalled();
	g_scriptDLL->PUSH((void*)exists, VMType_BOOLEAN);
}

void GScript::SetAlignmentMusic()
{
	GGame::g_game->script->AlignmentMusic = g_scriptDLL->ULONG_POP();
}

void GScript::AttachSoundTag()
{
	GameThingWithPos*   thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	AUDIO_SFX_BANK_TYPE bank = (AUDIO_SFX_BANK_TYPE)g_scriptDLL->ULONG_POP();
	uint32_t            sample = g_scriptDLL->ULONG_POP();
	bool32_t            positional = g_scriptDLL->ULONG_POP();
	if (thing != NULL)
	{
		SoundTag::Create(thing, sample, positional, LH_SAMPLE_PLAY_TYPE_ONCE, 0, false, positional, bank, 0);
	}
}

void GScript::DetachSoundTag()
{
	GameThingWithPos*   thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	AUDIO_SFX_BANK_TYPE bank = (AUDIO_SFX_BANK_TYPE)g_scriptDLL->ULONG_POP();
	uint32_t            sample = g_scriptDLL->ULONG_POP();
	if (thing != NULL)
	{
		SoundTag::Remove(thing, sample, bank);
	}
}

void GScript::IsSoundPlaying()
{
	AUDIO_SFX_BANK_TYPE bank = (AUDIO_SFX_BANK_TYPE)g_scriptDLL->ULONG_POP();
	uint32_t            sample = g_scriptDLL->ULONG_POP();
	bool32_t            playing = GGlobal::Global.audio->IsSamplePlaying(sample, sample, bank);
	g_scriptDLL->PUSH((void*)playing, VMType_BOOLEAN);
}

void GScript::SaySoundEffectPlaying()
{
	uint32_t text = g_scriptDLL->ULONG_POP();
	bool32_t extra = g_scriptDLL->ULONG_POP();
	bool32_t playing = false;
	if (text >= HELP_TEXT_LAST)
	{
		text = 0;
	}
#ifdef VERSION_BW1W130
	AUDIO_SFX_BANK_TYPE bank;
	uint32_t            sample;
	if (LHSys::TheSystem.GloveActive)
	{
		bank = GloveHelpTextSamples[text].Bank;
		sample = GloveHelpTextSamples[text].Sample;
	}
	else
	{
		bank = HelpTextSamples[text].Bank;
		sample = HelpTextSamples[text].Sample;
	}
#else
	AUDIO_SFX_BANK_TYPE bank = HelpTextSamples[text].Bank;
	uint32_t            sample = HelpTextSamples[text].Sample;
#endif
	if (sample != 0)
	{
		playing = GGlobal::Global.audio->IsSamplePlaying(extra ? HELP_SPEECH_OBJECT_EXTRA : HELP_SPEECH_OBJECT_TEXT,
		                                                 sample, bank);
	}
	g_scriptDLL->PUSH((void*)playing, VMType_BOOLEAN);
}

#ifdef VERSION_BW1WCI
void GScript::StopDialogueSound()
{
	GGame::g_game->help_system->ClearHelpTextSoundAndText();
}

void GScript::SetVillagerSound()
{
	GGame::g_game->script->PlayVillagerSounds = g_scriptDLL->ULONG_POP();
}
#endif
