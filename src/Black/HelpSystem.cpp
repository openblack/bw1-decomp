#include <float.h>   /* For FLT_MAX */
#include <math.h>    /* For fabs */
#include <string.h>  /* For memmove, memset */
#include <wchar.h>   /* For wcscat, wcscpy */
#include <windows.h> /* For HINSTANCE */

#include <Lionhead/LH3DLib/development/LH3DDivers.h>  /* For LH3DWideScreen */
#include <Lionhead/LH3DLib/development/LH3DTech.h>    /* For LH3DTech */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>           /* For LHSys */
#include <Lionhead/LHLib/ver5.0/LHTimer.inl>          /* For LHTimer */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h> /* For LHNetGetCurrentProfileUlong */

const float WideScreenTransitionOffTime = FLT_MAX;
const float MinTimeBeforeSkip = 0.5f;
char* const GoodDudeFile = ".\\Data\\HelpSprite\\MarkGood.Hd";
char* const EvilDudeFile = ".\\Data\\HelpSprite\\MarkEvil.Hd";

#include "HelpSystem.h"
#include "HelpTextSamples.h"
#include "GloveHelpTextSamples.h"

static int     NumKeyNames;
static wchar_t KeyNames[0x100];

bool32_t HelpSystem::TextTopToBottom;

#include "HelpSystemInfo.h"

#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"

const float TextRegionHeight = 0.38f / 3.0f;
const float TextRegionBorder = 0.025f;
const float MinTimeBeforeClick = 1.0f;

#include "Audio.h"
#include "Bubble.h"
#include "ControlMap.h"
#ifdef VERSION_BW1WCI
#include "Creature.h"
#include "Creature3D.h"
#endif
#include "DialogBoxBase.h"
#include "Game.h"
#include "GameInfo.h"
#include "GameOSFile.h"
#include "Global.h"
#include "HelpDudeControl.h"
#include "HelpProfile.h"
#include "HelpSpirit.h"
#include "HelpText.h"
#include "Interface.h"
#include "Script.h"
#include "ScriptDLL.h"
#include "camerahelp.h"

#define HELP_SYSTEM_ICON_FADE_TIME           0.3f
#define HELP_SYSTEM_ICON_ALPHA               0x80
#define HELP_SYSTEM_ICON_MARGIN              4
#define HELP_SYSTEM_GLOVE_ICON_MARGIN        24
#define HELP_SYSTEM_GLOVE_ICON_RAISE         24
#define HELP_SYSTEM_GLOVE_ACTION_ICON_MARGIN 30
#define HELP_SYSTEM_GLOVE_ACTION_ICON_RAISE  60
#define HELP_SYSTEM_ICONS_PER_REGION         3
#define HELP_SYSTEM_DUDE_FADE_SPEED          0.4f
#ifdef VERSION_BW1WCI
#define HELP_SYSTEM_SOUND_END_DELAY 200
#else
#define HELP_SYSTEM_SOUND_END_DELAY 450
#endif
#define HELP_SYSTEM_WIDESCREEN_RATIO     0.5625f
#define HELP_SYSTEM_KEY_NAME_LENGTH      0x10
#define HELP_SYSTEM_SECONDS_PER_MS       0.001f
#define HELP_SYSTEM_MS_PER_SECOND        1000.0f
#define HELP_SYSTEM_DEFAULT_READ_SPEED   0.5
#define HELP_SYSTEM_SLOW_READ_MULTIPLIER 3.0f
#define HELP_SYSTEM_SLOW_READ_SLOPE      4.0f
#define HELP_SYSTEM_FAST_READ_SLOPE      2.0
#define HELP_SYSTEM_FAST_READ_RANGE      0.8
#define HELP_SYSTEM_FAST_READ_MULTIPLIER 0.2

#ifdef VERSION_BW1WCI
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + 3)
#endif

HelpSystemInfo HelpSystemInfo::Info;

HelpSystem::HelpSystem()
{
	SetToZero();
}

void HelpSystem::SetToZero()
{
	EvilSpirit = NULL;
	GoodSpirit = NULL;
	SpeechBubble = NULL;
	Text = NULL;
	DudeControl = NULL;
	LastControlId = 0;
	ClearDialogueControl();
	ToolTipIcon = NULL;
	ContinueIcon = NULL;
	KeyIcon = NULL;
	TooltipLevel = TOOLTIP_LEVEL_ALL;
	SetImmersionLevel(IMMERSION_LEVEL_1);
	LastMessageSet = HELP_SYSTEM_MESSAGE_SET_NONE;
	LastMessageTime = 0;
	field_0x56c = 0;
	FOVDistance = 0.0f;
	LastObjectInHand = NULL;
	TextStartGameTurn = 0;
	TextStartTime = 0;
	WideScreenTime = 0.0f;
	SkipNextClick = false;
	Reset();
}

void HelpSystem::ClearTextDisplayed()
{
	if (ClickToContinue)
	{
		if (ContinueIcon != NULL)
		{
			delete ContinueIcon;
			ContinueIcon = NULL;
		}
	}
	if (KeyIcon != NULL)
	{
		delete KeyIcon;
		KeyIcon = NULL;
	}
	NoSkip = false;
	ClickToContinue = false;
	EndReadGameTurn = 0;
	EndReadTime = 0;
}

void HelpSystem::ClearAllText()
{
	if (Text != NULL)
	{
		Text->Reset(true);
	}
	for (int i = 0; i < HELP_SYSTEM_NUM_TEXTS_SHOWN; i++)
	{
		TextsShown[i] = 0;
	}
	ClearTextDisplayed();
}

void HelpSystem::Reset()
{
	FOVLocked = false;
	ClearAllText();
	FOVObject = NULL;
	for (int i = 0; i < HELP_SYSTEM_NUM_TEXTS_SHOWN; i++)
	{
		TextsShown[i] = 0;
	}
	memset(MessageSetSentTime, 0, sizeof(MessageSetSentTime));
	memset(MessageSetSentCount, 0, sizeof(MessageSetSentCount));
	memset(CategoryTriggerTime, 0, sizeof(CategoryTriggerTime));
	NumBanterSetsSent = 0;
	SetWideScreen(false, SCRIPT_TASK_NONE);
	SetWideScreenTrasitionOff();
	ResetIcons();
	NumHistoryEntries = 0;
	HistoryHead = 0;
	BubbleText = 0;
	BubbleObject = NULL;
#ifdef VERSION_BW1WCI
	ScriptTextThing = NULL;
#endif
	HelpSystemOn = true;
}

void HelpSystem::ResetIcons()
{
	if (ContinueIcon != NULL)
	{
		delete ContinueIcon;
		ContinueIcon = NULL;
	}
	if (ToolTipIcon != NULL)
	{
		delete ToolTipIcon;
		ToolTipIcon = NULL;
	}
	if (KeyIcon != NULL)
	{
		delete KeyIcon;
		KeyIcon = NULL;
	}
}

