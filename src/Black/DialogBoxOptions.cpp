#include "DialogBoxOptions.h"

#include <wchar.h> /* For wcscpy */

#include <chlasm/HelpTextEnums.h>                     /* For HELP_TEXT_* */
#include <chlasm/LHKeyBoard.h>                        /* For KB_ESCAPE */
#include <Lionhead/LH3DLib/development/LH3DText.h>    /* For struct GatheringText */
#include <Lionhead/LHLib/ver5.0/LHWin.h>              /* For NEW */
#include <Lionhead/LHLog/ver4.0/LHRegistry.h>         /* For RegistryRetrieveULong */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h> /* For LHNetGetCurrentProfileUlong */

#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */
#include "Audio.h"
#include "DialogBoxImmersion.h"
#include "ControlHand.h"         /* For CHand::ReadRegistrySettings */
#include "DialogBoxKeyBinding.h" /* For DialogBoxKeyBinding::Show */
#include "FrontEnd.h"            /* For AddOptionsTabs */
#include "Game.h"
#include "Interface.h" /* For GInterface::hand */
#include "Global.h"
#include "HelpSystem.h"
#include "HelpText.h"
#include "MainMenu.h" /* For MMQuitButton */
#include "MiniDialogBoxOptions.h"
#include "PlayerProfile.h"
#include "SecretCreature.h" /* For BWSETUP_REGISTRY_KEY */
#include "Temple.h"         /* For Temple::GoToRoom */
#include "alexmfc.h"
#if defined(VERSION_BW1W130)
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys::TheSystem */
#include <P5/P5dll.h>                       /* For CP5DLL */
#include <P5/P5Bend.h>                      /* For P5Bend_SetClickSensitivityLevel */
#include <P5/P5Motion.h>                    /* For P5Motion_SetAcceleration */
#endif

#if defined(VERSION_BW1W130)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line)                                                                                            \
	((line) < 80     ? (line) - 17                                                                                     \
	 : (line) < 105  ? (line) - 30                                                                                     \
	 : (line) < 200  ? (line) - 35                                                                                     \
	 : (line) < 1000 ? (line) + 70                                                                                     \
	                 : (line))
#endif

#if defined(VERSION_BW1W130)
// BW1W120 null BW1M119 null
extern bool32_t GloveInstalled;
// BW1W120 null BW1M119 null
extern bool32_t HelpTextReloadPending;
#endif

static int PendingTabControlId = 0;

DialogBoxOptions::DialogBoxOptions() {}

bool DialogBoxOptions::CanESCOut()
{
	return GGame::g_game->dialog_box_options->AppliedVideoLevel == GGame::g_game->dialog_box_options->VideoLevel;
}

DialogBoxOptions::~DialogBoxOptions() {}

void DialogBoxOptions::Init(uint32_t background_style, uint32_t tall_background,
                            void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	MaxVideoLevel = 5;
	VideoLevel = 0;
	HelpLevel = 0;
	TextLevel = 0;
	AppliedVideoLevel = 0;
	ToolTipLevel = 0;
	PendingTabControlId = 0;
	DialogBoxBase::Init(background_style, tall_background, callback);
	NEW(62)
	SetupStaticText(DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE, 50, 60, 700, 40,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELPCONTROLS),
	                TEXTJUSTIFY_CENTRE_BREAK);
	HelpLevelButton = NEW(64) SetupButton(DIALOG_BOX_OPTIONS_CONTROL_ID_HELP_BUTTON, 300, 150, 200, 30, L" ", 0);
	HelpLevelButton->text_size = GetMidTextSize();
	HelpLevelDown =
		NEW(66) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_HELP_DOWN, 260, 149, L" ", 32, 0, BBSTYLE_LEFT_ARROW);
	HelpLevelUp =
		NEW(67) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_HELP_UP, 508, 149, L" ", 32, 0, BBSTYLE_RIGHT_ARROW);
	TextLevelButton = NEW(69) SetupButton(DIALOG_BOX_OPTIONS_CONTROL_ID_TEXT_BUTTON, 300, 215, 200, 30, L" ", 0);
	TextLevelButton->text_size = GetMidTextSize();
	TextLevelDown =
		NEW(71) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_TEXT_DOWN, 260, 214, L" ", 32, 0, BBSTYLE_LEFT_ARROW);
	TextLevelUp =
		NEW(72) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_TEXT_UP, 508, 214, L" ", 32, 0, BBSTYLE_RIGHT_ARROW);
	ToolTipLevelButton = NEW(74) SetupButton(DIALOG_BOX_OPTIONS_CONTROL_ID_TOOL_TIP_BUTTON, 300, 280, 200, 30, L" ", 0);
	ToolTipLevelButton->text_size = GetMidTextSize();
	ToolTipLevelDown =
		NEW(76) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_TOOL_TIP_DOWN, 260, 279, L" ", 32, 0, BBSTYLE_LEFT_ARROW);
	ToolTipLevelUp =
		NEW(77) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_TOOL_TIP_UP, 508, 279, L" ", 32, 0, BBSTYLE_RIGHT_ARROW);
	HelpTextSpeed = NEW(79) SetupSlider(DIALOG_BOX_OPTIONS_CONTROL_ID_HELP_TEXT_SPEED, 250, 365, 300, 30, 0.0f,
	                                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELPTEXTSPEED));
	HelpTextSpeed->text_size = GetMidTextSize();
	bool32_t audioInstalled = GGlobal::Global.audio->IsInstalled();
	HelpTextSpeed->Hide(audioInstalled == true);
	CreatureHelp =
		NEW(98) SetupCheckBox(DIALOG_BOX_OPTIONS_CONTROL_ID_CREATURE_HELP, 385, 450, false, BBSTYLE_CHECK_BOX_OFF,
	                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CREATUREHELP), 25);
	LeftHanded =
		NEW(99) SetupCheckBox(DIALOG_BOX_OPTIONS_CONTROL_ID_LEFT_HANDED, 185, 450, false, BBSTYLE_CHECK_BOX_OFF,
	                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LEFTHANDED), 25);
	TextTopToBottom =
		NEW(100) SetupCheckBox(DIALOG_BOX_OPTIONS_CONTROL_ID_TEXT_TOP_TO_BOTTOM, 585, 450, false, BBSTYLE_CHECK_BOX_OFF,
	                           HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_126), 25);
	Back = NEW(110) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_BACK, 30, 530,
	                               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK), 40, 0,
	                               BBSTYLE_LEFT_ARROW);
	Back->text_size = GetMidTextSize();
	AddOptionsTabs(OPTIONS_TAB_OPTIONS);
	mini = NEW(116) MiniDialogBoxOptions;
	mini->Init(780, 500, DialogBoxOptions::ControlCallback);
	immersion = NEW(119) DialogBoxImmersion;
	immersion->Init(780, 500, DialogBoxImmersion::ControlCallback);
}

