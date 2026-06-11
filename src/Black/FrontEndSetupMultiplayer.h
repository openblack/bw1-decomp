#ifndef BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H
#define BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupLandscapeBox: public DialogBoxBase
{
public:

    // Override methods

    // win1.41 00546280 mac 105cd3c0 SetupLandscapeBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 00546d10 mac 105cd360 SetupLandscapeBox::Destroy(void)
    virtual void Destroy();
    // win1.41 0054a210 mac 105cdd70 SetupLandscapeBox::InitSubDialogs(void)
    virtual void InitSubDialogs();
    // win1.41 00546d20 mac 105cce40 SetupLandscapeBox::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H */
