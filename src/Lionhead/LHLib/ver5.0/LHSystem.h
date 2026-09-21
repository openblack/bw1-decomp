#ifndef BW1_DECOMP_LH_SYSTEM_INCLUDED_H
#define BW1_DECOMP_LH_SYSTEM_INCLUDED_H

#include <stdint.h> /* For uint32_t */
#include <stddef.h> /* For offsetof */
#include <chlasm/LHKeyBoard.h>

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
	// BW1W120 00e8c118. Same lock formerly named gKeyboardCritSec in LHSystem.cpp.
	// TODO: Descriptive name; original class/file scope is unknown.
	static CRITICAL_SECTION CriticalSection;

	void(__cdecl* Callback)(unsigned short, LH_KEY, unsigned short, unsigned short, void*);
	void*        CallbackContext;
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

	// BW1W120 007dcaf0 BW1M100 10040680 LHKeyboard::ProcessKeyboard(unsigned short, long*)
	void ProcessKeyboard(unsigned int msg, int key_data);
	// BW1W120 007dcc90 BW1M100 1013df90 LHKeyboard::StringCollect(LH_KEY)
	void StringCollect(int key);
	// BW1W120 007dcd10 BW1M100 1013df50 LHKeyboard::StopString(void)
	void StopString();
	// BW1W120 007dcd20 BW1M100 1013df10 LHKeyboard::RestartString(void)
	void RestartString();
	// BW1W120 007dcd30 BW1M100 1013de60 LHKeyboard::GetKeyValue(LH_KEY&, unsigned char&)
	int GetKeyValue(int& key, unsigned char& mod);
	// BW1W120 007dcda0 BW1M100 1013ddc0 LHKeyboard::SetKeyValue(void)
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

// The typed-character ring fed by WM_CHAR / WM_USER+0x10 and drained by the front end.
// One object (Buffer and the cursors may alias) — separate globals change the codegen.
struct CharRing
{
	int Buffer[16]; /* 0x00 */
	int Head;       /* 0x40 */
	int Tail;       /* 0x44 */
};

namespace slim
{
// Original identity is established by Mac shared-library traceback names for
// the constructor, ProcessMessage and both candidate-list methods. The Windows
// object is a four-byte wrapper; its recovered Windows calling conventions follow.
struct TbIME
{
	void* field_0x0;
	// BW1W120 007f3b80 BW1M100 10170550 slim::TbIME::TbIME(void)
	TbIME();
	// BW1W120 007f3d00 BW1M100 101704a0 slim::TbIME::Activate(void*)
	void Activate(HWND param_1);
	// BW1W120 007f3d10 BW1M100 10170460 slim::TbIME::UnActivate(void)
	void UnActivate();
	// BW1W120 007f3d20 BW1M100 10170410 slim::TbIME::ProcessMessage(void*, unsigned int&, unsigned int&, long&, unsigned int&)
	bool ProcessMessage(HWND wnd, UINT* msg, WPARAM* w, LPARAM* l, LRESULT* result);
	// BW1W120 007f3d50 BW1M100 101703d0 slim::TbIME::Composition_Get(void)
	wchar_t* Composition_Get();
	// BW1W120 007f3dc0 BW1M100 10170290 slim::TbIME::CandidateList_GetSelectIdx(void)
	uint32_t CandidateList_GetSelectIdx();
	// BW1W120 007f3de0 BW1M100 10170240 slim::TbIME::CandidateList_SetViewWindow(unsigned int, unsigned int, unsigned int)
	void CandidateList_SetViewWindow(uint32_t first, uint32_t last, uint32_t index);
};
} // namespace slim

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
	slim::TbIME*     TbIME;              /* 0x70c4 */
	uint8_t          MouseThreadRunning; /* 0x70c8 */
	uint8_t          TerminateRequested; /* 0x70c9 */
	uint8_t          _pad70ca[2];
	void(__stdcall* MessageHook)(unsigned long, unsigned long, unsigned long); /* 0x70cc; Mac UserMessageCallback */
	int     LastKey;                                                           /* 0x70d0 */
	uint8_t field_0x70d4[4];

	// Constructors

	// BW1W120 007db800 BW1M100 inlined LHSys::LHSys(void)
	LHSys();

	// The one instance, at 0xE85040, built by LHSystem.cpp's static-init constructor.
	static LHSys TheSystem;

	// fabricated: source-level accessors, with no recovered Mac identities.
	// BW1W120 inlined LHSys::Get(void)
	static LHSys& Get() { return TheSystem; }
	// BW1W120 inlined LHSys::GetSystem(void)
	static LHSystem& GetSystem() { return TheSystem.system; }
	// BW1W120 inlined LHSys::GetScreen(void)
	static LHScreen& GetScreen() { return TheSystem.screen; }
	// BW1W120 inlined LHSys::GetMouse(void)
	static LHMouse& GetMouse() { return TheSystem.mouse; }
	// BW1W120 inlined LHSys::GetKeyboard(void)
	static LHKeyboard& GetKeyboard() { return TheSystem.keyboard; }
	// BW1W120 inlined LHSys::GetDraw(void)
	static LHDraw& GetDraw() { return TheSystem.draw; }
	// BW1W120 inlined LHSys::GetConvert(void)
	static LHConvert& GetConvert() { return TheSystem.convert; }
	// BW1W120 inlined LHSys::GetText(void)
	static LHText& GetText() { return TheSystem.text; }
	// BW1W120 inlined LHSys::GetInstance(void)
	static HINSTANCE GetInstance() { return TheSystem.system.HInstance; }
	// BW1W120 inlined LHSys::GetWindow(void)
	static HWND GetWindow() { return TheSystem.Window; }
};

#endif /* BW1_DECOMP_LH_SYSTEM_INCLUDED_H */
