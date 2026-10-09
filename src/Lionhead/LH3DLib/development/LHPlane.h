#ifndef BW1_DECOMP_LH_PLANE_INCLUDED_H
#define BW1_DECOMP_LH_PLANE_INCLUDED_H

#include "LHPoint.h" /* For struct LHPoint */

struct LHPlane
{
	LHPoint Normal;
	float   Distance;

	// BW1W120 0055cb70 BW1M119 01181040
	LHPlane() : Normal(0.0f, 1.0f, 0.0f), Distance(0.0f) {}
};

#endif /* BW1_DECOMP_LH_PLANE_INCLUDED_H */
