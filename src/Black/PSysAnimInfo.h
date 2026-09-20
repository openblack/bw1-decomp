#ifndef BW1_DECOMP_P_SYS_ANIM_INFO_INCLUDED_H
#define BW1_DECOMP_P_SYS_ANIM_INFO_INCLUDED_H

#include <assert.h>
#include <stddef.h>

// AtomCore +0x110: construction at 00673830, BW1M100 CalculateDrawPos at 10051bb0.
// InitAnimParticle (1043d980) copies both bools from AddBoolProperty-backed fields.
// fabricated class tag: the nonpolymorphic Mac symbols do not distinguish class/struct.
class PSysAnimInfo
{
public:
	float FrameRate;  /* 0x0 */
	int   FrameCount; /* 0x4: signed conversion and wraparound in CalculateDrawPos */
	bool  Loop;       /* 0x8 */
	bool  field_0x9;  // TODO: Original meaning unknown.
};

static_assert(offsetof(PSysAnimInfo, FrameCount) == 0x4, "PSysAnimInfo frame count offset is incorrect");
static_assert(offsetof(PSysAnimInfo, Loop) == 0x8, "PSysAnimInfo loop offset is incorrect");
static_assert(offsetof(PSysAnimInfo, field_0x9) == 0x9, "PSysAnimInfo flag offset is incorrect");
static_assert(sizeof(PSysAnimInfo) == 0xc, "PSysAnimInfo size is incorrect");

#endif /* BW1_DECOMP_P_SYS_ANIM_INFO_INCLUDED_H */
