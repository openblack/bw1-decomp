#ifndef BW1_DECOMP_ROUTE_PLAN_INCLUDED_H
#define BW1_DECOMP_ROUTE_PLAN_INCLUDED_H

// BW1W120 00d559b0
extern unsigned char LandAvoid[512][512];

// BW1W120 00d959b0
extern unsigned int LandAvoidValid;

// BW1W120 006e7ba0 BW1M100 1013e280 ValidateLandAvoid(void)
void ValidateLandAvoid();
// BW1W120 006e7fa0 BW1M100 1013e030 FloodAnalyse(int, int)
void FloodAnalyse(int x, int z);

#endif /* BW1_DECOMP_ROUTE_PLAN_INCLUDED_H */
