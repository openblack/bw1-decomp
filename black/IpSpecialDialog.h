#ifndef BW1_DECOMP_IP_SPECIAL_DIALOG_INCLUDED_H
#define BW1_DECOMP_IP_SPECIAL_DIALOG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct IPSpecialDialog
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct IPSpecialDialog) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 005dd4a0 mac 100fdfa0 IPSpecialDialog::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__15IPSpecialDialogFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@IPSpecialDialog@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 005dd620 mac 100fdf50 IPSpecialDialog::Destroy(void)
void __fastcall Destroy__15IPSpecialDialogFv(struct DialogBoxBase* this) asm("?Destroy@IPSpecialDialog@@UAEXXZ");

#endif /* BW1_DECOMP_IP_SPECIAL_DIALOG_INCLUDED_H */
