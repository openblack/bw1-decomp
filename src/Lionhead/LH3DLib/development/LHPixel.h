#ifndef BW1_DECOMP_LH_PIXEL_INCLUDED_H
#define BW1_DECOMP_LH_PIXEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

struct LHPixel
{
  uint32_t field_0x0;
};
static_assert(sizeof(struct LHPixel) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_PIXEL_INCLUDED_H */
