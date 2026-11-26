#include "ControlMap.h"

#include "ColourConstants.h" /* For White */

#include <stdio.h>   /* For sprintf */
#include <string.h>  /* For memset */
#include <wchar.h>   /* For wcscat, wcscpy, wcsncpy */
#include <windows.h> /* For GetKeyNameTextA, GetKeyNameTextW */

#include <Lionhead/LH3DLib/development/LH3DText.h>    /* For CHAR2WCHAR */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>           /* For LH_OK */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>           /* For LHSys */
#include <Lionhead/LHLib/ver5.0/LHTimer.inl>          /* For LHTimer */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>          /* For UNICODE_sprintf */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h> /* For LHNetGetCurrentProfileUlong */

#include "Game.h"
#include "HelpText.h"
#include "alexmfc.h" /* For SetupBox, SetupThing */

LHCoord ControlMap::MouseDelta;
int     ControlMap::MouseWheelDelta = 0;

ControlKey::ControlKey()
{
	key = KB_NONE;
	keymod = KB_NONE;
}

ControlKey::~ControlKey() {}

void GetKeyNameText_(long key_data, wchar_t* out_text, int length)
{
	out_text[0] = L'\0';
	GetKeyNameTextW(key_data, out_text, length);
	if (out_text[0] == L'\0')
	{
		char name[0x21];
		memset(name, 0, sizeof(name));
		GetKeyNameTextA(key_data, name, min(length, (int)sizeof(name) - 1));
		wcsncpy(out_text, CHAR2WCHAR(name), length);
	}
}

void ControlKey::SetKey(LH_KEY key, LH_KEY keymod)
{
	char name[0x80];

	this->key = key;
	this->keymod = keymod;
	KeymodDisplayText[0] = L'\0';
	KeyDisplayText[0] = L'\0';
	long keyData = CONTROL_KEY_NAME_DATA(key);
	long keymodData = CONTROL_KEY_NAME_DATA(keymod);
	memset(KeyDisplayText, 0, sizeof(KeyDisplayText));
	memset(KeymodDisplayText, 0, sizeof(KeymodDisplayText));
	GetKeyNameText_(keyData, KeyDisplayText, CONTROL_KEY_NAME_LENGTH);
	GetKeyNameText_(keymodData, KeymodDisplayText, CONTROL_KEY_NAME_LENGTH);
	if (KeyDisplayText[0] == L'\0')
	{
		GetKeyNameTextA(keyData, name, CONTROL_KEY_NAME_LENGTH);
		wcscpy(KeyDisplayText, CHAR2WCHAR(name));
	}
	if (KeymodDisplayText[0] == L'\0')
	{
		GetKeyNameTextA(keymodData, name, CONTROL_KEY_NAME_LENGTH);
		wcscpy(KeymodDisplayText, CHAR2WCHAR(name));
	}
}

bool32_t ControlKey::IsAvailable()
{
	return key != KB_NONE;
}

void ControlKey::GetDisplayText(wchar_t* out_text)
{
	if (key != KB_NONE)
	{
		if (keymod != KB_NONE)
		{
			UNICODE_sprintf(out_text, L"%s + %s", KeymodDisplayText, KeyDisplayText);
		}
		else
		{
			UNICODE_sprintf(out_text, L"%s", KeyDisplayText);
		}
	}
}

ControlMouse::ControlMouse()
{
	code = MOUSE_CONTROL_BUTTON_NONE;
}

ControlMouse::~ControlMouse() {}

void ControlMouse::SetMouseButton(MOUSE_CONTROL_BUTTON button)
{
	code = button;
	switch (button)
	{
	case MOUSE_CONTROL_BUTTON_NONE:
		DisplayText[0] = L'\0';
		break;
	case MOUSE_CONTROL_BUTTON_LEFT:
		wcscpy(DisplayText, HelpTextData::GetTextL(HELP_TEXT_ACTIONS_LEFTMOUSEBUTTON));
		break;
	case MOUSE_CONTROL_BUTTON_RIGHT:
		wcscpy(DisplayText, HelpTextData::GetTextL(HELP_TEXT_ACTIONS_RIGHTMOUSEBUTTON));
		break;
	case MOUSE_CONTROL_BUTTON_MIDDLE:
		wcscpy(DisplayText, HelpTextData::GetTextL(HELP_TEXT_ACTIONS_MIDDLEMOUSEBUTTON));
		break;
	case MOUSE_CONTROL_BUTTON_WHEEL_UP:
		wcscpy(DisplayText, HelpTextData::GetTextL(HELP_TEXT_ACTIONS_WHEEL_UP));
		break;
	case MOUSE_CONTROL_BUTTON_WHEEL_DOWN:
		wcscpy(DisplayText, HelpTextData::GetTextL(HELP_TEXT_ACTIONS_WHEEL_DOWN));
		break;
	}
}

bool32_t ControlMouse::IsAvailable()
{
	return code != MOUSE_CONTROL_BUTTON_NONE;
}

