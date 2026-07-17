#ifndef BW1_DECOMP_LH_SYSTEM_INCLUDED_H
#define BW1_DECOMP_LH_SYSTEM_INCLUDED_H

#include <stdint.h> /* For uint32_t */
#include <stddef.h> /* For offsetof */

#include <re_common.h> /* For bool32_t (Win32 types come from <windows.h> in the includer) */

struct LHSystem
{
	HINSTANCE HInstance; /* 0x0  application instance */
	uint32_t  field_0x4; /* 0x4  set from WinMain's 4th arg */
	uint32_t  field_0x8; /* 0x8 */
	uint32_t  Terminate; /* 0xc  set once SetTerminate() has run */

	// Non-virtual methods

	// BW1W120 007db8a0 BW1M100 1015cc80 LHSystem::SetTerminate(void)
	LRESULT SetTerminate();
};

// The full LHSys aggregate: the file-scope global `LHSys::TheSystem` (0xE85040), built
// by this TU's single static-init constructor. It embeds system/screen/mouse/keyboard/
// joypads/convert/script/text; the fixed-address "globals" other TUs reference are
// members of it and are reached through the static inline accessors below.
// Fixed-width field types keep this layout stable across include contexts.
#include <assert.h>   /* For static_assert */
#include <wchar.h>    /* For wchar_t */
#include <commctrl.h> /* For TRACKMOUSEEVENT (comctl32's _TrackMouseEvent, pre-NT4 SDK) */

#include "LHConvert.h" /* For class LHConvert */
#include "LHJoypad.h"  /* For struct LHJoypads */
#include "LHMouse.h"   /* For struct LHMouse */
#include "LHDraw.h"    /* For struct LHDraw */
#include "LHScreen.h"  /* For struct LHScreen */
#include "LHScript.h"  /* For class LHScriptX, struct LHScriptResource */
#include "LHText.h"    /* For struct LHText */

typedef LHScriptX<char> LHScriptX_c_;
struct LHKeyEvent
{
	int     Key;
	uint8_t Mod;
	uint8_t _pad[3];
};

struct LHKeyboard
{
	int(__cdecl* Callback)(int, int, unsigned short, unsigned int, int);
	int          CallbackContext;
	uint8_t      KeyState[0x100];
	int          CurrentKey;
	uint8_t      ModifierFlags;
	uint8_t      StringBuffer[0x1F];
	LHKeyEvent   KeyEventRing[29];
	uint8_t      _pad214[0x8];
	unsigned int RingRead;
	unsigned int RingWrite;
	unsigned int StringMax;
	unsigned int StringLen;
	int          StringEndKey;
	int          StringActive;

	// BW1W120 007dcaf0 ?ProcessKeyboard@LHKeyboard@@QAEHIH@Z
	int ProcessKeyboard(unsigned int msg, int key_data);
	// BW1W120 007dcc90 ?StringCollect@LHKeyboard@@QAEXH@Z
	void StringCollect(int key);
	// BW1W120 007dcd10 ?StopString@LHKeyboard@@QAEXXZ
	void StopString();
	// BW1W120 007dcd20 ?RestartString@LHKeyboard@@QAEXXZ
	void RestartString();
	// BW1W120 007dcd30 ?GetKeyValue@LHKeyboard@@QAEHAAHAAE@Z
	int GetKeyValue(int& key, unsigned char& mod);
	// BW1W120 007dcda0 ?SetKeyValue@LHKeyboard@@QAEHXZ
	int SetKeyValue();
};

enum LH_KEY_SCAN_CODE
{
	LH_KEY_SCAN_LSHIFT = 42,
	LH_KEY_SCAN_RSHIFT = 54,
	LH_KEY_SCAN_EXTENDED_OFFSET = 0x80,
	LH_KEY_SCAN_LCTRL = 29,
	LH_KEY_SCAN_RCTRL = 157,
	LH_KEY_SCAN_LALT = 56,
	LH_KEY_SCAN_RALT = 184
};

enum LH_KEY_MODIFIER
{
	LH_KEY_MODIFIER_SHIFT = 0x10,
	LH_KEY_MODIFIER_CTRL = 0x20,
	LH_KEY_MODIFIER_ALT = 0x40
};

static const unsigned int LH_KEY_DATA_EXTENDED = 0x01000000;
static const unsigned int LH_KEY_DATA_RELEASED = 0x80000000;
static_assert(sizeof(LHKeyboard) == 0x234, "LHKeyboard is the wrong size");

// The typed-character ring fed by WM_CHAR / WM_USER+0x10 and drained by the front end.
// One object (Buffer and the cursors may alias) — separate globals change the codegen.
struct CharRing
{
	int Buffer[16]; /* 0x00 */
	int Head;       /* 0x40 */
	int Tail;       /* 0x44 */
};

struct Q24slim5TbIME
{
	void* field_0x0;

	// Non-virtual methods

