#include <io.h>     /* For _filelength */
#include <math.h>   /* For cos, sin, sqrt */
#include <stdio.h>  /* For fopen */
#include <string.h> /* For strcpy */
#include <wchar.h>  /* For wcslen */

#include <chlasm/HelpTextEnums.h>            /* For HELP_TEXT_* */
#include <chlasm/LHKeyBoard.h>               /* For KB_RETURN */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h> /* For LHOSFile::Exists */
#include <Lionhead/LH3DLib/development/LH3DMaterial.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For TWO_PI */
#include <Lionhead/LH3DLib/development/LH3DRender.h> /* For LH3DRender::CreateMaterial */
#include <Lionhead/LH3DLib/development/LH3DText.h>   /* For CHAR2WCHAR */
#include <Lionhead/LH3DLib/development/LH3DTexture.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For NEW */

#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"
#include "alexmfc.h"
#include "FrontEndSetupGame.h"
#include "FrontEndSetupMultiplayer.h" /* For SetupLandscapeBox */
#include "HelpText.h"                 /* For HelpTextDataBase::HelpTextDatabase */
#include "FrontEnd.h"                 /* For FrontEnd::LobbyDialog */
#include "LandscapeDetails.h"         /* For LandscapeDetails */
#include "LobbyBox.h"                 /* For LobbyBox::Instance */
#include "MapThumbImage.h"            /* For MapThumbImage */
#include "Player.h"                   /* For GPlayer::PlayerColours */
#include "SetupMultiplayerMain.h"
#include "SetupOnlineLandscapes.h"
#include "SLobbyBox.h" /* For GSLobbyBox::Instance */
#include "SpellSetupBox.h"

#define SPELL_SETUP_BOX_NUM_SPELLS                 10
#define ONLINE_MAPS_DIRECTORY                      ".\\Online Maps\\"
#define ONLINE_MAPS_GLOBAL_LIST                    ONLINE_MAPS_DIRECTORY "GlobalList.txt"
#define ONLINE_MAPS_MAP_PATH                       ONLINE_MAPS_DIRECTORY "%s.map"
#define ONLINE_MAPS_THUMB_PATH                     ONLINE_MAPS_DIRECTORY "Thumbs\\%s.thm"
#define ONLINE_MAPS_LIST_HOST                      "www.bwgamess.com"
#define ONLINE_MAPS_HOST                           "www.bwgame.com"
#define ONLINE_MAPS_HTTP_PORT                      80
#define ONLINE_MAPS_SERVER_PATH                    "/dan_test_maps/"
#define ONLINE_MAPS_LIST_FILE                      "GlobalList.txt"
#define SETUP_LANDSCAPE_BOX_LEVEL_LOW              0.3f
#define SETUP_LANDSCAPE_BOX_LEVEL_HIGH             0.6f
#define SETUP_LANDSCAPE_BOX_MAX_GUARANTEED_PLAYERS 7
#define THUMBNAIL_POINT_COLOUR(colour)                                                                                 \
	((uint8_t)((((colour) >> 20) & 0xf) | ((uint8_t)((colour) >> 28) << 4)) << 8 | (((colour) >> 12) & 0xf) |          \
	 ((colour) & 0xf0))

SetupLandscapeBox*       SetupLandscapeBox::Instance = NULL;
SpellSetupBox*           SpellSetupBox::Instance = NULL;
static LandscapeDetails* SelectedLandscape = NULL;
SetupOnlineLandscapes*   SetupOnlineLandscapes::Instance = NULL;

static bool ListDownloadFailed = false;

static const char ServerMapFileHeader[] = "LiOnHeAd server_map_file";

void UpdateDownloadProgress(SetupBox* box);

static void OnSetupSpells(SetupBox* box, SetupControl* control);

