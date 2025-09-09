#ifndef BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H
#define BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SetupOnlineLandscapes
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct SetupOnlineLandscapes) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 00547ff0 mac 105cbb10 SetupOnlineLandscapes::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__21SetupOnlineLandscapesFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__cdecl* param_3)(int32_t param_1, struct SetupBox * param_2, struct SetupControl * param_3, int32_t param_4, int32_t param_5)) asm("?Init@SetupOnlineLandscapes@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 005482a0 mac 105cbaa0 SetupOnlineLandscapes::Destroy(void)
void __fastcall Destroy__21SetupOnlineLandscapesFv(struct DialogBoxBase* this) asm("?Destroy@SetupOnlineLandscapes@@UAEXXZ");
// win1.41 00549910 mac 105c9f10 SetupOnlineLandscapes::Show(void)
void __fastcall Show__21SetupOnlineLandscapesFv(struct DialogBoxBase* this) asm("?Show@SetupOnlineLandscapes@@UAEXXZ");
// win1.41 005482b0 mac 105cba40 SetupOnlineLandscapes::InitControls(void)
void __fastcall InitControls__21SetupOnlineLandscapesFv(struct DialogBoxBase* this) asm("?InitControls@SetupOnlineLandscapes@@UAEXXZ");

#endif /* BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H */
