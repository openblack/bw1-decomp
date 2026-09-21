#ifndef BW1_DECOMP_IP_SPECIAL_DIALOG_INCLUDED_H
#define BW1_DECOMP_IP_SPECIAL_DIALOG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupButton;
class SetupEdit;
class SetupStaticText;

class IPSpecialDialog : public DialogBoxBase
{
public:
	// Descriptive singleton name.
	// BW1W120 00d189c8
	static IPSpecialDialog* Instance;
	int                     field_0x10;
	SetupButton*            field_0x14;
	SetupButton*            field_0x18;
	SetupEdit*              field_0x1c;
	SetupStaticText*        field_0x20;
	bool                    field_0x24;

	// BW1W120 005dd460 BW1M119 01107f20
	IPSpecialDialog();
	// Nonvirtual; implementation remains extracted.
	// BW1W120 005dd490 BW1M119 01107e90
	~IPSpecialDialog();
	// BW1W120 005dd670 BW1M119 01107380
	static void __stdcall ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y);
	// Override methods

	// BW1W120 005dd4a0 BW1M119 01107cc0
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005dd620 BW1M119 01107c70
	virtual void Destroy();
	// Ninth vtable slot.
	// BW1W120 005dd630 BW1M119 01107bd0
	virtual void InitControls();
};

static_assert(sizeof(IPSpecialDialog) == 0x28, "IPSpecialDialog size is incorrect");

#endif /* BW1_DECOMP_IP_SPECIAL_DIALOG_INCLUDED_H */