void SetupLandscapeBox::Init(uint32_t background_style, uint32_t tall_background,
                             void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	Help = NEW(66) SetupEdit(SETUP_LANDSCAPE_BOX_CONTROL_ID_HELP, 150, 525, 500, 30, L" ", false);
	Help->text_size = GetSmallTextSize();
	Accept = NEW(71) SetupBigButton(SETUP_LANDSCAPE_BOX_CONTROL_ID_ACCEPT, 40, 520,
	                                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_04), 40, 0,
	                                BBSTYLE_LEFT_ARROW);
	Cancel = NEW(72) SetupBigButton(SETUP_LANDSCAPE_BOX_CONTROL_ID_CANCEL, 720, 520,
	                                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_03), 40, 1,
	                                BBSTYLE_RIGHT_ARROW);
	Name = NEW(79) SetupEdit(SETUP_LANDSCAPE_BOX_CONTROL_ID_NAME, 100, 440, 100, 30, L"", true);
	NameLabel = NEW(80) SetupStaticText(SETUP_CONTROL_ID_NONE, 100, 410, 110, 40,
	                                    HelpTextData::GetTextL(HELP_TEXT_MULTIPLAYER_SETUP_LABEL_06));
	GuaranteedPlayersLabel = NEW(81) SetupStaticText(SETUP_CONTROL_ID_NONE, 100, 80, 210, 40, L"");
	swprintf(GuaranteedPlayersLabel->label,
	         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_GUARANTEED_PLAYERS_01),
	         Settings.GuaranteedPlayers);
	GuaranteedPlayers =
		NEW(85) SetupSlider(SETUP_LANDSCAPE_BOX_CONTROL_ID_GUARANTEED_PLAYERS, 100, 100, 100, 20, 0.0f, L"");
	CitadelTowns = NEW(87)
		SetupCheckBox(SETUP_LANDSCAPE_BOX_CONTROL_ID_CITADEL_TOWNS, 100, 130, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_CITADEL_TOWNS_01), 20);
	CitadelTowns->text_position = SETUP_TEXT_POSITION_RIGHT;
	NeutralTowns = NEW(89)
		SetupCheckBox(SETUP_LANDSCAPE_BOX_CONTROL_ID_NEUTRAL_TOWNS, 400, 130, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_NEUTRAL_TOWNS_01), 20);
	NeutralTowns->text_position = SETUP_TEXT_POSITION_RIGHT;
	CreatureAllowed = NEW(91) SetupCheckBox(
		SETUP_LANDSCAPE_BOX_CONTROL_ID_CREATURE_ALLOWED, 100, 160, false, BBSTYLE_CHECK_BOX_OFF,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_CREATURE_ALLOWED_01), 20);
	CreatureAllowed->text_position = SETUP_TEXT_POSITION_RIGHT;
	RocksAllowed = NEW(93)
		SetupCheckBox(SETUP_LANDSCAPE_BOX_CONTROL_ID_ROCKS_ALLOWED, 400, 160, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_ROCKS_ALLOWED_01), 20);
	RocksAllowed->text_position = SETUP_TEXT_POSITION_RIGHT;
	TreesAllowed = NEW(95)
		SetupCheckBox(SETUP_LANDSCAPE_BOX_CONTROL_ID_TREES_ALLOWED, 100, 190, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_TREES_ALLOWED_01), 20);
	TreesAllowed->text_position = SETUP_TEXT_POSITION_RIGHT;
	FieldsAllowed = NEW(97) SetupCheckBox(
		SETUP_LANDSCAPE_BOX_CONTROL_ID_FIELDS_ALLOWED, 400, 190, false, BBSTYLE_CHECK_BOX_OFF,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_FIELDS_ALLOWED_01), 20);
	FieldsAllowed->text_position = SETUP_TEXT_POSITION_RIGHT;
	FishAllowed = NEW(99)
		SetupCheckBox(SETUP_LANDSCAPE_BOX_CONTROL_ID_FISH_ALLOWED, 100, 220, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_FISH_ALLOWED_01), 20);
	FishAllowed->text_position = SETUP_TEXT_POSITION_RIGHT;
	Sliders[0] = NEW(105) SetupSlider(SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_0, 100, 290, 100, 20, 0.0f, L"");
	SliderLabels[0] = NEW(106) SetupStaticText(SETUP_CONTROL_ID_NONE, 100, 260, 250, 30, L"");
	swprintf(SliderLabels[0]->label,
	         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_LABEL_03),
	         get_type_string(Settings.Sliders[1]));
	Sliders[1] = NEW(109) SetupSlider(SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_1, 320, 290, 100, 20, 0.0f, L"");
	SliderLabels[1] = NEW(110) SetupStaticText(SETUP_CONTROL_ID_NONE, 320, 260, 250, 30, L"");
	swprintf(SliderLabels[1]->label,
	         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_LABEL_04),
	         get_type_string(Settings.Sliders[0]));
	Sliders[2] = NEW(112) SetupSlider(SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_2, 540, 290, 100, 20, 0.0f, L"");
	SliderLabels[2] = NEW(113) SetupStaticText(SETUP_CONTROL_ID_NONE, 540, 260, 250, 30, L"");
	swprintf(SliderLabels[2]->label,
	         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_LABEL_05),
	         get_type_string(Settings.Sliders[0]));
	FirstMapLabel = NEW(117) SetupStaticText(SETUP_CONTROL_ID_NONE, 100, 310, 250, 30,
	                                         HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_01));
	FirstMapList = NEW(118) SetupList(SETUP_LANDSCAPE_BOX_CONTROL_ID_FIRST_MAP_LIST, 100, 350, 200, 60);
	SecondMapLabel = NEW(121) SetupStaticText(SETUP_CONTROL_ID_NONE, 320, 310, 250, 30,
	                                          HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_02));
	SecondMapList = NEW(122) SetupList(SETUP_LANDSCAPE_BOX_CONTROL_ID_SECOND_MAP_LIST, 320, 350, 200, 60);
	SpellsButton =
		NEW(124) SetupButton(SETUP_LANDSCAPE_BOX_CONTROL_ID_SPELLS, 320, 440, 200, 30,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_03), 0);
	SpellsButton->ContinueButtonCallback = OnSetupSpells;
}

wchar_t* get_type_string(float value)
{
	static wchar_t text[512];
	if (value < SETUP_LANDSCAPE_BOX_LEVEL_LOW)
		wcscpy(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_LEVEL_01));
	else if (value > SETUP_LANDSCAPE_BOX_LEVEL_HIGH)
		wcscpy(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_LEVEL_03));
	else
		wcscpy(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_LEVEL_02));
	return text;
}

static void OnSetupSpells(SetupBox* box, SetupControl* control)
{
	SetupLandscapeBox::Instance->SpellDialog->Show();
}

void SetupLandscapeBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void SetupLandscapeBox::InitControls()
{
	Instance->setup_box->DefaultTextSize = GetSmallTextSize();
	if (ReloadSettings)
		Settings = *OriginalSettings;
	ReloadSettings = false;
	CitadelTowns->style = Settings.CitadelTowns;
	NeutralTowns->style = Settings.NeutralTowns;
	FishAllowed->style = Settings.FishAllowed;
	CreatureAllowed->style = Settings.CreatureAllowed;
	FieldsAllowed->style = Settings.FieldsAllowed;
	GuaranteedPlayers->SetValue(Settings.GuaranteedPlayers * (1.0f / SETUP_LANDSCAPE_BOX_MAX_GUARANTEED_PLAYERS), 0.0f,
	                            1.0f);
	RocksAllowed->style = Settings.RocksAllowed;
	TreesAllowed->style = Settings.TreesAllowed;
	Sliders[1]->SetValue(Settings.Sliders[0], 0.0f, 1.0f);
	Sliders[0]->SetValue(Settings.Sliders[1], 0.0f, 1.0f);
	Sliders[2]->SetValue(Settings.Sliders[2], 0.0f, 1.0f);
	FirstMapList->DeleteAll();
	FirstMapList->AddString(HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_04), 0, 0, 0);
	FirstMapList->AddString(HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_05), 0, 0, 0);
	FirstMapList->AddString(HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_06), 0, 0, 0);
	FirstMapList->AddString(HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_07), 0, 0, 0);
	FirstMapList->AddString(HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_08), 0, 0, 0);
	SecondMapList->DeleteAll();
	SecondMapList->AddString(HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_09), 0, 0, 0);
	SecondMapList->AddString(HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_10), 0, 0, 0);
	SecondMapList->AddString(HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_11), 0, 0, 0);
	SecondMapList->AddString(HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_12), 0, 0, 0);
	SecondMapList->SetSelected(Settings.SecondMapOption);
	FirstMapList->SetSelected(Settings.FirstMapOption);
}

void __stdcall SetupLandscapeBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	switch (message)
	{
	case SETUP_MESSAGE_ACTIVATE:
		Instance->InitControls();
		break;
	case SETUP_MESSAGE_DEACTIVATE:
		SetupMultiplayerMain::Instance->ReloadSettings = true;
		break;
	case SETUP_MESSAGE_DRAG:
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_GUARANTEED_PLAYERS && !control->hidden)
		{
			Instance->Settings.GuaranteedPlayers = (int)Instance->GuaranteedPlayers->GetValue(2.0f, 7.0f);
			swprintf(Instance->GuaranteedPlayersLabel->label,
			         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_GUARANTEED_PLAYERS_01),
			         Instance->Settings.GuaranteedPlayers);
		}
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_0 && !control->hidden)
		{
			Instance->Settings.Sliders[1] = Instance->Sliders[0]->value;
			swprintf(Instance->SliderLabels[0]->label,
			         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_LABEL_03),
			         get_type_string(Instance->Settings.Sliders[1]));
		}
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_1 && !control->hidden)
		{
			Instance->Settings.Sliders[0] = Instance->Sliders[1]->value;
			swprintf(Instance->SliderLabels[1]->label,
			         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_LABEL_04),
			         get_type_string(Instance->Settings.Sliders[0]));
		}
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_2 && !control->hidden)
		{
			Instance->Settings.Sliders[2] = Instance->Sliders[2]->value;
			swprintf(Instance->SliderLabels[2]->label,
			         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_LABEL_05),
			         get_type_string(Instance->Settings.Sliders[2]));
		}
		break;
	case SETUP_MESSAGE_KEY:
		if ((x == KB_ENTER || x == KB_RETURN) && y == 0)
			;
		else if (x == KB_ESCAPE && y == 0)
			control = Instance->Cancel;
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
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_ACCEPT && !control->hidden)
		{
			*Instance->OriginalSettings = Instance->Settings;
			strcpy(Instance->OriginalSettings->GameName, WCHAR2CHAR(Instance->Name->label));
			GSLobbyBox::Instance->ControlsInitialised = true;
			FrontEnd::LobbyDialog->ControlsInitialised = true;
			DialogBoxBase::Hide();
		}
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_CANCEL && !control->hidden)
		{
			FrontEnd::LobbyDialog->ControlsInitialised = true;
			DialogBoxBase::Hide();
		}
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_CITADEL_TOWNS && !control->hidden)
			Instance->Settings.CitadelTowns = !Instance->Settings.CitadelTowns;
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_NEUTRAL_TOWNS && !control->hidden)
			Instance->Settings.NeutralTowns = !Instance->Settings.NeutralTowns;
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_CREATURE_ALLOWED && !control->hidden)
			Instance->Settings.CreatureAllowed = !Instance->Settings.CreatureAllowed;
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_ROCKS_ALLOWED && !control->hidden)
			Instance->Settings.RocksAllowed = !Instance->Settings.RocksAllowed;
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_TREES_ALLOWED && !control->hidden)
			Instance->Settings.TreesAllowed = !Instance->Settings.TreesAllowed;
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_FIELDS_ALLOWED && !control->hidden)
			Instance->Settings.FieldsAllowed = !Instance->Settings.FieldsAllowed;
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_FISH_ALLOWED && !control->hidden)
			Instance->Settings.FishAllowed = !Instance->Settings.FishAllowed;
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_SECOND_MAP_LIST && !control->hidden)
			Instance->Settings.SecondMapOption = Instance->SecondMapList->GetSelected();
		if (control->id == SETUP_LANDSCAPE_BOX_CONTROL_ID_FIRST_MAP_LIST && !control->hidden)
			Instance->Settings.FirstMapOption = Instance->FirstMapList->GetSelected();
		break;
	case SETUP_MESSAGE_UPDATE: {
		control = box->FindControl(x, y);
		SetupEdit* help = Instance->Help;
		if (control == NULL)
			break;
		switch (control->id)
		{
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_NAME:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_LABEL_06));
			break;
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_GUARANTEED_PLAYERS:
			break;
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_CITADEL_TOWNS:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_01));
			break;
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_NEUTRAL_TOWNS:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_03));
			break;
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_CREATURE_ALLOWED:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_04));
			break;
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_ROCKS_ALLOWED:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_05));
			break;
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_TREES_ALLOWED:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_06));
			break;
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_FIELDS_ALLOWED:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_07));
			break;
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_FISH_ALLOWED:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_08));
			break;
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_1:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_09));
			break;
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_0:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_10));
			break;
		case SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_2:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_11));
			break;
		default:
			help->SetText(L"");
			break;
		}
		break;
	}
	}
}

