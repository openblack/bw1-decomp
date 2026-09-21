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
	SetupRect InnerRect;

	// Override methods

	// BW1W120 0040d310 BW1M119 0149c0c0
	virtual bool HitTest(int x, int y);
	// BW1W120 0040ceb0 BW1M119 013ec8e0
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040d2f0 BW1M119 0149bfb0
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 0040d360 BW1M119 0149bdc0
	virtual ~SetupBigButton();

	// Constructors

	// BW1W120 0040d260 BW1M119 013894e0
	SetupBigButton(int id, int x, int y, const char16_t* label, int size, uint32_t text_position, BBSTYLE style);
};

#endif /* BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H */