void ControlMouse::GetDisplayText(wchar_t* out_text)
{
	if (code != MOUSE_CONTROL_BUTTON_NONE)
	{
		UNICODE_sprintf(out_text, L"     (%s)", DisplayText);
	}
}

BindableAction::BindableAction()
{
	wcscpy(name, HelpTextData::GetTextL(HELP_TEXT_DIALOG_ADDITION_103));
}

BindableAction::~BindableAction() {}

void BindableAction::SetName(wchar_t* new_name)
{
	wcscpy(name, new_name);
}

void BindableAction::SetKey(const ControlKey& new_key)
{
	key = new_key;
}

void BindableAction::GetName(wchar_t* out_text)
{
	wcscpy(out_text, name);
}

void BindableAction::GetKeyText(wchar_t* out_text)
{
	wchar_t text[0x40];

	if (key.IsAvailable())
	{
		key.GetDisplayText(text);
		UNICODE_sprintf(out_text, L"%s", text);
	}
}

void BindableAction::GetMouseText(wchar_t* out_text)
{
	wchar_t text[0x40];

	text[0] = L'\0';
	mouse.GetDisplayText(text);
	wcscpy(out_text, text);
}

bool32_t BindableAction::GetRidOfKey(LH_KEY key, LH_KEY keymod)
{
#ifdef VERSION_BW1WCI
	if (CompareKeys(this->key.key, key) && CompareKeys(this->key.keymod, keymod))
#else
	if (this->key.key == key && this->key.keymod == keymod)
#endif
	{
		this->key.SetKey(KB_NONE, KB_NONE);
		return true;
	}
	return false;
}

bool32_t BindableAction::GetRidOfMouse(ControlMouse::MOUSE_CONTROL_BUTTON button)
{
	if (mouse.code == button)
	{
		mouse.SetMouseButton(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
		return true;
	}
	return false;
}

bool32_t BindableAction::CompareKeys(LH_KEY key, LH_KEY other_key)
{
	if (key == other_key)
	{
		return true;
	}
	if ((key == KB_LSHIFT || key == KB_RSHIFT) && (other_key == KB_LSHIFT || other_key == KB_RSHIFT))
	{
		return true;
	}
	if ((key == KB_LALT || key == KB_RALT) && (other_key == KB_LALT || other_key == KB_RALT))
	{
		return true;
	}
	if ((key == KB_LCTRL || key == KB_RCTRL) && (other_key == KB_LCTRL || other_key == KB_RCTRL))
	{
		return true;
	}
	return false;
}

bool32_t BindableAction::IsKeyDown(LH_KEY key)
{
	if (key == KB_LSHIFT || key == KB_RSHIFT)
	{
		if (LHSys::GetKeyboard().IsKeyDown(KB_LSHIFT) || LHSys::GetKeyboard().IsKeyDown(KB_RSHIFT))
		{
			return true;
		}
	}
	if (key == KB_LALT || key == KB_RALT)
	{
		if (LHSys::GetKeyboard().IsKeyDown(KB_LALT) || LHSys::GetKeyboard().IsKeyDown(KB_RALT))
		{
			return true;
		}
	}
	if (key == KB_LCTRL || key == KB_RCTRL)
	{
		if (LHSys::GetKeyboard().IsKeyDown(KB_LCTRL) || LHSys::GetKeyboard().IsKeyDown(KB_RCTRL))
		{
			return true;
		}
	}
	return LHSys::GetKeyboard().IsKeyDown(key) != 0;
}

bool32_t BindableAction::IsKeyBeingUsed(LH_KEY key)
{
	return this->key.key == key;
}

bool32_t BindableAction::IsMouseBeingUsed(ControlMouse::MOUSE_CONTROL_BUTTON button)
{
	return mouse.code == button;
}

bool32_t BindableAction::IsKeyBeingPressed(LH_KEY key, LH_KEY keymod)
{
	LH_KEY primary = this->key.key;
	LH_KEY modifier = this->key.keymod;
	if (CompareKeys(primary, key) && CompareKeys(modifier, keymod))
	{
		return true;
	}
	return false;
}

bool32_t BindableAction::IsKeyBeingPressed()
{
	LH_KEY primary = key.key;
	LH_KEY modifier = key.keymod;
	if (primary != KB_NONE && IsKeyDown(primary) && (modifier == KB_NONE || IsKeyDown(modifier)))
	{
		return true;
	}
	return false;
}

bool32_t BindableAction::IsMouseBeingPressed()
{
	switch (mouse.code)
	{
	case ControlMouse::MOUSE_CONTROL_BUTTON_LEFT:
		if (LHSys::GetMouse().Buttons & LH_MOUSE_BUTTON_LEFT_DOWN)
		{
			return true;
		}
		break;
	case ControlMouse::MOUSE_CONTROL_BUTTON_RIGHT:
		if (LHSys::GetMouse().Buttons & LH_MOUSE_BUTTON_RIGHT_DOWN)
		{
			return true;
		}
		break;
	case ControlMouse::MOUSE_CONTROL_BUTTON_MIDDLE:
		if (LHSys::GetMouse().Buttons & LH_MOUSE_BUTTON_MIDDLE_DOWN)
		{
			return true;
		}
		break;
	case ControlMouse::MOUSE_CONTROL_BUTTON_WHEEL_UP:
		if (LHSys::GetMouse().MouseWheelAccum > 0)
		{
			ControlMap::MouseWheelDelta += LHSys::GetMouse().MouseWheelAccum;
			LHSys::GetMouse().MouseWheelAccum = 0;
			return true;
		}
		break;
	case ControlMouse::MOUSE_CONTROL_BUTTON_WHEEL_DOWN:
		if (LHSys::GetMouse().MouseWheelAccum < 0)
		{
			ControlMap::MouseWheelDelta += LHSys::GetMouse().MouseWheelAccum;
			LHSys::GetMouse().MouseWheelAccum = 0;
			return true;
		}
		break;
	}
	return false;
}

bool32_t BindableAction::IsMouseButtonClicked()
{
	switch (mouse.code)
	{
	case ControlMouse::MOUSE_CONTROL_BUTTON_RIGHT:
		if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_RIGHT_DOWN)
		{
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOWN;
			return true;
		}
		break;
	case ControlMouse::MOUSE_CONTROL_BUTTON_MIDDLE:
		if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_MIDDLE_DOWN)
		{
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_MIDDLE_DOWN;
			return true;
		}
		break;
	case ControlMouse::MOUSE_CONTROL_BUTTON_LEFT:
		if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_LEFT_DOWN)
		{
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOWN;
			return true;
		}
		break;
	}
	return false;
}

