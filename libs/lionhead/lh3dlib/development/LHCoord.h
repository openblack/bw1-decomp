#ifndef BW1_DECOMP_LH_COORD_INCLUDED_H
#define BW1_DECOMP_LH_COORD_INCLUDED_H

#include <assert.h> /* For static_assert */

struct LHCoord
{
  int x;  /* 0x0 */
  int y;
};
static_assert(sizeof(struct LHCoord) == 0x8, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac 1006ebc0 LHCoord::LHCoord(LHCoord const &)
void __fastcall __ct__7LHCoordFRC7LHCoord(struct LHCoord* this, const void* edx, const struct LHCoord* other);

#endif /* BW1_DECOMP_LH_COORD_INCLUDED_H */
