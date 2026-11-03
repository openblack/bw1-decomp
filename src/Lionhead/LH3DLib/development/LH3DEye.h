#ifndef BW1_DECOMP_LH3D_EYE_INCLUDED_H
#define BW1_DECOMP_LH3D_EYE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

#include "LHPoint.h" /* For struct LHPoint */

#define LH3D_EYE_PART_COUNT 5
#define LH3D_EYE_TYPE_COUNT 3

// Forward Declares

class LH3DAnimatedObject;
class LH3DObject;
struct ExtraBone;
struct LHMatrix;

class LH3DEye
{
public:
	long                Type;
	ExtraBone*          Bones;
	LHPoint             Offset;
	float               field_0x14;
	float               field_0x18;
	float               field_0x1c;
	float               Angle;
	bool32_t            Blinking;
	long                field_0x28;
	long                BlinkDelay;
	float               LidClosure;
	long                BlinkTime;
	long                BlinkLength;
	LH3DObject*         Parts[LH3D_EYE_PART_COUNT];
	LH3DAnimatedObject* Object;

	// Static data

	// BW1W120 00c3a1d8 BW1M119 null
	static float LightAngles[LH3D_EYE_TYPE_COUNT][4];
	// BW1W120 00c3a208 BW1M119 null
	static int IrisFrames[LH3D_EYE_TYPE_COUNT];
	// BW1W120 00c3a214 BW1M119 null
	static float TurnSpeed;
	// BW1W120 00c3a218 BW1M119 null
	static uint32_t TargetInterval;
	// BW1W120 00faa7e8 BW1M119 null
	static float TargetAngle;
	// BW1W120 00faa7ec BW1M119 null
	static float MinLidClosure;
	// BW1W120 00faa7f0 BW1M119 null
	static uint32_t TargetTime;

	// Constructors

	// BW1W120 00884100 BW1M119 010b9f40 (LHCombined Release)
	LH3DEye(ExtraBone* bones, LH3DAnimatedObject* object, long index);

	// Destructor

	// BW1W120 00884570 BW1M119 010ba390 (LHCombined Release)
	~LH3DEye();

	// Non-virtual methods

	// BW1W120 00883560 BW1M119 01017d30 (LHCombined Release)
	void Draw();

private:
	// BW1W120 00883ea0 BW1M119 01013090 (LHCombined Release)
	void DrawPaupe(long index, LHMatrix* upper, LHMatrix* lower);
};
static_assert(sizeof(LH3DEye) == 0x54, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_EYE_INCLUDED_H */
