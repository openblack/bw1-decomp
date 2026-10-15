#ifndef BW1_DECOMP_LH3D_PRIMITIVE_INCLUDED_H
#define BW1_DECOMP_LH3D_PRIMITIVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "LH3DMaterial.h" /* For struct LH3DMaterial */
#include "LH3DTriangle.h" /* For struct LH3DTriangle */
#include "LHMatrix.h"     /* For struct LHMatrix */
#include "LHPlane.h"      /* For struct LHPlane */
#include "LHPoint.h"      /* For struct LHPoint */
#include "LH3DVertex.h"   /* For struct LH3DVertex, struct LH3DVertexBlending, struct Vertex3D */

#include <re_common.h> /* For bool32_t */

// Forward Declares

struct LH3DColor;
struct LH3DVertexGroup;
struct SRTextured;
struct SubCollideDataRender;
struct TShadowInfo;

#define LH3D_FOG_TABLE_SIZE     1024
#define LH3D_ENV_MAP_TABLE_SIZE 16

// GetGridIndex divides the map into cells of LH3D_GRID_CELL_SIZE units, LH3D_GRID_SIZE of them along each side.
#define LH3D_GRID_SIZE      256
#define LH3D_GRID_CELL_SIZE 10

// The size of l_point and l_bool.
#define LH3D_MAX_L_POINTS 3000

struct LH3DPrimitive
{
	LH3DMaterial        Material;    /* 0x0 */
	int                 NumVertices; /* 0x10 */
	LH3DVertex*         Vertices;
	int                 NumTriangles;
	LH3DTriangle*       Triangles;
	int                 NumVertexGroups; /* 0x20 */
	LH3DVertexGroup*    VertexGroups;
	int                 NumBlends;
	LH3DVertexBlending* Blends;

	// BW1W120 00c39264 BW1M119 011d0d54 (LHCombined Release)
	static int MIN_LIGHT;
	// BW1W120 00c39268 BW1M119 011d0d58 (LHCombined Release)
	static int g_envmaptable[LH3D_ENV_MAP_TABLE_SIZE];
	// BW1W120 00c392a8 BW1M119 011d0d98 (LHCombined Release)
	static bool32_t g_do_vertex_blending;
	// BW1W120 00c392ac BW1M119 011d0d9c (LHCombined Release)
	static float g_size_fine_wall;
	// BW1W120 00c392b0 BW1M119 011d0da0 (LHCombined Release)
	static float g_size_thick_wall;
	// BW1W120 00c392b4 BW1M119 011d0da4 (LHCombined Release)
	static int g_draw_depth;
	// BW1W120 00f030e8 BW1M119 012b3778 (LHCombined Release)
	static LHMatrix g_froz_wiggle_mat;
	// BW1W120 00f03118 BW1M119 012bf340 (LHCombined Release)
	static LHPlane g_clipping_plane_camera;
	// BW1W120 00f03128 BW1M119 012bf350 (LHCombined Release)
	static LHPlane g_clipping_plane_world;
	// BW1W120 00f03138 BW1M119 012bf360 (LHCombined Release)
	static int g_collide_count;
	// BW1W120 00f0313c BW1M119 012bf364 (LHCombined Release)
	static float g_best_vertex_inside_triangle;
	// BW1W120 00f03140 BW1M119 012bf388 (LHCombined Release)
	static LHPoint g_vect_light;
	// BW1W120 00f0314c BW1M119 012bf3a0 (LHCombined Release)
	static float g_fog_max;
	// BW1W120 00f03150 BW1M119 012bf3a4 (LHCombined Release)
	static float g_fog_min;
	// BW1W120 00f03154 BW1M119 012bf3a8 (LHCombined Release)
	static float g_delta_fog;
	// Each entry is a brightness to scale the vertex colour by, then the fog colour.
	// BW1W120 00f03158 BW1M119 012bf3ac (LHCombined Release)
	static unsigned long g_fog_table[LH3D_FOG_TABLE_SIZE][2];
	// BW1W120 00f05158 BW1M119 012bf368 (LHCombined Release)
	static Vertex3D g_vertex_inside_triangle;
	// BW1W120 00f05178 BW1M119 012bf39c (LHCombined Release)
	static float* g_lightmap_remap_uvs;
	// BW1W120 00f0517c BW1M119 012bf398 (LHCombined Release)
	static LH3DPrimitive* g_current_primitive;
	// BW1W120 00f05180 BW1M119 012bf394 (LHCombined Release)
	static float* g_vertical_translate_vertices;
	// BW1W120 00f05184 BW1M119 012bf33c (LHCombined Release)
	static int g_current_index_primitive;