bool32_t BindableAction::IsMouseButtonDoubleClicked()
{
	switch (mouse.code)
	{
	case ControlMouse::MOUSE_CONTROL_BUTTON_RIGHT:
		if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_RIGHT_DOUBLE_CLICK)
		{
			SetupThing::DoubleClicked |= true;
			SetupThing::AnyDoubleClicked |= true;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOUBLE_CLICK;
			return true;
		}
		break;
	case ControlMouse::MOUSE_CONTROL_BUTTON_MIDDLE:
		return false;
	case ControlMouse::MOUSE_CONTROL_BUTTON_LEFT:
		if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_LEFT_DOUBLE_CLICK)
		{
			SetupThing::DoubleClicked |= true;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOUBLE_CLICK;
			return true;
		}
		break;
	}
	return false;
}

bool32_t BindableAction::IsMouseButtonReleased()
{
	switch (mouse.code)
	{
	case ControlMouse::MOUSE_CONTROL_BUTTON_RIGHT:
		if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_RIGHT_UP)
		{
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_UP;
			return true;
		}
		break;
	case ControlMouse::MOUSE_CONTROL_BUTTON_MIDDLE:
		if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_MIDDLE_UP)
		{
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_MIDDLE_UP;
			return true;
		}
		break;
	case ControlMouse::MOUSE_CONTROL_BUTTON_LEFT:
		if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_LEFT_UP)
		{
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_UP;
			return true;
		}
		break;
	}
	return false;
}

ControlMap::ControlMap()
{
	DoubleClickTime = CONTROL_MAP_DOUBLE_CLICK_TIME;
	memset(BindableActionStates, 0, sizeof(BindableActionStates));
	ApplyButtonDownByMouse = false;
	SelectButtonDownByMouse = false;
	ApplyButtonDown = false;
	SelectButtonDown = false;
	SelectButtonDoubleClicked = false;
	ApplyButtonDoubleClicked = false;
	CameraControlEnabled = true;
	NormalInterface = true;
}

ControlMap::~ControlMap() {}

bool32_t ControlMap::IsActionDisabled(int action)
{
	if (!CameraControlEnabled)
	{
		switch (action)
		{
		case BINDABLE_ACTION_ZOOM_OUT:
		case BINDABLE_ACTION_ZOOM_IN:
		case BINDABLE_ACTION_ZOOM_ON:
		case BINDABLE_ACTION_MOVE_LEFT:
		case BINDABLE_ACTION_MOVE_RIGHT:
		case BINDABLE_ACTION_MOVE_FORWARDS:
		case BINDABLE_ACTION_MOVE_BACKWARDS:
		case BINDABLE_ACTION_TILT_UP:
		case BINDABLE_ACTION_TILT_DOWN:
		case BINDABLE_ACTION_ROTATE_LEFT:
		case BINDABLE_ACTION_ROTATE_RIGHT:
		case BINDABLE_ACTION_ROTATE_ON:
		case BINDABLE_ACTION_ROTATE_AROUND_MOUSE_ON:
		case BINDABLE_ACTION_ZOOM_TO_TEMPLE:
		case BINDABLE_ACTION_ZOOM_TO_CREATURE:
		case BINDABLE_ACTION_ZOOM_TO_REALM:
			return true;
		}
		return false;
	}
	if (!NormalInterface)
	{
		if (action >= BINDABLE_ACTION_ZOOM_TO_TEMPLE && action <= BINDABLE_ACTION_ZOOM_TO_REALM)
		{
			return true;
		}
	}
	return false;
}