void SpellSetupBox::Init(uint32_t background_style, uint32_t tall_background,
                         void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	Help = NEW(325) SetupEdit(SPELL_SETUP_BOX_CONTROL_ID_HELP, 150, 525, 500, 30, L" ", false);
	Help->text_size = GetSmallTextSize();
	Accept = NEW(330) SetupBigButton(SPELL_SETUP_BOX_CONTROL_ID_ACCEPT, 40, 520,
	                                 HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_04), 40,
	                                 0, BBSTYLE_LEFT_ARROW);
	Cancel = NEW(331) SetupBigButton(SPELL_SETUP_BOX_CONTROL_ID_CANCEL, 720, 520,
	                                 HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_03), 40,
	                                 1, BBSTYLE_RIGHT_ARROW);
	SpellLabel = NEW(336) SetupStaticText(SETUP_CONTROL_ID_NONE, 90, 100, 200, 30,
	                                      HelpTextData::GetTextL(HELP_TEXT_MULTIPLAYER_SETUP_SPELLSELECTION_01));
	OneShotSpellLabel = NEW(337) SetupStaticText(SETUP_CONTROL_ID_NONE, 330, 100, 200, 30,
	                                             HelpTextData::GetTextL(HELP_TEXT_MULTIPLAYER_SETUP_SPELLSELECTION_02));
	SpellList = NEW(338) SetupMultiList(SPELL_SETUP_BOX_CONTROL_ID_SPELL_LIST, 90, 140, 230, 200, 10);
	OneShotSpellList = NEW(339) SetupMultiList(SPELL_SETUP_BOX_CONTROL_ID_ONE_SHOT_SPELL_LIST, 330, 140, 200, 200, 10);
}

void SpellSetupBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void SpellSetupBox::InitControls()
{
	Instance->setup_box->DefaultTextSize = GetMidTextSize();
	SpellList->DeleteAll();
	OneShotSpellList->DeleteAll();
	Settings = *OriginalSettings;
	for (int i = 0; i < SPELL_SETUP_BOX_NUM_SPELLS; i++)
	{
		SpellList->AddString(HelpTextData::GetTextL(HELP_TEXT_MULTIPLAYER_SETUP_SPELL_01 + i), 0, 0, 0);
		SpellList->list[i] = Settings.Spells[i];
	}
	for (int j = 0; j < SETUP_GAME_DATA_NUM_SPELLS; j++)
	{
		OneShotSpellList->AddString(HelpTextData::GetTextL(HELP_TEXT_MULTIPLAYER_SETUP_SPELL_01 + j), 0, 0, 0);
		OneShotSpellList->list[j] = Settings.OneShotSpells[j];
	}
}

void __stdcall SpellSetupBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	switch (message)
	{
	case SETUP_MESSAGE_ACTIVATE:
		Instance->InitControls();
		break;
	case SETUP_MESSAGE_KEY:
		if ((x == KB_ENTER || x == KB_RETURN) && y == 0)
			;
		else if (x == KB_ESCAPE && y == 0)
			control = Instance->Cancel;
		else
			break;
	case SETUP_MESSAGE_CLICK:
		if (control == NULL)
			break;
		if (control->id == SPELL_SETUP_BOX_CONTROL_ID_ACCEPT && !control->hidden)
		{
			GSLobbyBox::Instance->ControlsInitialised = true;
			*Instance->OriginalSettings = Instance->Settings;
			SetupLandscapeBox::Instance->ReloadSettings = true;
			DialogBoxBase::Hide();
		}
		if (control->id == SPELL_SETUP_BOX_CONTROL_ID_CANCEL && !control->hidden)
		{
			SetupLandscapeBox::Instance->ReloadSettings = true;
			DialogBoxBase::Hide();
		}
		if (control->id == SPELL_SETUP_BOX_CONTROL_ID_ONE_SHOT_SPELL_LIST && !control->hidden)
		{
			for (int i = 0; i < SETUP_GAME_DATA_NUM_SPELLS; i++)
				Instance->Settings.set_one_shot_spell((SPELL_SEED_TYPE)i, Instance->OneShotSpellList->list[i], false);
		}
		if (control->id == SPELL_SETUP_BOX_CONTROL_ID_SPELL_LIST && !control->hidden)
		{
			for (int i = 0; i < SPELL_SETUP_BOX_NUM_SPELLS; i++)
				Instance->Settings.set_spell((SPELL_SEED_TYPE)i, Instance->SpellList->list[i], false);
		}
		break;
	case SETUP_MESSAGE_UPDATE: {
		control = box->FindControl(x, y);
		SetupEdit* help = Instance->Help;
		if (control == NULL)
			break;
		switch (control->id)
		{
		case SPELL_SETUP_BOX_CONTROL_ID_ONE_SHOT_SPELL_LIST:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_12));
			break;
		case SPELL_SETUP_BOX_CONTROL_ID_SPELL_LIST:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MULTIPLAYER_SETUP_HELP_13));
			break;
		default:
			help->SetText(L"");
			break;
		}
		break;
	}
	}
}

