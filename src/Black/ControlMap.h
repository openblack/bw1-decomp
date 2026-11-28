#ifndef BW1_DECOMP_CONTROL_MAP_INCLUDED_H
#define BW1_DECOMP_CONTROL_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For wchar_t */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <re_common.h>         /* For bool32_t */

#include "BindableAction.h" /* For _BINDABLE_ACTION_SIZE, struct BindableAction */

#define CONTROL_MAP_DOUBLE_CLICK_TIME 250

struct ControlMap
{
	// BW1W120 00c5e8d0
	static LHCoord MouseDelta;
	// BW1W120 inlined BW1M119 011ac280
	static LHCoord DeltaPos() { return MouseDelta; }
	// BW1W120 00c5e8d8
	static int     MouseWheelDelta;
	BindableAction BindableActions[_BINDABLE_ACTION_SIZE];      /* 0x0 */
	bool32_t       BindableActionStates[_BINDABLE_ACTION_SIZE]; /* 0x648c */
	bool32_t       ApplyButtonDown;
	bool32_t       SelectButtonDown;
	bool32_t       ApplyButtonDownByMouse;
	bool32_t       SelectButtonDownByMouse;
	bool32_t       ApplyButtonDoubleClicked;
	bool32_t       SelectButtonDoubleClicked;
	uint32_t       DoubleClickTime;
	bool32_t       CameraControlEnabled;
	bool32_t       NormalInterface;

	// Constructors

	// BW1W120 0046f6c0 BW1M119 011d3320
	ControlMap();
	// BW1W120 0046f730 BW1M119 011d3290
	~ControlMap();

	// Non-virtual methods

	// BW1W120 0046f750 BW1M119 inlined
	bool32_t IsActionDisabled(int action);
	// BW1W120 0046f7c0 BW1M119 011d31f0
	static bool32_t CanThisKeyBeAssigned(LH_KEY key);
	// BW1W120 0046f890 BW1M119 011d26a0
	void LoadDefaults();
	// BW1W120 00470810 BW1M119 011d25e0
	void SetKey(unsigned long action, LH_KEY key, LH_KEY keymod);
	// BW1W120 004708a0 BW1M119 011d2510
	void SetMouseButton(unsigned long action, ControlMouse::MOUSE_CONTROL_BUTTON button);
	// BW1W120 00470910 BW1M119 011d2410
	void GetText(unsigned long action, wchar_t* out_text);
	// BW1W120 004709c0 BW1M119 null
	int GetActionFromKey(LH_KEY key);
	// BW1W120 00470a00 BW1M119 011d2290
	int GetActionFromKeys(LH_KEY key, LH_KEY keymod);
	// BW1W120 00470a60 BW1M119 010a0f00
	int IsMouseBeingUsed(ControlMouse::MOUSE_CONTROL_BUTTON button);
	// BW1W120 00470ab0 BW1M119 01092cf0
	void ProcessActionsPerformed();
	// BW1W120 00470af0 BW1M119 01073e00
	bool32_t IsActionPerformed(BINDABLE_ACTIONS action);
	// BW1W120 00470b30 BW1M119 01092770
	bool32_t IsApplyButtonClicked();
	// BW1W120 00470de0 BW1M119 01093330
	bool32_t IsApplyButtonDoubleClicked();
	// BW1W120 00470e20 BW1M119 010938b0
	bool32_t IsApplyButtonReleased();
	// BW1W120 00470e80 BW1M119 01092a10
	bool32_t IsSelectButtonClicked();
	// BW1W120 00471130 BW1M119 010934c0
	bool32_t IsSelectButtonDoubleClicked();
	// BW1W120 00471170 BW1M119 01093980
	bool32_t IsSelectButtonReleased();
	// BW1W120 004711d0 BW1M119 011d1cd0
	void GetNameForAction(BINDABLE_ACTIONS action, wchar_t* out_text);
	// BW1W120 004711f0 BW1M119 null
	void GetTextForAction(BINDABLE_ACTIONS action, wchar_t* out_text);
	// BW1W120 004712d0 BW1M119 011d1b60
	void GetKeyTextForAction(BINDABLE_ACTIONS action, wchar_t* out_text);
	// BW1W120 00471350 BW1M119 null
	void GetMouseTextForAction(BINDABLE_ACTIONS action, wchar_t* out_text);
	// BW1W120 004713d0 BW1M119 011d1910
	void LoadCurrentProfileKeys();
	// BW1W120 004714f0 BW1M119 011d1760
	void SaveCurrentProfileKeys();
	// BW1W120 00471620 BW1M119 010948d0
	int GetClickTypeForAction(BINDABLE_ACTIONS action);
	// BW1W120 00471760 BW1M119 011d15d0
	int IsApplyAndSelectOnPrimaryButtons();
	// BW1W120 00471850 BW1M119 011d1520
	bool32_t IsKeyAssignedToAction(BINDABLE_ACTIONS action);
	// BW1W120 004718b0 BW1M119 null
	bool32_t IsKeyModifierAssignedToAction(BINDABLE_ACTIONS action);
	// BW1W120 00471910 BW1M119 null
	bool32_t IsZoomAction(BINDABLE_ACTIONS action);
	// BW1W120 00471940 BW1M119 01094b00
	bool32_t IsMouseButtonAssignedToAction(BINDABLE_ACTIONS action);
};

