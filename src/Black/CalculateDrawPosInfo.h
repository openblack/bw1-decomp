#ifndef BW1_DECOMP_CALCULATE_DRAW_POS_INFO_INCLUDED_H
#define BW1_DECOMP_CALCULATE_DRAW_POS_INFO_INCLUDED_H

#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For LH3D_COLOR_OPAQUE */
#include <Lionhead/LH3DLib/development/LHMatrix.h>

#include "GJUtils.h" /* For boundf, GJUtils::LinterpNoBoundsCheck */

#define PSYS_MAX_ALPHA 255.0f

// AtomCore::CalculateDrawPos (BW1M119 01054540) premultiplies the matrix,
// multiplies Scale and combines Alpha. AtomCore construction at 00673830 agrees.
// TODO: The original also aliases the matrix as four points in an anonymous union.
// fabricated class tag: the nonpolymorphic Mac symbols do not distinguish class/struct.
class CalculateDrawPosInfo
{
public:
	LHMatrix Transform; /* 0x0 */
	float    Scale;     /* 0x30 */
	uint8_t  Alpha;     /* 0x34 */

	// Inliner IL size: 44, plus the nested SetIdentity
	// BW1W120 inlined BW1M119 inlined
	CalculateDrawPosInfo()
	{
		Scale = 1.0f;
		Alpha = LH3D_COLOR_OPAQUE;
		Transform.SetIdentity();
	}

	// Inliner IL size: 136, plus the nested LHMatrix::SetBlend
	// BW1W120 inlined BW1M119 inlined
	void SetBlend(const CalculateDrawPosInfo& from, const CalculateDrawPosInfo& to, float t)
	{
		Transform.SetBlend(from.Transform, to.Transform, t);
		Scale = GJUtils::LinterpNoBoundsCheck(from.Scale, to.Scale, t);
		Alpha = from.Alpha != to.Alpha
		            ? (uint8_t)boundf(0.0f, GJUtils::LinterpNoBoundsCheck((float)from.Alpha, (float)to.Alpha, t),
		                              PSYS_MAX_ALPHA)
		            : from.Alpha;
	}
};

static_assert(offsetof(CalculateDrawPosInfo, Scale) == 0x30, "CalculateDrawPosInfo scale offset is incorrect");
static_assert(offsetof(CalculateDrawPosInfo, Alpha) == 0x34, "CalculateDrawPosInfo alpha offset is incorrect");
static_assert(sizeof(CalculateDrawPosInfo) == 0x38, "CalculateDrawPosInfo size is incorrect");

#endif /* BW1_DECOMP_CALCULATE_DRAW_POS_INFO_INCLUDED_H */