void SetupOnlineLandscapes::Init(uint32_t background_style, uint32_t tall_background,
                                 void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	Help = NEW(460) SetupEdit(SETUP_ONLINE_LANDSCAPES_CONTROL_ID_HELP, 150, 525, 500, 30, L"", false);
	Help->text_size = 16;
	Back = NEW(464) SetupBigButton(SETUP_ONLINE_LANDSCAPES_CONTROL_ID_BACK, 720, 520,
	                               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_04), 40, 1,
	                               BBSTYLE_RIGHT_ARROW);
	LandscapeLabel = NEW(468) SetupStaticText(SETUP_ONLINE_LANDSCAPES_CONTROL_ID_LANDSCAPE_LABEL, 80, 60, 200, 30,
	                                          HelpTextData::GetTextL(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_13));
	LandscapeLabel->text_size = 20;
	LandscapeList = NEW(470) SetupList(SETUP_ONLINE_LANDSCAPES_CONTROL_ID_LANDSCAPE_LIST, 80, 90, 250, 420);
	LandscapeList->text_size = 20;
	DescriptionLabel =
		NEW(472) SetupStaticText(SETUP_ONLINE_LANDSCAPES_CONTROL_ID_DESCRIPTION_LABEL, 350, 350, 400, 30, L"");
	DescriptionLabel->text_size = 20;
	DescriptionList = NEW(474) SetupList(SETUP_ONLINE_LANDSCAPES_CONTROL_ID_DESCRIPTION_LIST, 350, 375, 400, 100);
	DescriptionList->text_size = 20;
	DescriptionList->Hide(true);
	Download =
		NEW(478) SetupButton(SETUP_ONLINE_LANDSCAPES_CONTROL_ID_DOWNLOAD, 350, 480, 200, 30,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_15), 0);
	Download->Hide(true);
	Download->text_size = 20;
}

void SetupOnlineLandscapes::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void SetupOnlineLandscapes::InitControls()
{
	Instance->setup_box->DefaultTextSize = 16;
	Thumbnail = NULL;
	ThumbnailMaterial = NULL;
}

static char16_t* GetDownloadingText(SetupOnlineLandscapes::OLB_STATES state)
{
	static char16_t text[100];
	switch (state)
	{
	case SetupOnlineLandscapes::OLB_STATE_NONE:
		wcscpy(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_23));
		break;
	case SetupOnlineLandscapes::OLB_STATE_DOWNLOADING_THUMBNAIL:
		wcscpy(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_24));
		break;
	case SetupOnlineLandscapes::OLB_STATE_DOWNLOADING_MAP:
		wcscpy(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_25));
		break;
	case SetupOnlineLandscapes::OLB_STATE_DOWNLOADING_LIST:
		wcscpy(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_25));
		break;
	}
	return text;
}

// In 1.00 MPFEAlexDialog has no copy of IsThereAPoint and calls this one. From 1.10 on it
// has its own, so this one is static.
#ifndef VERSION_BW1W100
static
#endif
	ServerLandscapeMap::Point* IsThereAPoint(LHLinkedList<ServerLandscapeMap::Point*>* points, int x, int y);

static void DrawCircle(uint16_t* image, int x, int y, int radius, uint16_t colour);

bool SetupOnlineLandscapes::LoadThumbnail(char* path, SetupBox* box, char16_t* message)
{
	ReleaseThumbnail();
	LHLinkedList<ServerLandscapeMap::Point*> citadels;
	LHLinkedList<ServerLandscapeMap::Point*> towns;
	bool                                     players[8] = {false, false, false, false, false, false, false, false};
	char                                     header[sizeof(ServerMapFileHeader)];
	memset(header, 0, sizeof(header));
	FILE* file = fopen(path, "rb");
	if (file == NULL)
	{
		return false;
	}
	int length = _filelength((_fileno)(file));
	fread(header, 1, sizeof(ServerMapFileHeader) - 1, file);
	if (strcmp(header, ServerMapFileHeader) != 0)
	{
		box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_26),
		                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
		fclose(file);
		return false;
	}
	char* data = NEW(574) char[length + 1];
	fread(data, 1, length - (sizeof(ServerMapFileHeader) - 1), file);
	fclose(file);
	MapThumbImage* thumbnail = MapThumbImage::GetFromData(data, &citadels, &towns);
	int            size = sqrt(thumbnail->GetImageByteSize() / 3);
	ThumbnailSize = size;
	char* file_data = data;
	data = thumbnail->GetImageData();
	TextureFormat format;
	format.Type = 0;
	Thumbnail = LH3DTexture::Create(NULL, LH3D_TEXTURE_TYPE_SYSTEM_MEMORY | LH3D_TEXTURE_FLAGS_ALPHA,
	                                LH3D_TEXTURE_ID_NONE, &format);
	ThumbnailMaterial =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA, Thumbnail);
	uint16_t* image = Thumbnail->GetSRamTex()->Lock256x256(true);
	memset(image, 0, 256 * 256 * sizeof(uint16_t));
	int offset = 0;
	for (int row = 0; row < size; row++)
	{
		for (int column = 0; column < size; column++)
		{
			if (data[offset] == 0 && data[offset + 1] == 0 && data[offset + 2] == 0)
			{
				image[(row << 8) + column] = 0;
			}
			else
			{
				image[(row << 8) + column] =
					0xf000 + ((data[offset] >> 4) << 8) + ((data[offset + 1] >> 4) << 4) + (data[offset + 2] >> 4);
			}
			offset += 3;
		}
	}
	int num_players = 0;
	for (int y = 0; y < size; y++)
	{
		for (int x = 0; x < size; x++)
		{
			ServerLandscapeMap::Point* town = IsThereAPoint(&towns, x, y);
			if (town != NULL)
			{
				int           player = town->Player == -1 ? 7 : town->Player;
				unsigned long colour = GPlayer::PlayerColours[player];
				DrawCircle(image, x, y, 1, THUMBNAIL_POINT_COLOUR(colour));
				players[player] = true;
			}
			ServerLandscapeMap::Point* citadel = IsThereAPoint(&citadels, x, y);
			if (citadel != NULL)
			{
				unsigned long colour = GPlayer::PlayerColours[citadel->Player == -1 ? 7 : citadel->Player];
				DrawCircle(image, x, y, 2, THUMBNAIL_POINT_COLOUR(colour));
			}
		}
	}
	for (int i = 0; i < 8; i++)
	{
		if (players[i])
		{
			num_players++;
		}
	}
	Thumbnail->GetSRamTex()->UnlockLock256x256();
	if (Thumbnail->GetType() == LH3D_TEXTURE_TYPE_NAMED || Thumbnail->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
	{
		Thumbnail->ReloadPending = true;
	}
	Instance->DescriptionList->DeleteAll();
	Instance->DescriptionList->Hide(false);
	Instance->DescriptionLabel->Hide(false);
	swprintf(Instance->DescriptionLabel->label,
	         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_27),
	         CHAR2WCHAR(SelectedLandscape->Name), num_players);
	Instance->DescriptionList->AddString(CHAR2WCHAR(thumbnail->GetDescription()), 0, 0, 0);
	if (!ChoosingMap)
	{
		Instance->Download->Hide(false);
	}
	delete file_data;
	delete thumbnail;
	citadels.DeleteAll();
	towns.DeleteAll();
	return true;
}