HelpSystem::~HelpSystem()
{
	if (GoodSpirit != NULL)
	{
		GoodSpirit->Game3dObject = NULL;
	}
	if (EvilSpirit != NULL)
	{
		EvilSpirit->Game3dObject = NULL;
	}
	if (GoodSpirit != NULL)
	{
		GoodSpirit->ToBeDeleted(false);
	}
	if (EvilSpirit != NULL)
	{
		EvilSpirit->ToBeDeleted(false);
	}
	if (Text != NULL)
	{
		Text->ToBeDeleted(false);
	}
	if (DudeControl != NULL)
	{
		DudeControl->Uninit();
		delete DudeControl;
	}
	DudeControl = NULL;
	GoodSpirit = NULL;
	EvilSpirit = NULL;
	Text = NULL;
	ResetIcons();
	if (SpeechBubble != NULL)
	{
		delete SpeechBubble;
	}
}

HelpSystem* HelpSystem::Create()
{
	HelpSystem* helpSystem = NEW(187) HelpSystem();
	if (helpSystem != NULL)
	{
		helpSystem->CallVirtualFunctionsForCreation();
		helpSystem->Init();
	}
	helpSystem->ReadRegistrySettings();
	return helpSystem;
}

bool32_t HelpSystem::IsHelpTextBeingDrawn()
{
	if (Text != NULL && Text->BeingDrawn)
	{
		return true;
	}
	return false;
}

int HelpSystem::GetWideScreenHeight() const
{
	return (int)((LH3DTech::g_info_transform.resolution.y -
	              LH3DTech::g_info_transform.resolution.x * HELP_SYSTEM_WIDESCREEN_RATIO) *
	             LH3DWideScreen::g_fvalue) /
	       2;
}

void HelpSystem::CalculateTextRegion(LHRegion* region) const
{
	float    textHeight = TextRegionHeight;
	float    borderHeight = TextRegionBorder;
	uint16_t screenHeight = LHSys::GetScreen().Height();
	int      wideScreenHeight = GetWideScreenHeight();
	int      height = LHSys::GetScreen().Height();
	textHeight *= height;
	height -= wideScreenHeight * 2;
	borderHeight *= height;
	int bottom = screenHeight - (int)borderHeight - wideScreenHeight - 1;
	int width = LHSys::GetScreen().Width();
	region->start.Set(0, bottom - (int)textHeight);
	region->end.Set(width, bottom);
}

void HelpSystem::Init()
{
	InitBubble();
}

void HelpSystem::CallVirtualFunctionsForCreation()
{
	MapCoords coords;
	DudeControl = NEW(261) HelpDudeControl;
	if (DudeControl != NULL)
	{
		LH_AudioSystem* audioSystem = GGlobal::Global.audio->AudioSystem;
		if (DudeControl->Init(GoodDudeFile, EvilDudeFile, audioSystem))
		{
			delete DudeControl;
			return;
		}
#ifndef VERSION_BW1WCI
		LH_AudioBank* bank = GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_HELP_SPRITES);
		DudeControl->SetSoundBank(bank, bank);
#endif
	}
	GoodSpirit = HelpSpirit::Create(coords, this, HELP_SPIRIT_TYPE_GOOD);
	if (GoodSpirit != NULL)
	{
		EvilSpirit = HelpSpirit::Create(coords, this, HELP_SPIRIT_TYPE_EVIL);
		if (EvilSpirit != NULL)
		{
			LHRegion region;
			CalculateTextRegion(&region);
			Text = HelpText::Create(region, this);
			if (Text != NULL)
			{
				return;
			}
			delete EvilSpirit;
			EvilSpirit = NULL;
		}
		delete GoodSpirit;
		GoodSpirit = NULL;
	}
	delete this;
}

int HelpSystem::GetTextIconYPos(LHRegion* region)
{
	return region->Y2() - region->Height() / HELP_SYSTEM_ICONS_PER_REGION / 2 + 1;
}

void HelpSystem::Draw3D()
{
	UpdateWideScreen();
	if (CurrentTextShouldBeDrawn() && GGame::g_game->VideoPlayer == NULL)
	{
		Text->Draw3D();
	}
	if (ClickToContinue)
	{
		LHRegion* region = &Text->Region;
		int       size = region->Height() / HELP_SYSTEM_ICONS_PER_REGION;
		int       y = GetTextIconYPos(region);
		if (ContinueIcon == NULL)
		{
			wchar_t*    text = HelpTextData::GetTextL(HELP_TEXT_TOOLTIP_07);
			CH_ANIMTYPE animType;
			int         key;
			int         mouseType;
			if (ConvertActionToKMIcon(BINDABLE_ACTION_MOVE, &animType, &key, &mouseType))
			{
				if (animType == CH_ANIMTYPE_NONE)
				{
					animType = CH_ANIMTYPE_CLICK;
				}
#ifdef VERSION_BW1W130
				if (LHSys::TheSystem.GloveActive)
				{
					LH3DColor white(255, 255, 255, 255);
					LH3DColor yellow(255, 255, 0, 255);
					ContinueIcon = CameraHelp::CreateKeyOrMouseIcon(
						0.0f, 1.0f, MinTimeBeforeClick, animType, key, mouseType, text,
						LHSys::GetScreen().Width() - HELP_SYSTEM_GLOVE_ICON_MARGIN, y - HELP_SYSTEM_GLOVE_ICON_RAISE,
						size, KEYALIGN_0x11, &yellow, &white, HELP_SYSTEM_ICON_ALPHA);
				}
				else
				{
					LH3DColor white(255, 255, 255, 255);
					LH3DColor yellow(255, 255, 0, 255);
					ContinueIcon =
						CameraHelp::CreateKeyOrMouseIcon(0.0f, 1.0f, MinTimeBeforeClick, animType, key, mouseType, text,
					                                     LHSys::GetScreen().Width() - HELP_SYSTEM_ICON_MARGIN, y, size,
					                                     KEYALIGN_0x11, &yellow, &white, HELP_SYSTEM_ICON_ALPHA);
				}
#else
				LH3DColor white(255, 255, 255, 255);
				LH3DColor yellow(255, 255, 0, 255);
				ContinueIcon =
					CameraHelp::CreateKeyOrMouseIcon(0.0f, 1.0f, MinTimeBeforeClick, animType, key, mouseType, text,
				                                     LHSys::GetScreen().Width() - HELP_SYSTEM_ICON_MARGIN, y, size,
				                                     KEYALIGN_0x11, &yellow, &white, HELP_SYSTEM_ICON_ALPHA);
#endif
			}
		}
		else
		{
#ifdef VERSION_BW1W130
			if (LHSys::TheSystem.GloveActive)
			{
				ContinueIcon->Y = y - HELP_SYSTEM_GLOVE_ICON_RAISE;
			}
			else
			{
				ContinueIcon->Y = y;
			}
#else
			ContinueIcon->Y = y;
#endif
		}
	}
	DudeControl->Update(LH3DTech::g_delta_time * HELP_SYSTEM_SECONDS_PER_MS, HELP_SYSTEM_DUDE_FADE_SPEED);
	DudeControl->AddDrawing();
	CameraHelp::DrawMouseCallback();
	DrawBubble();
}

