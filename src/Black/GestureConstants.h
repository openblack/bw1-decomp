#ifndef BW1_DECOMP_GS_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_GS_CONSTANTS_INCLUDED_H

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For EIGHTH_PI_F */

const float GS_HALF_SECTOR_ANGLE = EIGHTH_PI_F;
const float GS_ANGLE_TOLERANCE = (GS_HALF_SECTOR_ANGLE * 3) / 4;
const float GS_SECTOR_ANGLE = GS_HALF_SECTOR_ANGLE * 2;
const float GS_SECTOR_TOLERANCE = (GS_SECTOR_ANGLE * 7) / 8;
const float GS_WIDE_ANGLE_TOLERANCE = (GS_ANGLE_TOLERANCE * 7) / 4;
const float GS_DOUBLE_ANGLE_TOLERANCE = GS_ANGLE_TOLERANCE * 2;

// A dead, unreferenced 4-byte .bss slot the original emits between
// SECTOR_TOLERANCE (key 335) and SECTOR_ANGLE (key 566); its own name is unknown.
static float GS_TOLERANCE;

#endif /* BW1_DECOMP_GS_CONSTANTS_INCLUDED_H */
