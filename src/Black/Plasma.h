#ifndef BW1_DECOMP_PLASMA_INCLUDED_H
#define BW1_DECOMP_PLASMA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint, struct Point2D */

// Forward Declares

struct LH3DMaterial;
struct LH3DTexture;

#define PLASMA_COLUMNS       41
#define PLASMA_ROWS          31
#define PLASMA_NUM_POINTS    (PLASMA_COLUMNS * PLASMA_ROWS)
#define PLASMA_NUM_TRIANGLES ((PLASMA_COLUMNS - 1) * (PLASMA_ROWS - 1) * 2)
#define PLASMA_NUM_WAVES     16
#define PLASMA_NUM_PASSES    2

struct Plasma
{
	LHPoint       points[PLASMA_NUM_POINTS];         /* 0x0 */
	float         uvs[PLASMA_NUM_POINTS][2];         /* 0x3b94 */
	long          indices[PLASMA_NUM_TRIANGLES * 3]; /* 0x634c */
	LH3DColor     colors[PLASMA_NUM_POINTS];         /* 0xd3cc */
	LHPoint       Phases[PLASMA_NUM_WAVES];          /* 0xe7a8 */
	LHPoint       Speeds[PLASMA_NUM_WAVES];          /* 0xe868 */
	LH3DTexture*  PinTexture;                        /* 0xe928 */
	LH3DMaterial* PinMaterial;

	// BW1W120 inlined
	Plasma() { Init(); }

	// BW1W120 0053c640 BW1M119 015cadd0
	void Init();
	// BW1W120 0053c840 BW1M119 015caad0
	void Render(bool32_t animate);
	// BW1W120 inlined BW1M119 012fb970
	void Close();
};

#endif /* BW1_DECOMP_PLASMA_INCLUDED_H */
