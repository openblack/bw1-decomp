#include "FrontEndSetupMultiplayer.h"

#include <string.h> /* For strcmp */

#include <chlasm/HelpTextEnums.h>                     /* For HELP_TEXT_* */
#include <chlasm/LHKeyBoard.h>                        /* For KB_RETURN */
#include <Lionhead/LHLib/ver5.0/LHWin.h>              /* For NEW */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h> /* For LHCheckForInternetConnection */

#include "alexmfc.h"
#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */
#include "FrontEnd.h"          /* For FrontEnd::LobbyDialog */
#include "HelpText.h"          /* For HelpTextDataBase::HelpTextDatabase */
#include "LobbyBox.h"          /* For LobbyBox::ControlsInitialised */
#include "SetupMultiplayerMain.h"
#include "SetupOnlineLandscapes.h"
#include "SLobbyBox.h" /* For GSLobbyBox::Instance */
#include "SpellSetupBox.h"

SetupMultiplayerMain* SetupMultiplayerMain::Instance = NULL;

static void OnTickBox(SetupBox* box, SetupControl* control);
static void OnClickLandscapeButton(SetupBox* box, SetupControl* control);
static void OnClickRandomButton(SetupBox* box, SetupControl* control);

void SetupMultiplayerMain::Init(uint32_t background_style, uint32_t tall_background,
                                void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	Help = NEW(77) SetupEdit(SETUP_MULTIPLAYER_MAIN_CONTROL_ID_HELP, 150, 525, 500, 30, L" ", false);
	Help->text_size = GetSmallTextSize();
	Accept = NEW(81) SetupBigButton(SETUP_MULTIPLAYER_MAIN_CONTROL_ID_ACCEPT, 720, 520,
	                                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_04), 40, 1,
	                                BBSTYLE_RIGHT_ARROW);
	SelectMapButton =
		NEW(84) SetupButton(SETUP_MULTIPLAYER_MAIN_CONTROL_ID_SELECT_MAP, 400, 150, 200, 100,
	                        HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_36), 0);
	SelectMapButton->ContinueButtonCallback = OnClickLandscapeButton;
	SetupRandomLandscapeButton =
		NEW(87) SetupButton(SETUP_MULTIPLAYER_MAIN_CONTROL_ID_SETUP_RANDOM_LANDSCAPE, 400, 300, 200, 100,
	                        HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_37), 0);
	SetupRandomLandscapeButton->ContinueButtonCallback = OnClickRandomButton;
	DownloadedLevels =
		NEW(90) SetupCheckBox(SETUP_MULTIPLAYER_MAIN_CONTROL_ID_DOWNLOADED_LEVELS, 275, 190, true, BBSTYLE_CHECK_BOX_ON,
	                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_38), 20);
	RandomLandscapes = NEW(92)
		SetupCheckBox(SETUP_MULTIPLAYER_MAIN_CONTROL_ID_RANDOM_LANDSCAPES, 275, 340, true, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_39), 20);
	DownloadedLevels->ContinueButtonCallback = OnTickBox;
	RandomLandscapes->ContinueButtonCallback = OnTickBox;
}

static void OnClickRandomButton(SetupBox* box, SetupControl* control)
{
	SetupLandscapeBox::Instance->Show();
}

static void OnClickLandscapeButton(SetupBox* box, SetupControl* control)
{
	if (!LHCheckForInternetConnection(CheckInternetConnectionOptions))
	{
		box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_125),
		                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
		return;
	}
	SetupOnlineLandscapes::Instance->ChosenMap = &SetupMultiplayerMain::Instance->Data.CustomMap;
	SetupOnlineLandscapes::Instance->ChoosingMap = true;
	SetupOnlineLandscapes::Instance->Show();
}

