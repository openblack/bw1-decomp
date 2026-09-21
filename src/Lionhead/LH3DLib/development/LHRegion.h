#ifndef BW1_DECOMP_LH_REGION_INCLUDED_H
#define BW1_DECOMP_LH_REGION_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHCoord.h" /* For struct LHCoord */

// Forward Declares

struct tagRECT;

struct LHRegion
{
	struct LHCoord start; /* 0x0 */
	struct LHCoord end;

	// Non-virtual methods

	// BW1W120 007deab0 BW1M119 0114cbe0 (LHCombined Release)
	int CoordInRegion(const LHCoord& coord) const;
	// BW1W120 007deae0 BW1M119 0114cb00 (LHCombined Release)
	void CentreCoord(LHCoord* out) const;
	// BW1W120 007deb20 BW1M119 0114ca60 (LHCombined Release)
	void BoundWithRegion(LHRegion* other);
	// BW1W120 007ded80 BW1M119 0114c340 (LHCombined Release)
	void GetRect(tagRECT* out) const;
};
static_assert(sizeof(LHRegion) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_REGION_INCLUDED_H */
