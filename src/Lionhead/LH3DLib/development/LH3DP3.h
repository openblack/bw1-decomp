#ifndef BW1_DECOMP_LH3DP3_INCLUDED_H
#define BW1_DECOMP_LH3DP3_INCLUDED_H

#include <stdint.h> /* For uint16_t, uint32_t */

// Forward Declares

struct LH3DP3;

// TODO: every name in this file is fabricated. No symbol survives for any of it.

// Output index list and clip scratch. Written here, read by the scalar renderer
// (Draw3DScreenTriangle and the Black/ render code), so not owned by this
// translation unit.
// BW1W120 00ea5de0
extern uint16_t g_TriangleList[]; // fabricated
// BW1W120 00ea9ea4
extern int g_TriangleListSize; // fabricated
// BW1W120 00ea9ea8
extern uint16_t g_NumClipVerts; // fabricated
// BW1W120 00ea9eb8
extern int g_NoBackfaceCull; // fabricated

// Viewport parameters, all written together by the setup at 0x00819030 from the
// screen size. 00e839e0..00e839fc are contiguous and are probably one struct:
// { float NearClip; int Width; int Height; float Aspect; float HalfW, HalfH;
//   float InvHalfW, InvHalfH; }.
// BW1W120 00e839e0
extern float g_NearClip; // fabricated
// BW1W120 00e839f0  { Width / 2, Height / 2 }
extern float g_HalfScreen[2]; // fabricated
// BW1W120 00e839f8  { 1 / g_HalfScreen[0], 1 / g_HalfScreen[1] }
extern float g_InvHalfScreen[2]; // fabricated
// BW1W120 00c2ab00  { Width - 1, Height - 1 }
extern float g_MaxScreen[2]; // fabricated

// Pentium III / SSE fast paths for LH3DLib, built with Intel C++ 5.0. The
// generic routines check the CPU dispatch flag and tail-call these instead of
// the scalar versions when SSE is available.
struct LH3DP3
{
	// TODO: Table0's extent is a guess -- it is read and written from several
	// other translation units (380 references) and the surrounding range holds
	// many other unnamed globals, so it is probably smaller than declared.
	// BW1W120 00e3b5e0  one clip-flag word per vertex; bits 0x02..0x20 are one plane each
	static int Table0[0x2080]; // fabricated
	// Table1 runs to 0x00e839e0, where the viewport globals start: 0x40200 bytes.
	// The 32-byte stride is confirmed independently from ClipEdge and ClipTriangle
	// (`[esi+eax*8+0xe437e0]` with esi = 16*i).
	// BW1W120 00e437e0  transformed vertices: D3DTLVERTEX (sx, sy, sz, rhw, colour, specular, tu, tv)
	static float Table1[0x2010][8];

	// Runtime CPU capability flags written by CheckCPU. No initialiser, so ICC
	// emits them as COMMON and rounds each up to 4 bytes even when bool, which is
	// why the byte-sized flags sit 4 apart. Declaration order is load-bearing:
	// ICC lists COMMON symbols in reverse declaration order and the linker
	// allocates them in symbol-table order, so this order reproduces
	// 00e83a20..00e83a3c.
	// TODO: volatile is unproven. Without it three of the seven cpu_specific
	// bodies stop matching (13 differing bytes becomes 38), so it is either
	// genuine or it is compensating for the compiler build gap.
	// BW1W120 00e83a3c
	static volatile bool IsPentium; // fabricated
	// BW1W120 00e83a38
	static volatile bool IsPentiumPro; // fabricated
	// BW1W120 00e83a34
	static volatile bool IsPentiumIII; // fabricated
	// BW1W120 00e83a30
	static volatile bool IsPentium4; // fabricated
	// BW1W120 00e83a2c
	static volatile int HasCMOV; // fabricated
	// BW1W120 00e83a28
	static volatile int HasMMX; // fabricated
	// BW1W120 00e83a24
	static volatile int HasSSE; // fabricated
	// BW1W120 00e83a20
	static volatile int HasSSE2; // fabricated

	// BW1W120 007a1480
	static void __fastcall ClipEdge(uint32_t mask, uint16_t inside, uint16_t outside, uint16_t out_index);
	// BW1W120 007a3a50
	static void __fastcall ClipTriangle(uint16_t v0, uint16_t v1, uint16_t v2, uint32_t mask);
	// Inlined into ClipTriangle; never emitted on its own.
	static void AddTriangle(uint16_t v0, uint16_t v1, uint16_t v2);
	// Inlined into ClipTriangle; never emitted on its own.
	static void EmitTriangle(uint16_t v0, uint16_t v1, uint16_t v2);
	// BW1W120 007a8db0
	static void __fastcall DrawSprite(float* param_1);
	// BW1W120 007aca00
	static void CheckCPU();
	// BW1W120 007acd20
	static void __fastcall DrawSpriteWrapper(float* param_1);
	// BW1W120 007ace10
	static void* GetTable0();
	// BW1W120 007ace20
	static void* GetTable1();
};

#endif /* BW1_DECOMP_LH3DP3_INCLUDED_H */
