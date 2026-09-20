#ifndef BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupRect.h"   /* For struct SetupRect */
#include "SetupThing.h"  /* For enum BBSTYLE */

// Forward Declares

class SetupControl;

class SetupBigButton : public SetupButton
{
public:
	int       text_position; /* 0x244 */
	BBSTYLE   style;
	SetupRect InnerRect;

	// Override methods

	// BW1W120 0040d310 BW1M100 101670b0 SetupBigButton::HitTest(int, int)
	virtual bool HitTest(int x, int y);
	// BW1W120 0040ceb0 BW1M100 103deac0 SetupBigButton::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040d2f0 BW1M100 101689f0 SetupBigButton::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 inlined BW1M100 1010fca0 SetupBigButton::~SetupBigButton(void)
	virtual ~SetupBigButton();

	// Constructors

	// BW1W120 0040d260 BW1M100 100fd210 SetupBigButton::SetupBigButton(int, int, int, wchar_t*, int, int, int)
	SetupBigButton(int id, int x, int y, const char16_t* label, int size, int text_position, int style);
};

// BW1W120 0040d260 BW1M100 100fd210 SetupBigButton::SetupBigButton(int, int, int, wchar_t*, int, int, int)
inline SetupBigButton::SetupBigButton(int id, int x, int y, const char16_t* label, int size, int text_position,
                                      int style)
	: SetupButton(id, x, y, size, size, label, 0)
{
	InnerRect.p1.y = 0;
	InnerRect.p1.x = 0;
	InnerRect.p0.y = 0;
	InnerRect.p0.x = 0;
	pressed = false;
	// TODO: This clear is an outlined helper at 0040d380; original name unknown.
	this->style = BBSTYLE_CHECK_BOX_OFF;
	this->text_position = text_position;
	if (text_position == 2)
		text_size = GetMidTextSize();
	this->style = (BBSTYLE)style;
}

// BW1W120 0040d2f0 BW1M100 101689f0 SetupBigButton::KeyDown(int, int)
inline void SetupBigButton::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 0040d310 BW1M100 101670b0 SetupBigButton::HitTest(int, int)
inline bool SetupBigButton::HitTest(int x, int y)
{
	return (x >= rect.p0.x && y >= rect.p0.y && x < rect.p1.x && y < rect.p1.y) ||
	       (x >= InnerRect.p0.x && y >= InnerRect.p0.y && x < InnerRect.p1.x && y < InnerRect.p1.y);
}

// BW1W120 inlined BW1M100 1010fca0 SetupBigButton::~SetupBigButton(void)
inline SetupBigButton::~SetupBigButton() {}

#endif /* BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H */
