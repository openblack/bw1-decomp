#ifndef BW1_DECOMP_STREET_LANTERN_INCLUDED_H
#define BW1_DECOMP_STREET_LANTERN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "Object.h" /* For struct Object */

struct GStreetLantern
{
  struct Object super;  /* 0x0 */
  uint8_t field_0x54[0x10];
};
static_assert(sizeof(struct GStreetLantern) == 0x64, "Data type is of wrong size");

static struct ObjectVftable* const __vt__14GStreetLantern = (struct ObjectVftable* const)0x008ea8d8;

DECLARE_LH_LIST_HEAD(GStreetLantern);

#endif /* BW1_DECOMP_STREET_LANTERN_INCLUDED_H */
