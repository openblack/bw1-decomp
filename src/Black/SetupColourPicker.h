#ifndef BW1_DECOMP_SETUP_COLOUR_PICKER_INCLUDED_H
#define BW1_DECOMP_SETUP_COLOUR_PICKER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LHLib/ver5.0/LHKey.h>            /* For enum LHKey, enum LHKeyMod */

#include "SetupButton.h" /* For struct SetupButton */

// Forward Declares

struct LH3DMaterial;
class SetupControl;

class SetupColourPicker : public SetupButton
{
public:
	LH3DColor     Color0x244;
	LH3DMaterial* material;
	int           brightness_slider; /* 0x24c: constructor copies the full argument word */
	float         SliderPosition;    /* 0x250 */
	LH3DColor     color;

	// Override methods

	// BW1W120 00410880 BW1M100 10103e40 SetupColourPicker::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00410810 BW1M100 1023f300 SetupColourPicker::Drag(int, int)
	virtual void Drag(int x, int y);
	// BW1W120 004107f0 BW1M100 1030b070 SetupColourPicker::MouseDown(int, int, bool)
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 00410800 BW1M100 101119a0 SetupColourPicker::MouseUp(int, int, bool)
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 00410b50 BW1M100 100c8de0 SetupColourPicker::Click(int, int)
	virtual void Click(int x, int y);
	// BW1W120 00410b30 BW1M100 1034f250 SetupColourPicker::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 inlined BW1M100 10571d70 SetupColourPicker::~SetupColourPicker(void)
	virtual ~SetupColourPicker();

	// Constructors

	// BW1W120 00410ac0 BW1M100 103c6130 SetupColourPicker::SetupColourPicker(int, int, int, int, int, int, LH3DMaterial*)
	SetupColourPicker(int id, int x, int y, int width, int height, int brightness_slider, LH3DMaterial* material);
};

// BW1W120 004107f0 BW1M100 1030b070 SetupColourPicker::MouseDown(int, int, bool)
inline void SetupColourPicker::MouseDown(int x, int y, bool param_3)
{
	pressed = true;
}

// BW1W120 00410800 BW1M100 101119a0 SetupColourPicker::MouseUp(int, int, bool)
inline void SetupColourPicker::MouseUp(int x, int y, bool param_3)
{
	pressed = false;
}

// BW1W120 00410810 BW1M100 1023f300 SetupColourPicker::Drag(int, int)
inline void SetupColourPicker::Drag(int x, int y)
{
	SliderPosition = (float)(y - rect.p0.y) / (float)(rect.p1.y - rect.p0.y);
	SliderPosition = SliderPosition > 0.0f ? (SliderPosition < 1.0f ? SliderPosition : 1.0f) : 0.0f;
}

// BW1W120 00410ac0 BW1M100 103c6130 SetupColourPicker::SetupColourPicker(int, int, int, int, int, int, LH3DMaterial*)
inline SetupColourPicker::SetupColourPicker(int id, int x, int y, int width, int height, int brightness_slider,
                                            LH3DMaterial* material)
	: SetupButton(id, x, y, width, height, L"", 0)
{
	this->material = material;
	this->brightness_slider = brightness_slider;
	Color0x244 = LH3DColor(0xff000000);
	color = LH3DColor(0x00808080);
	SliderPosition = 0.5f;
}

// BW1W120 00410b30 BW1M100 1034f250 SetupColourPicker::KeyDown(int, int)
inline void SetupColourPicker::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 00410b50 BW1M100 100c8de0 SetupColourPicker::Click(int, int)
inline void SetupColourPicker::Click(int x, int y) {}

// BW1W120 inlined BW1M100 10571d70 SetupColourPicker::~SetupColourPicker(void)
inline SetupColourPicker::~SetupColourPicker() {}

#endif /* BW1_DECOMP_SETUP_COLOUR_PICKER_INCLUDED_H */