void HelpSystem::SetTextIcon(BINDABLE_ACTIONS action)
{
	static BINDABLE_ACTIONS lastAction = BINDABLE_ACTION_NONE;

	if (action >= BINDABLE_ACTION_ZOOM_ON && action <= BINDABLE_ACTION_ROTATE_ON)
	{
		bool32_t available = GGame::g_game->control_map->GetKey(action).IsAvailable();
		if (available)
		{
			if (KeyIcon == NULL || action == lastAction)
			{
				LHRegion* region = &Text->Region;
				int       size = region->Height() / HELP_SYSTEM_ICONS_PER_REGION;
				int       y = region->Y1() + size / 2;
				KeyNames[0] = 0;
				NumKeyNames = 0;
				if (KeyIcon == NULL)
				{
					LH3DColor white(255, 255, 255, 255);
					LH3DColor yellow(255, 255, 0, 255);
					KeyIcon = CameraHelp::CreateKeyOrMouseIcon(
						0.0f, 1.0f, HELP_SYSTEM_ICON_FADE_TIME, CH_ANIMTYPE_KEY, 0, (int)KeyNames, NULL,
						LHSys::GetScreen().Width() - HELP_SYSTEM_ICON_MARGIN, y, size, KEYALIGN_0x11, &yellow, &white,
						HELP_SYSTEM_ICON_ALPHA);
					lastAction = action;
				}
			}
			LH_KEY  key = GGame::g_game->control_map->GetKey(action).key;
			wchar_t name[0x20];
			memset(name, 0, sizeof(name));
			ControlKey::GetKeyName(CONTROL_KEY_NAME_DATA(key), name, HELP_SYSTEM_KEY_NAME_LENGTH);
			NumKeyNames++;
			if (NumKeyNames == 2)
			{
				wcscat(KeyNames, L" + ");
			}
			if (NumKeyNames > 2)
			{
				wcscat(KeyNames, L" / ");
			}
			wcscat(KeyNames, name);
		}
	}
	else if (action != BINDABLE_ACTION_NONE && !ClickToContinue)
	{
		CH_ANIMTYPE animType;
		int         key;
		int         mouseType;
		if (ConvertActionToKMIcon(action, &animType, &key, &mouseType))
		{
			LHRegion* region = &Text->Region;
			int       y = GetTextIconYPos(region);
			if (ContinueIcon != NULL)
			{
				ContinueIcon->AnimType = animType;
				ContinueIcon->Key = key;
				ContinueIcon->MouseType = mouseType;
#ifdef VERSION_BW1W130
				if (LHSys::TheSystem.GloveActive)
				{
					ContinueIcon->Y = y - HELP_SYSTEM_GLOVE_ICON_RAISE;
				}
				else
				{
					ContinueIcon->Y = y;
				}
#else
				ContinueIcon->Y = y;
#endif
			}
			else
			{
#ifdef VERSION_BW1W130
				int size = region->Height() / HELP_SYSTEM_ICONS_PER_REGION;
				if (LHSys::TheSystem.GloveActive)
				{
					LH3DColor white(255, 255, 255, 255);
					LH3DColor yellow(255, 255, 0, 255);
					ContinueIcon = CameraHelp::CreateKeyOrMouseIcon(
						0.0f, 1.0f, HELP_SYSTEM_ICON_FADE_TIME, animType, key, mouseType, NULL,
						LHSys::GetScreen().Width() - HELP_SYSTEM_GLOVE_ACTION_ICON_MARGIN,
						y - HELP_SYSTEM_GLOVE_ACTION_ICON_RAISE, size, KEYALIGN_0x11, &yellow, &white,
						HELP_SYSTEM_ICON_ALPHA);
				}
				else
				{
					LH3DColor white(255, 255, 255, 255);
					LH3DColor yellow(255, 255, 0, 255);
					ContinueIcon = CameraHelp::CreateKeyOrMouseIcon(
						0.0f, 1.0f, HELP_SYSTEM_ICON_FADE_TIME, animType, key, mouseType, NULL,
						LHSys::GetScreen().Width() - HELP_SYSTEM_ICON_MARGIN, y, size, KEYALIGN_0x11, &yellow, &white,
						HELP_SYSTEM_ICON_ALPHA);
				}
#else
				LH3DColor white(255, 255, 255, 255);
				LH3DColor yellow(255, 255, 0, 255);
				ContinueIcon =
					CameraHelp::CreateKeyOrMouseIcon(0.0f, 1.0f, HELP_SYSTEM_ICON_FADE_TIME, animType, key, mouseType,
				                                     NULL, LHSys::GetScreen().Width() - HELP_SYSTEM_ICON_MARGIN, y,
				                                     region->Height() / HELP_SYSTEM_ICONS_PER_REGION, KEYALIGN_0x11,
				                                     &yellow, &white, HELP_SYSTEM_ICON_ALPHA);
#endif
			}
		}
	}
}

void HelpSystem::Validate()
{
	if (Text->Lines[Text->CurrentLine].Text == NULL)
	{
		if (ContinueIcon != NULL)
		{
			delete ContinueIcon;
			ContinueIcon = NULL;
		}
		if (KeyIcon != NULL)
		{
			delete KeyIcon;
			KeyIcon = NULL;
		}
	}
}

void HelpSystem::PostDrawProcess()
{
	FOVLocked = true;
}

HelpSpirit* HelpSystem::GetSpiritForNarrator(HELP_TEXT_NARRATOR narrator)
{
	if (narrator < HELP_TEXT_NARRATOR_EVIL_SPIRIT)
	{
		return EvilSpirit;
	}
	return GoodSpirit;
}

void HelpSystem::AddToHistory(unsigned long text, HELP_TEXT_INTERACTION interaction, float number,
                              HELP_TEXT_NARRATOR narrator)
{
	NumHistoryEntries++;
	if (NumHistoryEntries > HELP_SYSTEM_HISTORY_SIZE)
	{
		NumHistoryEntries = HELP_SYSTEM_HISTORY_SIZE;
	}
	HelpHistoryLine* line = &History[HistoryHead];
	line->Text = text;
	line->Interaction = interaction;
	line->Number = number;
	line->Narrator = narrator;
	HistoryHead = (HistoryHead + 1) % HELP_SYSTEM_HISTORY_SIZE;
}

HelpHistoryLine* HelpSystem::GetFromHistory(int index)
{
	if (index >= 0 && index < NumHistoryEntries)
	{
		return &History[(HistoryHead - index + HELP_SYSTEM_HISTORY_SIZE - 1) % HELP_SYSTEM_HISTORY_SIZE];
	}
	return NULL;
}

