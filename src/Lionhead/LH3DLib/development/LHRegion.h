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

	// Constructors

	// BW1W120 inlined BW1M119 010a6820
	LHRegion() {}
	// BW1W120 inlined BW1M119 010a6a20
	LHRegion(long x, long y, unsigned long width, unsigned long height)
	{
		start.x = x;
		start.y = y;
		end.x = x + width - 1;
		end.y = y + height - 1;
	}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0142d050
	long X1() const { return start.x; }
	// BW1W120 inlined BW1M119 01575be0
	long Y1() const { return start.y; }
	// BW1W120 inlined BW1M119 010a5e30
	long X2() const { return end.x; }
	// BW1W120 inlined BW1M119 010a5e60
	long Y2() const { return end.y; }
	// BW1W120 inlined BW1M119 010a5720
	long Width() const { return X2() - X1() + 1; }
	// BW1W120 inlined BW1M119 01344950
	long Height() const { return Y2() - Y1() + 1; }
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
