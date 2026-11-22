#ifndef BW1_DECOMP_ROUTE_PLAN_INCLUDED_H
#define BW1_DECOMP_ROUTE_PLAN_INCLUDED_H

#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

// Forward Declares

struct LHPoint;

#define LAND_AVOID_MAX_HEIGHT_DIFFERENCE 10.0f

enum LAND_AVOID_TYPE
{
	LAND_AVOID_TYPE_CLEAR = 0,
	LAND_AVOID_TYPE_EDGE = 1,
	LAND_AVOID_TYPE_BLOCKED = 2,
	LAND_AVOID_TYPE_FLOODING = 3,
	LAND_AVOID_TYPE_UNREACHED = 4,
	LAND_AVOID_TYPE_EDGE_REACHED = 5,
	LAND_AVOID_TYPE_WATER = 6,
};

// BW1W120 00d559b0
extern uint8_t LandAvoid[512][512];
// BW1W120 00d959b0
extern bool32_t LandAvoidValid;

// BW1W120 006e7ab0 BW1M119 null
void ReflectDirections();
// BW1W120 006e7af0 BW1M119 null
void RotateDirections();
// BW1W120 006e7b60 BW1M119 null
void NextDirections();
// BW1W120 006e7ba0 BW1M119 01146690
void ValidateLandAvoid();
// BW1W120 006e7fa0 BW1M119 01146450
void FloodAnalyse(int x, int z);
// BW1W120 006e8130 BW1M119 011463a0
float range_2d(LHPoint& a, LHPoint& b);
// BW1W120 006e8160 BW1M119 01146300
float range_2d(LHPoint& point);
// BW1W120 006e8180 BW1M119 null
bool32_t in_range_2d(LHPoint& a, LHPoint& b, float range);
// BW1W120 006e81c0 BW1M119 null
float sqr_range_2d(LHPoint& a, LHPoint& b);
// BW1W120 006e81f0 BW1M119 null
float sqr_range_2d(LHPoint& point);
// BW1W120 006e8210 BW1M119 011462a0
float y_of_vector_product_2d(LHPoint& a, LHPoint& b);
// BW1W120 006e8230 BW1M119 null
float scalar_product_2d(LHPoint& a, LHPoint& b);

#endif /* BW1_DECOMP_ROUTE_PLAN_INCLUDED_H */
