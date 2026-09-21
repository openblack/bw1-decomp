#ifndef BW1_DECOMP_LH_REGION_F_INCLUDED_H
#define BW1_DECOMP_LH_REGION_F_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHCoordF.h" /* For struct LHCoordF */

struct LHRegionF
{
	struct LHCoordF start; /* 0x0 */
	struct LHCoordF end;

	// Non-virtual methods

	// BW1W120 007deb70 BW1M119 0114c9c0 (LHCombined Release)
	int CoordInRegion(const LHCoordF& coord) const;
	// BW1W120 007debc0 BW1M119 0114c870 (LHCombined Release)
	void CentreCoord(LHCoordF* out) const;
	// BW1W120 007dec00 BW1M119 0114c7c0 (LHCombined Release)
	void BoundWithRegion(LHRegionF* other);
};
static_assert(sizeof(LHRegionF) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_REGION_F_INCLUDED_H */
