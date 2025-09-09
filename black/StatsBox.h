#ifndef BW1_DECOMP_STATS_BOX_INCLUDED_H
#define BW1_DECOMP_STATS_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct StatsBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x64];
};
static_assert(sizeof(struct StatsBox) == 0x74, "Data type is of wrong size");

// win1.41 008dea10 mac 1099add0 StatsBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8StatsBox asm("??_R4StatsBox@@6B@");

// win1.41 008dea14 mac 1099add8 StatsBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__8StatsBox asm("??_7StatsBox@@6B@");

// Override methods

// win1.41 0056d370 mac 1031d8a0 StatsBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__8StatsBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@StatsBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0056d980 mac 1031d840 StatsBox::Destroy(void)
void __fastcall Destroy__8StatsBoxFv(struct DialogBoxBase* this) asm("?Destroy@StatsBox@@UAEXXZ");
// win1.41 0056d990 mac 1031d780 StatsBox::InitControls(void)
void __fastcall InitControls__8StatsBoxFv(struct DialogBoxBase* this) asm("?InitControls@StatsBox@@UAEXXZ");

#endif /* BW1_DECOMP_STATS_BOX_INCLUDED_H */
