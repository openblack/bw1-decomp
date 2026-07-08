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

	// BW1W120 00409a40 BW1M100 10440200 SetupSlider::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00409c70 BW1M100 1043ff90 SetupSlider::Drag(int, int)
	virtual void Drag(int x, int y);
	// BW1W120 00409d60 BW1M100 1043c240 SetupSlider::MouseDown(int, int, bool)
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 00409d90 BW1M100 100b4690 SetupSlider::MouseUp(int, int, bool)
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 00409960 BW1M100 10103d10 SetupSlider::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 00409c50 BW1M100 101c8450 SetupSlider::~SetupSlider(void)
	virtual ~SetupSlider();

	// Constructors

	// BW1W120 00409bf0 BW1M100 1043fbc0 SetupSlider::SetupSlider(int, int, int, int, int, float, wchar_t *)
	SetupSlider(int id, int x, int y, int width, int height, float value, char16_t* label);
};

#endif /* BW1_DECOMP_SETUP_SLIDER_INCLUDED_H */
