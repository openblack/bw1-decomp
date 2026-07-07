#ifndef BW1_DECOMP_LH_REGION_INCLUDED_H
#define BW1_DECOMP_LH_REGION_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHCoord.h" /* For struct LHCoord */

// Forward Declares

struct tagRECT;

struct LHRegion
{
  struct LHCoord start;  /* 0x0 */
  struct LHCoord end;

  // Non-virtual methods

  // BW1W120 007deab0 LHRegion::CoordInRegion(LHCoord const &) const
  int CoordInRegion(const LHCoord& coord) const;
  // BW1W120 007deae0 LHRegion::CentreCoord(LHCoord *) const
  void CentreCoord(LHCoord* out) const;
  // BW1W120 007deb20 LHRegion::BoundWithRegion(LHRegion *)
  void BoundWithRegion(LHRegion* other);
  // BW1W120 007ded80 LHRegion::GetRect(tagRECT *) const
  void GetRect(tagRECT* out) const;
};
static_assert(sizeof(LHRegion) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_REGION_INCLUDED_H */
