#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include "MapCoordsMeters.h"
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "ColourConstants.h"
#include "LandscapeConstants.h"
#include "GestureConstants.h"
#include "TimerConstants.h"
#include "PCInput.h"

#include <math.h>    /* For sqrt */
#include <stdio.h>   /* For FILE, fopen, fclose, fprintf, fread, fwrite, fseek, sprintf */
#include <stdlib.h>  /* For abs, _sleep */
#include <string.h>  /* For strcpy, strcat, strlen, strrchr */
#include <io.h>      /* For _unlink */
#include <windows.h> /* For MAX_PATH */

#include <Lionhead/LH3DLib/development/LH3DAnim.h>
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h>
#include <Lionhead/LH3DLib/development/LH3DFade.h>
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DObjectHair.h>
#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DSky.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LH3DLib/development/LH3DText.h>
#include <Lionhead/LHLib/ver5.0/LHKey.h>
#include <Lionhead/LHLib/ver5.0/RPFollow.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>

#include "Audio.h"
#include "Bookmark.h"
#include "Camera.h"
#include "Citadel.h"
#include "CitadelHeart.h"
#include "CameraModeFollow.h"
#include "CameraModeNew3.h"
#include "ControlMap.h"
#include "Creature.h"
#include "Creature3D.h"
#include "DialogBoxBase.h"
#include "Footpath.h"
#include "FootpathLink.h"
#include "FrontEnd.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameInfo.h"
#include "GameOSFile.h"
#include "GameStats.h"
#include "GameVideo.h"
#include "GatheringInterface.h"
#include "Global.h"
#include "HelpSystem.h"
#include "HelpText.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "LeashStatus.h"
#include "LandAlignement.h"
#include "LHInetWeather.h"
#include "Living.h"
#include "MainMenu.h"
#include "PlannedTownCitadelHeart.h"
#include "PlayerProfile.h"
#include "PSysEditor.h"
#include "Script.h"
#include "Setup.h"
#include "StartGameBox.h"
#include "StatsBox.h"
#include "Temple.h"
#include "Town.h"
#include "alexmfc.h"

// BW1W120 00cd3af0
extern SetupBox* RequestorBox;
// BW1W120 00d01984
extern bool VideoUnskippable;
// BW1W120 00d019d4
extern bool32_t UserPaused;
// BW1W120 00d019d8
extern bool FreeMove;
// BW1W120 00d3f008
extern LH3DMaterial* HairMaterial;
// BW1W120 00557f90 BW1M119 01312b40
void GameLoadingBox(bool finished);

char* DeveloperKeyConfigs[DEVELOPER_PROFILE_COUNT] = {
	"Default Key Config",                  //
	"Jeremy Key Config",                   //
	"Mark Webley Key Config",              //
	"Giles Key Config",                    //
	"Jean-Claude Key Config",              //
	"Daniel's Key Config mofo, dont mess", //
	"George Backer Conifg",                //
	"Tim's Conifg",                        //
	"TBL's Conifg",                        //
};
float DebugValue = 30.0f;
int   DebugFlagA = 1;
int   DebugFlagB = 1;
char* LandFilenames[] = {
	".\\scripts\\land1.txt",                  //
	".\\scripts\\land2.txt",                  //
	".\\scripts\\land3.txt",                  //
	".\\scripts\\land4.txt",                  //
	".\\scripts\\land5.txt",                  //
	".\\scripts\\mpm_2p_1.txt",               //
	".\\scripts\\mpm_3p_1.txt",               //
	".\\scripts\\mpm_4p_1.txt",               //
	".\\scripts\\playgrounds\\threegods.txt", //
	".\\scripts\\playgrounds\\twogods.txt",   //
	".\\scripts\\playgrounds\\fourgods.txt",  //
	"",                                       //
};

DebugText DebugText::Display;

void DebugText::Set(char* text, int line)
{
	Display.Line = line;
	Display.Active = true;
	Display.DisplayTime = DEBUG_TEXT_DISPLAY_TIME;
	if (!line)
	{
		for (int i = 0; i < DEBUG_TEXT_LINE_COUNT; i++)
		{
			Display.Lines[i][0] = '\0';
		}
		strcpy(Display.Lines[0], text);
		return;
	}
	int free;
	for (free = 0; free < DEBUG_TEXT_LINE_COUNT; free++)
	{
		if (Display.Lines[free][0] == '\0')
		{
			strcpy(Display.Lines[free], text);
			return;
		}
	}
	strcpy(Display.Lines[0], text);
}

static int               Unused0 = 0;
static DEVELOPER_PROFILE Profile = DEVELOPER_PROFILE_DEFAULT;

void GGame::SwitchProfile(LH_KEY key)
{
	switch (key)
	{
	case KB_0:
		Profile = DEVELOPER_PROFILE_DEFAULT;
		break;
	case KB_J:
		Profile = DEVELOPER_PROFILE_JEREMY;
		break;
	case KB_M:
		Profile = DEVELOPER_PROFILE_MARK_WEBLEY;
		break;
	case KB_G:
		Profile = DEVELOPER_PROFILE_GILES;
		break;
	case KB_C:
		Profile = DEVELOPER_PROFILE_JEAN_CLAUDE;
		break;
	case KB_D:
		Profile = DEVELOPER_PROFILE_DANIEL;
		break;
	case KB_K:
		Profile = DEVELOPER_PROFILE_GEORGE_BACKER;
		break;
	case KB_T:
		Profile = DEVELOPER_PROFILE_TIM;
		break;
	case KB_B:
		Profile = DEVELOPER_PROFILE_TBL;
		break;
	default:
		Profile = DEVELOPER_PROFILE_DEFAULT;
		break;
	}
}

static GPlayer* ZoomToCreaturePlayer = NULL;
static int      Unused1 = 0;
static int      Unused2 = 0;
static int      Unused3 = 0;
bool            PhysicsWhilePaused = false;
bool32_t        GGame::DebugDrawCreatureBeliefs = false;
static bool32_t SpellCheat = false;
static int      WeatherSymbol = 0;
static bool     WeatherReloading = false;

