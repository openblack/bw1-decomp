#ifndef BW1_DECOMP_LH3D_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_OBJECT_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <math.h>      /* For cos, sin */
#include <stdint.h>    /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHMatrix.h"  /* For struct LHMatrix */

// Forward Declares

struct LH3DAnim;
struct LH3DLODData;
struct LH3DMaterial;
struct LH3DMesh;
struct LHBoundingBox;
struct LHPoint;

class LH3DObject
{
public:
	enum ObjectType
	{
		STATIC = 0x0,
		MORPHABLE = 0x1,
		ANIMATED = 0x2,
		COMPLEX = 0x3,
		SMOKE = 0x4,
		FIRE_00 = 0x5,
		FIRE_35 = 0x6,
		MIST = 0x7,
		CITADEL = 0x8,
		COUNT = 0x9
	};

	uint32_t    Flags1; /* 0x4 */
	uint32_t    Flags2;
	uint32_t    field_0xc;
	float       importance; /* 0x10 */
	LHMatrix    matrix;
	float       scale; /* 0x44 */
	float       y_angle;
	LH3DColor   color;
	LH3DColor   specular; /* 0x50 */
	LH3DColor   WindowColor;
	int         SnowLevel;
	int         field_0x5c;
	uint32_t    field_0x60;
	uint32_t    field_0x64;
	float       u;
	float       v;
	LH3DObject* next; /* 0x70 */
	uint32_t    field_0x74;
	uint8_t     field_0x78;

	// Virtual functions

