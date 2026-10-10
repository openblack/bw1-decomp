#include "GestureSystem.h"

#include <math.h>    /* For fabs */
#include <windows.h> /* For min */

#include <Lionhead/LH3DLib/development/LH3DMath.h>  /* For PI_F, HALF_PI_F, TWO_PI */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/LHRegionF.h> /* For struct LHRegionF */

#include "MaxFloat.h" /* For MaxFloat */
#include "GestureConstants.h"
#include "GestureSystemResult.h"

int GestureSystem::FindNearestSample(LHPoint* point)
{
	float nearestDistance = MaxFloat;
	int   nearest = 0;
	for (int i = 0; i < GetPointCount(); i++)
	{
		GestureSample* sample = GetSampleAt(i);
		sample->Position.y = 0.0f;
		LHPoint position = sample->Position;
		float   distance = point->GetDistance(position);
		if (distance < nearestDistance)
		{
			nearestDistance = distance;
			nearest = i;
		}
	}
	return nearest;
}

void GestureSystem::SetSamplePosition(long index, LHPoint* position)
{
	Samples[index].Position = *position;
	CalculateKeyPoints();
}

int GestureSystem::RoundToNearest(float value) const
{
	int result = (int)value;
	if (value - result > 0.5f)
	{
		result++;
	}
	return result;
}

int GestureSystem::ConvertAngleToDirection(float angle) const
{
	angle += HALF_PI_F;
	while (angle > TWO_PI)
	{
		angle -= TWO_PI;
	}
	return RoundToNearest((angle * GESTURE_DIRECTION_COUNT) / TWO_PI) % GESTURE_DIRECTION_COUNT;
}

void GestureSystem::CopySample(long from, long to)
{
	*GetSampleAt(to) = *GetSampleAt(from);
}

void GestureSystem::RemoveNonKeyPoints()
{
	int oldestOffset = GetOffsetAt(0);
	int keptCount = 0;
	for (int i = 0; i < GetPointCount(); i++)
	{
		uint32_t type = i < GetPointCount() - 1 ? GetKeyPointType(i) : GESTURE_KEY_POINT_TYPE_END;
		if (type != GESTURE_KEY_POINT_TYPE_NONE)
		{
			CopySample(i, keptCount++);
		}
	}
	PointCount = keptCount;
	Head = (keptCount + oldestOffset + GESTURE_SYSTEM_MAX_SAMPLES) % GESTURE_SYSTEM_MAX_SAMPLES;
}

float GestureSystem::CalculateAngleDifference(float from, float to)
{
	float difference = to - from;
	if (difference > PI_F)
	{
		return -(TWO_PI - difference);
	}
	if (difference <= -PI_F)
	{
		difference += TWO_PI;
	}
	return difference;
}

void GestureSystem::CalculateGestureOffsets(GestureSystemResult* result, long* start, long* end)
{
	// BUG: If StartSample or EndSample is past the last key point, *start or *end is never written
#ifdef BUGFIX
	*start = 0;
	*end = GetPointCount() - 1;
#endif
	int startKey = result->StartSample;
	int endKey = result->EndSample;
	int keyCount = 0;
	int i = 0;
	if (startKey != 0)
	{
		for (; i < GetPointCount(); i++)
		{
			uint32_t type = i < GetPointCount() - 1 ? GetKeyPointType(i) : GESTURE_KEY_POINT_TYPE_END;
			if (type != GESTURE_KEY_POINT_TYPE_NONE)
			{
				if (++keyCount > startKey)
				{
					*start = i++;
					break;
				}
			}
		}
	}
	else
	{
		*start = 0;
	}
	for (; i < GetPointCount(); i++)
	{
		uint32_t type = i < GetPointCount() - 1 ? GetKeyPointType(i) : GESTURE_KEY_POINT_TYPE_END;
		if (type != GESTURE_KEY_POINT_TYPE_NONE)
		{
			if (++keyCount > endKey)
			{
				*end = i;
				return;
			}
		}
	}
}

void GestureSystem::CalculateTransformedRegion(LHRegionF* region, long start, long end) const
{
	int   offset = GetOffsetAt(start);
	float maxX = Samples[offset].Position.x;
	float minX = maxX;
	float maxZ = Samples[offset].Position.z;
	float minZ = maxZ;
	int   count = end - start;
	count = min(count, GetPointCount());
	if (count < 0)
	{
		count += GESTURE_SYSTEM_MAX_SAMPLES;
	}
	offset = (offset + 1) % GESTURE_SYSTEM_MAX_SAMPLES;
	for (int i = 1; i < count; i++)
	{
		if (fabs(Samples[offset].Position.x) > GESTURE_POSITION_EPSILON ||
		    fabs(Samples[offset].Position.y) > GESTURE_POSITION_EPSILON ||
		    fabs(Samples[offset].Position.z) > GESTURE_POSITION_EPSILON)
		{
			if (Samples[offset].Position.x < minX)
			{
				minX = Samples[offset].Position.x;
			}
			else if (Samples[offset].Position.x > maxX)
			{
				maxX = Samples[offset].Position.x;
			}
			if (Samples[offset].Position.z < minZ)
			{
				minZ = Samples[offset].Position.z;
			}
			else if (Samples[offset].Position.z > maxZ)
			{
				maxZ = Samples[offset].Position.z;
			}
		}
		offset = (offset + 1) % GESTURE_SYSTEM_MAX_SAMPLES;
	}
	region->start.Set(minX, minZ);
	region->end.Set(maxX, maxZ);
}
