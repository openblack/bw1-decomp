#include "AudioTag.h"

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include <string> /* For the std::ctype<unsigned short>::id guard */
#endif
#include <windows.h>
#include <mmsystem.h>

#include "Audio.h"
#include "HelpDude.h"
#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For NEW */
#include <chlasm/CreatureEnum.h>

#define AUDIO_TAG_GROW_COUNT    8
#define AUDIO_TAG_DEFAULT_VALUE 100

static char s_TextBuffer[4096] = {0};
static char s_NameBuffer[256] = {0};
static char s_MessageBuffer[256] = {0};
static char s_LineBuffer[4096] = {0};

int AudioTag::ErrorCount = 0;

#if !defined(VERSION_BW1W100)
void AudioTag::ParseText(char* text)
{
	for (unsigned i = 0; i < strlen(text); i++)
	{
		if (text[i] == '[')
		{
			strcpy(s_LineBuffer, &text[i]);
			Parse(s_LineBuffer);
		}
	}
}
#endif

char* AudioTag::Parse(char* text)
{
	bool32_t found;
	for (unsigned c = 0; c < strlen(text); c++)
	{
		if (text[c] == ';' || text[c] == '/')
		{
			text[c] = 0;
		}
	}
	while (*text && iswspace(*text))
	{
		text++;
	}
	while (*text && iswspace(text[strlen(text) - 1]))
	{
		text[strlen(text) - 1] = 0;
	}
	if (*text == '[')
	{
		text++;
		char* end = text;
		while (*end && *end != ']')
		{
			end++;
		}
		if (*end == ']')
		{
			*end = 0;
		}
		else
		{
			ErrorCount++;
		}
		while (*text && iswspace(*text))
		{
			text++;
		}
		while (*text && iswspace(text[strlen(text) - 1]))
		{
			text[strlen(text) - 1] = 0;
		}
	}
	Target = AUDIO_TAG_TARGET_THIS;
	switch (toupper(*text))
	{
	case 'T':
		Target = AUDIO_TAG_TARGET_THIS;
		break;
	case 'O':
	case '!':
		Target = AUDIO_TAG_TARGET_OTHER;
		break;
	case 'G':
		Target = AUDIO_TAG_TARGET_GOOD;
		break;
	case 'E':
		Target = AUDIO_TAG_TARGET_EVIL;
		break;
	case 'B':
	case '*':
		Target = AUDIO_TAG_TARGET_BOTH;
		break;
	default:
		sprintf(s_MessageBuffer, "unrecognised talker in audio tag [%s]", text);
		ErrorCount++;
		break;
	}
	text++;
	while (*text && iswspace(*text))
	{
		text++;
	}
	Command = AUDIO_TAG_COMMAND_NONE;
	switch (toupper(*text))
	{
	case 'E':
		Command = AUDIO_TAG_COMMAND_EMOTION;
		break;
	case 'A':
		if (toupper(text[1]) == 'S')
		{
			text++;
			Command = AUDIO_TAG_COMMAND_ANIM_START;
		}
		else if (toupper(text[1]) == 'R')
		{
			text++;
			Command = AUDIO_TAG_COMMAND_ANIM_RELEASE;
		}
		else
		{
			Command = AUDIO_TAG_COMMAND_ANIM;
		}
		break;
	case 'R':
		Command = AUDIO_TAG_COMMAND_ANIM_RELEASE;
		break;
	case 'L':
		if (toupper(text[1]) == 'S')
		{
			text++;
			Command = AUDIO_TAG_COMMAND_LOOK_START;
		}
		else if (toupper(text[1]) == 'R')
		{
			text++;
			Command = AUDIO_TAG_COMMAND_LOOK_RELEASE;
		}
		else
		{
			Command = AUDIO_TAG_COMMAND_LOOK;
		}
		break;
	default:
		sprintf(s_MessageBuffer, "unrecognised tag type in audio tag [%s]", text);
		ErrorCount++;
		break;
	}
	text++;
	while (*text && iswspace(*text))
	{
		text++;
	}
	int count = sscanf(text, "%s ", s_NameBuffer, &Value);
	sprintf(s_MessageBuffer, "unrecognised name in audio tag [%s]", text);
	if (count == 0)
	{
		ErrorCount++;
	}
	text += strlen(s_NameBuffer);
	Value = AUDIO_TAG_DEFAULT_VALUE;
	char* digits = s_NameBuffer + strlen(s_NameBuffer);
	if (digits > s_NameBuffer)
	{
		digits--;
		while (digits > s_NameBuffer && isdigit(*digits))
		{
			digits--;
		}
	}
	digits++;
	if (isdigit(*digits))
	{
		Value = atoi(digits);
	}
	int   nameLength = 0;
	char* name = s_NameBuffer;
	while (isalpha(*name) && name < digits)
	{
		name++;
		nameLength++;
	}
	if (Value <= 0 || Value >= AUDIO_TAG_DEFAULT_VALUE)
	{
		Value = AUDIO_TAG_DEFAULT_VALUE;
	}
	Index = 0;
	found = false;
	switch (Command)
	{
	case AUDIO_TAG_COMMAND_LOOK:
	case AUDIO_TAG_COMMAND_LOOK_START:
	case AUDIO_TAG_COMMAND_LOOK_RELEASE:
		switch (toupper(s_NameBuffer[0]))
		{
		case AUDIO_TAG_LOOK_OTHER_GUY:
			Index = HELPDUDE_LOOK_OTHER_GUY;
			found = true;
			break;
		case AUDIO_TAG_LOOK_AHEAD:
			Index = HELPDUDE_LOOK_AHEAD;
			found = true;
			break;
		case AUDIO_TAG_LOOK_POINT:
			Index = HELPDUDE_LOOK_POINT;
			found = true;
			break;
		case AUDIO_TAG_LOOK_MOUSE_ALIAS:
		case AUDIO_TAG_LOOK_MOUSE:
			Index = HELPDUDE_LOOK_MOUSE;
			found = true;
			break;
		case AUDIO_TAG_LOOK_AUTO:
		case AUDIO_TAG_LOOK_AUTO_ALIAS:
			Index = HELPDUDE_LOOK_AUTO;
			found = true;
			break;
		}
		break;
	case AUDIO_TAG_COMMAND_ANIM:
	case AUDIO_TAG_COMMAND_ANIM_START:
	case AUDIO_TAG_COMMAND_ANIM_RELEASE: {
		int i;
		for (i = 0; i < ANIM_LAST; i++)
		{
			if (!_strnicmp(s_NameBuffer, HelpDude::AnimNames[i],
			               min(strlen(HelpDude::AnimNames[i]), (size_t)nameLength)))
			{
				Index = i;
				found = true;
				break;
			}
		}
		break;
	}
	case AUDIO_TAG_COMMAND_EMOTION: {
		int i;
		for (i = 0; i < HELPDUDE_EMOTIONS; i++)
		{
			if (!_strnicmp(s_NameBuffer, HelpDude::EmotionNames[i],
			               min(strlen(HelpDude::EmotionNames[i]), (size_t)nameLength)))
			{
				Index = i;
				found = true;
				break;
			}
		}
		break;
	}
	}
	if (!found)
	{
		ErrorCount++;
	}
	while (*text && iswspace(*text))
	{
		text++;
	}
	return text;
}

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

