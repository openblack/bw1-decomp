#include "BindableAction.h"

#include <chlasm/LHKeyBoard.h>              /* For KB_NONE */
#include <Lionhead/LHLib/ver5.0/LHKey.h>    /* For LH_MOD_ALT */
#include <Lionhead/LHLib/ver5.0/LHMouse.h>  /* For LH_MOUSE_BUTTON */
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys::TheSystem */

#include "alexmfc.h"          /* For SetupBox::Showing, SetupThing */
#include "ControlMap.h"       /* For ControlMap */
#include "Game.h"             /* For GGame::g_game */
#include "Interface.h"        /* For GInterface */
#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */
#include "Temple.h"           /* For Temple::ProcessMouse */
#if defined(VERSION_BW1W130)
#include <P5/P5dll.h>    /* For P5_INDEX */
#include <P5/P5Bend.h>   /* For nP5ClickEdge, bP5ClickLevel */
#include <P5/P5Motion.h> /* For nXPos, nYPos */
#endif

void CMouse::ProcessPosition()
{
#if defined(VERSION_BW1W130)
	LHCoord pos;
	if (LHSys::TheSystem.GloveActive)
	{
		pos.Set(nXPos, nYPos);
	}
	else
	{
		pos = LHCoord(LHSys::TheSystem.mouse.Pos().X(), LHSys::TheSystem.mouse.Pos().Y());
	}
#else
	LHCoord pos(LHSys::TheSystem.mouse.Pos().X(), LHSys::TheSystem.mouse.Pos().Y());
#endif
	GGame::g_game->MyInterface()->SendMessageA(INTERFACE_MESSAGE_TYPES_0, &pos);
}

