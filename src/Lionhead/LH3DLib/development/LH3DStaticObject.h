#ifndef BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LH3DMeshedObject.h" /* For struct LH3DMeshedObject */

// Forward Declares

struct LH3DLODData;
struct LH3DMaterial;
struct SRTextured;
struct SubCollideDataRender;
struct SubMeshDrawData;
struct TShadowInfo;

// DrawPartialyBuilt raises the object out of the ground until it is LH3D_STATIC_OBJECT_BUILD_RISE_END built, and
// cuts it with a plane that sinks from its top to its base from LH3D_STATIC_OBJECT_BUILD_CUT_START built on. Besides
// the sub meshes of state 0 it draws those of the highest state, which is at least LH3D_STATIC_OBJECT_FIRST_BUILD_STATE.
#define LH3D_STATIC_OBJECT_BUILD_RISE_END    0.2f
#define LH3D_STATIC_OBJECT_BUILD_CUT_START   0.8f
#define LH3D_STATIC_OBJECT_BUILD_CUT_LENGTH  0.2f
#define LH3D_STATIC_OBJECT_FIRST_BUILD_STATE 1

class LH3DStaticObject : public LH3DMeshedObject
{
public:
	// Static data

	// BW1W120 00ea1b1c BW1M119 012b1aa4 (LHCombined Release)
	static float g_fizz_r_u;
	// BW1W120 00ea1b20 BW1M119 012b1aa0 (LHCombined Release)
	static float g_fizz_r_v;

	// Static methods

	// BW1W120 00813770 BW1M119 0100ac40 (LHCombined Release)
	static void StartFrameIncFizzVars();

	// Virtual methods

	// BW1W120 00816560 BW1M119 010733a0 (LHCombined Release)
	virtual void Release();
	// BW1W120 00815fc0 BW1M119 01030770 (LHCombined Release)
	virtual void __fastcall SetLinkedPosition(LH3DObject* linked_obj, float weight, LinkedType type);
	// BW1W120 0080db30 BW1M119 01028570 (LHCombined Release)
	virtual void Draw();
	// BW1W120 0080d3d0 BW1M119 0107d120 (LHCombined Release)
	virtual void DrawTnL();
	// BW1W120 00816ad0 BW1M119 01071e20 (LHCombined Release)
	virtual void DrawPartialyBuilt(float built);
	// BW1W120 008173e0 BW1M119 01071bb0 (LHCombined Release)
	virtual void DrawSpecialLight(float time, unsigned long special_color);
	// BW1W120 00811010 BW1M119 01015040 (LHCombined Release)
	virtual void DrawUnderWater();
	// BW1W120 0080c050 BW1M119 0107f270 (LHCombined Release)
	virtual void DrawCutByPlane();
	// BW1W120 0080ef20 BW1M119 0107b8f0 (LHCombined Release)
	virtual void DrawSnow();
	// BW1W120 0080f0a0 BW1M119 0107b280 (LHCombined Release)
	virtual void DrawSnow(LH3DMaterial* material);
	// BW1W120 0080c210 BW1M119 0107eb80 (LHCombined Release)
	virtual void DrawReverse();
	// BW1W120 0080c910 BW1M119 0107e860 (LHCombined Release)
	virtual void DrawGlassFronted(float zoom, float alpha);
	// BW1W120 0080cb50 BW1M119 0107e4b0 (LHCombined Release)
	virtual void DrawCage(float scale);
	// BW1W120 0080ce10 BW1M119 0107e280 (LHCombined Release)
	virtual void DrawVolLightGJ(unsigned long color, unsigned long specular, LH3DMaterial* material);
	// BW1W120 0080cfb0 BW1M119 0107df20 (LHCombined Release)
	virtual void DrawEnvMapST();
	// BW1W120 0080d230 BW1M119 0107dd00 (LHCombined Release)
	virtual void DrawLOD(LH3DLODData* lod_data, int lod);
	// BW1W120 0080f700 BW1M119 01022350 (LHCombined Release)
	virtual void DrawEnvMapMT();
	// BW1W120 0080f870 BW1M119 0107a9f0 (LHCombined Release)
	virtual void DrawRefMapMT();
	// BW1W120 008102b0 BW1M119 01079f20 (LHCombined Release)
	virtual void DrawNormals() const;
	// BW1W120 008137d0 BW1M119 01076c50 (LHCombined Release)
	virtual void DrawFizz(float amount, LH3DMaterial* material);
	// BW1W120 00810720 BW1M119 010793d0 (LHCombined Release)
	virtual void DrawFroz(float froz_amount, unsigned long froz_color, LH3DMaterial* material);
	// BW1W120 0080ecb0 BW1M119 0107bc80 (LHCombined Release)
	virtual void DrawTextureShadow(unsigned long tile_x, unsigned long tile_z) const;
	// BW1W120 0080ee80 BW1M119 0107ba60 (LHCombined Release)
	virtual void DrawTextureShadow32x32(SubCollideDataRender* collide, SRTextured* rasterizer, TShadowInfo* shadow);
	// BW1W120 0080ec70 BW1M119 0107c0e0 (LHCombined Release)
	virtual void __fastcall Blend(LH3DObject* obj1, LH3DObject* obj2, float blend);
	// BW1W120 00811300 BW1M119 0100ed50 (LHCombined Release)
	virtual bool32_t CheckTriangleCollide();
	// BW1W120 008111c0 BW1M119 01011590 (LHCombined Release)
	virtual bool32_t CheckPixelCollide();
	// BW1W120 00816350 BW1M119 010736a0 (LHCombined Release)
	virtual void MeltBorder();
	// BW1W120 0080f990 BW1M119 0107a7b0 (LHCombined Release)
	virtual int DrawLightMap(SubMeshDrawData* draw_data, int num_draw_data, int mode, int unused_mode,
	                         bool32_t reverse_winding, bool check_mouse);
	// BW1W120 008103b0 BW1M119 01079db0 (LHCombined Release)
	virtual void DrawJustPhys() const;

	// Constructors

	// BW1W120 00816540 BW1M119 01073430 (LHCombined Release)
	LH3DStaticObject();

	// Destructor

	// BW1W120 007fa180 BW1M119 01073020 (LHCombined Release)
	~LH3DStaticObject() { g_count_static_object--; }

	// Non-virtual methods

	// BW1W120 00810520 BW1M119 01079b20 (LHCombined Release)
	void DoFrozPart(float froz_amount, unsigned long froz_color, LH3DMaterial* material);
};

#endif /* BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H */
