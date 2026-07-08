#ifndef BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H
#define BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */

enum BINDABLE_ACTIONS
{
	BINDABLE_ACTION_0x00 = 0x0,
	BINDABLE_ACTION_0x01 = 0x1,
	BINDABLE_ACTION_0x02 = 0x2,
	BINDABLE_ACTION_0x03 = 0x3,
	BINDABLE_ACTION_0x04 = 0x4,
	BINDABLE_ACTION_0x05 = 0x5,
	BINDABLE_ACTION_0x06 = 0x6,
	BINDABLE_ACTION_0x07 = 0x7,
	BINDABLE_ACTION_0x08 = 0x8,
	BINDABLE_ACTION_0x09 = 0x9,
	BINDABLE_ACTION_0x0a = 0xa,
	BINDABLE_ACTION_0x0b = 0xb,
	BINDABLE_ACTION_0x0c = 0xc,
	BINDABLE_ACTION_0x0d = 0xd,
	BINDABLE_ACTION_0x0e = 0xe,
	BINDABLE_ACTION_0x0f = 0xf,
	BINDABLE_ACTION_0x10 = 0x10,
	BINDABLE_ACTION_0x11 = 0x11,
	BINDABLE_ACTION_0x12 = 0x12,
	BINDABLE_ACTION_0x13 = 0x13,
	BINDABLE_ACTION_0x14 = 0x14,
	BINDABLE_ACTION_0x15 = 0x15,
	BINDABLE_ACTION_0x16 = 0x16,
	BINDABLE_ACTION_0x17 = 0x17,
	BINDABLE_ACTION_0x18 = 0x18,
	BINDABLE_ACTION_0x19 = 0x19,
	BINDABLE_ACTION_0x1a = 0x1a,
	BINDABLE_ACTION_0x1b = 0x1b,
	BINDABLE_ACTION_0x1c = 0x1c,
	BINDABLE_ACTION_0x1d = 0x1d,
	BINDABLE_ACTION_0x1e = 0x1e,
	BINDABLE_ACTION_0x1f = 0x1f,
	BINDABLE_ACTION_0x20 = 0x20,
	_BINDABLE_ACTION_SIZE = 0x21,
	_BINDABLE_ACTIONS_COUNT = 0x22
};

struct CMouse
{
	uint32_t field_0x0;

	// Non-virtual methods

	// BW1W120 0061a150 BW1M100 10090d20 CMouse::ProcessButtons(void)
	void ProcessButtons();
	// BW1W120 0061a110 BW1M100 10007d80 CMouse::ProcessPosition(void)
	void ProcessPosition();
};

struct ControlKey
{
	LH_KEY   key; /* 0x0 */
	char16_t key_display_text[0x40];
	LH_KEY   keymod; /* 0x84 */
	char16_t keymod_display_text[0x40];

	// Non-virtual methods

	// BW1W120 0046efe0 BW1M100 inlined ControlKey::GetDisplayText(wchar_t*)
	void GetDisplayText(char16_t* out_text);
};

struct ControlMouse
{
	uint32_t code; /* 0x0 */
	char16_t display_text[0x80];

	// Non-virtual methods

	// BW1W120 0046f180 BW1M100 101cc260 ControlMouse::GetDisplayText(wchar_t*)
	void GetDisplayText(char16_t* out_text);
};

struct BindableAction
{
	char16_t     name[0x80]; /* 0x0 */
	ControlKey   key;        /* 0x100 */
	ControlMouse mouse;      /* 0x208 */

	// Static methods

	// BW1W120 0046f3c0 BW1M100 10090c30 BindableAction::IsKeyDown(LH_KEY)
	static bool IsKeyDown(LH_KEY key);

	// Constructors

	// BW1W120 0046f1a0 BW1M100 101cc4d0 BindableAction::BindableAction(void)
	BindableAction();

	// Non-virtual methods

	// BW1W120 0046f4c0 BW1M100 10090b80 BindableAction::IsKeyBeingPressed(void)
	bool IsKeyBeingPressed();
};

#endif /* BW1_DECOMP_BINDABLE_ACTION_INCLUDED_H */
