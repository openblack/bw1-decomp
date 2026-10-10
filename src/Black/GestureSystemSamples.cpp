#include "GestureSystem.h"

#include <math.h>    /* For fabs */
#include <windows.h> /* For min, max */

#include <Lionhead/LH3DLib/development/LHCoord.h>   /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/LHRegionF.h> /* For struct LHRegionF */
#include <Lionhead/LHLib/ver5.0/LHWin.h>            /* For Atan2Positive */

const float GESTURE_MIN_SAMPLE_DISTANCE = 4.0f;
const float GESTURE_MAX_JUNCTION_DISTANCE = 12.0f;

#include "GestureConstants.h"

const float GESTURE_MAX_JUNCTION_REGION = 50.0f;

enum
{
	GESTURE_SYSTEM_MAX_REPEATS = 70,
	GESTURE_SYSTEM_JUNCTION_LOOKBACK = 8
};

void GestureSystem::AddPoint(LHPoint* world_point, LHCoord* screen_point)
{
	Samples[Head].WorldPosition = *world_point;
	Samples[Head].Position.x = (float)screen_point->x;
	Samples[Head].Position.z = (float)screen_point->y;
	if (PointCount < GESTURE_SYSTEM_MAX_SAMPLES)
	{
		PointCount++;
	}
	if (PointCount > 1)
	{
		GestureSample* previousSample = GetSampleAt(PointCount - 2);
		if (previousSample->Position.x - screen_point->x == 0.0f &&
		    previousSample->Position.z - screen_point->y == 0.0f)
		{
			if (++RepeatCount >= GESTURE_SYSTEM_MAX_REPEATS)
			{
				Reset();
				AddPoint(world_point, screen_point);
				return;
			}
		}
		else
		{
			RepeatCount = 0;
		}
	}
	Head = (uint8_t)(Head + 1) % GESTURE_SYSTEM_MAX_SAMPLES;
	CalculateKeyPoint(PointCount - 1);
}

void GestureSystem::RemovePoint(long index)
{
	if (index < 0 || index >= PointCount)
	{
		return;
	}
	LHPoint keptPoints[GESTURE_SYSTEM_MAX_SAMPLES];
	int     keptCount = 0;
	int     pointCount = PointCount;
	for (int i = 0; i < pointCount; i++)
	{
		if (keptCount == index)
		{
			i++;
			if (i == pointCount)
			{
				break;
			}
		}
		keptPoints[keptCount++] = GetSampleAt(i)->WorldPosition;
	}
	Reset();
	for (int j = 0; j < pointCount - 1; j++)
	{
		LHCoord screenPoint((long)keptPoints[j].x, (long)keptPoints[j].z);
		AddPoint(&keptPoints[j], &screenPoint);
	}
}

long GestureSystem::GetPreviousKeyPointOffset(long index)
{
	for (index--; index > 0; index--)
	{
		if (GetSampleAt(index)->Flags != GESTURE_KEY_POINT_TYPE_NONE)
		{
			return index;
		}
	}
	return 0;
}

long GestureSystem::GetPreviousValidSample(long index)
{
	LHPoint* currentPoint = &GetSampleAt(index)->Position;
	for (index--; index != 0; index--)
	{
		if (GetSampleAt(index)->Flags != GESTURE_KEY_POINT_TYPE_NONE)
		{
			return index;
		}
		LHPoint* samplePoint = &GetSampleAt(index)->Position;
		if (fabs(samplePoint->x) > GESTURE_POSITION_EPSILON || fabs(samplePoint->y) > GESTURE_POSITION_EPSILON ||
		    fabs(samplePoint->z) > GESTURE_POSITION_EPSILON)
		{
			if (IsRequiredSampleDistance(samplePoint, currentPoint))
			{
				return index;
			}
		}
	}
	return 0;
}

float GestureSystem::CalculateTurn(LHPoint* from, LHPoint* corner, LHPoint* to)
{
	float inX = corner->x - from->x;
	float inZ = corner->z - from->z;
	float in = Atan2Positive(inX, inZ);
	float outX = to->x - corner->x;
	float outZ = to->z - corner->z;
	float out = Atan2Positive(outX, outZ);
	return CalculateAngleDifference(in, out);
}

long GestureSystem::CalculateJunction(long key_point, long index)
{
	if (index > 1)
	{
		LHPoint* currentPoint = &GetSampleAt(index)->Position;
		LHPoint* keyPoint = &GetSampleAt(key_point)->Position;
		long     sample = GetPreviousValidSample(index);
		LHPoint* samplePoint = &GetSampleAt(sample)->Position;
		long     junction = 0;
		float    sharpest = 0.0f;
		while (sample > key_point)
		{
			if (!IsRequiredSampleDistance(keyPoint, samplePoint))
			{
				break;
			}
			float turn = (float)fabs(CalculateTurn(keyPoint, samplePoint, currentPoint));
			if (turn >= GESTURE_ANGLE_TOLERANCE && turn > sharpest)
			{
				sharpest = turn;
				junction = sample;
			}
			sample--;
			samplePoint = &GetSampleAt(sample)->Position;
		}
		if (junction != 0)
		{
			return junction;
		}
		if (key_point != 0)
		{
			LHPoint* previousPoint = &GetSampleAt(GetPreviousKeyPointOffset(key_point))->Position;
			if ((float)fabs(CalculateTurn(previousPoint, keyPoint, currentPoint)) >= GESTURE_ANGLE_TOLERANCE)
			{
				return key_point;
			}
		}
	}
	return 0;
}

long GestureSystem::GetPreviousJunction(long index)
{
	for (index--; index > 0; index--)
	{
		if (GetSampleAt(index)->Flags == GESTURE_KEY_POINT_TYPE_JUNCTION)
		{
			return index;
		}
	}
	return 0;
}