bool32_t ControlMap::CanThisKeyBeAssigned(LH_KEY key)
{
	switch (key)
	{
	case KB_ESCAPE:
#ifdef VERSION_BW1WCI
	case KB_1:
	case KB_2:
	case KB_3:
	case KB_4:
	case KB_5:
	case KB_6:
	case KB_7:
	case KB_8:
	case KB_9:
	case KB_0:
#endif
	case KB_TAB:
	case KB_P:
	case KB_F1:
	case KB_F2:
	case KB_ENTER:
#ifdef VERSION_BW1WCI
	case KB_LWIN:
	case KB_RWIN:
	case KB_WAPP:
#endif
		return false;
	}
	return true;
}

void ControlMap::LoadDefaults()
{
	BindableActions[BINDABLE_ACTION_ACTION].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_APPLY));
	BindableActions[BINDABLE_ACTION_ACTION].key = ControlKey(KB_NONE, KB_NONE);
	BindableActions[BINDABLE_ACTION_ACTION].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_RIGHT);
	BindableActions[BINDABLE_ACTION_MOVE].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_SELECT));
	BindableActions[BINDABLE_ACTION_MOVE].key = ControlKey(KB_NONE, KB_NONE);
	BindableActions[BINDABLE_ACTION_MOVE].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_LEFT);
	BindableActions[BINDABLE_ACTION_HELP].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_HELP));
	BindableActions[BINDABLE_ACTION_HELP].key = ControlKey(KB_F1, KB_NONE);
	BindableActions[BINDABLE_ACTION_HELP].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_MOVE_LEFT].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_MOVELEFT));
	BindableActions[BINDABLE_ACTION_MOVE_LEFT].key = ControlKey(KB_LEFT, KB_NONE);
	BindableActions[BINDABLE_ACTION_MOVE_LEFT].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_MOVE_RIGHT].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_MOVERIGHT));
	BindableActions[BINDABLE_ACTION_MOVE_RIGHT].key = ControlKey(KB_RIGHT, KB_NONE);
	BindableActions[BINDABLE_ACTION_MOVE_RIGHT].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_MOVE_FORWARDS].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_MOVEFORWARD));
	BindableActions[BINDABLE_ACTION_MOVE_FORWARDS].key = ControlKey(KB_UP, KB_NONE);
	BindableActions[BINDABLE_ACTION_MOVE_FORWARDS].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_MOVE_BACKWARDS].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_MOVEBACKWARD));
	BindableActions[BINDABLE_ACTION_MOVE_BACKWARDS].key = ControlKey(KB_DOWN, KB_NONE);
	BindableActions[BINDABLE_ACTION_MOVE_BACKWARDS].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_OUT].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMOUT));
	BindableActions[BINDABLE_ACTION_ZOOM_OUT].key = ControlKey(KB_NONE, KB_NONE);
	if (LHSys::GetMouse().GetMouseWheelPresent())
	{
		BindableActions[BINDABLE_ACTION_ZOOM_OUT].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_WHEEL_DOWN);
	}
	else
	{
		BindableActions[BINDABLE_ACTION_ZOOM_OUT].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	}
	BindableActions[BINDABLE_ACTION_ZOOM_IN].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMIN));
	BindableActions[BINDABLE_ACTION_ZOOM_IN].key = ControlKey(KB_NONE, KB_NONE);
	if (LHSys::GetMouse().GetMouseWheelPresent())
	{
		BindableActions[BINDABLE_ACTION_ZOOM_IN].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_WHEEL_UP);
	}
	else
	{
		BindableActions[BINDABLE_ACTION_ZOOM_IN].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	}
	BindableActions[BINDABLE_ACTION_ZOOM_ON].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMON));
	BindableActions[BINDABLE_ACTION_ZOOM_ON].key = ControlKey(KB_RCTRL, KB_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_ON].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_TILT_UP].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_TILTUP));
	BindableActions[BINDABLE_ACTION_TILT_UP].key = ControlKey(KB_A, KB_NONE);
	BindableActions[BINDABLE_ACTION_TILT_UP].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_TILT_DOWN].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_TILTDOWN));
	BindableActions[BINDABLE_ACTION_TILT_DOWN].key = ControlKey(KB_Q, KB_NONE);
	BindableActions[BINDABLE_ACTION_TILT_DOWN].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ROTATE_LEFT].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ROTATELEFT));
	BindableActions[BINDABLE_ACTION_ROTATE_LEFT].key = ControlKey(KB_Z, KB_NONE);
	BindableActions[BINDABLE_ACTION_ROTATE_LEFT].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ROTATE_RIGHT].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ROTATERIGHT));
	BindableActions[BINDABLE_ACTION_ROTATE_RIGHT].key = ControlKey(KB_U, KB_NONE);
	BindableActions[BINDABLE_ACTION_ROTATE_RIGHT].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ROTATE_ON].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_TILTROTATEON));
	BindableActions[BINDABLE_ACTION_ROTATE_ON].key = ControlKey(KB_RSHIFT, KB_NONE);
	BindableActions[BINDABLE_ACTION_ROTATE_ON].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ROTATE_AROUND_MOUSE_ON].SetName(
		HelpTextData::GetTextL(HELP_TEXT_ACTIONS_TILTROTATEAROUNDMOUSE));
	if (LHSys::GetMouse().GetMouseWheelPresent())
	{
		BindableActions[BINDABLE_ACTION_ROTATE_AROUND_MOUSE_ON].mouse =
			ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_MIDDLE);
		BindableActions[BINDABLE_ACTION_ROTATE_AROUND_MOUSE_ON].key = ControlKey(KB_NONE, KB_NONE);
	}
	else
	{
		BindableActions[BINDABLE_ACTION_ROTATE_AROUND_MOUSE_ON].mouse =
			ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
		BindableActions[BINDABLE_ACTION_ROTATE_AROUND_MOUSE_ON].key = ControlKey(KB_0, KB_NONE);
	}
	BindableActions[BINDABLE_ACTION_ZOOM_TO_TEMPLE].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMTO_CITADEL));
	BindableActions[BINDABLE_ACTION_ZOOM_TO_TEMPLE].key = ControlKey(KB_SPACE, KB_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_TEMPLE].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_CREATURE].SetName(
		HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMTO_CREATURE));
	BindableActions[BINDABLE_ACTION_ZOOM_TO_CREATURE].key = ControlKey(KB_C, KB_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_CREATURE].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_REALM].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMTO_REALM));
	BindableActions[BINDABLE_ACTION_ZOOM_TO_REALM].key = ControlKey(KB_F3, KB_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_REALM].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_INSIDE_TEMPLE].SetName(
		HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMTO_INSIDECITADEL));
	BindableActions[BINDABLE_ACTION_ZOOM_TO_INSIDE_TEMPLE].key = ControlKey(KB_F4, KB_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_INSIDE_TEMPLE].mouse =
		ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_CREATURE_ROOM].SetName(
		HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMTO_CREATUREROOM));
	BindableActions[BINDABLE_ACTION_ZOOM_TO_CREATURE_ROOM].key = ControlKey(KB_F5, KB_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_CREATURE_ROOM].mouse =
		ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_CHALLENGE_ROOM].SetName(
		HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMTO_CHALLENGEROOM));
	BindableActions[BINDABLE_ACTION_ZOOM_TO_CHALLENGE_ROOM].key = ControlKey(KB_F6, KB_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_CHALLENGE_ROOM].mouse =
		ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_SAVE_GAME_ROOM].SetName(
		HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMTO_SAVEGAMEROOM));
	BindableActions[BINDABLE_ACTION_ZOOM_TO_SAVE_GAME_ROOM].key = ControlKey(KB_F7, KB_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_SAVE_GAME_ROOM].mouse =
		ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_OPTIONS_ROOM].SetName(
		HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMTO_OPTIONSROOM));
	BindableActions[BINDABLE_ACTION_ZOOM_TO_OPTIONS_ROOM].key = ControlKey(KB_F8, KB_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_OPTIONS_ROOM].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_LIBRARY].SetName(
		HelpTextData::GetTextL(HELP_TEXT_ACTIONS_ZOOMTO_MULTIPLAYERROOM));
	BindableActions[BINDABLE_ACTION_ZOOM_TO_LIBRARY].key = ControlKey(KB_F9, KB_NONE);
	BindableActions[BINDABLE_ACTION_ZOOM_TO_LIBRARY].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_LEASH_UNLEASH_CREATURE].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_LEASH));
	BindableActions[BINDABLE_ACTION_LEASH_UNLEASH_CREATURE].key = ControlKey(KB_L, KB_NONE);
	BindableActions[BINDABLE_ACTION_LEASH_UNLEASH_CREATURE].mouse =
		ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_TALK].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_TALK));
	BindableActions[BINDABLE_ACTION_TALK].key = ControlKey(KB_T, KB_NONE);
	BindableActions[BINDABLE_ACTION_TALK].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_SHOW_VILLAGER_NAMES].SetName(
		HelpTextData::GetTextL(HELP_TEXT_ACTIONS_SHOWVILLAGERNAME));
	BindableActions[BINDABLE_ACTION_SHOW_VILLAGER_NAMES].key = ControlKey(KB_N, KB_NONE);
	BindableActions[BINDABLE_ACTION_SHOW_VILLAGER_NAMES].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_SHOW_VILLAGER_DETAILS].SetName(
		HelpTextData::GetTextL(HELP_TEXT_ACTIONS_SHOWVILLAGERDETAILS));
	BindableActions[BINDABLE_ACTION_SHOW_VILLAGER_DETAILS].key = ControlKey(KB_S, KB_NONE);
	BindableActions[BINDABLE_ACTION_SHOW_VILLAGER_DETAILS].mouse =
		ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_QUICK_SAVE].SetName(HelpTextData::GetTextL(HELP_TEXT_TOOLTIP_155));
	BindableActions[BINDABLE_ACTION_QUICK_SAVE].key = ControlKey(KB_S, KB_LCTRL);
	BindableActions[BINDABLE_ACTION_QUICK_SAVE].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_QUICK_LOAD].SetName(HelpTextData::GetTextL(HELP_TEXT_TOOLTIP_154));
	BindableActions[BINDABLE_ACTION_QUICK_LOAD].key = ControlKey(KB_L, KB_LCTRL);
	BindableActions[BINDABLE_ACTION_QUICK_LOAD].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_PREVIOUS_LEASH].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_PREVIOUS_LEASH));
	BindableActions[BINDABLE_ACTION_PREVIOUS_LEASH].key = ControlKey(KB_V, KB_NONE);
	BindableActions[BINDABLE_ACTION_PREVIOUS_LEASH].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
	BindableActions[BINDABLE_ACTION_NEXT_LEASH].SetName(HelpTextData::GetTextL(HELP_TEXT_ACTIONS_NEXT_LEASH));
	BindableActions[BINDABLE_ACTION_NEXT_LEASH].key = ControlKey(KB_B, KB_NONE);
	BindableActions[BINDABLE_ACTION_NEXT_LEASH].mouse = ControlMouse(ControlMouse::MOUSE_CONTROL_BUTTON_NONE);
}

