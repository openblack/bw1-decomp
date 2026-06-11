#ifndef BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H
#define BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupOnlineLandscapes: public DialogBoxBase
{
public:

    // Override methods

    // win1.41 00547ff0 mac 105cbb10 SetupOnlineLandscapes::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 005482a0 mac 105cbaa0 SetupOnlineLandscapes::Destroy(void)
    virtual void Destroy();
    // win1.41 00549910 mac 105c9f10 SetupOnlineLandscapes::Show(void)
    virtual void Show();
    // win1.41 005482b0 mac 105cba40 SetupOnlineLandscapes::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H */
