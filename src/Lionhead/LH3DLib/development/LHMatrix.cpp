#include "LHMatrix.h"

#include <math.h> /* For atan, fabs */

#include "LH3DMath.h" /* For atan360 */
#include "LH3DTech.h" /* For Report3D__FPCce */

#define HEADING_MIN_LENGTH_SQUARED 0.000001f
#define INVERSE_EPSILON            1.0e-10f

// BW1W120 007faaa0 BW1M119 null
float __cdecl angle_difference_squared(float from, float to);

float __cdecl atan360(float x, float y)
{
	if (x >= y && -y <= x)
	{
		return atan(y / x);
	}
	if (y >= x && -x <= y)
	{
		return HALF_PI_F - atan(x / y);
	}
	if (-y >= x && x < y)
	{
		if (y >= 0.0f)
		{
			return atan(y / x) + PI_F;
		}
		return atan(y / x) - PI_F;
	}
	return -HALF_PI_F - atan(x / y);
}

float __cdecl heading_from_direction_vector(const LHPoint& direction)
{
	float z = direction.z;
	if (direction.x * direction.x + z * z > HEADING_MIN_LENGTH_SQUARED)
	{
		return atan360(-direction.z, direction.x);
	}
	return 0.0f;
}

float __cdecl angle_difference_squared(float from, float to)
{
	float difference = from - to;
	if (fabs(difference) >= PI_F)
	{
		if (from < 0.0f)
		{
			difference = from + TWO_PI - to;
		}
		else
		{
			difference += TWO_PI;
		}
	}
	return difference * difference;
}

float __cdecl angle_correct(float angle)
{
	if (angle > PI_F)
	{
		return angle - TWO_PI;
	}
	if (angle < -PI_F)
	{
		return angle + TWO_PI;
	}
	return angle;
}

inline float Element(const LHMatrix& matrix, int index)
{
	return matrix.m[index];
}

void LHMatrix::GetYXZ(float* y, float* x, float* z) const
{
	LHMatrix m = *this;
	*y = atan360(Element(m, 8), -Element(m, 6));
	m.PostRotateY(-*y);
	*x = atan360(Element(m, 8), Element(m, 7));
	m.PostRotateX(-*x);
	*z = atan360(Element(m, 0), -Element(m, 1));
}

void LHMatrix::NormaliseMatrixOnly()
{
	float scale = (InverseSquareRoot(_11 * _11 + _12 * _12 + _13 * _13));
	_11 *= scale;
	_12 *= scale;
	_13 *= scale;
	scale = (InverseSquareRoot(_21 * _21 + _22 * _22 + _23 * _23));
	_21 *= scale;
	_22 *= scale;
	_23 *= scale;
	scale = (InverseSquareRoot(_31 * _31 + _32 * _32 + _33 * _33));
	_31 *= scale;
	_32 *= scale;
	_33 *= scale;
}

void LHMatrix::Print()
{
	Report3D__FPCce("Matrix:%d\n", this);
	Report3D__FPCce("   %5.5f, %5.5f, %5.5f\n", _11, _12, _13);
	Report3D__FPCce("   %5.5f, %5.5f, %5.5f\n", _21, _22, _23);
	Report3D__FPCce("   %5.5f, %5.5f, %5.5f\n", _31, _32, _33);
	Report3D__FPCce("   %5.5f, %5.5f, %5.5f\n", _41, _42, _43);
}

void LHMatrix::SetYXZMatrixOnly(float y, float x, float z)
{
	float cy = cos(y);
	float sy = sin(y);
	float cx = cos(x);
	float sx = sin(x);
	float cz = cos(z);
	float sz = sin(z);
	float cycz = cz * cy;
	float szsx = sz * sx;
	float czsy = cz * sy;
	_11 = cycz - szsx * sy;
	_12 = -(sz * cx);
	_13 = szsx * cy + czsy;
	_21 = czsy * sx + sz * cy;
	_22 = cz * cx;
	_23 = sz * sy - cycz * sx;
	_31 = -(cx * sy);
	_32 = sx;
	_33 = cx * cy;
}

void LHMatrix::SetZXYMatrixOnly(float z, float x, float y)
{
	SetRotationY(y);
	PostRotateX(x);
	PostRotateZ(z);
}

void __fastcall LHMatrix::PreMultiply(const LHMatrix& matrix)
{
	LHMatrix copy;
	copy.Set(*this);
	LHMATRIX_MULTIPLY(*this, matrix, copy);
}

void __fastcall LHMatrix::PostMultiply(const LHMatrix& matrix)
{
	LHMatrix copy;
	copy.Set(*this);
	LHMATRIX_MULTIPLY(*this, copy, matrix);
}

void __fastcall LHMatrix::SetFromVectorAndAngle(const LHPoint& vector, float angle)
{
	float c = cos(angle);
	float s = sin(angle);
	float xx = vector.x * vector.x;
	float yy = vector.y * vector.y;
	float zz = vector.z * vector.z;
	float xy = vector.x * vector.y;
	float xz = vector.x * vector.z;
	float zy = vector.z * vector.y;
	float sx = s * vector.x;
	float sy = s * vector.y;
	float sz = s * vector.z;
	_11 = (1.0f - xx) * c + xx;
	_21 = xy - xy * c + sz;
	_31 = xz - xz * c - sy;
	_12 = xy - xy * c - sz;
	_22 = (1.0f - yy) * c + yy;
	_32 = zy - zy * c + sx;
	_13 = xz - xz * c + sy;
	_23 = zy - zy * c - sx;
	_33 = (1.0f - zz) * c + zz;
	_43 = 0.0f;
	_42 = 0.0f;
	_41 = 0.0f;
}

static float Epsilon = INVERSE_EPSILON;

inline void Invert(LHMatrix& result, const LHMatrix& r)
{
	float det = (r._32 * r._13 - r._33 * r._12) * r._21 + (r._23 * r._12 - r._13 * r._22) * r._31 +
	            (r._33 * r._22 - r._32 * r._23) * r._11;
	if (fabs(det) < Epsilon)
	{
		det = det < 0.0f ? -Epsilon : Epsilon;
	}
	float inverse = 1.0f / det;
	result._11 = (r._33 * r._22 - r._32 * r._23) * inverse;
	result._21 = (r._31 * r._23 - r._33 * r._21) * inverse;
	result._31 = (r._32 * r._21 - r._31 * r._22) * inverse;
	result._12 = (r._13 * r._32 - r._33 * r._12) * inverse;
	result._22 = (r._33 * r._11 - r._31 * r._13) * inverse;
	result._32 = (r._31 * r._12 - r._11 * r._32) * inverse;
	result._13 = (r._23 * r._12 - r._13 * r._22) * inverse;
	result._23 = (r._13 * r._21 - r._11 * r._23) * inverse;
	result._33 = (r._11 * r._22 - r._21 * r._12) * inverse;
	result._41 = -(r._42 * result._21 + r._43 * result._31 + r._41 * result._11);
	result._42 = -(result._32 * r._43 + r._41 * result._12 + result._22 * r._42);
	result._43 = -(r._41 * result._13 + result._33 * r._43 + result._23 * r._42);
}

void __fastcall LHMatrix::SetInverse(const LHMatrix& r)
{
	Invert(*this, r);
}

void LHMatrix::SetInverse()
{
	LHMatrix copy = *this;
	Invert(*this, copy);
}