void ControlMap::SetKey(unsigned long action, LH_KEY key, LH_KEY keymod)
{
	for (uint32_t i = 0; i < _BINDABLE_ACTION_SIZE; i++)
	{
		if (i != action)
		{
			BindableActions[i].GetRidOfKey(key, keymod);
		}
	}
	BindableActions[action].SetKey(ControlKey(key, keymod));
}

void ControlMap::SetMouseButton(unsigned long action, ControlMouse::MOUSE_CONTROL_BUTTON button)
{
	for (uint32_t i = 0; i < _BINDABLE_ACTION_SIZE; i++)
	{
		BindableActions[i].GetRidOfMouse(button);
	}
	BindableActions[action].mouse = ControlMouse(button);
}

void ControlMap::GetText(unsigned long action, wchar_t* out_text)
{
	wchar_t text[0x100];

	text[0] = L'\0';
	BindableActions[action].GetName(text);
	UNICODE_sprintf(out_text, L"%s : ", text);
	text[0] = L'\0';
	BindableActions[action].GetKeyText(text);
	wcscat(out_text, text);
	wcscat(out_text, L" ");
	text[0] = L'\0';
	BindableActions[action].GetMouseText(text);
	wcscat(out_text, text);
}

int ControlMap::GetActionFromKey(LH_KEY key)
{
	for (uint32_t i = 0; i < _BINDABLE_ACTION_SIZE; i++)
	{
		if (BindableActions[i].IsKeyBeingUsed(key))
		{
			return i;
		}
	}
	return BINDABLE_ACTION_NONE;
}

