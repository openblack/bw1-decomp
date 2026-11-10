#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include "MPFELogin.h"

#include <io.h>     /* For _chmod, _unlink */
#include <string.h> /* For strcpy, strcmp, strlen, wcscpy */
#include <sys/stat.h>
#include <windows.h> /* For MoveFileA, ShowWindow */

#include <Lionhead/LHLib/ver5.0/LHScreen.h> /* For LHScreen::MsWindowHandle */
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys::GetScreen */
#include <Lionhead/LHLib/ver5.0/LHWin.h>    /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHLogger.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHFileDownload.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h> /* For LHLobby::TakeServerOffLan */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetErrors.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHTransportInfo.h>

#include <chlasm/HelpTextEnums.h>

#include "alexmfc.h"              /* For SetupBigButton, SetupEdit, SetupStaticText */
#include "FrontEnd.h"             /* For WCHAR2CHAR */
#include "HelpText.h"             /* For HelpTextDataBase::HelpTextDatabase */
#include "LayerCommunication.h"   /* For LayerCommunication */
#include "LHNetBase.h"            /* For LHNetBase::Instance, RunWebPage */
#include "LoginBox.h"             /* For LoginBox::RegisterURL */
#include "MPFEConnectionStatus.h" /* For MPFEConnectionStatus::Status */
#include "MPFEData.h"             /* For MPFEData::Data */
#include "PlayerProfile.h"        /* For PlayerProfile::Profile */

#if !defined(VERSION_BW1W120) && !defined(VERSION_BW1W130)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - 7)
#endif

#define MPFE_LOGIN_COLOUR 0xe0e0e0

#define MPFE_LOGIN_CONDITION_SERVER    "storage.bwgame.com"
#define MPFE_LOGIN_CONDITION_PATH      "/bwmaps/"
#define MPFE_LOGIN_CONDITION_FILE      "ConditionTemplate.txt"
#define MPFE_LOGIN_CONDITION_TEMP_FILE ".\\Online Maps\\ConditionTemplate.tmp"
#define MPFE_LOGIN_CONDITION_LOCAL     ".\\Online Maps\\ConditionTemplate.txt"

#define MPFE_LOGIN_MULTIPLAYER_TEXT_DOWNLOAD_FAILED 25

// BW1W120 00630a90
static void OnClickBack(SetupBox* box, SetupControl* control);
// BW1W120 00630aa0
static void OnClickLogin(SetupBox* box, SetupControl* control);
// BW1W120 00630fd0
static void OnMessageBox(SetupBox* box, SetupControl* control, int button, int message_box);

MPFELogin MPFELogin::Instance;

MPFELogin::MPFELogin()
{
	strcpy(LoginServer, "login.bwgame.com");
	Init(780, 500, ControlCallback);
	setup_box->TallBackground = 1;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	ConditionDownload = NULL;
#endif
}

MPFELogin::~MPFELogin() {}

void MPFELogin::InitControls()
{
	LHLobby::TakeServerOffLan();
	wcscpy(BackButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK));
	wcscpy(LoginButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_96));
	wcscpy(TitleText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_86));
	wcscpy(NameText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_USERNAME_LABEL));
	wcscpy(PasswordText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_PASSWORD_LABEL));
	wcscpy(NameEdit->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_USERNAME_LABEL));
	PasswordEdit->MaskedText = true;
	NameEdit->MaxLength = MPFE_LOGIN_MAX_TEXT_LENGTH;
	PasswordEdit->MaxLength = MPFE_LOGIN_MAX_TEXT_LENGTH;
	NameEdit->SetText(PlayerProfile::Profile.LoginName);
	PasswordEdit->SetText(PlayerProfile::Profile.LoginPassword);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	ConditionDownload = NEW(42) LHFileDownload;
	ConditionDownload->StopDownload();
#endif
	setup_box->SetFocusControl(NameEdit);
}