// BW1W120 0046ee60 BW1M119 011d4790
void GetKeyNameText_(long key_data, wchar_t* out_text, int length);

enum MOUSE_CLICK_TYPE
{
	MOUSE_CLICK_TYPE_NONE = -1,
	MOUSE_CLICK_TYPE_LEFT = 1,
	MOUSE_CLICK_TYPE_RIGHT = 2,
	MOUSE_CLICK_TYPE_LEFT_RIGHT = 3,
	MOUSE_CLICK_TYPE_MIDDLE = 4,
	MOUSE_CLICK_TYPE_WHEEL_DOWN = 8,
	MOUSE_CLICK_TYPE_WHEEL_UP = 0x10,
};

enum CONTROL_MAP_PADDING
{
	CONTROL_MAP_PADDING_0,
	CONTROL_MAP_PADDING_1,
	CONTROL_MAP_PADDING_2,
	CONTROL_MAP_PADDING_3,
	CONTROL_MAP_PADDING_4,
	CONTROL_MAP_PADDING_5,
	CONTROL_MAP_PADDING_6,
	CONTROL_MAP_PADDING_7,
	CONTROL_MAP_PADDING_8,
	CONTROL_MAP_PADDING_9,
	CONTROL_MAP_PADDING_10,
	CONTROL_MAP_PADDING_11,
	CONTROL_MAP_PADDING_12,
	CONTROL_MAP_PADDING_13,
	CONTROL_MAP_PADDING_14,
	CONTROL_MAP_PADDING_15,
	CONTROL_MAP_PADDING_16,
	CONTROL_MAP_PADDING_17,
	CONTROL_MAP_PADDING_18,
	CONTROL_MAP_PADDING_19,
	CONTROL_MAP_PADDING_20,
	CONTROL_MAP_PADDING_21,
	CONTROL_MAP_PADDING_22,
	CONTROL_MAP_PADDING_23,
	CONTROL_MAP_PADDING_24,
	CONTROL_MAP_PADDING_25,
	CONTROL_MAP_PADDING_26,
	CONTROL_MAP_PADDING_27,
};

#ifdef VERSION_BW1WCI
static_assert(sizeof(ControlMap) == 0x6b54, "ControlMap size is incorrect");
#else
static_assert(sizeof(ControlMap) == 0x6534, "ControlMap size is incorrect");
#endif

#endif /* BW1_DECOMP_CONTROL_MAP_INCLUDED_H */
