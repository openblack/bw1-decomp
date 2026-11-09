#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHSocket.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHSocketTCP.h>

#include "FrontEnd.h"

#include <stdlib.h>                                  /* For _MAX_PATH */
#include <Lionhead/LH3DLib/development/LH3DColor.h>  /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DDivers.h> /* For LH3DWideScreen */
#include <Lionhead/LH3DLib/development/LH3DFade.h>   /* For LH3DFade */
#include "camerahelp.h"                              /* For CameraHelp */
#include "CreditsRoom.h"                             /* For CreditsRoom::HistoryPage */
#include "HelpSystem.h"                              /* For HelpSystem */
#include "CDBox.h"

#include <math.h>    /* For sin, cos, sqrt */
#include <wchar.h>   /* For wcscpy, wcslen */
#include <windows.h> /* For WideCharToMultiByte, GetTickCount */

#include <Lionhead/LH3DLib/development/LH3DMaterial.h> /* For struct LH3DMaterial */
#include <Lionhead/LH3DLib/development/LH3DMath.h>     /* For angle_correct */
#include <Lionhead/LH3DLib/development/LH3DObject.h>   /* For special_jc_x */
#include <Lionhead/LH3DLib/development/LH3DRender.h>   /* For LH3DRender::CreateMaterial */
#include <Lionhead/LH3DLib/development/LH3DTech.h>     /* For LH3DTech */
#include <Lionhead/LH3DLib/development/LH3DText.h>     /* For GatheringText */
#include <Lionhead/LH3DLib/development/LH3DTexture.h>  /* For LH3DTexture::Create */
#include <Lionhead/LH3DLib/development/LHRandom.h>     /* For Random */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>            /* For LHSys::TheSystem */
#include <Lionhead/LHLib/ver5.0/LHWin.h>               /* For operator new(size_t, const char*, uint32_t) */

#include "alexmfc.h"      /* For SetupThing */
#include "PlayerSymbol.h" /* For PlayerSymbol::TattooTexture */

#include <string.h> /* For memset, wcscpy, wcslen */

#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>          /* For LHSPrintf */
#include <Lionhead/LHMultiplayer/ver4.0/LHMail.h>     /* For LHMail */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h> /* For LHLoadInGameEmailSystem */

#include <chlasm/HelpTextEnums.h>

#include "Game.h"          /* For GGame */
#include "HelpText.h"      /* For HelpTextDataBase::HelpTextDatabase */
#include "PlayerProfile.h" /* For PlayerProfile */
#include "Creature.h"      /* For Creature::CanLoad3D */
#include "CreatureRoom.h"  /* For CreatureRoom::CreatureInTemple */
#include "DialogBoxImmersion.h"
#include "DialogBoxKeyBinding.h"
#include "DialogBoxOptions.h"
#include "MiniDialogBoxOptions.h"
#include "GameVideo.h" /* For PauseGame */
#include <stdio.h>     /* For sprintf, swprintf */

class CImmMouse;

// BW1W120 00d18588
extern CImmMouse* ImmersionMouse;

#include "ChannelBox.h"
#include "NewProfileBox.h"
#include "TattooEditor.h"
#include "ProfileEditor.h"
#include "MainMenu.h"
#include "SkipBox.h"
#include "StartGameBox.h"
#include "SkirmishGameBox.h"
#include "HistoryBox.h"
#include "StatsBox.h"
#include "EndGameBox.h"
#include "MultiplayerConditionBox.h"
#include "CDBox.h"
#include "EditingDebugBox.h"
#include <Lionhead/LHLib/ver5.0/LHTimer.inl>
#include "GatheringBox.h"
#include "LoadingBox.h"
#include "LobbyBox.h"
#include "LoginBox.h"
#include "Plasma.h"
#include "RegisterBox.h"
#include "SLobbyBox.h"
#include "SetupMultiplayerMain.h"
#include "SetupOnlineLandscapes.h"

#include "Audio.h"                                          /* For GAudio::RedbookGetHandle */
#include "Global.h"                                         /* For GGlobal::Global */
#include "MusicMood.h"                                      /* For redbook_play */
#include "MusicMoodController.h"                            /* For MusicMoodController::UpdateOnGameTurn */
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h> /* For LH3DComplexObject::SetNeedClipping */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>                /* For LHLoadData */
#include <chlasm/CreatureSpec.h>                            /* For C_INDIVIDUAL_IMPRESS */
#include "Creature3D.h"                                     /* For LH3DCreature */
#include "CreatureFileName.h"                               /* For CreatureFileName::Table */
#include "Interface.h"                                      /* For GInterface::StartImmersion */
#include "Player.h"                                         /* For GPlayer::GetCreature */
#include "Rand.h"                                           /* For GRand::LocalRand */

#include <Lionhead/LHLog/ver4.0/LHLogger.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetErrors.h> /* For LH_NET_LOG_ERROR_LIST */
#include <Lionhead/LHLog/ver4.0/LHRegistry.h>
#include <mmsystem.h>
#include "ControlMap.h"
#include "GameOSFile.h"
#include "LHNetBase.h"
#include "Temple.h"
#include "SetupGameData.h"

NewProfileBox*             NewProfileBox::Instance;
LoadingBox*                LoadingBox::Instance;
EditingDebugBox*           EditingDebugBox::Instance;
RegisterBox*               RegisterBox::Instance;
ProfileEditor*             ProfileEditor::Instance;
SetupBox*                  ProfileEditor::ActivatedBox;
PROFILE_EDITOR_MESSAGE_BOX ProfileEditor::MessageBoxState;
bool                       ProfileEditor::RestartRequired;
bool                       ProfileEditor::NewProfileShown;
char16_t                   ProfileEditor::InUseProfile[0x20];
int                        ProfileEditor::InUseProfileIndex = -1;
int                        ProfileEditor::LastProfileIndex = -1;

#define FRONT_END_CURSOR_SIZE         32
#define FRONT_END_CURSOR_FRAMES       8
#define FRONT_END_CURSOR_GRID         8
#define FRONT_END_CURSOR_FRAME_SHIFT  5
#define FRONT_END_TOOL_TIP_MIN_ALPHA  4
#define FRONT_END_TOOL_TIP_TEXT_DEPTH 10.0f
#define FRONT_END_TOOL_TIP_FADE       4096.0f
#define FRONT_END_FADE_TIME           1000
#define FRONT_END_USER_NAME_LENGTH    64

// BW1W120 008de928
static const int CursorFrames[FRONT_END_CURSOR_FRAMES] = {9, 10, 11, 12, 41, 49, 57, 23};

bool                     FrontEnd::CursorOn;
ChannelBox*              FrontEnd::ChannelDialog;
EditingDebugBox*         FrontEnd::EditingDebugDialog;
SetupMultiplayerMain*    FrontEnd::SetupMultiplayerDialog;
SetupOnlineLandscapes*   FrontEnd::OnlineLandscapesDialog;
SkipBox*                 FrontEnd::SkipDialog;
CDBox*                   FrontEnd::CDDialog;
GatheringBox*            FrontEnd::GatheringDialog;
LoadingBox*              FrontEnd::LoadingDialog;
GSLobbyBox*              FrontEnd::GSLobbyDialog;
LobbyBox*                FrontEnd::LobbyDialog;
RegisterBox*             FrontEnd::RegisterDialog;
LoginBox*                FrontEnd::LoginDialog;
TattooEditor*            FrontEnd::TattooDialog;
NewProfileBox*           FrontEnd::NewProfileDialog;
MainMenu*                FrontEnd::MainMenuDialog;
ProfileEditor*           FrontEnd::ProfileEditorDialog;
SetupTabButton*          FrontEnd::MultiplayerTab;
bool                     FrontEnd::InMultiplayerScreens;
bool                     FrontEnd::MultiplayerGameRunning;
Plasma*                  FrontEnd::PlasmaBackground;
LH3DMaterial*            FrontEnd::SymbolMaterialC;
LH3DMaterial*            FrontEnd::SymbolMaterialB;
LH3DMaterial*            FrontEnd::SymbolMaterial;
unsigned long            FrontEnd::ToolTipID;
wchar_t                  FrontEnd::ToolTipText[FRONT_END_TOOL_TIP_LENGTH];
bool                     FrontEnd::StartupMenuActive;
StatsBox*                FrontEnd::StatsDialog;
EndGameBox*              FrontEnd::EndGameDialog;
MultiplayerConditionBox* FrontEnd::MultiplayerConditionDialog;
StartGameBox*            FrontEnd::StartGameDialog;
HistoryBox*              FrontEnd::HistoryDialog;
SkirmishGameBox*         FrontEnd::SkirmishDialog;
StartGameBox*            StartGameBox::Instance;
SkirmishGameBox*         SkirmishGameBox::Instance;
HistoryBox*              HistoryBox::Instance;

char* WCHAR2CHAR(char16_t* text)
{
	static char buffer[FRONT_END_TEXT_BUFFER_SIZE];
	buffer[WideCharToMultiByte(CP_ACP, 0, text, -1, buffer, sizeof(buffer) - 1, NULL, NULL)] = '\0';
	return buffer;
}

void FrontEnd::Init()
{
	ToolTipZoomer.SetPosition(0.0f);
	SetToolTip(NULL, 0);
	LH3DTexture* texture = PlayerSymbol::TattooTexture;
	SymbolMaterial =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, texture);
	SymbolMaterialB =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, texture);
	SymbolMaterialC =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, texture);
	ProfileEditorDialog = NEW(113) ProfileEditor;
	MainMenuDialog = NEW(114) MainMenu;
	NewProfileDialog = NEW(115) NewProfileBox;
	TattooDialog = NEW(116) TattooEditor;
	LoginDialog = NEW(117) LoginBox;
	RegisterDialog = NEW(118) RegisterBox;
	LobbyDialog = NEW(119) LobbyBox;
	GSLobbyDialog = NEW(120) GSLobbyBox;
	LoadingDialog = NEW(121) LoadingBox;
	GatheringDialog = NEW(122) GatheringBox;
	CDDialog = NEW(123) CDBox;
	SkipDialog = NEW(124) SkipBox;
	OnlineLandscapesDialog = NEW(126) SetupOnlineLandscapes;
	SetupMultiplayerDialog = NEW(127) SetupMultiplayerMain;
	EditingDebugDialog = NEW(128) EditingDebugBox;
	ChannelDialog = NEW(129) ChannelBox;
	StatsDialog = NEW(130) StatsBox;
	EndGameDialog = NEW(131) EndGameBox;
	MultiplayerConditionDialog = NEW(132) MultiplayerConditionBox;
	StartGameDialog = NEW(133) StartGameBox;
	HistoryDialog = NEW(134) HistoryBox;
	HistoryDialog->Init(780, 500, HistoryBox::ControlCallback);
	SkirmishDialog = NEW(136) SkirmishGameBox;
	StatsDialog->Init(780, 500, StatsBox::ControlCallback);
	EndGameDialog->Init(780, 500, EndGameBox::ControlCallback);
	MultiplayerConditionDialog->Init(780, 500, MultiplayerConditionBox::ControlCallback);
	StartGameDialog->Init(780, 580, StartGameBox::ControlCallback);
	SkirmishDialog->Init(780, 580, SkirmishGameBox::ControlCallback);
	SetupMultiplayerDialog->Init(748, 548, SetupMultiplayerMain::ControlCallback);
	SetupMultiplayerDialog->CurrentData = &setupgamedata::Current;
	OnlineLandscapesDialog->Init(748, 548, SetupOnlineLandscapes::ControlCallback);
	SkipDialog->Init(400, 290, SkipBox::ControlCallback);
	CDDialog->Init(400, 300, CDBox::ControlCallback);
	ProfileEditorDialog->Init(780, 500, ProfileEditor::ControlCallback);
	NewProfileDialog->Init(600, 400, NewProfileBox::ControlCallback);
	TattooDialog->Init(748, 548, TattooEditor::ControlCallback);
	RegisterDialog->Init(700, 400, RegisterBox::ControlCallback);
	LoginDialog->Init(770, 570, LoginBox::ControlCallback);
	LobbyDialog->Init(748, 548, LobbyBox::ControlCallback);
	GatheringDialog->Init(0, 0, GatheringBox::ControlCallback);
	MainMenuDialog->Init(780, 500, MainMenu::ControlCallback);
	EditingDebugDialog->Init(750, 300, EditingDebugBox::ControlCallback);
	EditingDebugDialog->DoneCallback = NULL;
	ChannelDialog->Init(780, 500, ChannelBox::ControlCallback);
	SetupMultiplayerDialog->InitSubDialogs();
	CursorOn = true;
}

void FrontEnd::SetToolTip(wchar_t* text, unsigned long id)
{
	if (text != NULL && id != 0)
	{
		wcscpy(ToolTipText, text);
		ToolTipZoomer.SetDestination(1.0f, 1.0f);
		ToolTipID = id;
	}
	else
	{
		ToolTipZoomer.SetDestination(0.0f, 0.1f);
	}
}

void FrontEnd::DrawMouse()
{
	int   frame = CursorFrames[(GetTickCount() >> FRONT_END_CURSOR_FRAME_SHIFT) % FRONT_END_CURSOR_FRAMES];
	float u = (frame & (FRONT_END_CURSOR_GRID - 1)) * (1.0f / FRONT_END_CURSOR_GRID);
	float v = (frame / FRONT_END_CURSOR_GRID) * (1.0f / FRONT_END_CURSOR_GRID);

	LHCoord pos = LHSys::TheSystem.mouse.Pos();
	int     left = pos.x - 2;
	int     top = pos.y;
	int     right = left + FRONT_END_CURSOR_SIZE;
	int     bottom = top + FRONT_END_CURSOR_SIZE;
	SetupThing::DrawAlpha = LH3D_COLOR_CHANNEL_MAX;
	LH3DColor colour(LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_OPAQUE);
	SetupThing::DrawBox(left, top, right, bottom, u + 1.0f / 512.0f, v + 1.0f / 512.0f, u + 31.0f / 256.0f,
	                    v + 31.0f / 256.0f, SetupThing::ButtonMaterial, &colour, 0, -0xa000, 0xa000, false, 100.0f);

	GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
	static LHCoord lastPos;
	LHCoord        current = LHSys::TheSystem.mouse.Pos();
	if (current.x != lastPos.x || current.y != lastPos.y)
	{
		SetToolTip(NULL, 0);
	}
	lastPos = current;

	ToolTipZoomer.Update(LH3DTech::g_delta_time * 0.001f);
	int alpha = (int)(ToolTipZoomer.GetCurrentValue() * 255.0f);
	if (alpha > FRONT_END_TOOL_TIP_MIN_ALPHA)
	{
		if (alpha > LH3D_COLOR_CHANNEL_MAX)
		{
			alpha = LH3D_COLOR_CHANNEL_MAX;
		}
		float     size = (float)(bottom - top - 8);
		LH3DColor shadow(0, 0, 0, alpha);
		font->DrawTextRaw(ToolTipText, wcslen(ToolTipText), (float)(right + 2), (float)(top + 6),
		                  FRONT_END_TOOL_TIP_TEXT_DEPTH, size, &shadow, 0, NULL, 0.0f, FRONT_END_TOOL_TIP_FADE);
		LH3DColor text(LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, 0, alpha);
		font->DrawTextRaw(ToolTipText, wcslen(ToolTipText), (float)right, (float)(top + 4),
		                  FRONT_END_TOOL_TIP_TEXT_DEPTH, size, &text, 0, NULL, 0.0f, FRONT_END_TOOL_TIP_FADE);
	}
}

Zoomer FrontEnd::ToolTipZoomer;

void FrontEnd::SetCursorOn()
{
	CursorOn = true;
	LHSys::TheSystem.mouse.SetCursor(NULL, LH_MOUSE_IMAGE_TYPE_HIDDEN, 0);
}

void FrontEnd::SetCursorOff()
{
	CursorOn = false;
}

void FrontEnd::Close()
{
	SymbolMaterialB->Release();
	SymbolMaterialB = NULL;
	SymbolMaterial->Release();
	SymbolMaterial = NULL;
	SymbolMaterialC->Release();
	SymbolMaterialC = NULL;
	delete LobbyDialog;
	delete GSLobbyDialog;
	delete RegisterDialog;
	delete LoginDialog;
	delete MainMenuDialog;
	delete ProfileEditorDialog;
	delete NewProfileDialog;
	delete LoadingDialog;
	delete SetupMultiplayerDialog;
	delete OnlineLandscapesDialog;
	delete ChannelDialog;
}

void Plasma::Init()
{
	PinTexture = LH3DTexture::Create("data\\textures\\pin.raw", 0x41, NULL, NULL);
	PinMaterial =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, PinTexture);
	PinMaterial->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	for (int column = 0; column < PLASMA_COLUMNS; column++)
	{
		for (int row = 0; row < PLASMA_ROWS; row++)
		{
			points[column * PLASMA_ROWS + row].x =
				(float)((LHSys::TheSystem.screen.width * column) / (PLASMA_COLUMNS - 1));
			points[column * PLASMA_ROWS + row].y = (float)((LHSys::TheSystem.screen.height * row) / (PLASMA_ROWS - 1));
			points[column * PLASMA_ROWS + row].z = 10000.0f;
			uvs[column * PLASMA_ROWS + row][0] = column / (float)(PLASMA_COLUMNS - 1);
			uvs[column * PLASMA_ROWS + row][1] = row / (float)(PLASMA_ROWS - 1);
			colors[column * PLASMA_ROWS + row] = LH3DColor(LH3D_COLOR_WHITE);
		}
	}
	for (int x = 0; x < PLASMA_COLUMNS - 1; x++)
	{
		for (int y = 0; y < PLASMA_ROWS - 1; y++)
		{
			int corner = x * PLASMA_ROWS + y;
			int index = (x * (PLASMA_ROWS - 1) + y) * 6;
			indices[index] = corner;
			indices[index + 1] = corner + PLASMA_ROWS;
			indices[index + 2] = corner + PLASMA_ROWS + 1;
			indices[index + 3] = corner + PLASMA_ROWS + 1;
			indices[index + 4] = corner + 1;
			indices[index + 5] = corner;
		}
	}
	for (int wave = 0; wave < PLASMA_NUM_WAVES; wave++)
	{
		Speeds[wave].Set(Random(-1.0f, 1.0f), Random(-1.0f, 1.0f), Random(-1.0f, 1.0f));
		Phases[wave].Set(Random(-8.0f, 8.0f), Random(-8.0f, 8.0f), Random(-8.0f, 8.0f));
	}
}

