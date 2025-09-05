#ifndef BW1_DECOMP_WHALE_INCLUDED_H
#define BW1_DECOMP_WHALE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "MobileObject.h" /* For struct MobileObject */

struct Whale
{
  struct MobileObject super;  /* 0x0 */
  uint8_t field_0x68[0xc];
};
static_assert(sizeof(struct Whale) == 0x74, "Data type is of wrong size");

// win1.41 008febe8 mac 1075fc5c Whale::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__5Whale asm("??_R4Whale@@6B@");

// win1.41 008febec mac 1075fc64 Whale::`vftable'
extern const struct MobileObjectVftable __vt__5Whale asm("??_7Whale@@6B@");

DECLARE_LH_LIST_HEAD(Whale);

#endif /* BW1_DECOMP_WHALE_INCLUDED_H */
