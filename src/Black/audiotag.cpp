#include "AudioTag.h"

#include "HelpDude.h"

void AudioTag::ApplyToDude(HelpDude* dude, bool32_t resolve_target, bool32_t start_animation)
{
	if (resolve_target)
	{
		HelpDude* target = NULL;
		HelpDude* second = NULL;
		switch (Target)
		{
		case AUDIO_TAG_TARGET_THIS:
			target = dude;
			break;
		case AUDIO_TAG_TARGET_OTHER:
			target = dude->OtherGuy;
			break;
		case AUDIO_TAG_TARGET_GOOD:
			target = dude->IsEvil ? dude->OtherGuy : dude;
			break;
		case AUDIO_TAG_TARGET_EVIL:
			target = dude->IsEvil ? dude : dude->OtherGuy;
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
		if (second)
		{
			ApplyToDude(second, false, true);
		}
	}
	else
	{
		Index = Index % ANIM_LAST;
		if (dude)
		{
			switch (Command)
			{
			case AUDIO_TAG_COMMAND_EMOTION:
				dude->SetEmotion(Index, Value / AUDIO_TAG_EMOTION_PERCENT);
				break;
			case AUDIO_TAG_COMMAND_ANIM:
				if (start_animation)
				{
					dude->LipSyncAnimTime[Index] = 0.0f;
					dude->LipSyncAnimState[Index] = HELPDUDE_LIPSYNC_ONCE;
				}
				break;
			case AUDIO_TAG_COMMAND_ANIM_START:
				if (start_animation)
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
}
