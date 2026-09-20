#ifndef BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H
#define BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupRect.h"   /* For struct SetupRect */
#include "SetupThing.h"  /* For enum BBSTYLE */

// Forward Declares

class SetupControl;

class SetupCheckBox : public SetupButton
{
public:
	uint32_t  text_position; /* 0x244 */
	int       style;         // Checked-state word. Name retained for existing consumers.
	bool      checked;       // Radio-mode flag: Click forces style=1 when this is true.
	SetupRect InnerRect;     /* 0x250 */

	// Override methods

	// BW1W120 00410f90 BW1M100 10112370 SetupCheckBox::HitTest(int, int)
	virtual bool HitTest(int x, int y);
	// BW1W120 00410b80 BW1M100 103c4a20 SetupCheckBox::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00411020 BW1M100 103dbde0 SetupCheckBox::Click(int, int)
	virtual void Click(int x, int y);
	// BW1W120 00411050 BW1M100 10599580 SetupCheckBox::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 inlined BW1M100 105893e0 SetupCheckBox::~SetupCheckBox(void)
	virtual ~SetupCheckBox();

	// Constructors

	// BW1W120 00410f10 BW1M100 1058b890 SetupCheckBox::SetupCheckBox(int, int, int, bool, int, wchar_t*, int)
	SetupCheckBox(int id, int x, int y, bool checked, int style, const char16_t* label, int size);
};

// BW1W120 00410f10 BW1M100 1058b890 SetupCheckBox::SetupCheckBox(int, int, int, bool, int, wchar_t*, int)
inline SetupCheckBox::SetupCheckBox(int id, int x, int y, bool checked, int style, const char16_t* label, int size)
	: SetupButton(id, x, y, size, size, label, 0)
{
	// Existing names are misleading: checked is the radio-mode flag, while style
	// holds the checked state. Both meanings are confirmed by Click below.
	InnerRect.p1.y = 0;
	InnerRect.p1.x = 0;
	InnerRect.p0.y = 0;
	InnerRect.p0.x = 0;
	pressed = false;
	this->style = style;
	this->checked = checked;
	text_size = GetMidTextSize();
	text_position = 2;
}

// BW1W120 00410f90 BW1M100 10112370 SetupCheckBox::HitTest(int, int)
inline bool SetupCheckBox::HitTest(int x, int y)
{
	int dy = y - (rect.p1.y + rect.p0.y) / 2;
	int dx = x - (rect.p1.x + rect.p0.x) / 2;
	int radius = (rect.p1.x - rect.p0.x) / 2;
	return dx * dx + dy * dy < radius * radius ||
	       (x >= InnerRect.p0.x && y >= InnerRect.p0.y && x < InnerRect.p1.x && y < InnerRect.p1.y);
}

// BW1W120 00411020 BW1M100 103dbde0 SetupCheckBox::Click(int, int)
inline void SetupCheckBox::Click(int x, int y)
{
	if (checked)
		style = BBSTYLE_CHECK_BOX_ON;
	else
		style = style == BBSTYLE_CHECK_BOX_OFF ? BBSTYLE_CHECK_BOX_ON : BBSTYLE_CHECK_BOX_OFF;
}

// BW1W120 00411050 BW1M100 10599580 SetupCheckBox::KeyDown(int, int)
inline void SetupCheckBox::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 inlined BW1M100 105893e0 SetupCheckBox::~SetupCheckBox(void)
inline SetupCheckBox::~SetupCheckBox() {}

#endif /* BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H */
