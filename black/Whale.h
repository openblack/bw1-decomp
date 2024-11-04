#ifndef BW1_DECOMP_WHALE_INCLUDED_H
#define BW1_DECOMP_WHALE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "MobileObject.h" /* For struct MobileObject */

struct Whale
{
  struct MobileObject super;  /* 0x0 */
  uint8_t field_0x68[0xc];
};
static_assert(sizeof(struct Whale) == 0x74, "Data type is of wrong size");

static struct MobileObjectVftable* const __vt__5Whale = (struct MobileObjectVftable* const)0x008febec;

DECLARE_LH_LIST_HEAD(Whale);

#endif /* BW1_DECOMP_WHALE_INCLUDED_H */