void DialogBoxOptions::Destroy()
{
	DialogBoxBase::Destroy();
	HelpTextSpeed = NULL;
}

void DialogBoxOptions::InitControls()
{
	if (GGlobal::Global.audio != NULL)
		GGlobal::Global.audio->IsInstalled();
	ToolTipLevel = 0;
	HelpLevel = 0;
	TextLevel = 0;
	VideoLevel = 0;
	MaxVideoLevel = 5;
	ReadRegistrySettings();
	AppliedVideoLevel = VideoLevel;
	mini->InitControls();
	immersion->InitControls();
}

void DialogBoxOptions::SetHelpRadio(int level)
{
	if (level < 0)
		level += 500;
	level %= 5;
	int texts[5] = {HELP_TEXT_DIALOG_NOHELP, HELP_TEXT_DIALOG_LOWHELP, HELP_TEXT_DIALOG_MIDDLEHELP,
	                HELP_TEXT_DIALOG_HIGHHELP, HELP_TEXT_DIALOG_ALLHELP};
	wcscpy(HelpLevelButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(texts[level]));
	HelpLevel = level;
}

int DialogBoxOptions::GetHelpRadio()
{
	return HelpLevel;
}

void DialogBoxOptions::SetVideoRadio(int level)
{
	if (level < 0)
		level += MaxVideoLevel * 100;
	if (MaxVideoLevel <= 0)
		MaxVideoLevel = 1;
	level = abs(level % MaxVideoLevel) % 7;
	int texts[7] = {HELP_TEXT_DIALOG_DETAIL_00, HELP_TEXT_DIALOG_DETAIL_01, HELP_TEXT_DIALOG_DETAIL_02,
	                HELP_TEXT_DIALOG_DETAIL_03, HELP_TEXT_DIALOG_DETAIL_04, HELP_TEXT_DIALOG_DETAIL_05,
	                HELP_TEXT_DIALOG_DETAIL_06};
	wcscpy(GGame::g_game->dialog_box_options->mini->VideoButton->label,
	       HelpTextDataBase::HelpTextDatabase.GetHelpText(texts[level]));
	VideoLevel = level;
}

int DialogBoxOptions::GetVideoRadio()
{
	return VideoLevel;
}

#if defined(VERSION_BW1W130)
int DialogBoxOptions::GetAccelerationRadio()
{
	return AccelerationLevel;
}
#endif

#if defined(VERSION_BW1W130)
void DialogBoxOptions::SetAccelerationRadio(int level)
{
	if (level < 0)
		level = 2;
	else if (level > 2)
		level = 0;
	const wchar_t* texts[3] = {L"Low Acceleration", L"Medium Acceleration", L"High Acceleration"};
	wcscpy(GGame::g_game->dialog_box_options->mini->AccelerationButton->label, texts[level]);
	AccelerationLevel = level;
	P5Motion_SetAcceleration(level);
}

void DialogBoxOptions::SetClickSensorRadio(int level)
{
	if (level < 0)
		level = 2;
	else if (level > 2)
		level = 0;
	const wchar_t* texts[3] = {L"Low Click Sensor", L"Medium Click Sensor", L"High Click Sensor"};
	wcscpy(GGame::g_game->dialog_box_options->mini->ClickSensorButton->label, texts[level]);
	ClickSensorLevel = level;
	nP5ClickSensorLevel = level;
	P5Bend_SetClickSensitivityLevel(ClickSensorLevel);
}

int DialogBoxOptions::GetClickSensorRadio()
{
	return ClickSensorLevel;
}

#endif
void DialogBoxOptions::SetTextRadio(int level)
{
	if (level < 0)
		level += 300;
	level = abs(level) % 3;
	int texts[3] = {HELP_TEXT_DIALOG_NOTEXT, HELP_TEXT_DIALOG_STORYTEXT, HELP_TEXT_DIALOG_ALLTEXT};
	wcscpy(TextLevelButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(texts[level]));
	TextLevel = level;
}

int DialogBoxOptions::GetTextRadio()
{
	return TextLevel;
}

void DialogBoxOptions::SetToolTipRadio(int level)
{
	if (level < 0)
		level += 400;
	level = abs(level) % 4;
	int texts[4] = {HELP_TEXT_DIALOG_NOTOOLTIPS, HELP_TEXT_DIALOG_MINIMUMTOOLTIPS,
	                HELP_TEXT_DIALOG_INTELLIGENTNOTOOLTIPS, HELP_TEXT_DIALOG_ALLTOOLTIPS};
	wcscpy(ToolTipLevelButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(texts[level]));
	ToolTipLevel = level;
}

int DialogBoxOptions::GetToolTipRadio()
{
	return ToolTipLevel;
}

void __stdcall DialogBoxOptions::ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y)
{
	DialogBoxOptions* options = GGame::g_game->dialog_box_options;
	if (options->AppliedVideoLevel == options->VideoLevel)
	{
		ProcessOptionsTabs(event, box, control, x, y);
	}
	else if (event == SETUP_MESSAGE_CLICK && control != NULL)
	{
		int id = control->id;
		if (id >= FRONT_END_TAB_FIRST_ID && id < FRONT_END_TAB_FIRST_ID + FRONT_END_TAB_ID_RANGE &&
		    id != FRONT_END_TAB_FIRST_ID + OPTIONS_TAB_MINI_OPTIONS)
		{
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_VIDEOCHANGE),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			GGame::g_game->dialog_box_options->AppliedVideoLevel = GGame::g_game->dialog_box_options->VideoLevel;
			PendingTabControlId = id;
		}
	}
	switch (event)
	{
	case SETUP_MESSAGE_KEY:
		if (x == KB_ESCAPE && y == 0)
		{
			if (GGame::g_game->dialog_box_options->AppliedVideoLevel != GGame::g_game->dialog_box_options->VideoLevel)
			{
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_VIDEOCHANGE),
				                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
				GGame::g_game->dialog_box_options->AppliedVideoLevel = GGame::g_game->dialog_box_options->VideoLevel;
				PendingTabControlId = 0;
				return;
			}
			DialogBoxBase::Hide();
			return;
		}
		break;
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT:
		if (PendingTabControlId != 0)
		{
			ProcessOptionsTabs(SETUP_MESSAGE_CLICK, box, box->FindControl(PendingTabControlId), x, y);
		}
		else
		{
			DialogBoxBase::Hide();
		}
		if (y == 1 && x == SETUP_MESSAGE_BOX_ID_YES && GGame::g_game != NULL)
		{
			GGame::g_game->QuitBlack();
			return;
		}
		break;
	case SETUP_MESSAGE_ACTIVATE: {
		GAME_VIEW_MODE viewMode = GGame::g_game->ViewMode;
		GGame::g_game->dialog_box_options->mini->QuitButton->Hide(viewMode == GAME_VIEW_MODE_INSIDE_CITADEL);
		PendingTabControlId = 0;
		if (GGlobal::Global.audio != NULL && GGlobal::Global.audio->IsInstalled())
			GGlobal::Global.audio->RegistrySetup();
		GGame::g_game->dialog_box_options->InterfaceActive = GGame::g_game->MyInterface()->IsActive();
		GGame::g_game->dialog_box_options->InitControls();
		return;
	}
	case SETUP_MESSAGE_DEACTIVATE:
		GGame::g_game->dialog_box_options->WriteRegistrySettings();
		if (GGlobal::Global.audio != NULL && GGlobal::Global.audio->IsInstalled())
			GGlobal::Global.audio->RegistryShutdown();
		return;
	case SETUP_MESSAGE_CLICK:
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_HELP_BUTTON ||
		    control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_HELP_UP)
		{
			GGame::g_game->dialog_box_options->SetHelpRadio(GGame::g_game->dialog_box_options->GetHelpRadio() + 1);
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_HELP_DOWN)
		{
			GGame::g_game->dialog_box_options->SetHelpRadio(GGame::g_game->dialog_box_options->GetHelpRadio() - 1);
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_TEXT_BUTTON ||
		    control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_TEXT_UP)
		{
			GGame::g_game->dialog_box_options->SetTextRadio(GGame::g_game->dialog_box_options->GetTextRadio() + 1);
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_TEXT_DOWN)
		{
			GGame::g_game->dialog_box_options->SetTextRadio(GGame::g_game->dialog_box_options->GetTextRadio() - 1);
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_UP_BUTTON ||
		    control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_UP)
		{
			GGame::g_game->dialog_box_options->SetVideoRadio(GGame::g_game->dialog_box_options->GetVideoRadio() + 1);
		}
