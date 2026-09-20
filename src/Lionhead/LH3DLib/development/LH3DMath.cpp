#include "LH3DMath.h"

#include <math.h> /* For atan2, sqrt */

#include "LH3DMem.h" /* For LH3DMem */
#include "LHPoint.h" /* For struct LHPoint */

// BW1W120 00eea394 BW1M100 101bca74
uint8_t (*LH3DMath::g_inverse_sqrt_lookup_table)[0x80];

// BW1W120 00841230 BW1M100 10061ed0 LH3DMath::Open(void)
void LH3DMath::Open()
{
	MakeInverseSqrtLookupTable();
}

// BW1W120 00841240 BW1M100 10061ed0 LH3DMath::Close(void)
void LH3DMath::Close()
{
	LH3DMem::Free(g_inverse_sqrt_lookup_table);
	g_inverse_sqrt_lookup_table = NULL;
}

// BW1W120 008411d0 LH3DMath::MakeInverseSqrtLookupTable(void)
void LH3DMath::MakeInverseSqrtLookupTable()
{
	union FloatBits {
		float    value;
		uint32_t bits;
	};

	uint8_t* table = (uint8_t*)LH3DMem::Alloc(sizeof(*LH3DMath::g_inverse_sqrt_lookup_table));
	g_inverse_sqrt_lookup_table = (uint8_t (*)[0x80])table;
	for (int i = 0; i < (int)sizeof(*LH3DMath::g_inverse_sqrt_lookup_table); i++)
	{
		// Seed for the Newton step: the exponent bits put the value in [0.5, 2.0) and the
		// index supplies the top mantissa bits, so the seed ramps one octave per 64 entries.
		FloatBits seed;
		seed.bits = (i | 0x1f80) << 17;

		FloatBits inv;
		inv.value = 1.0 / sqrt(seed.value);
		// Pack the reciprocal's mantissa bits 15-22 into this entry's byte.
		*table++ = (uint8_t)((inv.bits + 0x2000) >> 15);
	}
	(*g_inverse_sqrt_lookup_table)[sizeof(*LH3DMath::g_inverse_sqrt_lookup_table) / 2] = 0xff;
}

// BW1W120 00841290 LH3DMath::GetYAngle(LHPoint *)
float LH3DMath::GetYAngle(LHPoint* point)
{
	float angle = (float)atan2(point->z, point->x);
	if (angle < 0.0f)
	{
		angle += TWO_PI;
	}
	return angle;
}

// BW1W120 00841260 LH3DMath::GetYAngle(LHPoint *, LHPoint *)
float LH3DMath::GetYAngle(LHPoint* from, LHPoint* to)
{
	float angle = (float)atan2(to->z - from->z, to->x - from->x);
	if (angle < 0.0f)
	{
		angle += TWO_PI;
	}
	return angle;
}
