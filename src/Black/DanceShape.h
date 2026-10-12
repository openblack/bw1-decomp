#ifndef BW1_DECOMP_DANCE_SHAPE_INCLUDED_H
#define BW1_DECOMP_DANCE_SHAPE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For class JustXZ */

#define DANCE_SHAPE_NUM_POINTS  256
#define DANCE_SHAPE_NAME_LENGTH 64
#define DANCE_SHAPE_RADIUS      0x10000
#define DANCE_SHAPE_PATH_LENGTH 256

enum DANCE_SHAPE
{
	DANCE_SHAPE_CIRCLE,
	DANCE_SHAPE_WAVEY_CIRCLE,
	DANCE_SHAPE_SPIRAL,
	DANCE_SHAPE_LOOP,
	DANCE_SHAPE_SQUARE,
	DANCE_SHAPE_LINE_VERTICAL,
	DANCE_SHAPE_LINE_HORIZONTAL,
	DANCE_SHAPE_POINT,
	DANCE_SHAPE_TRIANGLE,
	DANCE_SHAPE_HEART,
	DANCE_SHAPE_OCTAGON,
	DANCE_SHAPE_NON_CENTRED_LINE,
	DANCE_SHAPE_RANDOM_SCATTER,
	DANCE_SHAPE_STAR,
	DANCE_SHAPE_MAN,
	DANCE_SHAPE_COCK,
	DANCE_SHAPE_FISH,
	DANCE_SHAPE_LIGHTNING,
	DANCE_SHAPE_FIGURE_EIGHT,
	DANCE_SHAPE_ARC,
	DANCE_SHAPE_LETTER_A,
	DANCE_SHAPE_LETTER_B,
	DANCE_SHAPE_LETTER_C,
	DANCE_SHAPE_LETTER_D,
	DANCE_SHAPE_LETTER_E,
	DANCE_SHAPE_LETTER_F,
	DANCE_SHAPE_LETTER_G,
	DANCE_SHAPE_LETTER_H,
	DANCE_SHAPE_LETTER_I,
	DANCE_SHAPE_LETTER_J,
	DANCE_SHAPE_LETTER_K,
	DANCE_SHAPE_LETTER_L,
	DANCE_SHAPE_LETTER_M,
	DANCE_SHAPE_LETTER_N,
	DANCE_SHAPE_LETTER_O,
	DANCE_SHAPE_LETTER_P,
	DANCE_SHAPE_LETTER_Q,
	DANCE_SHAPE_LETTER_R,
	DANCE_SHAPE_LETTER_S,
	DANCE_SHAPE_LETTER_T,
	DANCE_SHAPE_LETTER_U,
	DANCE_SHAPE_LETTER_V,
	DANCE_SHAPE_LETTER_W,
	DANCE_SHAPE_LETTER_X,
	DANCE_SHAPE_LETTER_Y,
	DANCE_SHAPE_LETTER_Z,
	DANCE_SHAPE_LAST
};

class MakeShape
{
public:
	// Static methods

	// BW1W120 0050f9a0 BW1M119 012b3ee0
	static void MakeShapeCircle(unsigned long shape);
	// BW1W120 0050fa00 BW1M119 012b3d90
	static void MakeShapeWaveyCircle(unsigned long shape);
	// BW1W120 0050fa80 BW1M119 012b3c80
	static void MakeShapeSpiral(unsigned long shape);
	// BW1W120 0050fb70 BW1M119 012b38d0
	static void MakeShapeSquare(unsigned long shape);
	// BW1W120 0050fcd0 BW1M119 012b37c0
	static void MakeShapeLineVertical(unsigned long shape);
	// BW1W120 0050fd10 BW1M119 012b36a0
	static void MakeShapeLineHorizontal(unsigned long shape);
	// BW1W120 0050fd50 BW1M119 012b3560
	static void MakeShapeNonCentredHorizontalLine(unsigned long shape);
	// BW1W120 0050fd90 BW1M119 012b3460
	static void MakeShapeRandomScatter(unsigned long shape);
	// BW1W120 0050fe70 BW1M119 012b32d0
	static void MakeShapeLoop(unsigned long shape);
	// BW1W120 0050ff30 BW1M119 012b31f0
	static void MakeShapePoint(unsigned long shape);
	// BW1W120 0050ff50 BW1M119 012b2fe0
	static void MakeShapeTriangle(unsigned long shape);
	// BW1W120 00510090 BW1M119 012b2d50
	static void MakeShapeHeart(unsigned long shape);
	// BW1W120 00510210 BW1M119 012b2b70
	static void MakeShapeOctagon(unsigned long shape);
	// BW1W120 00510330 BW1M119 012b2b40
	static void LoadShape(unsigned long shape);
};

struct DanceShapeInfo
{
	char Name[DANCE_SHAPE_NAME_LENGTH];
	void (*Make)(unsigned long shape);
	char FileName[DANCE_SHAPE_NAME_LENGTH];
};

static_assert(sizeof(DanceShapeInfo) == 0x84, "Data type is of wrong size");

// BW1W120 008d47f8
extern const DanceShapeInfo DanceShapeInfos[DANCE_SHAPE_LAST];
// BW1W120 00cadb70
extern JustXZ DanceShapePoints[DANCE_SHAPE_LAST][DANCE_SHAPE_NUM_POINTS];

#endif /* BW1_DECOMP_DANCE_SHAPE_INCLUDED_H */
