#ifndef BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H
#define BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class ProfileEditor: public DialogBoxBase
{
public:
    uint8_t field_0x10[0x48];

    // Override methods

    // BW1W120 0053dd30 BW1M100 105c2560 ProfileEditor::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // BW1W120 0053e210 BW1M100 105c2500 ProfileEditor::Destroy(void)
    virtual void Destroy();
    // BW1W120 0053bd30 BW1M100 105c5f30 ProfileEditor::CanESCOut(void)
    virtual bool CanESCOut();
    // BW1W120 0053e380 BW1M100 105c2140 ProfileEditor::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H */
