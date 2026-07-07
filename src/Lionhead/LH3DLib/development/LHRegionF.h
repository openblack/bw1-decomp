#ifndef BW1_DECOMP_LH_REGION_F_INCLUDED_H
#define BW1_DECOMP_LH_REGION_F_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHCoordF.h" /* For struct LHCoordF */

struct LHRegionF
{
  struct LHCoordF start;  /* 0x0 */
  struct LHCoordF end;

  // Non-virtual methods

  // BW1W120 007deb70 LHRegionF::CoordInRegion(LHCoordF const &) const
  int CoordInRegion(const LHCoordF& coord) const;
  // BW1W120 007debc0 LHRegionF::CentreCoord(LHCoordF *) const
  void CentreCoord(LHCoordF* out) const;
  // BW1W120 007dec00 LHRegionF::BoundWithRegion(LHRegionF *)
  void BoundWithRegion(LHRegionF* other);
};
static_assert(sizeof(LHRegionF) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_REGION_F_INCLUDED_H */
