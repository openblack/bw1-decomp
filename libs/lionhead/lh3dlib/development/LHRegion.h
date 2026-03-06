#ifndef BW1_DECOMP_LH_REGION_INCLUDED_H
#define BW1_DECOMP_LH_REGION_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHCoord.h" /* For struct LHCoord */

struct LHRegion
{
  struct LHCoord start;  /* 0x0 */
  struct LHCoord end;
};

#endif /* BW1_DECOMP_LH_REGION_INCLUDED_H */
