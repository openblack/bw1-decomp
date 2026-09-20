#ifndef BW1_DECOMP_POS_SCALE_ROTATION_INCLUDED_H
#define BW1_DECOMP_POS_SCALE_ROTATION_INCLUDED_H

#include <assert.h>
#include <stddef.h>
#include <Lionhead/LH3DLib/development/LHMatrix.h>

// UR_Trail at 006a4280 copies AtomCore's position, scale and orientation here.
// BW1M100 10418080 initializes the matrix to identity; 10439d90 interpolates it.
// fabricated class tag: the nonpolymorphic Mac symbols do not distinguish class/struct.
class PosScaleRotation
{
public:
	LHPoint  Position; /* 0x0 */
	float    Scale;    /* 0xc */
	LHMatrix Rotation; /* 0x10 */
};

static_assert(offsetof(PosScaleRotation, Scale) == 0xc, "PosScaleRotation scale offset is incorrect");
static_assert(offsetof(PosScaleRotation, Rotation) == 0x10, "PosScaleRotation rotation offset is incorrect");
static_assert(sizeof(PosScaleRotation) == 0x40, "PosScaleRotation size is incorrect");

#endif /* BW1_DECOMP_POS_SCALE_ROTATION_INCLUDED_H */