#if defined(VERSION_BW1W130)
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_BUTTON ||
		    control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_UP)
		{
			GGame::g_game->dialog_box_options->SetAccelerationRadio(
				GGame::g_game->dialog_box_options->GetAccelerationRadio() + 1);
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_DOWN)
		{
			GGame::g_game->dialog_box_options->SetAccelerationRadio(
				GGame::g_game->dialog_box_options->GetAccelerationRadio() - 1);
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_BUTTON ||
		    control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_UP)
		{
			GGame::g_game->dialog_box_options->SetClickSensorRadio(
				GGame::g_game->dialog_box_options->GetClickSensorRadio() + 1);
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_DOWN)
		{
			GGame::g_game->dialog_box_options->SetClickSensorRadio(
				GGame::g_game->dialog_box_options->GetClickSensorRadio() - 1);
		}
#endif
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_TOOL_TIP_DOWN)
		{
			GGame::g_game->dialog_box_options->SetToolTipRadio(GGame::g_game->dialog_box_options->GetToolTipRadio() -
			                                                   1);
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_TOOL_TIP_BUTTON ||
		    control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_TOOL_TIP_UP)
		{
			GGame::g_game->dialog_box_options->SetToolTipRadio(GGame::g_game->dialog_box_options->GetToolTipRadio() +
			                                                   1);
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_DOWN)
		{
			GGame::g_game->dialog_box_options->SetVideoRadio(GGame::g_game->dialog_box_options->GetVideoRadio() - 1);
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_QUIT_GAME)
		{
			if (GGame::g_game->IsMultiplayerGame())
			{
				GGame::g_game->AttemptQuitOfMultiplayerGame();
			}
			else
			{
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_AREYOUSUREQUIT),
				                 MSGBOXSTYLE_YES_NO, 1);
			}
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_BACK)
		{
			if (GGame::g_game->dialog_box_options->AppliedVideoLevel != GGame::g_game->dialog_box_options->VideoLevel)
			{
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_VIDEOCHANGE),
				                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
				GGame::g_game->dialog_box_options->AppliedVideoLevel = GGame::g_game->dialog_box_options->VideoLevel;
				PendingTabControlId = 0;
			}
			else
			{
				DialogBoxBase::Hide();
			}
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_CONTROL_OPTIONS)
		{
			GGame::g_game->dialog_box_key_binding->Show();
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_MINI_AUTOSAVE)
		{
			GGame::g_game->GameFlags =
				(GGame::g_game->GameFlags & ~GAME_FLAG_AUTO_SAVE_ENABLED) |
				((((SetupCheckBox*)box->FindControl(DIALOG_BOX_OPTIONS_CONTROL_ID_MINI_AUTOSAVE))->style & 1) *
			     GAME_FLAG_AUTO_SAVE_ENABLED);
		}
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_MINI_PUSH_SCROLL)
		{
			PlayerProfile::Profile.pushscroll =
				((SetupCheckBox*)box->FindControl(DIALOG_BOX_OPTIONS_CONTROL_ID_MINI_PUSH_SCROLL))->style;
			PlayerProfile::WriteBackToRegistry(PlayerProfile::Profile);
#if !defined(VERSION_BW1W130)
			return;
#endif
		}
#if defined(VERSION_BW1W130)
		if (control->id == DIALOG_BOX_OPTIONS_CONTROL_ID_USE_GLOVE)
		{
			PlayerProfile::Profile.useglove =
				((SetupCheckBox*)box->FindControl(DIALOG_BOX_OPTIONS_CONTROL_ID_USE_GLOVE))->style;
			LHSys::TheSystem.GloveActive = ((SetupCheckBox*)box->FindControl(control->id))->style;
			LHNetSetCurrentProfileUlong("useglove", PlayerProfile::Profile.useglove);
			if (GGame::g_game->help_system->IsDialogueControlled())
			{
				HelpTextReloadPending = true;
				return;
			}
			HelpTextReloadPending = false;
			HelpTextDataBase::HelpTextDatabase.Reload();
			return;
		}
#endif
		break;
	case SETUP_MESSAGE_DRAG:
		switch (control->id)
		{
		case DIALOG_BOX_OPTIONS_CONTROL_ID_MASTER_VOLUME:
			GGlobal::Global.audio->SampleSetMasterVolume(((SetupSlider*)control)->value * 127.0f);
			return;
		case DIALOG_BOX_OPTIONS_CONTROL_ID_MUSIC_VOLUME:
			GGlobal::Global.audio->MusicSetMasterVolume(((SetupSlider*)control)->value * 127.0f);
			return;
		}
		break;
	}
}

