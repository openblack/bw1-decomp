#ifndef BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H
#define BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupSlider;
struct SetupStaticText;

class MiniDialogBoxOptions : public DialogBoxBase
{
public:
	SetupSlider*     field_0x10;
	SetupSlider*     field_0x14;
	SetupBigButton*  field_0x18;
	SetupBigButton*  field_0x1c;
	SetupBigButton*  field_0x20;
	SetupBigButton*  field_0x24;
	SetupStaticText* field_0x28;
	SetupStaticText* field_0x2c;
	SetupStaticText* field_0x30;
	SetupCheckBox*   field_0x34;
	SetupCheckBox*   field_0x38;
	uint32_t         field_0x3c;
	uint32_t         field_0x40;
	SetupButton*     field_0x44;

	// Override methods

	// BW1W120 00514f50 BW1M119 012b5bd0
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00515680 BW1M119 012b5b70
	virtual void Destroy();
	// BW1W120 00515810 BW1M119 012b5880
	virtual bool CanESCOut();
	// BW1W120 00515690 BW1M119 012b58e0
	virtual void InitControls();

	// Constructors

	// BW1W120 00514f20 BW1M119 inlined
	MiniDialogBoxOptions();
};

#endif /* BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H */
