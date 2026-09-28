#ifndef BW1_DECOMP_GAME_TIME_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_GAME_TIME_CONSTANTS_INCLUDED_H

// Game-time constants. These have internal linkage, so every translation unit including this
// header gets its own copy of the pair and of the product below. The product is not a constant
// expression, so the compiler computes it at startup.
const float  NumDaysInYear = 365.25f;
const float  SecondsInDay = 86400.0f;
static float SecondsPerYear = NumDaysInYear * SecondsInDay;

#endif /* BW1_DECOMP_GAME_TIME_CONSTANTS_INCLUDED_H */
