#ifndef BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SkirmishGameBox: public DialogBoxBase
{
public:
    uint8_t field_0x10[0x22c];

    // Override methods

    // win1.41 00544820 mac 105baab0 SkirmishGameBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 00544b90 mac 105ba740 SkirmishGameBox::Destroy(void)
    virtual void Destroy();
    // win1.41 00544bd0 mac 105ba3e0 SkirmishGameBox::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H */
