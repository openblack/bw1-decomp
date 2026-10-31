#include "LH3DIsland.h"

#include <windows.h> /* For min, max */

unsigned long LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS + 1];
unsigned long LandCell::g_darkness[LAND_CELL_MAX_DARKNESS + 1];

void LandCell::ComputeSplit()
{
	uint32_t a = GetAltitude();
	uint32_t b = this[1].GetAltitude();
	uint32_t c = this[LAND_BLOCK_SIDE_POINTS].GetAltitude();
	uint32_t d = this[LAND_BLOCK_SIDE_POINTS + 1].GetAltitude();
	int      diagonal_a = 0;
	int      diagonal_b = 0;
	if ((int)min(d + b + a, d + c + a) < (int)min(c + b + a, d + c + b))
		diagonal_a = 1;
	else
		diagonal_b = 1;
	if ((int)max(d + b + a, d + c + a) > (int)max(c + b + a, d + c + b))
		diagonal_a++;
	else
		diagonal_b++;
	if (diagonal_a < diagonal_b)
		Flags |= LAND_CELL_SPLIT;
	else
		Flags &= ~LAND_CELL_SPLIT;
}

bool32_t __fastcall LandCell::RayCellCheck(long x, long y, float from_x, float from_y, float from_z, float to_x,
                                           float to_y, float to_z)
{
	LandCell* cell = LH3DIsland::GetCell(x, y);
	if (cell == NULL)
	{
		return false;
	}

	int a = cell[0].GetAltitude();
	int b = cell[1].GetAltitude();
	int c = cell[LAND_BLOCK_SIDE_POINTS].GetAltitude();
	int d = cell[LAND_BLOCK_SIDE_POINTS + 1].GetAltitude();

	float max_altitude = max(max(a, c), max(b, d));
	float min_altitude = min(min(a, c), min(b, d));
	if (from_z < min_altitude && to_z < min_altitude)
	{
		return false;
	}
	if (from_z > max_altitude && to_z > max_altitude)
	{
		return false;
	}

	float dx = to_x - from_x;
	float dy = to_y - from_y;
	float dz = to_z - from_z;

	float slope_x = c - a;
	float slope_y = b - a;
	float denominator = dz - slope_x * dx - slope_y * dy;
	if (fabs(denominator) < LAND_PLANES_PARALLEL_EPSILON)
	{
		return false;
	}
	float base_height = a;
	float t = ((from_y - y) * slope_y + (from_x - x) * slope_x + base_height - from_z) / denominator;
	float u = t * dx + from_x - x;
	float v = t * dy + from_y - y;
	if (u <= LAND_RAY_CELL_EDGE_MAX && v <= LAND_RAY_CELL_EDGE_MAX && u >= LAND_RAY_CELL_EDGE_MIN &&
	    v >= LAND_RAY_CELL_EDGE_MIN && u <= LAND_RAY_CELL_EDGE_MAX - v)
	{
		float hit_y = y + v;
		float hit_x = x + u;
		if ((hit_x - from_x) * dx + (hit_y - from_y) * dy >= 0.0f)
		{
			LH3DIsland::g_hitx = hit_x;
			LH3DIsland::g_hity = hit_y;
			return true;
		}
	}

	slope_y = d - c;
	slope_x = d - b;
	denominator = dz - slope_x * dx - slope_y * dy;
	if (fabs(denominator) < LAND_PLANES_PARALLEL_EPSILON)
	{
		return false;
	}
	t = (c - slope_x + (from_y - y) * slope_y + (from_x - x) * slope_x - from_z) / denominator;
	u = t * dx + from_x - x;
	v = t * dy + from_y - y;
	if (u <= LAND_RAY_CELL_EDGE_MAX && v <= LAND_RAY_CELL_EDGE_MAX && u >= LAND_RAY_CELL_EDGE_MIN &&
	    v >= LAND_RAY_CELL_EDGE_MIN && u >= LAND_RAY_CELL_EDGE_INNER - v)
	{
		float hit_y = y + v;
		float hit_x = x + u;
		if ((hit_x - from_x) * dx + (hit_y - from_y) * dy >= 0.0f)
		{
			LH3DIsland::g_hitx = hit_x;
			LH3DIsland::g_hity = hit_y;
			return true;
		}
	}
	return false;
}