static LH3DMapCoords UnusedCoords;

void GGame::ProcessKey(LH_KEY key, unsigned short modifier)
{
	if (players[PlayerIndex].creature.Get() != NULL)
	{
		players[PlayerIndex].creature->GetCreature3D();
	}
	bool32_t singlePlayerSession = network.session->GetNumberOfPlayers() == 1;
	bool32_t handled = false;
	if (key == KB_ESCAPE)
	{
		if (g_game->GameOverStarted)
		{
			if (!g_game->help_system->IsInScriptWideScreen())
			{
				RequestorBox->Callback = GameOverBoxCallback;
				handled = true;
				SetupBox::SetCurrentActiveBox(RequestorBox);
				RequestorBox->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_DETAIL_00),
				                          MSGBOXSTYLE_YES_NO, 0);
			}
		}
		else if (!g_game->IsMultiplayerGame() && g_game->LandNumber == GAME_LAND_NUMBER_PLAYGROUND)
		{
			handled = true;
			if (!g_game->help_system->IsInScriptWideScreen() && g_game->script->IsScreenFaded() && !LH3DFade::g_color.a)
			{
				g_game->script->SetupScreenFadeBackToNormal(0);
				if (TutorialState)
				{
					ScriptRebootRequested = true;
					for (int i = 0; i < GLandscape::DrawObjectCount; i++)
					{
						if (GLandscape::DrawObjects[i] != NULL)
						{
							GLandscape::DrawObjects[i]->GameThingWithPos::Flags &=
								~GAME_THING_WITH_POS_FLAG_IN_DRAW_LIST;
						}
					}
					GLandscape::DrawObjectCount = 0;
				}
				else
				{
					DoAreYoSureLeaveLand0Requestor(
						HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_NEWEST_GET_CREATURE_30));
					PauseGame(true);
				}
			}
		}
	}
	SetupBox::UpdateWantKey();
	if (key == KB_F2)
	{
		bool dialogOpen = false;
		if (SetupBox::GetCurrentActiveBox() != NULL && !SetupBox::CanEscape)
		{
			dialogOpen = true;
			if (!SetupBox::GetCurrentActiveBox()->OnHold)
			{
				if (SetupBox::GetCurrentActiveBox() == FrontEnd::MainMenuDialog->setup_box)
				{
					dialogOpen = false;
				}
				if (SetupBox::GetCurrentActiveBox() == FrontEnd::GatheringDialog->setup_box)
				{
					dialogOpen = false;
				}
			}
		}
		if (!g_game->SkirmishGame && !g_game->IsMultiplayerGame() &&
		    g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL && !dialogOpen &&
		    g_game->LandNumber != GAME_LAND_NUMBER_PLAYGROUND && !g_game->help_system->IsInScriptWideScreen() &&
		    !g_game->IsMultiplayerGame())
		{
			if (g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
			{
				g_game->LeaveInsideCitadel();
			}
			DoAreYouSureLand0Requestor(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_131));
			PauseGame(true);
		}
		handled = true;
	}
	if (SetupBox::WantKey)
	{
		handled = true;
		if (key == KB_ESCAPE && !modifier && SetupBox::CanEscape)
		{
			DialogBoxBase::Hide();
			return;
		}
		SetupBox::GetCurrentActiveBox()->Key(key, modifier);
		if (SetupBox::GetCurrentActiveBox() != NULL && !SetupBox::GetCurrentActiveBox()->KeysPassThrough &&
		    ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
		{
			return;
		}
	}
	if (ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		if (!g_game->help_system->IsInScriptWideScreen() && !handled)
		{
			temple->ProcessKey(key, modifier);
		}
		return;
	}
	if (!handled && singlePlayerSession && PSysEditorInterface::PCInput(key, modifier))
	{
		handled = true;
	}
	if (!handled)
	{
		LH_KEY modifierKey;
		if (modifier & LH_MOD_SHIFT)
		{
			modifierKey = KB_LSHIFT;
		}
		else if (modifier & LH_MOD_CTRL)
		{
			modifierKey = KB_LCTRL;
		}
		else if (modifier & LH_MOD_ALT)
		{
			modifierKey = KB_LALT;
		}
		else
		{
			modifierKey = KB_NONE;
		}
		if (ProcessBindableKeys(key, modifierKey, ControlMouse::MOUSE_CONTROL_BUTTON_NONE) == true)
		{
			return;
		}
	}
	if (!handled)
	{
		switch (key)
		{
		case KB_T:
			if ((modifier & LH_MOD_ALT) && (modifier & LH_MOD_CTRL))
			{
				handled = true;
				SaveCreatureSnapshot();
				GGlobal::Global.audio->PlaySoundEffect(NULL, LH_SAMPLE_G_MENUBUTTON, LH_SAMPLE_PLAY_TYPE_RESTART, 0,
				                                       false, false,
				                                       GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_IN_GAME));
				if (g_game->MyInterface() != NULL)
				{
					g_game->MyInterface()->StartImmersion(IMMERSION_EFFECT_TYPE_COMMAND_SUCCESS,
					                                      IMM_EFFECT_DONT_CHANGE);
				}
			}
			break;
		case KB_ESCAPE:
			if (!(modifier & LH_MOD_SHIFT) && !(modifier & LH_MOD_CTRL))
			{
				if (g_game->VideoPlayer != NULL)
				{
					if (!VideoUnskippable)
					{
						g_game->CancelIntro();
						GGlobal::Global.audio->StartScriptMusic(MUSIC_TYPE_NONE);
					}
				}
				else if (!g_game->help_system->IsInScriptWideScreen() && GScript::InterruptRunningScript() &&
				         MainMenu::AreWeAllowedToReopen())
				{
					LHNetUseProfile(LHNetGetCurrentProfileNameFromRegistry());
					PlayerProfile::WriteBackToRegistry(PlayerProfile::Profile);
					FrontEnd::MainMenuDialog->Show();
				}
			}
			break;
		case KB_R:
			handled = true;
			MyInterface()->KeyBoardRepeatSpell();
			break;
		case KB_M:
			handled = true;
			MyInterface()->KeyBoardStartSpellSelectionSystem();
			break;
		case KB_P:
			if (!modifier)
			{
				UserPaused = !g_game->Paused;
				PauseGame(!g_game->Paused);
				handled = true;
			}
			break;
		}
	}
	if (handled)
	{
		return;
	}
	if (g_game->help_system->IsInScriptWideScreen())
	{
		return;
	}
	if (!g_game->control_map->CameraControlEnabled || !g_game->control_map->NormalInterface)
	{
		return;
	}
	switch (key)
	{
	case KB_1:
	case KB_2:
	case KB_3:
	case KB_4:
	case KB_5:
	case KB_6:
	case KB_7:
		if (Bookmark::ShowBookmarks && !g_game->help_system->IsInScriptWideScreen())
		{
			int index = key - KB_1;
			if ((modifier & LH_MOD_SHIFT) && (modifier & LH_MOD_CTRL))
			{
				if (Bookmark::Bookmarks[index].Flags & BOOKMARK_FLAG_SET)
				{
					Bookmark::Clear(index);
				}
			}
			else if ((modifier & LH_MOD_CTRL) && !(modifier & LH_MOD_ALT))
			{
				Bookmark::SetBookMark(index, MyInterface()->status->Pos);
			}
			else if (modifier & LH_MOD_SHIFT)
			{
				if (Bookmark::Bookmarks[index].Flags & BOOKMARK_FLAG_SET)
				{
					Bookmark::SetFollow(index);
				}
			}
			else if (!modifier)
			{
				if (Bookmark::Bookmarks[index].Flags & BOOKMARK_FLAG_SET)
				{
					Bookmark::SetCameraToBookMark(index);
				}
			}
		}
		break;
	case KB_TAB:
		if (modifier & LH_MOD_SHIFT)
		{
			Bookmark::SetFocusPreviousBookmark();
		}
		else if (modifier & LH_MOD_CTRL)
		{
			Bookmark::SetFocusNextBookmark();
		}
		else
		{
			Bookmark::SetFocusToOwnedTown();
		}
		break;
	case KB_BACKSPACE:
		Bookmark::SetFocusBeforeJumpBookmark();
		break;
	}
}

