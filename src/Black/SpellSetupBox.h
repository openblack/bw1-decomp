#ifndef BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H
#define BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SpellSetupBox: public DialogBoxBase
{
public:

    // Override methods

    // win1.41 00547970 mac 105cc310 SpellSetupBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 00547c30 mac 105cc2b0 SpellSetupBox::Destroy(void)
    virtual void Destroy();
    // win1.41 00547c40 mac 105cc120 SpellSetupBox::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H */
