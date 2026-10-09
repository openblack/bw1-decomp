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
	// BW1W120 inlined BW1M119 01099510
	LHPoint& GetVectorX() const { return *(LHPoint*)&m[0]; }
	// BW1W120 inlined BW1M119 010995c0
	LHPoint& GetVectorY() const { return *(LHPoint*)&m[3]; }
	// BW1W120 inlined BW1M119 01099540
	LHPoint& GetVectorZ() const { return *(LHPoint*)&m[6]; }
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
	// BW1W120 inlined BW1M119 inlined
	void PostRotateY(float angle)
	{
		float c = cos(angle);
		float s = sin(angle);
		float t;
		t = _11 * s;
		_11 *= c;
		_11 -= _13 * s;
		_13 *= c;
		_13 += t;
		t = _21 * s;
		_21 *= c;
		_21 -= _23 * s;
		_23 *= c;
		_23 += t;
		t = _31 * s;
		_31 *= c;
		_31 -= _33 * s;
		_33 *= c;
		_33 += t;
		t = _41 * s;
		_41 *= c;
		_41 -= _43 * s;
		_43 *= c;
		_43 += t;
	}
	// BW1W120 inlined BW1M119 inlined
	void PostRotateZ(float angle)
	{
		float c = cos(angle);
		float s = sin(angle);
		float t;
		t = _11 * s;
		_11 *= c;
		_11 += _12 * s;
		_12 *= c;
		_12 -= t;
		t = _21 * s;
		_21 *= c;
		_21 += _22 * s;
		_22 *= c;
		_22 -= t;
		t = _31 * s;
		_31 *= c;
		_31 += _32 * s;
		_32 *= c;
		_32 -= t;
		t = _41 * s;
		_41 *= c;
		_41 += _42 * s;
		_42 *= c;
		_42 -= t;
	}
	// BW1W120 inlined BW1M119 inlined
	void RotateX(float angle)
	{
		float c = cos(angle);
		float s = sin(angle);
		float t;
		t = _21 * s;
		_21 *= c;
		_21 -= _31 * s;
		_31 *= c;
		_31 += t;
		t = _22 * s;
		_22 *= c;
		_22 -= _32 * s;
		_32 *= c;
		_32 += t;
		t = _23 * s;
		_23 *= c;
		_23 -= _33 * s;
		_33 *= c;
		_33 += t;
	}
	// BW1W120 inlined BW1M119 inlined
	void RotateZ(float angle)
	{
		float c = cos(angle);
		float s = sin(angle);
		float t;
		t = _11 * s;
		_11 *= c;
		_11 -= _21 * s;
		_21 *= c;
		_21 += t;
		t = _12 * s;
		_12 *= c;
		_12 -= _22 * s;
		_22 *= c;
		_22 += t;
		t = _13 * s;
		_13 *= c;
		_13 -= _23 * s;
		_23 *= c;
		_23 += t;
	}
	// BW1W120 inlined BW1M119 01055f60
	void SetBlend(const LHMatrix& a, const LHMatrix& b, float t)
	{
		_11 = (b._11 - a._11) * t + a._11;
		_12 = (b._12 - a._12) * t + a._12;
		_13 = (b._13 - a._13) * t + a._13;
		_21 = (b._21 - a._21) * t + a._21;
		_22 = (b._22 - a._22) * t + a._22;
		_23 = (b._23 - a._23) * t + a._23;
		_31 = (b._31 - a._31) * t + a._31;
		_32 = (b._32 - a._32) * t + a._32;
		_33 = (b._33 - a._33) * t + a._33;
		_41 = (b._41 - a._41) * t + a._41;
		_42 = (b._42 - a._42) * t + a._42;
		_43 = (b._43 - a._43) * t + a._43;
	}
	// BW1W120 007fb290 BW1M119 0102fff0 (LHCombined Release)
	void __fastcall SetInverse(const LHMatrix& r);
	// BW1W120 007fae60 BW1M119 010305a0 (LHCombined Release)
	void __fastcall PreMultiply(const LHMatrix& m);
	// BW1W120 007fb3f0 BW1M119 010377a0 (LHCombined Release)
	void SetInverse();
	// BW1W120 007faff0 BW1M119 01028040 (LHCombined Release)
	void __fastcall PostMultiply(const LHMatrix& r);
	// fabricated name: PostMultiply for the 3x3 part only. The out-of-line copy sits among the ControlHand.cpp
	// functions; the Mac inlines it into ConvertToCameraFacingMatrix with a nested SetMatrixOnly call.
	// BW1W120 0046d9d0 BW1M119 inlined
	void __fastcall PostMultiplyMatrixOnly(const LHMatrix& r);
	// BW1W120 007fab30 BW1M119 0100ee90 (LHCombined Release)
	void GetYXZ(float* y, float* x, float* z) const;
	// BW1W120 007fb5c0 BW1M119 01022550 (LHCombined Release)
	void NormaliseMatrixOnly();
	// BW1W120 007fac10 BW1M119 01032770 (LHCombined Release)
	void SetYXZMatrixOnly(float y, float x, float z);
	// Inliner IL size: 183
	// BW1W120 inlined BW1M119 inlined
	LHPoint operator*(const LHPoint& point) const
	{
		return LHPoint(point.x * m[0] + point.y * m[3] + point.z * m[6] + m[9],
		               point.x * m[1] + point.y * m[4] + point.z * m[7] + m[10],
		               point.x * m[2] + point.y * m[5] + point.z * m[8] + m[11]);
	}
	// Inliner IL size: 180
	// BW1W120 00418a50 BW1M119 0102a970
	void __fastcall TransformPoint(LHPoint& point) const
	{
		float x = point.x;
		float y = point.y;
		float z = point.z;
		point.x = m[0] * x + m[3] * y + m[6] * z + m[9];
		point.y = m[1] * x + m[4] * y + m[7] * z + m[10];
		point.z = m[2] * x + m[5] * y + m[8] * z + m[11];
	}
	// fabricated name: scales the 3x3 part and leaves the translation alone, after SetMatrixOnly and
	// NormaliseMatrixOnly. Inlined into OneOffSpellSeed::FaceCamera on the Mac.
	// Inliner IL size: 108
	// BW1W120 00518b90 BW1M119 inlined
	void ScaleMatrixOnly(float scale)
	{
		m[0] *= scale;
		m[1] *= scale;
		m[2] *= scale;
		m[3] *= scale;
		m[4] *= scale;
		m[5] *= scale;
		m[6] *= scale;
		m[7] *= scale;
		m[8] *= scale;
	}
	// fabricated name: TransformPoint without the translation (after LH3DCore::InverseTransformVector).
	// Inlined into OneOffSpellSeed::FaceCamera on the Mac.
	// Inliner IL size: 156
	// BW1W120 00518bf0 BW1M119 inlined
	void __fastcall TransformVector(LHPoint& point) const
	{
		float x = point.x;
		float y = point.y;
		float z = point.z;
		point.x = m[0] * x + m[3] * y + m[6] * z;
		point.y = m[1] * x + m[4] * y + m[7] * z;
		point.z = m[2] * x + m[5] * y + m[8] * z;
	}
};

#endif /* BW1_DECOMP_LH_MATRIX_INCLUDED_H */
