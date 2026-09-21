#ifndef BW1_DECOMP_SETUP_SLIDER_INCLUDED_H
#define BW1_DECOMP_SETUP_SLIDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LHLib/ver5.0/LHKey.h>          /* For enum LHKey, enum LHKeyMod */

#include "SetupControl.h" /* For struct SetupControl */

class SetupSlider : public SetupControl
{
public:
	float   value;          /* 0x23c */
	float   DragStartValue; /* 0x240 */
	LHCoord DragStart;
	int     height;

	// Override methods

	// BW1W120 00409a40 BW1M119 010d1200
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00409c70 BW1M119 0159ff50
	virtual void Drag(int x, int y);
	// BW1W120 00409d60 BW1M119 011109a0
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 00409d90 BW1M119 015824f0
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 00409960 BW1M119 010d97f0
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 00409c50 BW1M119 013faec0
	virtual ~SetupSlider();

	// Constructors

	// BW1W120 00409bf0 BW1M119 013c2910
	SetupSlider(int id, int x, int y, int width, int height, float value, char16_t* label);
};

#endif /* BW1_DECOMP_SETUP_SLIDER_INCLUDED_H */
