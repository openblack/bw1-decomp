#ifndef BW1_DECOMP_ROUTE_PLAN_INCLUDED_H
#define BW1_DECOMP_ROUTE_PLAN_INCLUDED_H

// Forward Declares

struct LHPoint;

// TODO: Descriptive name; owned by RoutePlan.cpp's free
// ValidateLandAvoid/FloodAnalyse functions. Storage remains in the extracted
// object until its current Reward.cpp BSS split is resolved.
// BW1W120 00d559b0
extern unsigned char LandAvoid[512][512];

// BW1W120 006e7ba0 BW1M119 01146690
void ValidateLandAvoid();
// BW1W120 006e7fa0 BW1M119 01146450
void FloodAnalyse(int x, int z);
// BW1W120 006e8210 BW1M119 011462a0
float y_of_vector_product_2d(LHPoint& a, LHPoint& b);
// BW1W120 006e8160 BW1M119 01146300
float range_2d(LHPoint& point);
// BW1W120 006e8130 BW1M119 011463a0
float range_2d(LHPoint& a, LHPoint& b);

#endif /* BW1_DECOMP_ROUTE_PLAN_INCLUDED_H */
