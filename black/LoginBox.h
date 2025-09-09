#ifndef BW1_DECOMP_LOGIN_BOX_INCLUDED_H
#define BW1_DECOMP_LOGIN_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct LoginBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x88c];
};
static_assert(sizeof(struct LoginBox) == 0x89c, "Data type is of wrong size");

// win1.41 008dec94 mac 109ed794 LoginBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8LoginBox asm("??_R4LoginBox@@6B@");

// win1.41 008dec98 mac 109ed79c LoginBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__8LoginBox asm("??_7LoginBox@@6B@");

// Constructors

// win1.41 00540260 mac inlined LoginBox::LoginBox(void)
struct LoginBox* __fastcall __ct__8LoginBoxFv(struct LoginBox* this);

// Override methods
// win1.41 00541040 mac 105beb60 LoginBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__8LoginBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__cdecl* param_3)(int32_t param_1, struct SetupBox * param_2, struct SetupControl * param_3, int32_t param_4, int32_t param_5)) asm("?Init@LoginBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 005417f0 mac 105beb30 LoginBox::Destroy(void)
void __fastcall Destroy__8LoginBoxFv(struct DialogBoxBase* this) asm("?Destroy@LoginBox@@UAEXXZ");

#endif /* BW1_DECOMP_LOGIN_BOX_INCLUDED_H */