void DialogBoxOptions::ReadRegistrySettings()
{
	unsigned long value;
	double        readSpeed;
	SetToolTipRadio(LHNetGetCurrentProfileUlong(TooltipLevelSetting, &value) == LH_OK
	                    ? value
	                    : GGame::g_game->help_system->TooltipLevel);
	SetTextRadio(LHNetGetCurrentProfileUlong(TextDrawSetting, &value) == LH_OK ? value
	                                                                           : GGame::g_game->help_system->TextDraw);
	if (LHNetGetCurrentProfileUlong(CreatureHelpSetting, &value) == LH_OK)
	{
		CreatureHelp->style = value;
	}
	else
	{
		CreatureHelp->style = GGame::g_game->help_system->CreatureHelp;
	}
	SetHelpRadio(LHNetGetCurrentProfileUlong(HelpLevelSetting, &value) == LH_OK
	                 ? value
	                 : GGame::g_game->help_system->GetHelpLevel());
	if (LHNetGetCurrentProfileDouble(ReadSpeedSetting, &readSpeed) == LH_OK)
	{
		HelpTextSpeed->value = readSpeed;
	}
	else
	{
		HelpTextSpeed->value = GGame::g_game->help_system->GetReadSpeed();
	}
	if (LHNetGetCurrentProfileUlong((char*)HandOrientationKey, &value) == LH_OK)
	{
		LeftHanded->style = value;
	}
	else
	{
		LeftHanded->style = 0;
	}
	if (LHNetGetCurrentProfileUlong(TextTopToBottomSetting, &value) == LH_OK)
	{
		TextTopToBottom->style = value;
	}
	else
	{
		TextTopToBottom->style = 0;
	}
#if defined(VERSION_BW1W130)
	if (LHNetGetCurrentProfileUlong("pushscroll", &value) == LH_OK)
	{
		mini->PushScroll->style = value;
	}
	else
	{
		mini->PushScroll->style = 0;
	}
	if (LHNetGetCurrentProfileUlong("useglove", &value) == LH_OK)
	{
		mini->UseGlove->style = value;
	}
	else
	{
		mini->UseGlove->style = 1;
	}
	if (LHNetGetCurrentProfileUlong("glove_accel", &value) == LH_OK)
	{
		AccelerationLevel = value;
	}
	else
	{
		AccelerationLevel = 0;
	}
	SetAccelerationRadio(AccelerationLevel);
	if (LHNetGetCurrentProfileUlong("glove_sense", &value) == LH_OK)
	{
		ClickSensorLevel = value;
	}
	else
	{
		ClickSensorLevel = 0;
	}
	SetClickSensorRadio(ClickSensorLevel);
#else
	if (LHNetGetCurrentProfileUlong("pushscroll", &value) == LH_OK)
	{
		mini->AutoSave->style = value;
	}
	else
	{
		mini->AutoSave->style = 0;
	}
#endif
	if (LHNetGetCurrentProfileUlong("AUTOSAVE", &value) == LH_OK)
	{
		mini->AutoSave->style = value;
	}
	else
	{
		mini->AutoSave->style = 1;
	}
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "maxdetailidx", &value) == LH_OK)
	{
		MaxVideoLevel = value;
	}
	if (RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "detailidx", &value) == LH_OK)
	{
		VideoLevel = value;
	}
	SetVideoRadio(VideoLevel);
	PlayerProfile::SetCurrentProfile(LHNetGetCurrentProfileNameFromRegistry());
	wchar_t name[256];
	PlayerProfile::GetCurrentProfile(name);
	PlayerProfile::GetProfileByName(name, PlayerProfile::Profile);
}

void DialogBoxOptions::WriteRegistrySettings()
{
	LHNetSetCurrentProfileUlong(TooltipLevelSetting, GetToolTipRadio());
	LHNetSetCurrentProfileUlong(TextDrawSetting, GetTextRadio());
	LHNetSetCurrentProfileUlong(CreatureHelpSetting, CreatureHelp->style);
	LHNetSetCurrentProfileUlong(HelpLevelSetting, GetHelpRadio());
	LHNetSetCurrentProfileDouble(ReadSpeedSetting, HelpTextSpeed->value);
	PlayerProfile::Profile.HAND_ORIENTATION = LeftHanded->style;
#if defined(VERSION_BW1W130)
	LHNetSetCurrentProfileUlong("useglove", mini->UseGlove->style);
	LHNetSetCurrentProfileUlong("glove_accel", AccelerationLevel);
	LHNetSetCurrentProfileUlong("glove_sense", ClickSensorLevel);
#endif
	LHNetSetCurrentProfileUlong(TextTopToBottomSetting, TextTopToBottom->style);
	LHNetSetCurrentProfileUlong("AUTOSAVE", (GGame::g_game->GameFlags / GAME_FLAG_AUTO_SAVE_ENABLED) & 1);
	RegistrySetULong(BWSETUP_REGISTRY_KEY, "maxdetailidx", MaxVideoLevel);
	RegistrySetULong(BWSETUP_REGISTRY_KEY, "detailidx", VideoLevel);
	if (GGame::g_game->Initialised)
	{
		GGame::g_game->ReadRegistrySettings();
		GGame::g_game->help_system->ReadRegistrySettings();
		GGame::g_game->MyInterface()->hand.Get()->ReadRegistrySettings();
	}
	PlayerProfile::WriteBackToRegistry(PlayerProfile::Profile);
}

DialogBoxImmersion::DialogBoxImmersion() {}

DialogBoxImmersion::~DialogBoxImmersion() {}

void DialogBoxImmersion::SetLevelRadio(int level)
{
	if (level < 0)
		level += 300;
	level = abs(level) % 3;
	int texts[3] = {HELP_TEXT_IMMERSION_MOUSE_05, HELP_TEXT_IMMERSION_MOUSE_06, HELP_TEXT_IMMERSION_MOUSE_07};
	wcscpy(LevelButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(texts[level]));
	Level = level;
}

static void IDLevel(SetupBox* box, SetupControl* control)
{
	GGame::g_game->dialog_box_options->immersion->SetLevelRadio(GGame::g_game->dialog_box_options->immersion->Level +
	                                                            1);
}

static void IDLevelD(SetupBox* box, SetupControl* control)
{
	GGame::g_game->dialog_box_options->immersion->SetLevelRadio(GGame::g_game->dialog_box_options->immersion->Level -
	                                                            1);
}

static void IDLevelU(SetupBox* box, SetupControl* control)
{
	GGame::g_game->dialog_box_options->immersion->SetLevelRadio(GGame::g_game->dialog_box_options->immersion->Level +
	                                                            1);
}

static void IDBack(SetupBox* box, SetupControl* control)
{
	DialogBoxBase::Hide();
}