void Plasma::Render(bool32_t animate)
{
	float dt = LH3DTech::g_delta_time * 0.0000001f;
	if (!animate)
	{
		dt = 0.0f;
	}
	for (int pass = 0; pass < PLASMA_NUM_PASSES; pass++)
	{
		for (int column = 0; column < PLASMA_COLUMNS; column++)
		{
			for (int row = 0; row < PLASMA_ROWS; row++)
			{
				float u = 0.0f;
				float v = 0.0f;
				for (int wave = pass * (PLASMA_NUM_WAVES / PLASMA_NUM_PASSES);
				     wave < pass * (PLASMA_NUM_WAVES / PLASMA_NUM_PASSES) + PLASMA_NUM_WAVES / PLASMA_NUM_PASSES;
				     wave++)
				{
					float   cx = (sin(Phases[wave].x) + 1.0) * 20.0;
					float   cy = (cos(Phases[wave].y) + 1.0) * 20.0;
					Point2D delta(column - cx, row - cy);
					float   strength = cos(Phases[wave].z) * 2.0 + 3.0;
					float   value = (strength * 3.0f) / (sqrt(delta * delta) + 10.0);
					if (wave & 1)
					{
						u += value;
					}
					else
					{
						v += value;
					}
					Phases[wave] += Speeds[wave] * dt;
					Phases[wave].x = angle_correct(Phases[wave].x);
					Phases[wave].y = angle_correct(Phases[wave].y);
					Phases[wave].z = angle_correct(Phases[wave].z);
				}
				uvs[column * PLASMA_ROWS + row][0] = u;
				uvs[column * PLASMA_ROWS + row][1] = v;
			}
		}
		LH3DTech::Draw3DScreenTriangle(PLASMA_NUM_POINTS, points, colors, (float*)uvs, PLASMA_NUM_TRIANGLES, indices,
		                               PinMaterial, 0);
	}
}

void FrontEnd::Run()
{
	unsigned long size;
	char          userName[256];
	LH3DWideScreen::g_fvalue = 0.0f;
	LH3DRender::StartFrame();
	g_enable_callbacks = false;
	LH3DRender::FinishFrame();
	g_enable_callbacks = true;
	DialogBoxBase::HideAll();
	MainMenuDialog->SelectedButton = -1;
	SetCursorOn();
	MainMenuDialog->AutoSaveValid = false;
	if (PlayerProfile::GetNumberOfProfiles() == 0)
	{
		PlayerProfile profile;
		size = FRONT_END_USER_NAME_LENGTH - 1;
		LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
		if (RegistryRetrieveString("Software\\Lionhead Studios Ltd\\Black & White", "FirstPlayerName", userName,
		                           &size) != LH_OK)
		{
			size = FRONT_END_USER_NAME_LENGTH - 1;
			GetUserNameA(userName, &size);
		}
		userName[FRONT_END_USER_NAME_LENGTH - 1] = '\0';
		wcscpy(profile.CurrentProfile, CHAR2WCHAR(userName));
		profile.CurrentProfile[FRONT_END_USER_NAME_LENGTH - 1] = L'\0';
		if (profile.CurrentProfile[0] == L'\0')
		{
			wcscpy(profile.CurrentProfile,
			       HelpTextDataBase::HelpTextDatabase.GetData(HELP_TEXT_DIALOG_PROFILEPLAYER)->Text);
		}
		if (profile.PlayerSymbol > PLAYER_SYMBOL_COUNT - 1)
		{
			profile.PlayerSymbol = 0;
		}
		if (wcslen(profile.CurrentProfile) <= PLAYER_PROFILE_NAME_LENGTH && wcslen(profile.CurrentProfile) != 0)
		{
			if (wcslen(profile.CreatureName) == 0)
			{
				wcscpy(profile.CreatureName, profile.CurrentProfile);
			}
		}
		PlayerProfile::CreateProfile(profile.CurrentProfile);
		PlayerProfile::WriteBackToRegistry(profile);
		PlayerProfile::SetCurrentProfile(profile.CurrentProfile);
	}
	DialogBoxBase::HideAll();
	LH3DTech::UpdateCamera(LHPoint(0.0f, 20.0f, -30.0f), LHPoint(0.0f, 7.0f, 0.0f));
	int fade = FRONT_END_FADE_TIME - 1;
	for (;;)
	{
		if (SetupBox::GetCurrentActiveBox() == NULL)
		{
			MainMenuDialog->Show();
		}
		LH3DRender::g_mode_cleaning = LH3D_CLEANING_MODE_SCREEN;
		LH3DRender::StartFrame();
		GGame::g_game->TimeInc = LH3DTech::g_delta_time;
		if (PlasmaBackground == NULL)
		{
			PlasmaBackground = NEW(423) Plasma;
		}
		LH3DRender::g_mode_cleaning = LH3D_CLEANING_MODE_SCREEN;
		PlasmaBackground->Render(true);
		if (LHSys::TheSystem.keyboard.CurrentKey != 0)
		{
			int key = LHSys::TheSystem.keyboard.CurrentKey;
			int mod = LHSys::TheSystem.keyboard.ModifierFlags;
			LHSys::TheSystem.keyboard.CurrentKey = 0;
			if (SetupBox::GetCurrentActiveBox() != NULL)
			{
				SetupBox::GetCurrentActiveBox()->Key(key, mod);
			}
		}
		LH3DTech::g_game_time_inc = LH3DTech::g_delta_time;
		if (TattooDialog->C3D != NULL && TattooDialog->OwnsC3D)
		{
			TattooDialog->UpdateC3D();
			TattooDialog->DrawC3D();
		}
		fade -= LH3DTech::g_delta_time;
		if (fade < 0)
		{
			fade = 0;
		}
		else if (fade != 0)
		{
			int alpha = fade * 255 / FRONT_END_FADE_TIME;
			LH3DFade::SetColor(LH3DColor((alpha > 0 ? (alpha < 255 ? alpha : 255) : 0) << 24));
		}
		static float time = 0.0f;
		time += LH3DTech::g_delta_time * 0.001f;
		CameraHelp::DrawMouseCallback();
		LHMouse& mouse = LHSys::TheSystem.mouse;
		SetupThing::MouseCaptured =
			mouse.Buttons & (LH_MOUSE_BUTTON_LEFT_DOWN | LH_MOUSE_BUTTON_RIGHT_DOWN | LH_MOUSE_BUTTON_MIDDLE_DOWN);
		SetupThing::RightClicked |= mouse.Buttons & LH_MOUSE_BUTTON_RIGHT_DOWN;
		SetupThing::DoubleClicked |=
			mouse.ButtonPressed & (LH_MOUSE_BUTTON_LEFT_DOUBLE_CLICK | LH_MOUSE_BUTTON_RIGHT_DOUBLE_CLICK);
		mouse.ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOUBLE_CLICK;
		mouse.ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOUBLE_CLICK;
		g_enable_callbacks = false;
		LH3DRender::FinishFrame();
		if (LHSys::TheSystem.screen.Flip(true))
		{
			break;
		}
	}
	LHSys::TheSystem.mouse.ButtonPressed &=
		~(LH_MOUSE_BUTTON_LEFT_DOWN | LH_MOUSE_BUTTON_RIGHT_DOWN | LH_MOUSE_BUTTON_MIDDLE_DOWN);
	MainMenuDialog->SelectedButton = -1;
}

void FrontEnd::JustDoNewProfileBox()
{
	JustDoABox(NewProfileDialog);
}

void NewProfileBox::Init(uint32_t background_style, uint32_t tall_background,
                         void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	SymbolPicture = NEW(536)
		SetupPicture(NEW_PROFILE_BOX_CONTROL_ID_SYMBOL, 368, 300, FrontEnd::SymbolMaterial, 0, 4, true, 64, false);
	NEW(538)
	SetupStaticText(SETUP_CONTROL_ID_NONE, 100, 150, 600, 50,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PLEASETYPENAME),
	                TEXTJUSTIFY_CENTRE);
	CancelButton = NEW(540) SetupBigButton(NEW_PROFILE_BOX_CONTROL_ID_CANCEL, 610, 400,
	                                       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_03),
	                                       40, SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	OkButton = NEW(541) SetupBigButton(NEW_PROFILE_BOX_CONTROL_ID_OK, 150, 400,
	                                   HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_04), 40,
	                                   SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	NEW(546)
	SetupStaticText(SETUP_CONTROL_ID_NONE, 100, 300, 250, 64,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PLAYER), TEXTJUSTIFY_RIGHT);
	NEW(547)
	SetupStaticText(SETUP_CONTROL_ID_NONE, 450, 300, 250, 64,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SYMBOL), TEXTJUSTIFY_LEFT);
	NameEdit = NEW(550) SetupEdit(NEW_PROFILE_BOX_CONTROL_ID_NAME, 200, 230, 400, 50, L"", true);
	NameEdit->MaxLength = FRONT_END_PROFILE_NAME_EDIT_LENGTH;
	Instance->Cancelled = false;
}

void NewProfileBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void NewProfileBox::InitControls()
{
	setup_box->SetFocusControl(NameEdit);
	NameEdit->SetText(L"");
	if (PlayerProfile::GetNumberOfProfiles() == 0)
	{
		CancelButton->Hide(true);
	}
	else
	{
		CancelButton->Hide(false);
	}
	OkButton->rect.end.x = OkButton->rect.start.x + 40;
	CancelButton->rect.end.x = CancelButton->rect.start.x + 40;
	SymbolPicture->picture_index = 0 % SymbolPicture->NumPictures;
	Instance->Cancelled = false;
}

void __stdcall NewProfileBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	switch (message)
	{
	case SETUP_MESSAGE_CLICK:
		break;
	case SETUP_MESSAGE_ACTIVATE:
		Instance->Cancelled = false;
		Instance->InitControls();
		return;
	case SETUP_MESSAGE_CHAR:
		if (data1 == VK_RETURN)
		{
			control = Instance->OkButton;
		}
		else if (data1 == VK_ESCAPE)
		{
			control = Instance->CancelButton;
		}
		else
		{
			return;
		}
		break;
	default:
		return;
	}

	if (control == NULL)
	{
		return;
	}

	if (control->id == NEW_PROFILE_BOX_CONTROL_ID_OK)
	{
		PlayerProfile profile;
		wcscpy(profile.CurrentProfile, Instance->NameEdit->label);
		if (PlayerProfile::ProfileExists(profile.CurrentProfile))
		{
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PLAYERALREADYEXISTS),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
		}
		else
		{
			if (profile.PlayerSymbol > PLAYER_SYMBOL_COUNT - 1)
			{
				profile.PlayerSymbol = 0;
			}
			if (wcslen(profile.CurrentProfile) <= PLAYER_PROFILE_NAME_LENGTH && wcslen(profile.CurrentProfile) != 0)
			{
				if (wcslen(profile.CreatureName) == 0)
				{
					wcscpy(profile.CreatureName, profile.CurrentProfile);
				}
				PlayerProfile::CreateProfile(profile.CurrentProfile);
				profile.PlayerSymbol = Instance->SymbolPicture->picture_index;
				PlayerProfile::WriteBackToRegistry(profile);
				PlayerProfile::SetCurrentProfile(profile.CurrentProfile);
				GGame::g_game->path_creator.UpdateCurrentProfile();
				GGame::g_game->path_creator.CheckAndRecreateSaveGamePaths();
				DialogBoxBase::Hide();
				char userPath[0x400];
				GGame::g_game->path_creator.GetCurrentUserPath(userPath);
				if (GGame::Mail != NULL)
				{
					if (!GGame::Mail->ReloadSystem(LHSPrintf("%s\\addressbook.lhe", userPath)))
					{
						GGame::Mail->SetSystemState(false);
					}
					else
					{
						GGame::Mail->SetSystemState(true);
					}
				}
				else
				{
					GGame::Mail = LHLoadInGameEmailSystem(LHSPrintf("%s\\addressbook.lhe", userPath));
				}
			}
			else
			{
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_INVALIDPLAYERNAME),
				                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			}
		}
	}

	if (control->id == NEW_PROFILE_BOX_CONTROL_ID_CANCEL && !control->hidden)
	{
		DialogBoxBase::Hide();
		Instance->Cancelled = true;
	}
}

void LoadingBox::Init(uint32_t background_style, uint32_t tall_background,
                      void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
}

void LoadingBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void LoadingBox::InitControls() {}

void __stdcall LoadingBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2) {}

void EditingDebugBox::Init(uint32_t background_style, uint32_t tall_background,
                           void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	Edit = NEW(705) SetupEdit(EDITING_DEBUG_BOX_CONTROL_ID_EDIT, 200, 300, 400, 30, L"", true);
	Edit->text_size = GetMidTextSize();
	TitleText =
		NEW(708) SetupStaticText(EDITING_DEBUG_BOX_CONTROL_ID_TITLE, 200, 250, 400, 30, L"", TEXTJUSTIFY_CENTRE);
	TitleText->text_size = GetMidTextSize();
	CancelButton = NEW(712) SetupBigButton(EDITING_DEBUG_BOX_CONTROL_ID_CANCEL, 570, 350,
	                                       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_03),
	                                       30, SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	OkButton = NEW(713) SetupBigButton(EDITING_DEBUG_BOX_CONTROL_ID_OK, 200, 350,
	                                   HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_04), 30,
	                                   SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	DoneCallback = NULL;
	Text = NULL;
	wcscpy(Title, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_98));
}

void EditingDebugBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void EditingDebugBox::InitControls()
{
	Edit->SetText(Text);
	wcscpy(TitleText->label, Title);
}

void __stdcall EditingDebugBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	switch (message)
	{
	case SETUP_MESSAGE_CLICK:
		if (control != NULL)
		{
			if (control->id == EDITING_DEBUG_BOX_CONTROL_ID_OK)
			{
				if (Instance->Text != NULL)
				{
					wcscpy(Instance->Text, Instance->Edit->label);
				}
				if (Instance->DoneCallback != NULL)
				{
					Instance->DoneCallback();
				}
				DialogBoxBase::Hide();
			}
			else if (control->id == EDITING_DEBUG_BOX_CONTROL_ID_CANCEL)
			{
				DialogBoxBase::Hide();
			}
		}
		break;
	case SETUP_MESSAGE_ACTIVATE:
		Instance->InitControls();
		break;
	}
}

void RegisterBox::Init(uint32_t background_style, uint32_t tall_background,
                       void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	NEW(776)
	SetupStaticText(SETUP_CONTROL_ID_NONE, 100, 150, 600, 250,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_NAMEANDPASSWORD),
	                TEXTJUSTIFY_CENTRE_BREAK);
	RegisterButton = NEW(777) SetupButton(REGISTER_BOX_CONTROL_ID_REGISTER, 310, 430, 200, 50,
	                                      HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_REGISTER), 0);
	OkButton = NEW(778) SetupButton(REGISTER_BOX_CONTROL_ID_OK, 100, 430, 200, 50,
	                                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOGIN), 0);
	CancelButton =
		NEW(779) SetupButton(REGISTER_BOX_CONTROL_ID_CANCEL, 520, 430, 200, 50,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_03), 0);
	NameEdit = NEW(781) SetupEdit(REGISTER_BOX_CONTROL_ID_NAME, 250, 300, 300, 50, L"", true);
	PasswordEdit = NEW(782) SetupEdit(REGISTER_BOX_CONTROL_ID_PASSWORD, 250, 360, 300, 50, L"", true);
	PasswordEdit->MaskedText = true;
	NEW(785)
	SetupStaticText(SETUP_CONTROL_ID_NONE, 50, 300, 200, 50,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOGINNAME), TEXTJUSTIFY_RIGHT);
	NEW(786)
	SetupStaticText(SETUP_CONTROL_ID_NONE, 50, 360, 200, 50,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PASSWORD), TEXTJUSTIFY_RIGHT);
	Cancelled = false;
}

void RegisterBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void RegisterBox::InitControls()
{
	setup_box->SetFocusControl(NameEdit);
	NameEdit->SetText(L"");
	PasswordEdit->SetText(L"");
	Cancelled = false;
}

void __stdcall RegisterBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	switch (message)
	{
	case SETUP_MESSAGE_CLICK:
		break;
	case SETUP_MESSAGE_ACTIVATE:
		Instance->InitControls();
		DialogBoxBase::Hide();
		return;
	case SETUP_MESSAGE_CHAR:
		if (data1 == VK_RETURN)
		{
			control = Instance->OkButton;
		}
		else if (data1 == VK_ESCAPE)
		{
			control = Instance->CancelButton;
		}
		else
		{
			return;
		}
		break;
	default:
		return;
	}

	if (control == NULL)
	{
		return;
	}

	if (control->id == REGISTER_BOX_CONTROL_ID_OK)
	{
		if (wcslen(Instance->NameEdit->label) == 0)
		{
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ENTERLOGINNAME),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
		}
		if (wcslen(Instance->PasswordEdit->label) == 0)
		{
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ENTERPASSWORD),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
		}
		else
		{
			wcscpy(PlayerProfile::Profile.LoginName, Instance->NameEdit->label);
			wcscpy(PlayerProfile::Profile.LoginPassword, Instance->PasswordEdit->label);
			PlayerProfile::WriteBackToRegistry(PlayerProfile::Profile);
			DialogBoxBase::Hide();
		}
	}
	if (control->id == REGISTER_BOX_CONTROL_ID_REGISTER)
	{
		box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_WEBLAUNCH),
		                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
	}
	if (control->id == REGISTER_BOX_CONTROL_ID_CANCEL && !control->hidden)
	{
		Instance->Cancelled = true;
		DialogBoxBase::Hide();
	}
}

