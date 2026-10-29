#ifndef BW1_DECOMP_RP_AVOID_INCLUDED_H
#define BW1_DECOMP_RP_AVOID_INCLUDED_H

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For Point2D */
#include <re_common.h>                            /* For bool32_t */

#define RPAVOID_MARGIN 0.001f

struct RPAvoid
{
	int      ObjectId;
	bool32_t Active;
	Point2D  Centre;
	float    Radius;

	// BW1W120 inlined BW1M119 010ab040 (LHCombined Release)
	RPAvoid() {}

	// BW1W120 00869020 BW1M119 010a7240 (LHCombined Release)
	void Init(int object_id, const Point2D& centre, float radius);
	// BW1W120 00869050 BW1M119 010a71c0 (LHCombined Release)
	bool PointIsInside(const Point2D& point);
	// BW1W120 008690a0 BW1M119 010a7120 (LHCombined Release)
	bool PointIsTotallyInside(const Point2D& point, float radius);
};

#endif /* BW1_DECOMP_RP_AVOID_INCLUDED_H */
