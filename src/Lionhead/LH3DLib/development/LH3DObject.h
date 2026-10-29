#ifndef BW1_DECOMP_LH3D_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_OBJECT_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <math.h>      /* For cos, sin */
#include <stddef.h>    /* For NULL */
#include <stdint.h>    /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHMatrix.h"  /* For struct LHMatrix */

// Forward Declares

struct BBox2D;
struct LH3DAnim;
struct LH3DEnvMatInfo;
struct LH3DLODData;
struct LH3DMaterial;
struct LH3DMesh;
struct LH3DTexture;
struct LHPoint;
struct SRTextured;
struct SubCollideDataRender;
struct TShadowInfo;

// The materials an object drawn with DrawTriangleFastBlending can blend into, one per primitive.
#define LH3D_OBJECT_FAST_BLENDING_MATERIALS 256
// The environment materials an object can be mapped with.
#define LH3D_OBJECT_ENV_MATS 256
// The colour and specular an object is lit with until told otherwise.
#define LH3D_OBJECT_DEFAULT_COLOR 0xffffffff
// The deepest snow an object can be covered with.
#define LH3D_OBJECT_MAX_SNOW_LEVEL 0xff
// The snow level from which an object is drawn covered with snow.
#define LH3D_OBJECT_MIN_SNOW_LEVEL 5
// The diagonal of a square shadow over the length of its side.
#define LH3D_OBJECT_SHADOW_DIAGONAL_SCALE 1.4142f

