#ifndef BW1_DECOMP_ROUTE_PLAN_INCLUDED_H
#define BW1_DECOMP_ROUTE_PLAN_INCLUDED_H

// BW1W120 00d559b0. TODO: Descriptive name; owned by RoutePlan.cpp's free
// ValidateLandAvoid/FloodAnalyse functions. Storage remains in the extracted
// object until its current Reward.cpp BSS split is resolved.
extern unsigned char LandAvoid[512][512];

// BW1W120 00d959b0. Descriptive name; free state of ValidateLandAvoid, alongside LandAvoid.
extern unsigned int LandAvoidValid;

// BW1W120 006e7ba0 BW1M100 1013e280 void ValidateLandAvoid(void)
void ValidateLandAvoid();
// BW1W120 006e7fa0 BW1M100 1013e030 void FloodAnalyse(int, int)
void FloodAnalyse(int x, int z);

#endif /* BW1_DECOMP_ROUTE_PLAN_INCLUDED_H */
