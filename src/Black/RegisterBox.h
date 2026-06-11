#ifndef BW1_DECOMP_REGISTER_BOX_INCLUDED_H
#define BW1_DECOMP_REGISTER_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class RegisterBox: public DialogBoxBase
{
public:
    uint8_t field_0x10[0x18];

    // Override methods

    // win1.41 0053d7d0 mac 105c2d30 RegisterBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 0053db00 mac 105c2cd0 RegisterBox::Destroy(void)
    virtual void Destroy();
    // win1.41 0053db10 mac 105c2bd0 RegisterBox::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_REGISTER_BOX_INCLUDED_H */
