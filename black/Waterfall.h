#ifndef BW1_DECOMP_WATERFALL_INCLUDED_H
#define BW1_DECOMP_WATERFALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "Object.h" /* For struct Object */

struct GWaterfall
{
  struct Object super;  /* 0x0 */
  uint8_t field_0x54[0x4];
};
static_assert(sizeof(struct GWaterfall) == 0x58, "Data type is of wrong size");

// win1.41 008ec148 mac 1075d4a0 GWaterfall::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10GWaterfall asm("??_R4GWaterfall@@6B@");

// win1.41 008ec14c mac 1075d4a8 GWaterfall::`vftable'
extern const struct ObjectVftable __vt__10GWaterfall asm("??_7GWaterfall@@6B@");

DECLARE_LH_LIST_HEAD(GWaterfall);

#endif /* BW1_DECOMP_WATERFALL_INCLUDED_H */
