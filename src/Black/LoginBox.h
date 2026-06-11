#ifndef BW1_DECOMP_LOGIN_BOX_INCLUDED_H
#define BW1_DECOMP_LOGIN_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class LoginBox: public DialogBoxBase
{
public:
    uint8_t field_0x10[0x88c];

    // Override methods

    // win1.41 00541040 mac 105beb60 LoginBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 005417f0 mac 105beb30 LoginBox::Destroy(void)
    virtual void Destroy();

    // Constructors

    // win1.41 00540260 mac inlined LoginBox::LoginBox(void)
    LoginBox();
};

#endif /* BW1_DECOMP_LOGIN_BOX_INCLUDED_H */