void CMouse::ProcessButtons()
{
	if (LHSys::TheSystem.keyboard.ModifierFlags & LH_MOD_ALT)
	{
		return;
	}
	if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_LEFT_UP)
	{
		SetupThing::RightClickCount++;
	}
	if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_RIGHT_UP)
	{
		SetupThing::RightClickCount++;
	}
	if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_LEFT_DOWN)
	{
		SetupThing::LeftClickCount++;
		if (GGame::g_game->ProcessBindableKeys(KB_NONE, KB_NONE, 1) == true)
		{
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOWN;
			return;
		}
	}
	if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_RIGHT_DOWN)
	{
		SetupThing::LeftClickCount++;
		if (GGame::g_game->ProcessBindableKeys(KB_NONE, KB_NONE, 5) == true)
		{
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOWN;
			return;
		}
	}
	if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_MIDDLE_DOWN)
	{
		if (GGame::g_game->ProcessBindableKeys(KB_NONE, KB_NONE, 2) == true)
		{
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_MIDDLE_DOWN;
			return;
		}
	}
	if (LHSys::GetMouse().MouseWheelAccum != 0)
	{
		if (LHSys::GetMouse().MouseWheelAccum < 0)
		{
			if (GGame::g_game->ProcessBindableKeys(KB_NONE, KB_NONE, 4) == true)
			{
				ControlMap::MouseWheelDelta += LHSys::GetMouse().MouseWheelAccum;
				LHSys::GetMouse().MouseWheelAccum = 0;
				return;
			}
		}
		else
		{
			if (GGame::g_game->ProcessBindableKeys(KB_NONE, KB_NONE, 3) == true)
			{
				ControlMap::MouseWheelDelta += LHSys::GetMouse().MouseWheelAccum;
				LHSys::GetMouse().MouseWheelAccum = 0;
				return;
			}
		}
	}
	if (SetupBox::Showing)
	{
		if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
		{
#if defined(VERSION_BW1W130)
			if (LHSys::TheSystem.GloveActive)
			{
				GGame::g_game->temple->ProcessMouse(LHCoord(nXPos, nYPos), INTERFACE_MESSAGE_TYPES_NO_BUTTON_PRESSED);
			}
			else
#endif
			{
				GInterface* iface = GGame::g_game->MyInterface();
				GGame::g_game->temple->ProcessMouse(iface->LocalScreenCursorXY,
				                                    INTERFACE_MESSAGE_TYPES_NO_BUTTON_PRESSED);
			}
		}
#if defined(VERSION_BW1W130)
		if (LHSys::TheSystem.GloveActive && nP5ClickEdge[P5_INDEX] == 1 && !bP5ClickLevel[P5_MIDDLE] &&
		    !bP5ClickLevel[P5_RING] && !bP5ClickLevel[P5_PINKY])
		{
			static int           clicks = 0;
			static unsigned long firstClickTime = 0;
			if (clicks == 0)
			{
				firstClickTime = timeGetTime();
			}
			else if (clicks == 1)
			{
				float elapsed = (timeGetTime() - firstClickTime) / 1000.0f;
				if (elapsed < 0.2f)
				{
					return;
				}
				if (elapsed < 0.9f)
				{
					SetupThing::DoubleClicked |= true;
					SetupThing::AnyDoubleClicked |= true;
					LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOUBLE_CLICK;
				}
				clicks = 0;
				return;
			}
			clicks++;
		}
#endif
		if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_LEFT_DOUBLE_CLICK)
		{
			SetupThing::DoubleClicked |= true;
			SetupThing::AnyDoubleClicked |= true;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOUBLE_CLICK;
			return;
		}
		if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_RIGHT_DOUBLE_CLICK)
		{
			SetupThing::DoubleClicked |= true;
			SetupThing::AnyDoubleClicked |= true;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOUBLE_CLICK;
			return;
		}
	}
	else
	{
		bool32_t handled = false;
		if (GGame::g_game->control_map->IsSelectButtonDoubleClicked())
		{
			ProcessMoveButtonDoubleClick();
			handled |= true;
		}
		if (GGame::g_game->control_map->IsSelectButtonClicked())
		{
			ProcessMoveButtonPressed();
			handled |= true;
		}
		if (GGame::g_game->control_map->IsSelectButtonReleased())
		{
			ProcessMoveButtonReleased();
			handled |= true;
		}
		if (GGame::g_game->control_map->IsApplyButtonDoubleClicked())
		{
			ProcessApplyButtonDoubleClick();
			handled |= true;
		}
		if (GGame::g_game->control_map->IsApplyButtonClicked())
		{
			ProcessApplyButtonPressed();
			handled |= true;
		}
		if (GGame::g_game->control_map->IsApplyButtonReleased())
		{
			ProcessApplyButtonReleased();
			handled |= true;
		}
		if (!handled)
		{
			ProcessNoButtonPressed();
		}
	}
	LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOWN;
	LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOWN;
	LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOUBLE_CLICK;
	LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOUBLE_CLICK;
	LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_UP;
	LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_UP;
}

void CMouse::ProcessMoveButtonPressed()
{
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
#if defined(VERSION_BW1W130)
		if (LHSys::TheSystem.GloveActive)
		{
			GGame::g_game->temple->ProcessMouse(LHCoord(nXPos, nYPos), INTERFACE_MESSAGE_TYPES_MOVE_BUTTON_PRESSED);
		}
		else
#endif
		{
			GInterface* iface = GGame::g_game->MyInterface();
			GGame::g_game->temple->ProcessMouse(iface->LocalScreenCursorXY,
			                                    INTERFACE_MESSAGE_TYPES_MOVE_BUTTON_PRESSED);
		}
	}
	else
	{
		GGame::g_game->MyInterface()->SendMessageA(INTERFACE_MESSAGE_TYPES_MOVE_BUTTON_PRESSED);
	}
}

