#ifndef BW1_DECOMP_LH3D_MATH_INCLUDED_H
#define BW1_DECOMP_LH3D_MATH_INCLUDED_H

struct LHPoint;

struct LH3DMath
{
	// BW1W120 00eea394 BW1M100 101bca74
	static void* g_inverse_sqrt_lookup_table;

	// Static methods

	// BW1W120 00841230 BW1M100 10061ed0 LH3DMath::Open(void)
	static void Open();
	// BW1W120 00841240 BW1M100 10061ed0 LH3DMath::Free(void)
	static void Close();
	// BW1W120 008411d0 LH3DMath::MakeInverseSqrtLookupTable(void)
	static void MakeInverseSqrtLookupTable();
	// BW1W120 00841290 LH3DMath::GetYAngle(LHPoint *)
	static float GetYAngle(LHPoint* point);
	// BW1W120 00841260 LH3DMath::GetYAngle(LHPoint *, LHPoint *)
	static float GetYAngle(LHPoint* from, LHPoint* to);
};

// TODO: Judging by the function address, this is the wrong TU for this:

// BW1W120 0074f680 BW1M100 10049670 hypotenuse(long, long)
int __cdecl hypotenuse(int param_1, int param_2);
// BW1W120 0074d0c0 BW1M100 1004ed4c LHArcTan(long, long)
long __cdecl LHArcTan(long param_1, long param_2);

#endif /* BW1_DECOMP_LH3D_MATH_INCLUDED_H */
