#ifndef BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H
#define BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
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

    // win1.41 00514f50 mac 102b2b00 MiniDialogBoxOptions::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 00515680 mac 102b2aa0 MiniDialogBoxOptions::Destroy(void)
    virtual void Destroy();
    // win1.41 00515810 mac 102b27a0 MiniDialogBoxOptions::CanESCOut(void)
    virtual bool CanESCOut();
    // win1.41 00515690 mac 102b2800 MiniDialogBoxOptions::InitControls(void)
    virtual void InitControls();

    // Constructors

    // win1.41 00514f20 mac inlined MiniDialogBoxOptions::MiniDialogBoxOptions(void)
    MiniDialogBoxOptions();
};

#endif /* BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H */
