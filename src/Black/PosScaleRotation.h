#ifndef BW1_DECOMP_POS_SCALE_ROTATION_INCLUDED_H
#define BW1_DECOMP_POS_SCALE_ROTATION_INCLUDED_H

#include <assert.h>
#include <stddef.h>
#include <Lionhead/LH3DLib/development/LHMatrix.h>

// fabricated class tag: the nonpolymorphic Mac symbols do not distinguish class/struct.
class PosScaleRotation
{
public:
	// BW1W120 inlined BW1M119 01421090
	PosScaleRotation() : Scale(0.0f)
	{
		Rotation.SetIdentity();
		Position.SetNull();
	}
	// BW1W120 006a82e0 BW1M119 inlined
	PosScaleRotation(const LHPoint& position, float scale, const LHMatrix& rotation)
		: Position(position), Scale(scale), Rotation(rotation)
	{
	}

	// Inliner IL size: 217, plus the nested LHPoint operator and constructor
	// BW1W120 inlined BW1M119 inlined
	PosScaleRotation operator+(const PosScaleRotation& other) const
	{
		LHMatrix rotation = Rotation;
		rotation._11 += other.Rotation._11;
		rotation._12 += other.Rotation._12;
		rotation._13 += other.Rotation._13;
		rotation._21 += other.Rotation._21;
		rotation._22 += other.Rotation._22;
		rotation._23 += other.Rotation._23;
		rotation._31 += other.Rotation._31;
		rotation._32 += other.Rotation._32;
		rotation._33 += other.Rotation._33;
		rotation._41 += other.Rotation._41;
		rotation._42 += other.Rotation._42;
		rotation._43 += other.Rotation._43;
		return PosScaleRotation(Position + other.Position, Scale + other.Scale, rotation);
	}
	// Inliner IL size: 217, plus the nested LHPoint operator and constructor
	// BW1W120 inlined BW1M119 inlined
	PosScaleRotation operator-(const PosScaleRotation& other) const
	{
		LHMatrix rotation = Rotation;
		rotation._11 -= other.Rotation._11;
		rotation._12 -= other.Rotation._12;
		rotation._13 -= other.Rotation._13;
		rotation._21 -= other.Rotation._21;
		rotation._22 -= other.Rotation._22;
		rotation._23 -= other.Rotation._23;
		rotation._31 -= other.Rotation._31;
		rotation._32 -= other.Rotation._32;
		rotation._33 -= other.Rotation._33;
		rotation._41 -= other.Rotation._41;
		rotation._42 -= other.Rotation._42;
		rotation._43 -= other.Rotation._43;
		return PosScaleRotation(Position - other.Position, Scale - other.Scale, rotation);
	}
	// Inliner IL size: 82, plus the nested ScaleMatrixOnly, LHPoint operator and constructor
	// BW1W120 inlined BW1M119 inlined
	PosScaleRotation operator*(float t) const
	{
		LHMatrix rotation = Rotation;
		rotation.ScaleMatrixOnly(t);
		return PosScaleRotation(Position * t, Scale * t, rotation);
	}

	LHPoint  Position; /* 0x0 */
	float    Scale;    /* 0xc */
	LHMatrix Rotation; /* 0x10 */
};

static_assert(offsetof(PosScaleRotation, Scale) == 0xc, "PosScaleRotation scale offset is incorrect");
static_assert(offsetof(PosScaleRotation, Rotation) == 0x10, "PosScaleRotation rotation offset is incorrect");
static_assert(sizeof(PosScaleRotation) == 0x40, "PosScaleRotation size is incorrect");

#endif /* BW1_DECOMP_POS_SCALE_ROTATION_INCLUDED_H */
