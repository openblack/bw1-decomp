#ifndef BW1_DECOMP_CD_BOX_INCLUDED_H
#define BW1_DECOMP_CD_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct CDBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x24];
};
static_assert(sizeof(struct CDBox) == 0x34, "Data type is of wrong size");

// win1.41 008deb00 mac 109ed714 CDBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__5CDBox asm("??_R4CDBox@@6B@");

// win1.41 008deb04 mac 109ed71c CDBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__5CDBox asm("??_7CDBox@@6B@");

// Override methods

// win1.41 00543d80 mac 105bb960 CDBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__5CDBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__cdecl* param_3)(int32_t param_1, struct SetupBox * param_2, struct SetupControl * param_3, int32_t param_4, int32_t param_5)) asm("?Init@CDBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00544040 mac 105bb910 CDBox::Destroy(void)
void __fastcall Destroy__5CDBoxFv(struct DialogBoxBase* this) asm("?Destroy@CDBox@@UAEXXZ");
// win1.41 00544050 mac 105bb850 CDBox::InitControls(void)
void __fastcall InitControls__5CDBoxFv(struct DialogBoxBase* this) asm("?InitControls@CDBox@@UAEXXZ");

#endif /* BW1_DECOMP_CD_BOX_INCLUDED_H */
