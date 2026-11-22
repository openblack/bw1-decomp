#include "RoutePlan.h"

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetCell, LH3DIsland::IsWater */
#include <Lionhead/LH3DLib/development/LHPoint.h>    /* For struct LHPoint */
#include <Lionhead/LHLib/ver5.0/LHWin.h>             /* For NEW */

#include <math.h> /* For sqrt */

#ifdef VERSION_BW1WCI
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - 38)
#endif

#define FLOOD_DIRECTIONS    4
#define DIRECTION_ROTATIONS 4

struct FloodPoint
{
	uint16_t x;
	uint16_t z;
};

static int DirectionX[FLOOD_DIRECTIONS] = {0, -1, -1, -1};
static int DirectionZ[FLOOD_DIRECTIONS] = {-1, -1, 0, 1};

static int Unused = 0;
static int DirectionIndex;
bool32_t   LandAvoidValid;
uint8_t    LandAvoid[LAND_MAP_SIZE][LAND_MAP_SIZE];

void ReflectDirections()
{
	DirectionX[0] = -DirectionX[0];
	DirectionX[1] = -DirectionX[1];
	DirectionX[2] = -DirectionX[2];
	DirectionX[3] = -DirectionX[3];
}

void RotateDirections()
{
	int temp;
	temp = DirectionX[0];
	DirectionX[0] = DirectionZ[0];
	DirectionZ[0] = -temp;
	temp = DirectionX[1];
	DirectionX[1] = DirectionZ[1];
	DirectionZ[1] = -temp;
	temp = DirectionX[2];
	DirectionX[2] = DirectionZ[2];
	DirectionZ[2] = -temp;
	temp = DirectionX[3];
	DirectionX[3] = DirectionZ[3];
	DirectionZ[3] = -temp;
}

void NextDirections()
{
	if (DirectionIndex == DIRECTION_ROTATIONS - 1)
	{
		ReflectDirections();
	}
	else if (DirectionIndex == DIRECTION_ROTATIONS * 2 - 1)
	{
		ReflectDirections();
		DirectionIndex = 0;
	}
	else
	{
		RotateDirections();
	}
	DirectionIndex++;
}

void ValidateLandAvoid()
{
	if (LandAvoidValid)
	{
		return;
	}
	LandAvoidValid = true;

	int startX = 0;
	int startZ = 0;
	for (int z = 0; z < LAND_MAP_SIZE; z++)
	{
		int      count = 0;
		bool32_t inRun = false;
		for (int x = 0; x < LAND_MAP_SIZE; x++)
		{
			LandCell* cell = LH3DIsland::GetCell(x, z);
			uint8_t   altitude00 = cell != NULL ? cell->altitude : 0;
			float     minHeight = altitude00 * LH3DIsland::g_height_unit;
			float     maxHeight = minHeight;
			float     height;

			cell = LH3DIsland::GetCell(x, z + 1);
			uint8_t altitude01 = cell != NULL ? cell->altitude : 0;
			height = altitude01 * LH3DIsland::g_height_unit;
			if (maxHeight <= height)
			{
				maxHeight = height;
			}
			if (minHeight >= height)
			{
				minHeight = height;
			}

			cell = LH3DIsland::GetCell(x + 1, z);
			uint8_t altitude10 = cell != NULL ? cell->altitude : 0;
			height = altitude10 * LH3DIsland::g_height_unit;
			if (maxHeight <= height)
			{
				maxHeight = height;
			}
			if (minHeight >= height)
			{
				minHeight = height;
			}

			cell = LH3DIsland::GetCell(x + 1, z + 1);
			uint8_t altitude11 = cell != NULL ? cell->altitude : 0;
			height = altitude11 * LH3DIsland::g_height_unit;
			if (maxHeight <= height)
			{
				maxHeight = height;
			}
			if (minHeight >= height)
			{
				minHeight = height;
			}

			if (maxHeight - minHeight <= LAND_AVOID_MAX_HEIGHT_DIFFERENCE &&
			    (altitude00 != 0 || altitude01 != 0 || altitude10 != 0 || altitude11 != 0))
			{
				LandAvoid[z][x] = LAND_AVOID_TYPE_UNREACHED;
				count++;
				inRun = true;
			}
			else
			{
				LandAvoid[z][x] = LAND_AVOID_TYPE_EDGE;
				if (inRun)
				{
					if (count > 0)
					{
						startX = x - 1;
						startZ = z;
					}
					inRun = false;
					count = 0;
				}
			}
		}
	}

	FloodAnalyse(startX, startZ);

	uint8_t* avoid = &LandAvoid[0][0];
	for (int cellZ = 0; cellZ < LAND_MAP_SIZE; cellZ++)
	{
		for (int cellX = 0; cellX < LAND_MAP_SIZE; cellX++)
		{
			if (*avoid == LAND_AVOID_TYPE_CLEAR && LH3DIsland::IsWater(cellX, cellZ))
			{
				*avoid = LAND_AVOID_TYPE_WATER;
			}
			avoid++;
		}
	}
}