void GGame::ProcessMapKeys()
{
	if (ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL &&
	    (g_game->MyInterface()->IsActive() || g_game->MyInterface()->InGameEditor()) && !SetupBox::WantKey)
	{
		unsigned short keys = LHSys::TheSystem.keyboard.ModifierFlags & ~(LH_MOD_SHIFT | LH_MOD_CTRL);
		if (g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_ON))
		{
			keys |= LH_MOD_CTRL;
		}
		if (g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ROTATE_ON))
		{
			keys |= LH_MOD_SHIFT;
		}
		GCamera* gameCamera = GetCamera();
		gameCamera->modes[gameCamera->ModeCurrentIndex]->ProcessKeyMovement(keys);
	}
	CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(g_game->GetCamera()->GetCurrentMode());
	if (mode != NULL)
	{
		mode->InputDisabled =
			ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL || (SetupBox::GetCurrentActiveBox() != NULL && SetupBox::Showing);
	}
}

uint32_t GGame::ProcessBindableKeys(LH_KEY key, LH_KEY modifier_key, unsigned long mouse_button)
{
	if (key != KB_NONE)
	{
		int action = g_game->control_map->GetActionFromKeys(key, modifier_key);
		if (action != -1)
		{
			return DoAction(action);
		}
		if (key == KB_1)
		{
			if (modifier_key == KB_RALT || modifier_key == KB_LALT)
			{
				g_game->SetSpeed(max(GAME_SPEED_MINIMUM, network.Speed * 0.5f));
				return true;
			}
		}
		else if (key == KB_2 && (modifier_key == KB_RALT || modifier_key == KB_LALT))
		{
			g_game->SetSpeed(min(GAME_SPEED_MAXIMUM, network.Speed * 2.0f));
			return true;
		}
	}
	if (mouse_button != ControlMouse::MOUSE_CONTROL_BUTTON_NONE)
	{
		int action = g_game->control_map->IsMouseBeingUsed((ControlMouse::MOUSE_CONTROL_BUTTON)mouse_button);
		if (action != -1)
		{
			return DoAction(action);
		}
	}
	return false;
}

