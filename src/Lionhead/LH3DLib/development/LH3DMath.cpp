#include "LH3DMath.h"

#include <math.h> /* For atan2, sqrt */

#include "LH3DMem.h" /* For LH3DMem */
#include "LHPoint.h" /* For struct LHPoint */

// BW1W120 00eea394 BW1M100 101bca74
void* LH3DMath::g_inverse_sqrt_lookup_table;

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
	uint8_t* table = (uint8_t*)LH3DMem::Alloc(0x80);
	g_inverse_sqrt_lookup_table = table;
	for (int i = 0; i < 0x80; i++)
	{
		uint32_t magic = (i | 0x1f80) << 17;
		float    value = *(float*)&magic;

		union {
			float    value;
			uint32_t bits;
		} inv;

		inv.value = 1.0 / sqrt(value);
		*table++ = (uint8_t)((inv.bits + 0x2000) >> 15);
	}
	((uint8_t*)g_inverse_sqrt_lookup_table)[0x40] = 0xff;
}

// BW1W120 00841290 LH3DMath::GetYAngle(LHPoint *)
float LH3DMath::GetYAngle(LHPoint* point)
{
	float angle = (float)atan2(point->z, point->x);
	if (angle < 0.0f)
	{
		angle += 6.2831855f; // 2*pi (0x40c90fdb)
	}
	return angle;
}

// BW1W120 00841260 LH3DMath::GetYAngle(LHPoint *, LHPoint *)
// TODO: cl6 hoists the `from` load ahead of the first fld; the target keeps it after.
float LH3DMath::GetYAngle(LHPoint* from, LHPoint* to)
{
	float angle = (float)atan2(to->z - from->z, to->x - from->x);
	if (angle < 0.0f)
	{
		angle += 6.2831855f; // 2*pi (0x40c90fdb)
	}
	return angle;
}