int ControlMap::GetActionFromKeys(LH_KEY key, LH_KEY keymod)
{
	for (uint32_t i = 0; i < _BINDABLE_ACTION_SIZE; i++)
	{
		if (BindableActions[i].IsKeyBeingPressed(key, keymod))
		{
			if (IsActionDisabled(i))
			{
				return BINDABLE_ACTION_NONE;
			}
			return i;
		}
	}
	return BINDABLE_ACTION_NONE;
}

int ControlMap::IsMouseBeingUsed(ControlMouse::MOUSE_CONTROL_BUTTON button)
{
	for (uint32_t i = 0; i < _BINDABLE_ACTION_SIZE; i++)
	{
		if (BindableActions[i].IsMouseBeingUsed(button))
		{
			if (IsActionDisabled(i))
			{
				return BINDABLE_ACTION_NONE;
			}
			return i;
		}
	}
	return BINDABLE_ACTION_NONE;
}

void ControlMap::ProcessActionsPerformed()
{
	for (uint32_t i = 0; i < _BINDABLE_ACTION_SIZE; i++)
	{
		if (BindableActions[i].IsKeyBeingPressed() || BindableActions[i].IsMouseBeingPressed())
		{
			BindableActionStates[i] = true;
		}
		else
		{
			BindableActionStates[i] = false;
		}
	}
}

bool32_t ControlMap::IsActionPerformed(BINDABLE_ACTIONS action)
{
	if (!IsActionDisabled(action) && BindableActionStates[action] && !SetupBox::WantKey)
	{
		return true;
	}
	return false;
}

bool32_t ControlMap::IsApplyButtonClicked()
{
	static LHTimer timer;

	if (BindableActions[BINDABLE_ACTION_ACTION].IsMouseButtonClicked() && !ApplyButtonDown)
	{
		ApplyButtonDownByMouse = true;
		ApplyButtonDown = true;
		return true;
	}
	if (BindableActions[BINDABLE_ACTION_ACTION].IsKeyBeingPressed() && !ApplyButtonDown)
	{
		if (timer.Running())
		{
			if (timer.MSeconds() < DoubleClickTime)
			{
				ApplyButtonDoubleClicked = true;
			}
			timer.Stop();
		}
		timer.Restart(0);
		ApplyButtonDownByMouse = false;
		ApplyButtonDown = true;
		return true;
	}
	return false;
}

