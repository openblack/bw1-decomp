#ifndef BW1_DECOMP_ALIGNMENT_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct GAlignment
{
  struct Base super;  /* 0x0 */
  float value;
  float field_0xc;
};
static_assert(sizeof(struct GAlignment) == 0x10, "Data type is of wrong size");

// win1.41 008cc7ec mac 1077e184 GAlignment::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10GAlignment asm("??_R4GAlignment@@6B@");

// win1.41 008cc7f0 mac 1077e18c GAlignment::`vftable'
extern const struct BaseVftable __vt__10GAlignment asm("??_7GAlignment@@6B@");

// Override methods

// win1.41 004740e0 mac 101debf0 GAlignment::_dt(void)
void __fastcall __dt__10GAlignmentFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGAlignment@@UAEPAXI@Z");

#endif /* BW1_DECOMP_ALIGNMENT_INCLUDED_H */
