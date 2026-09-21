#ifndef BW1_DECOMP_LH3D_CAMERA_CHECKER_INCLUDED_H
#define BW1_DECOMP_LH3D_CAMERA_CHECKER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHPoint.h" /* For struct LHPoint */

struct LH3DCameraChecker
{
	// BW1W120 00eb99a8 BW1M119 011f20ac (LHCombined Release)
	static LH3DCameraChecker* g_first;

	LH3DCameraChecker* next; /* 0x0 */
	float              max_dist;
	LHPoint            point;
	float              field_0x14;
	uint32_t           field_0x18;
	uint32_t           field_0x1c;
	bool               y_only; /* 0x20 */

	// Static methods

	// BW1W120 00821050 BW1M119 010d9180 (LHCombined Release)
	static void Create(float max_distance, LHPoint point, float param_3, long param_4, bool y_only);

	// Non-virtual methods

	// BW1W120 00437e70 BW1M119 0103c750 (LHCombined Release)
	void AdjustCameraPosTarget(LHPoint* pos, LHPoint* target);
};

#endif /* BW1_DECOMP_LH3D_CAMERA_CHECKER_INCLUDED_H */