uint32_t GGame::DoAction(unsigned long action)
{
	if (g_game->help_system->IsInScriptWideScreen())
	{
		return false;
	}
	switch (action)
	{
	case BINDABLE_ACTION_HELP:
		g_game->help_system->HelpQuery();
		return true;
	case BINDABLE_ACTION_ZOOM_TO_TEMPLE:
		MyPlayer()->ZoomToCitadel(false);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_CREATURE: {
		Creature* creature = MyPlayer()->creature.Get();
		ZoomToCreaturePlayer = MyPlayer();
		if (creature != NULL)
		{
			CameraModeFollow* follow = dynamic_cast<CameraModeFollow*>(g_game->GetCamera()->GetCurrentMode());
			if (follow != NULL && follow->Target == creature)
			{
				g_game->GetCamera()->PopViewMode();
				if (dynamic_cast<CameraModeNew3*>(g_game->GetCamera()->GetCurrentMode()) == NULL)
				{
					NEW(894) CameraModeNew3(g_game->GetCamera());
				}
			}
			else
			{
				LHPoint  origin = g_game->GetCamera()->CameraOriginZoomer.GetCurrentValue();
				LHPoint& pos = creature->Game3dObject->matrix.GetPos();
				float    dx = pos.x - origin.x;
				float    dz = pos.z - origin.z;
				NEW(902)
				CameraModeFollow(camera, creature, 1.0f, false,
				                 (float)sqrt(dz * dz + dx * dx) < ZOOM_TO_CREATURE_NEAR_DISTANCE);
			}
		}
		return true;
	}
	case BINDABLE_ACTION_ZOOM_TO_REALM:
		g_game->MyPlayer()->ZoomToCitadel(true);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_INSIDE_TEMPLE:
		g_game->GoInsideCitadel(TEMPLE_ROOM_WORLD, false);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_CREATURE_ROOM:
		g_game->GoInsideCitadel(TEMPLE_ROOM_CREATURE, false);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_CHALLENGE_ROOM:
		g_game->GoInsideCitadel(TEMPLE_ROOM_CHALLENGE, false);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_SAVE_GAME_ROOM:
		g_game->GoInsideCitadel(TEMPLE_ROOM_SAVE_GAME, false);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_OPTIONS_ROOM:
		g_game->GoInsideCitadel(TEMPLE_ROOM_GAME_OPTIONS, false);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_LIBRARY:
		g_game->GoInsideCitadel(TEMPLE_ROOM_CREDITS, false);
		return true;
	case BINDABLE_ACTION_LEASH_UNLEASH_CREATURE:
		if (MyPlayer()->creature.Get() != NULL)
		{
			g_game->SetPacket(PACKET_TYPE_TOGGLE_LEASH);
		}
		return true;
	case BINDABLE_ACTION_TALK:
		LHSys::TheSystem.charRing.Tail = 0;
		LHSys::TheSystem.charRing.Head = 0;
		GatheringBox::Instance->OpenDialog(true);
		return true;
	case BINDABLE_ACTION_SHOW_VILLAGER_NAMES:
		if (!g_game->help_system->IsInScriptWideScreen())
		{
			g_game->ShowVillagerNames = !g_game->ShowVillagerNames;
			return true;
		}
	case BINDABLE_ACTION_SHOW_VILLAGER_DETAILS:
		if (!g_game->help_system->IsInScriptWideScreen())
		{
			Object* object = g_game->MyInterface()->interface_collide.object;
			Living* living = dynamic_cast<Living*>(object);
			if (living != NULL)
			{
				living->ShowInfo = !living->ShowInfo;
			}
			else
			{
				g_game->ShowVillagerInfo = !g_game->ShowVillagerInfo;
			}
		}
		return true;
	case BINDABLE_ACTION_QUICK_SAVE:
		if (!g_game->IsMultiplayerGame() && !g_game->help_system->IsInScriptWideScreen() && !g_game->GameOverStarted)
		{
			uint32_t turn = g_game->data.GameTurn;
			if (abs((int)(g_game->InstantSaveTurn - turn)) > INSTANT_SAVE_MINIMUM_TURNS)
			{
				g_game->InstantSaveTurn = turn;
				SetPacket(PACKET_TYPE_INSTANT_SAVE);
			}
		}
		return true;
	case BINDABLE_ACTION_QUICK_LOAD:
		if (!g_game->IsMultiplayerGame() && !g_game->GameOverStarted &&
		    abs((int)(g_game->InstantLoadTurn - g_game->data.GameTurn)) > INSTANT_SAVE_MINIMUM_TURNS)
		{
			SetPacket(PACKET_TYPE_INSTANT_LOAD);
		}
		return true;
	case BINDABLE_ACTION_NEXT_LEASH: {
		unsigned short leash;
		switch (g_game->MyInterface()->status->LeashStatus->LeashType)
		{
		case LEASH_TYPE_EVIL:
			leash = LEASH_TYPE_GOOD;
			break;
		case LEASH_TYPE_ROPE:
			leash = LEASH_TYPE_EVIL;
			break;
		case LEASH_TYPE_GOOD:
			leash = LEASH_TYPE_ROPE;
			break;
		}
		if (g_game->MyPlayer() != NULL && g_game->MyPlayer()->creature.Get() != NULL &&
		    g_game->MyPlayer()->creature->LeashEnabled[leash] == true)
		{
			g_game->SetPacket(PACKET_TYPE_TEMPLE_LEASH, leash, 0);
		}
		return true;
	}
	case BINDABLE_ACTION_PREVIOUS_LEASH: {
		unsigned short leash;
		switch (g_game->MyInterface()->status->LeashStatus->LeashType)
		{
		case LEASH_TYPE_EVIL:
			leash = LEASH_TYPE_ROPE;
			break;
		case LEASH_TYPE_ROPE:
			leash = LEASH_TYPE_GOOD;
			break;
		case LEASH_TYPE_GOOD:
			leash = LEASH_TYPE_EVIL;
			break;
		}
		if (g_game->MyPlayer() != NULL && g_game->MyPlayer()->creature.Get() != NULL &&
		    g_game->MyPlayer()->creature->LeashEnabled[leash] == true)
		{
			g_game->SetPacket(PACKET_TYPE_TEMPLE_LEASH, leash, 0);
		}
		return true;
	}
	}
	return false;
}

