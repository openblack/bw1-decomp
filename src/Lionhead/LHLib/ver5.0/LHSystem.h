#ifndef BW1_DECOMP_LH_SYSTEM_INCLUDED_H
#define BW1_DECOMP_LH_SYSTEM_INCLUDED_H

#include <stdint.h> /* For uint32_t */
#include <stddef.h> /* For offsetof */

#include <re_common.h> /* For bool32_t (Win32 types come from <windows.h> in the includer) */

struct LHSystem
{
	HINSTANCE HInstance;  /* 0x0  application instance */
	uint32_t  field_0x4;  /* 0x4  set from WinMain's 4th arg */
	uint32_t  field_0x8;  /* 0x8 */
	uint32_t  Terminate;  /* 0xc  set once SetTerminate() has run */

	// Non-virtual methods

	// BW1W120 007db8a0 BW1M100 1015cc80 LHSystem::SetTerminate(void)
	LRESULT SetTerminate();
};

// The full LHSys aggregate: the file-scope global `theSystem` (0xE85040), built by
// this TU's single static-init constructor. It embeds system/screen/mouse/keyboard/
// joypads/convert/script/text; the fixed-address "globals" other TUs reference
// (g_lhScreen, gMouse, g_lhText, g_windowForScreen, ...) are members of it.
// Fixed-width field types keep this layout stable across include contexts.
#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "LHConvert.h" /* For class LHConvert */
#include "LHJoypad.h"  /* For struct LHJoypads */
#include "LHMouse.h"   /* For struct LHMouse */
#include "LHDraw.h"    /* For struct LHDraw */
#include "LHScreen.h"  /* For struct LHScreen */
#include "LHScript.h"  /* For class LHScriptX */
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
static_assert(sizeof(LHKeyboard) == 0x234, "LHKeyboard is the wrong size");

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

struct LHSys
{
	LHSystem       system; /* 0x0 */
	LHScreen       screen; /* 0x10 */
	LHMouse        mouse;  /* 0x1c4 */
	LHKeyboard     keyboard; /* 0x32c */
	uint32_t       field_0x560[0x10];
	uint32_t       field_0x5a0;
	uint32_t       field_0x5a4;
	LHJoypads      joypads;
	LHDraw         draw; /* 0x82c */
	LHConvert      convert; /* 0x834 */
	LHScriptX_c_   script;  /* 0x8c4 */
	uint8_t        field_0x8f4[0x6750];
	LHText         text; /* 0x7044 */
	uint8_t        field_0x706c[0x48];
	HWND           window; /* 0x70b4 */
	uint8_t        field_0x70b8;
	uint8_t        field_0x70b9;
	uint8_t        field_0x70ba;
	uint8_t        field_0x70bb;
	uint32_t       field_0x70bc;
	uint32_t       field_0x70c0;
	Q24slim5TbIME* field_0x70c4;
	uint8_t        field_0x70c8[0x10];

	// Constructors

	// BW1W120 007db800 BW1M100 inlined LHSys::LHSys(void)
	LHSys();
};
static_assert(sizeof(LHSys) == 0x70D8, "LHSys is the wrong size");
static_assert(offsetof(LHSys, keyboard) == 0x32c, "LHSys keyboard offset changed");

#endif /* BW1_DECOMP_LH_SYSTEM_INCLUDED_H */
