#ifndef BW1_DECOMP_CHAIN_JOINT_INCLUDED_H
#define BW1_DECOMP_CHAIN_JOINT_INCLUDED_H

#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <Lionhead/LH3DLib/development/LH3DColor.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>

// ParticleChainJoint::DrawAt (BW1M119 013f92d0) sets all these fields, including
// an explicit LH3DColor construction at +0x14. Constructor: BW1W120 00695f00.
// fabricated class tag: the nonpolymorphic Mac symbols do not distinguish class/struct.
class ChainJoint
{
public:
	LHPoint   Position; /* 0x0 */
	float     Scale;    /* 0xc */
	LH3DColor Colour;   /* 0x10 */
	LH3DColor Specular; /* 0x14 */
	bool      Active;   /* 0x18 */

	// BW1W120 00695f00 BW1M119 inlined
	ChainJoint() : Scale(0.0f), Colour(0), Specular(0), Active(false) { Position.x = Position.y = Position.z = 0.0f; }
};

static_assert(offsetof(ChainJoint, Scale) == 0xc, "ChainJoint scale offset is incorrect");
static_assert(offsetof(ChainJoint, Colour) == 0x10, "ChainJoint colour offset is incorrect");
static_assert(offsetof(ChainJoint, Specular) == 0x14, "ChainJoint specular offset is incorrect");
static_assert(offsetof(ChainJoint, Active) == 0x18, "ChainJoint active offset is incorrect");
static_assert(sizeof(ChainJoint) == 0x1c, "ChainJoint size is incorrect");

#endif /* BW1_DECOMP_CHAIN_JOINT_INCLUDED_H */
