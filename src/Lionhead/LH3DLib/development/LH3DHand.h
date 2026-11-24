#ifndef BW1_DECOMP_LH3D_HAND_INCLUDED_H
#define BW1_DECOMP_LH3D_HAND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uint16_t */

#include <re_common.h> /* For bool32_t */

struct Vertex3D;

// The hand is drawn into a square buffer of LH3D_HAND_SIZE pixels a side, leaving LH3D_HAND_BORDER pixels clear
// around it.
#define LH3D_HAND_SIZE   96
#define LH3D_HAND_BORDER 1

// The hand's texture is LH3D_HAND_TEXTURE_SIZE pixels a side, LH3D_HAND_TEXTURE_BPP bytes a pixel.
#define LH3D_HAND_TEXTURE_SIZE 64
#define LH3D_HAND_TEXTURE_BPP  3

// No vertex of the hand is lit darker than this.
#define LH3D_HAND_MIN_LIGHT 102

// DrawForMouse starts the hand's screen bounds this far outside the screen.
#define LH3D_HAND_BOUNDS_START 10000.0f

// The buffer holds 5:6:5 pixels. A texel channel times the light is a 16-bit value with the channel's field at the top.
#define LH3D_HAND_RED_MASK       0xf800
#define LH3D_HAND_RED_GREEN_MASK 0xffe0

// The span of one row of the hand's buffer that the edges added so far cover, with the texture coordinates and
// light at either end.
struct LH3DHandLine
{
	bool32_t Active; /* 0x0 */
	int      MinX;
	int      MaxX;
	float    MinU; /* 0xc */
	float    MaxU;
	float    MinV;
	float    MaxV; /* 0x18 */
	float    MinLight;
	float    MaxLight;
};
static_assert(sizeof(LH3DHandLine) == 0x24, "Data type is of wrong size");

// BW1W120 00f063b4 BW1M119 011ff13c (LHCombined Release)
extern uint8_t* g_raw_bitmap;

class LH3DHand
{
public:
	// BW1W120 00f063b0 BW1M119 011ff140 (LHCombined Release)
	static float g_hotspot_y;
	// BW1W120 00f063ac BW1M119 011ff144 (LHCombined Release)
	static float g_hotspot_x;
	// BW1W120 00f063a8 BW1M119 011ff148 (LHCombined Release)
	static uint16_t* g_buffer;
	// BW1W120 00f05628 BW1M119 011ff14c (LHCombined Release)
	static LH3DHandLine g_line[LH3D_HAND_SIZE];

	// Static methods

	// BW1W120 008631d0 BW1M119 01044730 (LHCombined Release)
	static void Init();
	// BW1W120 008629d0 BW1M119 01044ad0 (LHCombined Release)
	static void __fastcall AddEdge(Vertex3D* a, Vertex3D* b);
	// BW1W120 00863030 BW1M119 01044810 (LHCombined Release)
	static void Draw();
};

#endif /* BW1_DECOMP_LH3D_HAND_INCLUDED_H */