void ProfileEditor::Init(uint32_t background_style, uint32_t tall_background,
                         void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	SymbolPicture = NEW(878)
		SetupPicture(PROFILE_EDITOR_CONTROL_ID_SYMBOL, 368, 295, FrontEnd::SymbolMaterial, 0, 4, true, 64, false);
	NEW(880)
	SetupStaticText(SETUP_CONTROL_ID_NONE, 100, 60, 600, 60,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SELECT_A_PLAYER),
	                TEXTJUSTIFY_CENTRE_BREAK);
	ProfileList = NEW(881) SetupList(PROFILE_EDITOR_CONTROL_ID_LIST, 200, 120, 400, 160);
	ProfileList->CentredText = true;
	ProfileList->text_size = GetMidTextSize();
	CloseButton = NEW(884) SetupBigButton(PROFILE_EDITOR_CONTROL_ID_CLOSE, 30, 530,
	                                      HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK), 40,
	                                      SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	CloseButton->text_size = GetMidTextSize();
	NEW(888)
	SetupStaticText(SETUP_CONTROL_ID_NONE, 170, 295, 190, 64,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PLAYER), TEXTJUSTIFY_RIGHT);
	NEW(889)
	SetupStaticText(SETUP_CONTROL_ID_NONE, 440, 295, 190, 64,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SYMBOL), TEXTJUSTIFY_LEFT);
	SetupStaticText* nameText = NEW(892) SetupStaticText(
		SETUP_CONTROL_ID_NONE, 0, 370, 190, 40,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CREATURENAME), TEXTJUSTIFY_RIGHT);
	nameText->text_size = GetMidTextSize();
	NameEdit = NEW(893) SetupEdit(PROFILE_EDITOR_CONTROL_ID_NAME, 200, 370, 400, 40, L"", true);
	NameEdit->text_size = GetMidTextSize();
	NameEdit->MaxLength = FRONT_END_PROFILE_NAME_EDIT_LENGTH;
	NewButton =
		NEW(897) SetupBigButton(PROFILE_EDITOR_CONTROL_ID_NEW, 209, 450,
	                            HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CREATENEWPLAYER), 25,
	                            SETUP_TEXT_POSITION_BELOW, BBSTYLE_CHECK_BOX_OFF);
	DeleteButton =
		NEW(898) SetupBigButton(PROFILE_EDITOR_CONTROL_ID_DELETE, 324, 450,
	                            HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_DELETEPLAYER), 25,
	                            SETUP_TEXT_POSITION_BELOW, BBSTYLE_CHECK_BOX_OFF);
	TattooButton = NEW(899) SetupBigButton(PROFILE_EDITOR_CONTROL_ID_TATTOO, 444, 450,
	                                       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_EDITTATOO),
	                                       25, SETUP_TEXT_POSITION_BELOW, BBSTYLE_CHECK_BOX_OFF);
	QuitButton = NEW(900) SetupBigButton(PROFILE_EDITOR_CONTROL_ID_QUIT, 559, 450,
	                                     HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_STARTGAME), 25,
	                                     SETUP_TEXT_POSITION_BELOW, BBSTYLE_CHECK_BOX_OFF);
	AddOptionsTabs(OPTIONS_TAB_PROFILE);
}

void ProfileEditor::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void ProfileEditor::UpdateTattooEdit()
{
	char          fileName[0x100];
	unsigned long size = sizeof(fileName) - 1;
	LHNetGetCurrentProfileString((char*)LH_NET_PROFILE_FILE_NAME, fileName, &size);
	bool canTattoo = Creature::CanLoad3D(fileName);
	if (!CreatureRoom::CreatureInTemple)
	{
		canTattoo = false;
	}
	if (RestartRequired)
	{
		canTattoo = false;
	}
	TattooButton->Hide(!canTattoo);
	if (!canTattoo)
	{
		NewButton->rect.start.x = 188;
		NewButton->rect.end.x = NewButton->rect.start.x + 25;
		DeleteButton->rect.start.x = 388;
		DeleteButton->rect.end.x = DeleteButton->rect.start.x + 25;
		QuitButton->rect.start.x = 588;
		QuitButton->rect.end.x = QuitButton->rect.start.x + 25;
	}
	else
	{
		NewButton->rect.start.x = 138;
		NewButton->rect.end.x = NewButton->rect.start.x + 25;
		DeleteButton->rect.start.x = 305;
		DeleteButton->rect.end.x = DeleteButton->rect.start.x + 25;
		TattooButton->rect.start.x = 471;
		TattooButton->rect.end.x = TattooButton->rect.start.x + 25;
		QuitButton->rect.start.x = 638;
		QuitButton->rect.end.x = QuitButton->rect.start.x + 25;
	}
}

void ProfileEditor::UpdateEditableControls()
{
	GGame::g_game->path_creator.UpdateCurrentProfile();
	PlayerSymbol::Open();
	wcscpy(NameEdit->label, PlayerProfile::Profile.CreatureName);
	SymbolPicture->picture_index = PlayerProfile::Profile.PlayerSymbol % SymbolPicture->NumPictures;
	SymbolPicture->NumPictures = PLAYER_SYMBOL_COUNT;
	UpdateTattooEdit();
}

void ProfileEditor::InitControls()
{
	RebuildList();
	char16_t name[0x100];
	PlayerProfile::GetCurrentProfile(name);
	int index = PlayerProfile::GetProfileIdx(name);
	ProfileList->SetSelected(index);
	ProfileList->SelectedIndex = index;
	UpdateEditableControls();
	NameEdit->Editable = !GGame::g_game->IsMultiplayerGame();
}

void ProfileEditor::UpdateCurrentProfile()
{
	PlayerProfile profile = PlayerProfile::Profile;
	wcscpy(profile.CreatureName, NameEdit->label);
	profile.PlayerSymbol = SymbolPicture->picture_index;
	if (profile.PlayerSymbol > PLAYER_SYMBOL_COUNT - 1)
	{
		profile.PlayerSymbol = 0;
	}
	if (wcslen(profile.CurrentProfile) <= PLAYER_PROFILE_NAME_LENGTH && wcslen(profile.CurrentProfile) != 0)
	{
		if (wcslen(profile.CreatureName) == 0)
		{
			wcscpy(profile.CreatureName, profile.CurrentProfile);
		}
		PlayerProfile::Profile = profile;
		PlayerProfile::WriteBackToRegistry(PlayerProfile::Profile);
	}
}

void ProfileEditor::RebuildList()
{
	LHLinkedList<wchar_t*> profiles;
	LHNetGetProfileList(&profiles);
	ProfileList->DeleteAll();
	int numProfiles = profiles.count;
	InUseProfileIndex = -1;
	for (int i = 0; i < numProfiles; i++)
	{
		ProfileList->AddString(profiles.GetAtPosition(i), 0, 0, 0);
	}
	LHNetFreeProfileList(&profiles);
	for (int j = 0; j < ProfileList->NumItems; j++)
	{
		if (wcscmp(InUseProfile, ProfileList->item_labels[j]) == 0)
		{
			ProfileList->SelectedIndex = j;
			InUseProfileIndex = j;
		}
	}
	if (ProfileList->NumItems == 1 && InUseProfileIndex == -1)
	{
		if (NewProfileShown == true)
		{
			ProfileAdded = true;
			wcscpy(InUseProfile, ProfileList->item_labels[0]);
		}
		ProfileList->SelectedIndex = 0;
		InUseProfileIndex = 0;
	}
	if (ActivatedBox != NULL)
	{
		ActivatedBox->FocusedWidget = NULL;
	}
	UpdateEditableControls();
	ProfileList->AutoScroll(false);
}

void ProfileEditor::MakeRestartBox()
{
	wcscpy(FrontEnd::ProfileEditorDialog->CloseButton->label,
	       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_FRONT_END_12));
	RestartRequired = true;
	Instance->UpdateTattooEdit();
}

void ProfileEditor::MakeCloseBox()
{
	if (!FrontEnd::ProfileEditorDialog->ProfileAdded)
	{
		wcscpy(FrontEnd::ProfileEditorDialog->CloseButton->label,
		       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK));
		RestartRequired = false;
	}
	else
	{
		MakeRestartBox();
	}
	Instance->UpdateTattooEdit();
}

void __stdcall ProfileEditor::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	static int      selectedIndex;
	static uint32_t playerSymbol;

	if (!RestartRequired)
	{
		ProcessOptionsTabs(message, box, control, data1, data2);
	}
	else if (message == SETUP_MESSAGE_CLICK && control != NULL && control->id >= FRONT_END_TAB_FIRST_ID &&
	         control->id < FRONT_END_TAB_FIRST_ID + FRONT_END_TAB_ID_RANGE &&
	         control->id != FRONT_END_TAB_FIRST_ID + OPTIONS_TAB_PROFILE)
	{
		MessageBoxState = PROFILE_EDITOR_MESSAGE_BOX_4;
		box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_RESTART_WARNING),
		                 (MSGBOXSTYLE)3, 0);
	}

	switch (message)
	{
	case SETUP_MESSAGE_UPDATE: {
		SetupControl* hovered = box->FindControl(data1, data2);
		SetupControl* tattoo = box->FindControl(PROFILE_EDITOR_CONTROL_ID_TATTOO);
		wcscpy(tattoo->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_EDITTATOO));
		static char16_t* tooltips[PROFILE_EDITOR_NUM_TOOLTIPS] = {
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOOBACK),      //
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOOHEAD),      //
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOOCHEST),     //
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOOBUM),       //
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOOLEFTARM),   //
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOORIGHTARM),  //
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOOLEFTHAND),  //
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOORIGHTHAND), //
		};
		if (hovered != NULL)
		{
			for (int i = 0; i < PROFILE_EDITOR_NUM_TOOLTIPS; i++)
			{
				if (hovered == Instance->TooltipControls[i])
				{
					wcscpy(tattoo->label, tooltips[i]);
				}
			}
		}
		break;
	}
	case SETUP_MESSAGE_ACTIVATE:
		if (!NewProfileShown)
		{
			FrontEnd::ProfileEditorDialog->ProfileAdded = false;
			Instance->InitControls();
			wcscpy(InUseProfile, LHNetGetCurrentUsedProfile());
			wcscpy(FrontEnd::PreviousProfile, InUseProfile);
			InUseProfileIndex = Instance->ProfileList->SelectedIndex;
			LastProfileIndex = InUseProfileIndex;
			MakeCloseBox();
			ActivatedBox = box;
		}
		else
		{
			char16_t current[0x400];
			wcscpy(current, LHNetGetCurrentUsedProfile());
			Instance->RebuildList();
			if (Instance->ProfileList->NumItems == 1)
			{
				Instance->ProfileList->SelectedIndex = 0;
				PlayerProfile::SetCurrentProfile(
					Instance->ProfileList->item_labels[Instance->ProfileList->SelectedIndex]);
			}
			else
			{
				for (int i = 0; i < Instance->ProfileList->NumItems; i++)
				{
					if (_wcsicmp(Instance->ProfileList->item_labels[i], current) == 0)
					{
						Instance->ProfileList->SelectedIndex = i;
						PlayerProfile::SetCurrentProfile(
							Instance->ProfileList->item_labels[Instance->ProfileList->SelectedIndex]);
						break;
					}
				}
			}
			Instance->UpdateEditableControls();
		}
		if (InUseProfileIndex == -1)
		{
			MakeRestartBox();
		}
		else if (InUseProfileIndex != Instance->ProfileList->SelectedIndex)
		{
			MakeRestartBox();
		}
		else
		{
			MakeCloseBox();
		}
		MessageBoxState = PROFILE_EDITOR_MESSAGE_BOX_NONE;
		NewProfileShown = false;
		playerSymbol = PlayerProfile::Profile.PlayerSymbol;
		break;
	case SETUP_MESSAGE_CHAR:
		if (data1 == VK_ESCAPE || data1 == VK_RETURN)
		{
			Instance->UpdateCurrentProfile();
		}
		break;
	case SETUP_MESSAGE_DEACTIVATE:
		if (!NewProfileShown)
		{
			Instance->UpdateCurrentProfile();
		}
		PlayerSymbol::CreateFinalTextureSymbols();
		break;
	case SETUP_MESSAGE_DRAG:
		if (control == NULL || control->id != PROFILE_EDITOR_CONTROL_ID_LIST)
		{
			break;
		}
		selectedIndex = Instance->ProfileList->SelectedIndex;
		if (selectedIndex != -1)
		{
			break;
		}
		if (InUseProfileIndex != -1)
		{
			ActivatedBox->FocusedWidget = NULL;
			Instance->ProfileList->SelectedIndex = InUseProfileIndex;
			MakeCloseBox();
		}
		else if (Instance->ProfileList->NumItems != 0)
		{
			Instance->ProfileList->SelectedIndex = 0;
			MakeRestartBox();
		}
		break;
	case SETUP_MESSAGE_CLICK:
		if (control == NULL)
		{
			break;
		}
		if (control->id == PROFILE_EDITOR_CONTROL_ID_NEW)
		{
			Instance->UpdateCurrentProfile();
			NewProfileShown = true;
			NewProfileBox::Instance->Show();
		}
		if (control->id == PROFILE_EDITOR_CONTROL_ID_CLOSE)
		{
			Instance->UpdateCurrentProfile();
			if (FrontEnd::ProfileEditorDialog->ProfileAdded)
			{
				MessageBoxState = PROFILE_EDITOR_MESSAGE_BOX_3;
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_RESTART),
				                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			}
			else if (RestartRequired)
			{
				MessageBoxState = PROFILE_EDITOR_MESSAGE_BOX_4;
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_RESTART_WARNING),
				                 (MSGBOXSTYLE)3, 0);
			}
			else if (playerSymbol != PlayerProfile::Profile.PlayerSymbol && GGame::g_game->IsMultiplayerGame())
			{
				playerSymbol = PlayerProfile::Profile.PlayerSymbol;
				MessageBoxState = PROFILE_EDITOR_MESSAGE_BOX_6;
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_SYMBOL_EXTRA_02),
				                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			}
			else
			{
				DialogBoxBase::Hide();
			}
		}
		if (control->id == PROFILE_EDITOR_CONTROL_ID_LIST)
		{
			selectedIndex = Instance->ProfileList->SelectedIndex;
			if (selectedIndex == -1)
			{
				if (InUseProfileIndex != -1)
				{
					ActivatedBox->FocusedWidget = NULL;
					Instance->ProfileList->SelectedIndex = InUseProfileIndex;
					MakeCloseBox();
				}
				else if (Instance->ProfileList->NumItems != 0)
				{
					Instance->ProfileList->SelectedIndex = 0;
					MakeRestartBox();
				}
			}
			else if (InUseProfileIndex != selectedIndex && !FrontEnd::ProfileEditorDialog->ProfileAdded)
			{
				Instance->UpdateCurrentProfile();
				char16_t name[0x100];
				PlayerProfile::GetProfileNameByIndex(Instance->ProfileList->SelectedIndex, name);
				PlayerProfile::SetCurrentProfile(name);
				char userPath[0x400];
				GGame::g_game->path_creator.GetCurrentUserPath(userPath);
				if (GGame::Mail != NULL)
				{
					if (!GGame::Mail->ReloadSystem(LHSPrintf("%s\\addressbook.lhe", userPath)))
					{
						GGame::Mail->SetSystemState(false);
					}
					else
					{
						GGame::Mail->SetSystemState(true);
					}
				}
				else
				{
					GGame::Mail = LHLoadInGameEmailSystem(LHSPrintf("%s\\addressbook.lhe", userPath));
				}
				Instance->UpdateEditableControls();
				MakeRestartBox();
			}
			else
			{
				Instance->UpdateCurrentProfile();
				char16_t name[0x100];
				PlayerProfile::GetProfileNameByIndex(Instance->ProfileList->SelectedIndex, name);
				PlayerProfile::SetCurrentProfile(name);
				Instance->UpdateEditableControls();
				MakeCloseBox();
			}
		}
		if (control->id == PROFILE_EDITOR_CONTROL_ID_TATTOO)
		{
			Instance->UpdateCurrentProfile();
			FrontEnd::TattooDialog->CreateFakeCreature();
			FrontEnd::TattooDialog->Show();
		}
		if (control->id == PROFILE_EDITOR_CONTROL_ID_DELETE && Instance->ProfileList->SelectedIndex >= 0 &&
		    Instance->ProfileList->NumItems > 0)
		{
			MessageBoxState = PROFILE_EDITOR_MESSAGE_BOX_DELETE;
			char16_t text[0x400];
			swprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_AERYOUSUREDELETE),
			         PlayerProfile::Profile.CurrentProfile);
			box->MessageBoxA(text, (MSGBOXSTYLE)3, 0);
		}
		if (control->id == PROFILE_EDITOR_CONTROL_ID_QUIT)
		{
			MessageBoxState = PROFILE_EDITOR_MESSAGE_BOX_QUIT;
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_20),
			                 (MSGBOXSTYLE)3, 0);
		}
		break;
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT:
		if (MessageBoxState == PROFILE_EDITOR_MESSAGE_BOX_6)
		{
			MessageBoxState = PROFILE_EDITOR_MESSAGE_BOX_NONE;
		}
		if (data1 == SETUP_MESSAGE_BOX_ID_YES)
		{
			if (MessageBoxState == PROFILE_EDITOR_MESSAGE_BOX_QUIT)
			{
				Instance->UpdateCurrentProfile();
				GGame::g_game->GameMode = GAME_MODE_NEW_GAME;
			}
			if (MessageBoxState == PROFILE_EDITOR_MESSAGE_BOX_2)
			{
				if (Instance->ProfileList->SelectedIndex >= 0)
				{
					Instance->UpdateCurrentProfile();
					char16_t name[0x100];
					PlayerProfile::GetProfileNameByIndex(Instance->ProfileList->SelectedIndex, name);
					PlayerProfile::SetCurrentProfile(name);
					Instance->UpdateEditableControls();
					MakeRestartBox();
					LastProfileIndex = Instance->ProfileList->SelectedIndex;
				}
			}
			else if (MessageBoxState == PROFILE_EDITOR_MESSAGE_BOX_DELETE)
			{
				Instance->UpdateCurrentProfile();
				if (Instance->ProfileList->SelectedIndex >= 0)
				{
					if (Instance->ProfileList->NumItems == 1 ||
					    Instance->ProfileList->SelectedIndex == InUseProfileIndex)
					{
						InUseProfileIndex = -1;
						LastProfileIndex = -1;
						wcscpy(InUseProfile, L"");
					}
					Instance->UpdateCurrentProfile();
					char path[0x400];
					GGame::g_game->path_creator.GetProfilePath(path);
					sprintf(path, "%s\\%s", path, ProfileNameToKey(PlayerProfile::Profile.CurrentProfile));
					DeleteDirectory(path);
					PlayerProfile::DeleteProfile(PlayerProfile::Profile.CurrentProfile);
					if (PlayerProfile::GetNumberOfProfiles() != 0)
					{
						char16_t name[0x100];
						PlayerProfile::GetProfileNameByIndex(0, name);
						InUseProfileIndex = PlayerProfile::GetProfileIdx(InUseProfile);
						if (InUseProfileIndex == -1 && InUseProfileIndex < PlayerProfile::GetNumberOfProfiles())
						{
							Instance->ProfileList->SelectedIndex = 0;
							PlayerProfile::SetCurrentProfile(name);
							Instance->ProfileAdded = true;
							MakeRestartBox();
							Instance->InitControls();
							Instance->UpdateEditableControls();
						}
						else
						{
							PlayerProfile::SetCurrentProfile(InUseProfile);
							InUseProfileIndex = PlayerProfile::GetProfileIdx(InUseProfile);
							Instance->ProfileList->SelectedIndex = InUseProfileIndex;
							MakeCloseBox();
							Instance->InitControls();
							Instance->UpdateEditableControls();
						}
					}
					else
					{
						NewProfileShown = true;
						InUseProfileIndex = -1;
						MakeRestartBox();
						Instance->InitControls();
						NewProfileBox::Instance->Show();
						Instance->UpdateEditableControls();
					}
				}
			}
			else if (MessageBoxState == PROFILE_EDITOR_MESSAGE_BOX_4)
			{
				PauseGame(false);
				GGame::g_game->GameMode = GAME_MODE_RESTART;
				RestartRequired = false;
				DialogBoxBase::HideAll();
			}
		}
		else if (data1 == SETUP_MESSAGE_BOX_ID_OK)
		{
			if (MessageBoxState == PROFILE_EDITOR_MESSAGE_BOX_3)
			{
				MessageBoxState = PROFILE_EDITOR_MESSAGE_BOX_NONE;
				PauseGame(false);
				GGame::g_game->GameMode = GAME_MODE_RESTART;
				RestartRequired = false;
				DialogBoxBase::HideAll();
			}
			return;
		}
		else if (data1 == SETUP_MESSAGE_BOX_ID_NO)
		{
			if (MessageBoxState == PROFILE_EDITOR_MESSAGE_BOX_2)
			{
				if (LastProfileIndex != -1)
				{
					Instance->UpdateCurrentProfile();
					char16_t name[0x100];
					PlayerProfile::GetProfileNameByIndex(LastProfileIndex, name);
					Instance->ProfileList->SelectedIndex = InUseProfileIndex;
					PlayerProfile::SetCurrentProfile(name);
					Instance->UpdateEditableControls();
					if (LastProfileIndex == InUseProfileIndex)
					{
						MakeCloseBox();
					}
					else
					{
						MakeRestartBox();
					}
				}
				else
				{
					Instance->UpdateCurrentProfile();
					char16_t name[0x100];
					PlayerProfile::GetProfileNameByIndex(0, name);
					PlayerProfile::SetCurrentProfile(name);
					Instance->UpdateEditableControls();
					MakeRestartBox();
				}
			}
		}
		else
		{
			return;
		}
		MessageBoxState = PROFILE_EDITOR_MESSAGE_BOX_NONE;
		break;
	}
}

