#ifndef BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class SetupList;
class SetupButton;
class SetupBigButton;

class DialogBoxKeyBinding : public DialogBoxBase
{
public:
	SetupButton*    field_0x10;
	SetupBigButton* field_0x14;
	SetupList*      list;

	// Override methods

	// BW1W120 005129d0 BW1M119 012b49d0
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00512bc0 BW1M119 012b4970
	virtual void Destroy();
	// BW1W120 00512bd0 BW1M119 012b4830
	virtual void InitControls();

	// Constructors

	// BW1W120 005127b0 BW1M119 012b4f70
	DialogBoxKeyBinding();
	// Nonvirtual; implementation remains extracted.
	// BW1W120 00512820 BW1M119 012b4ee0
	~DialogBoxKeyBinding();
	// BW1W120 00512cc0 BW1M119 012b40d0
	static void __stdcall ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y);
};

static_assert(sizeof(DialogBoxKeyBinding) == 0x1c, "DialogBoxKeyBinding size is incorrect");

#endif /* BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H */
