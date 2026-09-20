#ifndef BW1_DECOMP_SETUP_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupControl.h" /* For struct SetupControl */

class SetupButton : public SetupControl
{
public:
	int pressed; /* 0x23c: DWORD stores in constructor and both mouse handlers */
	int field_0x240;

	// Override methods

	// BW1W120 004097a0 BW1M100 100c7c90 SetupButton::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00409900 BW1M100 101104d0 SetupButton::MouseDown(int, int, bool)
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 00409910 BW1M100 10172660 SetupButton::MouseUp(int, int, bool)
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 00409920 BW1M100 1034a2d0 SetupButton::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 inlined BW1M100 10594240 SetupButton::~SetupButton(void)
	virtual ~SetupButton();

	// Constructors

	// BW1W120 004098b0 BW1M100 103dd710 SetupButton::SetupButton(int, int, int, int, int, wchar_t*, int)
	SetupButton(int id, int x, int y, int width, int height, const char16_t* label, int param_8);
};

// BW1W120 004098b0 BW1M100 103dd710 SetupButton::SetupButton(int, int, int, int, int, wchar_t*, int)
inline SetupButton::SetupButton(int id, int x, int y, int width, int height, const char16_t* label, int param_8)
	: SetupControl(id, x, y, width, height, label)
{
	field_0x240 = param_8;
	pressed = false;
}

// BW1W120 00409900 BW1M100 101104d0 SetupButton::MouseDown(int, int, bool)
inline void SetupButton::MouseDown(int x, int y, bool param_3)
{
	pressed = true;
}

// BW1W120 00409910 BW1M100 10172660 SetupButton::MouseUp(int, int, bool)
inline void SetupButton::MouseUp(int x, int y, bool param_3)
{
	pressed = false;
}

// BW1W120 00409920 BW1M100 1034a2d0 SetupButton::KeyDown(int, int)
inline void SetupButton::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 inlined BW1M100 10594240 SetupButton::~SetupButton(void)
inline SetupButton::~SetupButton() {}

#endif /* BW1_DECOMP_SETUP_BUTTON_INCLUDED_H */