void FloodAnalyse(int x, int z)
{
	if (x < 0 || x >= LAND_MAP_SIZE || z < 0 || z >= LAND_MAP_SIZE)
	{
		return;
	}
	if (LandAvoid[z][x] != LAND_AVOID_TYPE_UNREACHED)
	{
		return;
	}

	int offsetX[FLOOD_DIRECTIONS] = {-1, 0, 1, 0};
	int offsetZ[FLOOD_DIRECTIONS] = {0, -1, 0, 1};

	LandAvoid[z][x] = LAND_AVOID_TYPE_FLOODING;
	FloodPoint* points = NEW(251) FloodPoint[LAND_MAP_SIZE * LAND_MAP_SIZE];
	points[0].x = x;
	points[0].z = z;
	int count = 1;
	while (count != 0)
	{
		uint8_t* current = &LandAvoid[points[0].z][points[0].x];
		for (int i = 0; i < FLOOD_DIRECTIONS; i++)
		{
			int cellX = offsetX[i] + points[0].x;
			int cellZ = offsetZ[i] + points[0].z;
			if (cellX >= 0 && cellX < LAND_MAP_SIZE && cellZ >= 0 && cellZ < LAND_MAP_SIZE)
			{
				uint8_t* avoid = &LandAvoid[cellZ][cellX];
				switch (*avoid)
				{
				case LAND_AVOID_TYPE_EDGE:
					*avoid = LAND_AVOID_TYPE_EDGE_REACHED;
					break;
				case LAND_AVOID_TYPE_UNREACHED:
					points[count].x = cellX;
					points[count].z = cellZ;
					count++;
					*avoid = LAND_AVOID_TYPE_FLOODING;
					break;
				}
			}
		}
		*current = LAND_AVOID_TYPE_CLEAR;
		count--;
		points[0] = points[count];
	}
	delete[] points;

	uint8_t* avoid = &LandAvoid[0][0];
	for (int i = 0; i < LAND_MAP_SIZE * LAND_MAP_SIZE; i++, avoid++)
	{
		switch (*avoid)
		{
		case LAND_AVOID_TYPE_EDGE:
		case LAND_AVOID_TYPE_UNREACHED:
			*avoid = LAND_AVOID_TYPE_BLOCKED;
			break;
		case LAND_AVOID_TYPE_EDGE_REACHED:
			*avoid = LAND_AVOID_TYPE_EDGE;
			break;
		}
	}
}

float range_2d(LHPoint& a, LHPoint& b)
{
	float dx = b.x - a.x;
	float dz = b.z - a.z;
	return sqrt(dx * dx + dz * dz);
}

float range_2d(LHPoint& point)
{
	return sqrt(point.x * point.x + point.z * point.z);
}

bool32_t in_range_2d(LHPoint& a, LHPoint& b, float range)
{
	float dx = b.x - a.x;
	float dz = b.z - a.z;
	return dx * dx + dz * dz < range * range;
}

float sqr_range_2d(LHPoint& a, LHPoint& b)
{
	float dx = b.x - a.x;
	float dz = b.z - a.z;
	return dx * dx + dz * dz;
}

float sqr_range_2d(LHPoint& point)
{
	return point.x * point.x + point.z * point.z;
}

float y_of_vector_product_2d(LHPoint& a, LHPoint& b)
{
	return a.z * b.x - b.z * a.x;
}

float scalar_product_2d(LHPoint& a, LHPoint& b)
{
	return a.z * b.z + a.x * b.x;
}
