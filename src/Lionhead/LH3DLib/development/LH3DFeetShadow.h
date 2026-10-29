#ifndef BW1_DECOMP_LH3D_FEET_SHADOW_INCLUDED_H
#define BW1_DECOMP_LH3D_FEET_SHADOW_INCLUDED_H

#include "LHPoint.h" /* For struct LHPoint */

class LH3DObject;
struct ExtraBone;

class LH3DFeetShadow
{
public:
	// Static methods

	// BW1W120 0081fff0 BW1M119 01023c60 (LHCombined Release)
	static void Draw(LH3DObject* object, LHPoint* normal, ExtraBone* bone);

	// BW1W120 0081faa0 BW1M119 0112b850 (LHCombined Release)
	static void Open();
	// BW1W120 0081fe10 BW1M119 01045250 (LHCombined Release)
	static void Close();
};

#endif /* BW1_DECOMP_LH3D_FEET_SHADOW_INCLUDED_H */
