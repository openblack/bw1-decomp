#ifndef BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H
#define BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class MultiplayerConditionBox: public DialogBoxBase
{
public:
    uint8_t field_0x10[0x2c];

    // Override methods

    // BW1W120 0056eef0 BW1M100 inlined MultiplayerConditionBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // BW1W120 0056f260 BW1M100 inlined MultiplayerConditionBox::Destroy(void)
    virtual void Destroy();
    // BW1W120 0056f460 BW1M100 inlined MultiplayerConditionBox::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H */
