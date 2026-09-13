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
	// BW1W120 00d189c8. Descriptive singleton name.
	static IPSpecialDialog* Instance;
	int                     field_0x10;
	SetupButton*            field_0x14;
	SetupButton*            field_0x18;
	SetupEdit*              field_0x1c;
	SetupStaticText*        field_0x20;
	bool                    field_0x24;

	// BW1W120 005dd460 BW1M100 100fe200
	IPSpecialDialog();
	// BW1W120 005dd490. Nonvirtual; implementation remains extracted.
	~IPSpecialDialog();
	// BW1W120 005dd670 BW1M100 100fd680
	static void __stdcall ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y);
	// Override methods

	// BW1W120 005dd4a0 BW1M100 100fdfa0 IPSpecialDialog::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005dd620 BW1M100 100fdf50 IPSpecialDialog::Destroy(void)
	virtual void Destroy();
	// BW1W120 005dd630 BW1M100 100fdeb0. Ninth vtable slot.
	virtual void InitControls();
};

static_assert(sizeof(IPSpecialDialog) == 0x28, "IPSpecialDialog size is incorrect");

#endif /* BW1_DECOMP_IP_SPECIAL_DIALOG_INCLUDED_H */
