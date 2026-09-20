#ifndef BW1_DECOMP_CALCULATE_DRAW_POS_INFO_INCLUDED_H
#define BW1_DECOMP_CALCULATE_DRAW_POS_INFO_INCLUDED_H

#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <Lionhead/LH3DLib/development/LHMatrix.h>

// AtomCore::CalculateDrawPos (BW1M100 10051bb0) premultiplies the matrix,
// multiplies Scale and combines Alpha. AtomCore construction at 00673830 agrees.
// TODO: The original also aliases the matrix as four points in an anonymous union.
// fabricated class tag: the nonpolymorphic Mac symbols do not distinguish class/struct.
class CalculateDrawPosInfo
{
public:
	LHMatrix Transform; /* 0x0 */
	float    Scale;     /* 0x30 */
	uint8_t  Alpha;     /* 0x34 */
};

static_assert(offsetof(CalculateDrawPosInfo, Scale) == 0x30, "CalculateDrawPosInfo scale offset is incorrect");
static_assert(offsetof(CalculateDrawPosInfo, Alpha) == 0x34, "CalculateDrawPosInfo alpha offset is incorrect");
static_assert(sizeof(CalculateDrawPosInfo) == 0x38, "CalculateDrawPosInfo size is incorrect");

#endif /* BW1_DECOMP_CALCULATE_DRAW_POS_INFO_INCLUDED_H */
