#ifndef BW1_DECOMP_LH3D_WET_FEET_INCLUDED_H
#define BW1_DECOMP_LH3D_WET_FEET_INCLUDED_H

// Forward Declares

struct LHPoint;

class LH3DWetFeet
{
public:
	// Static methods

	// BW1W120 0081f360 BW1M119 010806a0 (LHCombined Release)
	static void Add(LHPoint* pos, float heading, float size, long creature_type, int left);
};

#endif /* BW1_DECOMP_LH3D_WET_FEET_INCLUDED_H */
