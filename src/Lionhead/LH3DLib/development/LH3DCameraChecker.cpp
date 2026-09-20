#include "LH3DCameraChecker.h"

#include <cstddef> /* For NULL */
#include <cfloat>  /* For FLT_MAX */

#include "LHMatrix.h"
#include "LHRandom.h"

void LH3DCameraChecker::AdjustCameraPosTarget(struct LHPoint* pos, struct LHPoint* target)
{
	//   if (DAT_00c383b8 != 0) {

	LH3DCameraChecker* closest_checker = NULL;
	float              smallest_dist = FLT_MAX;

	for (LH3DCameraChecker* checker = LH3DCameraChecker::g_first; checker != NULL; checker = checker->next)
	{
		LHPoint local_18 = LHPoint(checker->point);
		// LHPoint::Sub(local_18, LHPoint_00ea1db8);
		float dist = local_18.GetNorme();
		if (dist < smallest_dist)
		{
			closest_checker = checker;
			smallest_dist = dist;
		}
	}

	if (smallest_dist < closest_checker->max_dist)
	{
		float fVar5 = ((float)closest_checker->field_0x1c / (float)closest_checker->field_0x18) *
		              (float)closest_checker->field_0x14;
		if (closest_checker->y_only)
		{
			pos->y += Random(-fVar5, fVar5);
			target->y += Random(-fVar5, fVar5);
		}
		else
		{
			pos->x += Random(-fVar5, fVar5);
			pos->y += Random(-fVar5, fVar5);
			pos->z += Random(-fVar5, fVar5);
			target->x += Random(-fVar5, fVar5);
			target->y += Random(-fVar5, fVar5);
			target->z += Random(-fVar5, fVar5);
		}
	}
	//   }
}