bool32_t ProcessOptionsTabs(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	if (message == SETUP_MESSAGE_CLICK)
	{
		if (control != NULL && control->id >= FRONT_END_TAB_FIRST_ID &&
		    control->id < FRONT_END_TAB_FIRST_ID + FRONT_END_MAX_TABS)
		{
			int id = control->id;
			DialogBoxBase::HideAll();
			if (GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL)
			{
				FrontEnd::MainMenuDialog->Show();
			}
			switch (id - FRONT_END_TAB_FIRST_ID)
			{
			case OPTIONS_TAB_MINI_OPTIONS:
				GGame::g_game->dialog_box_options->mini->Show();
				return false;
			case OPTIONS_TAB_PROFILE:
				FrontEnd::ProfileEditorDialog->Show();
				return false;
			case OPTIONS_TAB_OPTIONS:
				GGame::g_game->dialog_box_options->Show();
				return false;
			case OPTIONS_TAB_KEY_BINDING:
				GGame::g_game->dialog_box_key_binding->Show();
				return false;
			case OPTIONS_TAB_IMMERSION:
				GGame::g_game->dialog_box_options->immersion->Show();
				return false;
			}
		}
	}
	else if (message == SETUP_MESSAGE_ACTIVATE)
	{
		if (box->FindControl(FRONT_END_TAB_FIRST_ID) != NULL)
		{
			wcscpy(box->FindControl(FRONT_END_TAB_FIRST_ID)->label,
			       GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL
			           ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROOM_WORLD_TITLE)
			           : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_88));
		}
	}
	return false;
}

void AddOptionsTabs(int selected)
{
	int width = SetupBox::CurrentInitBox->BackgroundWidth;
	int height = SetupBox::CurrentInitBox->BackgroundHeight;
	int numTabs = OPTIONS_TAB_COUNT - 1;
	if (ImmersionMouse != NULL)
	{
		numTabs = OPTIONS_TAB_COUNT;
	}
	float tabWidth = (float)width / numTabs;
	float x = (float)(400 - width / 2);
	for (int i = 0; i < numTabs; i++)
	{
		char16_t* label;
		switch (i)
		{
		case OPTIONS_TAB_MAIN_MENU:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_88);
			break;
		case OPTIONS_TAB_MINI_OPTIONS:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_OPTIONS);
			break;
		case OPTIONS_TAB_PROFILE:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PLAYERLIST);
			break;
		case OPTIONS_TAB_OPTIONS:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_FRONT_END_06);
			break;
		case OPTIONS_TAB_KEY_BINDING:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CONTROLOPTIONS);
			break;
		case OPTIONS_TAB_IMMERSION:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_150);
			break;
		}
		NEW(1582)
		SetupTabButton(FRONT_END_TAB_FIRST_ID + i, (int)x, 300 - height / 2 - 40, (int)(x + tabWidth) - (int)x, 40,
		               label, i == selected, i == 0, i == numTabs - 1);
		x += tabWidth;
	}
}

bool32_t ProcessMainMenuTabs(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	if (control == NULL)
	{
		return false;
	}
	if (message == SETUP_MESSAGE_CLICK)
	{
		int id = control->id;
		if (id >= FRONT_END_TAB_FIRST_ID && id < FRONT_END_TAB_FIRST_ID + FRONT_END_MAX_TABS)
		{
			DialogBoxBase::HideAll();
			FrontEnd::MainMenuDialog->Show();
			switch (id - FRONT_END_TAB_FIRST_ID)
			{
			case MAIN_MENU_TAB_STATS:
				FrontEnd::StatsDialog->ShowCurrentGame = false;
				FrontEnd::StatsDialog->Show();
				break;
			case MAIN_MENU_TAB_CONDITIONS:
				FrontEnd::MultiplayerConditionDialog->Show();
				return false;
			}
		}
	}
	return false;
}

void AddMainMenuTabs(int selected)
{
	int   width = SetupBox::CurrentInitBox->BackgroundWidth;
	int   height = SetupBox::CurrentInitBox->BackgroundHeight;
	float tabWidth = (float)width / MAIN_MENU_TAB_COUNT;
	float x = (float)(400 - width / 2);
	for (int i = 0; i < MAIN_MENU_TAB_COUNT; i++)
	{
		char16_t* label;
		switch (i)
		{
		case MAIN_MENU_TAB_MAIN_MENU:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_88);
			break;
		case MAIN_MENU_TAB_STATS:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_151);
			break;
		case MAIN_MENU_TAB_CONDITIONS:
			label = HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(19);
			break;
		default:
			label = L"";
			break;
		}
		SetupTabButton* tab = NEW(1630)
			SetupTabButton(FRONT_END_TAB_FIRST_ID + i, (int)x, 300 - height / 2 - 40, (int)(x + tabWidth) - (int)x, 40,
		                   label, i == selected, i == 0, i == MAIN_MENU_TAB_COUNT - 1);
		if (i == MAIN_MENU_TAB_CONDITIONS)
		{
			FrontEnd::MultiplayerTab = tab;
		}
		x += tabWidth;
	}
}

// BW1W120 0053ff00 BW1M119 015c7350
static void MMContinueButton(SetupBox* box, SetupControl* control);
// BW1W120 0053ff10 BW1M119 015c7250
static void MMOnlineButton(SetupBox* box, SetupControl* control);
// BW1W120 0053ffb0 BW1M119 015c7190
static void MMSkirmishButton(SetupBox* box, SetupControl* control);
// BW1W120 00540000 BW1M119 015c7110
static void MMOptionsButton(SetupBox* box, SetupControl* control);

void MainMenu::Init(uint32_t background_style, uint32_t tall_background,
                    void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	char16_t profileName[0x100];
	char16_t currentProfile[0x100];

	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	PlayerProfile::GetCurrentProfile(profileName);

	ProfileText = NEW(1653) SetupStaticText(MAIN_MENU_PROFILE_TEXT_ID, 50, 65, 700, 90, L"", TEXTJUSTIFY_CENTRE_BREAK);
	Buttons[MAIN_MENU_BUTTON_CONTINUE] = NEW(1657) SetupButton(MAIN_MENU_BUTTON_CONTINUE, 180, 145, 440, 70, L"", 0);
	Buttons[MAIN_MENU_BUTTON_SKIRMISH] = NEW(1658) SetupButton(MAIN_MENU_BUTTON_SKIRMISH, 180, 225, 440, 70, L"", 0);
	Buttons[MAIN_MENU_BUTTON_ONLINE] = NEW(1659) SetupButton(MAIN_MENU_BUTTON_ONLINE, 180, 305, 440, 70, L"", 0);
	Buttons[MAIN_MENU_BUTTON_OPTIONS] = NEW(1660) SetupButton(MAIN_MENU_BUTTON_OPTIONS, 180, 385, 440, 70, L"", 0);
	Buttons[MAIN_MENU_BUTTON_QUIT] = NEW(1661) SetupButton(MAIN_MENU_BUTTON_QUIT, 180, 465, 440, 70, L"", 0);

	if (PlayerProfile::GetNumberOfProfiles() != 0)
	{
		PlayerProfile::SetCurrentProfile(LHNetGetCurrentProfileNameFromRegistry());
		LHNetUseProfile(LHNetGetCurrentProfileNameFromRegistry());
		PlayerProfile::GetCurrentProfile(currentProfile);
		PlayerProfile::GetProfileByName(currentProfile, PlayerProfile::Profile);
	}
	AddMainMenuTabs(0);
}

void MainMenu::Destroy()
{
	PlayerSymbol::Close();
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void MMQuitButton(SetupBox* box, SetupControl* control)
{
	box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_QUIT_QUESTION), MSGBOXSTYLE_YES_NO,
	                 0);
	MainMenu::QuitPending = true;
}

void MainMenu::InitControls()
{
	char16_t currentProfile[0x100];

	PlayerProfile::SetCurrentProfile(LHNetGetCurrentProfileNameFromRegistry());
	PlayerProfile::GetCurrentProfile(currentProfile);
	PlayerProfile::GetProfileByName(currentProfile, PlayerProfile::Profile);
	UNICODE_sprintf(ProfileText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_WELCOME),
	                PlayerProfile::Profile.CurrentProfile);
	SelectedButton = -1;
	GGame::g_game->path_creator.UpdateCurrentProfile();
	PlayerSymbol::Open();
	GGame::g_game->AutoSaved = GameOSFile::IsAutoSaveValid();
	AutoSaveValid = GGame::g_game->AutoSaved;

	for (int i = 0; i < _MAIN_MENU_BUTTON_COUNT; i++)
	{
		SetupButton* button = Buttons[i];
		switch (i)
		{
		case MAIN_MENU_BUTTON_CONTINUE:
			wcscpy(button->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CONTINUEGAME));
			button->ContinueButtonCallback = MMContinueButton;
			break;
		case MAIN_MENU_BUTTON_SKIRMISH:
			if (!GGame::g_game->SkirmishGame)
			{
				wcscpy(button->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_169));
			}
			else
			{
				wcscpy(button->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_170));
			}
			button->Hide(GGame::g_game->IsMultiplayerGame() == true);
			button->ContinueButtonCallback = MMSkirmishButton;
			break;
		case MAIN_MENU_BUTTON_ONLINE:
			if (!GGame::g_game->IsMultiplayerGame())
			{
				wcscpy(button->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_JOINGONLINE));
			}
			else
			{
				wcscpy(button->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_FRONT_END_03));
			}
			button->Hide(GGame::g_game->SkirmishGame == true);
			button->ContinueButtonCallback = MMOnlineButton;
			break;
		case MAIN_MENU_BUTTON_OPTIONS:
			wcscpy(button->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_OPTIONS));
			button->ContinueButtonCallback = MMOptionsButton;
			break;
		case MAIN_MENU_BUTTON_QUIT:
			wcscpy(button->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_QUIT));
			button->ContinueButtonCallback = MMQuitButton;
			break;
		}
	}

	int y = 145;
	int height = 70;
	int gap = 80;
	if (GGame::g_game->SkirmishGame || GGame::g_game->IsMultiplayerGame())
	{
		gap = 100;
		height = 80;
		y = 150;
	}
	Buttons[MAIN_MENU_BUTTON_CONTINUE]->rect.start.y = y;
	Buttons[MAIN_MENU_BUTTON_CONTINUE]->rect.end.y = y + height;
	if (!Buttons[MAIN_MENU_BUTTON_CONTINUE]->hidden)
	{
		y += gap;
	}
	Buttons[MAIN_MENU_BUTTON_SKIRMISH]->rect.start.y = y;
	Buttons[MAIN_MENU_BUTTON_SKIRMISH]->rect.end.y = y + height;
	if (!Buttons[MAIN_MENU_BUTTON_SKIRMISH]->hidden)
	{
		y += gap;
	}
	Buttons[MAIN_MENU_BUTTON_ONLINE]->rect.start.y = y;
	Buttons[MAIN_MENU_BUTTON_ONLINE]->rect.end.y = y + height;
	if (!Buttons[MAIN_MENU_BUTTON_ONLINE]->hidden)
	{
		y += gap;
	}
	Buttons[MAIN_MENU_BUTTON_OPTIONS]->rect.start.y = y;
	Buttons[MAIN_MENU_BUTTON_OPTIONS]->rect.end.y = y + height;
	if (!Buttons[MAIN_MENU_BUTTON_OPTIONS]->hidden)
	{
		y += gap;
	}
	Buttons[MAIN_MENU_BUTTON_QUIT]->rect.start.y = y;
	Buttons[MAIN_MENU_BUTTON_QUIT]->rect.end.y = y + height;
}

static void MMContinueButton(SetupBox* box, SetupControl* control)
{
	DialogBoxBase::Hide();
	PauseGame(false);
}

static void MMOnlineButton(SetupBox* box, SetupControl* control)
{
	if (GGame::g_game->IsMultiplayerGame())
	{
		if (!GGame::g_game->players[GGame::g_game->PlayerIndex].HasLost)
		{
			GGame::g_game->AttemptQuitOfMultiplayerGame();
			return;
		}
	}
	LHLobby::InitLibrary();
	if (LHSocket::InitFlag)
	{
		GGame::g_game->QuitGameAndGoIntoNetworkLobby();
		return;
	}
	box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ERRORHASOCCURED),
	                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
}

static void MMSkirmishButton(SetupBox* box, SetupControl* control)
{
	MainMenu::SkirmishPending = true;
	if (GGame::g_game->SkirmishGame)
	{
		MainMenu::SkirmishPending = true;
		box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_167),
		                 MSGBOXSTYLE_YES_NO, 0);
	}
	else
	{
		GGame::g_game->GameMode = GAME_MODE_SKIRMISH;
	}
}

static void MMOptionsButton(SetupBox* box, SetupControl* control)
{
	GGame::g_game->dialog_box_options->mini->Show();
}

bool MainMenu::AreWeAllowedToReopen()
{
	int elapsed = timeGetTime() - CloseTime;
	if (elapsed > MAIN_MENU_REOPEN_DELAY || elapsed < 0)
	{
		return true;
	}
	return false;
}

void __stdcall MainMenu::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	ProcessMainMenuTabs(message, box, control, data1, data2);
	switch (message)
	{
	case SETUP_MESSAGE_ACTIVATE:
		Instance->InitControls();
		GGame::g_game->control_map->LoadCurrentProfileKeys();
		FrontEnd::SetCursorOn();
		LeaveGamePending = false;
		SkirmishPending = false;
		if (!GGame::g_game->IsMultiplayerGame())
		{
			PauseGame(true);
		}
		break;
	case SETUP_MESSAGE_ESCAPE:
		PauseGame(false);
		DialogBoxBase::Hide();
		FrontEnd::StartupMenuActive = false;
		FrontEnd::SetCursorOff();
		break;
	case SETUP_MESSAGE_DEACTIVATE:
		GGame::g_game->control_map->SaveCurrentProfileKeys();
		CloseTime = timeGetTime();
		break;
	case SETUP_MESSAGE_CLICK:
		if (control != NULL && control->ContinueButtonCallback != NULL && !control->hidden)
		{
			control->ContinueButtonCallback(box, control);
		}
		break;
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT:
		if (LeaveGamePending)
		{
			LeaveGamePending = false;
			if (data1 == SETUP_MESSAGE_BOX_ID_YES)
			{
				if (GGame::g_game->IsMultiplayerGame())
				{
					LHNetBase::Instance.Session->MigrateHost();
				}
				DialogBoxBase::HideAll();
				DialogBoxBase::Hide();
				GGame::g_game->QuitGameAndGoIntoNetworkLobby();
			}
		}
		else if (SkirmishPending)
		{
			SkirmishPending = false;
			if (data1 == SETUP_MESSAGE_BOX_ID_YES)
			{
				DialogBoxBase::Hide();
				if (GGame::g_game->IsMultiplayerGame())
				{
					GGame::g_game->GameMode = GAME_MODE_SKIRMISH;
				}
				else
				{
					if (GGame::g_game->SkirmishGame)
					{
						GGame::g_game->GameMode = GAME_MODE_SKIRMISH;
					}
					else
					{
						GGame::g_game->GameMode = GAME_MODE_SKIRMISH;
					}
				}
			}
		}
		else if (QuitPending)
		{
			QuitPending = false;
			if (data1 == SETUP_MESSAGE_BOX_ID_YES)
			{
				DialogBoxBase::Hide();
				DialogBoxBase::HideAll();
				GGame::g_game->QuitBlack();
			}
		}
		break;
	}
}

MainMenu* MainMenu::Instance;
bool      MainMenu::LeaveGamePending;
bool      MainMenu::QuitPending;
bool      MainMenu::SkirmishPending;
int       MainMenu::CloseTime = -1;

LoginBox::LoginBox()
{
	LocalNetworkName = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LANSTRING);
}

void __stdcall LoginBox::DialupCallback(int status, void* data)
{
	if (Instance != NULL)
	{
		Instance->DialupStatus(status, data);
	}
}

