#ifndef BW1_DECOMP_DIALOG_BOX_SAVE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_SAVE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupButton;
class SetupEdit;
class SetupStaticText;

class DialogBoxSaveMessage : public DialogBoxBase
{
public:
	SetupButton*     field_0x10;
	SetupButton*     field_0x14;
	SetupEdit*       field_0x18;
	SetupStaticText* field_0x1c;
	bool             field_0x20;

	// Override methods

	// BW1W120 005159d0 BW1M119 012b9670
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00515b80 BW1M119 012b9610
	virtual void Destroy();
	// Ninth vtable slot at 008d86b8.
	// BW1W120 00515b90 BW1M119 012b94c0
	virtual void InitControls();

	// Constructors

	// BW1W120 00515990 BW1M119 012b99d0
	DialogBoxSaveMessage();
	// Nonvirtual; implementation remains extracted.
	// BW1W120 005159c0 BW1M119 012b9930
	~DialogBoxSaveMessage();
	// BW1W120 00515cb0 BW1M119 012b9290
	static void __stdcall ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y);
};

static_assert(sizeof(DialogBoxSaveMessage) == 0x24, "DialogBoxSaveMessage size is incorrect");

#endif /* BW1_DECOMP_DIALOG_BOX_SAVE_MESSAGE_INCLUDED_H */