#ifdef VERSION_BW1WCI
void HelpSystem::SendText(unsigned long text, HELP_TEXT_INTERACTION interaction, float number,
                          HELP_TEXT_NARRATOR narrator)
{
	GameThingWithPos* thing = ScriptTextThing;
	if (text >= HELP_TEXT_LAST)
	{
		text = 0;
	}
	HelpTextInfo*       info = HelpTextDataBase::HelpTextDatabase.GetData(text);
	AUDIO_SFX_BANK_TYPE bank = HelpTextSamples[text].Bank;
	uint32_t            sample = HelpTextSamples[text].Sample;
	if (HelpTextSamples[text].Text != text)
	{
		bank = AUDIO_SFX_BANK_TYPE_NONE;
	}
	HELP_TEXT_NARRATOR textNarrator = info->Narrator;
	SendText(info->Text, interaction, number, textNarrator, text);
	AddToHistory(text, interaction, number, textNarrator);
	Creature* creature = NULL;
	if (thing != NULL && thing->IsCreature())
	{
		creature = (Creature*)thing;
	}
	if (sample != 0 && bank != AUDIO_SFX_BANK_TYPE_NONE && creature != NULL && creature->GetCreature3D() != NULL)
	{
		DudeControl->DontTalk(HELPDUDE_EVIL);
		DudeControl->DontTalk(HELPDUDE_GOOD);
		creature->GetCreature3D()->Talk(sample, GGlobal::Global.audio->GetBank(bank));
		return;
	}
	if (GAudio::IsHelpSpritesSoundBank(bank))
	{
		if (textNarrator == HELP_TEXT_NARRATOR_GOOD_SPIRIT)
		{
			DudeControl->DontTalk(HELPDUDE_EVIL);
			DudeControl->DontTalk(HELPDUDE_GOOD);
			DudeControl->Talk(HELPDUDE_GOOD, text, 0);
			return;
		}
		if (textNarrator == HELP_TEXT_NARRATOR_EVIL_SPIRIT)
		{
			DudeControl->DontTalk(HELPDUDE_EVIL);
			DudeControl->DontTalk(HELPDUDE_GOOD);
			DudeControl->Talk(HELPDUDE_EVIL, text, 0);
			return;
		}
	}
	if (sample != 0 && bank != AUDIO_SFX_BANK_TYPE_NONE)
	{
		LH_SamplePlayOptions options;
		options.SampleNumber = sample;
		options.Bank = GGlobal::Global.audio->GetBank(bank);
		options.AttachedObject = (Base*)HELP_SPEECH_OBJECT_TEXT;
		options.Flags = LH_SAMPLE_FLAG_KEEP_DATA;
		GGlobal::Global.audio->PlaySoundEffect(&options);
	}
}
#else
void HelpSystem::SendText(unsigned long text, HELP_TEXT_INTERACTION interaction, float number,
                          HELP_TEXT_NARRATOR narrator)
{
	if (text >= HELP_TEXT_LAST)
	{
		text = 0;
	}
	HelpTextInfo* info = HelpTextDataBase::HelpTextDatabase.GetData(text);
#ifdef VERSION_BW1W130
	uint32_t            sample;
	AUDIO_SFX_BANK_TYPE bank;
	if (LHSys::TheSystem.GloveActive)
	{
		sample = GloveHelpTextSamples[text].Sample;
		bank = GloveHelpTextSamples[text].Bank;
		if (GloveHelpTextSamples[text].Text != text)
		{
			bank = AUDIO_SFX_BANK_TYPE_NONE;
		}
	}
	else
	{
		sample = HelpTextSamples[text].Sample;
		bank = HelpTextSamples[text].Bank;
		if (HelpTextSamples[text].Text != text)
		{
			bank = AUDIO_SFX_BANK_TYPE_NONE;
		}
	}
#else
	uint32_t            sample = HelpTextSamples[text].Sample;
	AUDIO_SFX_BANK_TYPE bank = HelpTextSamples[text].Bank;
	if (HelpTextSamples[text].Text != text)
	{
		bank = AUDIO_SFX_BANK_TYPE_NONE;
	}
#endif
	HELP_TEXT_NARRATOR textNarrator = info->Narrator;
	SendText(info->Text, interaction, number, textNarrator, text);
	AddToHistory(text, interaction, number, textNarrator);
	if (bank == AUDIO_SFX_BANK_TYPE_HELP_SPRITES)
	{
#ifdef VERSION_BW1W130
		LH_AudioBank* spriteBank = GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_HELP_SPRITES);
		DudeControl->SetSoundBank(spriteBank, spriteBank);
#endif
		if (textNarrator == HELP_TEXT_NARRATOR_GOOD_SPIRIT)
		{
			DudeControl->DontTalk(HELPDUDE_EVIL);
			DudeControl->DontTalk(HELPDUDE_GOOD);
			DudeControl->Talk(HELPDUDE_GOOD, sample, 0);
			return;
		}
		if (textNarrator == HELP_TEXT_NARRATOR_EVIL_SPIRIT)
		{
			DudeControl->DontTalk(HELPDUDE_EVIL);
			DudeControl->DontTalk(HELPDUDE_GOOD);
			DudeControl->Talk(HELPDUDE_EVIL, sample, 0);
			return;
		}
	}
#ifdef VERSION_BW1W130
	if (LHSys::TheSystem.GloveActive && bank == AUDIO_SFX_BANK_TYPE_GLOVE_DIALOGUE)
	{
		if (textNarrator == HELP_TEXT_NARRATOR_GOOD_SPIRIT)
		{
			DudeControl->DontTalk(HELPDUDE_EVIL);
			DudeControl->DontTalk(HELPDUDE_GOOD);
			LH_AudioBank* gloveBank = GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_GLOVE_DIALOGUE);
			DudeControl->SetSoundBank(gloveBank, gloveBank);
			DudeControl->Talk(HELPDUDE_GOOD, sample, 0);
			return;
		}
		if (textNarrator == HELP_TEXT_NARRATOR_EVIL_SPIRIT)
		{
			DudeControl->DontTalk(HELPDUDE_EVIL);
			DudeControl->DontTalk(HELPDUDE_GOOD);
			LH_AudioBank* gloveBank = GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_GLOVE_DIALOGUE);
			DudeControl->SetSoundBank(gloveBank, gloveBank);
			DudeControl->Talk(HELPDUDE_EVIL, sample, 0);
			return;
		}
	}
#endif
	if (sample != 0 && bank != AUDIO_SFX_BANK_TYPE_NONE)
	{
		LH_SamplePlayOptions options;
		options.SampleNumber = sample;
		options.Bank = GGlobal::Global.audio->GetBank(bank);
		options.AttachedObject = (Base*)HELP_SPEECH_OBJECT_TEXT;
		options.Flags = LH_SAMPLE_FLAG_KEEP_DATA;
		GGlobal::Global.audio->PlaySoundEffect(&options);
	}
}
#endif

void HelpSystem::SendText(wchar_t* text, HELP_TEXT_INTERACTION interaction, float number, HELP_TEXT_NARRATOR narrator,
                          unsigned long text_id)
{
	Text->SendText(text, number, narrator);
	CalculateEndReadGameTurn(text);
	ClickToContinue = interaction == HELP_TEXT_INTERACTION_CLICK_TO_CONTINUE;
	NoSkip = interaction == HELP_TEXT_INTERACTION_NO_SKIP;
	memmove(&TextsShown[1], &TextsShown[0], sizeof(TextsShown) - sizeof(TextsShown[0]));
	TextsShown[0] = text_id;
	if (ContinueIcon != NULL)
	{
		delete ContinueIcon;
		ContinueIcon = NULL;
	}
	if (KeyIcon != NULL)
	{
		delete KeyIcon;
		KeyIcon = NULL;
	}
}

