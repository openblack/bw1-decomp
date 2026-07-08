#ifndef BW1_DECOMP_CAMERA_EXCLUSION_INCLUDED_H
#define BW1_DECOMP_CAMERA_EXCLUSION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

struct CameraExclusion
{
	CameraExclusion* next; /* 0x0 */
	CameraExclusion* prev;
	uint32_t         field_0x8;
	LHPoint          field_0xc;
	float            field_0x18;
	float            field_0x1c;
	uint32_t         type; /* 0x20 */
	uint32_t         field_0x24;

	// Static methods

	// BW1W120 00455d50 BW1M100 10000050 CameraExclusion::InsideExclusion(LHPoint)
	static bool InsideExclusion(LHPoint point);
	// BW1W120 00455e20 BW1M100 1004f140 CameraExclusion::InsideInclusion(LHPoint, LHPoint, LHPoint *, LHPoint *)
	static bool InsideInclusion(LHPoint param_1, LHPoint param_2, LHPoint* param_3, LHPoint* param_4);
};

#endif /* BW1_DECOMP_CAMERA_EXCLUSION_INCLUDED_H */
