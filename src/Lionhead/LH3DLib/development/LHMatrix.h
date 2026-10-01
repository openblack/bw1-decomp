#ifndef BW1_DECOMP_LH_MATRIX_INCLUDED_H
#define BW1_DECOMP_LH_MATRIX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <math.h>   /* For cos, sin */

#include "LHPoint.h" /* For struct LHPoint */

// The element names are fabricated, after D3DMATRIX (DirectX 7): the Mac build's GetVectorX/Y/Z and GetPos
// accessors return the rows at 0x0, 0xc, 0x18 and 0x24.
// The union is inferred from MSVC6 inliner costs, not from symbols: a store to a named float member costs
// less IL than a store to m[i]. The helpers written against the named members (SetIdentity, SetScale,
// PostTranslation, RotateY) give inline sizes that reproduce the target's inlining decisions in every
// LH3DObject::SetPosition caller (Object::SetXYZAngles, Abode::CallVirtualFunctionsForCreation, ...), while
// Translation's cost fits only with m[] stores. See docs/msvc6_inliner.md.
struct LHMatrix
{
	union {
		struct
		{
			float _11, _12, _13; /* 0x0 */
			float _21, _22, _23; /* 0xc */
			float _31, _32, _33; /* 0x18 */
			float _41, _42, _43; /* 0x24 */
		};
		float m[0xc]; /* 0x0 */
	};

	// Non-virtual methods

	// Inliner IL size: 101
	// BW1W120 00403500 BW1M119 01044210
	void SetIdentity()
	{
		_43 = 0.0f;
		_42 = 0.0f;
		_41 = 0.0f;
		_32 = 0.0f;
		_31 = 0.0f;
		_23 = 0.0f;
		_21 = 0.0f;
		_13 = 0.0f;
		_12 = 0.0f;
		_33 = 1.0f;
		_22 = 1.0f;
		_11 = 1.0f;
	}
	// Inliner IL size: 105
	// BW1W120 00519320 BW1M119 inlined
	void SetScale(float scale)
	{
		_43 = 0.0f;
		_42 = 0.0f;
		_41 = 0.0f;
		_32 = 0.0f;
		_31 = 0.0f;
		_23 = 0.0f;
		_21 = 0.0f;
		_13 = 0.0f;
		_12 = 0.0f;
		_33 = scale;
		_22 = scale;
		_11 = scale;
	}
	// Inliner IL size: 68, plus the nested SetIdentity
	// BW1W120 00403530 BW1M119 inlined
	void __fastcall Translation(const LHPoint& translation)
	{
		SetIdentity();
		m[9] = translation.x;
		m[10] = translation.y;
		m[11] = translation.z;
	}
	// Inliner IL size: 69
	// BW1W120 00403570 BW1M119 inlined
	void __fastcall PostTranslation(const LHPoint& translation)
	{
		// Mac loads _41 first.
		_41 = _41 + translation.x;
		_42 = _42 + translation.y;
		_43 = _43 + translation.z;
	}
	// Inliner IL size: 60
	// BW1W120 004607b0 BW1M119 013eb4b0
	void __fastcall SetTranslateOnly(const LHPoint& translation)
	{
		m[9] = translation.x;
		m[10] = translation.y;
		m[11] = translation.z;
	}
	// Inliner IL size: 110
	// BW1W120 inlined BW1M119 013eb510
	void PreScale(float x, float y, float z)
	{
		m[0] *= x;
		m[1] *= x;
		m[2] *= x;
		m[3] *= y;
		m[4] *= y;
		m[5] *= y;
		m[6] *= z;
		m[7] *= z;
		m[8] *= z;
	}
	// Inliner IL size: 81, plus the nested SetIdentity
	// BW1W120 inlined BW1M119 inlined
	void SetRotationY(float angle)
	{
		SetIdentity();
		m[0] = m[8] = cos(angle);
		m[2] = sin(angle);
		m[6] = -m[2];
	}
	// Inliner IL size: <= 40, always inlined and never charged
	// BW1W120 inlined BW1M119 01043dd0
	const LHPoint& GetPos() const { return *(const LHPoint*)&m[9]; }
	// Inliner IL size: 187
	// BW1W120 005198f0 BW1M119 inlined
	void RotateY(float angle)
	{
		float c = cos(angle);
		float s = sin(angle);
		float t;
		t = _11 * s;
		_11 *= c;
		_11 += _31 * s;
		_31 *= c;
		_31 -= t;
		t = _12 * s;
		_12 *= c;
		_12 += _32 * s;
		_32 *= c;
		_32 -= t;
		t = _13 * s;
		_13 *= c;
		_13 += _33 * s;
		_33 *= c;
		_33 -= t;
	}
	// BW1W120 007fb290 BW1M119 0102fff0 (LHCombined Release)
	void __fastcall SetInverse(const LHMatrix& r);
	// BW1W120 007fab30 BW1M119 0100ee90 (LHCombined Release)
	void GetYXZ(float* y, float* x, float* z) const;
	// BW1W120 007fac10 BW1M119 01032770 (LHCombined Release)
	void SetYXZMatrixOnly(float y, float x, float z);
	// Inliner IL size: 183
	// BW1W120 inlined BW1M119 inlined
	LHPoint operator*(const LHPoint& point) const
	{
		return LHPoint(point.z * m[6] + point.y * m[3] + point.x * m[0] + m[9],
		               point.z * m[7] + point.y * m[4] + point.x * m[1] + m[10],
		               point.z * m[8] + point.y * m[5] + point.x * m[2] + m[11]);
	}
	// Inliner IL size: 180
	// BW1W120 inlined BW1M119 0102a970
	void TransformPoint(LHPoint& point) const
	{
		float x = point.x;
		float y = point.y;
		float z = point.z;
		point.x = m[0] * x + m[3] * y + m[6] * z + m[9];
		point.y = m[1] * x + m[4] * y + m[7] * z + m[10];
		point.z = m[2] * x + m[5] * y + m[8] * z + m[11];
	}
};

#endif /* BW1_DECOMP_LH_MATRIX_INCLUDED_H */
