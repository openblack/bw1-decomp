#ifndef BW1_DECOMP_ALIGNMENT_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_INCLUDED_H

#include <assert.h> /* For static_assert */

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

#endif /* BW1_DECOMP_ALIGNMENT_INCLUDED_H */
