#ifndef BW1_DECOMP_SETUP_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupControl.h" /* For struct SetupControl */

class SetupButton : public SetupControl
{
public:
	bool pressed; /* 0x23c */
	int  field_0x240;

	// Override methods

	// BW1W120 004097a0 BW1M119 01501fc0
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00409900 BW1M119 0159be80
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 00409910 BW1M119 01375da0
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 00409920 BW1M119 011723f0
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 00409940 BW1M119 0117b560
	virtual ~SetupButton();

	// Constructors

	// BW1W120 004098b0 BW1M119 01416ad0
	SetupButton(int id, int x, int y, int width, int height, const char16_t* label, int param_8);
};

#endif /* BW1_DECOMP_SETUP_BUTTON_INCLUDED_H */