bool32_t LoadCreatureSnapshot()
{
	char path[512];
	GGame::g_game->path_creator.GetCurrentUserPath(path);
	strcat(path, CREATURE_SNAPSHOT_FILENAME);
	FILE* file = fopen(path, "rb");
	if (file == NULL)
	{
		return false;
	}
	int value = CREATURE_SNAPSHOT_VERSION;
	fread(&value, 1, sizeof(uint16_t), file);
	if (value != CREATURE_SNAPSHOT_VERSION)
	{
		fclose(file);
		return false;
	}
	int playerNumber;
	fread(&playerNumber, 1, sizeof(playerNumber), file);
	LHPoint position;
	fread(&position, 1, sizeof(position), file);
	LHPoint focus;
	fread(&focus, 1, sizeof(focus), file);
	float time;
	fread(&time, 1, sizeof(time), file);
	float skyType;
	fread(&skyType, 1, sizeof(skyType), file);
	float alignment;
	fread(&alignment, 1, sizeof(alignment), file);
	WeatherInfo weather;
	fread(&weather, 1, sizeof(weather), file);
	int multiplayer;
	fread(&multiplayer, 1, sizeof(multiplayer), file);
	int length;
	fread(&length, 1, sizeof(length), file);
	char mapName[512];
	fread(mapName, 1, length, file);
	mapName[length] = '\0';
	LHSys::TheSystem.screen.Flip(true);
	LH3DRender::D3DDevice->Clear(0, NULL, D3DCLEAR_TARGET | D3DCLEAR_ZBUFFER, 0, 1.0f, 0);
	LH3DRender::CleanScreen();
	LH3DRender::StartFrame();
	LH3DTech::UpdateCamera(position, focus);
	for (;;)
	{
		PlayerProfile profile;
		fread(&value, 1, sizeof(value), file);
		if (value < 0)
		{
			break;
		}
		fread(&profile, 1, sizeof(profile), file);
		int           count = 0;
		LHMatrix*     matrices = NULL;
		LH3DCreature* creature3d;
		if (GGame::g_game->Initialised)
		{
			GPlayer* player = GGame::g_game->GetPlayer(value);
			if (player != NULL && player->creature.Get() != NULL)
			{
				creature3d = player->creature->GetCreature3D();
				creature3d->PrepareForDrawing();
				fread(&count, 1, sizeof(count), file);
				if (count == creature3d->NumBoneMatrices)
				{
					matrices = creature3d->TransformedMatrices;
				}
				if (creature3d->HeldObject != NULL)
				{
					creature3d->ReleaseHeldObject();
				}
			}
		}
		if (matrices != NULL)
		{
			fread(matrices, count, sizeof(LHMatrix), file);
			float size;
			fread(&size, 1, sizeof(size), file);
			float headScale;
			fread(&headScale, 1, sizeof(headScale), file);
			if (creature3d != NULL)
			{
				fread(&creature3d->DynamicShadow->FizzAmount, 1, sizeof(float), file);
				fread(&creature3d->DynamicShadow->FizzU, 1, sizeof(float), file);
				fread(&creature3d->DynamicShadow->FizzV, 1, sizeof(float), file);
				fread(&creature3d->DynamicShadow->FrozParam, 1, sizeof(unsigned long), file);
				fread(&creature3d->DynamicShadow->FrozAmount, 1, sizeof(float), file);
				fread(&creature3d->DynamicShadow->matrix, 1, sizeof(LHMatrix), file);
				int creatureSize;
				fread(&creatureSize, 1, sizeof(creatureSize), file);
				fseek(file, creatureSize, SEEK_CUR);
				creature3d->DynamicShadow->SetColorSpecular(LH3D_COLOR_WHITE, 0);
				creature3d->DynamicShadow->SetMesh(creature3d->meshes[creature3d->CurrentMesh], NULL, NULL);
				creature3d->DynamicShadow->BoneMatrices = matrices;
				LH3DMesh::g_current_list_matrix = matrices;
				for (int i = 0; i < CREATURE_SNAPSHOT_HAIR_SETTLE_STEPS; i++)
				{
					creature3d->L3dHairGroup->Update(creature3d->meshes[creature3d->CurrentMesh],
					                                 CREATURE_SNAPSHOT_HAIR_SETTLE_TIME, size * headScale,
					                                 HairMaterial);
				}
				creature3d->DynamicShadow->PrepareShadow();
				LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
				creature3d->DynamicShadow->SetNeedClipping(true);
				creature3d->DrawNow();
			}
		}
		else
		{
			fseek(file, count * sizeof(LHMatrix), SEEK_CUR);
			float size;
			fread(&size, 1, sizeof(size), file);
			float headScale;
			fread(&headScale, 1, sizeof(headScale), file);
			float shadowValue;
			fread(&shadowValue, 1, sizeof(shadowValue), file);
			fread(&shadowValue, 1, sizeof(shadowValue), file);
			fread(&shadowValue, 1, sizeof(shadowValue), file);
			fread(&shadowValue, 1, sizeof(shadowValue), file);
			fread(&shadowValue, 1, sizeof(shadowValue), file);
			LHMatrix shadowMatrix;
			fread(&shadowMatrix, 1, sizeof(shadowMatrix), file);
			int creatureSize;
			fread(&creatureSize, 1, sizeof(creatureSize), file);
			fseek(file, creatureSize, SEEK_CUR);
		}
		fread(&value, 1, sizeof(value), file);
		if (value)
		{
			int unused;
			fread(&unused, 1, sizeof(unused), file);
			long animTime;
			fread(&animTime, 1, sizeof(animTime), file);
			int mesh;
			fread(&mesh, sizeof(mesh), 1, file);
			int animIndex;
			fread(&animIndex, sizeof(animIndex), 1, file);
			LHMatrix matrix;
			fread(&matrix, sizeof(matrix), 1, file);
			unsigned long color;
			fread(&color, sizeof(color), 1, file);
			unsigned long specular;
			fread(&specular, sizeof(specular), 1, file);
			LH3DObject* object;
			if (animIndex >= 0 && animIndex < MAX_COUNT_3D_ANIMS)
			{
				LH3DAnim* anim = LH3DAnim::GetPackedAnim(animIndex);
				object = LH3DObject::Create(LH3DObject::ANIMATED);
				object->SetMesh(LH3DMesh::GetPackedMesh(mesh), NULL, NULL);
				object->SetCurrentAnim(anim);
			}
			else
			{
				object = LH3DObject::Create(LH3DObject::STATIC);
				object->SetMesh(LH3DMesh::GetPackedMesh(mesh), NULL, NULL);
				object->SetCurrentAnim(NULL);
			}
			object->SetCurrentCycleTime(animTime);
			object->matrix = matrix;
			object->color = LH3D_COLOR_WHITE;
			object->specular = 0;
			object->SetNeedClipping(true);
			object->SetDynamicLighting(true);
			object->Draw();
		}
	}
	LH3DRender::FinishFrame();
	LHSys::TheSystem.screen.Flip(true);
	_sleep(CREATURE_SNAPSHOT_DISPLAY_TIME);
	return true;
}