bool32_t GestureSystem::CalculateForJunctionMerge(long junction, long index)
{
	long previous = GetPreviousJunction(junction);
	if (previous != 0)
	{
		LHPoint* previousPoint = &GetSampleAt(previous)->Position;
		LHPoint* junctionPoint = &GetSampleAt(junction)->Position;
		if (!IsRequiredJunctionDistance(previous, junction, previousPoint, junctionPoint))
		{
			LHPoint* earlierPoint = &GetSampleAt(GetPreviousJunction(previous))->Position;
			LHPoint* indexPoint = &GetSampleAt(index)->Position;
			float    keepTurn = ((float)fabs(CalculateTurn(earlierPoint, previousPoint, indexPoint)));
			if ((float)fabs(CalculateTurn(earlierPoint, junctionPoint, indexPoint)) < keepTurn)
			{
				*junctionPoint = *previousPoint;
			}
			else
			{
				*previousPoint = *junctionPoint;
			}
			return true;
		}
	}
	else
	{
		LHPoint* startPoint = &GetSampleAt(previous)->Position;
		LHPoint* junctionPoint = &GetSampleAt(junction)->Position;
		if (!IsRequiredJunctionDistance(previous, junction, startPoint, junctionPoint))
		{
			*junctionPoint = *startPoint;
			return true;
		}
	}
	return false;
}

void GestureSystem::CalculateKeyPoint(long index)
{
	if (index != 0 && GetSampleAt(index - 1)->Flags == GESTURE_KEY_POINT_TYPE_END)
	{
		GetSampleAt(index - 1)->Flags = GESTURE_KEY_POINT_TYPE_NONE;
	}
	GetSampleAt(0)->Flags = GESTURE_KEY_POINT_TYPE_START;
	GetSampleAt(index)->Flags = GESTURE_KEY_POINT_TYPE_END;
	if (index == 0)
	{
		return;
	}
	long keyPoint = GetPreviousKeyPointOffset(index);
	long junction = CalculateJunction(keyPoint, index);
	if (junction == 0)
	{
		CalculateKeyAngleAndDirection(index);
		return;
	}
	if (!CalculateForJunctionMerge(junction, index))
	{
		GetSampleAt(junction)->Flags = GESTURE_KEY_POINT_TYPE_JUNCTION;
		CalculateKeyAngleAndDirection(junction);
	}
	GetSampleAt(index)->Flags = GESTURE_KEY_POINT_TYPE_0x4;
	CalculateKeyAngleAndDirection(index);
}

void GestureSystem::CalculateKeyPoints()
{
	for (uint32_t i = 0; i < PointCount; i++)
	{
		CalculateKeyPoint(i);
	}
}

bool32_t GestureSystem::IsRequiredSampleDistance(LHPoint* from, LHPoint* to) const
{
	return IsRequiredDistance(to->x - from->x, to->z - from->z);
}

bool32_t GestureSystem::IsRequiredDistance(float dx, float dz) const
{
	return (float)fabs(dx) >= GESTURE_MIN_SAMPLE_DISTANCE || (float)fabs(dz) >= GESTURE_MIN_SAMPLE_DISTANCE;
}

bool32_t GestureSystem::IsRequiredJunctionDistance(long from, long to, LHPoint* from_point, LHPoint* to_point)
{
	return IsRequiredJunctionDistance(from, to, to_point->x - from_point->x, to_point->z - from_point->z);
}

bool32_t GestureSystem::IsRequiredJunctionDistance(long from, long to, float dx, float dz)
{
	float distanceX = (float)fabs(dx);
	float distanceZ = (float)fabs(dz);
	float distance = max(distanceX, distanceZ);
	if (distance < GESTURE_MAX_JUNCTION_DISTANCE)
	{
		if (distance > GESTURE_MIN_SAMPLE_DISTANCE)
		{
			long start = from != 0 ? GetPreviousJunction(from) : 0;
			long limit = max(0, to - GESTURE_SYSTEM_JUNCTION_LOOKBACK);
			start = min(start, limit);
			LHRegionF region;
			CalculateTransformedRegion(&region, start, to);
			float height = region.end.y - region.start.y + 1.0f;
			float width = region.end.x - region.start.x + 1.0f;
			return max(height, width) < GESTURE_MAX_JUNCTION_REGION;
		}
		return false;
	}
	return true;
}

void GestureSystem::CalculateKeyAngleAndDirection(long index)
{
	LHPoint* indexPoint = &GetSampleAt(index)->Position;
	long     previous = GetPreviousJunction(index);
	LHPoint* previousPoint = &GetSampleAt(previous)->Position;
	float    dx = indexPoint->x - previousPoint->x;
	float    dz = indexPoint->z - previousPoint->z;
	float    angle = Atan2Positive(dx, dz);
	GetSampleAt(previous)->KeyAngle = angle;
	int direction = ConvertAngleToDirection(angle);
	GetSampleAt(previous)->Direction = direction;
	CalculateKeyAngleDifference(previous);
}

void GestureSystem::CalculateKeyAngleDifference(long index)
{
	if (index == 0)
	{
		return;
	}
	long  previous = GetPreviousJunction(index);
	float angle = GetSampleAt(index)->KeyAngle;
	float previousAngle = GetSampleAt(previous)->KeyAngle;
	float turn = CalculateAngleDifference(previousAngle, angle);
	GetSampleAt(index)->Turn = turn;
}

void GestureSystem::RepeatPoint(LHCoord* screen_point)
{
	if (PointCount == 0)
	{
		return;
	}
	LHPoint* worldPoint = &GetSampleAt(PointCount - 1)->WorldPosition;
	if (worldPoint != NULL)
	{
		AddPoint(worldPoint, screen_point);
	}
}
