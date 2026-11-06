#include "WhiteColour.h"
#include "Script.h"

#include <windows.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>  /* For LHSys */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h> /* For LHSPrintf */

#include "camerahelp.h"
#include "ControlHand.h"
#include "ControlMap.h"
#include "Game.h"
#include "HelpProfile.h"
#include "Interface.h"
#ifdef VERSION_BW1WCI
#include "InterfaceStatus.h"
#include "Player.h"
#endif
#include "SaveGameRoom.h"
#include "ScriptHighlight.h"

// BW1W120 00c5b0f4
extern int ActiveTricons;

void GScript::GameThingClicked()
{
	if (GGame::g_game->IsMultiplayerGame())
	{
		ScriptErrorMessage("This is not multiplayer friendly yet!");
	}
	if (GGame::g_game->IsMultiplayerGame())
	{
		g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
		return;
	}
	uint32_t          id = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(id);
	SCRIPT_ASSERT(thing != NULL, "Object no longer valid");
	if (thing != NULL)
	{
		GInterface* playerInterface = GGame::g_game->MyInterface();
		bool32_t    clicked = playerInterface->LastRClickedObject.GetBase() == thing;
		if (clicked && thing->IsScriptHighlight() && !((ScriptHighlight*)thing)->IsDidYouKnow() &&
		    ((ScriptHighlight*)thing)->IsVortexEntry())
		{
			GGame::g_game->MyInterface()->LastRClickedObject.Clear();
			SaveGameRoom::InstantSaveGame(SAVE_GAME_ROOM_LAST_NORMAL_SLOT);
			Object* object = dynamic_cast<Object*>(thing);
			GGame::g_game->MyInterface()->SetRClickedObject(object);
		}
		g_scriptDLL->PUSH((void*)clicked, VMType_BOOLEAN);
	}
	else
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
	}
}

void GScript::IsLockedInteraction()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Object no longer valid");
	if (thing != NULL)
	{
		bool32_t locked = (thing->Flags & GAME_THING_WITH_POS_FLAG_INTERACTING) != 0;
		g_scriptDLL->PUSH((void*)locked, VMType_BOOLEAN);
	}
	else
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
	}
}

void GScript::GetHandPosition()
{
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame(), "This is not multiplayer friendly!");
	SCRIPT_ASSERT(GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL, "Hand in citadel");
	g_scriptDLL->POINT_PUSH(GGame::g_game->MyInterface()->GetRenderHand()->GetPos());
}

void GScript::ClearClickedObject()
{
	GGame::g_game->MyInterface()->LastRClickedObject.Clear();
}

void GScript::ClearClickedPosition()
{
	GGame::g_game->MyInterface()->LastRClickedPos.Clear();
}

void GScript::PositionClickedNear()
{
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	if (GGame::g_game->IsMultiplayerGame())
	{
		ScriptErrorMessage("This is not multiplayer friendly yet!");
	}
	if (GGame::g_game->IsMultiplayerGame())
	{
		g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
		return;
	}
	bool32_t isNear = GGame::g_game->MyInterface()->IsLastRClickedPosNear(MapCoords(pos), radius);
	g_scriptDLL->PUSH((void*)isNear, VMType_BOOLEAN);
}

void GScript::SetInterfaceInteraction()
{
	SetInterfaceInteraction((SCRIPT_INTERFACE_LEVEL)g_scriptDLL->ULONG_POP());
}