void DialogBoxImmersion::Init(uint32_t background_style, uint32_t tall_background,
                              void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Title = NEW(753) SetupStaticText(DIALOG_BOX_IMMERSION_CONTROL_ID_TEXT, 50, 60, 700, 40,
	                                 HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_71),
	                                 TEXTJUSTIFY_CENTRE_BREAK);
	Description = NEW(754) SetupStaticText(DIALOG_BOX_IMMERSION_CONTROL_ID_TEXT, 50, 440, 700, 90,
	                                       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_71),
	                                       TEXTJUSTIFY_CENTRE_BREAK);
	Description->text_size = 30;
	LevelButton = NEW(758) SetupButton(DIALOG_BOX_IMMERSION_CONTROL_ID_LEVEL_BUTTON, 300, 200, 200, 30, L" ", 0);
	LevelButton->text_size = GetMidTextSize();
	LevelButton->ContinueButtonCallback = IDLevel;
	LevelDown =
		NEW(761) SetupBigButton(DIALOG_BOX_IMMERSION_CONTROL_ID_LEVEL_DOWN, 260, 199, L" ", 32, 0, BBSTYLE_LEFT_ARROW);
	LevelDown->ContinueButtonCallback = IDLevelD;
	LevelUp =
		NEW(763) SetupBigButton(DIALOG_BOX_IMMERSION_CONTROL_ID_LEVEL_UP, 508, 199, L" ", 32, 0, BBSTYLE_RIGHT_ARROW);
	LevelUp->ContinueButtonCallback = IDLevelU;
	Back = NEW(766) SetupBigButton(DIALOG_BOX_IMMERSION_CONTROL_ID_BACK, 30, 530,
	                               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK), 40, 0,
	                               BBSTYLE_LEFT_ARROW);
	Back->ContinueButtonCallback = IDBack;
	Back->text_size = GetMidTextSize();
	AddOptionsTabs(OPTIONS_TAB_IMMERSION);
}

void DialogBoxImmersion::Destroy()
{
	DialogBoxBase::Destroy();
}

void DialogBoxImmersion::InitControls()
{
	Level = PlayerProfile::Profile.IMMERSION_KEY;
	SetLevelRadio(Level);
}