	// BW1W120 007f3d00 BW1M100 101704a0 slim::TbIME::Activate(void* )
	void Activate(HWND param_1);
	// BW1W120 007f3d10 BW1M100 10170460 slim::TbIME::UnActivate(void)
	void UnActivate();
	// BW1W120 007f3d50 BW1M100 1061ec14 slim::TbIME::Composition_Get( (void))
	wchar_t* Composition_Get();
	// BW1W120 007f3dc0 BW1M100 1061e884 slim::TbIME::CandidateList_GetSelectIdx( (void)
	uint32_t CandidateList_GetSelectIdx();
	// BW1W120 007f3de0 BW1M100 1061e89c slim::TbIME::CandidateList_SetViewWindow( (unsigned int, unsigned int, unsigned int))
	void CandidateList_SetViewWindow(uint32_t param_1, uint32_t param_2, uint32_t idx);
};

// The IME helper wrapper (slim::TbIME), constructed on window creation (LHSystem.cpp).
struct TbIMEWrapper;

struct LHSys
{
	LHSystem         system;   /* 0x0 */
	LHScreen         screen;   /* 0x10 */
	LHMouse          mouse;    /* 0x1c4 */
	LHKeyboard       keyboard; /* 0x32c */
	CharRing         charRing; /* 0x560 */
	LHJoypads        joypads;  /* 0x5a8 */
	LHDraw           draw;     /* 0x82c */
	LHConvert        convert;  /* 0x834 */
	LHScriptX_c_     script;   /* 0x8c4 */
	uint8_t          field_0x8f4[0x30];
	LHScriptResource ScriptResources[100]; /* 0x924 the front-end script resource bank */
	LHText           text;                 /* 0x7044 */
	unsigned int     LastCommand;          /* 0x706c most recent WM_* the app was told about */
	unsigned int     LastCommandParam;     /* 0x7070 */
	uint8_t          field_0x7074[0xC];
	int              LastMouseMsgTime;        /* 0x7080 */
	unsigned int     QueryCancelAutoPlayMsg;  /* 0x7084 registered "QueryCancelAutoPlay" message */
	uint8_t          QueryCancelAutoPlayInit; /* 0x7088 bit 0 = message registered */
	uint8_t          _pad7089[3];
	HANDLE           AppEvent;            /* 0x708c signalled on WM_MOUSEMOVE, waited on by the mouse thread */
	HCURSOR          ArrowCursor;         /* 0x7090 */
	HCURSOR          AppCursor;           /* 0x7094 */
	TRACKMOUSEEVENT  TrackMouseEventInfo; /* 0x7098 */
	HACCEL           Accel;               /* 0x70a8 */
	uint8_t          field_0x70ac[4];
	HMENU            Menu;         /* 0x70b0 */
	HWND             Window;       /* 0x70b4 the game's top-level window */
	uint8_t          field_0x70b8; /* 256-colour failure marker (byte store in LHScreen::ChangeMode) */
	uint8_t          field_0x70b9;
	uint8_t          WindowedMode;       /* 0x70ba */
	uint8_t          AltTabPending;      /* 0x70bb */
	int              AppMinimized;       /* 0x70bc */
	int              AppMinimizedByUs;   /* 0x70c0 */
	TbIMEWrapper*    TbIME;              /* 0x70c4 */
	uint8_t          MouseThreadRunning; /* 0x70c8 */
	uint8_t          TerminateRequested; /* 0x70c9 */
	uint8_t          _pad70ca[2];
	void(__stdcall* MessageHook)(UINT, int, unsigned int); /* 0x70cc 0x05xx-message hook */
	int     LastKey;                                       /* 0x70d0 */
	uint8_t field_0x70d4[4];

	// Constructors

	// BW1W120 007db800 BW1M100 inlined LHSys::LHSys(void)
	LHSys();

	// The one instance, at 0xE85040, built by LHSystem.cpp's static-init constructor.
	static LHSys TheSystem;

	// Static inline accessors — the binary has no getters (neighbour TUs compile to
	// direct absolute loads), so these are source-level style only and must inline.
	// NB /Ob0 TUs (LHScript.cpp) must use TheSystem.<member> directly instead.
	static LHSys&      Get() { return TheSystem; }
	static LHSystem&   GetSystem() { return TheSystem.system; }
	static LHScreen&   GetScreen() { return TheSystem.screen; }
	static LHMouse&    GetMouse() { return TheSystem.mouse; }
	static LHKeyboard& GetKeyboard() { return TheSystem.keyboard; }
	static LHDraw&     GetDraw() { return TheSystem.draw; }
	static LHConvert&  GetConvert() { return TheSystem.convert; }
	static LHText&     GetText() { return TheSystem.text; }
	static HINSTANCE   GetInstance() { return TheSystem.system.HInstance; }
	static HWND        GetWindow() { return TheSystem.Window; }
};
static_assert(sizeof(LHSys) == 0x70D8, "LHSys is the wrong size");
static_assert(offsetof(LHSys, keyboard) == 0x32c, "LHSys keyboard offset changed");
static_assert(offsetof(LHSys, charRing) == 0x560, "LHSys charRing offset changed");
static_assert(offsetof(LHSys, draw) == 0x82c, "LHSys draw offset changed");
static_assert(offsetof(LHSys, ScriptResources) == 0x924, "LHSys ScriptResources offset changed");
static_assert(offsetof(LHSys, text) == 0x7044, "LHSys text offset changed");
static_assert(offsetof(LHSys, Window) == 0x70b4, "LHSys Window offset changed");
static_assert(offsetof(LHSys, LastKey) == 0x70d0, "LHSys LastKey offset changed");

#endif /* BW1_DECOMP_LH_SYSTEM_INCLUDED_H */
