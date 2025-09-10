#ifndef BW1_DECOMP_LOADING_BOX_INCLUDED_H
#define BW1_DECOMP_LOADING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct LoadingBox
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct LoadingBox) == 0x10, "Data type is of wrong size");

// win1.41 008deb50 mac 109ed8d4 LoadingBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10LoadingBox asm("??_R4LoadingBox@@6B@");

// win1.41 008deb54 mac 109ed8dc LoadingBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__10LoadingBox asm("??_7LoadingBox@@6B@");

// Override methods

// win1.41 0053d4c0 mac 105c34f0 LoadingBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__10LoadingBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__cdecl* param_3)(int32_t param_1, struct SetupBox * param_2, struct SetupControl * param_3, int32_t param_4, int32_t param_5)) asm("?Init@LoadingBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0053d4f0 mac 105c3490 LoadingBox::Destroy(void)
void __fastcall Destroy__10LoadingBoxFv(struct DialogBoxBase* this) asm("?Destroy@LoadingBox@@UAEXXZ");
// win1.41 0053d500 mac 105c3450 LoadingBox::InitControls(void)
void __fastcall InitControls__10LoadingBoxFv(struct DialogBoxBase* this) asm("?InitControls@LoadingBox@@UAEXXZ");

#endif /* BW1_DECOMP_LOADING_BOX_INCLUDED_H */