void HelpSystem::CalculateEndReadGameTurn(wchar_t* text)
{
	int   numWords = Text->CountWords(text);
	float multiplier = GetReadSpeedMultiplier();
	int   readTurns = HelpSystemInfo::Info.ReadTimePerWord * numWords + HelpSystemInfo::Info.BaseReadTime;
	float seconds =
		multiplier * ((float)readTurns * GGameInfo::Info.MillisecondsPerGameTurn * HELP_SYSTEM_SECONDS_PER_MS);
	TextStartGameTurn = GGame::g_game->data.GetGameTurn();
	EndReadGameTurn = TextStartGameTurn + GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(seconds);
	int   now = LH3DTech::g_timer.MSeconds();
	float milliseconds = seconds * HELP_SYSTEM_MS_PER_SECOND;
	TextStartTime = now;
	EndReadTime = milliseconds + (uint32_t)now;
}

bool32_t HelpSystem::IsTextCleared(unsigned long text)
{
	if (TextsShown[0] == text)
	{
		return Text->Lines[Text->CurrentLine].Text == NULL;
	}
	return true;
}

bool32_t HelpSystem::IsSoundAvailable(unsigned long text) const
{
#ifdef VERSION_BW1W130
	if (LHSys::TheSystem.GloveActive)
	{
		if (GloveHelpTextSamples[text].Text == text && text < HELP_TEXT_LAST &&
		    GloveHelpTextSamples[text].Bank != AUDIO_SFX_BANK_TYPE_NONE && GloveHelpTextSamples[text].Sample != 0 &&
		    GGlobal::Global.audio->GetBank(GloveHelpTextSamples[text].Bank) != NULL)
		{
			return true;
		}
		return false;
	}
#endif
	if (HelpTextSamples[text].Text == text && text < HELP_TEXT_LAST &&
	    HelpTextSamples[text].Bank != AUDIO_SFX_BANK_TYPE_NONE && HelpTextSamples[text].Sample != 0 &&
	    GGlobal::Global.audio->GetBank(HelpTextSamples[text].Bank) != NULL)
	{
		return true;
	}
	return false;
}

bool32_t HelpSystem::IsTextReadTimeComplete()
{
	if (IsSoundAvailable(TextsShown[0]))
	{
#ifdef VERSION_BW1W130
		AUDIO_SFX_BANK_TYPE bank;
		if (LHSys::TheSystem.GloveActive)
		{
			bank = GloveHelpTextSamples[TextsShown[0]].Bank;
		}
		else
		{
			bank = HelpTextSamples[TextsShown[0]].Bank;
		}
#else
		AUDIO_SFX_BANK_TYPE bank = HelpTextSamples[TextsShown[0]].Bank;
#endif
#ifdef VERSION_BW1WCI
		if (GAudio::IsHelpSpritesSoundBank(bank))
#else
		if (bank == AUDIO_SFX_BANK_TYPE_HELP_SPRITES)
#endif
		{
			if ((!DudeControl->Talking[HELPDUDE_GOOD] || !DudeControl->Dudes[HELPDUDE_GOOD]->IsTalkingWithDelay()) &&
			    (!DudeControl->Talking[HELPDUDE_EVIL] || !DudeControl->Dudes[HELPDUDE_EVIL]->IsTalkingWithDelay()))
			{
				return true;
			}
		}
		else
		{
#ifdef VERSION_BW1W130
			uint32_t sample;
			if (LHSys::TheSystem.GloveActive)
			{
				sample = GloveHelpTextSamples[TextsShown[0]].Sample;
			}
			else
			{
				sample = HelpTextSamples[TextsShown[0]].Sample;
			}
#else
			uint32_t sample = HelpTextSamples[TextsShown[0]].Sample;
#endif
#ifdef VERSION_BW1WCI
			uint32_t object = HELP_SPEECH_OBJECT_TEXT;
			if (HelpDude::s_PlayingSample)
			{
				object = HELP_SPEECH_OBJECT_HELP_DUDE;
				sample = HelpDude::s_PlayingSample;
			}
#endif
			if (bank == AUDIO_SFX_BANK_TYPE_NONE || sample == 0)
			{
				return true;
			}
#ifdef VERSION_BW1WCI
			if (GGlobal::Global.audio->IsSamplePlaying(object, sample, bank))
#else
			if (GGlobal::Global.audio->IsSamplePlaying(HELP_SPEECH_OBJECT_TEXT, sample, bank))
#endif
			{
				EndReadTime = LH3DTech::g_timer.MSeconds() + HELP_SYSTEM_SOUND_END_DELAY;
			}
			else
			{
				return (uint32_t)LH3DTech::g_timer.MSeconds() >= EndReadTime;
			}
		}
		return false;
	}
	if (GGame::g_game->IsInCitadel() && GGame::g_game->Paused)
	{
		return EndReadTime < (uint32_t)LH3DTech::g_timer.MSeconds();
	}
	return GGame::g_game->data.GetGameTurn() > EndReadGameTurn;
}

bool32_t HelpSystem::IsTextRead()
{
	if (ClickToContinue)
	{
		return false;
	}
	return IsTextReadTimeComplete();
}

bool32_t HelpSystem::IsClickToContinueTextCleared()
{
	if (ClickToContinue)
	{
		return Text->Lines[Text->CurrentLine].Text == NULL;
	}
	return false;
}

bool32_t HelpSystem::IsSpiritHome(HELP_SPIRIT_TYPE type)
{
	return GetSpirit(type)->IsHome();
}

bool32_t HelpSystem::IsSpiritEjected(HELP_SPIRIT_TYPE type)
{
	return GetSpirit(type)->IsEjected();
}

void HelpSystem::SpiritEject(HELP_SPIRIT_TYPE type, bool32_t appear)
{
	GetSpirit(type)->Eject(appear);
}

void HelpSystem::SpiritPoint(HELP_SPIRIT_TYPE type, const LHPoint& point, bool32_t in_world) const
{
	GetSpirit(type)->Point(point, in_world);
}

void HelpSystem::SpiritPoint(HELP_SPIRIT_TYPE type, const LHCoord& coord) const
{
	GetSpirit(type)->Point(coord);
}

void HelpSystem::SpiritLook(HELP_SPIRIT_TYPE type, const LHPoint& point) const
{
	GetSpirit(type)->Look(point);
}

void HelpSystem::SpiritLook(HELP_SPIRIT_TYPE type, GameThingWithPos* thing) const
{
	GetSpirit(type)->Look(thing);
}

void HelpSystem::StopSpiritLooking(HELP_SPIRIT_TYPE type) const
{
	GetSpirit(type)->ClearLooking();
}

void HelpSystem::StopSpiritPointing(HELP_SPIRIT_TYPE type) const
{
	GetSpirit(type)->ClearPointing();
}

void HelpSystem::SpiritPoint(HELP_SPIRIT_TYPE type, GameThingWithPos* thing, bool32_t in_world) const
{
	GetSpirit(type)->Point(thing, in_world);
}

void HelpSystem::SpiritHome(HELP_SPIRIT_TYPE type, bool32_t disappear) const
{
	GetSpirit(type)->Home(disappear);
}

void HelpSystem::SpiritPlayAnim(HELP_SPIRIT_TYPE type, float x, float y, ANIMLIST anim, float speed) const
{
	GetSpirit(type)->PlayAnim(x, y, anim, speed);
}

#ifdef VERSION_BW1WCI
void HelpSystem::SpiritPlayAnimInWorld(HELP_SPIRIT_TYPE type, const LHPoint& point, ANIMLIST anim, float speed)
{
	GetSpirit(type)->PlayAnim(point, anim, speed);
}
#endif