enum LH3D_OBJECT_FLAGS2
{
	LH3D_OBJECT_FLAGS2_OUT_OF_MAP = 0x40,
	LH3D_OBJECT_FLAGS2_NEED_CLIPPING = 0x80,
	LH3D_OBJECT_FLAGS2_NO_BUILD_OUTLINE = 0x200,
};

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

	enum ENV_MAP_TYPE
	{
		ENV_MAP_TYPE_NONE = -1,
		ENV_MAP_TYPE_DEFAULT = 0,
		ENV_MAP_TYPE_GLASS_FX = 1,
		ENV_MAP_TYPE_GLASS_FX_INV = 2,
		ENV_MAP_TYPE_GLASS_FX2_INV = 3,
		ENV_MAP_TYPE_COUNT = 4
	};

	enum LinkedType
	{
		LINKED_TYPE_HAND = 0x0,
#ifdef VERSION_BW1WCI
		LINKED_TYPE_CI_PAD0,
		LINKED_TYPE_CI_PAD1,
		LINKED_TYPE_CI_PAD2,
		LINKED_TYPE_CI_PAD3,
		LINKED_TYPE_CI_PAD4,
		LINKED_TYPE_CI_PAD5,
		LINKED_TYPE_CI_PAD6,
		LINKED_TYPE_CI_PAD7,
		LINKED_TYPE_CI_PAD8,
		LINKED_TYPE_CI_PAD9,
		LINKED_TYPE_CI_PAD10,
		LINKED_TYPE_CI_PAD11,
		LINKED_TYPE_CI_PAD12,
		LINKED_TYPE_CI_PAD13,
		LINKED_TYPE_CI_PAD14,
		LINKED_TYPE_CI_PAD15,
		LINKED_TYPE_CI_PAD16,
		LINKED_TYPE_CI_PAD17,
		LINKED_TYPE_CI_PAD18,
		LINKED_TYPE_CI_PAD19,
		LINKED_TYPE_CI_PAD20,
		LINKED_TYPE_CI_PAD21,
		LINKED_TYPE_CI_PAD22,
		LINKED_TYPE_CI_PAD23,
#endif
	};

	union {
		uint32_t Flags1;
		struct
		{
			uint32_t Lod : 3;
			uint32_t Disappear : 1;
			uint32_t NeedSorting : 1;
			uint32_t DynamicLighting : 1;
			uint32_t CastDynamicShadow : 1;
			uint32_t DrawWithGlobalAlpha : 1;
			uint32_t Paper : 1;
			uint32_t NeedTilling : 1;
			uint32_t AnimatedUV : 1;
			uint32_t EnumFlag : 1;
			uint32_t ShadowOnTexture : 1;
			uint32_t ShadowOnTextureChroma : 1;
			uint32_t FootPrintOnTexture : 1;
			uint32_t Linked : 1;
			uint32_t NeedClipping : 1;
			uint32_t VisageId : 2;
			uint32_t Human : 2;
			uint32_t Status : 3;
			uint32_t FastBlending : 1;
			uint32_t SuperSortedPolys : 1;
			uint32_t HumanShadowed : 1;
			uint32_t InBuild : 1;
			uint32_t Glowing : 1;
		};
	};
	uint32_t      Flags2;
	ENV_MAP_TYPE  EnvMap;
	float         importance;
	LHMatrix      matrix;
	float         scale;
	float         y_angle;
	unsigned long color;
	unsigned long specular;
	LH3DColor     WindowColor;
	int           SnowLevel;
	int           MaxSnowLevel;
	int           SnowLevelScale;
	bool32_t      DrawAsFence;
	float         u;
	float         v;
	LH3DObject*   next;
	LH3DMesh*     FastBlendingMesh;
	uint8_t       Alpha;

	// Static data

	// BW1W120 00ea1ac8 BW1M119 012b1f00 (LHCombined Release)
	static int g_selected_px;
	// BW1W120 00ea1acc BW1M119 012b1efc (LHCombined Release)
	static int g_selected_py;
	// BW1W120 00ea1ad0 BW1M119 012b1ef8 (LHCombined Release)
	static bool32_t g_last_selected_box;
	// BW1W120 00ea1af0 BW1M119 012b1ed8 (LHCombined Release)
	static bool32_t g_b_last_on_screen;
	// BW1W120 00ea1af4 BW1M119 012b1ed4 (LHCombined Release)
	static float g_last_distance;
	// BW1W120 00c37ea0 BW1M119 011cfb50 (LHCombined Release)
	static float g_last_radius;
	// BW1W120 00ea1ae8 BW1M119 012b1ee0 (LHCombined Release)
	static LH3DObject* g_current_object_in_draw;
	// BW1W120 00ea1afc BW1M119 012b1ecc (LHCombined Release)
	static int g_env_map_mode;
	// BW1W120 00ea0284 BW1M119 012b1f04 (LHCombined Release)
	static LH3DEnvMatInfo* g_cur_env_mat_info;
	// BW1W120 00c37ea4 BW1M119 011cfb54 (LHCombined Release)
	static float g_env_map_zoom_x;
	// BW1W120 00c37ea8 BW1M119 011cfb58 (LHCombined Release)
	static float g_env_map_zoom_y;
	// BW1W120 00ea1af8 BW1M119 012b1ed0 (LHCombined Release)
	static bool g_env_map_tex_color_env_alpha;
	// BW1W120 00ea1b08 BW1M119 012b1ec0 (LHCombined Release)
	static float g_env_map_z_rot;
	// BW1W120 00ea1ad4 BW1M119 012b1ef4 (LHCombined Release)
	static int g_count_static_object;
	// BW1W120 00ea1ad8 BW1M119 012b1ef0 (LHCombined Release)
	static int g_count_animated_object;
	// BW1W120 00ea1adc BW1M119 012b1eec (LHCombined Release)
	static int g_count_complex_object;
	// BW1W120 00ea1ae0 BW1M119 012b1ee8 (LHCombined Release)
	static bool32_t g_b_open;
	// BW1W120 00ea1ae4 BW1M119 012b1ee4 (LHCombined Release)
	static LH3DObject* g_first;
	// BW1W120 00ea0288 BW1M119 012b1f08 (LHCombined Release)
	static LH3DEnvMatInfo g_env_mat_info[LH3D_OBJECT_ENV_MATS];
	// BW1W120 00ea1b00 BW1M119 012b1ec8 (LHCombined Release)
	static float g_env_map_offset_x;
	// BW1W120 00ea1b04 BW1M119 012b1ec4 (LHCombined Release)
	static float g_env_map_offset_y;
	// BW1W120 00e9fe84 BW1M119 012b1ac0 (LHCombined Release)
	static LH3DMaterial* g_fb_list_mat[LH3D_OBJECT_FAST_BLENDING_MATERIALS];

	// Virtual functions

	// BW1W120 007f96a0 BW1M119 0101de20 (LHCombined Release)
	virtual bool32_t IsPreSetup();
	// BW1W120 purecall
	virtual void Release() = 0;
	// BW1W120 007f96e0 BW1M119 010293e0 (LHCombined Release)
	virtual float GetU();
	// BW1W120 007f96f0 BW1M119 010293b0 (LHCombined Release)
	virtual float GetV();
	// BW1W120 007fa250 BW1M119 01081470 (LHCombined Release)
	virtual void __fastcall SetPaper(bool32_t paper);
	// BW1W120 007fa260 BW1M119 010814a0 (LHCombined Release)
	virtual bool32_t IsPaper();
	// BW1W120 007f9700 BW1M119 010606e0 (LHCombined Release)
	virtual void __fastcall SetNoSnow(bool32_t no_snow);
	// BW1W120 007f9720 BW1M119 0109d530 (LHCombined Release)
	virtual bool32_t IsNoSnow();
	// BW1W120 007f9730 BW1M119 01020630 (LHCombined Release)
	virtual void SetPosition(float x, float y, float z);
	// Inliner IL size: 194
	// BW1W120 00423140 BW1M119 01020820 (LHCombined Release)
	virtual void __fastcall SetPosition(const LHPoint& point, float y_angle, float scale)
	{
		if (y_angle != 0.0f)
		{
			if (scale != 1.0f)
			{
				matrix.SetScale(scale);
				matrix.PostTranslation(point);
				matrix.RotateY(y_angle);
			}
			else
			{
				matrix.Translation(point);
				matrix.RotateY(y_angle);
			}
		}
		else
		{
			if (scale != 1.0f)
			{
				matrix.SetScale(scale);
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
	// BW1W120 00815fa0 BW1M119 01073c20 (LHCombined Release)
	virtual void __fastcall SetLinkedPosition(LH3DObject* linked_obj, float weight, LinkedType type);
	// BW1W120 007f9770 BW1M119 010205e0 (LHCombined Release)
	virtual void __fastcall SetColorSpecular(unsigned long color, unsigned long specular);
	// BW1W120 007f9780 BW1M119 01019f00 (LHCombined Release)
	virtual void __fastcall SetWindowColor(unsigned long color); /* 0x30 */
	// BW1W120 007f9790 BW1M119 01092730 (LHCombined Release)
	virtual void __fastcall SetSnowlevel(int level);
	// BW1W120 0080b480 BW1M119 01027e80 (LHCombined Release)
	virtual void SetSnowlevel(LHPoint& point);
	// BW1W120 00815620 BW1M119 01074d10 (LHCombined Release)
	virtual bool32_t IsUseAlpha();
	// BW1W120 007f97a0 BW1M119 01007860 (LHCombined Release)
	virtual void __fastcall SetNeedSorting(bool32_t value); /* 0x40 */
	// BW1W120 007f97c0 BW1M119 01027f40 (LHCombined Release)
	virtual bool32_t IsNeedSorting();
	// BW1W120 00815920 BW1M119 01074110 (LHCombined Release)
	virtual void __fastcall SetDrawWithGlobalAlpha(bool32_t value);
	// BW1W120 00815930 BW1M119 010740d0 (LHCombined Release)
	virtual bool32_t IsDrawWithGlobalAlpha();
	// BW1W120 00815630 BW1M119 01074ce0 (LHCombined Release)
	virtual void __fastcall SetLinked(bool32_t linked);
	// BW1W120 00815640 BW1M119 01074ca0 (LHCombined Release)
	virtual bool32_t IsLinked();
	// BW1W120 008168c0 BW1M119 0103a7e0 (LHCombined Release)
	virtual void __fastcall SetDynamicLighting(bool32_t dynamic_lighting);
	// BW1W120 007f97d0 BW1M119 01029410 (LHCombined Release)
	virtual bool32_t IsDynamicLighting();
	// BW1W120 007f97e0 BW1M119 010bb0e0 (LHCombined Release)
	virtual void __fastcall SetEnumFlag(bool32_t flag); /* 0x60 */
	// BW1W120 007f9800 BW1M119 010bafd0 (LHCombined Release)
	virtual bool32_t GetEnumFlag();
	// BW1W120 007f9810 BW1M119 0109f360 (LHCombined Release)
	virtual void __fastcall SetSpecialLight(bool32_t special_light);
	// BW1W120 007f9830 BW1M119 01017cf0 (LHCombined Release)
	virtual bool32_t GetSpecialLight();
	// BW1W120 007f9840 BW1M119 010b0270 (LHCombined Release)
	virtual void __fastcall SetDontDraw(bool32_t dont_draw); /* 0x70 */
	// BW1W120 007f9860 BW1M119 010274e0 (LHCombined Release)
	virtual bool32_t GetDontDraw();
	// BW1W120 008168a0 BW1M119 01072d50 (LHCombined Release)
	virtual void __fastcall SetCastDynamicShadow(bool32_t cast_dynamic_shadow);
	// BW1W120 007f9870 BW1M119 010294a0 (LHCombined Release)
	virtual bool32_t IsCastDynamicShadow();
	// BW1W120 007f9880 BW1M119 01046b50 (LHCombined Release)
	virtual void __fastcall SetShadowOnTexture(bool32_t shadow_on_texture); /* 0x80 */
	// BW1W120 007f98a0 BW1M119 01070570 (LHCombined Release)
	virtual bool32_t IsShadowOnTexture();
	// BW1W120 00815940 BW1M119 01074090 (LHCombined Release)
	virtual void __fastcall SetFootPrintOnTexture(bool32_t foot_print_on_texture);
	// BW1W120 00815950 BW1M119 01074050 (LHCombined Release)
	virtual bool32_t IsFootPrintOnTexture();
	// BW1W120 007f98b0 BW1M119 01145eb0 (LHCombined Release)
	virtual void __fastcall SetShadowOnTextureChroma(bool32_t shadow_on_texture_chroma); /* 0x90 */
	// BW1W120 007f98d0 BW1M119 0100d800 (LHCombined Release)
	virtual bool32_t IsShadowOnTextureChroma();
	// BW1W120 007f98e0 BW1M119 010519e0 (LHCombined Release)
	virtual void __fastcall SetDisappear(bool32_t disappear)
	{
		if (disappear)
		{
			Disappear = true;
		}
		else
		{
			Disappear = false;
		}
	}
	// BW1W120 007f9900 BW1M119 01027fc0 (LHCombined Release)
	virtual bool32_t IsDisappear();
	// BW1W120 007f9910 BW1M119 010270b0 (LHCombined Release)
	virtual void __fastcall SetNeedClipping(bool32_t need_clipping) /* 0xa0 */
	{
		if (need_clipping)
		{
			NeedClipping = true;
		}
		else
		{
			NeedClipping = false;
		}
	}
	// BW1W120 007f9930 BW1M119 01028510 (LHCombined Release)
	virtual bool32_t IsNeedClipping();
	// BW1W120 007f9950 BW1M119 010e01b0 (LHCombined Release)
	virtual int GetVisageId();
	// BW1W120 007f9960 BW1M119 010ad500 (LHCombined Release)
	virtual void __fastcall SetVisage(long visage_id);
	// BW1W120 007f9980 BW1M119 01027070 (LHCombined Release)
	virtual bool32_t IsHuman(); /* 0xb0 */
	// BW1W120 007f9990 BW1M119 010bfe00 (LHCombined Release)
	virtual void SetHuman();
	// BW1W120 007f99b0 BW1M119 010d0ff0 (LHCombined Release)
	virtual bool32_t IsInBuild();
	// BW1W120 007f99c0 BW1M119 010b4ea0 (LHCombined Release)
	virtual void __fastcall SetInBuild(bool32_t in_build);
	// BW1W120 007f99e0 BW1M119 0101f050 (LHCombined Release)
	virtual bool32_t IsHumanShadowed(); /* 0xc0 */
	// BW1W120 007f99f0 BW1M119 0111ca20 (LHCombined Release)
	virtual void __fastcall SetHumanShadowed(bool32_t human_shadowed);
	// BW1W120 007f9a10 BW1M119 0101e9d0 (LHCombined Release)
	virtual bool32_t IsGlowing();
	// BW1W120 007f9a20 BW1M119 01001ac0 (LHCombined Release)
	virtual void __fastcall SetIsGlowing(bool32_t is_glowing);
	// BW1W120 007f9a40 BW1M119 010156d0 (LHCombined Release)
	virtual bool32_t IsSuperSortedPolys(); /* 0xd0 */
	// BW1W120 007f9a50 BW1M119 010a2d40 (LHCombined Release)
	virtual void __fastcall SetSuperSortedPolys(bool32_t super_sorted_polys);
	// BW1W120 007f9a70 BW1M119 0101c280 (LHCombined Release)
	virtual bool32_t IsFastBlending();
	// BW1W120 007f9a80 BW1M119 01066720 (LHCombined Release)
	virtual void __fastcall SetFastBlending(float blend, LH3DMesh* mesh1, LH3DMesh* mesh2);
	// BW1W120 007f9b10 BW1M119 01098e80 (LHCombined Release)
	virtual void __fastcall SetNeedTilling(bool32_t need_tilling); /* 0xe0 */
	// BW1W120 007f9b30 BW1M119 01029370 (LHCombined Release)
	virtual bool32_t IsNeedTilling();
	// BW1W120 007f9b40 BW1M119 01019280 (LHCombined Release)
	virtual void __fastcall SetAnimatedUV(bool32_t animated);
	// BW1W120 007f9b70 BW1M119 010191c0 (LHCombined Release)
	virtual void SetAnimatedUV(float u_speed, float v_speed);
	// BW1W120 007f9b60 BW1M119 010aeaf0 (LHCombined Release)
	virtual bool32_t IsAnimatedUV(); /* 0xf0 */
	// BW1W120 00815650 BW1M119 01074c50 (LHCombined Release)
	virtual void __fastcall SetMesh(LH3DMesh* mesh1, LH3DMesh* mesh2, LH3DMesh* mesh3);
	// BW1W120 00815660 BW1M119 01074c10 (LHCombined Release)
	virtual LH3DMesh* GetMesh() const;
	// BW1W120 00815670 BW1M119 01074bd0 (LHCombined Release)
	virtual void DrawDebugInfo();
	// BW1W120 00815680 BW1M119 01074b90 (LHCombined Release)
	virtual void AddDrawing(); /* 0x100 */
	// BW1W120 00815690 BW1M119 01074b40 (LHCombined Release)
	virtual bool32_t DrawWithClipping();
	// BW1W120 008156b0 BW1M119 01074ac0 (LHCombined Release)
	virtual void Draw();
	// BW1W120 008156c0 BW1M119 01074a90 (LHCombined Release)
	virtual void DrawTnL();
	// BW1W120 007fa270 BW1M119 01081430 (LHCombined Release)
	virtual void DrawPartialyBuilt(float built); /* 0x110 */
	// BW1W120 007fa280 BW1M119 010814e0 (LHCombined Release)
	virtual void DrawSpecialLight(float time, unsigned long special_color);
	// BW1W120 008157c0 BW1M119 010746c0 (LHCombined Release)
	virtual void DrawUnderWater();
	// BW1W120 00815f90 BW1M119 01073c80 (LHCombined Release)
	virtual void DrawCutByPlane();
	// BW1W120 007fa290 BW1M119 01081520 (LHCombined Release)
	virtual void DrawExtraMetric(); /* 0x120 */
	// BW1W120 00815750 BW1M119 01074860 (LHCombined Release)
	virtual void DrawSnow();
	// BW1W120 00815740 BW1M119 01074890 (LHCombined Release)
	virtual void DrawSnow(LH3DMaterial* material);
	// BW1W120 00815720 BW1M119 01074910 (LHCombined Release)
	virtual void DrawReverse();
	// BW1W120 00815730 BW1M119 010748d0 (LHCombined Release)
	virtual void DrawGlassFronted(float zoom, float alpha); /* 0x130 */
	// BW1W120 00815710 BW1M119 01074950 (LHCombined Release)
	virtual void DrawCage(float scale);
	// BW1W120 00815700 BW1M119 01074980 (LHCombined Release)
	virtual void DrawVolLightGJ(unsigned long color, unsigned long specular, LH3DMaterial* material);
	// BW1W120 008156e0 BW1M119 01074a10 (LHCombined Release)
	virtual void DrawEnvMapST();
	// BW1W120 008156f0 BW1M119 010749d0 (LHCombined Release)
	virtual void DrawLOD(LH3DLODData* lod_data, int lod); /* 0x140 */
	// BW1W120 008156d0 BW1M119 01074a50 (LHCombined Release)
	virtual void DrawEnvMapMT();
	// BW1W120 008157b0 BW1M119 01074700 (LHCombined Release)
	virtual void DrawRefMapMT();
	// BW1W120 008158d0 BW1M119 01074250 (LHCombined Release)
	virtual void DrawNormals() const;
	// BW1W120 008168e0 BW1M119 01072cc0 (LHCombined Release)
	virtual void DrawJustPhys(); /* 0x150 */
	// BW1W120 00815790 BW1M119 01074780 (LHCombined Release)
	virtual void DrawFizz();
	// BW1W120 008157a0 BW1M119 01074740 (LHCombined Release)
	virtual void DrawFizz(float amount, LH3DMaterial* material);
	// BW1W120 00815760 BW1M119 01074830 (LHCombined Release)
	virtual void DrawFroz();
	// BW1W120 00815780 BW1M119 010747b0 (LHCombined Release)
	virtual void DrawFroz(float froz_amount, unsigned long froz_color, LH3DMaterial* material);
#ifdef VERSION_BW1WCI
	virtual void CreatureIsleVirtual0x164(uint32_t param_1, uint32_t param_2, uint32_t param_3, uint32_t param_4,
	                                      uint32_t param_5, uint32_t param_6);
#endif
	// BW1W120 008158e0 BW1M119 01074210 (LHCombined Release)
	virtual void DrawTextureShadow(unsigned long tile_x, unsigned long tile_z) const;
	// BW1W120 007fa2a0 BW1M119 010699c0 (LHCombined Release)
	virtual void DrawTextureShadow32x32(SubCollideDataRender* collide, SRTextured* rasterizer, TShadowInfo* shadow);
	// BW1W120 008158f0 BW1M119 010741d0 (LHCombined Release)
	virtual void DrawMorphLand();
	// BW1W120 00815900 BW1M119 01074190 (LHCombined Release)
	virtual void DrawBlendBaseCitadelle(); /* 0x170 */
	// BW1W120 00815910 BW1M119 01074150 (LHCombined Release)
	virtual void __fastcall DrawIntoSprite(void* sprite_data);
	// BW1W120 00815960 BW1M119 01074010 (LHCombined Release)
	virtual void DrawForMouse();
	// BW1W120 00815970 BW1M119 01073fc0 (LHCombined Release)
	virtual void __fastcall Blend(LH3DObject* obj1, LH3DObject* obj2, float blend);
	// BW1W120 008157d0 BW1M119 01074680 (LHCombined Release)
	virtual void __fastcall SetCurrentAnim(LH3DAnim* anim); /* 0x180 */
	// BW1W120 008157e0 BW1M119 01074640 (LHCombined Release)
	virtual LH3DAnim* GetCurrentAnim();
	// BW1W120 008157f0 BW1M119 01074600 (LHCombined Release)
	virtual void __fastcall SetCurrentCycleTime(long time);
	// BW1W120 00815800 BW1M119 010745c0 (LHCombined Release)
	virtual long GetCurrentCycleTime();
	// BW1W120 00815810 BW1M119 01074580 (LHCombined Release)
	virtual void __fastcall SetLastAnim(const LH3DAnim* anim); /* 0x190 */
	// BW1W120 00815820 BW1M119 01074540 (LHCombined Release)
	virtual LH3DAnim* GetLastAnim();
	// BW1W120 00815830 BW1M119 01074500 (LHCombined Release)
	virtual void __fastcall SetLastCycleTime(long time);
	// BW1W120 00815840 BW1M119 010744c0 (LHCombined Release)
	virtual long GetLastCycleTime();
	// BW1W120 00815850 BW1M119 01074480 (LHCombined Release)
	virtual void SetBlendFactor(float factor); /* 0x1a0 */
	// BW1W120 00815860 BW1M119 01074440 (LHCombined Release)
	virtual float GetBlendFactor();
	// BW1W120 007f9bd0 BW1M119 01028000 (LHCombined Release)
	virtual bool32_t IsComplex();
	// BW1W120 007f9be0 BW1M119 010078d0 (LHCombined Release)
	virtual bool32_t IsAnimated();
	// BW1W120 007f9bf0 BW1M119 0101df30 (LHCombined Release)
	virtual bool32_t IsHDO(); /* 0x1b0 */
	// BW1W120 007f9c00 BW1M119 010b9cb0 (LHCombined Release)
	virtual void SetHDO();
	// BW1W120 00815870 BW1M119 01074400 (LHCombined Release)
	virtual TShadowInfo* GetShadowInfo();
	// BW1W120 00815880 BW1M119 010743b0 (LHCombined Release)
	virtual bool32_t __fastcall ContainsThisBoundingBox(const BBox2D& bbox);
	// BW1W120 00815890 BW1M119 01074350 (LHCombined Release)
	virtual bool32_t __fastcall GetChimneyPos(LHPoint* point) const; /* 0x1c0 */
	// BW1W120 008158a0 BW1M119 010742f0 (LHCombined Release)
	virtual bool32_t __fastcall GetDoorPos(LHPoint* point) const;
	// BW1W120 008158b0 BW1M119 01074290 (LHCombined Release)
	virtual bool32_t __fastcall GetExtraPos(long index, LHPoint* point) const;
	// BW1W120 007fa2b0 BW1M119 01081560 (LHCombined Release)
	virtual bool32_t __fastcall GetExtraPos(long index, LHMatrix* matrix);
	// BW1W120 007f9c10 BW1M119 01027f80 (LHCombined Release)
	virtual void __fastcall SetLod(long lod) { Lod = lod; } /* 0x1d0 */
	// BW1W120 007f9c30 BW1M119 01029270 (LHCombined Release)
	virtual long GetLod();
	// BW1W120 007f9c40 BW1M119 010b3250 (LHCombined Release)
	virtual void __fastcall SetStatus(long status);
	// BW1W120 007f9c60 BW1M119 010284d0 (LHCombined Release)
	virtual long GetStatus();
	// BW1W120 00815f70 BW1M119 01073d00 (LHCombined Release)
	virtual bool32_t CheckTriangleCollide(); /* 0x1e0 */
	// BW1W120 00815f80 BW1M119 01073cc0 (LHCombined Release)
	virtual bool32_t CheckPixelCollide();
	// BW1W120 00815fb0 BW1M119 01073be0 (LHCombined Release)
	virtual void UpdateMelting();
	// BW1W120 00816340 BW1M119 01073810 (LHCombined Release)
	virtual void MeltBorder();
	// BW1W120 007f9c70 BW1M119 01070530 (LHCombined Release)
	virtual bool32_t IsMorphWithLand(); /* 0x1f0 */
	// BW1W120 007f9c80 BW1M119 0114cdc0 (LHCombined Release)
	virtual bool32_t IsStaticMorphable() const;
	// BW1W120 007f9c90 BW1M119 0100ba10 (LHCombined Release)
	virtual bool32_t IsTemple();
	// BW1W120 007f9ca0 BW1M119 010705b0 (LHCombined Release)
	virtual bool32_t IsChangedSize();
	// BW1W120 007f9cb0 BW1M119 010705f0 (LHCombined Release)
	virtual void SetTempleLife(float life); /* 0x200 */
	// BW1W120 007f9cc0 BW1M119 01070630 (LHCombined Release)
	virtual LH3DMesh* GetTempleEntrance();
	// BW1W120 007f9cd0 BW1M119 01070670 (LHCombined Release)
	virtual bool32_t ProcessAlignement();
	// BW1W120 007f9ce0 BW1M119 010706b0 (LHCombined Release)
	virtual void SetStage(float stage);
	// BW1W120 007f9cf0 BW1M119 01070720 (LHCombined Release)
	virtual long GetStage(float scale);
	// BW1W120 007f9d00 BW1M119 010706e0 (LHCombined Release)
	virtual float GetStage(); /* 0x210 */
	// BW1W120 007f9d10 BW1M119 01070760 (LHCombined Release)
	virtual void SetNasty(float nasty);
	// BW1W120 007f9d20 BW1M119 01070790 (LHCombined Release)
	virtual float GetNasty();
	// BW1W120 007f9d30 BW1M119 01129d90 (LHCombined Release)
	virtual void InitTemple(LHPoint* point, float percent_built); /* 0x220 */
	// BW1W120 007fa2c0 BW1M119 010815a0 (LHCombined Release)
	virtual bool32_t GetNewEP(long index, long type, LHMatrix* matrix);
	// BW1W120 007fa2d0 BW1M119 010815e0 (LHCombined Release)
	virtual long HowManyNewEp(long type);

	// Static methods

	// BW1W120 0080b400 BW1M119 01080250 (LHCombined Release)
	static void LoadEnvMaps();
	// BW1W120 0080b4d0 BW1M119 0107fb80 (LHCombined Release)
	static LH3DObject* __fastcall Create(ObjectType object_type);
	// BW1W120 0080bbd0 BW1M119 0107f910 (LHCombined Release)
	static bool32_t Open();
	// BW1W120 0080bd70 BW1M119 0107f750 (LHCombined Release)
	static bool32_t Close();
	// BW1W120 00816860 BW1M119 01072dd0 (LHCombined Release)
	static void SetFastBlendingMaterial(LH3DMesh* mesh);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	LH3DObject()
	{
		matrix.SetIdentity();
		scale = 1.0f;
		y_angle = 0.0f;
		next = g_first;
		color = LH3D_OBJECT_DEFAULT_COLOR;
		specular = 0;
		WindowColor = 0;
		SnowLevel = 0;
		MaxSnowLevel = LH3D_OBJECT_MAX_SNOW_LEVEL;
		SnowLevelScale = LH3D_OBJECT_MAX_SNOW_LEVEL;
		DrawAsFence = false;
		Flags1 = 0;
		Lod = 1;
		v = 0.0f;
		u = 0.0f;
		FastBlendingMesh = NULL;
		Alpha = 0;
		importance = 0.0f;
		SetNeedClipping(true);
		g_first = this;
	}

	// Destructor

	// BW1W120 007fa220 BW1M119 010730f0 (LHCombined Release)
	~LH3DObject()
	{
		LH3DObject* previous = NULL;
		for (LH3DObject* object = g_first; object != this; object = object->next)
		{
			previous = object;
		}
		if (previous != NULL)
		{
			previous->next = next;
		}
		else
		{
			g_first = next;
		}
	}

	// Non-virtual functions

	// BW1W120 0080b440 BW1M119 01080190 (LHCombined Release)
	void SetEnvMap(ENV_MAP_TYPE env_map);
	// BW1W120 0080bec0 BW1M119 0101c8e0 (LHCombined Release)
	void __fastcall CombineColorFromPos(unsigned long color, unsigned long specular);
	// BW1W120 0080bf10 BW1M119 0107f4f0 (LHCombined Release)
	void __fastcall CombineColorWithCurrent(unsigned long color, unsigned long specular);
};

// TODO(bwrsandman): These externs stay until we find a correct declaration. Two other ways did not work:
// - As LH3DObject static members, they move the Object.cpp .bss and runblack.exe fails in 1.00, 1.10 and 1.20.
// - Without them, TempleLeash::TempleLeash and CitadelHeart::DrawCreaturePen do not match.
// BW1W120 00ea1a88 BW1M119 012b3744 (LHCombined Release)
extern int caca_static_draw;
// BW1W120 00ea1abc BW1M119 012b3710 (LHCombined Release)
extern LH3DMaterial* g_smoke_mat;
// BW1W120 00ea1ac4 BW1M119 012b3708 (LHCombined Release)
extern LH3DMaterial* g_smoke_additif_mat;
// BW1W120 00ea1ab8 BW1M119 012b3714 (LHCombined Release)
extern LH3DMaterial* g_fire_mat;
// BW1W120 00ea1ab0 BW1M119 012b371c (LHCombined Release)
extern LH3DMaterial* g_mat_misc0;
// BW1W120 00ea1a90 BW1M119 012b373c (LHCombined Release)
extern LH3DTexture* g_tex_misc0;
// BW1W120 00ea1a9c BW1M119 012b3730 (LHCombined Release)
extern LH3DTexture* g_burn_texture;

#endif /* BW1_DECOMP_LH3D_OBJECT_INCLUDED_H */