void __stdcall LoginBox::DialupStatus(int status, void* data)
{
	SetupEdit* edit = (SetupEdit*)data;
	switch (status)
	{
	case DIALUP_STATUS_OPENING_PORT:
		edit->SetText(HelpTextData::GetTextL(HELP_TEXT_DIALOG_CONNECTING));
		break;
	case DIALUP_STATUS_DIALING:
		edit->SetText(HelpTextData::GetTextL(HELP_TEXT_DIALOG_AUTHENTICATING));
		break;
	case DIALUP_STATUS_CONNECTED:
		edit->SetText(HelpTextData::GetTextL(HELP_TEXT_DIALOG_CONNECTIONESTABLISHED));
		DialupState = LOGIN_BOX_DIALUP_STATE_CONNECTED;
		break;
	case DIALUP_STATUS_AUTHENTICATING:
		edit->SetText(HelpTextData::GetTextL(HELP_TEXT_DIALOG_AUTHENTICATINGOK));
		break;
	case DIALUP_STATUS_FAILED:
		edit->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_AUTHENTICATINGERROR));
		LoginButton->Hide(false);
		break;
	case DIALUP_STATUS_AUTHENTICATED:
		edit->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOGGINGON));
		break;
	case DIALUP_STATUS_ABORTED:
		edit->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ERRORHASOCCURED));
		LoginButton->Hide(false);
		break;
	case DIALUP_STATUS_DISCONNECTED:
		edit->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_DISCONNECTED));
		DialupState = LOGIN_BOX_DIALUP_STATE_DISCONNECTED;
		LoginButton->Hide(false);
		break;
	case DIALUP_STATUS_CONNECTING:
		edit->SetText(HelpTextData::GetTextL(HELP_TEXT_DIALOG_PASSWORDEXPIRED));
		LoginButton->Hide(false);
		break;
	}
}

void LoginBox::UpdateRegistrySettings()
{
	char* server = WCHAR2CHAR(setup_box->FindControl(LOGIN_BOX_CONTROL_ID_SERVER)->label);
	int   bypassLogin = ((SetupCheckBox*)setup_box->FindControl(LOGIN_BOX_CONTROL_ID_BYPASS_LOGIN))->style;
	LHNetBase::UpdateUserData();
	RegistrySetString((char*)LH_NET_REGISTRY_KEY, (char*)LH_NET_REGISTRY_LOBBY, server);
	RegistrySetULong((char*)LH_NET_REGISTRY_KEY, "BypassLogin", bypassLogin);
	RegistrySetULong((char*)LH_NET_REGISTRY_KEY, "FullChecksum", LHLobby::SendFullChecksum);
	wcscpy(PlayerProfile::Profile.LoginName, NameEdit->label);
	wcscpy(PlayerProfile::Profile.LoginPassword, PasswordEdit->label);
	PlayerProfile::WriteBackToRegistry(PlayerProfile::Profile);
}

void LoginBox::DoLogin()
{
	SetupBox*       box = setup_box;
	LHTransportInfo lobbyAddress;
	LHTransportInfo serverAddress;
	char            name[100];
	char            password[100];
	unsigned long   size = sizeof(name);

	strcpy(name, WCHAR2CHAR(NameEdit->label));
	strcpy(password, WCHAR2CHAR(PasswordEdit->label));
	if (LHNetBase::Instance.State == LH_NET_STATE_INTERNET)
	{
		char server[100];
		strcpy(server, LoginServer);
		LH_REG_KEY_TYPE keyType = LHRegistryGetCurrentKey();
		LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
		RegistryRetrieveString((char*)LH_NET_REGISTRY_KEY, (char*)LH_NET_REGISTRY_LOGIN_SERVER, server, &size);
		LHRegistrySetCurrentKey(keyType);

		char* lobby = WCHAR2CHAR(box->FindControl(LOGIN_BOX_CONTROL_ID_SERVER)->label);
		int   bypassLogin = ((SetupCheckBox*)box->FindControl(LOGIN_BOX_CONTROL_ID_BYPASS_LOGIN))->style;
		lobbyAddress.Set(lobby, LH_TRANSPORT_DEFAULT_PORT);
		serverAddress.Set(server, LOGIN_BOX_LOGIN_SERVER_PORT);

		LH_RETURN result;
		if (bypassLogin)
		{
			result = LHNetBase::Instance.User->Login(name, password);
		}
		else
		{
			result = LHNetBase::Instance.User->Login(name, password, &serverAddress);
		}
		if (result != LH_OK)
		{
			if (LHLogger::GetCode() == LH_NET_LOG_ERROR_USER_NOT_REGISTERED)
			{
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_YOUARENOTREGISTERED),
				                 MSGBOXSTYLE_YES_NO, LOGIN_BOX_MESSAGE_BOX_REGISTER);
			}
			else if (LHLogger::GetCode() == LH_NET_LOG_ERROR_INVALID_LOGIN)
			{
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_INVALIDDETAILS),
				                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			}
			else
			{
				box->MessageBoxA(
					LHSPrintfW(L"%s %s\n%s %d",
				               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOGINFAILED),
				               CHAR2WCHAR(LHLogger::GetText()),
				               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ERRORCODEWAS),
				               LHLogger::GetCode()),
					MSGBOXSTYLE_SINGLE_BUTTON, 0);
			}
			Instance->LoginButton->Hide(false);
			return;
		}
	}
	else
	{
		if (LHNetBase::Instance.User->Login(WCHAR2CHAR(PlayerProfile::Profile.CurrentProfile), NULL) != LH_OK)
		{
			box->MessageBoxA(LHSPrintfW(L"%s %s\n%s %d",
			                            HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOGINFAILED),
			                            CHAR2WCHAR(LHLogger::GetText()),
			                            HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ERRORCODEWAS),
			                            LHLogger::GetCode()),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			Instance->LoginButton->Hide(false);
			return;
		}
	}

	LHNetBase::Instance.User->ChangeName(PlayerProfile::Profile.LoginName);
	LHMPServerStartInfo startInfo;
	startInfo.ListenerAddress = &LH_LIONHEAD_DEFAULT_LISTNER_ADDRESS;
	startInfo.User = LHNetBase::Instance.User;
	startInfo.UserData = (uint32_t)&lobbyAddress;
	if (LHNetBase::Instance.State == LH_NET_STATE_LOCAL_LOBBY)
	{
		if (LHNetBase::Instance.Lobby->OpenLocalLobby(&startInfo) != LH_OK)
		{
			box->MessageBoxA(LHSPrintfW(L"%s\n%s %d", CHAR2WCHAR(LHLogger::GetText()),
			                            HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ERRORCODEWAS),
			                            LHLogger::GetCode()),
			                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
			Instance->LoginButton->Hide(false);
			return;
		}

		LHTimer timer;
		timer.Start();
		int           timeout = LOGIN_BOX_LOBBY_TIMEOUT;
		LHConnection* connection = LHNetBase::Instance.State == LH_NET_STATE_INTERNET
		                               ? (LHConnection*)LHNetBase::Instance.InternetLobby
		                               : (LHConnection*)LHNetBase::Instance.Lobby;
		while (connection->Peek(timeout) != NULL)
		{
			if (connection->RawPeek(0, LH_NETEVENT_TYPE_LOBBY_GREETING) != NULL)
			{
				break;
			}
			if (connection->RawPeek(0, LH_NETEVENT_TYPE_SERVER_ERROR) != NULL)
			{
				for (LHNetEvent* event = connection->Read(0, LH_NETEVENT_TYPE_NONE); event != NULL;
				     event = connection->Read(0, LH_NETEVENT_TYPE_NONE))
				{
					if (event->GetType() == LH_NETEVENT_TYPE_SERVER_ERROR)
					{
						long  errorCode;
						char* errorText;
						event->VDecode(LH_NETEVENT_TYPE_SERVER_ERROR, &errorCode, &errorText);
						box->MessageBoxA(LHSPrintfW(L"%s %s",
						                            HelpTextDataBase::HelpTextDatabase.GetHelpText(
														HELP_TEXT_DIALOG_LOBBYRETURNEDERROR),
						                            CHAR2WCHAR(errorText)),
						                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
						connection->Close();
						return;
					}
				}
			}
			timeout -= timer.MSeconds();
			timer.Restart(0);
			if (timeout < 0)
			{
				box->MessageBoxA(
					HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_COULDNOTREACHLOBBYSERVER),
					MSGBOXSTYLE_SINGLE_BUTTON, 0);
				return;
			}
		}
	}

	Instance->UpdateRegistrySettings();
	char userFile[0x30];
	size = sizeof(userFile);
	LHNetGetCurrentProfileString((char*)LH_NET_PROFILE_FILE_NAME, userFile, &size);
	strcpy(LHLobby::UserFile, userFile);
	if (!Temple::MultiplayerCitadel)
	{
		DialogBoxBase::Hide();
	}
	FrontEnd::GSLobbyDialog->ControlsInitialised = false;
	FrontEnd::LobbyDialog->ControlsInitialised = false;
	if (LHNetBase::Instance.State == LH_NET_STATE_LOCAL_LOBBY)
	{
		FrontEnd::LobbyDialog->Show();
	}
	else
	{
		FrontEnd::GSLobbyDialog->Show();
	}
}

void LoginBox::ShowInternetControls(bool32_t show)
{
	Instance->InternetCheckBox->Hide(!show);
	Instance->ServerEdit->Hide(!show);
	Instance->ServerText->Hide(!show);
	Instance->InternetCheckBox->style = show;
	Instance->NameEdit->Hide(!show);
	Instance->PasswordEdit->Hide(!show);
	Instance->TitleText->Hide(!show);
	Instance->NameText->Hide(!show);
	Instance->PasswordText->Hide(!show);
	Instance->InternetCheckBox->rect.start.y = show ? LOGIN_BOX_INTERNET_Y : LOGIN_BOX_LOCAL_Y;
	Instance->InternetCheckBox->rect.end.y = Instance->InternetCheckBox->rect.start.y + LOGIN_BOX_CHECK_BOX_HEIGHT;
}

void LoginBox::Init(uint32_t background_style, uint32_t tall_background,
                    void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;

	NEW(2286)
	SetupStaticText(LOGIN_BOX_CONTROL_ID_TITLE, 100, 50, 600, 80,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CHOOSEINET),
	                TEXTJUSTIFY_CENTRE_BREAK);
	ConnectionList = NEW(2287) SetupList(LOGIN_BOX_CONTROL_ID_CONNECTIONS, 150, 135, 500, 100);
	ConnectionList->text_size = GetMidTextSize();
	StatusEdit = NEW(2289) SetupEdit(LOGIN_BOX_CONTROL_ID_STATUS, 200, 530, 400, 30,
	                                 HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOGINHELP), false);
	StatusEdit->text_size = GetMidTextSize();
	LoginButton = NEW(2292) SetupBigButton(LOGIN_BOX_CONTROL_ID_LOGIN, 680, 520,
	                                       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOGIN), 40,
	                                       SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	BackButton = NEW(2293) SetupBigButton(LOGIN_BOX_CONTROL_ID_BACK, 80, 520,
	                                      HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK), 40,
	                                      SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	InternetCheckBox =
		NEW(2295) SetupCheckBox(LOGIN_BOX_CONTROL_ID_INTERNET, 150, 255, false, BBSTYLE_CHECK_BOX_OFF,
	                            HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_USELOBBY), 25);
	InternetCheckBox->text_position = SETUP_TEXT_POSITION_RIGHT;
	TitleText = NEW(2297) SetupStaticText(LOGIN_BOX_STATIC_TEXT_ID, 50, 300, 700, 60,
	                                      HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ENTERDETAILS),
	                                      TEXTJUSTIFY_CENTRE_BREAK);
	TitleText->text_size = GetBigTextSize();
	NameEdit = NEW(2300) SetupEdit(LOGIN_BOX_CONTROL_ID_NAME, 320, 360, 330, 30, L"", true);
	NameText = NEW(2301) SetupStaticText(
		LOGIN_BOX_STATIC_TEXT_ID, 100, 360, 210, 30,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_REGISTRATIONNAME), TEXTJUSTIFY_RIGHT);
	PasswordEdit = NEW(2302) SetupEdit(LOGIN_BOX_CONTROL_ID_PASSWORD, 320, 410, 330, 30, L"", true);
	PasswordText = NEW(2303) SetupStaticText(
		LOGIN_BOX_STATIC_TEXT_ID, 100, 410, 210, 30,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOGINPASSWORD), TEXTJUSTIFY_RIGHT);
	PasswordEdit->MaskedText = true;
	PasswordEdit->UsesIME = false;
	NameEdit->UsesIME = false;
	PasswordText->text_size = GetMidTextSize();
	PasswordEdit->text_size = PasswordText->text_size;
	NameText->text_size = PasswordEdit->text_size;
	NameEdit->text_size = NameText->text_size;
	ServerEdit =
		NEW(2311) SetupEdit(LOGIN_BOX_CONTROL_ID_SERVER, 320, 460, 330, 30,
	                        HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOBBYSERVER), true);
	ServerEdit->text_size = GetSmallTextSize();
	ServerText = NEW(2313) SetupStaticText(LOGIN_BOX_STATIC_TEXT_ID, 10, 460, 300, 30,
	                                       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOBBYSERVER),
	                                       TEXTJUSTIFY_RIGHT);
	ServerText->text_size = GetMidTextSize();
	BypassLoginCheckBox =
		NEW(2319) SetupCheckBox(LOGIN_BOX_CONTROL_ID_BYPASS_LOGIN, 70, 570, false, BBSTYLE_CHECK_BOX_OFF,
	                            HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BYPASSLOGIN), 20);
	BypassLoginCheckBox->text_size = LOGIN_BOX_OPTION_TEXT_SIZE;
	FullChecksumCheckBox =
		NEW(2321) SetupCheckBox(LOGIN_BOX_CONTROL_ID_FULL_CHECKSUM, 200, 570, false, BBSTYLE_CHECK_BOX_OFF,
	                            HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_FULLCHECKSUM), 20);
	FullChecksumCheckBox->text_size = LOGIN_BOX_OPTION_TEXT_SIZE;
	RecordButton =
		NEW(2324) SetupButton(LOGIN_BOX_CONTROL_ID_RECORD, 320, 580, 100, 25,
	                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SAVEPACKETS), 0);
	PlaybackButton =
		NEW(2325) SetupButton(LOGIN_BOX_CONTROL_ID_PLAYBACK, 440, 580, 100, 25,
	                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_REPLAYPACKETS), 0);
	ReplayInfoButton =
		NEW(2326) SetupButton(LOGIN_BOX_CONTROL_ID_REPLAY_INFO, 560, 580, 100, 25,
	                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PACKETINFO), 0);
	RecordButton->text_size = LOGIN_BOX_REPLAY_TEXT_SIZE;
	PlaybackButton->text_size = LOGIN_BOX_REPLAY_TEXT_SIZE;
	ReplayInfoButton->text_size = LOGIN_BOX_REPLAY_TEXT_SIZE;
	BypassLoginCheckBox->Hide(true);
	FullChecksumCheckBox->Hide(true);
	RecordButton->Hide(true);
	PlaybackButton->Hide(true);
	ReplayInfoButton->Hide(true);
	setup_box->SetFocusControl(NameEdit);
	DialupConnection = NULL;
}

void LoginBox::Destroy()
{
	HangUp();
	if (DialupConnection != NULL)
	{
		DialupConnection->Release();
		delete DialupConnection;
		DialupConnection = NULL;
	}
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void LoginBox::InitControls()
{
	if (LHMPPacketSave::CheckSavedPacketsAvail(&LHNetBase::Instance.ReplayInfo) == LH_OK)
	{
		PlaybackButton->Hide(false);
		ReplayInfoButton->Hide(false);
	}
	else
	{
		PlaybackButton->Hide(true);
		ReplayInfoButton->Hide(true);
	}
	DialupEntry = -1;
	DialupState = LOGIN_BOX_DIALUP_STATE_NONE;

	int number = 1;
	if (DialupConnection == NULL)
	{
		DialupConnection = NEW(2378) Dialup;
		ConnectionList->DeleteAll();
		if (DialupConnection->Initialise())
		{
			int               numConnections = DialupConnection->GetNoDialUpConnections();
			int               defaultEntry = DialupConnection->GetDefaultEntryIndex();
			DIALUP_PROPERTIES properties;
			if (defaultEntry != -1 && DialupConnection->GetDialupProperties(defaultEntry, &properties))
			{
				wchar_t* text;
				if (properties.AlreadyConnected)
				{
					text = LHSPrintfW(
						L"%d.%s %s %s", 1, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CONNECTED),
						properties.EntryName, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_DEFAULT));
				}
				else
				{
					text = LHSPrintfW(L"%d. %s %s", 1, properties.EntryName,
					                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_DEFAULT));
				}
				ConnectionList->AddString(text, 0, 0, 0);
				ConnectionList->SetItemData(0, defaultEntry);
				number = 2;
			}
			for (int i = 0; i < numConnections; i++)
			{
				if (DialupConnection->GetDialupProperties(i, &properties) && i != defaultEntry)
				{
					int      row = ConnectionList->NumItems;
					wchar_t* text;
					if (properties.AlreadyConnected)
					{
						text = LHSPrintfW(L"%d.%s %s", number,
						                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CONNECTED),
						                  properties.EntryName);
					}
					else
					{
						text = LHSPrintfW(L"%d. %s", number, properties.EntryName);
					}
					ConnectionList->InsertString(row, text);
					ConnectionList->SetItemData(row, i);
					number++;
				}
			}
		}
	}

	if (FirstShow)
	{
		FirstShow = false;
		if (strcmp(GetIPAddress(), "127.0.0.1") != 0)
		{
			ConnectionList->AddString(LHSPrintfW(L"%d.%s", number, LocalNetworkName), 0, 0, 0);
		}
		else if (number == 1)
		{
			DialogBoxBase::Hide();
			MainMenu::Instance->setup_box->MessageBoxA(
				HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_NOCONNECTIONSAVAILABLE),
				MSGBOXSTYLE_SINGLE_BUTTON, 0);
			return;
		}
		ConnectionList->SetSelected(0);
	}

	wchar_t selected[200];
	if (Instance->ConnectionList->GetSelected() >= 0 &&
	    Instance->ConnectionList->GetSelected() < Instance->ConnectionList->NumItems)
	{
		wcscpy(selected, Instance->ConnectionList->item_labels[Instance->ConnectionList->GetSelected()]);
	}
	ShowInternetControls(wcsstr(selected, LocalNetworkName) == NULL);
	InternetCheckBox->Hide(wcsstr(selected, LocalNetworkName) == NULL);
	NameEdit->SetText(PlayerProfile::Profile.LoginName);
	PasswordEdit->SetText(PlayerProfile::Profile.LoginPassword);
	PasswordEdit->MaskedText = true;

	char          server[0x80];
	unsigned long size = sizeof(server);
	if (RegistryRetrieveString((char*)LH_NET_REGISTRY_KEY, (char*)LH_NET_REGISTRY_LOBBY, server, &size) == LH_OK &&
	    strlen(server) != 0)
	{
		ServerEdit->SetText(CHAR2WCHAR(server));
	}
	else
	{
		ServerEdit->SetText(L"lobby.bwgame.com");
	}

	unsigned long value;
	if (RegistryRetrieveULong((char*)LH_NET_REGISTRY_KEY, "BypassLogin", &value) == LH_OK)
	{
		BypassLoginCheckBox->style = value;
	}
	if (RegistryRetrieveULong((char*)LH_NET_REGISTRY_KEY, "FullChecksum", &value) == LH_OK)
	{
		FullChecksumCheckBox->style = value;
		LHLobby::SendFullChecksum = FullChecksumCheckBox->style;
	}
	ServerEdit->Editable = true;
}