void MPFELogin::Init(uint32_t background_style, uint32_t tall_background,
                     void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);

	BackButton = NEW(130)
		SetupBigButton(MPFE_LOGIN_CONTROL_ID_BACK, 30, 530, L"", 40, SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	BackButton->ContinueButtonCallback = OnClickBack;
	LoginButton = NEW(132)
		SetupBigButton(MPFE_LOGIN_CONTROL_ID_LOGIN, 730, 530, L"", 40, SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	LoginButton->ContinueButtonCallback = OnClickLogin;

	PasswordText = NEW(136) SetupStaticText(MPFE_LOGIN_CONTROL_ID_LABEL, 110, 370, 200, 45, L"", TEXTJUSTIFY_RIGHT);
	PasswordText->text_size = GetBigTextSize();
	NameText = NEW(140) SetupStaticText(MPFE_LOGIN_CONTROL_ID_LABEL, 110, 250, 200, 45, L"", TEXTJUSTIFY_RIGHT);
	NameText->text_size = GetBigTextSize();

	NameEdit = NEW(145) SetupEdit(MPFE_LOGIN_CONTROL_ID_EDIT, 325, 250, 230, 40, L"", true);
	NameEdit->text_size = GetMidTextSize();
	PasswordEdit = NEW(149) SetupEdit(MPFE_LOGIN_CONTROL_ID_EDIT, 325, 370, 230, 40, L"", true);
	PasswordEdit->text_size = GetMidTextSize();

	TitleText = NEW(152) SetupStaticText(MPFE_LOGIN_CONTROL_ID_TITLE, 40, 70, 720, 40, L"", TEXTJUSTIFY_CENTRE);
	TitleText->text_size = GetBigTextSize();
}

static void OnClickBack(SetupBox* box, SetupControl* control)
{
	MPFEConnectionStatus::Status.LeaveLoginScreen();
}

static void OnClickLogin(SetupBox* box, SetupControl* control)
{
	char name[0x100];
	strcpy(name, WCHAR2CHAR(MPFELogin::Instance.NameEdit->label));
	char password[0x100];
	strcpy(password, WCHAR2CHAR(MPFELogin::Instance.PasswordEdit->label));

	LHTransportInfo server;
	server.Set(MPFELogin::Instance.LoginServer, MPFE_LOGIN_PORT);

	if (strcmp(password, "") == 0)
	{
		box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_171),
		                 MSGBOXSTYLE_SINGLE_BUTTON, LOBBY_MESSAGE_BOX_NONE);
		return;
	}

	LH_RETURN result = LHNetBase::Instance.User->Login(name, password, &server);
	MPFEData::Data.LocalPlayerID = LHNetBase::Instance.User->GetID();
	if (result != LH_OK)
	{
		if (LHLogger::GetCode() == LH_NET_LOG_ERROR_USER_NOT_REGISTERED)
		{
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_YOUARENOTREGISTERED),
			                 MSGBOXSTYLE_YES_NO, LOBBY_MESSAGE_BOX_REGISTER);
			return;
		}
		if (LHLogger::GetCode() == LH_NET_LOG_ERROR_INVALID_LOGIN)
		{
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_INVALIDDETAILS),
			                 MSGBOXSTYLE_SINGLE_BUTTON, LOBBY_MESSAGE_BOX_NONE);
			return;
		}
		box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_171),
		                 MSGBOXSTYLE_SINGLE_BUTTON, LOBBY_MESSAGE_BOX_NONE);
		return;
	}

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	MPFELogin::Instance.ConditionDownload->DownloadFile(MPFE_LOGIN_CONDITION_SERVER, MPFE_LOGIN_PORT,
	                                                    MPFE_LOGIN_CONDITION_PATH, MPFE_LOGIN_CONDITION_FILE,
	                                                    MPFE_LOGIN_CONDITION_TEMP_FILE, false);
#endif
	MPFEDatabase::InitFromDisk();
	box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_50),
	                 MSGBOXSTYLE_NO_BUTTONS, LOBBY_MESSAGE_BOX_LOGGING_IN);
	MPFELogin::Instance.Database.Start();
}

void MPFELogin::Destroy() {}

bool MPFELogin::CanLogin()
{
	return true;
}

void MPFELogin::SuccessfulLogin()
{
	wcscpy(PlayerProfile::Profile.LoginName, NameEdit->label);
	wcscpy(PlayerProfile::Profile.LoginPassword, PasswordEdit->label);
	PlayerProfile::WriteBackToRegistry(PlayerProfile::Profile);
	LHNetBase::UpdateUserData();
	MPFEConnectionStatus::Status.DoLogin();
}

void __stdcall MPFELogin::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	if (Instance.Database.Querying)
	{
		Instance.Database.Refresh();
	}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (Instance.ConditionDownload != NULL && !Instance.ConditionDownload->IsIdle())
	{
		LH_FILE_DOWNLOAD_RETURNS result = Instance.ConditionDownload->Refresh();
		if (result == LH_FILE_DOWNLOAD_REQUEST_FAILED || result == LH_FILE_DOWNLOAD_CONNECT_FAILED ||
		    result == LH_FILE_DOWNLOAD_TIMED_OUT)
		{
			box->SetOffHold();
			box->MessageBoxA(
				HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(MPFE_LOGIN_MULTIPLAYER_TEXT_DOWNLOAD_FAILED),
				MSGBOXSTYLE_YES_NO, LOBBY_MESSAGE_BOX_REGISTER);
		}
	}
