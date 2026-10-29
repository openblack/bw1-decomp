#ifndef BW1_DECOMP_LH3D_CAMERA_CHECKER_INCLUDED_H
#define BW1_DECOMP_LH3D_CAMERA_CHECKER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include "LHPoint.h" /* For struct LHPoint */

struct LH3DCameraChecker
{
	// BW1W120 00eb99a8 BW1M119 011f20ac (LHCombined Release)
	static LH3DCameraChecker* g_first;
	// BW1W120 00c383b8 BW1M119 011cea20 (LHCombined Release)
	static bool32_t g_activated;

	LH3DCameraChecker* Next;
	float              MaxDistance;
	LHPoint            Point;
	float              Amplitude;
	long               Duration;
	long               TimeLeft;
	bool               YOnly;

	// Static methods

	// BW1W120 00821050 BW1M119 010d9180 (LHCombined Release)
	static void Create(float max_distance, LHPoint point, float amplitude, long duration, bool y_only);
	// BW1W120 00821270 BW1M119 0100aa50 (LHCombined Release)
	static void Process();

	// BW1W120 008210c0 BW1M119 0103c750 (LHCombined Release)
	static void AdjustCameraPosTarget(LHPoint* pos, LHPoint* target);
};

#endif /* BW1_DECOMP_LH3D_CAMERA_CHECKER_INCLUDED_H */