void __stdcall DialogBoxImmersion::ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y)
{
	ProcessOptionsTabs(event, box, control, x, y);
	switch (event)
	{
	case SETUP_MESSAGE_ACTIVATE:
		GGame::g_game->dialog_box_options->immersion->InitControls();
		return;
	case SETUP_MESSAGE_UPDATE: {
		DialogBoxImmersion* immersion = GGame::g_game->dialog_box_options->immersion;
		int textId = immersion->Level <= 0 ? HELP_TEXT_IMMERSION_MOUSE_EXTRA_01
		                                   : (immersion->Level >= 2) + HELP_TEXT_IMMERSION_MOUSE_EXTRA_02;
		wcscpy(immersion->Description->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(textId));
		if (GatheringText::bubmat != NULL)
		{
			SetupThing::DrawBox(257, 295, 542, 384, 0.25f, 0.75f, 1.0f, 1.0f, GatheringText::bubmat,
			                    &LH3DColor(0xff, 0xff, 0xff, 0xff), true, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
		}
		return;
	}
	case SETUP_MESSAGE_DEACTIVATE:
		PlayerProfile::Profile.IMMERSION_KEY = GGame::g_game->dialog_box_options->immersion->Level;
		PlayerProfile::WriteBackToRegistry(PlayerProfile::Profile);
		return;
	case SETUP_MESSAGE_CLICK:
		if (control->ContinueButtonCallback != NULL)
			control->ContinueButtonCallback(box, control);
		break;
	}
}

MiniDialogBoxOptions::MiniDialogBoxOptions() {}

MiniDialogBoxOptions::~MiniDialogBoxOptions() {}

static void MDOMasterVolumeDrag(SetupBox* box, SetupControl* control);
static void MDOMusicDrag(SetupBox* box, SetupControl* control);
static void MDOBack(SetupBox* box, SetupControl* control);
static void MDOVideoU(SetupBox* box, SetupControl* control);
static void MDOVideoD(SetupBox* box, SetupControl* control);
#if defined(VERSION_BW1W130)
static void MDOAccelerationU(SetupBox* box, SetupControl* control);
static void MDOAccelerationD(SetupBox* box, SetupControl* control);
static void MDOClickSensorU(SetupBox* box, SetupControl* control);
static void MDOClickSensorD(SetupBox* box, SetupControl* control);
#endif

#if defined(VERSION_BW1W130)
void MiniDialogBoxOptions::Init(uint32_t background_style, uint32_t tall_background,
                                void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	SoundTitle =
		NEW(1038) SetupStaticText(DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE, 50, 60, 700, 40,
	                              HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SOUNDANDVIDEOCONTROL),
	                              TEXTJUSTIFY_CENTRE_BREAK);
	bool32_t audioInstalled = GGlobal::Global.audio->IsInstalled();
	AutoSave =
		NEW(1043) SetupCheckBox(DIALOG_BOX_OPTIONS_CONTROL_ID_MINI_AUTOSAVE, 185, 450, false, BBSTYLE_CHECK_BOX_OFF,
	                            HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_AUTOSAVE), 25);
	AutoSave->style = BBSTYLE_CHECK_BOX_ON;
	UseGlove = NEW(1046) SetupCheckBox(DIALOG_BOX_OPTIONS_CONTROL_ID_USE_GLOVE, 385, 450, false, BBSTYLE_CHECK_BOX_OFF,
	                                   L"Use P5 Glove", 25);
	UseGlove->style = BBSTYLE_CHECK_BOX_ON;
	UseGlove->Hide(GloveInstalled == false);
	PushScroll =
		NEW(1051) SetupCheckBox(DIALOG_BOX_OPTIONS_CONTROL_ID_MINI_PUSH_SCROLL, 585, 450, false, BBSTYLE_CHECK_BOX_OFF,
	                            HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_116), 25);
	PushScroll->style = BBSTYLE_CHECK_BOX_OFF;
	if (GloveInstalled)
	{
		MasterVolume =
			NEW(1056) SetupSlider(DIALOG_BOX_OPTIONS_CONTROL_ID_MASTER_VOLUME, 250, 110, 300, 30, 0.0f,
		                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MASTERVOLUME));
		MasterVolume->text_size = GetMidTextSize();
		MasterVolume->ContinueButtonCallback = MDOMasterVolumeDrag;
		MusicVolume =
			NEW(1059) SetupSlider(DIALOG_BOX_OPTIONS_CONTROL_ID_MUSIC_VOLUME, 250, 145, 300, 30, 0.0f,
		                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MUSICVOLUME));
		MusicVolume->text_size = GetMidTextSize();
		MusicVolume->ContinueButtonCallback = MDOMusicDrag;
		VideoTitle = NEW(1063) SetupStaticText(
			DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE, 50, 200, 700, 40,
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_VIDEOCONTROL), TEXTJUSTIFY_CENTRE);
		SoundsOffText = NEW(1064) SetupStaticText(
			DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE, 50, 270, 700, 140,
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SOUNDS_OFF_01), TEXTJUSTIFY_CENTRE_BREAK);
		SoundsOffText->text_size = GetMidTextSize();
		GloveTitle = NEW(1067) SetupStaticText(DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE, 50, 200, 700, 40, L"Glove Options",
		                                       TEXTJUSTIFY_CENTRE);
		AccelerationButton =
			NEW(1069) SetupButton(DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_BUTTON, 300, 240, 200, 30, L" ", 0);
		AccelerationButton->text_size = GetMidTextSize();
		AccelerationButton->ContinueButtonCallback = MDOAccelerationU;
		AccelerationUp = NEW(1072)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_UP, 508, 239, L" ", 32, 0, BBSTYLE_RIGHT_ARROW);
		AccelerationUp->ContinueButtonCallback = MDOAccelerationD;
		AccelerationDown = NEW(1074)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_DOWN, 260, 239, L" ", 32, 0, BBSTYLE_LEFT_ARROW);
		AccelerationDown->ContinueButtonCallback = MDOAccelerationU;
		ClickSensorButton =
			NEW(1077) SetupButton(DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_BUTTON, 300, 275, 200, 30, L" ", 0);
		ClickSensorButton->text_size = GetMidTextSize();
		ClickSensorButton->ContinueButtonCallback = MDOClickSensorU;
		ClickSensorUp = NEW(1080)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_UP, 508, 274, L" ", 32, 0, BBSTYLE_RIGHT_ARROW);
		ClickSensorUp->ContinueButtonCallback = MDOClickSensorD;
		ClickSensorDown = NEW(1082)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_DOWN, 260, 274, L" ", 32, 0, BBSTYLE_LEFT_ARROW);
		ClickSensorDown->ContinueButtonCallback = MDOClickSensorU;
		VideoButton = NEW(1085) SetupButton(DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_UP_BUTTON, 300, 350, 200, 30, L" ", 0);
		VideoButton->text_size = GetMidTextSize();
		VideoButton->ContinueButtonCallback = MDOVideoU;
		VideoDown = NEW(1088)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_DOWN, 260, 349, L" ", 32, 0, BBSTYLE_LEFT_ARROW);
		VideoDown->ContinueButtonCallback = MDOVideoD;
		VideoUp = NEW(1090)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_UP, 508, 349, L" ", 32, 0, BBSTYLE_RIGHT_ARROW);
		VideoUp->ContinueButtonCallback = MDOVideoU;
	}
	else
	{
		MasterVolume =
			NEW(1095) SetupSlider(DIALOG_BOX_OPTIONS_CONTROL_ID_MASTER_VOLUME, 250, 140, 300, 30, 0.0f,
		                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MASTERVOLUME));
		MasterVolume->text_size = GetMidTextSize();
		MasterVolume->ContinueButtonCallback = MDOMasterVolumeDrag;
		MusicVolume =
			NEW(1098) SetupSlider(DIALOG_BOX_OPTIONS_CONTROL_ID_MUSIC_VOLUME, 250, 200, 300, 30, 0.0f,
		                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MUSICVOLUME));
		MusicVolume->text_size = GetMidTextSize();
		MusicVolume->ContinueButtonCallback = MDOMusicDrag;
		VideoTitle = NEW(1102) SetupStaticText(
			DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE, 50, 280, 700, 40,
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_VIDEOCONTROL), TEXTJUSTIFY_CENTRE);
		SoundsOffText = NEW(1103) SetupStaticText(
			DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE, 50, 270, 700, 140,
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SOUNDS_OFF_01), TEXTJUSTIFY_CENTRE_BREAK);
		SoundsOffText->text_size = GetMidTextSize();
		GloveTitle = NEW(1106) SetupStaticText(DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE, 50, 200, 700, 40, L"Glove Options",
		                                       TEXTJUSTIFY_CENTRE);
		AccelerationButton =
			NEW(1108) SetupButton(DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_BUTTON, 300, 240, 200, 30, L" ", 0);
		AccelerationButton->text_size = GetMidTextSize();
		AccelerationButton->ContinueButtonCallback = MDOAccelerationU;
		AccelerationButton->Hide(true);
		AccelerationUp = NEW(1112)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_UP, 508, 239, L" ", 32, 0, BBSTYLE_RIGHT_ARROW);
		AccelerationUp->ContinueButtonCallback = MDOAccelerationD;
		AccelerationUp->Hide(true);
		AccelerationDown = NEW(1115)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_DOWN, 260, 239, L" ", 32, 0, BBSTYLE_LEFT_ARROW);
		AccelerationDown->ContinueButtonCallback = MDOAccelerationU;
		AccelerationDown->Hide(true);
		ClickSensorButton =
			NEW(1119) SetupButton(DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_BUTTON, 300, 275, 200, 30, L" ", 0);
		ClickSensorButton->text_size = GetMidTextSize();
		ClickSensorButton->ContinueButtonCallback = MDOClickSensorU;
		ClickSensorButton->Hide(true);
		ClickSensorUp = NEW(1123)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_UP, 508, 274, L" ", 32, 0, BBSTYLE_RIGHT_ARROW);
		ClickSensorUp->ContinueButtonCallback = MDOClickSensorD;
		ClickSensorUp->Hide(true);
		ClickSensorDown = NEW(1126)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_DOWN, 260, 274, L" ", 32, 0, BBSTYLE_LEFT_ARROW);
		ClickSensorDown->ContinueButtonCallback = MDOClickSensorU;
		ClickSensorDown->Hide(true);
		VideoButton = NEW(1131) SetupButton(DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_UP_BUTTON, 300, 350, 200, 30, L" ", 0);
		VideoButton->text_size = GetMidTextSize();
		VideoButton->ContinueButtonCallback = MDOVideoU;
		VideoDown = NEW(1134)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_DOWN, 260, 349, L" ", 32, 0, BBSTYLE_LEFT_ARROW);
		VideoDown->ContinueButtonCallback = MDOVideoD;
		VideoUp = NEW(1136)
			SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_UP, 508, 349, L" ", 32, 0, BBSTYLE_RIGHT_ARROW);
		VideoUp->ContinueButtonCallback = MDOVideoU;
	}
	GGame::g_game->dialog_box_options->SetVideoRadio(GGame::g_game->dialog_box_options->GetVideoRadio());
	MasterVolume->Hide(audioInstalled == false);
	MusicVolume->Hide(audioInstalled == false);
	MasterVolume->value = GGlobal::Global.audio->SampleGetMasterVolume() * (1.0f / 127.0f);
	MusicVolume->value = GGlobal::Global.audio->MusicGetMasterVolume() * (1.0f / 127.0f);
	Back = NEW(1168) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_BACK, 30, 530,
	                                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK), 40, 0,
	                                BBSTYLE_LEFT_ARROW);
	Back->ContinueButtonCallback = MDOBack;
	Back->text_size = GetMidTextSize();
	QuitButton = NEW(1172) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_QUIT_GAME, 730, 530,
	                                      HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_QUIT), 40, 1,
	                                      BBSTYLE_RIGHT_ARROW);
	QuitButton->ContinueButtonCallback = MDOBack;
	QuitButton->text_size = GetMidTextSize();
	QuitButton->ContinueButtonCallback = MMQuitButton;
	AddOptionsTabs(OPTIONS_TAB_MINI_OPTIONS);
}
#else
void MiniDialogBoxOptions::Init(uint32_t background_style, uint32_t tall_background,
                                void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	SoundTitle =
		NEW(940) SetupStaticText(DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE, 50, 60, 700, 40,
	                             HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SOUNDANDVIDEOCONTROL),
	                             TEXTJUSTIFY_CENTRE_BREAK);
	bool32_t audioInstalled = GGlobal::Global.audio->IsInstalled();
	AutoSave =
		NEW(945) SetupCheckBox(DIALOG_BOX_OPTIONS_CONTROL_ID_MINI_AUTOSAVE, 285, 450, false, BBSTYLE_CHECK_BOX_OFF,
	                           HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_AUTOSAVE), 25);
	AutoSave->style = BBSTYLE_CHECK_BOX_ON;
	PushScroll =
		NEW(948) SetupCheckBox(DIALOG_BOX_OPTIONS_CONTROL_ID_MINI_PUSH_SCROLL, 485, 450, false, BBSTYLE_CHECK_BOX_OFF,
	                           HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_116), 25);
	PushScroll->style = BBSTYLE_CHECK_BOX_OFF;
	MasterVolume = NEW(951) SetupSlider(DIALOG_BOX_OPTIONS_CONTROL_ID_MASTER_VOLUME, 250, 140, 300, 30, 0.0f,
	                                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MASTERVOLUME));
	MasterVolume->text_size = GetMidTextSize();
	MasterVolume->ContinueButtonCallback = MDOMasterVolumeDrag;
	MusicVolume = NEW(954) SetupSlider(DIALOG_BOX_OPTIONS_CONTROL_ID_MUSIC_VOLUME, 250, 200, 300, 30, 0.0f,
	                                   HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MUSICVOLUME));
	MusicVolume->text_size = GetMidTextSize();
	MusicVolume->ContinueButtonCallback = MDOMusicDrag;
	VideoTitle = NEW(958) SetupStaticText(DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE, 50, 280, 700, 40,
	                                      HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_VIDEOCONTROL),
	                                      TEXTJUSTIFY_CENTRE);
	SoundsOffText = NEW(959) SetupStaticText(
		DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE, 50, 270, 700, 140,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SOUNDS_OFF_01), TEXTJUSTIFY_CENTRE_BREAK);
	SoundsOffText->text_size = GetMidTextSize();
	VideoButton = NEW(963) SetupButton(DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_UP_BUTTON, 300, 350, 200, 30, L" ", 0);
	VideoButton->text_size = GetMidTextSize();
	VideoButton->ContinueButtonCallback = MDOVideoU;
	VideoDown =
		NEW(966) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_DOWN, 260, 349, L" ", 32, 0, BBSTYLE_LEFT_ARROW);
	VideoDown->ContinueButtonCallback = MDOVideoD;
	VideoUp =
		NEW(968) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_UP, 508, 349, L" ", 32, 0, BBSTYLE_RIGHT_ARROW);
	VideoUp->ContinueButtonCallback = MDOVideoU;
	GGame::g_game->dialog_box_options->SetVideoRadio(GGame::g_game->dialog_box_options->GetVideoRadio());
	MasterVolume->Hide(audioInstalled == false);
	MusicVolume->Hide(audioInstalled == false);
	MasterVolume->value = GGlobal::Global.audio->SampleGetMasterVolume() * (1.0f / 127.0f);
	MusicVolume->value = GGlobal::Global.audio->MusicGetMasterVolume() * (1.0f / 127.0f);
	Back = NEW(999) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_BACK, 30, 530,
	                               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK), 40, 0,
	                               BBSTYLE_LEFT_ARROW);
	Back->ContinueButtonCallback = MDOBack;
	Back->text_size = GetMidTextSize();
	QuitButton = NEW(1003) SetupBigButton(DIALOG_BOX_OPTIONS_CONTROL_ID_QUIT_GAME, 730, 530,
	                                      HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_QUIT), 40, 1,
	                                      BBSTYLE_RIGHT_ARROW);
	QuitButton->ContinueButtonCallback = MDOBack;
	QuitButton->text_size = GetMidTextSize();
	QuitButton->ContinueButtonCallback = MMQuitButton;
	AddOptionsTabs(OPTIONS_TAB_MINI_OPTIONS);
}

