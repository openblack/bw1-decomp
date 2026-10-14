#include "PCInput.h"

#include "Game.h" /* For GGame */

#include <Lionhead/LHLib/ver5.0/LHKey.h>    /* For LH_MOD_CTRL, LH_MOD_SHIFT */
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys */

#include <stdio.h>  /* For FILE, fopen, fwrite, fclose */
#include <stdlib.h> /* For abs */
#include <string.h> /* For strcat, strlen */

#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LH3DLib/development/LH3DSky.h>  /* For LH3DSky */
#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech */

#include "Camera.h"                                         /* For GCamera */
#include "CameraModeFollow.h"                               /* For CameraModeFollow */
#include "CameraModeNew3.h"                                 /* For CameraModeNew3 */
#include "Creature.h"                                       /* For Creature */
#include "Game3DObject.h"                                   /* For Game3DObject */
#include "GatheringBox.h"                                   /* For GatheringBox */
#include "HelpSystem.h"                                     /* For HelpSystem */
#include "InterfaceStatus.h"                                /* For GInterfaceStatus */
#include "LeashStatus.h"                                    /* For GLeashStatus */
#include "Living.h"                                         /* For Living */
#include "MainMenu.h"                                       /* For MainMenu */
#include "TempleRoom.h"                                     /* For enum TempleRoomsEnum */
#include "ControlMap.h"                                     /* For ControlMap */
#include "Interface.h"                                      /* For GInterface */
#include "Audio.h"                                          /* For GAudio */
#include "Bookmark.h"                                       /* For Bookmark */
#include "DialogBoxBase.h"                                  /* For DialogBoxBase */
#include "FrontEnd.h"                                       /* For FrontEnd */
#include "GameVideo.h"                                      /* For PauseGame */
#include "GameInfo.h"                                       /* For GGameInfo */
#include "Global.h"                                         /* For GGlobal */
#include "LandAlignement.h"                                 /* For GLandAlignement */
#include "Setup.h"                                          /* For GSetup */
#include "Creature3D.h"                                     /* For LH3DCreature */
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h> /* For LH3DComplexObject */
#include "HelpText.h"                                       /* For HelpTextDataBase */
#include "PSysEditor.h"                                     /* For PSysEditorInterface */
#include "PlayerProfile.h"                                  /* For PlayerProfile */
#include "Script.h"                                         /* For GScript */
#include "Temple.h"                                         /* For Temple */
#include "alexmfc.h"                                        /* For SetupBox */

#include <chlasm/HelpTextEnums.h>                     /* For HELP_TEXT_* */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h> /* For LHNetUseProfile */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>  /* For LHSession */

#define CREATURE_SNAPSHOT_VERSION        2409
#define CREATURE_SNAPSHOT_USER_DATA_SIZE 0x828
#define CREATURE_SNAPSHOT_ANIM_COUNT     441

#define FILEPATH "C:\\dev\\MP\\Black\\PCInput.cpp"

enum PROFILE
{
	PROFILE_NONE = 0,
	PROFILE_KEY_J = 1,
	PROFILE_KEY_M = 2,
	PROFILE_KEY_G = 3,
	PROFILE_KEY_C = 4,
	PROFILE_KEY_D = 5,
	PROFILE_KEY_K = 6,
	PROFILE_KEY_T = 7,
	PROFILE_KEY_B = 8,
};

unsigned char Dat_00D46A74;
bool32_t      GGame::DebugDrawCreatureBeliefs;

static GPlayer* ZoomPlayer;
static PROFILE  Profile;

void GGame::SwitchProfile(LH_KEY key)
{
	switch (key)
	{
	case KB_J:
		Profile = PROFILE_KEY_J;
		break;
	case KB_M:
		Profile = PROFILE_KEY_M;
		break;
	case KB_G:
		Profile = PROFILE_KEY_G;
		break;
	case KB_C:
		Profile = PROFILE_KEY_C;
		break;
	case KB_D:
		Profile = PROFILE_KEY_D;
		break;
	case KB_K:
		Profile = PROFILE_KEY_K;
		break;
	case KB_T:
		Profile = PROFILE_KEY_T;
		break;
	case KB_B:
		Profile = PROFILE_KEY_B;
		break;
	case KB_0:
		Profile = PROFILE_NONE;
		break;
	default:
		Profile = PROFILE_NONE;
		break;
	}
}