ServerLandscapeMap::Point* IsThereAPoint(LHLinkedList<ServerLandscapeMap::Point*>* points, int x, int y)
{
	LHLinkedNode<ServerLandscapeMap::Point*>* node = points->GetStart();
	if (node != NULL)
	{
		do
		{
			if (node->payload->X == x && node->payload->Y == y)
			{
				return node->payload;
			}
			node = node->next.Get();
		} while (node != NULL);
	}
	return NULL;
}

static void DrawCircle(uint16_t* image, int x, int y, int radius, uint16_t colour)
{
	for (; radius != -1; radius--)
	{
		for (float angle = TWO_PI; angle > 0.0f; angle -= TWO_PI / 90)
		{
			image[((int)((float)cos(angle) * radius + y + 0.5f) << 8) + (int)((float)sin(angle) * radius + x + 0.5f)] =
				colour;
		}
	}
}

void SetupOnlineLandscapes::ReleaseThumbnail()
{
	if (Thumbnail != NULL)
	{
		Thumbnail->Release();
		Thumbnail = NULL;
	}
	if (ThumbnailMaterial != NULL)
	{
		ThumbnailMaterial->texture = NULL;
		ThumbnailMaterial = NULL;
	}
	Instance->DescriptionList->Hide(true);
	Instance->DescriptionLabel->Hide(true);
	Instance->Download->Hide(true);
}

bool SetupOnlineLandscapes::AnyMapsAvailable()
{
	char  name[140];
	char  map_path[MAX_PATH];
	char  thumb_path[MAX_PATH];
	char  line[512];
	FILE* file = fopen(ONLINE_MAPS_GLOBAL_LIST, "rt");
	if (file == NULL)
		return false;
	while (fgets(line, sizeof(line), file) != NULL)
	{
		for (int i = 0; i < 140; i++)
		{
			if (line[i] == ':')
			{
				memcpy(name, line, i);
				name[i] = 0;
				break;
			}
		}
		sprintf(thumb_path, ONLINE_MAPS_THUMB_PATH, name);
		sprintf(map_path, ONLINE_MAPS_MAP_PATH, name);
		bool have_thumb = LHOSFile::Exists(thumb_path) == LH_FILE_RESULT_OK;
		if (LHOSFile::Exists(map_path) == LH_FILE_RESULT_OK && have_thumb)
			return true;
	}
	fclose(file);
	return false;
}