#endif

static void MDOMasterVolumeDrag(SetupBox* box, SetupControl* control)
{
	GGlobal::Global.audio->SampleSetMasterVolume(((SetupSlider*)control)->value * 127.0f);
}

static void MDOMusicDrag(SetupBox* box, SetupControl* control)
{
	GGlobal::Global.audio->MusicSetMasterVolume(((SetupSlider*)control)->value * 127.0f);
}

static void MDOBack(SetupBox* box, SetupControl* control)
{
	if (GGame::g_game->dialog_box_options->AppliedVideoLevel != GGame::g_game->dialog_box_options->VideoLevel)
	{
		box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_VIDEOCHANGE),
		                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
		GGame::g_game->dialog_box_options->AppliedVideoLevel = GGame::g_game->dialog_box_options->VideoLevel;
		PendingTabControlId = 0;
		return;
	}
	DialogBoxBase::Hide();
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
		GGame::g_game->temple->GoToRoom(TEMPLE_ROOM_WORLD);
}

static int LastVideoClickTime = -1;

static bool VideoClickAllowed()
{
	int now = GetTickCount();
	if (now - LastVideoClickTime > 300)
	{
		LastVideoClickTime = now;
		return true;
	}
	return false;
}

static void MDOVideoU(SetupBox* box, SetupControl* control)
{
	if (VideoClickAllowed())
		GGame::g_game->dialog_box_options->SetVideoRadio(GGame::g_game->dialog_box_options->GetVideoRadio() + 1);
}

static void MDOVideoD(SetupBox* box, SetupControl* control)
{
	if (VideoClickAllowed())
		GGame::g_game->dialog_box_options->SetVideoRadio(GGame::g_game->dialog_box_options->GetVideoRadio() - 1);
}

#if defined(VERSION_BW1W130)
static void MDOAccelerationU(SetupBox* box, SetupControl* control)
{
	if (VideoClickAllowed())
		GGame::g_game->dialog_box_options->SetAccelerationRadio(
			GGame::g_game->dialog_box_options->GetAccelerationRadio() + 1);
}