	// BW1W120 007f96a0 BW1M100 1001dd40 LH3DObject::IsPreSetup(void)
	virtual bool32_t IsPreSetup(); /* 0x0 */
	// BW1W120 purecall LH3DObject::Release(void)
	virtual void Release() = 0;
	// BW1W120 007f96e0 BW1M100 10029260 LH3DObject::GetU(void)
	virtual float GetU();
	// BW1W120 007f96f0 BW1M100 10029230 LH3DObject::GetV(void)
	virtual float GetV();
	// BW1W120 007fa250 BW1M100 10083a50 LH3DObject::SetPaper(int)
	virtual void __fastcall SetPaper(int param_1); /* 0x10 */
	// BW1W120 007fa260 BW1M100 10083a80 LH3DObject::IsPaper(void)
	virtual bool32_t IsPaper();
	// BW1W120 007f9700 BW1M100 10061c20 LH3DObject::SetNoSnow(int)
	virtual void SetNoSnow(int param_1);
	// BW1W120 007f9720 BW1M100 1004db20 LH3DObject::IsNoSnow(void)
	virtual bool32_t IsNoSnow();
	// BW1W120 00423140 BW1M100 10041480 LH3DObject::SetPosition(const LHPoint&, float, float)
	virtual void SetPosition_1(const LHPoint* point, float param_2, float param_3); /* 0x20 */
	// BW1W120 007f9730 BW1M100 10020600 LH3DObject::SetPosition(float, float, float)
	virtual void SetPosition_2(float x, float y, float z);
	// BW1W120 00815fa0 BW1M100 10076e50 LH3DObject::SetLinkedPosition(LH3DObject*, float, LH3DObject::LinkedType)
	virtual void SetLinkedPosition(LH3DObject* linked_obj);
	// BW1W120 007f9770 BW1M100 100205b0 LH3DObject::SetColorSpecular(unsigned long, unsigned long)
	virtual void SetColorSpecular(uint32_t param_1, uint32_t param_2);
	// BW1W120 007f9780 BW1M100 10019e00 LH3DObject::SetWindowColor(unsigned long)
	virtual void SetWindowColor(uint32_t color); /* 0x30 */
	// BW1W120 0080b480 BW1M100 100da290 LH3DObject::SetSnowlevel(int)
	virtual void SetSnowlevel_1(int level);
	// BW1W120 007f9790 BW1M100 10027d00 LH3DObject::SetSnowlevel(LHPoint&)
	virtual void SetSnowlevel_2(LHPoint* point);
	// BW1W120 00815620 BW1M100 10077f40 LH3DObject::IsUseAlpha(void)
	virtual bool32_t IsUseAlpha();
	// BW1W120 007f97a0 BW1M100 10007760 LH3DObject::SetNeedSorting(int)
	virtual void SetNeedSorting(int value); /* 0x40 */
	// BW1W120 007f97c0 BW1M100 10027dc0 LH3DObject::IsNeedSorting(void)
	virtual bool32_t IsNeedSorting();
	// BW1W120 00815920 BW1M100 10077340 LH3DObject::SetDrawWithGlobalAlpha(int)
	virtual void SetDrawWithGlobalAlpha(int param_1);
	// BW1W120 00815930 BW1M100 10077300 LH3DObject::IsDrawWithGlobalAlpha(void)
	virtual bool32_t IsDrawWithGlobalAlpha();
	// BW1W120 00815630 BW1M100 10077f10 LH3DObject::SetLinked(int)
	virtual void SetLinked(int param_1); /* 0x50 */
	// BW1W120 00815640 BW1M100 10077ed0 LH3DObject::IsLinked(void)
	virtual bool32_t IsLinked();
	// BW1W120 008168c0 BW1M100 1003a590 LH3DObject::SetDynamicLighting(int)
	virtual void __fastcall SetDynamicLighting(int param_1);
	// BW1W120 007f97d0 BW1M100 10029290 LH3DObject::IsDynamicLighting(void)
	virtual bool32_t IsDynamicLighting();
	// BW1W120 007f97e0 BW1M100 1007f970 LH3DObject::SetEnumFlag(int)
	virtual void SetEnumFlag(int flag); /* 0x60 */
	// BW1W120 007f9800 BW1M100 10145000 LH3DObject::GetEnumFlag(void)
	virtual int GetEnumFlag();
	// BW1W120 007f9810 BW1M100 1012b990 LH3DObject::SetSpecialLight(int)
	virtual void SetSpecialLight(int param_1);
	// BW1W120 007f9830 BW1M100 10017bf0 LH3DObject::GetSpecialLight(void)
	virtual int GetSpecialLight();
	// BW1W120 007f9840 BW1M100 100b1940 LH3DObject::SetDontDraw(int)
	virtual void SetDontDraw(int param_1); /* 0x70 */
	// BW1W120 007f9860 BW1M100 10027360 LH3DObject::GetDontDraw(void)
	virtual int GetDontDraw();
	// BW1W120 008168a0 BW1M100 10075d20 LH3DObject::SetCastDynamicShadow(int)
	virtual void __fastcall SetCastDynamicShadow(int param_1);
	// BW1W120 007f9870 BW1M100 10029320 LH3DObject::IsCastDynamicShadow(void)
	virtual bool32_t IsCastDynamicShadow();
	// BW1W120 007f9880 BW1M100 100476a0 LH3DObject::SetShadowOnTexture(int)
	virtual void SetShadowOnTexture(int param_1); /* 0x80 */
	// BW1W120 007f98a0 BW1M100 10072a40 LH3DObject::IsShadowOnTexture(void)
	virtual bool32_t IsShadowOnTexture();
	// BW1W120 00815940 BW1M100 100772c0 LH3DObject::SetFootPrintOnTexture(int)
	virtual void SetFootPrintOnTexture(int param_1);
	// BW1W120 00815950 BW1M100 10077280 LH3DObject::IsFootPrintOnTexture(void)
	virtual bool32_t IsFootPrintOnTexture();
	// BW1W120 007f98b0 BW1M100 10145040 LH3DObject::SetShadowOnTextureChroma(int)
	virtual void SetShadowOnTextureChroma(int param_1); /* 0x90 */
	// BW1W120 007f98d0 BW1M100 1000d780 LH3DObject::IsShadowOnTextureChroma(void)
	virtual bool32_t IsShadowOnTextureChroma();
	// BW1W120 007f98e0 BW1M100 100bef50 LH3DObject::SetDisappear(int)
	virtual void __fastcall SetDisappear(int param_1);
	// BW1W120 007f9900 BW1M100 10027e40 LH3DObject::IsDisappear(void)
	virtual bool32_t IsDisappear();
	// BW1W120 007f9910 BW1M100 10026f30 LH3DObject::SetNeedClipping(int)
	virtual void __fastcall SetNeedClipping(int param_1); /* 0xa0 */
	// BW1W120 007f9930 BW1M100 10028390 LH3DObject::IsNeedClipping(void)
	virtual bool32_t IsNeedClipping();
	// BW1W120 007f9950 BW1M100 100e0b70 LH3DObject::GetVisageId(void)
	virtual int GetVisageId();
	// BW1W120 007f9960 BW1M100 100af130 LH3DObject::SetVisage(long)
	virtual void SetVisage(int visage_id);
	// BW1W120 007f9980 BW1M100 10026ef0 LH3DObject::IsHuman(void)
	virtual bool32_t IsHuman(); /* 0xb0 */
	// BW1W120 007f9990 BW1M100 100c08e0 LH3DObject::SetHuman(void)
	virtual void SetHuman();
	// BW1W120 007f99b0 BW1M100 100d13e0 LH3DObject::IsInBuild(void)
	virtual bool32_t IsInBuild();
	// BW1W120 007f99c0 BW1M100 100b6490 LH3DObject::SetInBuild(int)
	virtual void SetInBuild(int param_1);
	// BW1W120 007f99e0 BW1M100 1001f020 LH3DObject::IsHumanShadowed(void)
	virtual bool32_t IsHumanShadowed(); /* 0xc0 */
	// BW1W120 007f99f0 BW1M100 1011cb40 LH3DObject::SetHumanShadowed(int)
	virtual void SetHumanShadowed(int param_1);
	// BW1W120 007f9a10 BW1M100 1001e9a0 LH3DObject::IsGlowing(void)
	virtual bool32_t IsGlowing();
	// BW1W120 007f9a20 BW1M100 10001ac0 LH3DObject::SetIsGlowing(int)
	virtual void SetIsGlowing(int param_1);
	// BW1W120 007f9a40 BW1M100 100155f0 LH3DObject::IsSuperSortedPolys(void)
	virtual bool32_t IsSuperSortedPolys(); /* 0xd0 */
	// BW1W120 007f9a50 BW1M100 100ba450 LH3DObject::SetSuperSortedPolys(int)
	virtual void SetSuperSortedPolys(int param_1);
	// BW1W120 007f9a70 BW1M100 1001c180 LH3DObject::IsFastBlending(void)
	virtual bool32_t IsFastBlending();
	// BW1W120 007f9a80 BW1M100 10068500 LH3DObject::SetFastBlending(float, LH3DMesh*, LH3DMesh*)
	virtual void SetFastBlending(float param_1, LH3DMesh* mesh1, LH3DMesh* mesh2);
	// BW1W120 007f9b10 BW1M100 1009b3f0 LH3DObject::SetNeedTilling(int)
	virtual void SetNeedTilling(int param_1); /* 0xe0 */
	// BW1W120 007f9b30 BW1M100 100291f0 LH3DObject::IsNeedTilling(void)
	virtual bool32_t IsNeedTilling();
	// BW1W120 007f9b40 BW1M100 10019170 LH3DObject::SetAnimatedUV(int)
	virtual void __fastcall SetAnimatedUV(int param_1);
	// BW1W120 007f9b70 BW1M100 100190b0 LH3DObject::SetAnimatedUV(float, float)
	virtual void __fastcall SetAnimatedUV(float u, float v);
	// BW1W120 007f9b60 BW1M100 100b0370 LH3DObject::IsAnimatedUV(void)
	virtual bool32_t IsAnimatedUV(); /* 0xf0 */
	// BW1W120 00815650 BW1M100 10077e80 LH3DObject::SetMesh(LH3DMesh*, LH3DMesh*, LH3DMesh*)
	virtual void __fastcall SetMesh(LH3DMesh* param_1, LH3DMesh* param_2, LH3DMesh* param_3);
	// BW1W120 00815660 BW1M100 10077e40 LH3DObject::GetMesh(void) const
	virtual LH3DMesh* GetMesh();
	// BW1W120 00815670 BW1M100 10077e00 LH3DObject::DrawDebugInfo(void)
	virtual void DrawDebugInfo();
	// BW1W120 00815680 BW1M100 10077dc0 LH3DObject::AddDrawing(void)
	virtual void AddDrawing(); /* 0x100 */
	// BW1W120 00815690 BW1M100 10077d70 LH3DObject::DrawWithClipping(void)
	virtual void DrawWithClipping();
	// BW1W120 008156b0 BW1M100 10077cf0 LH3DObject::Draw(void)
	virtual void Draw();
	// BW1W120 008156c0 BW1M100 10077cc0 LH3DObject::DrawTnL(void)
	virtual void DrawTnL();
	// BW1W120 007fa270 BW1M100 10083a10 LH3DObject::DrawPartialyBuilt(float)
	virtual void DrawPartialyBuilt(float param_1); /* 0x110 */
	// BW1W120 007fa280 BW1M100 10083ac0 LH3DObject::DrawSpecialLight(float, unsigned long)
	virtual void DrawSpecialLight(float param_1, uint32_t param_2);
	// BW1W120 008157c0 BW1M100 100778f0 LH3DObject::DrawUnderWater(void)
	virtual void DrawUnderWater();
	// BW1W120 00815f90 BW1M100 10076eb0 LH3DObject::DrawCutByPlane(void)
	virtual void DrawCutByPlane();
	// BW1W120 007fa290 BW1M100 10083b00 LH3DObject::DrawExtraMetric(void)
	virtual void DrawExtraMetric(); /* 0x120 */
	// BW1W120 00815740 BW1M100 10077a90 LH3DObject::DrawSnow(void)
	virtual void DrawSnow_1();
	// BW1W120 00815750 BW1M100 10077ac0 LH3DObject::DrawSnow(LH3DMaterial*)
	virtual void DrawSnow_2(LH3DMaterial* material);
	// BW1W120 00815720 BW1M100 10077b40 LH3DObject::DrawReverse(void)
	virtual void DrawReverse();
	// BW1W120 00815730 BW1M100 10077b00 LH3DObject::DrawGlassFronted(float, float)
	virtual void DrawGlassFronted(float param_1, float param_2, float param_3); /* 0x130 */
	// BW1W120 00815710 BW1M100 10077b80 LH3DObject::DrawCage(float)
	virtual void DrawCage(float param_1);
	// BW1W120 00815700 BW1M100 10077bb0 LH3DObject::DrawVolLightGJ(unsigned long, unsigned long, LH3DMaterial*)
	virtual void DrawVolLightGJ(uint32_t param_1, uint32_t param_2, LH3DMaterial* material);
	// BW1W120 008156e0 BW1M100 10077c40 LH3DObject::DrawEnvMapST(void)
	virtual void DrawEnvMapST();
	// BW1W120 008156f0 BW1M100 10077c00 LH3DObject::DrawLOD(LH3DLODData*, int)
	virtual void DrawLOD(LH3DLODData* lod_data, int param_2); /* 0x140 */
	// BW1W120 008156d0 BW1M100 10077c80 LH3DObject::DrawEnvMapMT(void)
	virtual void DrawEnvMapMT();
	// BW1W120 008157b0 BW1M100 10077930 LH3DObject::DrawRefMapMT(void)
	virtual void DrawRefMapMT();
	// BW1W120 008158d0 BW1M100 10077480 LH3DObject::DrawNormals(void) const
	virtual void DrawNormals();
	// BW1W120 008168e0 BW1M100 10075430 LH3DObject::DrawJustPhys(void)
	virtual void DrawJustPhys(); /* 0x150 */
	// BW1W120 008157a0 BW1M100 100779b0 LH3DObject::DrawFizz(void)
	virtual void DrawFizz_1();
	// BW1W120 00815790 BW1M100 10077970 LH3DObject::DrawFizz(float, LH3DMaterial*)
	virtual void DrawFizz_2(float param_1, LH3DMaterial* material);
	// BW1W120 00815780 BW1M100 10077a60 LH3DObject::DrawFroz(void)
	virtual void DrawFroz_1();
	// BW1W120 00815760 BW1M100 100779e0 LH3DObject::DrawFroz(float, unsigned long, LH3DMaterial*)
	virtual void DrawFroz_2(float param_1, uint32_t param_2, LH3DMaterial* material); /* 0x160 */
	// BW1W120 008158e0 BW1M100 10077440 LH3DObject::DrawTextureShadow(unsigned long, unsigned long) const
	virtual void DrawTextureShadow(uint32_t param_1, uint32_t param_2);
	// BW1W120 007fa2a0 BW1M100 1006bb20 LH3DObject::DrawTextureShadow32x32(SubCollideDataRender*, SRTextured*, TShadowInfo*)
	virtual void DrawTextureShadow32x32(void* param_1);
	// BW1W120 008158f0 BW1M100 10077400 LH3DObject::DrawMorphLand(void)
	virtual void DrawMorphLand();
	// BW1W120 00815900 BW1M100 100773c0 LH3DObject::DrawBlendBaseCitadelle(void)
	virtual void DrawBlendBaseCitadelle(); /* 0x170 */
	// BW1W120 00815910 BW1M100 10077380 LH3DObject::DrawIntoSprite(void*)
	virtual void DrawIntoSprite(void* sprite_data);
	// BW1W120 00815960 BW1M100 10077240 LH3DObject::DrawForMouse(void)
	virtual void DrawForMouse();
	// BW1W120 00815970 BW1M100 100771f0 LH3DObject::Blend(LH3DObject*, LH3DObject*, float)
	virtual void Blend(LH3DObject* obj1, LH3DObject* obj2);
	// BW1W120 008157d0 BW1M100 100778b0 LH3DObject::SetCurrentAnim(LH3DAnim*)
	virtual void SetCurrentAnim(LH3DAnim* anim); /* 0x180 */
	// BW1W120 008157e0 BW1M100 10077870 LH3DObject::GetCurrentAnim(void)
	virtual int GetCurrentAnim();
	// BW1W120 008157f0 BW1M100 10077830 LH3DObject::SetCurrentCycleTime(long)
	virtual void SetCurrentCycleTime(int time);
	// BW1W120 00815800 BW1M100 100777f0 LH3DObject::GetCurrentCycleTime(void)
	virtual float GetCurrentCycleTime();
	// BW1W120 00815810 BW1M100 100777b0 LH3DObject::SetLastAnim(const LH3DAnim*)
	virtual void SetLastAnim(const LH3DAnim* anim); /* 0x190 */
	// BW1W120 00815820 BW1M100 10077770 LH3DObject::GetLastAnim(void)
	virtual LH3DAnim* GetLastAnim();
	// BW1W120 00815830 BW1M100 10077730 LH3DObject::SetLastCycleTime(long)
	virtual void SetLastCycleTime(int time);
	// BW1W120 00815840 BW1M100 100776f0 LH3DObject::GetLastCycleTime(void)
	virtual float GetLastCycleTime();
	// BW1W120 00815850 BW1M100 100776b0 LH3DObject::SetBlendFactor(float)
	virtual void SetBlendFactor(float factor); /* 0x1a0 */
	// BW1W120 00815860 BW1M100 10077670 LH3DObject::GetBlendFactor(void)
	virtual float GetBlendFactor();
	// BW1W120 007f9bd0 BW1M100 10027e80 LH3DObject::IsComplex(void)
	virtual bool32_t IsComplex();
	// BW1W120 007f9be0 BW1M100 100077d0 LH3DObject::IsAnimated(void)
	virtual bool32_t IsAnimated();
	// BW1W120 007f9bf0 BW1M100 1001de50 LH3DObject::IsHDO(void)
	virtual bool32_t IsHDO(); /* 0x1b0 */
	// BW1W120 007f9c00 BW1M100 100baa50 LH3DObject::SetHDO(void)
	virtual void SetHDO();
	// BW1W120 00815870 BW1M100 10077630 LH3DObject::GetShadowInfo(void)
	virtual void* GetShadowInfo();
	// BW1W120 00815880 BW1M100 100775e0 LH3DObject::ContainsThisBoundingBox(const BBox2D&)
	virtual bool32_t ContainsThisBoundingBox(const LHBoundingBox* bbox);
	// BW1W120 00815890 BW1M100 10077580 LH3DObject::GetChimneyPos(LHPoint*) const
	virtual bool32_t __fastcall GetChimneyPos(LHPoint* point); /* 0x1c0 */
	// BW1W120 008158a0 BW1M100 10077520 LH3DObject::GetDoorPos(LHPoint*) const
	virtual bool32_t GetDoorPos(LHPoint* point);
	// BW1W120 008158b0 BW1M100 100774c0 LH3DObject::GetExtraPos(long, LHPoint*) const
	virtual bool32_t __fastcall GetExtraPos(int param_1, LHPoint* point);
	// BW1W120 007fa2b0 BW1M100 10083b40 LH3DObject::GetExtraPos(long, LHMatrix*)
	virtual void GetExtraPos(int param_1, LHMatrix* matrix);
	// BW1W120 007f9c10 BW1M100 10027e00 LH3DObject::SetLod(long)
	virtual void SetLod(int lod); /* 0x1d0 */
	// BW1W120 007f9c30 BW1M100 100290f0 LH3DObject::GetLod(void)
	virtual float GetLod();
	// BW1W120 007f9c40 BW1M100 100b4a10 LH3DObject::SetStatus(long)
	virtual void SetStatus(int status);
	// BW1W120 007f9c60 BW1M100 10028350 LH3DObject::GetStatus(void)
	virtual float GetStatus();
	// BW1W120 00815f70 BW1M100 10076f30 LH3DObject::CheckTriangleCollide(void)
	virtual void CheckTriangleCollide(); /* 0x1e0 */
	// BW1W120 00815f80 BW1M100 10076ef0 LH3DObject::CheckPixelCollide(void)
	virtual void CheckPixelCollide();
	// BW1W120 00815fb0 BW1M100 10076e10 LH3DObject::UpdateMelting(void)
	virtual void UpdateMelting();
	// BW1W120 00816340 BW1M100 10076810 LH3DObject::MeltBorder(void)
	virtual void MeltBorder();
	// BW1W120 007f9c70 BW1M100 10072a00 LH3DObject::IsMorphWithLand(void)
	virtual bool32_t IsMorphWithLand(); /* 0x1f0 */
	// BW1W120 007f9c80 BW1M100 101448f0 LH3DObject::IsStaticMorphable(void) const
	virtual bool32_t IsStaticMorphable();
	// BW1W120 007f9c90 BW1M100 1000b990 LH3DObject::IsTemple(void)
	virtual bool32_t IsTemple();
	// BW1W120 007f9ca0 BW1M100 10072a80 LH3DObject::IsChangedSize(void)
	virtual bool32_t IsChangedSize();
	// BW1W120 007f9cb0 BW1M100 10072ac0 LH3DObject::SetTempleLife(float)
	virtual void SetTempleLife(float life); /* 0x200 */
	// BW1W120 007f9cc0 BW1M100 10072b00 LH3DObject::GetTempleEntrance(void)
	virtual void* GetTempleEntrance();
	// BW1W120 007f9cd0 BW1M100 10072b40 LH3DObject::ProcessAlignement(void)
	virtual void ProcessAlignement();
	// BW1W120 007f9ce0 BW1M100 10072b80 LH3DObject::SetStage(float)
	virtual void SetStage(float stage);
	// BW1W120 007f9d00 BW1M100 10072bb0 LH3DObject::GetStage(void)
	virtual float GetStage_1(); /* 0x210 */
	// BW1W120 007f9cf0 BW1M100 10072bf0 LH3DObject::GetStage(float)
	virtual float GetStage_2(float param_1);
	// BW1W120 007f9d10 BW1M100 10072c30 LH3DObject::SetNasty(float)
	virtual void SetNasty(float nasty);
	// BW1W120 007f9d20 BW1M100 10072c60 LH3DObject::GetNasty(void)
	virtual float GetNasty();
	// BW1W120 007f9d30 BW1M100 10129d80 LH3DObject::InitTemple(LHPoint*, float)
	virtual void InitTemple(LHPoint* point, float param_2); /* 0x220 */
	// BW1W120 007fa2c0 BW1M100 10083b80 LH3DObject::GetNewEP(long, long, LHMatrix*)
	virtual void GetNewEP(int param_1, int param_2, LHMatrix* matrix);
	// BW1W120 007fa2d0 BW1M100 10083bc0 LH3DObject::HowManyNewEp(long)
	virtual int HowManyNewEp(int param_1);