int AudioTag::BuildAudioTags(void* data, int size, AudioTag** tags)
{
	char         errorText[0x400];
	char         label[0x200];
	MMIOINFO     info;
	MMCKINFO     adtl;
	WAVEFORMATEX format;
	MMCKINFO     riff;
	MMCKINFO     chunk;
	unsigned     cueCount;
	AudioTag*    result = NULL;
	int          count = 0;
	*tags = NULL;
	if (data)
	{
		memset(&info, 0, sizeof(info));
		info.pchBuffer = (HPSTR)data;
		info.fccIOProc = FOURCC_MEM;
		info.cchBuffer = size;
		HMMIO file = mmioOpen(NULL, &info, 0);
		if (file)
		{
			riff.fccType = mmioFOURCC('W', 'A', 'V', 'E');
			if (mmioDescend(file, &riff, NULL, MMIO_FINDRIFF))
			{
				mmioClose(file, 0);
				sprintf(errorText, "Error in WAVE chunk");
				return 0;
			}
			chunk.ckid = mmioFOURCC('f', 'm', 't', ' ');
			if (mmioDescend(file, &chunk, &riff, MMIO_FINDCHUNK))
			{
				mmioClose(file, 0);
				sprintf(errorText, "Error in FMT chunk");
				return 0;
			}
			mmioRead(file, (HPSTR)&format, sizeof(WAVEFORMATEX));
			format.cbSize = 0;
			int sampleRate = format.nSamplesPerSec;
			mmioAscend(file, &chunk, 0);
			chunk.ckid = mmioFOURCC('c', 'u', 'e', ' ');
			if (!mmioDescend(file, &chunk, &riff, MMIO_FINDCHUNK))
			{
				struct CuePoint
				{
					DWORD  Name;
					DWORD  Position;
					FOURCC Chunk;
					DWORD  ChunkStart;
					DWORD  BlockStart;
					DWORD  SampleOffset;
				};
				mmioRead(file, (HPSTR)&cueCount, sizeof(cueCount));
				CuePoint* cues = (CuePoint*)malloc(cueCount * sizeof(CuePoint));
				int       capacity = cueCount;
				result = NEW(366) AudioTag[cueCount];
				mmioRead(file, (HPSTR)cues, cueCount * sizeof(CuePoint));
				mmioAscend(file, &chunk, 0);
				adtl.fccType = mmioFOURCC('a', 'd', 't', 'l');
				if (!mmioDescend(file, &adtl, NULL, MMIO_FINDLIST))
				{
					for (unsigned n = 1; n <= cueCount; n++)
					{
						chunk.ckid = mmioFOURCC('l', 'a', 'b', 'l');
						if (!mmioDescend(file, &chunk, &adtl, MMIO_FINDCHUNK))
						{
							unsigned cueId;
							char     ch;
							mmioRead(file, (HPSTR)&cueId, sizeof(cueId));
							sprintf(label, "");
							mmioRead(file, &ch, 1);
							sprintf(label, "%s%c", label, ch);
							while (ch)
							{
								mmioRead(file, &ch, 1);
								sprintf(label, "%s%c", label, ch);
							}
							CuePoint* cp = NULL;
							for (CuePoint* c = cues; c < cues + cueCount; c++)
							{
								if (c->Name == cueId)
								{
									cp = c;
									break;
								}
							}
							if (cp)
							{
								result[count].Time = (float)cp->Position / sampleRate;
								for (unsigned pos = 0; pos < strlen(label); pos++)
								{
									if (label[pos] == '[')
									{
										strcpy(s_TextBuffer, &label[pos]);
										char* text = s_TextBuffer;
										while (*text)
										{
											text = result[count].Parse(text);
											count++;
											if (count >= capacity)
											{
												int       newCapacity = capacity + AUDIO_TAG_GROW_COUNT;
												AudioTag* grown = NEW(433) AudioTag[newCapacity];
												memcpy(grown, result, capacity * sizeof(AudioTag));
												capacity = newCapacity;
												delete result;
												result = grown;
											}
										}
										pos += text - s_TextBuffer;
									}
								}
							}
							mmioAscend(file, &chunk, 0);
						}
					}
				}
			}
			mmioClose(file, 0);
		}
	}
	*tags = result;
	return count;
}