#endif
	switch (message)
	{
	case SETUP_MESSAGE_PRE_DRAW: {
		int alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = alpha / 2;
		SetupThing::DrawBox(Instance.TitleText->rect.start.x, Instance.TitleText->rect.start.y,
		                    Instance.TitleText->rect.end.x, Instance.TitleText->rect.end.y, MPFE_LOGIN_COLOUR,
		                    MPFE_LOGIN_COLOUR, MPFE_LOGIN_COLOUR, MPFE_LOGIN_COLOUR, 1, 1);
		SetupThing::DrawAlpha = alpha;
		break;
	}
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT:
		OnMessageBox(box, control, data1, data2);
		break;
	case SETUP_MESSAGE_ACTIVATE:
		Instance.InitControls();
		break;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	case SETUP_MESSAGE_DEACTIVATE:
		Instance.ConditionDownload->StopDownload();
		delete Instance.ConditionDownload;
		break;
#endif
	case SETUP_MESSAGE_CLICK:
		if (control->id != 0 && control->ContinueButtonCallback != NULL)
		{
			control->ContinueButtonCallback(box, control);
		}
		break;
	case SETUP_MESSAGE_UPDATE:
		if (MPFEData::Data.Layer != NULL)
		{
			MPFEData::Data.Layer->Process();
		}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		if (Instance.ConditionDownload->GetPercentageDownloaded() == 1.0f &&
		    Instance.Database.ProgressPercentage == 100.0f)
		{
			_chmod(MPFE_LOGIN_CONDITION_LOCAL, _S_IREAD | _S_IWRITE);
			_unlink(MPFE_LOGIN_CONDITION_LOCAL);
			MoveFileA(MPFE_LOGIN_CONDITION_TEMP_FILE, MPFE_LOGIN_CONDITION_LOCAL);
			Instance.SuccessfulLogin();
			Instance.Database.ProgressPercentage = 0.0f;
		}
#endif
		break;
	}
}

static void OnMessageBox(SetupBox* box, SetupControl* control, int button, int message_box)
{
	if (message_box == LOBBY_MESSAGE_BOX_REGISTER)
	{
		if (button == SETUP_MESSAGE_BOX_ID_YES)
		{
			RunWebPage(LoginBox::RegisterURL);
			ShowWindow(LHSys::GetScreen().MsWindowHandle, SW_MINIMIZE);
		}
	}
	else if (message_box == LOBBY_MESSAGE_BOX_LOGGING_IN)
	{
		if (button == SETUP_MESSAGE_BOX_ID_YES || button == SETUP_MESSAGE_BOX_ID_OK ||
		    button == SETUP_MESSAGE_BOX_ID_CANCEL)
		{
			MPFELogin::Instance.Database.Stop();
			MPFELogin::Instance.SuccessfulLogin();
		}
	}
	else if (message_box == LOBBY_MESSAGE_BOX_CONNECTING)
	{
		if (button == SETUP_MESSAGE_BOX_ID_CANCEL)
		{
			MPFEData::Data.Layer->Disconnect();
		}
	}
}

MPFELoginDatabase::MPFELoginDatabase() {}

MPFELoginDatabase::~MPFELoginDatabase() {}

void MPFELoginDatabase::Start()
{
	RepopulateDatabase();
}

void MPFELoginDatabase::Stop()
{
	StopQuerying();
}

void MPFELoginDatabase::Refresh()
{
	if (Querying)
	{
		RefreshDatabase();
	}
}

void MPFELoginDatabase::DatabaseError()
{
	MPFEDatabase::DatabaseError();
	MPFELogin::Instance.setup_box->SetOffHold();
	MPFELogin::Instance.setup_box->MessageBoxA(
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_53), MSGBOXSTYLE_SINGLE_BUTTON,
		LOBBY_MESSAGE_BOX_LOGGING_IN);
}

void MPFELoginDatabase::DatabaseComplete()
{
	MPFEDatabase::DatabaseComplete();
#if !defined(VERSION_BW1W120) && !defined(VERSION_BW1W130)
	MPFELogin::Instance.SuccessfulLogin();
#endif
}
