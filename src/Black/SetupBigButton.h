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
	uint32_t  text_position; /* 0x244 */
	BBSTYLE   style;
	SetupRect inner_rect;

	// Override methods

	// BW1W120 0040d310 BW1M100 101670b0 SetupBigButton::HitTest(int, int)
	virtual bool HitTest(int x, int y);
	// BW1W120 0040ceb0 BW1M100 103deac0 SetupBigButton::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040d2f0 BW1M100 101689f0 SetupBigButton::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 0040d360 BW1M100 1010fca0 SetupBigButton::~SetupBigButton(void)
	virtual ~SetupBigButton();

	// Constructors

	// BW1W120 0040d260 BW1M100 100fd210 SetupBigButton::SetupBigButton(int, int, int, wchar_t *, int, int, int)
	SetupBigButton(int id, int x, int y, const char16_t* label, int size, uint32_t text_position, BBSTYLE style);
};

#endif /* BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H */