bool32_t ControlMap::IsApplyButtonDoubleClicked()
{
	if (ApplyButtonDoubleClicked)
	{
		ApplyButtonDoubleClicked = false;
		return true;
	}
	if (BindableActions[BINDABLE_ACTION_ACTION].IsMouseButtonDoubleClicked())
	{
		ApplyButtonDown = true;
		return true;
	}
	return false;
}

bool32_t ControlMap::IsApplyButtonReleased()
{
	if (ApplyButtonDownByMouse)
	{
		if (ApplyButtonDown && BindableActions[BINDABLE_ACTION_ACTION].IsMouseButtonReleased())
		{
			ApplyButtonDown = false;
			return true;
		}
	}
	else if (ApplyButtonDown && !BindableActions[BINDABLE_ACTION_ACTION].IsKeyBeingPressed())
	{
		ApplyButtonDown = false;
		return true;
	}
	return false;
}

bool32_t ControlMap::IsSelectButtonClicked()
{
	static LHTimer timer;

	if (BindableActions[BINDABLE_ACTION_MOVE].IsMouseButtonClicked() && !SelectButtonDown)
	{
		SelectButtonDownByMouse = true;
		SelectButtonDown = true;
		return true;
	}
	if (BindableActions[BINDABLE_ACTION_MOVE].IsKeyBeingPressed() && !SelectButtonDown)
	{
		if (timer.Running())
		{
			if (timer.MSeconds() < DoubleClickTime)
			{
				SelectButtonDoubleClicked = true;
			}
			timer.Stop();
		}
		timer.Restart(0);
		SelectButtonDownByMouse = false;
		SelectButtonDown = true;
		return true;
	}
	return false;
}

bool32_t ControlMap::IsSelectButtonDoubleClicked()
{
	if (SelectButtonDoubleClicked)
	{
		SelectButtonDoubleClicked = false;
		return true;
	}
	if (BindableActions[BINDABLE_ACTION_MOVE].IsMouseButtonDoubleClicked())
	{
		SelectButtonDown = true;
		return true;
	}
	return false;
}

bool32_t ControlMap::IsSelectButtonReleased()
{
	if (SelectButtonDownByMouse)
	{
		if (SelectButtonDown && BindableActions[BINDABLE_ACTION_MOVE].IsMouseButtonReleased())
		{
			SelectButtonDown = false;
			return true;
		}
	}
	else if (SelectButtonDown && !BindableActions[BINDABLE_ACTION_MOVE].IsKeyBeingPressed())
	{
		SelectButtonDown = false;
		return true;
	}
	return false;
}

void ControlMap::GetNameForAction(BINDABLE_ACTIONS action, wchar_t* out_text)
{
	BindableActions[action].GetName(out_text);
}

void ControlMap::GetTextForAction(BINDABLE_ACTIONS action, wchar_t* out_text)
{
	ControlKey   key = BindableActions[action].GetPrimaryKey();
	ControlMouse mouse = BindableActions[action].GetMouseButton();
	wchar_t      text[0x40];

	if (key.IsAvailable())
	{
		key.GetDisplayText(text);
		UNICODE_sprintf(out_text, L"%s", text);
	}
	else if (mouse.IsAvailable())
	{
		mouse.GetDisplayText(text);
		UNICODE_sprintf(out_text, L"%s", text);
	}
	else
	{
		UNICODE_sprintf(out_text, L"%s", "NO KEY ASSIGNED!");
	}
}

void ControlMap::GetKeyTextForAction(BINDABLE_ACTIONS action, wchar_t* out_text)
{
	ControlKey key = BindableActions[action].GetPrimaryKey();

	if (key.IsAvailable())
	{
		key.GetDisplayText(out_text);
	}
	else
	{
		UNICODE_sprintf(out_text, L"%s", "NO KEY ASSIGNED!");
	}
}

void ControlMap::GetMouseTextForAction(BINDABLE_ACTIONS action, wchar_t* out_text)
{
	ControlMouse mouse = BindableActions[action].GetMouseButton();

	if (mouse.IsAvailable())
	{
		mouse.GetDisplayText(out_text);
	}
	else
	{
		UNICODE_sprintf(out_text, L"%s", "NO KEY ASSIGNED!");
	}
}

void ControlMap::LoadCurrentProfileKeys()
{
	LoadDefaults();
	for (uint32_t i = 0; i < _BINDABLE_ACTION_SIZE; i++)
	{
		char          name[0x100];
		unsigned long key;
		unsigned long keymod;
		unsigned long mouse;

		sprintf(name, "Key %i Primary", i);
		LH_RETURN keyResult = LHNetGetCurrentProfileUlong(name, &key);
		sprintf(name, "Key %i Primary Mod", i);
		LH_RETURN keymodResult = LHNetGetCurrentProfileUlong(name, &keymod);
		sprintf(name, "Key %i Mouse Button", i);
		LH_RETURN mouseResult = LHNetGetCurrentProfileUlong(name, &mouse);
		if (keyResult == LH_OK && keymodResult == LH_OK && mouseResult == LH_OK)
		{
			BindableActions[i].key = ControlKey((LH_KEY)key, (LH_KEY)keymod);
			BindableActions[i].mouse = ControlMouse((ControlMouse::MOUSE_CONTROL_BUTTON)mouse);
		}
	}
}

