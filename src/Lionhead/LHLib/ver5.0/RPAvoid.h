#ifndef BW1_DECOMP_RP_AVOID_INCLUDED_H
#define BW1_DECOMP_RP_AVOID_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For Point2D */

struct RPAvoid
{
	float   field_0x0;
	float   field_0x4;
	Point2D field_0x8;
	float   field_0x10;

	// Non-virtual methods

	// win1.41 008690a0 mac 100a8da0 RPAvoid::PointIsTotallyInside(Point2D const &, float)
	uint32_t PointIsTotallyInside(const Point2D& param_1, float param_2);
};

#endif /* BW1_DECOMP_RP_AVOID_INCLUDED_H */