void GScript::SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL level)
{
	GGame::g_game->script->InterfaceLevel = level;
	switch (level)
	{
	case SCRIPT_INTERFACE_LEVEL_NORMAL:
		GGame::g_game->MyInterface()->Limits.Clear();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURES_NORMAL, CAMERA_FEATURES_ALL);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = true;
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_GRAB:
		GGame::g_game->MyInterface()->Limits.SetOnlyInteractWithHighlights();
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_MOVE, CAMERA_FEATURES_ALL);
		CameraHelp::SetAutoPitch(SCRIPT_AUTO_PITCH, SCRIPT_AUTO_PITCH_HEIGHT, true);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(SCRIPT_HAND_GRAB_DISTANCE);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_GRAB_FAR_TO_CITADEL:
		GGame::g_game->MyInterface()->Limits.SetOnlyInteractWithHighlights();
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_MOVE, CAMERA_FEATURES_ALL);
		CameraHelp::SetAutoPitch(SCRIPT_AUTO_PITCH, SCRIPT_AUTO_PITCH_HEIGHT, true);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_ROTATE:
		GGame::g_game->MyInterface()->Limits.SetOnlyInteractWithHighlights();
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_ROTATE, CAMERA_FEATURES_ALL);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_DOUBLE_CLICK_AND_DRAG:
		GGame::g_game->MyInterface()->Limits.SetOnlyInteractWithHighlights();
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_MOVE | CAMERA_FEATURE_DOUBLE_CLICK, CAMERA_FEATURES_ALL);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_ZOOM:
		GGame::g_game->MyInterface()->Limits.SetOnlyInteractWithHighlights();
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_ZOOM | CAMERA_FEATURE_ZOOM_LANDSCAPE, CAMERA_FEATURES_ALL);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_ROTATE_INTERACT:
		GGame::g_game->MyInterface()->Limits.Clear();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_ROTATE, CAMERA_FEATURES_ALL);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_ROTATE_INTERACT_AND_ZOOM:
		GGame::g_game->MyInterface()->Limits.Clear();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_ROTATE | CAMERA_FEATURE_ZOOM | CAMERA_FEATURE_ZOOM_LANDSCAPE,
		                                 CAMERA_FEATURES_ALL);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_HAND_MOVE:
		GGame::g_game->MyInterface()->Limits.SetOnlyInteractWithHighlights();
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURES_NONE, CAMERA_FEATURES_ALL);
		GGame::g_game->control_map->CameraControlEnabled = false;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_HAND_INTERACTION:
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURES_NONE, CAMERA_FEATURES_ALL);
		GGame::g_game->control_map->CameraControlEnabled = false;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_ROTATE_AND_DRAG:
		GGame::g_game->MyInterface()->Limits.SetOnlyInteractWithHighlights();
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_ROTATE | CAMERA_FEATURE_MOVE, CAMERA_FEATURES_ALL);
		CameraHelp::SetAutoPitch(SCRIPT_AUTO_PITCH, SCRIPT_AUTO_PITCH_HEIGHT, true);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_PITCH:
		GGame::g_game->MyInterface()->Limits.SetOnlyInteractWithHighlights();
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_PITCH, CAMERA_FEATURES_ALL);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_GRAB_DOUBLE_CLICK_AND_ROTATE:
		GGame::g_game->MyInterface()->Limits.SetOnlyInteractWithHighlights();
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_ROTATE | CAMERA_FEATURE_MOVE | CAMERA_FEATURE_DOUBLE_CLICK,
		                                 CAMERA_FEATURES_ALL);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_GRAB_DOUBLE_CLICK_AND_ROTATE_AND_PITCH:
		GGame::g_game->MyInterface()->Limits.SetOnlyInteractWithHighlights();
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_PITCH | CAMERA_FEATURE_ROTATE | CAMERA_FEATURE_MOVE |
		                                     CAMERA_FEATURE_DOUBLE_CLICK,
		                                 CAMERA_FEATURES_ALL);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	case SCRIPT_INTERFACE_LEVEL_JUST_GRAB_DOUBLE_CLICK_AND_ROTATE_PITCH_AND_ZOOM:
		GGame::g_game->MyInterface()->Limits.SetOnlyInteractWithHighlights();
		GGame::g_game->MyInterface()->Limits.SetNoEmptyHandApply();
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURE_PITCH | CAMERA_FEATURE_ROTATE | CAMERA_FEATURE_ZOOM |
		                                     CAMERA_FEATURE_MOVE | CAMERA_FEATURE_DOUBLE_CLICK |
		                                     CAMERA_FEATURE_ZOOM_LANDSCAPE,
		                                 CAMERA_FEATURES_ALL);
		GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
		GGame::g_game->control_map->CameraControlEnabled = true;
		GGame::g_game->control_map->NormalInterface = false;
		break;
	default:
		ScriptErrorMessage(LHSPrintf("Unexpected interaction = %d", level));
		break;
	}
}

