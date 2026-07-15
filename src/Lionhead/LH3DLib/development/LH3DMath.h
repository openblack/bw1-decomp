#ifndef BW1_DECOMP_LH3D_MATH_INCLUDED_H
#define BW1_DECOMP_LH3D_MATH_INCLUDED_H

struct LH3DMath
{
	// BW1W120 00eea394 BW1M100 101bca74
	static void* g_inverse_sqrt_lookup_table;

	// Static methods

	// BW1W120 00841230 BW1M100 10061ed0 LH3DMath::Open(void)
	void Open();
	// BW1W120 00841240 BW1M100 10061ed0 LH3DMath::Free(void)
	void Close();
};

// TODO: Judging by the function address, this is the wrong TU for this:

// BW1W120 0074f680 BW1M100 10049670 hypotenuse(long, long)
int __cdecl hypotenuse(int param_1, int param_2);
// BW1W120 0074d0c0 BW1M100 1004ed4c LHArcTan(long, long)
long __cdecl LHArcTan(long param_1, long param_2);

#endif /* BW1_DECOMP_LH3D_MATH_INCLUDED_H */