void CMouse::ProcessApplyButtonPressed()
{
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
#if defined(VERSION_BW1W130)
		if (LHSys::TheSystem.GloveActive)
		{
			GGame::g_game->temple->ProcessMouse(LHCoord(nXPos, nYPos), INTERFACE_MESSAGE_TYPES_APPLY_BUTTON_PRESSED);
		}
		else
#endif
		{
			GInterface* iface = GGame::g_game->MyInterface();
			GGame::g_game->temple->ProcessMouse(iface->LocalScreenCursorXY,
			                                    INTERFACE_MESSAGE_TYPES_APPLY_BUTTON_PRESSED);
		}
	}
	else
	{
		GGame::g_game->MyInterface()->SendMessageA(INTERFACE_MESSAGE_TYPES_APPLY_BUTTON_PRESSED);
	}
}

void CMouse::ProcessMoveButtonDoubleClick()
{
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
#if defined(VERSION_BW1W130)
		if (LHSys::TheSystem.GloveActive)
		{
			GGame::g_game->temple->ProcessMouse(LHCoord(nXPos, nYPos),
			                                    INTERFACE_MESSAGE_TYPES_MOVE_BUTTON_DOUBLE_CLICK);
		}
		else
#endif
		{
			GInterface* iface = GGame::g_game->MyInterface();
			GGame::g_game->temple->ProcessMouse(iface->LocalScreenCursorXY,
			                                    INTERFACE_MESSAGE_TYPES_MOVE_BUTTON_DOUBLE_CLICK);
		}
	}
	else
	{
		GGame::g_game->MyInterface()->SendMessageA(INTERFACE_MESSAGE_TYPES_MOVE_BUTTON_DOUBLE_CLICK);
	}
}

void CMouse::ProcessApplyButtonDoubleClick()
{
	if (GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		GGame::g_game->MyInterface()->SendMessageA(INTERFACE_MESSAGE_TYPES_APPLY_BUTTON_DOUBLE_CLICK);
	}
}

void CMouse::ProcessMoveButtonReleased()
{
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
#if defined(VERSION_BW1W130)
		if (LHSys::TheSystem.GloveActive)
		{
			GGame::g_game->temple->ProcessMouse(LHCoord(nXPos, nYPos), INTERFACE_MESSAGE_TYPES_MOVE_BUTTON_RELEASED);
		}
		else
#endif
		{
			GInterface* iface = GGame::g_game->MyInterface();
			GGame::g_game->temple->ProcessMouse(iface->LocalScreenCursorXY,
			                                    INTERFACE_MESSAGE_TYPES_MOVE_BUTTON_RELEASED);
		}
	}
	else
	{
		GGame::g_game->MyInterface()->SendMessageA(INTERFACE_MESSAGE_TYPES_MOVE_BUTTON_RELEASED);
	}
}

void CMouse::ProcessApplyButtonReleased()
{
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
#if defined(VERSION_BW1W130)
		if (LHSys::TheSystem.GloveActive)
		{
			GGame::g_game->temple->ProcessMouse(LHCoord(nXPos, nYPos), INTERFACE_MESSAGE_TYPES_APPLY_BUTTON_RELEASED);
		}
		else
#endif
		{
			GInterface* iface = GGame::g_game->MyInterface();
			GGame::g_game->temple->ProcessMouse(iface->LocalScreenCursorXY,
			                                    INTERFACE_MESSAGE_TYPES_APPLY_BUTTON_RELEASED);
		}
	}
	else
	{
		GGame::g_game->MyInterface()->SendMessageA(INTERFACE_MESSAGE_TYPES_APPLY_BUTTON_RELEASED);
	}
}

void CMouse::ProcessNoButtonPressed()
{
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
#if defined(VERSION_BW1W130)
		if (LHSys::TheSystem.GloveActive)
		{
			GGame::g_game->temple->ProcessMouse(LHCoord(nXPos, nYPos), INTERFACE_MESSAGE_TYPES_NO_BUTTON_PRESSED);
		}
		else
#endif
		{
			GInterface* iface = GGame::g_game->MyInterface();
			GGame::g_game->temple->ProcessMouse(iface->LocalScreenCursorXY, INTERFACE_MESSAGE_TYPES_NO_BUTTON_PRESSED);
		}
	}
}