void GScript::GetEventsPerSecond()
{
	HELP_EVENT_TYPE type = (HELP_EVENT_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(type > HELP_EVENT_TYPE_0 && type < _HELP_EVENT_TYPE_COUNT, "Invalid event");
	bool32_t valid = type > HELP_EVENT_TYPE_0 && type < _HELP_EVENT_TYPE_COUNT;
	if (!valid)
	{
		g_scriptDLL->FLOAT_PUSH(0.0f);
		return;
	}
	g_scriptDLL->FLOAT_PUSH(GGame::g_game->help_profile->GetTriggerPerSecond(type));
}

void GScript::GetEventTimeSince()
{
	HELP_EVENT_TYPE type = (HELP_EVENT_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(type > HELP_EVENT_TYPE_0 && type < _HELP_EVENT_TYPE_COUNT, "Invalid event");
	bool32_t valid = type > HELP_EVENT_TYPE_0 && type < _HELP_EVENT_TYPE_COUNT;
	if (!valid)
	{
		g_scriptDLL->FLOAT_PUSH(0.0f);
		return;
	}
	g_scriptDLL->FLOAT_PUSH(GGame::g_game->help_profile->GetTimeSinceTrigger(type));
}

void GScript::GetTotalEvents()
{
	HELP_EVENT_TYPE type = (HELP_EVENT_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(type > HELP_EVENT_TYPE_0 && type < _HELP_EVENT_TYPE_COUNT, "Invalid event");
	bool32_t valid = type > HELP_EVENT_TYPE_0 && type < _HELP_EVENT_TYPE_COUNT;
	if (!valid)
	{
		g_scriptDLL->FLOAT_PUSH(0.0f);
		return;
	}
	g_scriptDLL->FLOAT_PUSH((float)GGame::g_game->help_profile->GetTriggerTotal(type));
}

void GScript::SetCitadelInteract()
{
	GGame::g_game->script->CitadelInteract = g_scriptDLL->ULONG_POP();
}

void GScript::GameWithinRotation()
{
	g_scriptDLL->PUSH((void*)ActiveTricons, VMType_BOOLEAN);
}

void GScript::ScriptKeyDown()
{
	LH_KEY key = (LH_KEY)g_scriptDLL->ULONG_POP();
	g_scriptDLL->PUSH((void*)LHSys::GetKeyboard().IsKeyDown(key), VMType_BOOLEAN);
}

void GScript::StartImmersion()
{
	IMMERSION_EFFECT_TYPE type = (IMMERSION_EFFECT_TYPE)g_scriptDLL->ULONG_POP();
	GGame::g_game->MyInterface()->StartImmersion(type, IMM_EFFECT_DONT_CHANGE);
}

void GScript::StopImmersion()
{
	IMMERSION_EFFECT_TYPE type = (IMMERSION_EFFECT_TYPE)g_scriptDLL->ULONG_POP();
	GGame::g_game->MyInterface()->StopImmersion(type);
}

void GScript::StopAllImmersion()
{
	GGame::g_game->MyInterface()->StopAllImmersion();
}

#ifdef VERSION_BW1WCI
void GScript::SetObjectInPlayerHand()
{
	GPlayer* player =
		GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((unsigned long)g_scriptDLL->FLOAT_POP()));
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsObject())
	{
		GInterface* playerInterface = GGame::g_game->GetPlayerInterfaceFromReal(player->player_number);
		playerInterface->GetStatus()->AddToCurrentHandArray((Object*)thing);
	}
}

void GScript::GetMousePercentageAcross()
{
	GInterface* playerInterface = GGame::g_game->MyInterface();
	float       width = (float)LHSys::GetScreen().Width();
	g_scriptDLL->FLOAT_PUSH((float)playerInterface->LocalScreenCursorXY.X() / width);
}

void GScript::GetMousePercentageDown()
{
	GInterface* playerInterface = GGame::g_game->MyInterface();
	float       height = (float)LHSys::GetScreen().Height();
	g_scriptDLL->FLOAT_PUSH((float)playerInterface->LocalScreenCursorXY.Y() / height);
}

void GScript::MouseButtonDown()
{
	if (g_scriptDLL->ULONG_POP())
	{
		g_scriptDLL->PUSH((void*)(LHSys::GetMouse().Buttons & LH_MOUSE_BUTTON_LEFT_DOWN), VMType_BOOLEAN);
	}
	else
	{
		g_scriptDLL->PUSH((void*)(LHSys::GetMouse().Buttons & LH_MOUSE_BUTTON_RIGHT_DOWN), VMType_BOOLEAN);
	}
}
#endif
