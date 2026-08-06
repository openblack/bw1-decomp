#include "LH3DMath.h"

#include <math.h> /* For atan2 */

#include "LHPoint.h" /* For struct LHPoint */

// BW1W120 00841290 LH3DMath::GetYAngle(LHPoint *)
float LH3DMath::GetYAngle(LHPoint* point)
{
	float angle = (float)atan2(point->z, point->x);
	if (angle < 0.0f)
	{
		angle += TWO_PI;
	}
	return angle;
}

// BW1W120 00841260 LH3DMath::GetYAngle(LHPoint *, LHPoint *)
float LH3DMath::GetYAngle(LHPoint* from, LHPoint* to)
{
	float angle = (float)atan2(to->z - from->z, to->x - from->x);
	if (angle < 0.0f)
	{
		angle += TWO_PI;
	}
	return angle;
}
