#ifndef BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H
#define BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <re_common.h>         /* For bool32_t */

enum BINDABLE_ACTIONS
{
	BINDABLE_ACTION_NONE = -1,
	BINDABLE_ACTION_HELP = 0,
	BINDABLE_ACTION_MOVE = 1,
	BINDABLE_ACTION_ACTION = 2,
	BINDABLE_ACTION_ZOOM_OUT = 3,
	BINDABLE_ACTION_ZOOM_IN = 4,
	BINDABLE_ACTION_TALK = 5,
	BINDABLE_ACTION_ZOOM_ON = 6,
	BINDABLE_ACTION_MOVE_LEFT = 7,
	BINDABLE_ACTION_MOVE_RIGHT = 8,
	BINDABLE_ACTION_MOVE_FORWARDS = 9,
	BINDABLE_ACTION_MOVE_BACKWARDS = 10,
	BINDABLE_ACTION_TILT_UP = 11,
	BINDABLE_ACTION_TILT_DOWN = 12,
	BINDABLE_ACTION_ROTATE_LEFT = 13,
	BINDABLE_ACTION_ROTATE_RIGHT = 14,
	BINDABLE_ACTION_ROTATE_ON = 15,
	BINDABLE_ACTION_ROTATE_AROUND_MOUSE_ON = 16,
	BINDABLE_ACTION_ZOOM_TO_TEMPLE = 17,
	BINDABLE_ACTION_ZOOM_TO_CREATURE = 18,
	BINDABLE_ACTION_ZOOM_TO_REALM = 19,
	BINDABLE_ACTION_ZOOM_TO_INSIDE_TEMPLE = 20,
	BINDABLE_ACTION_ZOOM_TO_CREATURE_ROOM = 21,
	BINDABLE_ACTION_ZOOM_TO_CHALLENGE_ROOM = 22,
	BINDABLE_ACTION_ZOOM_TO_SAVE_GAME_ROOM = 23,
	BINDABLE_ACTION_ZOOM_TO_OPTIONS_ROOM = 24,
	BINDABLE_ACTION_ZOOM_TO_LIBRARY = 25,
	BINDABLE_ACTION_LEASH_UNLEASH_CREATURE = 26,
	BINDABLE_ACTION_SHOW_VILLAGER_NAMES = 27,
	BINDABLE_ACTION_SHOW_VILLAGER_DETAILS = 28,
	BINDABLE_ACTION_QUICK_SAVE = 29,
	BINDABLE_ACTION_QUICK_LOAD = 30,
	BINDABLE_ACTION_PREVIOUS_LEASH = 31,
	BINDABLE_ACTION_NEXT_LEASH = 32,
#ifdef VERSION_BW1WCI
	BINDABLE_ACTION_ZOOM_TO_TYKE = 33,
	BINDABLE_ACTION_CREATURE_SCREENSHOT = 34,
#endif
	_BINDABLE_ACTION_SIZE,
	_BINDABLE_ACTIONS_COUNT
};

#define CONTROL_KEY_SCAN_CODE 0x7f
#define CONTROL_KEY_EXTENDED  0x80
#define CONTROL_KEY_DONT_CARE 0x100

#define CONTROL_KEY_NAME_DATA(key)                                                                                     \
	(((((key) & CONTROL_KEY_EXTENDED) | CONTROL_KEY_DONT_CARE) << 1 | ((key) & CONTROL_KEY_SCAN_CODE)) << 16)

struct CMouse
{
	uint32_t field_0x0;

	// Non-virtual methods

	// BW1W120 0061a150 BW1M119 01092f50
	void ProcessButtons();
	// BW1W120 0061a110 BW1M119 01007c90
	void ProcessPosition();
};

struct ControlKey
{
	LH_KEY   key; /* 0x0 */
	char16_t KeyDisplayText[0x40];
	LH_KEY   keymod; /* 0x84 */
	char16_t KeymodDisplayText[0x40];

	// BW1W120 0046ee30 BW1M119 011d48e0
	ControlKey();
	// BW1W120 0046ee50 BW1M119 011d4870
	~ControlKey();
	// BW1W120 0046eed0 BW1M119 011d4550
	void SetKey(LH_KEY key, LH_KEY keymod);
	// BW1W120 0046efd0 BW1M119 011d4500
	bool32_t IsAvailable();
	// BW1W120 0046efe0 BW1M119 inlined
	void GetDisplayText(char16_t* out_text);
};

struct ControlMouse
{
	enum MOUSE_CONTROL_BUTTON
	{
		MOUSE_CONTROL_BUTTON_NONE = 0
	};

	uint32_t code; /* 0x0 */
	char16_t DisplayText[0x80];

	// Non-virtual methods

	// BW1W120 0046f050 BW1M119 011d4250
	void SetMouseButton(MOUSE_CONTROL_BUTTON button);
	// BW1W120 0046f180 BW1M119 011d4130
	void GetDisplayText(char16_t* out_text);
};

struct BindableAction
{
	char16_t     name[0x80]; /* 0x0 */
	ControlKey   key;        /* 0x100 */
	ControlMouse mouse;      /* 0x208 */

	// Static methods

	// BW1W120 0046f3c0 BW1M119 01092e60
	static bool IsKeyDown(LH_KEY key);

	// Constructors

	// BW1W120 0046f1a0 BW1M119 011d40a0
	BindableAction();

	// Non-virtual methods

	// BW1W120 0046f4c0 BW1M119 01092db0
	bool IsKeyBeingPressed();
	// BW1W120 0046f500 BW1M119 01092be0
	bool32_t IsMouseBeingPressed();
	// BW1W120 0046f360 BW1M119 011d3c30
	static bool32_t CompareKeys(LH_KEY key, LH_KEY other_key);
	// BW1W120 0046f220 BW1M119 011d3f90
	void SetKey(const ControlKey& new_key);
	// BW1W120 0046f260 BW1M119 011d3eb0
	void GetKeyText(wchar_t* out_text);
	// BW1W120 0046f2b0 BW1M119 011d3e30
	void GetMouseText(wchar_t* out_text);
	// BW1W120 0046f2f0 BW1M119 011d3da0
	void GetRidOfKey(LH_KEY key, LH_KEY keymod);
	// BW1W120 0046f330 BW1M119 011d3d00
	void GetRidOfMouse(ControlMouse::MOUSE_CONTROL_BUTTON button);
#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
	// BW1W120 inlined BW1M119 011d3730
	bool IsKeyBeingPressed(LH_KEY key, LH_KEY keymod);
	// BW1W120 inlined BW1M119 01092940
	bool32_t IsMouseButtonClicked();
	// BW1W120 inlined BW1M119 010933e0
	bool32_t IsMouseButtonDoubleClicked();
	// BW1W120 inlined BW1M119 010a0dc0
	bool32_t IsMouseButtonReleased();
	// BW1W120 inlined BW1M119 010a0e90
	bool32_t IsMouseBeingUsed(ControlMouse::MOUSE_CONTROL_BUTTON button);
	// BW1W120 inlined BW1M119 01094a90
	ControlMouse::MOUSE_CONTROL_BUTTON GetMouseButton() const;
#endif
	// BW1W120 inlined BW1M119 011a68f0
	ControlKey GetPrimaryKey() const { return key; }
};

#endif /* BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H */