bool32_t HelpSystem::IsSpiritPlayingAnim(HELP_SPIRIT_TYPE type) const
{
	return GetSpirit(type)->IsPlayingAnim();
}

void HelpSystem::SpiritCling(HELP_SPIRIT_TYPE type, float x, float y) const
{
	GetSpirit(type)->Cling(x, y);
}

void HelpSystem::SpiritFly(HELP_SPIRIT_TYPE type, float x, float y) const
{
	GetSpirit(type)->Fly(x, y);
}

void HelpSystem::SpiritInterruptTalking(HELP_SPIRIT_TYPE type, bool32_t disappear)
{
	GetSpirit(type)->InterruptTalking(disappear);
}

bool32_t HelpSystem::IsDialogueControlled() const
{
	if (DialogueControlTask != SCRIPT_TASK_NONE || (WideScreen && WideScreenControl))
	{
		return true;
	}
	return false;
}

uint32_t HelpSystem::GetNewControlId()
{
	return ++LastControlId;
}

void HelpSystem::SetCurrentControl(unsigned long task)
{
	DialogueControlTask = (SCRIPT_TASK)task;
}

bool32_t HelpSystem::DialogueControlRequest(unsigned long task)
{
#ifdef VERSION_BW1WCI
	if (DialogueControlTask != SCRIPT_TASK_NONE)
#else
	if (IsDialogueControlled())
#endif
	{
		return false;
	}
	SetCurrentControl(task);
	ClearAllText();
	return true;
}

bool32_t HelpSystem::IsCurrentControl(unsigned long task)
{
	return DialogueControlTask == task;
}

void HelpSystem::ClearDialogueControl()
{
	DialogueControlTask = SCRIPT_TASK_NONE;
	if (Text != NULL)
	{
		Text->CloseDialogWindow();
	}
}

void HelpSystem::ReleaseDialogueControl(unsigned long task)
{
	if (DialogueControlTask == task)
	{
		bool32_t helpScript = GScript::g_scriptDLL->GetScriptType(task) == VMScriptType_Help;
		ClearDialogueControl();
		GoodSpirit->Home(false);
		EvilSpirit->Home(false);
		SetWideScreen(false, SCRIPT_TASK_NONE);
		SpiritInterruptTalking(HELP_SPIRIT_TYPE_GOOD, true);
		SpiritInterruptTalking(HELP_SPIRIT_TYPE_EVIL, true);
		GGame::g_game->help_system->SpiritHome(HELP_SPIRIT_TYPE_GOOD, helpScript);
		GGame::g_game->help_system->SpiritHome(HELP_SPIRIT_TYPE_EVIL, helpScript);
		ClearAllText();
	}
}

HelpSpirit* HelpSystem::GetSpirit(HELP_SPIRIT_TYPE type) const
{
	if (type == HELP_SPIRIT_TYPE_GOOD)
	{
		return GoodSpirit;
	}
	return EvilSpirit;
}

bool32_t HelpSystem::IsClickToContinueTimeComplete() const
{
	float minTime;
	if (ClickToContinue)
	{
		minTime = MinTimeBeforeClick;
	}
	else
	{
		minTime = MinTimeBeforeSkip;
	}
	if (GGame::g_game->IsInCitadel() && GGame::g_game->Paused)
	{
		return (uint32_t)(LH3DTech::g_timer.MSeconds() - TextStartTime) * HELP_SYSTEM_SECONDS_PER_MS >= minTime;
	}
	int turns = GGame::g_game->data.GetGameTurn() - TextStartGameTurn;
	return (float)turns * GGameInfo::Info.MillisecondsPerGameTurn * HELP_SYSTEM_SECONDS_PER_MS >= minTime;
}

#ifdef VERSION_BW1WCI
void HelpSystem::ClearHelpTextSoundAndText()
{
	if (TextsShown[0] != 0)
	{
		SpiritInterruptTalking(HELP_SPIRIT_TYPE_GOOD, true);
		SpiritInterruptTalking(HELP_SPIRIT_TYPE_EVIL, true);
		if (HelpDude::s_PlayingSample)
		{
			GGlobal::Global.audio->StopPlayingSoundEffect(0, HELP_SPEECH_OBJECT_HELP_DUDE,
			                                              AUDIO_SFX_BANK_TYPE_VILLAGERS);
			GGlobal::Global.audio->StopPlayingSoundEffect(0, HELP_SPEECH_OBJECT_HELP_DUDE,
			                                              AUDIO_SFX_BANK_TYPE_CI_VILLAGERS);
		}
		GGlobal::Global.audio->StopPlayingSoundEffect(0, HELP_SPEECH_OBJECT_TEXT, AUDIO_SFX_BANK_TYPE_VILLAGERS);
		GGlobal::Global.audio->StopPlayingSoundEffect(0, HELP_SPEECH_OBJECT_TEXT, AUDIO_SFX_BANK_TYPE_CI_VILLAGERS);
	}
	ClearTextDisplayed();
}
#endif

HELP_INTERFACE_RESULT HelpSystem::ProcessInterface(LHCoord* pos, bool32_t select_lock_off, bool32_t apply_lock_off)
{
	uint32_t skipKey = LHSys::GetKeyboard().IsKeyDown(KB_ENTER);
	if (!NoSkip && (select_lock_off || skipKey) && !GGame::g_game->MyInterface()->IsPlayBack(SCRIPT_TASK_NONE) &&
	    !IsTextRead() && (IsClickToContinueTimeComplete() || skipKey))
	{
		if (SkipNextClick)
		{
			SkipNextClick = false;
			return HELP_INTERFACE_RESULT_RESET;
		}
		if (!IsInScriptWideScreen() && !skipKey)
		{
			if (ClickToContinue)
			{
				ClickToContinue = skipKey;
				if (ContinueIcon != NULL)
				{
					delete ContinueIcon;
					ContinueIcon = NULL;
				}
			}
		}
		else
		{
#ifdef VERSION_BW1WCI
			ClearHelpTextSoundAndText();
#else
			if (TextsShown[0] != 0)
			{
				SpiritInterruptTalking(HELP_SPIRIT_TYPE_GOOD, true);
				SpiritInterruptTalking(HELP_SPIRIT_TYPE_EVIL, true);
				GGlobal::Global.audio->StopPlayingSoundEffect(0, HELP_SPEECH_OBJECT_TEXT,
				                                              AUDIO_SFX_BANK_TYPE_VILLAGERS);
			}
			ClearTextDisplayed();
#endif
			return HELP_INTERFACE_RESULT_RESET;
		}
	}
	return HELP_INTERFACE_RESULT_CONTINUE;
}