static void OnTickBox(SetupBox* box, SetupControl* control)
{
	bool choose_map = false;
	if (control == SetupMultiplayerMain::Instance->DownloadedLevels)
	{
		if (!SetupOnlineLandscapes::Instance->AnyMapsAvailable())
		{
			((SetupCheckBox*)control)->style = BBSTYLE_CHECK_BOX_OFF;
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_22),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			return;
		}
		choose_map = true;
	}
	SetupCheckBox* other = control == SetupMultiplayerMain::Instance->DownloadedLevels
	                           ? SetupMultiplayerMain::Instance->RandomLandscapes
	                           : SetupMultiplayerMain::Instance->DownloadedLevels;
	SetupButton*   show = control == SetupMultiplayerMain::Instance->DownloadedLevels
	                          ? SetupMultiplayerMain::Instance->SelectMapButton
	                          : SetupMultiplayerMain::Instance->SetupRandomLandscapeButton;
	SetupButton*   hide = control == SetupMultiplayerMain::Instance->DownloadedLevels
	                          ? SetupMultiplayerMain::Instance->SetupRandomLandscapeButton
	                          : SetupMultiplayerMain::Instance->SelectMapButton;
	SetupMultiplayerMain::Instance->Data.UseCustomMap = control == SetupMultiplayerMain::Instance->DownloadedLevels;
	if (((SetupCheckBox*)control)->style == BBSTYLE_CHECK_BOX_OFF)
	{
		((SetupCheckBox*)control)->style = BBSTYLE_CHECK_BOX_ON;
		return;
	}
	other->style = BBSTYLE_CHECK_BOX_OFF;
	show->Hide(false);
	hide->Hide(true);
	if (choose_map && strcmp(SetupMultiplayerMain::Instance->Data.CustomMap.FileName, "") == 0)
		OnClickLandscapeButton(box, control);
}

void SetupMultiplayerMain::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void SetupMultiplayerMain::InitControls()
{
	Instance->setup_box->DefaultTextSize = GetSmallTextSize();
	if (!ReloadSettings)
		Data = *CurrentData;
	ReloadSettings = false;
	SelectMapButton->Hide(!Data.UseCustomMap);
	DownloadedLevels->style = Data.UseCustomMap;
	SetupRandomLandscapeButton->Hide(Data.UseCustomMap);
	RandomLandscapes->style = !Data.UseCustomMap;
}

void __stdcall SetupMultiplayerMain::ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	switch (message)
	{
	case SETUP_MESSAGE_ACTIVATE:
		Instance->InitControls();
		break;
	case SETUP_MESSAGE_DEACTIVATE:
		GSLobbyBox::Instance->ControlsInitialised = true;
		FrontEnd::LobbyDialog->ControlsInitialised = true;
		break;
	case SETUP_MESSAGE_KEY:
		if ((x == KB_ENTER || x == KB_RETURN) && y == 0)
			;
		else if (x == KB_ESCAPE && y == 0)
			control = Instance->Accept;
		else
			break;
	case SETUP_MESSAGE_CLICK:
		if (control == NULL)
			break;
		if (control->ContinueButtonCallback != NULL)
		{
			control->ContinueButtonCallback(box, control);
			break;
		}
		if (control->id == SETUP_MULTIPLAYER_MAIN_CONTROL_ID_ACCEPT && !control->hidden)
		{
			*Instance->CurrentData = Instance->Data;
			GSLobbyBox::Instance->ControlsInitialised = true;
			DialogBoxBase::Hide();
		}
		break;
	case SETUP_MESSAGE_UPDATE: {
		control = box->FindControl(x, y);
		SetupEdit* help = Instance->Help;
		if (control == NULL)
			break;
		help->SetText(L"");
		break;
	}
	}
}

void SetupMultiplayerMain::InitSubDialogs()
{
	LandscapeDialog = NEW(188) SetupLandscapeBox;
	LandscapeDialog->Init(748, 548, SetupLandscapeBox::ControlCallback);
	LandscapeDialog->OriginalSettings = &Data;
	LandscapeDialog->InitSubDialogs();
}

void SetupLandscapeBox::InitSubDialogs()
{
	SpellDialog = NEW(196) SpellSetupBox;
	SpellDialog->Init(748, 548, SpellSetupBox::ControlCallback);
	SpellDialog->OriginalSettings = &Settings;
}
