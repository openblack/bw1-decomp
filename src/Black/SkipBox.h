#ifndef BW1_DECOMP_SKIP_BOX_INCLUDED_H
#define BW1_DECOMP_SKIP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SkipBox: public DialogBoxBase
{
public:
    uint8_t field_0x10[0x14];

    // Override methods

    // BW1W120 005441c0 BW1M100 105bb390 SkipBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // BW1W120 00544430 BW1M100 105bb330 SkipBox::Destroy(void)
    virtual void Destroy();
    // BW1W120 0053bd60 BW1M100 105c5e80 SkipBox::CanESCOut(void)
    virtual bool CanESCOut();
    // BW1W120 00544440 BW1M100 105bb270 SkipBox::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_SKIP_BOX_INCLUDED_H */
