#ifndef BW1_DECOMP_SETUP_EDIT_INCLUDED_H
#define BW1_DECOMP_SETUP_EDIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */
#include <re_common.h>                   /* For bool32_t */

#include "SetupControl.h" /* For struct SetupControl */

// Forward Declares

class SetupList;

class SetupEdit : public SetupControl
{
public:
	SetupList* field_0x23c;
	int        field_0x240;
	int        field_0x244;
	int        field_0x248;
	int        CursorPosition;
	int        SelectStart; /* 0x250 */
	int        SelectEnd;
	int        field_0x258;
	bool32_t   editable;
	bool       MaskedText; /* 0x260 */
	char16_t   text[0x100];
	uint32_t   field_0x464;

	// Override methods

	// BW1W120 0040c500 BW1M119 0142e440
	virtual void SetFocus(bool focus);
	// BW1W120 0040c580 BW1M119 013fb450
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040c150 BW1M119 01368600
	virtual void Drag(int x, int y);
	// BW1W120 0040c170 BW1M119 014f1f60
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 0040c1a0 BW1M119 01439aa0
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 0040baf0 BW1M119 0111c4d0
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 0040b5f0 BW1M119 01171680
	virtual void Char(int character);
	// BW1W120 0040c560 BW1M119 01431960
	virtual ~SetupEdit();

	// Constructors

	// BW1W120 0040c220 BW1M119 01154d10
	SetupEdit(int id, int x, int y, int width, int height, const char16_t* label, bool editable);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void ClampCursor();
	// BW1W120 inlined BW1M119 inlined
	void FixCursor();
	// BW1W120 inlined BW1M119 inlined
	void FixSelect();
	// BW1W120 0040c090 BW1M119 013e1d10
	int CalcCharpos(int pos);
};

#endif /* BW1_DECOMP_SETUP_EDIT_INCLUDED_H */
