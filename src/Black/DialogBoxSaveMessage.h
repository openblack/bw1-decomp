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

	// BW1W120 005159d0 BW1M100 102b5db0 DialogBoxSaveMessage::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00515b80 BW1M100 102b5d50 DialogBoxSaveMessage::Destroy(void)
	virtual void Destroy();
	// BW1W120 00515b90. Ninth vtable slot at 008d86b8.
	virtual void InitControls();

	// Constructors

	// BW1W120 00515990 BW1M100 102b6020 DialogBoxSaveMessage::DialogBoxSaveMessage(void)
	DialogBoxSaveMessage();
	// BW1W120 005159c0. Nonvirtual; implementation remains extracted.
	~DialogBoxSaveMessage();
	// BW1W120 00515cb0 BW1M100 102b5960
	static void __stdcall ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y);
};

static_assert(sizeof(DialogBoxSaveMessage) == 0x24, "DialogBoxSaveMessage size is incorrect");

#endif /* BW1_DECOMP_DIALOG_BOX_SAVE_MESSAGE_INCLUDED_H */