void LoginBox::HangUp()
{
	if (DialupConnection != NULL && DialupState == LOGIN_BOX_DIALUP_STATE_CONNECTED)
	{
		Instance->DialupConnection->Disconnect(Instance->DialupEntry);
		DialupState = LOGIN_BOX_DIALUP_STATE_NONE;
	}
}

void __stdcall LoginBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	wchar_t selected[200];

	switch (message)
	{
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT:
		if (data2 == LOGIN_BOX_MESSAGE_BOX_CONNECTED)
		{
			Instance->DoLogin();
		}
		else if (data2 == LOGIN_BOX_MESSAGE_BOX_REGISTER && data1 == SETUP_MESSAGE_BOX_ID_YES)
		{
			OpenURL(RegisterURL);
			ShowWindow(LHSys::TheSystem.screen.MsWindowHandle, SW_MINIMIZE);
		}
		break;
	case SETUP_MESSAGE_UPDATE:
		if (Instance->DialupState == LOGIN_BOX_DIALUP_STATE_CONNECTED && !ConnectedMessageShown)
		{
			box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CONNECTIONSUCCESSFULL),
			                 MSGBOXSTYLE_SINGLE_BUTTON, LOGIN_BOX_MESSAGE_BOX_CONNECTED);
			ConnectedMessageShown = true;
		}
		break;
	case SETUP_MESSAGE_ACTIVATE:
		Instance->InitControls();
		setupgamedata::Current.reset_to_defaults();
		ConnectedMessageShown = false;
		Instance->LoginButton->Hide(false);
		break;
	case SETUP_MESSAGE_CLICK:
		if (control == NULL)
		{
			break;
		}
		if (control->id == LOGIN_BOX_CONTROL_ID_RECORD)
		{
			DialogBoxBase::Hide();
			LHNetBase::Instance.StartAGame(LH_PACKET_SOURCE_RECORD);
			break;
		}
		if (control->id == LOGIN_BOX_CONTROL_ID_PLAYBACK)
		{
			DialogBoxBase::Hide();
			LHNetBase::Instance.StartAGame(LH_PACKET_SOURCE_PLAYBACK);
			break;
		}
		if (control->id == LOGIN_BOX_CONTROL_ID_REPLAY_INFO)
		{
			LHSPrintfW text(L"%d %s\n%d %s\n", LHNetBase::Instance.ReplayInfo.NumberOfPlayers,
			                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PLAYERS),
			                LHNetBase::Instance.ReplayInfo.NumberOfSuperPackets,
			                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_SUPERPACKETS));
			if (LHNetBase::Instance.ReplayInfo.OutOfSyncGameTurn != 0)
			{
				text.AppendString(
					L"%s %d\n",
					HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PREVIOUSGAMEWENTOUTOFSYNC),
					LHNetBase::Instance.ReplayInfo.OutOfSyncGameTurn);
			}
			box->MessageBoxA(text, MSGBOXSTYLE_SINGLE_BUTTON, 0);
			break;
		}
		if (control->id == LOGIN_BOX_CONTROL_ID_LOGIN)
		{
			if (!Instance->ServerEdit->hidden && Instance->ServerEdit->Editable)
			{
				char* server = WCHAR2CHAR(box->FindControl(LOGIN_BOX_CONTROL_ID_SERVER)->label);
				char* name = WCHAR2CHAR(box->FindControl(LOGIN_BOX_CONTROL_ID_NAME)->label);
				char* password = WCHAR2CHAR(box->FindControl(LOGIN_BOX_CONTROL_ID_PASSWORD)->label);
				if (strlen(server) == 0 || strlen(name) == 0 || strlen(password) == 0)
				{
					box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_NOTENOUGHINFO),
					                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
					break;
				}
			}
			if (Instance->ConnectionList->GetSelected() >= 0 &&
			    Instance->ConnectionList->GetSelected() < Instance->ConnectionList->NumItems)
			{
				wcscpy(selected, Instance->ConnectionList->item_labels[Instance->ConnectionList->GetSelected()]);
			}
			if (wcsstr(selected, LocalNetworkName) != NULL)
			{
				LHNetBase::Instance.State = Instance->InternetCheckBox->style == BBSTYLE_CHECK_BOX_OFF
				                                ? LH_NET_STATE_LOCAL_LOBBY
				                                : LH_NET_STATE_INTERNET;
				Instance->DoLogin();
				break;
			}
			Instance->DialupConnection->GetDialupProperties(
				Instance->ConnectionList->GetItemData(Instance->ConnectionList->GetSelected()),
				&Instance->DialupProperties);
			if (Instance->DialupProperties.AlreadyConnected)
			{
				LHNetBase::Instance.State = LH_NET_STATE_INTERNET;
				Instance->DoLogin();
				break;
			}
			Instance->DialupEntry = Instance->ConnectionList->GetItemData(Instance->ConnectionList->GetSelected());
			LHNetBase::Instance.State = LH_NET_STATE_INTERNET;
			Instance->DialupConnection = NEW(2608) Dialup;
			if (Instance->DialupConnection->Initialise() &&
			    Instance->DialupConnection->GetDialupProperties(Instance->DialupEntry, &Instance->DialupProperties))
			{
				if (!Instance->DialupConnection->Connect(
						Instance->DialupEntry, DialupCallback, Instance->DialupProperties.UserName,
						Instance->DialupProperties.Password, box->FindControl(LOGIN_BOX_CONTROL_ID_STATUS)))
				{
					((SetupEdit*)box->FindControl(LOGIN_BOX_CONTROL_ID_STATUS))
						->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_DIALUPERROR));
				}
			}
		}
		if (control->id == LOGIN_BOX_CONTROL_ID_INTERNET)
		{
			Instance->ShowInternetControls(Instance->InternetCheckBox->style);
			Instance->InternetCheckBox->Hide(false);
		}
		if (control->id == LOGIN_BOX_CONTROL_ID_CONNECTIONS)
		{
			if (Instance->ConnectionList->GetSelected() >= 0 &&
			    Instance->ConnectionList->GetSelected() < Instance->ConnectionList->NumItems)
			{
				wcscpy(selected, Instance->ConnectionList->item_labels[Instance->ConnectionList->GetSelected()]);
			}
			Instance->ShowInternetControls(wcsstr(selected, LocalNetworkName) == NULL);
			Instance->InternetCheckBox->Hide(wcsstr(selected, LocalNetworkName) == NULL);
		}
		if (control->id == LOGIN_BOX_CONTROL_ID_BACK)
		{
			LHNetBase::Instance.Shutdown();
			DialogBoxBase::Hide();
			FrontEnd::InMultiplayerScreens = false;
		}
		if (control->id == LOGIN_BOX_CONTROL_ID_FULL_CHECKSUM)
		{
			LHLobby::SendFullChecksum = ((SetupCheckBox*)control)->style != BBSTYLE_CHECK_BOX_OFF;
		}
		break;
	}
}

LoginBox* LoginBox::Instance;
wchar_t*  LoginBox::LocalNetworkName;
bool      LoginBox::ConnectedMessageShown;
char*     LoginBox::RegisterURL = "http://www.bwgame.com/register/";
char*     LoginBox::LoginServer = "login.bwgame.com";
bool      LoginBox::FirstShow = true;

TattooEditor* TattooEditor::Instance;
int           TattooEditor::IdleActionTimer;
int           TattooEditor::IdleActionCount;

void TattooEditor::Init(uint32_t background_style, uint32_t tall_background,
                        void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;

	ColourPicker = NEW(2671)
		SetupColourPicker(TATTOO_EDITOR_CONTROL_ID_COLOUR, 44, 35, 52, 519, false, SetupThing::ButtonMaterial);
	BrightnessPicker = NEW(2672)
		SetupColourPicker(TATTOO_EDITOR_CONTROL_ID_BRIGHTNESS, 704, 35, 52, 519, true, SetupThing::ButtonMaterial);
	NEW(2675)
	SetupStaticText(SETUP_CONTROL_ID_NONE, 150, 30, 500, 100,
	                HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOODRAG),
	                TEXTJUSTIFY_CENTRE_BREAK);
	AcceptButton =
		NEW(2677) SetupBigButton(TATTOO_EDITOR_CONTROL_ID_ACCEPT, 150, 500,
	                             HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_04), 40,
	                             SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	CancelButton =
		NEW(2678) SetupBigButton(TATTOO_EDITOR_CONTROL_ID_CANCEL, 610, 500,
	                             HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_03), 40,
	                             SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	for (int i = 0; i < TATTOO_EDITOR_NUM_PICTURES; i++)
	{
		Pictures[i] = NEW(2685) SetupPicture(
			TATTOO_EDITOR_CONTROL_ID_PICTURE + i, i < TATTOO_EDITOR_NUM_PICTURES / 2 ? 80 : 656,
			(i & (TATTOO_EDITOR_NUM_PICTURES / 2 - 1)) * 65 + 35, FrontEnd::SymbolMaterial, i, 4, false, 64, true);
		Pictures[i]->tint = LH3D_COLOR_WHITE;
	}
	RotateButton = NEW(2689) SetupBigButton(TATTOO_EDITOR_CONTROL_ID_ROTATE, 352, 450, L" ", 96,
	                                        SETUP_TEXT_POSITION_RIGHT, BBSTYLE_ROTATION);
	LHLoadData("data\\tattoocols.raw", ColourData, TATTOO_EDITOR_COLOUR_DATA_SIZE, NULL);
	ColourPicker->SliderPosition = 0.5f;
	BrightnessPicker->SliderPosition = 0.5f;
	C3D = NULL;
	OwnsC3D = false;
}

void TattooEditor::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void TattooEditor::CreateFakeCreature()
{
	char          fileName[256];
	unsigned long size;

	if (C3D != NULL && OwnsC3D)
	{
		delete C3D;
	}
	size = 255;
	LHNetGetCurrentProfileString((char*)LH_NET_PROFILE_FILE_NAME, fileName, &size);
	C3D = Creature::Load3D(fileName);
	if (C3D == NULL)
	{
		C3D = NEW(2725) LH3DCreature(NULL, LHPoint(0.0f, 0.0f, 0.0f), NULL);
		C3D->LoadBinary((char*)CreatureFileName::Table[0].BinaryName, 0);
		C3D->SetSize(1.0f);
		C3D->ThinFat = 0.5f;
		C3D->WeakStrong = 0.5f;
		C3D->EvilGood = 0.0f;
	}
	C3D->SetSize(1.0f);
	for (int i = 0; i < TATTOO_EDITOR_NUM_TATTOOS; i++)
	{
		if (C3D->TattooSlotUsed[i] != 0)
		{
			TattooIntersectValid[i] = TattooIntersects[i].CreateFromTextureRef(C3D->GetMesh(), C3D->GetMatrixBuffer(),
			                                                                   (TextureRef*)&C3D->TattooPositions[i]);
		}
		else
		{
			TattooIntersectValid[i] = false;
		}
	}
	memset(Tattoos, 0, sizeof(Tattoos));
	for (int j = 0; j < TATTOO_EDITOR_NUM_TATTOOS; j++)
	{
		Tattoos[j].Slot = TATTOO_EDITOR_NO_SLOT;
	}
	memset(OriginalTattoos, 0, sizeof(OriginalTattoos));
	for (int k = 0; k < TATTOO_EDITOR_NUM_TATTOOS; k++)
	{
		OriginalTattoos[k].Slot = TATTOO_EDITOR_NO_SLOT;
	}
	if (GGame::g_game->MyPlayer()->GetCreature() != NULL)
	{
		memcpy(Tattoos, GGame::g_game->MyPlayer()->GetCreature()->Tattoos, sizeof(Tattoos));
		memcpy(OriginalTattoos, GGame::g_game->MyPlayer()->GetCreature()->Tattoos, sizeof(OriginalTattoos));
	}
	C3D->TattooOverride = Tattoos;
	PlayerSymbol::RebuildLocalTattoo(&PlayerProfile::Profile, GGame::g_game->MyPlayer()->GetCreature(),
	                                 GGame::g_game->PlayerIndex, 1, NULL);
	C3D->MorphTexture();
	OwnsC3D = true;
}

void TattooEditor::DrawC3D()
{
	static unsigned long LookStartTime;
	LHPoint              look;

	if (C3D != NULL && OwnsC3D)
	{
		C3D->UpdateTime(LH3DTech::g_delta_time);
		C3D->PrepareForDrawing();
		C3D->DynamicShadow->SetNeedClipping(true);
		C3D->DynamicShadow->SetColorSpecular(LH3D_COLOR_WHITE, 0);
		LHCoord mouse = LHSys::TheSystem.mouse.Pos();
		LH3DTech::Get3DPointFromScreen(mouse, look, 10.0f);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
		mouse = LHSys::TheSystem.mouse.Pos();
		special_jc_x = mouse.x;
		special_jc_y = mouse.y;
		C3D->DrawNow();
		if (!SetupThing::MouseCaptured && !SetupThing::RightClicked)
		{
			LookStartTime = 0;
			C3D->LookPoint.SetNull();
		}
		else
		{
			if (LookStartTime == 0)
			{
				LookStartTime = GetTickCount();
			}
			if (GetTickCount() - LookStartTime < TATTOO_EDITOR_LOOK_TIME)
			{
				C3D->SetLookPoint(&look);
			}
			else
			{
				C3D->LookPoint.SetNull();
			}
		}
	}
	if (C3D != NULL && HoveredTattoo >= 0 && (LHSys::TheSystem.mouse.Buttons & LH_MOUSE_BUTTON_LEFT_DOWN))
	{
		SetupThing::DrawBigButton(HoveredTattooX - 8, HoveredTattooY - 8, true, false, 16, BBSTYLE_CHECK_BOX_OFF, false,
		                          -0xa000, 0xa000);
	}
}

void TattooEditor::UpdateC3D()
{
	if (C3D != NULL)
	{
		IdleActionTimer -= LH3DTech::g_delta_time;
		if (IdleActionTimer <= 0)
		{
			IdleActionCount++;
			if (IdleActionCount < TATTOO_EDITOR_MAX_IDLE_ACTIONS)
			{
				switch (GRand::LocalRand(3))
				{
				case 0:
					C3D->StartIndividualAction(C_INDIVIDUAL_IMPRESS);
					break;
				case 1:
					C3D->StartIndividualAction(C_INDIVIDUAL_SCRATCH);
					break;
				case 2:
					C3D->StartConcurrentAction(C_CONCURRENT_YAWN);
					break;
				}
			}
			else if (!C3D->IsPerformingBodyAction())
			{
				C3D->StartStaticAction(C_STATIC_SIT);
			}
			IdleActionTimer = GRand::LocalRand(TATTOO_EDITOR_IDLE_TIME) + TATTOO_EDITOR_IDLE_TIME;
		}
	}
	setup_box->BackgroundStyle = (SETUP_BACKGROUND)OwnsC3D;
	if (C3D == NULL)
	{
		return;
	}

	int mouseX = LHSys::TheSystem.mouse.Pos().x;
	int mouseY = LHSys::TheSystem.mouse.Pos().y;
	SetupThing::unadjust(mouseX, mouseY);
	setup_box->FindControl(mouseX, mouseY);
	if (LHSys::TheSystem.mouse.Buttons & LH_MOUSE_BUTTON_LEFT_DOWN)
	{
		IdleActionTimer = GRand::LocalRand(TATTOO_EDITOR_IDLE_TIME) + TATTOO_EDITOR_IDLE_TIME;
		IdleActionCount = 0;
		if (C3D->IsPerformingBodyAction())
		{
			C3D->EndAnyActions(1, 1);
		}
	}

	HoveredTattoo = -1;
	for (int i = 0; i < TATTOO_EDITOR_NUM_TATTOOS; i++)
	{
		if (!TattooIntersectValid[i])
		{
			continue;
		}
		LHPoint position;
		LHPoint normal;
		TattooIntersects[i].GetWorldPositionAndInwardNormal(C3D->GetMesh(), C3D->GetMatrixBuffer(), &position, &normal);
		LHPoint toCamera = position - *LH3DTech::GetCameraPosition();
		toCamera.Normalise();
		normal.Normalise();
		if (normal.DotProductInline(toCamera) <= TATTOO_EDITOR_FACING_THRESHOLD)
		{
			continue;
		}
		int screenX;
		int screenY;
		if (!LH3DTech::ProjectPoint(&position, &screenX, &screenY))
		{
			continue;
		}
		int distance = (screenY - LHSys::TheSystem.mouse.Pos().y) * (screenY - LHSys::TheSystem.mouse.Pos().y) +
		               (screenX - LHSys::TheSystem.mouse.Pos().x) * (screenX - LHSys::TheSystem.mouse.Pos().x);
		if (HoveredTattoo == -1 || HoveredDistance > distance)
		{
			HoveredDistance = distance;
			HoveredTattoo = i;
			SetupThing::unadjust(screenX, screenY);
			HoveredTattooX = screenX;
			HoveredTattooY = screenY;
		}
	}
	if (HoveredTattoo >= 0 && HoveredDistance > TATTOO_EDITOR_MAX_HOVER_DISTANCE)
	{
		HoveredTattoo = -1;
	}
	if (setup_box->FocusedWidget != NULL)
	{
		setup_box->FocusedWidget->Style = HoveredTattoo;
	}
	if (HoveredTattoo < 0)
	{
		return;
	}
	if (!(LHSys::TheSystem.mouse.Buttons & LH_MOUSE_BUTTON_LEFT_DOWN))
	{
		if (DraggedPicture >= 0)
		{
			ControlCallback(SETUP_MESSAGE_DROP, setup_box, Pictures[DraggedPicture], mouseX, mouseY);
			DraggedPicture = -1;
		}
		if (!(LHSys::TheSystem.mouse.Buttons & LH_MOUSE_BUTTON_LEFT_DOWN))
		{
			return;
		}
	}
	if (DraggedPicture != -1)
	{
		return;
	}
	if (setup_box->FocusedWidget != NULL && setup_box->FocusedWidget->TabStop)
	{
		return;
	}
	for (int j = TATTOO_EDITOR_NUM_TATTOOS - 1; j >= 0; j--)
	{
		if (Tattoos[j].Slot == HoveredTattoo)
		{
			Tattoos[j].Slot = TATTOO_EDITOR_NO_SLOT;
			SetupPicture* picture = Pictures[Tattoos[j].Type];
			setup_box->SetFocusControl(picture);
			DraggedPicture = Tattoos[j].Type;
			picture->MouseDown(0, 0, true);
			for (int k = 0; k < TATTOO_EDITOR_NUM_PICTURES; k++)
			{
				((LH3DColor*)&Pictures[k]->tint)
					->Set(LH3D_COLOR_OPAQUE, Tattoos[j].Red, Tattoos[j].Green, Tattoos[j].Blue);
			}
			if (GGame::g_game->MyInterface() != NULL)
			{
				GGame::g_game->MyInterface()->StartImmersion(IMMERSION_EFFECT_TYPE_COMMAND_SUCCESS,
				                                             IMM_EFFECT_DONT_CHANGE);
			}
			break;
		}
	}
	if (GGame::g_game->MyPlayer()->GetCreature() != NULL)
	{
		memcpy(GGame::g_game->MyPlayer()->GetCreature()->Tattoos, Tattoos, sizeof(Tattoos));
	}
	PlayerSymbol::RebuildLocalTattoo(&PlayerProfile::Profile, GGame::g_game->MyPlayer()->GetCreature(),
	                                 GGame::g_game->PlayerIndex, 1, NULL);
	TattooChanged = true;
	Instance->C3D->MorphTexture();
	C3D->StartFacialAction(C_FACE_SAD, TATTOO_EDITOR_FACE_TIME);
}

