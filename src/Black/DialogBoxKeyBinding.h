#ifndef BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class SetupList;

class DialogBoxKeyBinding: public DialogBoxBase
{
public:
    uint8_t field_0x10;
    uint8_t field_0x11;
    uint8_t field_0x12;
    uint8_t field_0x13;
    uint8_t field_0x14;
    uint8_t field_0x15;
    uint8_t field_0x16;
    uint8_t field_0x17;
    SetupList* list;

    // Override methods

    // win1.41 005129d0 mac 102b18f0 DialogBoxKeyBinding::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 00512bc0 mac 102b1890 DialogBoxKeyBinding::Destroy(void)
    virtual void Destroy();
    // win1.41 00512bd0 mac 102b1750 DialogBoxKeyBinding::InitControls(void)
    virtual void InitControls();

    // Constructors

    // win1.41 005127b0 mac 102b1e90 DialogBoxKeyBinding::DialogBoxKeyBinding(void)
    DialogBoxKeyBinding();
};

#endif /* BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H */
