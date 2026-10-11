#include "AudioTag.h"

#include "HelpDude.h"

void AudioTag::ApplyToDude(HelpDude* dude, int resolve_target, int play_sound)
{
	if (resolve_target)
	{
		HelpDude* second = NULL;
		HelpDude* target = NULL;
		switch (Target)
		{
		case AUDIO_TAG_TARGET_THIS:
			target = dude;
			break;
		case AUDIO_TAG_TARGET_OTHER:
			target = dude->OtherGuy;
			break;
		case AUDIO_TAG_TARGET_GOOD:
			target = dude;
			if (dude->IsEvil)
			{
				target = dude->OtherGuy;
			}
			break;
		case AUDIO_TAG_TARGET_EVIL:
			target = dude;
			if (!dude->IsEvil)
			{
				target = dude->OtherGuy;
			}
			break;
		case AUDIO_TAG_TARGET_BOTH:
			target = dude;
			second = dude->OtherGuy;
			break;
		}
		if (target)
		{
			ApplyToDude(target, false, true);
		}
		if (!second)
		{
			return;
		}
		play_sound = true;
		dude = second;
	}

	Index = Index % ANIM_LAST;
	if (dude)
	{
		switch (Command)
		{
		case AUDIO_TAG_COMMAND_EMOTION:
			dude->SetEmotion(Index, Value / AUDIO_TAG_EMOTION_PERCENT);
			break;
		case AUDIO_TAG_COMMAND_ANIM:
			if (play_sound)
			{
				dude->LipSyncAnimTime[Index] = 0.0f;
				dude->LipSyncAnimState[Index] = HELPDUDE_LIPSYNC_ONCE;
			}
			break;
		case AUDIO_TAG_COMMAND_ANIM_START:
			if (play_sound)
			{
				dude->LipSyncAnimTime[Index] = 0.0f;
				dude->LipSyncAnimState[Index] = HELPDUDE_LIPSYNC_LOOP;
			}
			break;
		case AUDIO_TAG_COMMAND_ANIM_RELEASE:
			if (dude->LipSyncAnimState[Index] == HELPDUDE_LIPSYNC_LOOP_ALT ||
			    dude->LipSyncAnimState[Index] == HELPDUDE_LIPSYNC_LOOP)
			{
				dude->LipSyncAnimState[Index] = HELPDUDE_LIPSYNC_FINISH;
			}
			break;
		case AUDIO_TAG_COMMAND_LOOK:
		case AUDIO_TAG_COMMAND_LOOK_START:
			dude->SavedLookMode = dude->LookMode;
			dude->LookMode = Index;
			break;
		case AUDIO_TAG_COMMAND_LOOK_RELEASE:
			dude->LookMode = dude->SavedLookMode;
			dude->SavedLookMode = HELPDUDE_LOOK_AUTO;
			break;
		}
	}
}