	// Static methods

	// BW1W120 0084a430 BW1M119 0109f060 (LHCombined Release)
	static float GetFogFactor(const LHPoint& point);
	// BW1W120 0084a4b0 BW1M119 0109eec0 (LHCombined Release)
	static unsigned long ApplyFog(const LHPoint& point, LH3DColor* color);
	// BW1W120 0084a5b0 BW1M119 0109ed50 (LHCombined Release)
	static void CalcFogTable(float red, float green, float blue, float max_fog, float fog_min, float fog_max);
	// BW1W120 0084ab50 BW1M119 0109e410 (LHCombined Release)
	static void __fastcall Create(uint8_t* buffer, LH3DPrimitive* primitive);
	// BW1W120 00855340 BW1M119 01030180 (LHCombined Release)
	static void UpdatePreComputeLight(LHMatrix* matrix);
	// BW1W120 0085bf00 BW1M119 01036610 (LHCombined Release)
	static void StartFrameIncFrozVars();

	// Non-virtual methods

	// BW1W120 00807f30 BW1M119 01068ba0 (LHCombined Release)
	void ComputeBoundingBox(LHPoint& maxima, LHPoint& minima, int& initialized);
	// BW1W120 inlined BW1M119 01067ea0 (LHCombined Release)
	LH3DVertex* GetListVertex() { return Vertices; }
	// BW1W120 inlined BW1M119 010165f0 (LHCombined Release)
	int GetVerticesCount() { return NumVertices; }
	// BW1W120 0084a400 BW1M119 0109f120 (LHCombined Release)
	void ReverseTriangles();
	// BW1W120 0084a6d0 BW1M119 0109e780 (LHCombined Release)
	void __fastcall DrawIntoSprite(void* sprite);
	// BW1W120 0084ac20 BW1M119 01007910 (LHCombined Release)
	void ApplyVBlendsAndSetFlags(Vertex3D* points, unsigned long* flags);
	// BW1W120 0084ae00 BW1M119 0109e2c0 (LHCombined Release)
	void ApplyVBlendsAndSetFlagsMT(Vertex3DMT* points, unsigned long* flags);
	// BW1W120 0084afe0 BW1M119 0109dc30 (LHCombined Release)
	void DrawTextureShadow();
	// BW1W120 0084b7d0 BW1M119 0109d840 (LHCombined Release)
	void DrawTextureShadow32x32(SubCollideDataRender* collide, SRTextured* rasterizer, TShadowInfo* shadow);
	// BW1W120 0084ba90 BW1M119 0102b8e0 (LHCombined Release)
	void DrawLit();
	// BW1W120 0084c3c0 BW1M119 0101fdd0 (LHCombined Release)
	void DrawComplex();
	// BW1W120 0084ce20 BW1M119 0109cd20 (LHCombined Release)
	void DrawComplexFroz();
	// BW1W120 0084d2c0 BW1M119 0109ccc0 (LHCombined Release)
	void DrawComplexSnow();
	// BW1W120 0084d2d0 BW1M119 0109c4b0 (LHCombined Release)
	void DrawComplexEnvMapMT();
	// BW1W120 0084daa0 BW1M119 0109bc80 (LHCombined Release)
	void DrawComplexRefMapMT();
	// BW1W120 0084e200 BW1M119 01038bc0 (LHCombined Release)
	void DrawInShadow();
	// BW1W120 0084e990 BW1M119 0109ab20 (LHCombined Release)
	void __fastcall DrawVolLight(LHPoint* light, float intensity);
	// BW1W120 0084f2f0 BW1M119 0109a2f0 (LHCombined Release)
	void DrawFroz();
	// BW1W120 0084f910 BW1M119 01099680 (LHCombined Release)
	void DrawVolLightGJ();
	// BW1W120 008501b0 BW1M119 01098ef0 (LHCombined Release)
	void DrawCage(float scale);
	// BW1W120 00850900 BW1M119 0100d480 (LHCombined Release)
	int __fastcall ComputeProjectedPoints(float* projected, TShadowInfo* shadow, float* depths);
	// BW1W120 00850cc0 BW1M119 0100dc40 (LHCombined Release)
	void __fastcall DrawShadowPolys(uint8_t* buffer, long pitch, float* projected, TShadowInfo* shadow);
	// BW1W120 00850fa0 BW1M119 01098e00 (LHCombined Release)
	void DrawLit4();
	// BW1W120 00850fb0 BW1M119 01098dc0 (LHCombined Release)
	void FillListVertices4();
	// BW1W120 00850fc0 BW1M119 01017490 (LHCombined Release)
	void DrawWaterReflection();
	// BW1W120 00851870 BW1M119 010976e0 (LHCombined Release)
	void DrawSnow();
	// BW1W120 00852c40 BW1M119 0101cf70 (LHCombined Release)
	void DrawEnvMapMT();
	// BW1W120 00853a50 BW1M119 010963b0 (LHCombined Release)
	void DrawEnvMapST();
	// BW1W120 00854630 BW1M119 010957b0 (LHCombined Release)
	void DrawRefMapMT();
	// BW1W120 00855250 BW1M119 01095770 (LHCombined Release)
	void DrawNormals();
	// BW1W120 00855260 BW1M119 01095700 (LHCombined Release)
	void __fastcall Blend(LH3DPrimitive* from, LH3DPrimitive* to, float blend);
	// BW1W120 00855440 BW1M119 01007ad0 (LHCombined Release)
	bool32_t CheckTriangleCollide();
	// BW1W120 00855c70 BW1M119 01014b10 (LHCombined Release)
	bool32_t CheckTriangleCollideMorph();
	// BW1W120 008561d0 BW1M119 01005920 (LHCombined Release)
	bool32_t CheckPixelCollide();
	// BW1W120 00856a00 BW1M119 01094df0 (LHCombined Release)
	void __fastcall ComputeZForTriangleCollide(Vertex3D* top, Vertex3D* middle, Vertex3D* bottom);
	// BW1W120 00856b30 BW1M119 01000050 (LHCombined Release)
	bool32_t __fastcall ComputeVertexInsideTriangle(Vertex3D* top, Vertex3D* middle, Vertex3D* bottom);
	// BW1W120 00856d40 BW1M119 0102a620 (LHCombined Release)
	void Draw();
	// BW1W120 00857400 BW1M119 01094600 (LHCombined Release)
	void DrawUnlitWithUVRemap();
	// BW1W120 00857b20 BW1M119 01093ec0 (LHCombined Release)
	void DrawLightMap(LH3DMaterial* light_map, float* uvs, bool32_t reverse_winding, bool check_mouse);
	// BW1W120 008587b0 BW1M119 01093b90 (LHCombined Release)
	void DoMouseCheckMT();
	// BW1W120 008589b0 BW1M119 01093860 (LHCombined Release)
	void DoMouseCheck();
	// BW1W120 00858ba0 BW1M119 01092e80 (LHCombined Release)
	void DrawCutByPlane();
	// BW1W120 00859530 BW1M119 0102d3f0 (LHCombined Release)
	void DrawWithVerticalTranslation();
	// BW1W120 00859d90 BW1M119 01092a20 (LHCombined Release)
	void DrawSnowWithVerticalTranslation();
	// BW1W120 0085a6f0 BW1M119 010393d0 (LHCombined Release)
	void DrawInShadowWithVerticalTranslation();
	// BW1W120 0085ab10 BW1M119 0102b340 (LHCombined Release)
	void DrawLitUnclipped();
	// BW1W120 0085b250 BW1M119 01092270 (LHCombined Release)
	void DrawInShadowTnL();
	// BW1W120 0085b6b0 BW1M119 01091e20 (LHCombined Release)
	void DrawLitTnL();
	// BW1W120 0085ba30 BW1M119 0101fa30 (LHCombined Release)
	void DrawUnclipped();
	// BW1W120 0085c0e0 BW1M119 010915c0 (LHCombined Release)
	void DrawInBuildInside();
	// BW1W120 0085c7f0 BW1M119 01091220 (LHCombined Release)
	void DrawInBuild();
	// BW1W120 0085cf70 BW1M119 01090960 (LHCombined Release)
	void DrawSpecialLight(float time);
	// BW1W120 0085d770 BW1M119 01090910 (LHCombined Release)
	long GetTriangleCountDrawable();
	// BW1W120 0085d780 BW1M119 010907b0 (LHCombined Release)
	void GetTriangleDrawable(long index, LH3DVertex* a, LH3DVertex* b, LH3DVertex* c);
};
static_assert(sizeof(LH3DPrimitive) == 0x30, "Data type is of wrong size");

// BW1W120 0084ca00 BW1M119 0109d360 (LHCombined Release)
void __cdecl Draw3DClipTriangle(long num_points, Vertex3D* points, long num_triangles, long* indices,
                                LH3DMaterial* material);

#endif /* BW1_DECOMP_LH3D_PRIMITIVE_INCLUDED_H */
