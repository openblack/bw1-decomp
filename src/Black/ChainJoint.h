#ifndef BW1_DECOMP_CHAIN_JOINT_INCLUDED_H
#define BW1_DECOMP_CHAIN_JOINT_INCLUDED_H

#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <Lionhead/LH3DLib/development/LH3DColor.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>

// BW1M100 103efa30 ParticleChainJoint::DrawAt sets all these fields, including
// an explicit LH3DColor construction at +0x14. Constructor: BW1W120 00695f00.
// fabricated class tag: the nonpolymorphic Mac symbols do not distinguish class/struct.
class ChainJoint
{
public:
	LHPoint   Position;   /* 0x0 */
	float     Scale;      /* 0xc */
	uint32_t  field_0x10; // TODO: First DrawData color word; original type unknown.
	LH3DColor Color;      /* 0x14 */
	bool      Active;     /* 0x18 */
};

static_assert(offsetof(ChainJoint, Scale) == 0xc, "ChainJoint scale offset is incorrect");
static_assert(offsetof(ChainJoint, Color) == 0x14, "ChainJoint color offset is incorrect");
static_assert(offsetof(ChainJoint, Active) == 0x18, "ChainJoint active offset is incorrect");
static_assert(sizeof(ChainJoint) == 0x1c, "ChainJoint size is incorrect");

#endif /* BW1_DECOMP_CHAIN_JOINT_INCLUDED_H */
