#include "UtilsMath.h"

#include <math.h> /* For fabsf, sqrt */

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For hypotenuse, LH_SIN_TABLE_ONE */

#define FLOAT_EXPONENT_MASK       0x7f800000
#define INV_SQRT_EXPONENT_BIAS    0xbe000000
#define INV_SQRT_TABLE_INDEX_MASK 0x3ff
#define INV_SQRT_TABLE_MANTISSA   0x7fe000
#define INV_SQRT_TABLE_KEEP_BITS  0xff003fff
#define HYPOTENUSE_EPSILON        0.0001f

static bool32_t InverseSqrtTableInitialised;
static uint32_t InverseSqrtTable[1024];

static const double SinTableOne = LH_SIN_TABLE_ONE;

void build_inv_sqrt_table()
{
	if (!InverseSqrtTableInitialised)
	{
		InverseSqrtTableInitialised = true;
		for (int i = 0; i < (int)ARRAY_SIZE(InverseSqrtTable); i++)
		{
			float value = 1.0f;
			*(uint32_t*)&value =
				(*(uint32_t*)&value & INV_SQRT_TABLE_KEEP_BITS) | ((i & INV_SQRT_TABLE_INDEX_MASK) << 14);
			float inverse = 1.0f / (float)sqrt(value);
			if (inverse == 1.0f)
				InverseSqrtTable[i] = INV_SQRT_TABLE_MANTISSA;
			else
				InverseSqrtTable[i] = *(uint32_t*)&inverse & INV_SQRT_TABLE_MANTISSA;
		}
	}
}

float FastInverseSqrt(float value)
{
	uint32_t bits = *(uint32_t*)&value;
	uint32_t exponent = bits & FLOAT_EXPONENT_MASK;
	*(uint32_t*)&value = (((INV_SQRT_EXPONENT_BIAS - exponent) >> 1) & FLOAT_EXPONENT_MASK) |
	                     InverseSqrtTable[(bits >> 14) & INV_SQRT_TABLE_INDEX_MASK];
	return value;
}

float FastSqrt(float value)
{
	return 1.0 / FastInverseSqrt(value);
}

int __cdecl hypotenuse(int dx, int dz)
{
	float fx = dx * InverseSinTableOne;
	float fz = dz * InverseSinTableOne;
	return (int)(SinTableOne / FastInverseSqrt(fx * fx + fz * fz));
}

float __cdecl hypotenuse(float dx, float dz)
{
	if (fabsf(dx) <= HYPOTENUSE_EPSILON && fabsf(dz) <= HYPOTENUSE_EPSILON)
		return 0.0f;
	return 1.0f / FastInverseSqrt(dx * dx + dz * dz);
}

float hypotenuse_squared(float x, float z)
{
	return x * x + z * z;
}

int inverse_hypotenuse(int x, int z)
{
	float fx = x * InverseSinTableOne;
	float fz = z * InverseSinTableOne;
	return (int)(FastInverseSqrt(fx * fx + fz * fz) * InverseSinTableOne);
}