void GGame::ProcessKey(LH_KEY key, unsigned short modifier)
{
	Creature*     creature = MyPlayer()->GetCreature();
	LH3DCreature* creature3D = NULL;
	if (creature != NULL)
		creature3D = creature->GetCreature3D();
	bool32_t singlePlayer = network.session->GetNumberOfPlayers() == 1;
	bool32_t keyUsed = false;

	if (key == KB_ESC)
	{
		if (g_game->GameOverStarted)
		{
			if (!(g_game->help_system->WideScreen && g_game->help_system->GetWideScreenControl()))
			{
				Dat_00CD3AF0->Callback = fn_0054B1A0;
				keyUsed = true;
				SetupBox::SetCurrentActiveBox(Dat_00CD3AF0);
				Dat_00CD3AF0->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_DETAIL_00),
				                          MSGBOXSTYLE_3, 0);
			}
		}
		else if (!g_game->IsMultiplayerGame() && g_game->LandNumber == GAME_LAND_NUMBER_PLAYGROUND)
		{
			keyUsed = true;
			if (!(g_game->help_system->WideScreen && g_game->help_system->GetWideScreenControl()) &&
			    g_game->script->IsScreenFaded() && !Dat_00FA51DB)
			{
				g_game->script->SetupScreenFadeBackToNormal(0);
				if (TutorialState)
				{
					ScriptRebootRequested = true;
					for (int i = 0; i < GLandscape::DrawObjectCount; i++)
					{
						if (GLandscape::DrawObjects[i] != NULL)
							GLandscape::DrawObjects[i]->Flags &= ~GAME_THING_WITH_POS_FLAG_IN_SCRIPT;
					}
					GLandscape::DrawObjectCount = 0;
				}
				else
				{
					fn_0054CB90(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_NEWEST_GET_CREATURE_30));
					PauseGame(true);
				}
			}
		}
	}

	SetupBox::UpdateWantKey();

	if (key == KB_F2)
	{
		bool blocked = false;
		if (SetupBox::GetCurrentActiveBox() != NULL && !SetupBox::CanEscape)
		{
			blocked = true;
			if (!SetupBox::GetCurrentActiveBox()->OnHold)
			{
				if (SetupBox::GetCurrentActiveBox() == FrontEnd::MainMenuDialog->setup_box)
					blocked = false;
				if (SetupBox::GetCurrentActiveBox() == FrontEnd::Dat_00CD063C->setup_box)
					blocked = false;
			}
		}
		if (!g_game->SkirmishGame && !g_game->IsMultiplayerGame() &&
		    g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL && !blocked &&
		    g_game->LandNumber != GAME_LAND_NUMBER_PLAYGROUND &&
		    !(g_game->help_system->WideScreen && g_game->help_system->GetWideScreenControl()) &&
		    !g_game->IsMultiplayerGame())
		{
			if (g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
				g_game->LeaveInsideCitadel();
			fn_0054CB50(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_131));
			PauseGame(true);
		}
		keyUsed = true;
	}

	if (SetupBox::WantKey)
	{
		keyUsed = true;
		if (key == KB_ESC && modifier == 0 && SetupBox::CanEscape)
		{
			DialogBoxBase::Hide();
			return;
		}
		SetupBox::GetCurrentActiveBox()->Key(key, modifier);
		if (SetupBox::GetCurrentActiveBox() != NULL && !SetupBox::GetCurrentActiveBox()->AllowKeysInCitadel &&
		    ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
			return;
	}

	if (ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		if (!(g_game->help_system->WideScreen && g_game->help_system->GetWideScreenControl()) && !keyUsed)
			temple->ProcessKey(key, modifier);
		return;
	}
	if (keyUsed)
		return;
	if (singlePlayer && PSysEditorInterface::PCInput(key, modifier))
		return;

	LH_KEY modifierKey = (modifier & LH_MOD_SHIFT)  ? KB_LSHIFT
	                     : (modifier & LH_MOD_CTRL) ? KB_LCTRL
	                     : (modifier & LH_MOD_ALT)  ? KB_LALT
	                                                : KB_NONE;
	if (ProcessBindableKeys(key, modifierKey, 0) == true)
		return;

	switch (key)
	{
	case KB_T:
		if ((modifier & LH_MOD_ALT) && (modifier & LH_MOD_CTRL))
		{
			SaveCreatureSnapshot();
			GGlobal::Global.audio->PlaySoundEffect(NULL, 159, 3, 0, 0, 0,
			                                       GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME]);
			if (g_game->MyInterface() != NULL)
				g_game->MyInterface()->StartImmersion(IMMERSION_EFFECT_TYPE_COMMAND_SUCCESS, 0x80000000);
			return;
		}
		break;
	case KB_ESC:
		if (!(modifier & LH_MOD_SHIFT) && !(modifier & LH_MOD_CTRL))
		{
			if (g_game->VideoPlayer != NULL)
			{
				if (!Dat_00D01984)
				{
					g_game->fn_0054DA00();
					GGlobal::Global.audio->StartScriptMusic(MUSIC_TYPE_NONE);
				}
			}
			else if (!(g_game->help_system->WideScreen && g_game->help_system->GetWideScreenControl()) &&
			         fn_006EC670() && fn_00540020())
			{
				LHNetUseProfile(LHNetGetCurrentProfileNameFromRegistry());
				PlayerProfile::WriteBackToRegistry(PlayerProfile::Profile);
				FrontEnd::MainMenuDialog->Show();
			}
		}
		break;
	case KB_R:
		MyInterface()->fn_005D0410();
		return;
	case KB_M:
		MyInterface()->fn_005D03D0();
		return;
	case KB_P:
		if (modifier == 0)
		{
			Dat_00D019D4 = !(g_game->GameFlags & GAME_FLAG_PAUSED);
			PauseGame(!(g_game->GameFlags & GAME_FLAG_PAUSED));
			return;
		}
		break;
	}

	HelpSystem* help = g_game->help_system;
	if (help->WideScreen && help->GetWideScreenControl())
		return;
	if (!g_game->control_map->CameraControlEnabled || !g_game->control_map->NormalInterface)
		return;

	switch (key)
	{
	case KB_1:
	case KB_2:
	case KB_3:
	case KB_4:
	case KB_5:
	case KB_6:
	case KB_7: {
		long index = key - KB_1;
		if (Bookmark::ShowBookmarks &&
		    !(g_game->help_system->WideScreen && g_game->help_system->GetWideScreenControl()))
		{
			if ((modifier & LH_MOD_SHIFT) && (modifier & LH_MOD_CTRL))
			{
				if (Bookmark::Bookmarks[index].Flags & BOOKMARK_FLAG_SET)
					Bookmark::Clear(index);
			}
			else if ((modifier & LH_MOD_CTRL) && !(modifier & LH_MOD_ALT))
				Bookmark::SetBookMark(index, MyInterface()->status->Pos);
			else if (modifier & LH_MOD_SHIFT)
			{
				if (Bookmark::Bookmarks[index].Flags & BOOKMARK_FLAG_SET)
					Bookmark::SetFollow(index);
			}
			else if (modifier == 0 && (Bookmark::Bookmarks[index].Flags & BOOKMARK_FLAG_SET))
				Bookmark::SetCameraToBookMark(index);
		}
		break;
	}
	case KB_TAB:
		if (modifier & LH_MOD_SHIFT)
			Bookmark::SetFocusNextBookmark();
		else if (modifier & LH_MOD_CTRL)
			Bookmark::SetFocusPreviousBookmark();
		else
			Bookmark::SetFocusToOwnedTown();
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
		uint16_t key = LHSys::TheSystem.keyboard.ModifierFlags & ~(LH_MOD_SHIFT | LH_MOD_CTRL);
		if (g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_ON))
			key |= LH_MOD_CTRL;
		if (g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ROTATE_ON))
			key |= LH_MOD_SHIFT;
		GCamera* camera = GetCamera();
		camera->modes[camera->ModeCurrentIndex]->ProcessKeyMovement(key);
	}

	CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(g_game->GetCamera()->GetCurrentMode());
	if (mode != NULL)
	{
		mode->InputDisabled = ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL ||
		                      (SetupBox::GetCurrentActiveBox() != NULL && SetupBox::Dat_00C4CCEE);
	}
}

