#ifndef BW1_DECOMP_SETUP_TAB_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_TAB_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LHLib/ver5.0/LHKey.h>            /* For enum LHKey, enum LHKeyMod */
#include <re_common.h>                              /* For bool32_t */

#include "SetupButton.h" /* For struct SetupButton */

// Forward Declares

class SetupControl;

class SetupTabButton : public SetupButton
{
public:
	bool32_t  selected; /* 0x244 */
	bool32_t  first_in_row;
	bool32_t  last_in_row;
	LH3DColor color; /* 0x250 */

	// Override methods

	// BW1W120 0040f3a0 BW1M100 104081c0 SetupTabButton::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040f670 BW1M100 1037abd0 SetupTabButton::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 0040f690 BW1M100 10369440 SetupTabButton::~SetupTabButton(void)
	virtual ~SetupTabButton();

	// Constructors

	// BW1W120 0040f5e0 BW1M100 101995b0 SetupTabButton::SetupTabButton(int, int, int, int, int, wchar_t *, int, int, int)
	SetupTabButton(int id, int x, int y, int width, int height, const char16_t* label, bool selected, bool first_in_row,
	               bool last_in_row);
};

#endif /* BW1_DECOMP_SETUP_TAB_BUTTON_INCLUDED_H */
