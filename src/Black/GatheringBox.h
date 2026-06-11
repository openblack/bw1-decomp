#ifndef BW1_DECOMP_GATHERING_BOX_INCLUDED_H
#define BW1_DECOMP_GATHERING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class GatheringBox: public DialogBoxBase
{
public:
    uint8_t field_0x10[0xe0];

    // Override methods

    // win1.41 00570e90 mac 10326ea0 GatheringBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 00572530 mac 103266d0 GatheringBox::Destroy(void)
    virtual void Destroy();
};

#endif /* BW1_DECOMP_GATHERING_BOX_INCLUDED_H */