uint32_t GGame::ProcessBindableKeys(LH_KEY param_1, LH_KEY param_2, unsigned long param_3)
{
	if (param_1 != KB_NONE)
	{
		int action = g_game->control_map->GetActionFromKeys(param_1, param_2);
		if (action != -1)
			return DoAction(action);
		if (param_1 == KB_1)
		{
			if (param_2 == KB_RALT || param_2 == KB_LALT)
			{
				g_game->SetSpeed(max(0.5f, network.Speed * 0.5f));
				return true;
			}
		}
		else if (param_1 == KB_2)
		{
			if (param_2 == KB_RALT || param_2 == KB_LALT)
			{
				g_game->SetSpeed(min(2.0f, network.Speed * 2.0f));
				return true;
			}
		}
	}
	if (param_3 != 0)
	{
		int action = g_game->control_map->fn_00470A60(param_3);
		if (action != -1)
			return DoAction(action);
	}
	return false;
}

uint32_t GGame::DoAction(unsigned long param_1)
{
	HelpSystem* help = g_game->help_system;
	if (help->WideScreen && help->GetWideScreenControl())
		return false;

	switch (param_1)
	{
	case BINDABLE_ACTION_HELP:
		help->HelpQuery();
		return true;
	case BINDABLE_ACTION_ZOOM_TO_TEMPLE:
		MyPlayer()->ZoomToCitadel(false);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_CREATURE: {
		Creature* creature = MyPlayer()->GetCreature();
		ZoomPlayer = MyPlayer();
		if (creature != NULL)
		{
			CameraModeFollow* follow = dynamic_cast<CameraModeFollow*>(g_game->GetCamera()->GetCurrentMode());
			if (follow != NULL && follow->Target == creature)
			{
				g_game->GetCamera()->PopViewMode();
				if (dynamic_cast<CameraModeNew3*>(g_game->GetCamera()->GetCurrentMode()) == NULL)
					new (FILEPATH, 894) CameraModeNew3(g_game->GetCamera());
			}
			else
			{
				LHPoint cameraPos = g_game->GetCamera()->CameraOriginZoomer.GetCurrentValue();
				float   distance = creature->Game3dObject->matrix.GetPos().GetDistance2D(cameraPos);
				new (FILEPATH, 902) CameraModeFollow(camera, creature, 1.0f, false, distance < 80.0f);
			}
		}
		return true;
	}
	case BINDABLE_ACTION_ZOOM_TO_REALM:
		g_game->MyPlayer()->ZoomToCitadel(true);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_INSIDE_TEMPLE:
		g_game->GoInsideCitadel(TEMPLE_ROOM_WORLD, 0);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_CREATURE_ROOM:
		g_game->GoInsideCitadel(TEMPLE_ROOM_CREATURE, 0);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_CHALLENGE_ROOM:
		g_game->GoInsideCitadel(TEMPLE_ROOM_CHALLENGE, 0);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_SAVE_GAME_ROOM:
		g_game->GoInsideCitadel(TEMPLE_ROOM_SAVE_GAME, 0);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_OPTIONS_ROOM:
		g_game->GoInsideCitadel(TEMPLE_ROOM_GAME_OPTIONS, 0);
		return true;
	case BINDABLE_ACTION_ZOOM_TO_LIBRARY:
		g_game->GoInsideCitadel(TEMPLE_ROOM_CREDITS, 0);
		return true;
	case BINDABLE_ACTION_LEASH_UNLEASH_CREATURE:
		if (MyPlayer()->GetCreature() != NULL)
			g_game->SetPacket(PACKET_TYPE_LEASH_UNLEASH_CREATURE);
		return true;
	case BINDABLE_ACTION_TALK:
		LHSys::TheSystem.charRing.Clear();
		GatheringBox::Instance->OpenDialog(true);
		return true;
	case BINDABLE_ACTION_SHOW_VILLAGER_NAMES:
		if (!(g_game->help_system->WideScreen && g_game->help_system->GetWideScreenControl()))
		{
			uint32_t flags = g_game->GameFlags;
			g_game->GameFlags = flags ^ ((~flags ^ flags) & GAME_FLAG_UNKNOWN_0x20000);
			return true;
		}
	case BINDABLE_ACTION_SHOW_VILLAGER_DETAILS:
		if (!(g_game->help_system->WideScreen && g_game->help_system->GetWideScreenControl()))
		{
			Object* object = g_game->MyInterface()->interface_collide.object;
			Living* living = dynamic_cast<Living*>(object);
			if (living != NULL)
			{
				uint32_t status = living->status;
				living->status = status ^ ((~status ^ status) & LIVING_STATUS_SHOW_INFO);
			}
			else
			{
				uint32_t flags = g_game->GameFlags;
				g_game->GameFlags = flags ^ ((~flags ^ flags) & GAME_FLAG_SHOW_VILLAGER_INFO);
			}
		}
		return true;
	case BINDABLE_ACTION_QUICK_SAVE:
		if (!g_game->IsMultiplayerGame() &&
		    !(g_game->help_system->WideScreen && g_game->help_system->GetWideScreenControl()) &&
		    !g_game->GameOverStarted && abs((int)(g_game->LastSaveTurn - g_game->data.GameTurn)) > 3)
		{
			g_game->LastSaveTurn = g_game->data.GameTurn;
			SetPacket(PACKET_TYPE_SAVE_GAME);
		}
		return true;
	case BINDABLE_ACTION_QUICK_LOAD:
		if (!g_game->IsMultiplayerGame() && !g_game->GameOverStarted &&
		    abs((int)(g_game->LastLoadTurn - g_game->data.GameTurn)) > 3)
			SetPacket(PACKET_TYPE_LOAD_GAME);
		return true;
	case BINDABLE_ACTION_NEXT_LEASH: {
		uint32_t leash;
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
		if (g_game->MyPlayer() != NULL && g_game->MyPlayer()->GetCreature() != NULL &&
		    g_game->MyPlayer()->GetCreature()->LeashEnabled[(uint16_t)leash] == 1)
			g_game->SetPacket(PACKET_TYPE_CHANGE_LEASH, (uint16_t)leash, 0);
		return true;
	}
	case BINDABLE_ACTION_PREVIOUS_LEASH: {
		uint32_t leash;
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
		if (g_game->MyPlayer() != NULL && g_game->MyPlayer()->GetCreature() != NULL &&
		    g_game->MyPlayer()->GetCreature()->LeashEnabled[(uint16_t)leash] == 1)
			g_game->SetPacket(PACKET_TYPE_CHANGE_LEASH, (uint16_t)leash, 0);
		return true;
	}
	}
	return false;
}