void TattooEditor::SetC3D(LH3DCreature* creature)
{
	if (OwnsC3D)
	{
		delete C3D;
		C3D = NULL;
		OwnsC3D = false;
	}
	if (C3D == creature)
	{
		return;
	}
	C3D = creature;
	if (creature == NULL)
	{
		return;
	}
	for (int i = 0; i < TATTOO_EDITOR_NUM_TATTOOS; i++)
	{
		if (C3D->TattooSlotUsed[i] != 0)
		{
			TattooIntersectValid[i] = TattooIntersects[i].CreateFromTextureRef(C3D->GetMesh(), C3D->GetMatrixBuffer(),
			                                                                   (TextureRef*)&C3D->TattooPositions[i]);
		}
		else
		{
			TattooIntersectValid[i] = false;
		}
	}
	memset(Tattoos, 0, sizeof(Tattoos));
	for (int j = 0; j < TATTOO_EDITOR_NUM_TATTOOS; j++)
	{
		Tattoos[j].Slot = TATTOO_EDITOR_NO_SLOT;
	}
	memset(OriginalTattoos, 0, sizeof(OriginalTattoos));
	for (int k = 0; k < TATTOO_EDITOR_NUM_TATTOOS; k++)
	{
		OriginalTattoos[k].Slot = TATTOO_EDITOR_NO_SLOT;
	}
	if (GGame::g_game->MyPlayer()->GetCreature() != NULL)
	{
		memcpy(Tattoos, GGame::g_game->MyPlayer()->GetCreature()->Tattoos, sizeof(Tattoos));
		memcpy(OriginalTattoos, GGame::g_game->MyPlayer()->GetCreature()->Tattoos, sizeof(OriginalTattoos));
	}
	C3D->TattooOverride = Tattoos;
	PlayerSymbol::RebuildLocalTattoo(&PlayerProfile::Profile, GGame::g_game->MyPlayer()->GetCreature(),
	                                 GGame::g_game->PlayerIndex, 1, NULL);
	C3D->MorphTexture();
}

void TattooEditor::InitControls()
{
	field_0x3224 = 0;
	Instance = this;
	setup_box->field_0x78 = false;
	IdleActionTimer = GRand::LocalRand(TATTOO_EDITOR_IDLE_TIME) + TATTOO_EDITOR_IDLE_TIME;
	IdleActionCount = 0;
	HoveredTattooX = 0;
	HoveredTattooY = 0;
	DraggedPicture = -1;
	HoveredTattoo = -1;
	HoveredDistance = TATTOO_EDITOR_INITIAL_HOVER_DISTANCE;
}

// BW1W120 00543d50
static void __fastcall SetTint(LH3DColor* tint, LH3DColor colour);

void __stdcall TattooEditor::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	TattooEditor*   editor = Instance;
	static LHPoint  CameraPosition(0.0f, 20.0f, -30.0f);
	static LHPoint  CameraFocus(0.0f, 7.0f, 0.0f);
	static int      DragStartX;
	static int      DragStartY;
	static float    PitchSpeed;
	static float    YawSpeed;
	static bool32_t Dragging;

	switch (message)
	{
	case SETUP_MESSAGE_POST_DRAW: {
		LHPoint position = CameraPosition;
		LHPoint focus = CameraFocus;
		position.Sub(focus);
		float    time = LH3DTech::g_delta_time * TATTOO_EDITOR_CAMERA_TIME_SCALE;
		LHMatrix rotation;
		rotation.SetRotationY(YawSpeed * time);
		rotation.TransformVector(position);
		float distance = (float)sqrt(position.x * position.x + position.z * position.z);
		position.y += PitchSpeed * distance * time;
		float lowest = distance * 0.125f;
		if (position.y > lowest)
		{
			if (position.y >= distance)
			{
				position.y = distance;
			}
		}
		else
		{
			position.y = lowest;
		}
		position.Add(focus);
		float damping = (float)exp(time * TATTOO_EDITOR_CAMERA_DAMPING);
		YawSpeed *= damping;
		PitchSpeed *= damping;
		if (editor->OwnsC3D)
		{
			LH3DTech::UpdateCamera(position, focus);
		}
		CameraPosition = position;
		CameraFocus = focus;
		if (FrontEnd::TattooDialog->C3D != NULL && FrontEnd::TattooDialog->OwnsC3D)
		{
			FrontEnd::TattooDialog->UpdateC3D();
			FrontEnd::TattooDialog->DrawC3D();
			for (int i = 0; i < TATTOO_EDITOR_NUM_PICTURES; i++)
			{
				if (FrontEnd::TattooDialog->Pictures[i]->dragging)
				{
					FrontEnd::TattooDialog->Pictures[i]->Draw(true, true);
				}
			}
		}
		break;
	}
	case SETUP_MESSAGE_MOUSE_UP:
		Dragging = false;
		break;
	case SETUP_MESSAGE_DRAG:
		if (control->id == TATTOO_EDITOR_CONTROL_ID_ROTATE)
		{
			float time = LH3DTech::g_delta_time * 0.001f;
			if (!Dragging)
			{
				DragStartX = data1;
				DragStartY = data2;
				Dragging = true;
			}
			YawSpeed += (DragStartX - data1) * time * 0.2f;
			PitchSpeed -= (DragStartY - data2) * time * 0.1f;
		}
		if (control->id == TATTOO_EDITOR_CONTROL_ID_COLOUR)
		{
			int column = ((data1 - control->rect.start.x) * TATTOO_EDITOR_COLOUR_COLUMNS) /
			             (control->rect.end.x - control->rect.start.x);
			int row = ((data2 - control->rect.start.y) * TATTOO_EDITOR_COLOUR_ROWS) /
			          (control->rect.end.y - control->rect.start.y);
			column = column > 0
			             ? (column < TATTOO_EDITOR_COLOUR_COLUMNS - 1 ? column : TATTOO_EDITOR_COLOUR_COLUMNS - 1)
			             : 0;
			row = row > 0 ? (row < TATTOO_EDITOR_COLOUR_ROWS - 1 ? row : TATTOO_EDITOR_COLOUR_ROWS - 1) : 0;
			int       index = row * TATTOO_EDITOR_COLOUR_COLUMNS + column;
			LH3DColor colour;
			colour.r = editor->ColourData[index * 3];
			colour.g = editor->ColourData[index * 3 + 1];
			colour.a = LH3D_COLOR_OPAQUE;
			colour.b = editor->ColourData[index * 3 + 2];
			editor->BrightnessPicker->color = colour.GetColor();
		}
		if (control->id == TATTOO_EDITOR_CONTROL_ID_BRIGHTNESS || control->id == TATTOO_EDITOR_CONTROL_ID_COLOUR)
		{
			unsigned long colour = editor->BrightnessPicker->color;
			unsigned long tint;
			if (editor->BrightnessPicker->SliderPosition < 0.5f)
			{
				long scale = (long)(editor->BrightnessPicker->SliderPosition * 512.0f);
				tint = LH3D_SCALE_COLOR(colour, scale);
			}
			else
			{
				long amount = (long)((editor->BrightnessPicker->SliderPosition - 0.5f) * 512.0f);
				tint = LH3D_BLEND_COLOR(colour, LH3D_COLOR_WHITE, amount);
			}
			for (int i = 0; i < TATTOO_EDITOR_NUM_PICTURES; i++)
			{
				SetTint((LH3DColor*)&editor->Pictures[i]->tint, tint);
			}
		}
		break;
	case SETUP_MESSAGE_DEACTIVATE:
		editor->TattooChanged = false;
		if (editor->OwnsC3D)
		{
			delete editor->C3D;
			editor->C3D = NULL;
			editor->OwnsC3D = false;
		}
		break;
	case SETUP_MESSAGE_ACTIVATE:
		editor->TattooChanged = false;
		editor->InitControls();
		break;
	case SETUP_MESSAGE_CHAR:
		if (data1 == VK_RETURN)
		{
			control = editor->AcceptButton;
		}
		else if (data1 == VK_ESCAPE)
		{
			control = editor->CancelButton;
		}
		else
		{
			break;
		}
	case SETUP_MESSAGE_CLICK:
		if (control == NULL)
		{
			break;
		}
		if (control->id == TATTOO_EDITOR_CONTROL_ID_ACCEPT)
		{
			if (GGame::g_game->IsMultiplayerGame() && editor->TattooChanged)
			{
				editor->setup_box->MessageBoxA(
					HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_SYMBOL_EXTRA_01),
					MSGBOXSTYLE_SINGLE_BUTTON, 0);
			}
			else
			{
				DialogBoxBase::Hide();
			}
		}
		if (control->id == TATTOO_EDITOR_CONTROL_ID_CANCEL && !control->hidden)
		{
			if (GGame::g_game->MyPlayer()->GetCreature() != NULL)
			{
				memcpy(GGame::g_game->MyPlayer()->GetCreature()->Tattoos, editor->OriginalTattoos,
				       sizeof(editor->OriginalTattoos));
			}
			DialogBoxBase::Hide();
		}
		break;
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT:
		editor->TattooChanged = false;
		break;
	case SETUP_MESSAGE_DROP: {
		if (editor->C3D == NULL)
		{
			break;
		}
		editor->DraggedPicture = -1;
		if (editor->HoveredTattoo >= 0)
		{
			SetupPicture* picture = (SetupPicture*)control;
			int           i;
			for (i = 0; i < TATTOO_EDITOR_NUM_TATTOOS; i++)
			{
				if (editor->Tattoos[i].Slot == editor->HoveredTattoo &&
				    editor->Tattoos[i].Type == picture->picture_index)
				{
					goto found;
				}
			}
			for (i = 0; i < TATTOO_EDITOR_NUM_TATTOOS; i++)
			{
				if (editor->Tattoos[i].Slot == TATTOO_EDITOR_NO_SLOT)
				{
					break;
				}
			}
			if (i == TATTOO_EDITOR_NUM_TATTOOS)
			{
				for (i = 0; i < TATTOO_EDITOR_NUM_TATTOOS; i++)
				{
					if (editor->Tattoos[i].Slot == editor->HoveredTattoo)
					{
						break;
					}
				}
			}
			if (i < TATTOO_EDITOR_NUM_TATTOOS)
			{
				editor->Tattoos[i].Slot = editor->HoveredTattoo;
				editor->Tattoos[i].Type = picture->picture_index;
				editor->C3D->StartFacialAction(C_FACE_SMILE, TATTOO_EDITOR_FACE_TIME);
				if (GGame::g_game->MyInterface() != NULL)
				{
					GGame::g_game->MyInterface()->StartImmersion(IMMERSION_EFFECT_TYPE_COMMAND_SUCCESS,
					                                             IMM_EFFECT_DONT_CHANGE);
				}
			}
		found:
			if (i < TATTOO_EDITOR_NUM_TATTOOS)
			{
				LH3DColor* tint = (LH3DColor*)&picture->tint;
				editor->Tattoos[i].Red = tint->r;
				editor->Tattoos[i].Green = tint->g;
				editor->Tattoos[i].Blue = tint->b;
			}
			editor->DraggedPicture = -1;
			editor->TattooChanged = true;
		}
		if (GGame::g_game->MyPlayer()->GetCreature() != NULL)
		{
			memcpy(GGame::g_game->MyPlayer()->GetCreature()->Tattoos, editor->Tattoos, sizeof(editor->Tattoos));
			GGame::g_game->MyPlayer()->GetCreature()->UpdateTattooDataFromLocalMachine();
		}
		PlayerSymbol::RebuildLocalTattoo(&PlayerProfile::Profile, GGame::g_game->MyPlayer()->GetCreature(),
		                                 GGame::g_game->PlayerIndex, 1, NULL);
		editor->C3D->MorphTexture();
		if (GGame::g_game->Initialised && GGame::g_game->MyPlayer() != NULL &&
		    GGame::g_game->MyPlayer()->GetCreature() != NULL)
		{
			GGame::g_game->MyPlayer()->GetCreature()->GetCreature3D()->MorphTexture();
		}
		break;
	}
	}
}

static void __fastcall SetTint(LH3DColor* tint, LH3DColor colour)
{
	*tint = colour;
}

CDBox* CDBox::Instance;

void CDBox::Init(uint32_t background_style, uint32_t tall_background,
                 void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	setup_box->DefaultTextSize = GetMidTextSize();

	TrackButton = NEW(3335) SetupButton(CD_BOX_CONTROL_ID_TRACK, 350, 260, 100, 30, L" ", 0);
	TrackButton->text_size = GetMidTextSize();
	PrevButton = NEW(3337)
		SetupBigButton(CD_BOX_CONTROL_ID_PREV, 310, 259, L" ", 32, SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	NextButton = NEW(3338)
		SetupBigButton(CD_BOX_CONTROL_ID_NEXT, 458, 259, L" ", 32, SETUP_TEXT_POSITION_RIGHT, BBSTYLE_RIGHT_ARROW);
	PlayButton = NEW(3340)
		SetupBigButton(CD_BOX_CONTROL_ID_PLAY, 360, 319, L" ", 32, SETUP_TEXT_POSITION_RIGHT, BBSTYLE_RIGHT_ARROW);
	StopButton = NEW(3341)
		SetupBigButton(CD_BOX_CONTROL_ID_STOP, 408, 319, L" ", 32, SETUP_TEXT_POSITION_RIGHT, BBSTYLE_CHECK_BOX_OFF);
	SetupStaticText* text = NEW(3343) SetupStaticText(
		SETUP_CONTROL_ID_NONE, 200, 200, 400, 60,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CDPLAYER), TEXTJUSTIFY_CENTRE_BREAK);
	text->text_size = GetMidTextSize();
	OkButton = NEW(3345) SetupBigButton(CD_BOX_CONTROL_ID_OK, 230, 390,
	                                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK), 32,
	                                    SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	CheckBox =
		NEW(3347) SetupCheckBox(CD_BOX_CONTROL_ID_CHECK_BOX, 546, 393, false, BBSTYLE_CHECK_BOX_OFF,
	                            HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CDPLAYERPOLL), 24);
	CheckBox->text_position = SETUP_TEXT_POSITION_LEFT;
	NumTracks = 0;
	CurrentTrack = 0;
}

void CDBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void CDBox::InitControls()
{
	CurrentTrack = redbook_gettrack(GGlobal::Global.audio->RedbookGetHandle());
	NumTracks = redbook_numtracks(GGlobal::Global.audio->RedbookGetHandle());
	if (CurrentTrack > NumTracks)
	{
		CurrentTrack = NumTracks;
	}
	UNICODE_sprintf(TrackButton->label, L"%d / %d", CurrentTrack, NumTracks);
}

void __stdcall CDBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	CDBox* cd_box = Instance;
	switch (message)
	{
	case SETUP_MESSAGE_CLICK: {
		bool32_t playing = redbook_status(GGlobal::Global.audio->RedbookGetHandle());
		if (control == cd_box->OkButton)
		{
			DialogBoxBase::Hide();
		}
		if (control == cd_box->NextButton || control == cd_box->TrackButton)
		{
			cd_box->CurrentTrack++;
			if (cd_box->CurrentTrack > cd_box->NumTracks)
			{
				cd_box->CurrentTrack = cd_box->NumTracks;
			}
			if (playing)
			{
				control = cd_box->PlayButton;
			}
		}
		if (control == cd_box->PrevButton)
		{
			if (cd_box->CurrentTrack > 1)
			{
				cd_box->CurrentTrack--;
			}
			if (cd_box->CurrentTrack > cd_box->NumTracks)
			{
				cd_box->CurrentTrack = cd_box->NumTracks;
			}
			if (playing)
			{
				control = cd_box->PlayButton;
			}
		}
		if (control == cd_box->StopButton)
		{
			redbook_stop(GGlobal::Global.audio->RedbookGetHandle());
			cd_box->CurrentTrack = 1;
		}
		if (control == cd_box->PlayButton)
		{
			redbook_play(GGlobal::Global.audio->RedbookGetHandle(), cd_box->CurrentTrack);
		}
		MusicMoodController::UpdateOnGameTurn(0.1f, true);
		UNICODE_sprintf(cd_box->TrackButton->label, L"%d / %d", cd_box->CurrentTrack, cd_box->NumTracks);
		break;
	}
	case SETUP_MESSAGE_ACTIVATE:
		cd_box->InitControls();
		break;
	}
}