bool32_t SaveCreatureSnapshot()
{
	char path[512];
	GGame::g_game->path_creator.GetCurrentUserPath(path);
	strcat(path, CREATURE_SNAPSHOT_FILENAME);
	FILE* file = fopen(path, "wb");
	if (file == NULL)
	{
		return false;
	}
	int value = CREATURE_SNAPSHOT_VERSION;
	fwrite(&value, 1, sizeof(uint16_t), file);
	value = GGame::g_game->MyPlayer()->GetPlayerNumber();
	fwrite(&value, 1, sizeof(value), file);
	LHPoint position;
	GGame::g_game->GetCamera()->GetPosition(position);
	LHPoint focus;
	GGame::g_game->GetCamera()->GetFocus(focus);
	fwrite(&position, 1, sizeof(position), file);
	fwrite(&focus, 1, sizeof(focus), file);
	float time = GGameInfo::Info.GetVisualTime();
	float skyType = LH3DSky::Time2SkyType(time);
	float alignment = GLandAlignement::TargetAlignement * 0.5f;
	fwrite(&time, 1, sizeof(time), file);
	fwrite(&skyType, 1, sizeof(skyType), file);
	fwrite(&alignment, 1, sizeof(alignment), file);
	fwrite(&GGame::g_game->GetCamera()->Weather, 1, sizeof(GGame::g_game->GetCamera()->Weather), file);
	char* mapName = "mpm_2p_1";
	if (GGame::g_game->IsMultiplayerGame())
	{
		bool32_t multiplayer = true;
		fwrite(&multiplayer, 1, sizeof(multiplayer), file);
		if (GGame::g_game->network.session->GetGameDataLength() != 0)
		{
			mapName = (char*)GGame::g_game->network.session->GetGameData();
			if (mapName == NULL)
			{
				mapName = "mpm_2p_1";
			}
		}
	}
	else
	{
		bool32_t multiplayer = false;
		fwrite(&multiplayer, 1, sizeof(multiplayer), file);
		mapName = GSetup::MapFilename;
	}
	value = strlen(mapName);
	fwrite(&value, 1, sizeof(value), file);
	fwrite(mapName, 1, value, file);
	for (value = 0; value < _PLAYER_NAME_COUNT; value++)
	{
		if (GGame::g_game->Initialised)
		{
			GPlayer* player = GGame::g_game->GetPlayer(value);
			if (player != NULL && player->creature.Get() != NULL && player->type == PLAYER_TYPE_HUMAN)
			{
				LH3DCreature*  creature3d = player->creature->GetCreature3D();
				LHPlayer*      lhPlayer = player->GetLeaderInterfaceStatus()->GetInterface()->player;
				PlayerProfile* profile = (PlayerProfile*)GGame::g_game->network.session->GetUserData(lhPlayer);
				if (creature3d != NULL && profile != NULL)
				{
					fwrite(&value, 1, sizeof(value), file);
					fwrite(profile, 1, sizeof(PlayerProfile), file);
					LHMatrix* matrices = creature3d->TransformedMatrices;
					int       count = creature3d->NumBoneMatrices;
					fwrite(&count, 1, sizeof(count), file);
					fwrite(matrices, count, sizeof(LHMatrix), file);
					float size = creature3d->GetStandingHeight();
					float headScale = creature3d->GetExtraHeadScale();
					fwrite(&size, 1, sizeof(size), file);
					fwrite(&headScale, 1, sizeof(headScale), file);
					fwrite(&creature3d->DynamicShadow->FizzAmount, 1, sizeof(float), file);
					fwrite(&creature3d->DynamicShadow->FizzU, 1, sizeof(float), file);
					fwrite(&creature3d->DynamicShadow->FizzV, 1, sizeof(float), file);
					fwrite(&creature3d->DynamicShadow->FrozParam, 1, sizeof(unsigned long), file);
					fwrite(&creature3d->DynamicShadow->FrozAmount, 1, sizeof(float), file);
					fwrite(&creature3d->DynamicShadow->matrix, 1, sizeof(LHMatrix), file);
					int creatureSize = sizeof(LH3DCreature);
					fwrite(&creatureSize, 1, sizeof(creatureSize), file);
					fwrite(creature3d, 1, creatureSize, file);
					if (creature3d->HeldObject != NULL && !creature3d->HeldObject->IsCreature() &&
					    creature3d->HeldObject->Game3dObject != NULL)
					{
						bool32_t held = true;
						fwrite(&held, 1, sizeof(held), file);
						int       mesh = creature3d->HeldObject->GetMesh();
						LH3DAnim* anim = creature3d->HeldObject->Game3dObject->GetCurrentAnim();
						int       animIndex;
						for (animIndex = 0; animIndex < MAX_COUNT_3D_ANIMS; animIndex++)
						{
							if (LH3DAnim::GetPackedAnim(animIndex) == anim)
							{
								break;
							}
						}
						long animTime = 0;
						if (animIndex == MAX_COUNT_3D_ANIMS)
						{
							animIndex = -1;
						}
						else
						{
							animTime = creature3d->HeldObject->Game3dObject->GetCurrentCycleTime();
						}
						int unused = 0;
						fwrite(&unused, 1, sizeof(unused), file);
						creature3d->FillHeldObjectMatrix(matrices);
						fwrite(&animTime, 1, sizeof(animTime), file);
						fwrite(&mesh, sizeof(mesh), 1, file);
						fwrite(&animIndex, sizeof(animIndex), 1, file);
						fwrite(&creature3d->HeldObject->Game3dObject->matrix, sizeof(LHMatrix), 1, file);
						fwrite(&creature3d->HeldObject->Game3dObject->color, sizeof(unsigned long), 1, file);
						fwrite(&creature3d->HeldObject->Game3dObject->specular, sizeof(unsigned long), 1, file);
					}
					else
					{
						bool32_t held = false;
						fwrite(&held, 1, sizeof(held), file);
					}
				}
			}
		}
	}
	value = -1;
	fwrite(&value, 1, sizeof(value), file);
	fclose(file);
	return true;
}