inline void GCamera::GetPosition(LHPoint& pos)
{
	pos = *LH3DTech::GetCameraPosition();
}

inline void GCamera::GetFocus(LHPoint& focus)
{
	focus = LHPoint(LH3DTech::GetCameraTarget());
}

bool32_t SaveCreatureSnapshot()
{
	char path[MAX_PATH];
	GGame::g_game->path_creator.GetCurrentUserPath(path);
	strcat(path, "\\creaturesnapshot.csn");
	FILE* file = fopen(path, "wb");
	if (file == NULL)
		return false;

	unsigned long value = CREATURE_SNAPSHOT_VERSION;
	fwrite(&value, 1, sizeof(short), file);
	value = GGame::g_game->MyPlayer()->GetPlayerNumber();
	fwrite(&value, 1, sizeof(value), file);

	LHPoint position;
	GGame::g_game->GetCamera()->GetPosition(position);
	LHPoint focus;
	GGame::g_game->GetCamera()->GetFocus(focus);
	fwrite(&position, 1, sizeof(position), file);
	fwrite(&focus, 1, sizeof(focus), file);

	float visualTime = GGameInfo::Info.GetVisualTime();
	float skyType = LH3DSky::Time2SkyType(visualTime);
	float alignment = GLandAlignement::Dat_00BF337C * 0.5f;
	fwrite(&visualTime, 1, sizeof(visualTime), file);
	fwrite(&skyType, 1, sizeof(skyType), file);
	fwrite(&alignment, 1, sizeof(alignment), file);
	fwrite(&GGame::g_game->GetCamera()->Weather, 1, sizeof(GGame::g_game->GetCamera()->Weather), file);

	char* mapName = "mpm_2p_1";
	if (GGame::g_game->IsMultiplayerGame())
	{
		value = true;
		fwrite(&value, 1, sizeof(value), file);
		if (GGame::g_game->network.session->LobbyChannel->GetGameDataLength())
		{
			mapName = (char*)GGame::g_game->network.session->LobbyChannel->GetGameData();
			if (mapName == NULL)
				mapName = "mpm_2p_1";
		}
	}
	else
	{
		value = false;
		fwrite(&value, 1, sizeof(value), file);
		mapName = GSetup::Dat_00D99648;
	}
	value = strlen(mapName);
	fwrite(&value, 1, sizeof(value), file);
	fwrite(mapName, 1, value, file);

	for (int i = 0; i < _PLAYER_NAME_COUNT; i++)
	{
		if (!GGame::g_game->Initialised)
			continue;
		GPlayer* player = GGame::g_game->GetPlayer(i);
		if (player == NULL || player->GetCreature() == NULL || player->type != PLAYER_TYPE_HUMAN)
			continue;
		LH3DCreature* creature3D = player->GetCreature()->GetCreature3D();
		void*         userData =
			GGame::g_game->network.session->GetUserData(player->GetLeaderInterfaceStatus()->GetInterface()->player);
		if (creature3D == NULL || userData == NULL)
			continue;

		fwrite(&i, 1, sizeof(i), file);
		fwrite(userData, 1, CREATURE_SNAPSHOT_USER_DATA_SIZE, file);

		int       matrixCount = creature3D->NumTransformedMatrices;
		LHMatrix* matrices = creature3D->TransformedMatrices;
		fwrite(&matrixCount, 1, sizeof(matrixCount), file);
		fwrite(matrices, sizeof(LHMatrix), matrixCount, file);

		float size = creature3D->Size1 * 15.0f;
		float headScale = creature3D->GetExtraHeadScale();
		fwrite(&size, 1, sizeof(size), file);
		fwrite(&headScale, 1, sizeof(headScale), file);
		fwrite(&creature3D->DynamicShadow->FizzAmount, 1, 4, file);
		fwrite(&creature3D->DynamicShadow->field_0xa4, 1, 4, file);
		fwrite(&creature3D->DynamicShadow->field_0xa8, 1, 4, file);
		fwrite(&creature3D->DynamicShadow->FrozParam, 1, 4, file);
		fwrite(&creature3D->DynamicShadow->FrozAmount, 1, 4, file);
		fwrite(&creature3D->DynamicShadow->matrix, 1, sizeof(LHMatrix), file);

		int creatureSize = sizeof(LH3DCreature);
		fwrite(&creatureSize, 1, sizeof(creatureSize), file);
		fwrite(creature3D, creatureSize, 1, file);

		if (creature3D->HeldObject != NULL && !creature3D->HeldObject->IsCreature() &&
		    creature3D->HeldObject->Game3dObject != NULL)
		{
			int holding = true;
			fwrite(&holding, 1, sizeof(holding), file);
			MESH_LIST mesh = creature3D->HeldObject->GetMesh();
			LH3DAnim* anim = creature3D->HeldObject->Game3dObject->GetCurrentAnim();
			int       animIndex;
			for (animIndex = 0; animIndex < CREATURE_SNAPSHOT_ANIM_COUNT; animIndex++)
			{
				if (LH3DAnim::GetPackedAnim(animIndex) == anim)
					break;
			}
			long cycleTime = 0;
			if (animIndex == CREATURE_SNAPSHOT_ANIM_COUNT)
				animIndex = -1;
			else
				cycleTime = creature3D->HeldObject->Game3dObject->GetCurrentCycleTime();
			fwrite(&mesh, 1, sizeof(mesh), file);
			LHMatrix heldMatrix;
			creature3D->FillHeldObjectMatrix(matrices);
			fwrite(&animIndex, 1, sizeof(animIndex), file);
			fwrite(&cycleTime, sizeof(cycleTime), 1, file);
			fwrite(&heldMatrix, sizeof(heldMatrix), 1, file);
			fwrite(&creature3D->HeldObject->Game3dObject->matrix, sizeof(LHMatrix), 1, file);
			fwrite(&creature3D->HeldObject->Game3dObject->color, sizeof(unsigned long), 1, file);
			fwrite(&creature3D->HeldObject->Game3dObject->specular, sizeof(unsigned long), 1, file);
		}
		else
		{
			int holding = false;
			fwrite(&holding, 1, sizeof(holding), file);
		}
	}
	value = (unsigned long)-1;
	fwrite(&value, 1, sizeof(value), file);
	fclose(file);
	return true;
}
