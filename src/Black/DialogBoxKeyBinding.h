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

	// BW1W120 005129d0 BW1M100 102b18f0 DialogBoxKeyBinding::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00512bc0 BW1M100 102b1890 DialogBoxKeyBinding::Destroy(void)
	virtual void Destroy();
	// BW1W120 00512bd0 BW1M100 102b1750 DialogBoxKeyBinding::InitControls(void)
	virtual void InitControls();

	// Constructors

	// BW1W120 005127b0 BW1M100 102b1e90 DialogBoxKeyBinding::DialogBoxKeyBinding(void)
	DialogBoxKeyBinding();
	// BW1W120 00512820. Nonvirtual; implementation remains extracted.
	~DialogBoxKeyBinding();
	// BW1W120 00512cc0 BW1M100 102b0ff0
	static void __stdcall ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y);
};

static_assert(sizeof(DialogBoxKeyBinding) == 0x1c, "DialogBoxKeyBinding size is incorrect");

#endif /* BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H */
