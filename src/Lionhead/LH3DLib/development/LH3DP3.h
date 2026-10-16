#ifndef BW1_DECOMP_LH3DP3_INCLUDED_H
#define BW1_DECOMP_LH3DP3_INCLUDED_H

#include <stdint.h>    /* For uint16_t, uint32_t */
#include <re_common.h> /* For bool32_t */

#include "LH3DIsland.h" /* For struct LandBlock */

// Forward Declares

struct LH3DBoundingBox;
struct LH3DMapCoords;
struct LH3DPrimitive;
struct LH3DSprite;
struct LHPoint;
class LH3DObject;
struct LH3DP3;

// Pentium III / SSE fast paths for LH3DLib, built with Intel C++ 5.0. The
// generic routines check the CPU dispatch flag and tail-call these instead of
// the scalar versions when SSE is available.
struct LH3DP3
{
	// Runtime CPU capabilities, written by CheckCPU.
	// BW1W120 00e83a3c BW1M119 null
	static volatile bool IsPentium;
	// BW1W120 00e83a38 BW1M119 null
	static volatile bool IsPentiumPro;
	// BW1W120 00e83a34 BW1M119 null
	static volatile bool IsPentiumIII;
	// BW1W120 00e83a30 BW1M119 null
	static volatile bool IsPentium4;
	// BW1W120 00e83a2c BW1M119 null
	static volatile int HasCMOV;
	// BW1W120 00e83a28 BW1M119 null
	static volatile int HasMMX;
	// BW1W120 00e83a24 BW1M119 null
	static volatile int HasSSE;
	// BW1W120 00e83a20 BW1M119 null
	static volatile int HasSSE2;

	// Interpolates the intersection of edge inside->outside with the frustum plane named by mask into
	// LH3DTech::g_cache_t_points[out_index], and classifies the new vertex against the planes not clipped yet. A vertex
	// with no clip flags has already been projected, so an inside vertex is unprojected first, and a new vertex that
	// ends up inside is projected here.
	// BW1W120 007a1480 BW1M119 null
	static void __fastcall Intersect(uint32_t mask, uint16_t inside, uint16_t outside, uint16_t out_index);
	// BW1W120 007a1800 BW1M119 null
	static bool32_t __fastcall DrawLandBlock(LandBlock* block);
	// Sutherland-Hodgman clip against every plane still set in mask, from CLIP_CODE_NEAR down to CLIP_CODE_BOTTOM,
	// emitting the resulting fan.
	// BW1W120 007a3a50 BW1M119 null
	static void __fastcall ClipTriangle(uint16_t v0, uint16_t v1, uint16_t v2, uint32_t mask);
	// BW1W120 007a3ec0 BW1M119 null
	static void __fastcall GetColorAndSpecular(const LHPoint* pos, unsigned long* color, unsigned long* specular);
	// BW1W120 007a4170 BW1M119 null
	static void __fastcall GetColorAndSpecular(const LH3DMapCoords& coords, unsigned long* color,
	                                           unsigned long* specular);
	// BW1W120 007a43f0 BW1M119 null
	static void __fastcall DrawPrimitive0(LH3DPrimitive* primitive);
	// BW1W120 007a5260 BW1M119 null
	static void __fastcall DrawPrimitive1(LH3DPrimitive* primitive);
	// BW1W120 007a6960 BW1M119 null
	static void __fastcall DrawPrimitive2(LH3DPrimitive* primitive);
	// BW1W120 007a7e10 BW1M119 null
	static void __fastcall DrawPrimitive3(LH3DPrimitive* primitive);
	// BW1W120 007a8db0 BW1M119 null
	static void __fastcall DrawSprite(LH3DSprite* sprite);
	// BW1W120 007ab4b0 BW1M119 null
	static void __fastcall ProcessCell(uint16_t* dest, unsigned long pitch, unsigned long x, unsigned long z);
	// BW1W120 007abf90 BW1M119 null
	static void __fastcall BlendCountry(uint16_t* dest, unsigned long dest_pitch, uint16_t* src1,
	                                    unsigned long src1_pitch, uint16_t* src2, unsigned long src2_pitch,
	                                    uint16_t* src3, unsigned long src3_pitch);
	// BW1W120 007ac4d0 BW1M119 null
	static void __fastcall DrawTShadowAlpha(int unused);
	// BW1W120 007ac640 BW1M119 null
	static bool32_t __fastcall CheckRegionOnScreen(LH3DBoundingBox* box, LH3DObject* object);
	// BW1W120 007ac9e0 BW1M119 null
	static void Init();
	// BW1W120 007aca00 BW1M119 null
	static void CheckCPU();

	// BW1W120 007acc60 BW1M119 null
	static bool32_t __fastcall CheckRegionOnScreenWrapper(LH3DBoundingBox* box, LH3DObject* object);
	// BW1W120 007acc70 BW1M119 null
	static void DrawTShadowAlphaWrapper();
	// BW1W120 007acc80 BW1M119 null
	static void __fastcall BlendCountryWrapper(uint16_t* dest, unsigned long dest_pitch, uint16_t* src1,
	                                           unsigned long src1_pitch, uint16_t* src2, unsigned long src2_pitch,
	                                           uint16_t* src3, unsigned long src3_pitch);
	// BW1W120 007accc0 BW1M119 null
	static void __fastcall ProcessCellWrapper(uint16_t* dest, unsigned long pitch, unsigned long x, unsigned long z);
	// BW1W120 007acce0 BW1M119 null
	static void CreateListPolyUnclippedWrapper(LandBlock* block, LandBlock::LandMeshLOD lod);
	// BW1W120 007acd00 BW1M119 null
	static void CreateListPolyWrapper(LandBlock* block, LandBlock::LandMeshLOD lod);
	// BW1W120 007acd20 BW1M119 null
	static void __fastcall DrawSpriteWrapper(LH3DSprite* sprite);
	// BW1W120 007acd30 BW1M119 null
	static void DrawPrimitive3Wrapper(LH3DPrimitive* primitive);
	// BW1W120 007acd40 BW1M119 null
	static void DrawPrimitive2Wrapper(LH3DPrimitive* primitive);
	// BW1W120 007acd50 BW1M119 null
	static void DrawPrimitive1Wrapper(LH3DPrimitive* primitive);
	// BW1W120 007acd60 BW1M119 null
	static void DrawPrimitive0Wrapper(LH3DPrimitive* primitive);
	// BW1W120 007acd70 BW1M119 null
	static void __fastcall GetColorAndSpecularWrapper(const LH3DMapCoords& coords, unsigned long* color,
	                                                  unsigned long* specular);
	// BW1W120 007acd90 BW1M119 null
	static void __fastcall GetColorAndSpecularWrapper(const LHPoint* pos, unsigned long* color,
	                                                  unsigned long* specular);
	// BW1W120 007acdb0 BW1M119 null
	static void __fastcall ClipTriangleWrapper(uint16_t v0, uint16_t v1, uint16_t v2, uint32_t mask);

	// BW1W120 007ace10 BW1M119 null
	static void* GetTable0();
	// BW1W120 007ace20 BW1M119 null
	static void* GetTable1();
};

#endif /* BW1_DECOMP_LH3DP3_INCLUDED_H */