void ControlMap::SaveCurrentProfileKeys()
{
	for (uint32_t i = 0; i < _BINDABLE_ACTION_SIZE; i++)
	{
		char         name[0x100];
		ControlKey   key;
		ControlMouse mouse;

		key = BindableActions[i].GetPrimaryKey();
		mouse = BindableActions[i].GetMouseButton();
		sprintf(name, "Key %i Primary", i);
		LHNetSetCurrentProfileUlong(name, key.key);
		sprintf(name, "Key %i Primary Mod", i);
		LHNetSetCurrentProfileUlong(name, key.keymod);
		sprintf(name, "Key %i Mouse Button", i);
		LHNetSetCurrentProfileUlong(name, mouse.code);
	}
}

int ControlMap::GetClickTypeForAction(BINDABLE_ACTIONS action)
{
	ControlMouse mouse = BindableActions[action].GetMouseButton();

	if (mouse.code == ControlMouse::MOUSE_CONTROL_BUTTON_NONE && IsZoomAction(action))
	{
		return GGame::g_game->control_map->IsApplyAndSelectOnPrimaryButtons();
	}
	switch (mouse.code)
	{
	case ControlMouse::MOUSE_CONTROL_BUTTON_LEFT:
		return CH_CLICKTYPE_LEFT;
	case ControlMouse::MOUSE_CONTROL_BUTTON_RIGHT:
		return CH_CLICKTYPE_RIGHT;
	case ControlMouse::MOUSE_CONTROL_BUTTON_MIDDLE:
		return CH_CLICKTYPE_MIDDLE;
	case ControlMouse::MOUSE_CONTROL_BUTTON_WHEEL_UP:
		return CH_CLICKTYPE_WHEEL_UP;
	case ControlMouse::MOUSE_CONTROL_BUTTON_WHEEL_DOWN:
		return CH_CLICKTYPE_WHEEL_DOWN;
	}
	return CH_CLICKTYPE_NONE;
}

int ControlMap::IsApplyAndSelectOnPrimaryButtons()
{
	if (BindableActions[BINDABLE_ACTION_ACTION].GetMouseButton().code == ControlMouse::MOUSE_CONTROL_BUTTON_LEFT &&
	    BindableActions[BINDABLE_ACTION_MOVE].GetMouseButton().code == ControlMouse::MOUSE_CONTROL_BUTTON_RIGHT)
	{
		return CH_CLICKTYPE_LEFT_RIGHT;
	}
	bool swapped =
		BindableActions[BINDABLE_ACTION_ACTION].GetMouseButton().code == ControlMouse::MOUSE_CONTROL_BUTTON_RIGHT &&
		BindableActions[BINDABLE_ACTION_MOVE].GetMouseButton().code == ControlMouse::MOUSE_CONTROL_BUTTON_LEFT;
	return swapped ? CH_CLICKTYPE_LEFT_RIGHT : CH_CLICKTYPE_NONE;
}

bool32_t ControlMap::IsKeyAssignedToAction(BINDABLE_ACTIONS action)
{
	if (action == BINDABLE_ACTION_NONE)
	{
		return false;
	}
	return BindableActions[action].GetPrimaryKey().key != KB_NONE;
}

bool32_t ControlMap::IsKeyModifierAssignedToAction(BINDABLE_ACTIONS action)
{
	if (action == BINDABLE_ACTION_NONE)
	{
		return false;
	}
	LH_KEY keymod = BindableActions[action].GetPrimaryKey().keymod;
	return keymod != KB_NONE;
}

bool32_t ControlMap::IsZoomAction(BINDABLE_ACTIONS action)
{
	if (action == BINDABLE_ACTION_NONE)
	{
		return false;
	}
	if (action == BINDABLE_ACTION_ZOOM_OUT || action == BINDABLE_ACTION_ZOOM_IN || action == BINDABLE_ACTION_ZOOM_ON)
	{
		return true;
	}
	return false;
}

bool32_t ControlMap::IsMouseButtonAssignedToAction(BINDABLE_ACTIONS action)
{
	if (action == BINDABLE_ACTION_NONE)
	{
		return false;
	}
	if (IsZoomAction(action))
	{
		if (BindableActions[action].GetMouseButton().code == ControlMouse::MOUSE_CONTROL_BUTTON_NONE)
		{
			if (GGame::g_game->control_map->IsApplyAndSelectOnPrimaryButtons() == CH_CLICKTYPE_NONE)
			{
				return false;
			}
		}
		return true;
	}
	return BindableActions[action].GetMouseButton().code != ControlMouse::MOUSE_CONTROL_BUTTON_NONE;
}
