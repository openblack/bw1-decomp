#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include "MPFEFindGame.h"

#include <string.h> /* For wcscpy */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include <chlasm/HelpTextEnums.h>

#include "alexmfc.h"              /* For SetupBigButton, SetupCheckBox, SetupStaticText */
#include "HelpText.h"             /* For HelpTextDataBase::HelpTextDatabase */
#include "MPFEConnectionStatus.h" /* For MPFEConnectionStatus::Status */
#include "MPFEData.h"             /* For MPFEData */

#define MPFE_FIND_GAME_COLOUR 0xe0e0e0

// BW1W120 0062f820
static void BackPressed(SetupBox* box, SetupControl* control);
// BW1W120 0062f830
static void NextPressed(SetupBox* box, SetupControl* control);
// BW1W120 0062f860
static void LanPressed(SetupBox* box, SetupControl* control);
// BW1W120 0062f890
static void InternetPressed(SetupBox* box, SetupControl* control);

MPFEFindGame MPFEFindGame::Instance;

MPFEFindGame::MPFEFindGame()
{
	BackButton = NULL;
	Text = NULL;
	InternetCheckBox = NULL;
	LanCheckBox = NULL;
	Init(780, 500, ControlCallback);
	setup_box->TallBackground = 1;
	LanSelected = true;
}

MPFEFindGame::~MPFEFindGame()
{
	if (BackButton != NULL)
	{
		delete BackButton;
	}
	BackButton = NULL;
	if (Text != NULL)
	{
		delete Text;
	}
	Text = NULL;
	if (InternetCheckBox != NULL)
	{
		delete InternetCheckBox;
	}
	InternetCheckBox = NULL;
	if (LanCheckBox != NULL)
	{
		delete LanCheckBox;
	}
	LanCheckBox = NULL;
}

void MPFEFindGame::Init(uint32_t background_style, uint32_t tall_background,
                        void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);

	BackButton = new (FILEPATH, 70)
		SetupBigButton(MPFE_FIND_GAME_CONTROL_ID_BACK, 30, 530, L"", 40, SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	BackButton->ContinueButtonCallback = BackPressed;
	NextButton = new (FILEPATH, 72) SetupBigButton(MPFE_FIND_GAME_CONTROL_ID_NEXT, 730, 530, L"", 40,
	                                               SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	NextButton->ContinueButtonCallback = NextPressed;

	Text = new (FILEPATH, 76) SetupStaticText(MPFE_FIND_GAME_CONTROL_ID_TEXT, 40, 70, 720, 40, L"", TEXTJUSTIFY_CENTRE);
	Text->text_size = GetBigTextSize();

	LanCheckBox =
		new (FILEPATH, 79) SetupCheckBox(MPFE_FIND_GAME_CONTROL_ID_LAN, 260, 250, true, BBSTYLE_CHECK_BOX_ON, L"", 40);
	LanCheckBox->ContinueButtonCallback = LanPressed;
	LanCheckBox->text_size = GetBigTextSize();
	LanCheckBox->text_position = SETUP_TEXT_POSITION_RIGHT;

	InternetCheckBox = new (FILEPATH, 84)
		SetupCheckBox(MPFE_FIND_GAME_CONTROL_ID_INTERNET, 260, 370, false, BBSTYLE_CHECK_BOX_OFF, L"", 40);
	InternetCheckBox->text_position = SETUP_TEXT_POSITION_RIGHT;
	InternetCheckBox->ContinueButtonCallback = InternetPressed;
	InternetCheckBox->text_size = GetBigTextSize();
}

static void BackPressed(SetupBox* box, SetupControl* control)
{
	MPFEConnectionStatus::Status.LeaveLobbyTypeScreen();
}

static void NextPressed(SetupBox* box, SetupControl* control)
{
	if (MPFEFindGame::Instance.InternetCheckBox->style != BBSTYLE_CHECK_BOX_OFF)
	{
		MPFEConnectionStatus::Status.SetLobbyType(LOBBY_TYPE_INTERNET);
	}
	else
	{
		MPFEConnectionStatus::Status.SetLobbyType(LOBBY_TYPE_LAN);
	}
}

static void LanPressed(SetupBox* box, SetupControl* control)
{
	MPFEFindGame::Instance.LanSelected = true;
	MPFEFindGame::Instance.InternetCheckBox->style = BBSTYLE_CHECK_BOX_OFF;
	MPFEFindGame::Instance.LanCheckBox->style = BBSTYLE_CHECK_BOX_ON;
}

static void InternetPressed(SetupBox* box, SetupControl* control)
{
	MPFEFindGame::Instance.LanSelected = false;
	MPFEFindGame::Instance.LanCheckBox->style = BBSTYLE_CHECK_BOX_OFF;
	MPFEFindGame::Instance.InternetCheckBox->style = BBSTYLE_CHECK_BOX_ON;
}

void MPFEFindGame::Destroy() {}

void MPFEFindGame::InitControls()
{
	wcscpy(Text->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_38));
	wcscpy(BackButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ALLTEXT));
	wcscpy(InternetCheckBox->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_86));
	wcscpy(LanCheckBox->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_87));
	wcscpy(NextButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_78));
	LanCheckBox->style = BBSTYLE_CHECK_BOX_OFF;
	InternetCheckBox->style = BBSTYLE_CHECK_BOX_OFF;
	if (LanSelected)
	{
		LanCheckBox->style = BBSTYLE_CHECK_BOX_ON;
	}
	else
	{
		InternetCheckBox->style = BBSTYLE_CHECK_BOX_ON;
	}
}

void __stdcall MPFEFindGame::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	switch (message)
	{
	case SETUP_MESSAGE_CLICK:
		if (control != NULL && control->ContinueButtonCallback != NULL)
		{
			control->ContinueButtonCallback(box, control);
		}
		break;
	case SETUP_MESSAGE_ACTIVATE:
		Instance.InitControls();
		break;
	case SETUP_MESSAGE_PRE_DRAW: {
		int alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = alpha / 2;
		SetupThing::DrawBox(Instance.Text->rect.start.x, Instance.Text->rect.start.y, Instance.Text->rect.end.x,
		                    Instance.Text->rect.end.y, MPFE_FIND_GAME_COLOUR, MPFE_FIND_GAME_COLOUR,
		                    MPFE_FIND_GAME_COLOUR, MPFE_FIND_GAME_COLOUR, 1, 1);
		SetupThing::DrawAlpha = alpha;
		break;
	}
	}
}
