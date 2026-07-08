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
	LH3DColor     color_0x244;
	LH3DMaterial* material;
	bool          brightness_slider;
	float         slider_position; /* 0x250 */
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
	// BW1W120 00410b60 BW1M100 10571d70 SetupColourPicker::~SetupColourPicker(void)
	virtual ~SetupColourPicker();

	// Constructors

	// BW1W120 00410ac0 BW1M100 103c6130 SetupColourPicker::SetupColourPicker(int, int, int, int, int, int, LH3DMaterial *)
	SetupColourPicker(int id, int x, int y, int width, int height, bool brightness_slider, LH3DMaterial* material);
};

#endif /* BW1_DECOMP_SETUP_COLOUR_PICKER_INCLUDED_H */