void SaveAvoidMap(LH3DCreature* creature)
{
	RPFollow* follow = creature->RpFollow;
	FILE*     file = fopen("..\\newtestbed\\savedmap.txt", "wt");
	if (file != NULL)
	{
		fprintf(file, "%d %d %f %f %f %f\n", 0, follow->AvoidCount, 1.0, follow->ObjectMargin, 2560.0, 2560.0);
		RPAvoid* avoid = follow->AvoidArray;
		for (int i = 0; i < follow->AvoidCount; i++)
		{
			fprintf(file, "%f %f %f\n", avoid->Centre.x, avoid->Centre.y, avoid->Radius - follow->ObjectMargin);
			avoid++;
		}
		fclose(file);
		GGlobal::Global.AddPlayerTextMessage(-1, "created file savedmap.txt");
	}
	else
	{
		GGlobal::Global.AddPlayerTextMessage(-1, "unable to create file savedmap.txt");
	}
}

void GGame::ProcessDebugKey(LH_KEY key, unsigned short modifier) {}

void GGame::ProcessJeremyKey(LH_KEY key, unsigned short modifier)
{
	switch (key)
	{
	case KB_H:
		DebugText::Set("Jeremy Profile - HELP KEY MENU", 0);
		DebugText::Set("K - Switch QuickClick Interface", 1);
		DebugText::Set("C - Cheat", 1);
		DebugText::Set("I - SlowDown Game", 1);
		DebugText::Set("O - SpeedUp Game", 1);
		DebugText::Set("M - Advance Night Time", 1);
		DebugText::Set("F - Generating Footpaths", 1);
		DebugText::Set("R - Free Move in Slow Motion", 1);
		DebugText::Set("W - Divers (Help My Current Test)", 1);
		DebugText::Set("Z - Go As Fast As Possible", 1);
		break;
	case KB_C:
		DebugText::Set("Jeremy - Cheat", 0);
		ProcessDebugKey(KB_U, 0);
		ProcessDebugKey(KB_U, LH_MOD_CTRL);
		ProcessDebugKey(KB_C, LH_MOD_ALT | LH_MOD_CTRL);
		FreeMove = true;
		break;
	case KB_O:
		DebugText::Set("Jeremy - Speed Up", 0);
		ProcessDebugKey(KB_2, LH_MOD_ALT);
		break;
	case KB_I:
		DebugText::Set("Jeremy - Slow Down", 0);
		ProcessDebugKey(KB_1, LH_MOD_ALT);
		break;
	case KB_M:
		DebugText::Set("Jeremy - Advance Night Time", 0);
		ProcessDebugKey(KB_1, LH_MOD_SHIFT);
		break;
	case KB_F:
		DebugText::Set("Jeremy - Generating Footpaths", 0);
		ProcessDebugKey(KB_Z, LH_MOD_ALT);
		break;
	case KB_R:
		if (FreeMove)
		{
			DebugText::Set("Jeremy - Free move - OFF", 0);
			FreeMove = false;
		}
		else
		{
			DebugText::Set("Jeremy - Free move - ON", 0);
			FreeMove = true;
		}
		break;
	case KB_W:
		SpellCheat = !SpellCheat;
		g_game->MyPlayer()->AllMagicEnabled = SpellCheat;
		if (SpellCheat)
		{
			DebugText::Set("Jeremy - Spell Cheat - ON", 0);
		}
		else
		{
			DebugText::Set("Jeremy - Spell Cheat - OFF", 0);
		}
		break;
	case KB_K:
		break;
	case KB_Z:
		if (g_game->GameFlags & GAME_FLAG_FORCE_GAME_TURN)
		{
			DebugText::Set("Jeremy - AS FAST AS POSSIBLE - OFF", 0);
			g_game->GameFlags &= ~GAME_FLAG_FORCE_GAME_TURN;
		}
		else
		{
			DebugText::Set("Jeremy - AS FAST AS POSSIBLE - ON", 0);
			g_game->GameFlags |= GAME_FLAG_FORCE_GAME_TURN;
		}
		break;
	default:
		ProcessDebugKey(key, modifier);
		break;
	}
}

void GGame::ProcessTimKey(LH_KEY key, unsigned short modifier)
{
	switch (key)
	{
	case KB_H:
		DebugText::Set("Tim Profile - HELP KEY MENU", 0);
		DebugText::Set("O - Force an Out of Sync", 1);
		break;
	case KB_O:
		break;
	default:
		g_game->ProcessDebugKey(key, modifier);
		break;
	}
}

void GGame::ProcessProfile4Key(LH_KEY key, unsigned short modifier) {}

void GGame::ProcessProfile5Key(LH_KEY key, unsigned short modifier) {}

void GGame::ProcessProfile6Key(LH_KEY key, unsigned short modifier) {}

void GGame::ProcessOutOfSyncKey(LH_KEY key, unsigned short modifier)
{
	if (key == KB_A)
	{
		int* data = NEW(3934) int;
		*data = 0;
		g_game->SetPacketWithData(PACKET_TYPE_FORCE_OUT_OF_SYNC, data, sizeof(int));
	}
}

void GGame::ProcessStatsKey(LH_KEY key, unsigned short modifier)
{
	FrontEnd::StatsDialog->Package = GameStats::GetPackage();
	FrontEnd::StatsDialog->ShowCurrentGame = false;
	FrontEnd::StatsDialog->Show();
}

inline void AddStartGameLine(wchar_t* text)
{
	FrontEnd::StartGameDialog->list->AddString(text, 0, 0, 0);
}