#ifdef VERSION_BW1WCI
void HelpSystem::SetWideScreen(bool32_t widescreen, long task)
#else
void HelpSystem::SetWideScreen(bool32_t widescreen, unsigned long task)
#endif
{
#ifdef VERSION_BW1WCI
	if (WideScreen == widescreen)
	{
		if (WideScreenControl < 0)
		{
			WideScreenControl = task;
		}
	}
	else
#else
	if (WideScreen != widescreen)
#endif
	{
		float percentage = GetWideScreenPercentage();
		if (widescreen)
		{
			DialogBoxBase::HideAll();
		}
		if (widescreen && task)
		{
			GGame::g_game->MyInterface()->SetActive(false);
		}
		else
		{
			GGame::g_game->MyInterface()->SetActive(true);
		}
		WideScreen = widescreen;
		if (widescreen)
		{
			WideScreenControl = task;
		}
		else
		{
			WideScreenControl = 0;
			percentage = 1.0f - percentage;
		}
		WideScreenTime = HelpSystemInfo::Info.WideScreenTransitionTime * percentage * HELP_SYSTEM_MS_PER_SECOND;
	}
}

float HelpSystem::GetWideScreenPercentage() const
{
	float percentage =
		(float)fabs(WideScreenTime / HELP_SYSTEM_MS_PER_SECOND / HelpSystemInfo::Info.WideScreenTransitionTime);
	if (!WideScreen)
	{
		percentage = 1.0f - percentage;
	}
	if (percentage < 0.0f)
	{
		return 0.0f;
	}
	if (percentage > 1.0f)
	{
		percentage = 1.0f;
	}
	return percentage;
}

void HelpSystem::UpdateWideScreen()
{
	float timeInc;
	if (GGame::g_game->IsInCitadel() && GGame::g_game->Paused)
	{
		timeInc = LH3DTech::g_delta_time;
	}
	else
	{
		timeInc = GGame::g_game->TimeInc;
	}
	WideScreenTime += timeInc;
	float    percentage = GetWideScreenPercentage();
	LHRegion region;
	LH3DWideScreen::g_fvalue = percentage;
	CalculateTextRegion(&region);
	Text->Region = region;
}

void HelpSystem::SetWideScreenTrasitionOff()
{
	WideScreenTime = -WideScreenTransitionOffTime;
}

bool32_t HelpSystem::IsInWideScreenTransition() const
{
	float percentage = GetWideScreenPercentage();
	if (!WideScreen)
	{
		if (percentage > 0.0f)
		{
			return true;
		}
	}
	else if (percentage < 1.0f)
	{
		return true;
	}
	return false;
}

void HelpSystem::SetReadSpeed(float speed)
{
	ReadSpeed = speed;
}

float HelpSystem::GetReadSpeed() const
{
	return ReadSpeed;
}

float HelpSystem::GetReadSpeedMultiplier() const
{
	float speed = GetReadSpeed();
	if (speed <= HELP_SYSTEM_DEFAULT_READ_SPEED)
	{
		return HELP_SYSTEM_SLOW_READ_MULTIPLIER - speed * HELP_SYSTEM_SLOW_READ_SLOPE;
	}
	return (1.0 - (speed - HELP_SYSTEM_DEFAULT_READ_SPEED) * HELP_SYSTEM_FAST_READ_SLOPE) *
	           HELP_SYSTEM_FAST_READ_RANGE +
	       HELP_SYSTEM_FAST_READ_MULTIPLIER;
}

void HelpSystem::ReadRegistrySettings()
{
	unsigned long value;
	double        readSpeed;
	if (LHNetGetCurrentProfileUlong(TooltipLevelSetting, &value) == LH_OK)
	{
		TooltipLevel = (TOOLTIP_LEVEL)value;
	}
	else
	{
		TooltipLevel = TOOLTIP_LEVEL_ALL;
	}
	TextTopToBottom = LHNetGetCurrentProfileUlong(TextTopToBottomSetting, &value) == LH_OK ? value : false;
	if (LHNetGetCurrentProfileUlong(TextDrawSetting, &value) == LH_OK)
	{
		TextDraw = (TEXT_DRAW)value;
	}
	else
	{
		TextDraw = TEXT_DRAW_WHEN_NEEDED;
	}
	if (LHNetGetCurrentProfileUlong(CreatureHelpSetting, &value) == LH_OK)
	{
		CreatureHelp = value;
	}
	else
	{
		CreatureHelp = true;
	}
	if (LHNetGetCurrentProfileUlong(HelpLevelSetting, &value) == LH_OK)
	{
		SetHelpLevel((HELP_LEVEL)value);
	}
	else
	{
		SetHelpLevel(HELP_LEVEL_FULL);
	}
	if (LHNetGetCurrentProfileDouble(ReadSpeedSetting, &readSpeed) == LH_OK)
	{
		SetReadSpeed(readSpeed);
	}
	else
	{
		SetReadSpeed((float)HELP_SYSTEM_DEFAULT_READ_SPEED);
	}
}

bool32_t HelpSystem::IsSpiritPointing()
{
	if (GoodSpirit->PointObject != NULL || EvilSpirit->PointObject != NULL)
	{
		return true;
	}
	return false;
}

HELP_SPIRIT_TYPE HelpSystem::GetSpiritWhoTalks(unsigned long text)
{
	HELP_TEXT_NARRATOR narrator = HelpTextDataBase::HelpTextDatabase.GetData(text)->Narrator;
	if (narrator == HELP_TEXT_NARRATOR_GOOD_SPIRIT)
	{
		return HELP_SPIRIT_TYPE_GOOD;
	}
	return narrator == HELP_TEXT_NARRATOR_EVIL_SPIRIT ? HELP_SPIRIT_TYPE_EVIL : HELP_SPIRIT_TYPE_NONE;
}

bool32_t HelpSystem::CurrentTextShouldBeDrawn()
{
	switch (TextDraw)
	{
	case TEXT_DRAW_NEVER:
		return false;
	case TEXT_DRAW_WHEN_NEEDED:
		if (TextsShown[0] != 0)
		{
			return HelpTextDataBase::HelpTextDatabase.GetData(TextsShown[0])->ShouldBeDrawn;
		}
		return true;
	case TEXT_DRAW_ALWAYS:
		return true;
	}
	return true;
}

static inline void OrderShortInstances(GameOSFile& file, uint16_t& value)
{
	file.WriteIt(value);
	file.ReadIt(value);
}

bool32_t HelpSystem::Save(GameOSFile& file)
{
	file.WriteArray(Conditions, HELP_SYSTEM_CONDITION_LAST);
	file.WriteArray(MessageSetSentTime, HELP_SYSTEM_MESSAGE_SET_LAST);
	file.WriteArray(CategoryTriggerTime, _HELP_SET_CATEGORY_COUNT);
	file.WriteArray(MessageSetSentCount, HELP_SYSTEM_MESSAGE_SET_LAST);
	file.WriteIt(LastMessageSet);
	file.WriteIt(LastMessageTime);
	file.WritePtr(NULL);
	file.WritePtr(BubbleObject);
	file.WritePtr(NULL);
	file.WriteIt(field_0x56c);
	file.WriteIt(FOVDistance);
	file.WritePtr(LastObjectInHand);
	file.WriteIt(FOVLocked);
	file.WriteIt(ClickToContinue);
	file.WriteIt(NoSkip);
	file.WriteArray(TextsShown, HELP_SYSTEM_NUM_TEXTS_SHOWN);
	file.WriteIt(SavedDialogueControlTask);
	file.WriteArray(SavedTextsShown, HELP_SYSTEM_NUM_TEXTS_SHOWN);
	file.WriteIt(SavedClickToContinue);
	file.WriteIt(SavedNoSkip);
	file.WriteIt(TextSaved);
	file.WriteIt(field_0x56c);
	file.WriteIt(DialogueControlTask);
	file.WriteIt(LastControlId);
	file.WriteIt(NumBanterSetsSent);
	file.WriteIt(TextStartGameTurn);
	file.WriteIt(TextStartTime);
	file.WriteIt(EndReadGameTurn);
	file.WriteIt(EndReadTime);
	file.WriteIt(SkipNextClick);
	file.WriteIt(WideScreen);
	file.WriteIt(WideScreenControl);
	file.WriteIt(WideScreenTime);
	file.WriteIt(HelpLevel);
	file.WriteIt(TextDraw);
	file.WriteIt(CreatureHelp);
	file.WriteIt(TooltipLevel);
	file.WriteIt(ImmersionLevel);
	file.WriteIt(HelpSystemOn);
	file.WriteIt(BubbleText);
	file.WriteIt(HistoryHead);
	file.WriteIt(NumHistoryEntries);
	file.WriteArray(History, HELP_SYSTEM_HISTORY_SIZE);
#ifdef VERSION_BW1WCI
	file.WritePtr(ScriptTextThing);
#endif
	return true;
}