void __stdcall SetupOnlineLandscapes::ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	LH3DColor colour;
	if (message == SETUP_MESSAGE_ON_HOLD)
		return;
	if (!Instance->FileDownload.IsIdle())
	{
		switch (Instance->FileDownload.Refresh())
		{
		case LH_FILE_DOWNLOAD_OK:
		case LH_FILE_DOWNLOAD_REDIRECTED:
		case LH_FILE_DOWNLOAD_IN_PROGRESS: {
			int percent = Instance->FileDownload.GetPercentageDownloaded() * 100.0f;
			swprintf(box->MessageText->label, GetDownloadingText(Instance->State), percent,
			         Instance->FileDownload.GetTransferSpeed());
			UpdateDownloadProgress(box);
			break;
		}
		case LH_FILE_DOWNLOAD_COMPLETE:
			if (Instance->State == OLB_STATE_DOWNLOADING_THUMBNAIL)
			{
				Instance->LandscapeList->SetCol(Instance->DownloadingIndex,
				                                SETUP_ONLINE_LANDSCAPES_THUMBNAIL_DOWNLOADED_COLOUR);
				Instance->State = OLB_STATE_IDLE;
				Instance->LoadThumbnail(Instance->FileDownload.GetFilename(), box,
				                        SelectedLandscape != NULL ? CHAR2WCHAR(SelectedLandscape->Name) : L"");
				box->SetOffHold();
			}
			if (Instance->State == OLB_STATE_DOWNLOADING_MAP)
			{
				Instance->LandscapeList->SetCol(Instance->DownloadingIndex,
				                                SETUP_ONLINE_LANDSCAPES_MAP_DOWNLOADED_COLOUR);
				Instance->State = OLB_STATE_IDLE;
				box->SetOffHold();
			}
			break;
		case LH_FILE_DOWNLOAD_RECEIVE_FAILED:
			Instance->DownloadingIndex = -1;
			Instance->State = OLB_STATE_IDLE;
			box->SetOffHold();
			if (Instance->State == OLB_STATE_DOWNLOADING_LIST)
				ListDownloadFailed = true;
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_28),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			break;
		case LH_FILE_DOWNLOAD_REQUEST_FAILED:
			Instance->DownloadingIndex = -1;
			Instance->State = OLB_STATE_IDLE;
			box->SetOffHold();
			if (Instance->State == OLB_STATE_DOWNLOADING_LIST)
				ListDownloadFailed = true;
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_29),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			break;
		case LH_FILE_DOWNLOAD_DISK_FULL:
			Instance->DownloadingIndex = -1;
			Instance->State = OLB_STATE_IDLE;
			box->SetOffHold();
			if (Instance->State == OLB_STATE_DOWNLOADING_LIST)
				ListDownloadFailed = true;
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_30),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			break;
		case LH_FILE_DOWNLOAD_NOT_ACTIVE:
			Instance->DownloadingIndex = -1;
			Instance->State = OLB_STATE_IDLE;
			box->SetOffHold();
			if (Instance->State == OLB_STATE_DOWNLOADING_LIST)
				ListDownloadFailed = true;
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_31),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			break;
		case LH_FILE_DOWNLOAD_TIMED_OUT:
			Instance->DownloadingIndex = -1;
			Instance->State = OLB_STATE_IDLE;
			box->SetOffHold();
			if (Instance->State == OLB_STATE_DOWNLOADING_LIST)
				ListDownloadFailed = true;
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_32),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			break;
		case LH_FILE_DOWNLOAD_DECOMPRESS_FAILED:
			Instance->DownloadingIndex = -1;
			Instance->State = OLB_STATE_IDLE;
			box->SetOffHold();
			if (Instance->State == OLB_STATE_DOWNLOADING_LIST)
				ListDownloadFailed = true;
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_33),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			break;
		case LH_FILE_DOWNLOAD_FILE_ERROR: {
			Instance->DownloadingIndex = -1;
			Instance->State = OLB_STATE_IDLE;
			box->SetOffHold();
			if (Instance->State == OLB_STATE_DOWNLOADING_LIST)
				ListDownloadFailed = true;
			char16_t text[512];
			swprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_34),
			         Instance->FileDownload.GetFilename());
			box->MessageBoxA(text, MSGBOXSTYLE_SINGLE_BUTTON, 0);
			break;
		}
		}
	}
	switch (message)
	{
	case SETUP_MESSAGE_KEY:
		return;
	case SETUP_MESSAGE_ACTIVATE:
		Instance->State = OLB_STATE_IDLE;
		Instance->field_0x88 = 0;
		Instance->Thumbnail = NULL;
		Instance->ThumbnailMaterial = NULL;
		Instance->DescriptionList->DeleteAll();
		Instance->InitControls();
		Instance->DownloadingIndex = -1;
		if (!Instance->ChoosingMap)
		{
			Instance->FileDownload.DownloadFile(ONLINE_MAPS_LIST_HOST, ONLINE_MAPS_HTTP_PORT, ONLINE_MAPS_SERVER_PATH,
			                                    ONLINE_MAPS_LIST_FILE, ONLINE_MAPS_GLOBAL_LIST, false);
			Instance->State = OLB_STATE_DOWNLOADING_LIST;
			swprintf(Instance->LandscapeLabel->label,
			         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_13));
		}
		else
		{
			swprintf(Instance->LandscapeLabel->label,
			         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_33));
		}
		break;
	case SETUP_MESSAGE_DEACTIVATE:
		Instance->FileDownload.StopDownload();
		Instance->Landscapes.DeleteAll();
		Instance->LandscapeList->DeleteAll();
		Instance->ReleaseThumbnail();
		Instance->DescriptionList->DeleteAll();
		SelectedLandscape = NULL;
		GSLobbyBox::Instance->ControlsInitialised = true;
		FrontEnd::LobbyDialog->ControlsInitialised = true;
		break;
	case SETUP_MESSAGE_CLICK:
		if (control == NULL)
			break;
		if (control->GetID() == SETUP_ONLINE_LANDSCAPES_CONTROL_ID_BACK && !control->hidden)
		{
			if (Instance->ChoosingMap == true)
			{
				if (Instance->LandscapeList->GetSelected() == -1)
				{
					box->MessageBoxA(
						HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_16),
						MSGBOXSTYLE_SINGLE_BUTTON, 0);
					return;
				}
				if (Instance->ChosenMap != NULL)
				{
					LobbyBox::Instance->MapChanged = true;
					*Instance->ChosenMap = *SelectedLandscape;
					SetupMultiplayerMain::Instance->ReloadSettings = true;
				}
			}
			DialogBoxBase::Hide();
		}
		if (control->GetID() == SETUP_ONLINE_LANDSCAPES_CONTROL_ID_LANDSCAPE_LIST && !control->hidden)
		{
			SelectedLandscape = NULL;
			int selected = Instance->LandscapeList->GetSelected();
			if (selected == -1)
			{
				Instance->ReleaseThumbnail();
				return;
			}
			char16_t text[512];
			char     name[512];
			char     file[512];
			char     local_file[256];
			Instance->LandscapeList->GetString(selected, text);
			strcpy(name, WCHAR2CHAR(text));
			for (LHLinkedNode<LandscapeDetails*>* node = Instance->Landscapes.GetStart(); node != NULL;
			     node = node->next.Get())
			{
				LandscapeDetails* details = node->payload;
				if (strcmp(details->Name, name) == 0)
				{
					SelectedLandscape = details;
					sprintf(file, "%s.thm", details->FileName);
					char path[512];
					sprintf(path, ONLINE_MAPS_THUMB_PATH, details->FileName);
					if (LHOSFile::Exists(path) != LH_FILE_RESULT_OK)
					{
						strcpy(local_file, path);
						if (Instance->FileDownload.DownloadFile(ONLINE_MAPS_HOST, ONLINE_MAPS_HTTP_PORT,
						                                        ONLINE_MAPS_SERVER_PATH, file, local_file,
						                                        true) == LH_FILE_DOWNLOAD_OK)
						{
							Instance->DownloadingIndex = selected;
							box->MessageBoxA(L"", MSGBOXSTYLE_CANCEL, 0);
							Instance->State = OLB_STATE_DOWNLOADING_THUMBNAIL;
						}
						else
						{
							box->MessageBoxA(
								HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_18),
								MSGBOXSTYLE_SINGLE_BUTTON, 0);
							Instance->State = OLB_STATE_IDLE;
						}
					}
					else
					{
						Instance->DownloadingIndex = selected;
						Instance->LoadThumbnail(path, box, NULL);
						Instance->State = OLB_STATE_IDLE;
					}
					break;
				}
				if (node == NULL)
				{
					Instance->ReleaseThumbnail();
					Instance->DescriptionList->DeleteAll();
					Instance->State = OLB_STATE_IDLE;
				}
			}
		}
		if (control->GetID() == SETUP_ONLINE_LANDSCAPES_CONTROL_ID_DOWNLOAD && !control->hidden)
		{
			static char map_file[0x400];
			static char map_path[0x200];
			sprintf(map_file, "%s.map", SelectedLandscape->FileName);
			sprintf(map_path, ONLINE_MAPS_MAP_PATH, SelectedLandscape->FileName);
			if (LHOSFile::Exists(map_path) == LH_FILE_RESULT_OK)
			{
				Instance->State = OLB_STATE_DOWNLOADING_MAP;
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_19),
				                 MSGBOXSTYLE_YES_NO, 0);
				return;
			}
		download_map:
			char local_file[256];
			strcpy(local_file, map_path);
			if (Instance->FileDownload.DownloadFile(ONLINE_MAPS_HOST, ONLINE_MAPS_HTTP_PORT, ONLINE_MAPS_SERVER_PATH,
			                                        map_file, local_file, true) == LH_FILE_DOWNLOAD_OK)
			{
				box->MessageBoxA(L"", MSGBOXSTYLE_CANCEL, 0);
				Instance->State = OLB_STATE_DOWNLOADING_MAP;
				return;
			}
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_20),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			Instance->State = OLB_STATE_IDLE;
			return;
		}
		break;
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT:
		if (x == SETUP_MESSAGE_BOX_ID_CANCEL)
			Instance->FileDownload.StopDownload();
		if (x == SETUP_MESSAGE_BOX_ID_OK && ListDownloadFailed)
		{
			DialogBoxBase::Hide();
			ListDownloadFailed = false;
			return;
		}
		if (x == SETUP_MESSAGE_BOX_ID_YES && Instance->State == OLB_STATE_DOWNLOADING_MAP)
			goto download_map;
	case SETUP_MESSAGE_POST_DRAW:
		if (Instance->ThumbnailMaterial != NULL)
		{
			float size = Instance->ThumbnailSize / 256.0f;
			SetupThing::DrawAlpha = LH3D_COLOR_OPAQUE;
			colour.b = LH3D_COLOR_CHANNEL_MAX;
			colour.g = LH3D_COLOR_CHANNEL_MAX;
			colour.r = LH3D_COLOR_CHANNEL_MAX;
			colour.a = LH3D_COLOR_OPAQUE;
			SetupThing::DrawBox(350, 80, 610, 340, 0.0f, 0.0f, size, size, Instance->ThumbnailMaterial, &colour, true,
			                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
		}
		break;
	case SETUP_MESSAGE_UPDATE: {
		control = box->FindControl(x, y);
		SetupEdit* help = Instance->Help;
		if (control == NULL)
			break;
		switch (control->GetID())
		{
		case SETUP_ONLINE_LANDSCAPES_CONTROL_ID_BACK:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_35));
			break;
		case SETUP_ONLINE_LANDSCAPES_CONTROL_ID_LANDSCAPE_LIST:
			help->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_21));
			break;
		}
		break;
	}
	}
}

void UpdateDownloadProgress(SetupBox* box) {}

void SetupOnlineLandscapes::Show()
{
	Instance->Download->Hide(false);
	DialogBoxBase::Show();
}

bool SetupOnlineLandscapes::CheckIfWeHaveMap(LandscapeDetails* landscape)
{
	char name[512];
	char line[512];
	char thumb_path[512];
	char map_path[512];
	if (landscape == NULL)
		return false;
	FILE* file = fopen(ONLINE_MAPS_GLOBAL_LIST, "rt");
	if (file == NULL)
		return false;
	while (fgets(line, sizeof(line), file) != NULL)
	{
		for (int i = 0; i < 140; i++)
		{
			if (line[i] == ':')
			{
				memcpy(name, line, i);
				name[i] = 0;
				break;
			}
		}
		sprintf(thumb_path, ONLINE_MAPS_THUMB_PATH, name);
		sprintf(map_path, ONLINE_MAPS_MAP_PATH, name);
		bool have_thumb = LHOSFile::Exists(thumb_path) == LH_FILE_RESULT_OK;
		if (LHOSFile::Exists(map_path) == LH_FILE_RESULT_OK && strcmp(name, landscape->FileName) == 0)
			return true;
	}
	fclose(file);
	return false;
}