void GGame::ProcessGeorgeKey(LH_KEY key, unsigned short modifier)
{
	char text[1024];
	switch (key)
	{
	case KB_3: {
		Report3D__FPCce("help history is %d, head = %d\n", g_game->help_system->NumHistoryEntries,
		                g_game->help_system->HistoryHead);
		for (int i = 0; i < g_game->help_system->NumHistoryEntries; i++)
		{
			HelpHistoryEntry* entry = g_game->help_system->GetFromHistory(i);
			if (entry != NULL)
			{
				Report3D__FPCce("%d - %d %s\n", i, entry->Narrator,
				                WCHAR2CHAR(HelpTextDataBase::HelpTextDatabase.GetHelpText(entry->Text)));
			}
			else
			{
				Report3D__FPCce("%d - NULL!\n", i);
			}
		}
		break;
	}
	case KB_S:
		if (modifier & LH_MOD_ALT)
		{
			wchar_t*      title = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_130);
			StartGameBox* box = FrontEnd::StartGameDialog;
			DialogBoxBase::HideAll();
			wcscpy(box->text->label, title);
			box->list->DeleteAll();
			box->Show();
			AddStartGameLine(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_62));
		}
		else if (modifier & LH_MOD_SHIFT)
		{
			GameLoadingBox(false);
			_sleep(LOADING_BOX_TEST_TIME);
			GameLoadingBox(true);
		}
		break;
	case KB_A:
		AddIncomingText(INCOMINGTEXTTYPE_MAIL,
		                CHAR2WCHAR(LHSPrintf("You got mail from %s. Subject: %s", "bitch", "lemons")));
		break;
	case KB_B: {
		IncomingBubbleInfo* info =
			AddIncomingText(INCOMINGTEXTTYPE_WEATHER, CHAR2WCHAR(LHSPrintf("Weather symbol nr: %ld", WeatherSymbol)));
		if (info != NULL)
		{
			info->Weather = WeatherSymbol;
		}
		break;
	}
	case KB_C:
		if (++WeatherSymbol == LH_INETWEATHER_BUBBLE_ICON_COUNT)
		{
			WeatherSymbol = 0;
		}
		break;
	case KB_H:
		DebugText::Set("George Profile - HELP KEY MENU", 0);
		DebugText::Set("W - Weatherinformation", 1);
		DebugText::Set("Shift + P - Weather reload", 1);
		break;
	case KB_W:
		if (modifier & LH_MOD_SHIFT)
		{
			DebugText::Set("George - WeatherSystem reload.", 0);
			if (!WeatherReloading)
			{
				LHInetWeather::Weather.RequestRecalculate();
				LHInetWeather::Weather.SetStatus(LH_INETWEATHER_STATUS_ENABLED);
				WeatherReloading = true;
			}
			else if (!LHInetWeather::Weather.IsPaused())
			{
				LHInetWeather::Weather.SetStatus(LH_INETWEATHER_STATUS_DISABLING);
				LHInetWeather::Weather.SetCommand(LH_INETWEATHER_COMMAND_PAUSE);
				WeatherReloading = false;
			}
			else
			{
				LHInetWeather::Weather.SetStatus(LH_INETWEATHER_STATUS_DISABLED);
				WeatherReloading = false;
			}
		}
		else
		{
			if (LHInetWeather::CurrentLocation.GetWeatherType() != LH_INETWEATHER_WEATHERTYPES_NONE)
			{
				sprintf(text,
				        "Got weather for Country: %s, Area: %s, City: %s Weathertype: %ld, Temp: %ld, Visibility: %ld",
				        LHInetWeather::CurrentLocation.GetLocationCountryPtr(),
				        LHInetWeather::CurrentLocation.GetLocationAreaPtr(),
				        LHInetWeather::CurrentLocation.GetLocationCityPtr(),
				        LHInetWeather::CurrentLocation.GetWeatherType(),
				        LHInetWeather::CurrentLocation.GetTemperature(),
				        LHInetWeather::CurrentLocation.GetCloudCover());
			}
			else
			{
				sprintf(text, "Internet Weather update system not loaded.");
			}
			GGlobal::Global.AddPlayerTextMessage(-1, text);
		}
		break;
	}
}

void GGame::ProcessTomKey(LH_KEY key, unsigned short modifier)
{
	char path[MAX_PATH];
	switch (key)
	{
	case KB_H:
		DebugText::Set("Tom Profile - HELP KEY MENU", 0);
		DebugText::Set("W - Wallhugdebug", 1);
		DebugText::Set("F - Generate all footpaths", 2);
		break;
	case KB_F: {
		DebugText::Set("Generating footpaths - all lands", 0);
		g_game->script->Reset(true);
		for (int i = 0; *LandFilenames[i] != '\0'; i++)
		{
			strcpy(path, LandFilenames[i]);
			char* separator = strrchr(LandFilenames[i], '\\');
			if (separator == NULL)
			{
				separator = strrchr(LandFilenames[i], '/');
			}
			int length = separator - LandFilenames[i];
			path[length] = '\0';
			strcat(path, "\\..\\data\\landscape\\");
			strcat(path, &LandFilenames[i][length + 1]);
			int end = strlen(path);
			path[end - 4] = '.';
			path[end - 3] = 'f';
			path[end - 2] = 'o';
			path[end - 1] = 't';
			_unlink(path);
			DebugText::Set(LandFilenames[i], i + 2);
			g_game->LoadMap(LandFilenames[i]);
			if (PlannedTownCitadelHeart::ScriptPos.GetNearestTown(GENERATE_FOOTPATHS_TOWN_RANGE) != NULL)
			{
				Town::ForceBuildingOfPlannedAtPos(PlannedTownCitadelHeart::ScriptPos, GENERATE_FOOTPATHS_BUILD_DESIRE);
			}
			if (g_game->MyPlayer()->GetCitadel() != NULL && g_game->MyPlayer()->GetCitadel()->GetCitadelHeart() != NULL)
			{
				g_game->MyPlayer()->GetCitadel()->GetCitadelHeart()->BuildBy(1.0f);
			}
			GFootpath::DeleteAll();
			for (LHLinkedNode<Town*>* node = g_game->GameLists.TownList.GetStart(); node != NULL;
			     node = node->next.Get())
			{
				GFootpath::GenerateRoutesForTown(node->payload, GENERATE_FOOTPATHS_MAX_ROUTES);
			}
			GFootpathLink::SaveAll(GFootpath::LinkFilename);
		}
		break;
	}
	case KB_W:
		g_game->ProcessDebugKey(KB_F11, LH_MOD_CTRL | LH_MOD_ALT | LH_MOD_SHIFT);
		break;
	default:
		g_game->ProcessDebugKey(key, modifier);
		break;
	}
}
