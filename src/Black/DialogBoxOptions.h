#ifndef BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class DialogBoxImmersion;
class MiniDialogBoxOptions;
class SetupBigButton;
class SetupButton;
class SetupCheckBox;
class SetupSlider;

class DialogBoxOptions: public DialogBoxBase
{
public:
    SetupButton* field_0x10;
    SetupBigButton* field_0x14;
    SetupBigButton* field_0x18;
    SetupButton* field_0x1c;
    SetupBigButton* field_0x20;
    SetupBigButton* field_0x24;
    SetupBigButton* field_0x28;
    SetupBigButton* field_0x2c;
    SetupBigButton* field_0x30;
    SetupCheckBox* field_0x34;
    SetupCheckBox* field_0x38;
    SetupCheckBox* field_0x3c;
    SetupSlider* field_0x40;
    SetupBigButton* field_0x44;
    int field_0x48;
    int field_0x4c;
    int field_0x50;
    uint32_t* field_0x54;
    uint32_t field_0x58;
    uint32_t field_0x5c;
    MiniDialogBoxOptions* mini; /* 0x60 */
    DialogBoxImmersion* immersion;

    // Override methods

    // BW1W120 00513860 BW1M100 102b5130 DialogBoxOptions::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // BW1W120 00513da0 BW1M100 102b50c0 DialogBoxOptions::Destroy(void)
    virtual void Destroy();
    // BW1W120 00513830 BW1M100 102b5900 DialogBoxOptions::CanESCOut(void)
    virtual bool CanESCOut();
    // BW1W120 00513dc0 BW1M100 102b4ff0 DialogBoxOptions::InitControls(void)
    virtual void InitControls();

    // Constructors

    // BW1W120 00513810 BW1M100 102b5740 DialogBoxOptions::DialogBoxOptions(void)
    DialogBoxOptions();
};

#endif /* BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H */