static void MDOAccelerationD(SetupBox* box, SetupControl* control)
{
	if (VideoClickAllowed())
		GGame::g_game->dialog_box_options->SetAccelerationRadio(
			GGame::g_game->dialog_box_options->GetAccelerationRadio() - 1);
}

static void MDOClickSensorU(SetupBox* box, SetupControl* control)
{
	if (VideoClickAllowed())
		GGame::g_game->dialog_box_options->SetClickSensorRadio(
			GGame::g_game->dialog_box_options->GetClickSensorRadio() + 1);
}

static void MDOClickSensorD(SetupBox* box, SetupControl* control)
{
	if (VideoClickAllowed())
		GGame::g_game->dialog_box_options->SetClickSensorRadio(
			GGame::g_game->dialog_box_options->GetClickSensorRadio() - 1);
}
#endif

void MiniDialogBoxOptions::Destroy()
{
	DialogBoxBase::Destroy();
}

#if defined(VERSION_BW1W130)
void MiniDialogBoxOptions::InitControls()
{
	bool32_t audioInstalled = GGlobal::Global.audio->IsInstalled();
	MasterVolume->Hide(audioInstalled == false);
	MusicVolume->Hide(audioInstalled == false);
	SoundTitle->Hide(audioInstalled == false);
	SoundsOffText->Hide(audioInstalled == true);
	GloveTitle->Hide(GloveInstalled == false);
	MasterVolume->value = GGlobal::Global.audio->SampleGetMasterVolume() * (1.0f / 127.0f);
	MusicVolume->value = GGlobal::Global.audio->MusicGetMasterVolume() * (1.0f / 127.0f);
	wcscpy(SoundTitle->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SOUNDANDVIDEOCONTROL));
	SoundTitle->rect.end.y -= SoundTitle->rect.start.y;
	VideoTitle->rect.end.y -= VideoTitle->rect.start.y;
	VideoButton->rect.end.y -= VideoButton->rect.start.y;
	VideoDown->rect.end.y -= VideoDown->rect.start.y;
	VideoUp->rect.end.y -= VideoUp->rect.start.y;
	if (GloveInstalled)
	{
		if (audioInstalled)
		{
			VideoTitle->rect.start.y = 345;
			VideoButton->rect.start.y = 390;
			VideoUp->rect.start.y = 389;
			VideoDown->rect.start.y = 389;
			GloveTitle->rect.start.y = 200;
		}
		else
		{
			VideoTitle->rect.start.y = 60;
			VideoButton->rect.start.y = 120;
			VideoUp->rect.start.y = 119;
			VideoDown->rect.start.y = 119;
			GloveTitle->rect.start.y = 200;
		}
	}
	else if (audioInstalled)
	{
		VideoTitle->rect.start.y = 280;
		VideoButton->rect.start.y = 350;
		VideoUp->rect.start.y = 349;
		VideoDown->rect.start.y = 349;
	}
	else
	{
		VideoTitle->rect.start.y = 60;
		VideoButton->rect.start.y = 120;
		VideoUp->rect.start.y = 119;
		VideoDown->rect.start.y = 119;
	}
	SoundTitle->rect.end.y += SoundTitle->rect.start.y;
	VideoTitle->rect.end.y += VideoTitle->rect.start.y;
	VideoButton->rect.end.y += VideoButton->rect.start.y;
	VideoDown->rect.end.y += VideoDown->rect.start.y;
	VideoUp->rect.end.y += VideoUp->rect.start.y;
}
#else
void MiniDialogBoxOptions::InitControls()
{
	bool32_t audioInstalled = GGlobal::Global.audio->IsInstalled();
	MasterVolume->Hide(audioInstalled == false);
	MusicVolume->Hide(audioInstalled == false);
	SoundTitle->Hide(audioInstalled == false);
	SoundsOffText->Hide(audioInstalled == true);
	MasterVolume->value = GGlobal::Global.audio->SampleGetMasterVolume() * (1.0f / 127.0f);
	MusicVolume->value = GGlobal::Global.audio->MusicGetMasterVolume() * (1.0f / 127.0f);
	wcscpy(SoundTitle->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SOUNDANDVIDEOCONTROL));
	SoundTitle->rect.end.y -= SoundTitle->rect.start.y;
	VideoTitle->rect.end.y -= VideoTitle->rect.start.y;
	VideoButton->rect.end.y -= VideoButton->rect.start.y;
	VideoDown->rect.end.y -= VideoDown->rect.start.y;
	VideoUp->rect.end.y -= VideoUp->rect.start.y;
	if (audioInstalled)
	{
		VideoTitle->rect.start.y = 280;
		VideoButton->rect.start.y = 350;
		VideoUp->rect.start.y = 349;
		VideoDown->rect.start.y = 349;
	}
	else
	{
		VideoTitle->rect.start.y = 60;
		VideoButton->rect.start.y = 120;
		VideoUp->rect.start.y = 119;
		VideoDown->rect.start.y = 119;
	}
	SoundTitle->rect.end.y += SoundTitle->rect.start.y;
	VideoTitle->rect.end.y += VideoTitle->rect.start.y;
	VideoButton->rect.end.y += VideoButton->rect.start.y;
	VideoDown->rect.end.y += VideoDown->rect.start.y;
	VideoUp->rect.end.y += VideoUp->rect.start.y;
}

#endif

bool MiniDialogBoxOptions::CanESCOut()
{
	return GGame::g_game->dialog_box_options->AppliedVideoLevel == GGame::g_game->dialog_box_options->VideoLevel;
}

void __stdcall MiniDialogBoxOptions::ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y)
{
	ProcessOptionsTabs(event, box, control, x, y);
	switch (event)
	{
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT:
		if (MainMenu::QuitPending)
		{
			MainMenu::QuitPending = false;
			if (x == SETUP_MESSAGE_BOX_ID_YES)
			{
				DialogBoxBase::HideAll();
				GGame::g_game->QuitBlack();
				return;
			}
		}
		break;
	case SETUP_MESSAGE_ACTIVATE:
		if (GGlobal::Global.audio != NULL && GGlobal::Global.audio->IsInstalled())
			GGlobal::Global.audio->RegistrySetup();
		GGame::g_game->dialog_box_options->InitControls();
		return;
	case SETUP_MESSAGE_DEACTIVATE:
		if (GGlobal::Global.audio != NULL && GGlobal::Global.audio->IsInstalled())
			GGlobal::Global.audio->RegistryShutdown();
		GGame::g_game->dialog_box_options->WriteRegistrySettings();
		return;
	case SETUP_MESSAGE_CLICK:
		if (control->ContinueButtonCallback != NULL)
			control->ContinueButtonCallback(box, control);
		return;
	case SETUP_MESSAGE_DRAG:
		if (control->ContinueButtonCallback != NULL)
			control->ContinueButtonCallback(box, control);
		break;
	}
}
