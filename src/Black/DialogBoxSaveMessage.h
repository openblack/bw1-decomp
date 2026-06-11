#ifndef BW1_DECOMP_DIALOG_BOX_SAVE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_SAVE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class DialogBoxSaveMessage: public DialogBoxBase
{
public:
    uint32_t field_0x10;
    uint32_t field_0x14;
    uint32_t field_0x18;
    uint32_t field_0x1c;
    uint32_t field_0x20;

    // Override methods

    // win1.41 005159d0 mac 102b5db0 DialogBoxSaveMessage::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 00515b80 mac 102b5d50 DialogBoxSaveMessage::Destroy(void)
    virtual void Destroy();

    // Constructors

    // win1.41 00515990 mac 102b6020 DialogBoxSaveMessage::DialogBoxSaveMessage(void)
    DialogBoxSaveMessage();
};

#endif /* BW1_DECOMP_DIALOG_BOX_SAVE_MESSAGE_INCLUDED_H */
