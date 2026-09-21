#ifndef BW1_DECOMP_LH3D_MATH_INCLUDED_H
#define BW1_DECOMP_LH3D_MATH_INCLUDED_H

const float PI = 3.14159265358979323846f;
const float TWO_PI = 6.2831854820251465f;

#include <stdint.h> /* For uint8_t */

struct LHPoint;

struct LH3DMath
{
	// BW1W120 00eea394
	static uint8_t (*g_inverse_sqrt_lookup_table)[0x80];

	// Static methods

	// BW1W120 00841230 BW1M119 010609f0 (LHCombined Release)
	static void Open();
	// BW1W120 00841240 BW1M119 01060990 (LHCombined Release)
	static void Close();
	// BW1W120 008411d0 BW1M119 01060a40 (LHCombined Release)
	static void MakeInverseSqrtLookupTable();
	// BW1W120 00841290 BW1M119 01060850 (LHCombined Release)
	static float GetYAngle(LHPoint* point);
	// BW1W120 00841260 BW1M119 01012630 (LHCombined Release)
	static float GetYAngle(LHPoint* from, LHPoint* to);
};

// TODO: Judging by the function address, this is the wrong TU for this:

// BW1W120 0074f680 BW1M119 0104c020
int __cdecl hypotenuse(int param_1, int param_2);
// BW1W120 0074d0c0 BW1M119 0102fd80 (LHCombined Release)
long __cdecl LHArcTan(long param_1, long param_2);

#endif /* BW1_DECOMP_LH3D_MATH_INCLUDED_H */
