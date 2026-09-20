#ifndef BW1_DECOMP_SETUP_PICTURE_INCLUDED_H
#define BW1_DECOMP_SETUP_PICTURE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/Zoomer.h>    /* For struct Zoomer */
#include <Lionhead/LHLib/ver5.0/LHKey.h>            /* For enum LHKey, enum LHKeyMod */

#include "SetupButton.h" /* For struct SetupButton */

// Forward Declares

struct LH3DMaterial;
class SetupControl;

class SetupPicture : public SetupButton
{
public:
	int           HoveredPictureIndex; /* 0x244 */
	Zoomer        zoomer;
	LH3DMaterial* material; /* 0x278 */
	LH3DColor     tint;
	bool          draggable; /* 0x280 */
	bool          dragging;
	int           picture_index;
	int           num_rows;
	int           NumPictures;
	bool          clickable; /* 0x290 */

	// Override methods

	// BW1W120 00410740 BW1M100 102410c0 SetupPicture::SetFocus(bool)
	virtual void SetFocus(bool focus);
	// BW1W120 0040fa20 BW1M100 100ab020 SetupPicture::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040fa10 BW1M100 100e47c0 SetupPicture::Drag(int, int)
	virtual void Drag(int x, int y);
	// BW1W120 0040f6b0 BW1M100 inlined SetupPicture::MouseDown(int, int, bool)
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 0040f840 BW1M100 1036e5b0 SetupPicture::MouseUp(int, int, bool)
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 00410710 BW1M100 10351210 SetupPicture::Click(int, int)
	virtual void Click(int x, int y);
	// BW1W120 004106f0 BW1M100 100fe9d0 SetupPicture::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 inlined BW1M100 1034f1b0 SetupPicture::~SetupPicture(void)
	virtual ~SetupPicture();

	// Constructors

	// BW1W120 004105d0 BW1M100 101a6a00 SetupPicture::SetupPicture(int, int, int, LH3DMaterial *, int, int, bool, int, bool)
	SetupPicture(int id, int x, int y, LH3DMaterial* material, int picture_index, int num_rows, bool clickable,
	             int size, bool draggable);
};

// BW1W120 0040fa10 BW1M100 100e47c0 SetupPicture::Drag(int, int)
inline void SetupPicture::Drag(int x, int y) {}

// BW1W120 00410710 BW1M100 10351210 SetupPicture::Click(int, int)
inline void SetupPicture::Click(int x, int y) {}

// BW1W120 004105d0 BW1M100 101a6a00 SetupPicture::SetupPicture(int, int, int, LH3DMaterial *, int, int, bool, int, bool)
inline SetupPicture::SetupPicture(int id, int x, int y, LH3DMaterial* material, int picture_index, int num_rows,
                                  bool clickable, int size, bool draggable)
	: SetupButton(id, x, y, size, size, L"", 0)
{
	HoveredPictureIndex = -1;
	// Two identical reset expansions are present in the target.
	zoomer.SetPosition(0.0f);
	zoomer.SetPosition(0.0f);
	this->picture_index = picture_index;
	this->num_rows = num_rows;
	this->material = material;
	this->clickable = clickable;
	pressed = false;
	tint = LH3DColor(0);
	dragging = false;
	NumPictures = num_rows * num_rows;
	this->draggable = draggable;
}

// BW1W120 004106f0 BW1M100 100fe9d0 SetupPicture::KeyDown(int, int)
inline void SetupPicture::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 inlined BW1M100 1034f1b0 SetupPicture::~SetupPicture(void)
inline SetupPicture::~SetupPicture() {}

// BW1W120 00410740 BW1M100 102410c0 SetupPicture::SetFocus(bool)
inline void SetupPicture::SetFocus(bool focus)
{
	// This override deliberately does not call SetupControl::SetFocus.
	if (!focus)
	{
		HoveredPictureIndex = -1;
		// Target expands two identical position resets here.
		zoomer.SetPosition(0.0f);
		zoomer.SetPosition(0.0f);
	}
}

#endif /* BW1_DECOMP_SETUP_PICTURE_INCLUDED_H */