	// Static methods

	// BW1W120 0080b4d0 BW1M100 100823e0 LH3DObject::Create(LH3DObject::ObjectType)
	static LH3DObject* __fastcall Create(ObjectType object_type);

	// Constructors

	// BW1W120 inlined BW1M100 inlined LH3DObject::LH3DObject(void)
	LH3DObject();
	// BW1W120 inlined BW1M100 100760c0 LH3DObject::~LH3DObject(void)
	~LH3DObject();

	// Non-virtual functions

	// BW1W120 00423140 BW1M100 10041480 LH3DObject::SetPosition(const LHPoint&, float, float)
	void SetPosition(const LHPoint& point, float y_angle, float scale)
	{
		if (y_angle != 0.0f)
		{
			if (scale != 1.0f)
			{
				matrix.m[11] = 0.0f;
				matrix.m[10] = 0.0f;
				matrix.m[9] = 0.0f;
				matrix.m[7] = 0.0f;
				matrix.m[6] = 0.0f;
				matrix.m[5] = 0.0f;
				matrix.m[3] = 0.0f;
				matrix.m[2] = 0.0f;
				matrix.m[1] = 0.0f;
				matrix.m[8] = scale;
				matrix.m[4] = scale;
				matrix.m[0] = scale;
				matrix.PostTranslation(point);
				float c = cos(y_angle);
				float s = sin(y_angle);
				float t;
				t = s * matrix.m[0];
				matrix.m[0] = c * matrix.m[0] + s * matrix.m[6];
				matrix.m[6] = c * matrix.m[6] - t;
				t = s * matrix.m[1];
				matrix.m[1] = c * matrix.m[1] + s * matrix.m[7];
				matrix.m[7] = c * matrix.m[7] - t;
				t = s * matrix.m[2];
				matrix.m[2] = c * matrix.m[2] + s * matrix.m[8];
				matrix.m[8] = c * matrix.m[8] - t;
			}
			else
			{
				matrix.Translation(point);
				float c = cos(y_angle);
				float s = sin(y_angle);
				float t;
				t = s * matrix.m[0];
				matrix.m[0] = c * matrix.m[0] + s * matrix.m[6];
				matrix.m[6] = c * matrix.m[6] - t;
				t = s * matrix.m[1];
				matrix.m[1] = c * matrix.m[1] + s * matrix.m[7];
				matrix.m[7] = c * matrix.m[7] - t;
				t = s * matrix.m[2];
				matrix.m[2] = c * matrix.m[2] + s * matrix.m[8];
				matrix.m[8] = c * matrix.m[8] - t;
			}
		}
		else
		{
			if (scale != 1.0f)
			{
				matrix.m[11] = 0.0f;
				matrix.m[10] = 0.0f;
				matrix.m[9] = 0.0f;
				matrix.m[7] = 0.0f;
				matrix.m[6] = 0.0f;
				matrix.m[5] = 0.0f;
				matrix.m[3] = 0.0f;
				matrix.m[2] = 0.0f;
				matrix.m[1] = 0.0f;
				matrix.m[8] = scale;
				matrix.m[4] = scale;
				matrix.m[0] = scale;
				matrix.PostTranslation(point);
			}
			else
			{
				matrix.Translation(point);
			}
		}
		this->scale = scale;
		this->y_angle = y_angle;
	}
};

// BW1W120 00ea1ab4 BW1M100 10082170 LH3DObject::Open(void)
extern LH3DMaterial* g_cool_effect_mat;

#endif /* BW1_DECOMP_LH3D_OBJECT_INCLUDED_H */
