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
	bool          brightness_slider;
	float         SliderPosition; /* 0x250 */
	LH3DColor     color;

	// Override methods

	// BW1W120 00410880 BW1M119 0149d2c0
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00410810 BW1M119 013760a0
	virtual void Drag(int x, int y);
	// BW1W120 004107f0 BW1M119 011a2660
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 00410800 BW1M119 0142f970
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 00410b50 BW1M119 0156c5a0
	virtual void Click(int x, int y);
	// BW1W120 00410b30 BW1M119 0117bea0
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 00410b60 BW1M119 01119480
	virtual ~SetupColourPicker();

	// Constructors

	// BW1W120 00410ac0 BW1M119 010af1b0
	SetupColourPicker(int id, int x, int y, int width, int height, bool brightness_slider, LH3DMaterial* material);
};

#endif /* BW1_DECOMP_SETUP_COLOUR_PICKER_INCLUDED_H */
