#ifndef BW1_DECOMP_PLASMA_INCLUDED_H
#define BW1_DECOMP_PLASMA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint, struct Point2D */

// Forward Declares

struct LH3DMaterial;
struct LH3DTexture;

struct Plasma
{
	LHPoint       points[0x4f7];       /* 0x0 */
	Point2D       uvs[0x4f7];          /* 0x3b94 */
	uint32_t      indices[0x3][0x960]; /* 0x634c */
	LH3DColor     colors[0x4f7];       /* 0xd3cc */
	LHPoint       field_0xe7a8[0x10];
	LHPoint       field_0xe868[0x10];
	LH3DTexture*  pin_texture; /* 0xe928 */
	LH3DMaterial* pin_material;

	// Non-virtual methods

	// BW1W120 0053c640 BW1M100 105c4040 Plasma::Init(void)
	void Init();
	// BW1W120 0053c840 BW1M100 105c3d50 Plasma::Render(int)
	void Render(int param_1);
	// BW1W120 inlined BW1M100 100c9220 Plasma::Close(void)
	void Close();
};

#endif /* BW1_DECOMP_PLASMA_INCLUDED_H */
