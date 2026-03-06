#ifndef BW1_DECOMP_LH3D_BOUNDING_BOX_INCLUDED_H
#define BW1_DECOMP_LH3D_BOUNDING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHPoint.h" /* For struct LHPoint */

struct LH3DBoundingBox
{
  uint32_t unknown;  /* 0x0 */
  struct LHPoint centre;
  struct LHPoint size;  /* 0x10 */
  float diagonal_length;
};

#endif /* BW1_DECOMP_LH3D_BOUNDING_BOX_INCLUDED_H */
