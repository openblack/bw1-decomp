#ifndef BW1_DECOMP_REGISTER_BOX_INCLUDED_H
#define BW1_DECOMP_REGISTER_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct RegisterBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x18];
};
static_assert(sizeof(struct RegisterBox) == 0x28, "Data type is of wrong size");

// win1.41 008debc8 mac 109ed854 RegisterBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__11RegisterBox asm("??_R4RegisterBox@@6B@");

// win1.41 008debcc mac 109ed85c RegisterBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__11RegisterBox asm("??_7RegisterBox@@6B@");

// Override methods

// win1.41 0053d7d0 mac 105c2d30 RegisterBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__11RegisterBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@RegisterBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0053db00 mac 105c2cd0 RegisterBox::Destroy(void)
void __fastcall Destroy__11RegisterBoxFv(struct DialogBoxBase* this) asm("?Destroy@RegisterBox@@UAEXXZ");
// win1.41 0053db10 mac 105c2bd0 RegisterBox::InitControls(void)
void __fastcall InitControls__11RegisterBoxFv(struct DialogBoxBase* this) asm("?InitControls@RegisterBox@@UAEXXZ");

#endif /* BW1_DECOMP_REGISTER_BOX_INCLUDED_H */
