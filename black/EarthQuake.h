#ifndef BW1_DECOMP_EARTH_QUAKE_INCLUDED_H
#define BW1_DECOMP_EARTH_QUAKE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

struct EarthQuake
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct EarthQuake) == 0x1, "Data type is of wrong size");

DECLARE_LH_LIST_HEAD(EarthQuake);

#endif /* BW1_DECOMP_EARTH_QUAKE_INCLUDED_H */
