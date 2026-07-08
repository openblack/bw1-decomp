#ifndef BW1_DECOMP_SETUP_CONTROL_INCLUDED_H
#define BW1_DECOMP_SETUP_CONTROL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupRect.h" /* For struct SetupRect */

// Forward Declares

class SetupBox;

class SetupControl
{
public:
	uint32_t        field_0x4;
	SetupRect       rect;
	int             id; /* 0x18 */
	int             field_0x1c;
	int             text_size; /* 0x20 */
	char16_t        label[0x100];
	const char16_t* tooltip; /* 0x224 */
	bool            focus;
	bool            hidden;
	bool            field_0x22a;
	bool            field_0x22b;
	uint32_t        field_0x22c;
	SetupControl*   next; /* 0x230 */
	SetupBox*       setup_box;
	void*           ContinueButtonCallback;

	// Override methods

	// BW1W120 00409300 BW1M100 105a3830 SetupControl::Hide(bool)
	virtual void Hide(bool hidden);
	// BW1W120 00409180 BW1M100 1032c7e0 SetupControl::SetFocus(bool)
	virtual void SetFocus(bool focus);
	// BW1W120 00409310 BW1M100 10310540 SetupControl::HitTest(int, int)
	virtual bool HitTest(int x, int y);
	// BW1W120 00409340 BW1M100 inlined SetupControl::Drag(int, int)
	virtual void Drag(int x, int y);
	// BW1W120 00409350 BW1M100 100a6190 SetupControl::MouseDown(int, int, bool)
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 00409360 BW1M100 104faf30 SetupControl::MouseUp(int, int, bool)
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 00409370 BW1M100 103e3120 SetupControl::Click(int, int)
	virtual void Click(int x, int y);
	// BW1W120 00409380 BW1M100 100d4e40 SetupControl::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 00409390 BW1M100 105049b0 SetupControl::Char(int)
	virtual void Char(int character);
	// BW1W120 004093a0 BW1M100 100c48e0 SetupControl::~SetupControl(bool)
	virtual ~SetupControl();

	// Constructors

	// BW1W120 00409250 BW1M100 101668d0 SetupControl::SetupControl(int, int, int, int, int, wchar_t *)
	SetupControl(int id, int x, int y, int width, int height, const char16_t* label);

	// Non-virtual Destructors

	// BW1W120 004093c0 BW1M100 inlined SetupControl::~SetupControl(void)
	~SetupControl();

	// Non-virtual methods

	// BW1W120 inlined BW1M100 inlined SetupControl::GetTextSize(void)
	int GetTextSize();
	// BW1W120 00409210 BW1M100 1057a320 SetupControl::SetToolTip(unsigned long)
	void SetToolTip(uint32_t tooltip_id);
	// BW1W120 004092f0 BW1M100 100c4fd0 SetupControl::SetToolTip(wchar_t *)
	void SetToolTip(const char16_t* tooltip);
};

#endif /* BW1_DECOMP_SETUP_CONTROL_INCLUDED_H */