bool32_t HelpSystem::Load(GameOSFile& file)
{
	ResetIcons();
	file.ReadArray(Conditions);
	file.ReadArray(MessageSetSentTime);
	file.ReadArray(CategoryTriggerTime);
	file.ReadArray(MessageSetSentCount);
	file.ReadIt(LastMessageSet);
	file.ReadIt(LastMessageTime);
	file.ReadPtr(&LastFOVObject);
	file.ReadPtr((GameThing**)&BubbleObject);
	file.ReadPtr((GameThing**)&FOVObject);
	file.ReadIt(field_0x56c);
	file.ReadIt(FOVDistance);
	file.ReadPtr((GameThing**)&LastObjectInHand);
	file.ReadIt(FOVLocked);
	file.ReadIt(ClickToContinue);
	file.ReadIt(NoSkip);
	file.ReadArray(TextsShown);
	file.ReadIt(SavedDialogueControlTask);
	file.ReadArray(SavedTextsShown);
	file.ReadIt(SavedClickToContinue);
	file.ReadIt(SavedNoSkip);
	file.ReadIt(TextSaved);
	file.ReadIt(field_0x56c);
	file.ReadIt(DialogueControlTask);
	file.ReadIt(LastControlId);
	file.ReadIt(NumBanterSetsSent);
	file.ReadIt(TextStartGameTurn);
	file.ReadIt(TextStartTime);
	file.ReadIt(EndReadGameTurn);
	file.ReadIt(EndReadTime);
	file.ReadIt(SkipNextClick);
	file.ReadIt(WideScreen);
	file.ReadIt(WideScreenControl);
	file.ReadIt(WideScreenTime);
	file.ReadIt(HelpLevel);
	file.ReadIt(TextDraw);
	file.ReadIt(CreatureHelp);
	file.ReadIt(TooltipLevel);
	file.ReadIt(ImmersionLevel);
	file.ReadIt(HelpSystemOn);
	file.ReadIt(BubbleText);
	file.ReadIt(HistoryHead);
	file.ReadIt(NumHistoryEntries);
	file.ReadArray(History);
#ifdef VERSION_BW1WCI
	GameThing** scriptTextThing = (GameThing**)&ScriptTextThing;
	file.ReadPtr(scriptTextThing);
#endif
	return false;
}

void HelpSystem::ResolveLoad()
{
	RestoreTextOnTempleExit();
}

void HelpSystem::ClearWideScreen(unsigned long task)
{
	if (WideScreen && task == WideScreenControl)
	{
		SetWideScreen(false, SCRIPT_TASK_NONE);
	}
}

bool32_t HelpSystem::ConvertActionToKMIcon(BINDABLE_ACTIONS action, CH_ANIMTYPE* anim_type, int* key, int* mouse_type)
{
	static wchar_t keyText[0x20];
	static wchar_t iconText[0x20];

	if (action == BINDABLE_ACTION_NONE || action == _BINDABLE_ACTION_SIZE)
	{
		return false;
	}
	if (GGame::g_game->control_map->IsMouseButtonAssignedToAction(action))
	{
		*anim_type = CH_ANIMTYPE_NONE;
		*key = GGame::g_game->control_map->GetClickTypeForAction(action);
		*mouse_type = HelpProfile::GetMouseType();
		return true;
	}
	if (GGame::g_game->control_map->IsKeyAssignedToAction(action))
	{
		*anim_type = CH_ANIMTYPE_KEY;
		*key = 0;
		*mouse_type = (int)iconText;
		GGame::g_game->control_map->GetKeyTextForAction(action, keyText);
		wcscpy(iconText, keyText);
		return true;
	}
	return false;
}

void HelpSystem::SetHelpLevel(HELP_LEVEL level)
{
	HelpLevel = level;
	ResetFOV();
}

void HelpSystem::SaveTextOnTempleEntry()
{
	GScript::StopHelpScripts();
	SpiritHome(HELP_SPIRIT_TYPE_EVIL, false);
	SpiritHome(HELP_SPIRIT_TYPE_GOOD, false);
	if (IsDialogueControlled())
	{
		SCRIPT_TASK task = DialogueControlTask;
		if (!(GScript::g_scriptDLL->GetScriptType(task) & VMScriptType_RunWhilePaused))
		{
			SavedDialogueControlTask = task;
			for (int i = 0; i < HELP_SYSTEM_NUM_TEXTS_SHOWN; i++)
			{
				SavedTextsShown[i] = TextsShown[i];
			}
			SavedClickToContinue = ClickToContinue;
			SavedNoSkip = NoSkip;
			TextSaved = true;
			ClearDialogueControl();
			return;
		}
	}
	TextSaved = false;
}

void HelpSystem::ReInitialiseText()
{
	HelpTextInfo* lastInfo;
	Text->ClearTextDisplayed();
	for (int i = HELP_SYSTEM_NUM_TEXTS_SHOWN - 1; i >= 0; i--)
	{
		if (TextsShown[i] != 0)
		{
			HelpTextInfo* info = HelpTextDataBase::HelpTextDatabase.GetData(TextsShown[i]);
			lastInfo = info;
			Text->SendText(info->Text, 0.0f, info->Narrator);
		}
	}
	if (TextsShown[0] != 0)
	{
		CalculateEndReadGameTurn(lastInfo->Text);
	}
}

void HelpSystem::RestoreTextOnTempleExit()
{
	if (TextSaved == true && !IsDialogueControlled())
	{
		DialogueControlRequest(SavedDialogueControlTask);
		for (int i = 0; i < HELP_SYSTEM_NUM_TEXTS_SHOWN; i++)
		{
			TextsShown[i] = SavedTextsShown[i];
		}
		ClickToContinue = SavedClickToContinue;
		NoSkip = SavedNoSkip;
	}
	TextSaved = false;
	ReInitialiseText();
}

void HelpSystem::SetImmersionLevel(IMMERSION_LEVEL level)
{
	GGame::g_game->MyInterface()->StopAllImmersion();
	ImmersionLevel = level;
}