SkipBox* SkipBox::Instance;

void SkipBox::Init(uint32_t background_style, uint32_t tall_background,
                   void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	setup_box->DefaultTextSize = GetMidTextSize();

	SetupStaticText* title =
		NEW(3432) SetupStaticText(SETUP_CONTROL_ID_NONE, 150, 190, 500, 70,
	                              HelpTextDataPatch::GetTextL(SKIP_BOX_PATCH_TEXT_TITLE), TEXTJUSTIFY_CENTRE_BREAK);
	title->text_size = GetMidTextSize();
	NEW(3434)
	SetupBigButton(SKIP_BOX_CONTROL_ID_OK, 220, 400,
	               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_REQUESTER_BOXES_04), 32,
	               SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	Selected = 0;
	for (int i = 0; i < SKIP_BOX_NUM_OPTIONS; i++)
	{
		const char16_t* label = L"";
		switch (i)
		{
		case 0:
			label = HelpTextDataPatch::GetTextL(SKIP_BOX_PATCH_TEXT_PLAY_ALL);
			break;
		case 1:
			label = HelpTextDataPatch::GetTextL(SKIP_BOX_PATCH_TEXT_SKIP_TUTORIAL);
			break;
		case 2:
			label = HelpTextDataPatch::GetTextL(SKIP_BOX_PATCH_TEXT_SKIP_TRAINING);
			break;
		case 3:
			label = HelpTextDataPatch::GetTextL(SKIP_BOX_PATCH_TEXT_KEEP_CREATURE);
			break;
		}
		Options[i] =
			NEW(3448) SetupCheckBox(SKIP_BOX_CONTROL_ID_OPTION + i, 250, 225 + i * 44, true, i == Selected, L" ", 24);
		SetupStaticText* text =
			NEW(3449) SetupStaticText(SETUP_CONTROL_ID_NONE, 290, 225 + i * 44, 300, 40, label, TEXTJUSTIFY_LEFT_BREAK);
		text->text_size = GetMidTextSize();
		Options[i]->text_position = SETUP_TEXT_POSITION_RIGHT;
	}
}

void SkipBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void SkipBox::InitControls()
{
	Selected = Selected > 0 ? (Selected < SKIP_BOX_NUM_OPTIONS - 1 ? Selected : SKIP_BOX_NUM_OPTIONS - 1) : 0;
	for (int i = 0; i < SKIP_BOX_NUM_OPTIONS; i++)
	{
		Options[i]->style = i == Selected;
	}
}

void __stdcall SkipBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	SkipBox* skip_box = Instance;
	switch (message)
	{
	case SETUP_MESSAGE_CLICK:
		if (control != NULL && control->id / 10 == SKIP_BOX_CONTROL_ID_OPTION / 10)
		{
			skip_box->Selected = control->id % 10;
			Instance->InitControls();
		}
		if (control != NULL && control->id == SKIP_BOX_CONTROL_ID_OK)
		{
			switch (Instance->Selected)
			{
			case 0:
				GGame::g_game->CanSkipTutorial = false;
				GGame::g_game->CanSkipCreatureTraining = false;
				GGame::g_game->KeepingOldCreature = false;
				break;
			case 1:
				GGame::g_game->CanSkipTutorial = true;
				GGame::g_game->CanSkipCreatureTraining = false;
				GGame::g_game->KeepingOldCreature = false;
				break;
			case 2:
				GGame::g_game->CanSkipTutorial = true;
				GGame::g_game->CanSkipCreatureTraining = true;
				GGame::g_game->KeepingOldCreature = false;
				break;
			case 3:
				GGame::g_game->CanSkipTutorial = true;
				GGame::g_game->CanSkipCreatureTraining = true;
				GGame::g_game->KeepingOldCreature = true;
				break;
			}
			PauseGame(false);
			DialogBoxBase::Hide();
		}
		break;
	case SETUP_MESSAGE_ACTIVATE:
		skip_box->InitControls();
		break;
	}
}

#define START_GAME_BOX_COLOUR    0xe0e0e0
#define SKIRMISH_GAME_BOX_COLOUR 0xe0e0e0

#define SKIRMISH_PLAYGROUND_DIRECTORY   ".\\scripts\\playgrounds\\"
#define SKIRMISH_PLAYGROUND_DIRECTORY_W L".\\scripts\\playgrounds\\"
#define SKIRMISH_PLAYGROUND_EXTENSION   ".txt"
#define SKIRMISH_PLAYGROUND_EXTENSION_W L".txt"
#define SKIRMISH_HELP_TEXT_TWO_GODS     6966
#define SKIRMISH_HELP_TEXT_THREE_GODS   6967
#define SKIRMISH_HELP_TEXT_FOUR_GODS    6968

void StartGameBox::Init(uint32_t background_style, uint32_t tall_background,
                        void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	setup_box->DefaultTextSize = GetBigTextSize();
	text = NEW(3533) SetupStaticText(START_GAME_BOX_CONTROL_ID_TEXT, 40, 30, 720, 40, L"", TEXTJUSTIFY_CENTRE_BREAK);
	button = NEW(3535) SetupButton(START_GAME_BOX_CONTROL_ID_BUTTON, 320, 530, 160, 40,
	                               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_62), 1);
	list = NEW(3536) SetupList(START_GAME_BOX_CONTROL_ID_LIST, 100, 110, 600, 380);
	list->DrawHighlightBox = false;
	BigButton = NEW(3539) SetupBigButton(START_GAME_BOX_CONTROL_ID_BUTTON, 30, 530, L"", 40, SETUP_TEXT_POSITION_RIGHT,
	                                     BBSTYLE_LEFT_ARROW);
}

void StartGameBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void StartGameBox::InitControls()
{
	wcscpy(BigButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK));
}

void __stdcall StartGameBox::Callback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	switch (message)
	{
	case SETUP_MESSAGE_CLICK:
		if (control == button)
		{
			DialogBoxBase::Hide();
		}
		if (control == BigButton)
		{
			DialogBoxBase::Hide();
			GGame::g_game->GameMode = GAME_MODE_SKIRMISH;
		}
		break;
	case SETUP_MESSAGE_ACTIVATE:
		InitControls();
		break;
	case SETUP_MESSAGE_PRE_DRAW: {
		int alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = alpha / 2;
		SetupThing::DrawBox(text->rect.start.x, text->rect.start.y, text->rect.end.x, text->rect.end.y,
		                    START_GAME_BOX_COLOUR, START_GAME_BOX_COLOUR, START_GAME_BOX_COLOUR, START_GAME_BOX_COLOUR,
		                    1, 1);
		SetupThing::DrawAlpha = alpha;
		break;
	}
	}
}

void SkirmishGameBox::Init(uint32_t background_style, uint32_t tall_background,
                           void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	setup_box->DefaultTextSize = GetBigTextSize();
	Text = NEW(3596) SetupStaticText(SKIRMISH_GAME_BOX_CONTROL_ID_TEXT, 40, 30, 720, 40, L"", TEXTJUSTIFY_CENTRE_BREAK);
	BackButton = NEW(3598) SetupBigButton(SKIRMISH_GAME_BOX_CONTROL_ID_BACK, 30, 530, L"", 40,
	                                      SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	StartButton = NEW(3599) SetupBigButton(SKIRMISH_GAME_BOX_CONTROL_ID_START, 730, 530, L"", 40,
	                                       SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	List = NEW(3600) SetupList(SKIRMISH_GAME_BOX_CONTROL_ID_LIST, 100, 110, 600, 380);
	List->DrawHighlightBox = true;
}

void SkirmishGameBox::Open(char16_t* title)
{
	DialogBoxBase::HideAll();
	wcscpy(Text->label, title);
	List->DeleteAll();
	Paths.clear();
	Show();
}

void SkirmishGameBox::AddLine(char16_t* name, char16_t* path)
{
	List->AddString(name, 0, 0, 0);
	Paths.push_back(path);
}

void SkirmishGameBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

static char16_t* GetPlaygroundName(char* file_name)
{
	int length = strlen(file_name);
	int extensionLength = sizeof(SKIRMISH_PLAYGROUND_EXTENSION) - 1;
	if (length >= extensionLength)
	{
		length -= extensionLength;
	}
	file_name[length] = '\0';
	return CHAR2WCHAR(file_name);
}

void SkirmishGameBox::InitControls()
{
	wcscpy(BackButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK));
	wcscpy(StartButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOBBYSTARTGAME));
	wcscpy(Text->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_26));
	WIN32_FIND_DATAA findData;
	HANDLE           find = FindFirstFileA(SKIRMISH_PLAYGROUND_DIRECTORY "*" SKIRMISH_PLAYGROUND_EXTENSION, &findData);
	List->DeleteAll();
	Paths.clear();
	if (find != INVALID_HANDLE_VALUE)
	{
		do
		{
			char16_t* name = GetPlaygroundName(findData.cFileName);
			if (_stricmp("TwoGods", findData.cFileName) == 0)
			{
				name = HelpTextDataBase::HelpTextDatabase.GetHelpText(SKIRMISH_HELP_TEXT_TWO_GODS);
			}
			else if (_stricmp("ThreeGods", findData.cFileName) == 0)
			{
				name = HelpTextDataBase::HelpTextDatabase.GetHelpText(SKIRMISH_HELP_TEXT_THREE_GODS);
			}
			else if (_stricmp("FourGods", findData.cFileName) == 0)
			{
				name = HelpTextDataBase::HelpTextDatabase.GetHelpText(SKIRMISH_HELP_TEXT_FOUR_GODS);
			}
			AddLine(name, CHAR2WCHAR(findData.cFileName));
		} while (FindNextFileA(find, &findData));
	}
	FindClose(find);
	StartButton->Hide(List->SelectedIndex == -1);
}

void __stdcall SkirmishGameBox::Callback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	char16_t name[_MAX_PATH];
	switch (message)
	{
	case SETUP_MESSAGE_UPDATE:
		StartButton->Hide(List->SelectedIndex == -1);
		break;
	case SETUP_MESSAGE_ACTIVATE:
		InitControls();
		break;
	case SETUP_MESSAGE_CLICK:
		if (control == BackButton)
		{
			GGame::g_game->StartType = GAME_START_TYPE_AUTOSAVE;
			StartRequested = false;
			DialogBoxBase::Hide();
		}
		if (control == StartButton)
		{
			StartRequested = true;
			wcscpy(name, Paths[List->SelectedIndex].c_str());
			wcscpy(MapPath, SKIRMISH_PLAYGROUND_DIRECTORY_W);
			wcscat(MapPath, name);
			wcscat(MapPath, SKIRMISH_PLAYGROUND_EXTENSION_W);
			DialogBoxBase::Hide();
		}
		break;
	case SETUP_MESSAGE_PRE_DRAW: {
		int alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = alpha / 2;
		SetupThing::DrawBox(Text->rect.start.x, Text->rect.start.y, Text->rect.end.x, Text->rect.end.y,
		                    SKIRMISH_GAME_BOX_COLOUR, SKIRMISH_GAME_BOX_COLOUR, SKIRMISH_GAME_BOX_COLOUR,
		                    SKIRMISH_GAME_BOX_COLOUR, 1, 1);
		SetupThing::DrawAlpha = alpha;
		break;
	}
	}
}

void FrontEnd::JustDoSkirmishGameBox()
{
	JustDoABox(SkirmishDialog);
}

void FrontEnd::JustDoABox(DialogBoxBase* box)
{
	LH3DWideScreen::g_fvalue = 0.0f;
	g_enable_callbacks = false;
	LH3DRender::StartFrame();
	LH3DRender::FinishFrame();
	g_enable_callbacks = true;
	bool finished = false;
	DialogBoxBase::HideAll();
	SetCursorOn();
	DialogBoxBase::HideAll();
	LH3DTech::UpdateCamera(LHPoint(0.0f, 20.0f, -30.0f), LHPoint(0.0f, 7.0f, 0.0f));
	int fade = FRONT_END_FADE_TIME - 1;
	box->Show();
	while (!finished || fade < FRONT_END_FADE_TIME)
	{
		LH3DRender::g_mode_cleaning = LH3D_CLEANING_MODE_SCREEN;
		LH3DRender::StartFrame();
		finished = SetupBox::GetCurrentActiveBox() == NULL;
		GGame::g_game->TimeInc = LH3DTech::g_delta_time;
		if (PlasmaBackground == NULL)
		{
			PlasmaBackground = NEW(3762) Plasma;
		}
		LH3DRender::g_mode_cleaning = LH3D_CLEANING_MODE_SCREEN;
		PlasmaBackground->Render(true);
		if (LHSys::TheSystem.keyboard.CurrentKey != 0)
		{
			int key = LHSys::TheSystem.keyboard.CurrentKey;
			int mod = LHSys::TheSystem.keyboard.ModifierFlags;
			LHSys::TheSystem.keyboard.CurrentKey = 0;
			if (SetupBox::GetCurrentActiveBox() != NULL)
			{
				SetupBox::GetCurrentActiveBox()->Key(key, mod);
			}
		}
		LH3DTech::g_game_time_inc = LH3DTech::g_delta_time;
		if (finished)
		{
			DialogBoxBase::HideAll();
			fade += LH3DTech::g_delta_time;
		}
		else
		{
			fade -= LH3DTech::g_delta_time;
			if (fade < 0)
			{
				fade = 0;
			}
		}
		if (fade != 0)
		{
			int alpha = fade * 255 / FRONT_END_FADE_TIME;
			LH3DFade::SetColor(LH3DColor((alpha > 0 ? (alpha < 255 ? alpha : 255) : 0) << 24));
		}
		static float time = 0.0f;
		time += LH3DTech::g_delta_time * 0.001f;
		CameraHelp::DrawMouseCallback();
		LHMouse& mouse = LHSys::TheSystem.mouse;
		SetupThing::MouseCaptured =
			mouse.Buttons & (LH_MOUSE_BUTTON_LEFT_DOWN | LH_MOUSE_BUTTON_RIGHT_DOWN | LH_MOUSE_BUTTON_MIDDLE_DOWN);
		SetupThing::RightClicked |= mouse.Buttons & LH_MOUSE_BUTTON_RIGHT_DOWN;
		SetupThing::DoubleClicked |=
			mouse.ButtonPressed & (LH_MOUSE_BUTTON_LEFT_DOUBLE_CLICK | LH_MOUSE_BUTTON_RIGHT_DOUBLE_CLICK);
		mouse.ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOUBLE_CLICK;
		mouse.ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOUBLE_CLICK;
		g_enable_callbacks = true;
		LH3DRender::FinishFrame();
		g_enable_callbacks = true;
		if (LHSys::TheSystem.screen.Flip(true))
		{
			break;
		}
	}
	LHSys::TheSystem.mouse.ButtonPressed &=
		~(LH_MOUSE_BUTTON_LEFT_DOWN | LH_MOUSE_BUTTON_RIGHT_DOWN | LH_MOUSE_BUTTON_MIDDLE_DOWN);
}

void HistoryBox::Init(uint32_t background_style, uint32_t tall_background,
                      void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	setup_box->BackgroundStyle = SETUP_BACKGROUND_NONE;
	setup_box->DefaultTextSize = GetBigTextSize();
	PreviousButton = NEW(3831) SetupBigButton(HISTORY_BOX_CONTROL_ID_PREVIOUS, 60, 500,
	                                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PREVIOUS_LINE),
	                                          40, SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	NextButton = NEW(3832) SetupBigButton(HISTORY_BOX_CONTROL_ID_NEXT, 700, 500,
	                                      HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_NEXT_LINE), 40,
	                                      SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	DoneButton = NEW(3833) SetupButton(HISTORY_BOX_CONTROL_ID_DONE, 320, 500, 160, 40,
	                                   HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_81), 1);
	DoneButton->text_size = GetMidTextSize();
}

void HistoryBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void HistoryBox::InitControls() {}

void __stdcall HistoryBox::Callback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	switch (message)
	{
	case SETUP_MESSAGE_CLICK: {
		if (control == DoneButton)
		{
			CreditsRoom::HistoryPage = 0;
		}
		if (control == PreviousButton)
		{
			CreditsRoom::HistoryPage++;
		}
		if (control == NextButton)
		{
			CreditsRoom::HistoryPage--;
		}
		int numPages = GGame::g_game->help_system != NULL ? GGame::g_game->help_system->NumHistoryEntries : 0;
		if (CreditsRoom::HistoryPage >= numPages)
		{
			CreditsRoom::HistoryPage = numPages - 1;
		}
		if (CreditsRoom::HistoryPage < 0)
		{
			CreditsRoom::HistoryPage = 0;
		}
		break;
	}
	case SETUP_MESSAGE_ACTIVATE:
		InitControls();
		break;
	}
}

bool HistoryBox::WantsKeyControl()
{
	return false;
}

bool HistoryBox::WantsMouseControl()
{
	if (!IsVisible())
	{
		return false;
	}
	int x = LHSys::TheSystem.mouse.Pos().x;
	int y = LHSys::TheSystem.mouse.Pos().y;
	SetupThing::unadjust(x, y);
	if (setup_box->FindControl(x, y) != NULL)
	{
		return true;
	}
	return SetupThing::MouseCaptured ? true : false;
}

bool HistoryBox::CanESCOut()
{
	return false;
}

void DeleteDirectoryContents(char* path)
{
	char             directory[1024];
	char             subDirectory[1024];
	WIN32_FIND_DATAA findData;
	SetCurrentDirectoryA(path);
	GetCurrentDirectoryA(sizeof(directory), directory);
	HANDLE find = FindFirstFileA("*.*", &findData);
	if (find != INVALID_HANDLE_VALUE)
	{
		do
		{
			if (!(findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
			{
				DeleteFileA(findData.cFileName);
			}
			else if (strcmp(".", findData.cFileName) != 0 && strcmp("..", findData.cFileName) != 0)
			{
				DeleteDirectoryContents(findData.cFileName);
				GetCurrentDirectoryA(sizeof(subDirectory), subDirectory);
				SetCurrentDirectoryA(directory);
				RemoveDirectoryA(subDirectory);
			}
		} while (FindNextFileA(find, &findData));
	}
	FindClose(find);
}

void DeleteDirectory(char* path)
{
	char directory[1024];
	GetCurrentDirectoryA(sizeof(directory), directory);
	DeleteDirectoryContents(path);
	RemoveDirectoryA(path);
	SetCurrentDirectoryA(directory);
}
