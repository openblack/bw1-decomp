#ifndef BW1_DECOMP_LH3D_CAMERA_INCLUDED_H
#define BW1_DECOMP_LH3D_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint */

struct LH3DCamera
{
	LHPoint pos; /* 0x0 */
	LHPoint foc;
	float   fov; /* 0x18 */
	LHPoint LookAtVector;

	// Static methods

	// BW1W120 0045a7f0 BW1M100 inlined LH3DCamera::GetPos(void)
	static LHPoint* GetPos();
};

#endif /* BW1_DECOMP_LH3D_CAMERA_INCLUDED_H */
