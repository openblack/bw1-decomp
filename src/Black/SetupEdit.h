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

	// BW1W120 0040c500 BW1M100 100c1900 SetupEdit::SetFocus(bool)
	virtual void SetFocus(bool focus);
	// BW1W120 0040c580 BW1M100 1055c840 SetupEdit::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040c150 BW1M100 103dc010 SetupEdit::Drag(int, int)
	virtual void Drag(int x, int y);
	// BW1W120 0040c170 BW1M100 10430180 SetupEdit::MouseDown(int, int, bool)
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 0040c1a0 BW1M100 101178b0 SetupEdit::MouseUp(int, int, bool)
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 0040baf0 BW1M100 103813a0 SetupEdit::KeyDown(int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 0040b5f0 BW1M100 103e3630 SetupEdit::Char(int)
	virtual void Char(int character);
	// BW1W120 0040c560 BW1M100 1035a3a0 SetupEdit::~SetupEdit(void)
	virtual ~SetupEdit();

	// Constructors

	// BW1W120 0040c220 BW1M100 101bc370 SetupEdit::SetupEdit(int, int, int, int, int, wchar_t *, int)
	SetupEdit(int id, int x, int y, int width, int height, const char16_t* label, bool editable);

	// Non-virtual methods

	// BW1W120 inlined BW1M100 inlined SetupEdit::ClampCursor(void)
	void ClampCursor();
	// BW1W120 inlined BW1M100 inlined SetupEdit::FixCursor(void)
	void FixCursor();
	// BW1W120 inlined BW1M100 inlined SetupEdit::FixSelect(void)
	void FixSelect();
	// BW1W120 0040c090 BW1M100 103dc2c0 SetupEdit::CalcCharpos(int)
	int CalcCharpos(int pos);
};

#endif /* BW1_DECOMP_SETUP_EDIT_INCLUDED_H */
