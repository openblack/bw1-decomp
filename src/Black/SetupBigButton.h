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

	// BW1W120 0040d310 BW1M100 101670b0 bool SetupBigButton::HitTest(int, int)
	virtual bool HitTest(int x, int y);
	// BW1W120 0040ceb0 BW1M100 103deac0 void SetupBigButton::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040d2f0 BW1M100 101689f0 void SetupBigButton::KeyDown(LHKey, LHKeyMod)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 inlined BW1M100 1010fca0 SetupBigButton::~SetupBigButton(void)
	virtual ~SetupBigButton();

	// Constructors

	// BW1W120 0040d260 BW1M100 100fd210 SetupBigButton::SetupBigButton(int, int, int, unsigned short const *, int, int, int)
	SetupBigButton(int id, int x, int y, const char16_t* label, int size, int text_position, int style);
};

static_assert(sizeof(SetupBigButton) == 0x25c, "SetupBigButton size is incorrect");

#endif /* BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H */
