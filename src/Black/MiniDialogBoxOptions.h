#ifndef BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H
#define BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class SetupBigButton;
class SetupButton;
class SetupCheckBox;
class SetupSlider;
class SetupStaticText;

class MiniDialogBoxOptions: public DialogBoxBase
{
public:
    SetupSlider* field_0x10;
    SetupSlider* field_0x14;
    SetupBigButton* field_0x18;
    SetupBigButton* field_0x1c;
    SetupBigButton* field_0x20;
    SetupBigButton* field_0x24;
    SetupStaticText* field_0x28;
    SetupStaticText* field_0x2c;
    SetupStaticText* field_0x30;
    SetupCheckBox* field_0x34;
    SetupCheckBox* field_0x38;
    uint32_t field_0x3c;
    uint32_t field_0x40;
    SetupButton* field_0x44;

    // Override methods

    // BW1W120 00514f50 BW1M100 102b2b00 MiniDialogBoxOptions::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // BW1W120 00515680 BW1M100 102b2aa0 MiniDialogBoxOptions::Destroy(void)
    virtual void Destroy();
    // BW1W120 00515810 BW1M100 102b27a0 MiniDialogBoxOptions::CanESCOut(void)
    virtual bool CanESCOut();
    // BW1W120 00515690 BW1M100 102b2800 MiniDialogBoxOptions::InitControls(void)
    virtual void InitControls();

    // Constructors

    // BW1W120 00514f20 BW1M100 inlined MiniDialogBoxOptions::MiniDialogBoxOptions(void)
    MiniDialogBoxOptions();
};

#endif /* BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H */
