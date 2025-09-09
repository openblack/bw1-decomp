#ifndef BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H
#define BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct NewProfileBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x14];
};
static_assert(sizeof(struct NewProfileBox) == 0x24, "Data type is of wrong size");

// win1.41 008dec18 mac 109ed914 NewProfileBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__13NewProfileBox asm("??_R4NewProfileBox@@6B@");

// win1.41 008dec1c mac 109ed91c NewProfileBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__13NewProfileBox asm("??_7NewProfileBox@@6B@");

// Override methods

// win1.41 0053ce80 mac 105c3a30 NewProfileBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__13NewProfileBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@NewProfileBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0053d150 mac 105c39d0 NewProfileBox::Destroy(void)
void __fastcall Destroy__13NewProfileBoxFv(struct DialogBoxBase* this) asm("?Destroy@NewProfileBox@@UAEXXZ");
// win1.41 0053bd10 mac 105c5f90 NewProfileBox::CanESCOut(void)
bool __fastcall CanESCOut__13NewProfileBoxFv(struct DialogBoxBase* this) asm("?CanESCOut@NewProfileBox@@UAE_NXZ");
// win1.41 0053d160 mac 105c3890 NewProfileBox::InitControls(void)
void __fastcall InitControls__13NewProfileBoxFv(struct DialogBoxBase* this) asm("?InitControls@NewProfileBox@@UAEXXZ");

#endif /* BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H */
