#include "LH3DObject.h"

#include "LH3DAnim.h"                  /* For LH3DAnim */
#include "LH3DAnimatedObject.h"        /* For LH3DAnimatedObject */
#include "LH3DAtmos.h"                 /* For LH3DAtmos */
#include "GlowVillager.h"              /* For GlowVillager */
#include "LH3DCitadel.h"               /* For LH3DCitadel */
#include "LH3DComplexObject.h"         /* For LH3DComplexObject */
#include "LH3DEnvMatInfo.h"            /* For LH3DEnvMatInfo */
#include "LH3DFeetShadow.h"            /* For LH3DFeetShadow */
#include "LH3DGJAnimVolFX.h"           /* For LH3DGJAnimVolFX */
#include "LH3DHand.h"                  /* For LH3DHand */
#include "LH3DIsland.h"                /* For LH3DIsland */
#include "LH3DLevelOfDetail.h"         /* For LH3DLevelOfDetail */
#include "LH3DLine.h"                  /* For LH3DLine */
#include "LH3DMaterial.h"              /* For LH3DMaterial */
#include "LH3DMath.h"                  /* For InverseSquareRoot */
#include "LH3DMem.h"                   /* For LH3DMem */
#include "LH3DMesh.h"                  /* For LH3DMesh */
#include "LH3DMist.h"                  /* For LH3DMist */
#include "LH3DObjectHair.h"            /* For LH3DObjectHair */
#include "LH3DRender.h"                /* For LH3DRender */
#include "LH3DSmoke.h"                 /* For LH3DSmoke */
#include "LH3DSprite.h"                /* For LH3DSprite */
#include "LH3DPrimitive.h"             /* For LH3DPrimitive */
#include "LH3DSpriteObject.h"          /* For LH3DSpriteObject */
#include "LH3DStaticMorphableObject.h" /* For LH3DStaticMorphableObject */
#include "LH3DStaticObject.h"          /* For LH3DStaticObject */
#include "LH3DSubMesh.h"               /* For LH3DSubMesh */
#include "LH3DTShadow.h"               /* For LH3DTShadow */
#include "LH3DTech.h"                  /* For Report3D__FPCce */
#include "LH3DTexture.h"               /* For LH3DTexture */
#include "LH3DZSorter.h"               /* For LH3DZSorter */
#include "SnowCover.h"                 /* For SnowCover */
#include "TShadowInfo.h"               /* For TShadowInfo */

#include <d3dtypes.h> /* For RGBA_MAKE */

// The altitude above which the snow starts to cover an object.
#define LH3D_OBJECT_SNOW_ALTITUDE 20.0f
// The texture format flags the environment maps and the object textures are loaded with.
#define LH3D_OBJECT_TEXTURE_FLAGS 0x41
// How many times its bounding box diagonal away from the camera a disappearing object is still drawn.
#define LH3D_OBJECT_DISAPPEAR_DISTANCE 300.0f
// The bone of the carrying object's skeleton an object linked to its hand follows.
#define LH3D_OBJECT_HAND_BONE 15
// The bones a human's feet shadow is drawn under.
#define LH3D_OBJECT_LEFT_FOOT_BONE  18
#define LH3D_OBJECT_RIGHT_FOOT_BONE 21
// How much larger than usual a human's feet shadows are drawn.
#define LH3D_OBJECT_FEET_SHADOW_SCALE 3.0f
// The transparency added to the feet shadows of a human drawn by AddDrawing.
#define LH3D_OBJECT_FEET_SHADOW_TRANS 0.5f
// How high above the ground a shadowed human must be for its feet shadow to be drawn.
#define LH3D_OBJECT_FEET_SHADOW_MIN_HEIGHT 0.2f
// The height above its position, in multiples of its scale, a human's shadow sprite is drawn at.
#define LH3D_OBJECT_HUMAN_SPRITE_HEIGHT 0.8f
// The alpha of an object fully faded in.
#define LH3D_OBJECT_MAX_ALPHA                255.0f
#define LH3D_OBJECT_FROZ_LOW_ALTITUDE        0.5f
#define LH3D_OBJECT_MIN_DRAWN_SNOW_LEVEL     5
#define LH3D_OBJECT_FEET_SHADOW_MIN_ALTITUDE 0.2f
#define LH3D_OBJECT_SPECIAL_LIGHT_COLOR      0xff203de8

// BW1W120 inlined BW1M119 01095540 (LHCombined Release)
inline void UpdateClippingPlane(LHPlane* plane);

float DISTANCE_LOD_1 = 23.333334f;
float DISTANCE_LOD_2 = 66.666664f;
float DISTANCE_LOD_3 = 86.666664f;
float DISTANCE_LOD_4 = 173.33333f;
int   MIN_ALPHA_HUMAN = 150;

float LH3DObject::g_last_radius = 1.0f;
float LH3DObject::g_env_map_zoom_x = 1.0f;
float LH3DObject::g_env_map_zoom_y = 1.0f;

static char* g_env_map_names[LH3DObject::ENV_MAP_TYPE_COUNT] = {
	".\\data\\textures\\envmap.raw",               //
	".\\data\\textures\\envmap_glass_fx.raw",      //
	".\\data\\textures\\envmap_glass_fx_inv.raw",  //
	".\\data\\textures\\envmap_glass_fx2_inv.raw", //
};

int                special_jc_y;
int                special_jc_x;
int                g_just_draw_phys;
float              LH3DObject::g_env_map_z_rot;
float              LH3DObject::g_env_map_offset_y;
float              LH3DObject::g_env_map_offset_x;
int                LH3DObject::g_env_map_mode;
bool               LH3DObject::g_env_map_tex_color_env_alpha;
float              LH3DObject::g_last_distance;
bool32_t           LH3DObject::g_b_last_on_screen;
LH3DComplexObject* LH3DComplexObject::g_first_co;
LH3DObject*        LH3DObject::g_current_object_in_draw;
LH3DObject*        LH3DObject::g_first;
bool32_t           LH3DObject::g_b_open;
int                LH3DObject::g_count_complex_object;
int                LH3DObject::g_count_animated_object;
int                LH3DObject::g_count_static_object;
bool32_t           LH3DObject::g_last_selected_box;
int                LH3DObject::g_selected_py;
int                LH3DObject::g_selected_px;
LH3DMaterial*      g_smoke_additif_mat;
LH3DMaterial*      g_burn_mat;
LH3DMaterial*      g_smoke_mat;
LH3DMaterial*      g_fire_mat;
LH3DMaterial*      g_cool_effect_mat;
LH3DMaterial*      g_mat_misc0;
LH3DMaterial*      g_mat_p4t;
LH3DTexture*       g_p4t_texture;
LH3DMaterial*      g_mat_p4;
LH3DTexture*       g_p4_texture;
LH3DTexture*       g_burn_texture;
LH3DTexture*       g_smoke_texture;
LH3DTexture*       g_fire_texture;
LH3DTexture*       g_tex_misc0;
LH3DTexture*       g_cool_effect_texture;
int                caca_static_draw;
LH3DEnvMatInfo     LH3DObject::g_env_mat_info[LH3D_OBJECT_ENV_MATS];
LH3DEnvMatInfo*    LH3DObject::g_cur_env_mat_info;
LH3DMaterial*      LH3DObject::g_fb_list_mat[LH3D_OBJECT_FAST_BLENDING_MATERIALS];

float LH3DStaticObject::g_fizz_r_v;
float LH3DStaticObject::g_fizz_r_u;

LHPoint special_jc_mouse_pos(0.0f, 0.0f, 0.0f);

LHPoint       g_right(1.0f, 0.0f, -1.0f);
LHPoint       g_left(-1.0f, 0.0f, 1.0f);
float         DEFAULT_TRANS_TO_ADD = 0.2f;
float         TRANS_TO_ADD = DEFAULT_TRANS_TO_ADD;
unsigned long caca_color_hair;
unsigned long caca_specular_hair;
uint8_t*      shadow_buffer;

float r_u_speed = 0.1f;
float r_v_speed = 0.2f;

void LH3DEnvMatInfo::LoadEnvMat(char* name, float offset_u, float offset_v, float scale_u, float scale_v)
{
	ReleaseEnvMat();
	Texture = LH3DTexture::Create(name, LH3D_OBJECT_TEXTURE_FLAGS, 0, NULL);
	if (Texture)
	{
		Material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ,
		                                      Texture);
	}
	OffsetU = offset_u;
	OffsetV = offset_v;
	ScaleU = scale_u;
	ScaleV = scale_v;
}

void LH3DEnvMatInfo::ReleaseEnvMat()
{
	if (Material)
	{
		Material->texture = NULL;
	}
	Material = NULL;
	if (Texture)
	{
		Texture->Release();
	}
	Texture = NULL;
}

void LH3DObject::LoadEnvMaps()
{
	for (int i = 0; i < ENV_MAP_TYPE_COUNT; i++)
	{
		g_env_mat_info[i].LoadEnvMat(g_env_map_names[i], 0.0f, 0.0f, 1.0f, 1.0f);
	}
}

void LH3DObject::SetEnvMap(ENV_MAP_TYPE env_map)
{
	if (env_map >= ENV_MAP_TYPE_DEFAULT && g_env_mat_info[env_map].Material == NULL)
	{
		g_env_mat_info[env_map].LoadEnvMat(g_env_map_names[env_map], 0.0f, 0.0f, 1.0f, 1.0f);
	}
	EnvMap = env_map;
}

void LH3DObject::SetSnowlevel(LHPoint& point)
{
	float depth = LH3DAtmos::scv->GetDepth(point) - LH3D_OBJECT_SNOW_ALTITUDE;
	if (depth < 0.0f)
	{
		depth = 0.0f;
	}
	SnowLevel = (long)depth * SnowLevelScale >> 8;
	if (SnowLevel > MaxSnowLevel)
	{
		SnowLevel = MaxSnowLevel;
	}
}

LH3DObject* LH3DObject::Create(ObjectType object_type)
{
	switch (object_type)
	{
	case STATIC:
		return new LH3DStaticObject();
	case ANIMATED:
		return new LH3DAnimatedObject();
	case COMPLEX: {
		LH3DComplexObject* object = new LH3DComplexObject();
		object->VerticalShadow = false;
		return object;
	}
	case SMOKE:
		return new LH3DSpriteObject(LH3D_SPRITE_OBJECT_TYPE_SMOKE);
	case FIRE_00:
		return new LH3DSpriteObject(LH3D_SPRITE_OBJECT_TYPE_FIRE_00);
	case FIRE_35:
		return new LH3DSpriteObject(LH3D_SPRITE_OBJECT_TYPE_FIRE_35);
	case MIST:
		return new LH3DMist();
	case MORPHABLE:
		return new LH3DStaticMorphableObject();
	case CITADEL:
		return new LH3DCitadel();
	}
	Report3D__FPCce("LH3DObject::Create Bad Type.\n");
	return NULL;
}

bool32_t LH3DObject::Open()
{
	if (g_b_open)
	{
		Report3D__FPCce("LH3DObject::Open allready open!\n");
		return false;
	}
	g_b_open = true;
	g_count_static_object = 0;
	g_count_animated_object = 0;
	g_count_complex_object = 0;
	g_first = NULL;
	g_p4t_texture = LH3DTexture::Create(".\\data\\Textures\\p4t.raw", LH3D_OBJECT_TEXTURE_FLAGS, -1, NULL);
	g_mat_p4t =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, g_p4t_texture);
	g_mat_p4t->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	g_p4_texture = LH3DTexture::Create(".\\data\\Textures\\p4.raw", LH3D_OBJECT_TEXTURE_FLAGS, -1, NULL);
	g_mat_p4 =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, g_p4_texture);
	g_mat_p4->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	g_smoke_texture = LH3DTexture::Create(".\\data\\Textures\\smoke.raw", LH3D_OBJECT_TEXTURE_FLAGS, -1, NULL);
	g_smoke_mat =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, g_smoke_texture);
	g_smoke_mat->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	g_fire_texture = LH3DTexture::Create(".\\data\\Textures\\s_fire.raw", LH3D_OBJECT_TEXTURE_FLAGS, -1, NULL);
	g_fire_mat = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ,
	                                        g_fire_texture);
	g_smoke_additif_mat = LH3DRender::CreateMaterial(
		LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ, g_smoke_texture);
	g_smoke_additif_mat->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	g_cool_effect_texture =
		LH3DTexture::Create(".\\data\\Textures\\cool_effect.raw", LH3D_OBJECT_TEXTURE_FLAGS, -1, NULL);
	g_cool_effect_mat =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_CHROMA_JUST_Z, g_cool_effect_texture);
	g_cool_effect_mat->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	g_cool_effect_mat->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	g_tex_misc0 = LH3DTexture::Create(".\\data\\Textures\\misc0.raw", LH3D_OBJECT_TEXTURE_FLAGS, -1, NULL);
	g_mat_misc0 =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, g_tex_misc0);
	g_mat_misc0->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	g_burn_texture = LH3DTexture::Create(".\\data\\Textures\\burn.raw", LH3D_OBJECT_TEXTURE_FLAGS, -1, NULL);
	g_burn_mat =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, g_burn_texture);
	g_burn_mat->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	LoadEnvMaps();
	return true;
}

bool32_t LH3DObject::Close()
{
	if (g_cool_effect_mat)
	{
		delete g_cool_effect_mat;
		g_cool_effect_mat = NULL;
	}
	if (g_cool_effect_texture)
	{
		g_cool_effect_texture->Release();
		g_cool_effect_texture = NULL;
	}
	if (g_smoke_mat)
	{
		delete g_smoke_mat;
		g_smoke_mat = NULL;
	}
	if (g_smoke_texture)
	{
		g_smoke_texture->Release();
		g_smoke_texture = NULL;
	}
	if (g_fire_mat)
	{
		delete g_fire_mat;
		g_fire_mat = NULL;
	}
	if (g_smoke_additif_mat)
	{
		delete g_smoke_additif_mat;
		g_smoke_additif_mat = NULL;
	}
	if (g_fire_texture)
	{
		g_fire_texture->Release();
		g_fire_texture = NULL;
	}
	if (!g_b_open)
	{
		Report3D__FPCce("# LH3DObject::Close not open!\n");
		return false;
	}
	if (g_count_static_object)
	{
		Report3D__FPCce("# LH3DObject: %d static objects not released.\n", g_count_static_object);
	}
	if (g_count_animated_object)
	{
		Report3D__FPCce("# LH3DObject: %d animated objects not released.\n", g_count_animated_object);
	}
	if (g_count_complex_object)
	{
		Report3D__FPCce("# LH3DObject: %d complex objects not released.\n", g_count_complex_object);
	}
	g_b_open = false;
	for (int i = 0; i < LH3D_OBJECT_ENV_MATS; i++)
	{
		g_env_mat_info[i].ReleaseEnvMat();
	}
	return true;
}

void LH3DObject::CombineColorFromPos(unsigned long color, unsigned long specular)
{
	LH3DIsland::GetColorAndSpecular(&matrix.GetPos(), &this->color, &this->specular);
	CombineColorWithCurrent(color, specular);
	this->specular = LH3DIsland::GetFogValue(&matrix.GetPos(), this->specular, &this->color);
}

void LH3DObject::CombineColorWithCurrent(unsigned long color, unsigned long specular)
{
	unsigned long alpha = RGBA_GETALPHA(this->specular) + RGBA_GETALPHA(specular);
	unsigned long red = RGBA_GETRED(this->specular) + RGBA_GETRED(specular);
	unsigned long green = RGBA_GETGREEN(this->specular) + RGBA_GETGREEN(specular);
	unsigned long blue = RGBA_GETBLUE(this->specular) + RGBA_GETBLUE(specular);
	alpha = RGBA_MAKE(0, 0, 0, min(alpha, 0xff));
	red = RGBA_MAKE(min(red, 0xff), 0, 0, 0);
	green = RGBA_MAKE(0, min(green, 0xff), 0, 0);
	blue = min(blue, 0xff);
	this->specular = alpha | red | green | blue;
	unsigned long current = this->color;
	this->color = RGBA_MAKE(
		RGBA_GETRED(current) * RGBA_GETRED(color) / 256, RGBA_GETGREEN(current) * RGBA_GETGREEN(color) / 256,
		RGBA_GETBLUE(current) * RGBA_GETBLUE(color) / 256, RGBA_GETALPHA(current) * RGBA_GETALPHA(color) / 256);
}

void LH3DComplexObject::CreateDynamicShadow()
{
	if (LH3DLevelOfDetail::g_b_draw_dynamic_shadow)
	{
		ShadowInfo = TShadowInfo::Create();
		ShadowInfo->Color = 1;
		ShadowInfo->Object = CarriedObject;
	}
}

void LH3DStaticObject::DrawCutByPlane()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DPrimitive::UpdatePreComputeLight(&matrix);
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawCutByPlane();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
		LH3DMaterial::SetGlobalAlpha(false);
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawCutByPlane();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
	}
}

void LH3DStaticObject::DrawReverse()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	if (WindowColor.GetColor() != 0)
	{
		LH3DMesh::g_window_col = WindowColor.GetColor();
		LH3DMesh::g_window_state = true;
	}
	else
	{
		LH3DMesh::g_window_state = false;
	}
	LH3DMesh::g_current_lod = GetLod();
	if (LH3DMesh::g_current_lod == LH3D_MESH_LOD_FAR && IsPaper())
	{
		g_mat_paper.GetPos() = matrix.GetPos();
		LH3DTech::g_local_to_clipping.Set(g_mat_paper);
		float objectScale = scale;
		LH3DTech::g_local_to_clipping.PreScale(objectScale, objectScale, objectScale);
	}
	else
	{
		LH3DTech::g_local_to_clipping.Set(matrix);
	}
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DRender::g_b_need_tilling = IsNeedTilling();
	float speedV = GetV();
	float speedU = GetU();
	if (speedU == 0.0f && speedV == 0.0f)
	{
		LH3DRender::g_adv = 0.0f;
		LH3DRender::g_adu = 0.0f;
		LH3DRender::g_b_need_anim_uv = false;
	}
	else
	{
		LH3DRender::g_adu = speedU;
		LH3DRender::g_adv = speedV;
		LH3DRender::g_b_need_anim_uv = true;
	}
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		if (IsDynamicLighting())
		{
			LH3DPrimitive::UpdatePreComputeLight(&matrix);
			mesh->DrawReverse(true);
		}
		else
		{
			mesh->DrawReverse(false);
		}
		LH3DMaterial::SetGlobalAlpha(false);
		SetDrawWithGlobalAlpha(false);
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		if (IsDynamicLighting())
		{
			LH3DPrimitive::UpdatePreComputeLight(&matrix);
			mesh->DrawReverse(true);
		}
		else
		{
			mesh->DrawReverse(false);
		}
	}
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
}

void LH3DStaticObject::DrawGlassFronted(float zoom, float alpha)
{
	uint8_t glassAlpha = alpha * 255.0f;
	DrawReverse();
	g_env_map_zoom_x = g_env_map_zoom_y = zoom;
	g_env_map_tex_color_env_alpha = true;
	SetDrawWithGlobalAlpha(true);
	g_env_map_mode = LH3D_MATERIAL_ENV_MAP_ADDITIVE;
	ENV_MAP_TYPE savedEnvMap = EnvMap;
	SetEnvMap(ENV_MAP_TYPE_GLASS_FX_INV);
	if (EnvMap >= ENV_MAP_TYPE_DEFAULT && g_env_mat_info[EnvMap].Material != NULL)
	{
		g_cur_env_mat_info = &g_env_mat_info[EnvMap];
		LH3DRender::SetMaterial(g_env_mat_info[EnvMap].Material, 1);
		DrawEnvMapMT();
		LH3DRender::Set2ndTex(LH3D_2ND_TEX_MODE_OFF, NULL, true);
	}
	g_env_map_mode = LH3D_MATERIAL_ENV_MAP_NONE;
	SetEnvMap(savedEnvMap);
	g_env_map_tex_color_env_alpha = false;
	g_env_map_zoom_x = g_env_map_zoom_y = zoom;
	LH3DRender::SetMaterial(g_env_mat_info[ENV_MAP_TYPE_GLASS_FX].Material, 0);
	LH3DRender::g_b_do_update_material = false;
	unsigned long savedColor = color;
	color = RGBA_SETALPHA(color, glassAlpha);
	DrawEnvMapST();
	color = savedColor;
	LH3DRender::g_b_do_update_material = true;
	g_env_map_zoom_x = g_env_map_zoom_y = 1.0f;
}

void LH3DStaticObject::DrawCage(float scale)
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DMesh::g_current_lod = GetLod();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	if (WindowColor.GetColor() != 0)
	{
		LH3DMesh::g_window_col = WindowColor.GetColor();
		LH3DMesh::g_window_state = true;
	}
	else
	{
		LH3DMesh::g_window_state = false;
	}
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DRender::g_b_need_tilling = IsNeedTilling();
	float speedV = GetV();
	float speedU = GetU();
	if (speedU == 0.0f && speedV == 0.0f)
	{
		LH3DRender::g_adv = 0.0f;
		LH3DRender::g_adu = 0.0f;
		LH3DRender::g_b_need_anim_uv = false;
	}
	else
	{
		LH3DRender::g_adu = speedU;
		LH3DRender::g_adv = speedV;
		LH3DRender::g_b_need_anim_uv = true;
	}
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawCage(scale);
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
		LH3DMaterial::SetGlobalAlpha(false);
		SetDrawWithGlobalAlpha(false);
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawCage(scale);
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
	}
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
}

void LH3DStaticObject::DrawVolLightGJ(unsigned long color, unsigned long specular, LH3DMaterial* material)
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	if (WindowColor.GetColor() != 0)
	{
		LH3DMesh::g_window_col = WindowColor.GetColor();
		LH3DMesh::g_window_state = true;
	}
	else
	{
		LH3DMesh::g_window_state = false;
	}
	LH3DMesh::g_current_lod = GetLod();
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DMesh::g_color = color;
	LH3DMesh::g_specular = specular;
	LH3DRender::g_b_need_tilling = true;
	if (material != NULL)
	{
		LH3DGJAnimVolFX::g_vol_fx_anim_uv = true;
		LH3DRender::SetMaterial(material, 0);
		LH3DRender::g_b_do_update_material = false;
	}
	else
	{
		LH3DGJAnimVolFX::g_vol_fx_anim_uv = false;
	}
	GetMesh()->DrawVolLightGJ();
	LH3DRender::g_b_do_update_material = true;
}

void LH3DStaticObject::DrawEnvMapST()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	if (WindowColor.GetColor() != 0)
	{
		LH3DMesh::g_window_col = WindowColor.GetColor();
		LH3DMesh::g_window_state = true;
	}
	else
	{
		LH3DMesh::g_window_state = false;
	}
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DRender::g_b_need_tilling = IsNeedTilling();
	float speedV = GetV();
	float speedU = GetU();
	if (speedU == 0.0f && speedV == 0.0f)
	{
		LH3DRender::g_adv = 0.0f;
		LH3DRender::g_adu = 0.0f;
		LH3DRender::g_b_need_anim_uv = false;
	}
	else
	{
		LH3DRender::g_adu = speedU;
		LH3DRender::g_adv = speedV;
		LH3DRender::g_b_need_anim_uv = true;
	}
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawEnvMapST();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
		LH3DMaterial::SetGlobalAlpha(false);
		SetDrawWithGlobalAlpha(false);
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawEnvMapST();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
	}
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
}

void LH3DStaticObject::DrawLOD(LH3DLODData* lod_data, int lod)
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DRender::g_b_need_tilling = IsNeedTilling();
	float speedV = GetV();
	float speedU = GetU();
	if (speedU == 0.0f && speedV == 0.0f)
	{
		LH3DRender::g_adv = 0.0f;
		LH3DRender::g_adu = 0.0f;
		LH3DRender::g_b_need_anim_uv = false;
	}
	else
	{
		LH3DRender::g_adu = speedU;
		LH3DRender::g_adv = speedV;
		LH3DRender::g_b_need_anim_uv = true;
	}
	LH3DPrimitive::UpdatePreComputeLight(&matrix);
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		mesh->DrawLOD(lod_data, lod);
		LH3DMaterial::SetGlobalAlpha(false);
		SetDrawWithGlobalAlpha(false);
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		mesh->DrawLOD(lod_data, lod);
	}
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
}

void LH3DStaticObject::DrawTnL()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	if (WindowColor.GetColor())
	{
		LH3DMesh::g_window_col = WindowColor.GetColor();
		LH3DMesh::g_window_state = true;
	}
	else
	{
		LH3DMesh::g_window_state = false;
	}
	LH3DMesh::g_current_lod = GetLod();
	if (LH3DMesh::g_current_lod == LH3D_MESH_LOD_FAR && IsPaper())
	{
		g_mat_paper.GetPos() = matrix.GetPos();
		LH3DTech::g_local_to_clipping.Set(g_mat_paper);
		LH3DTech::g_local_to_clipping.ScaleMatrixOnly(scale);
	}
	else
	{
		LH3DTech::g_local_to_clipping.Set(matrix);
	}
	LH3DRender::SetD3DMatrix(LH3DRender::g_d3d_local2world, LH3DTech::g_local_to_clipping);
	LH3DRender::D3DDevice->SetTransform(D3DTRANSFORMSTATE_WORLD, &LH3DRender::g_d3d_local2world);
	LH3DRender::g_b_need_tilling = IsNeedTilling();
	LH3DRender::SetAnimUV(GetU(), GetV());
	LH3DRender::SetCurD3DMat(IsDynamicLighting(), color, specular);
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		mesh->DrawTnL();
		LH3DMaterial::SetGlobalAlpha(false);
		SetDrawWithGlobalAlpha(false);
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		mesh->DrawTnL();
	}
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
	if (IsCastDynamicShadow())
	{
		LH3DRender::SetCurD3DMat(false, LH3D_OBJECT_DEFAULT_COLOR, 0);
		for (TShadowInfo* shadow = TShadowInfo::g_first; shadow != NULL; shadow = shadow->Next)
		{
			if (shadow->IsUseable() && !shadow->DynamicShadow && shadow->Caster != this)
			{
				LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
				if (ContainsThisBoundingBox(shadow->Bounds))
				{
					if (IsComplex())
					{
						if (GetShadowInfo() != shadow)
						{
							mesh->DrawInShadowTnL(shadow);
						}
					}
					else
					{
						mesh->DrawInShadowTnL(shadow);
					}
				}
			}
		}
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	}
}

void LH3DStaticObject::Draw()
{
	caca_static_draw++;
	if (EnvMap >= ENV_MAP_TYPE_DEFAULT && g_env_mat_info[EnvMap].Material != NULL)
	{
		g_cur_env_mat_info = &g_env_mat_info[EnvMap];
		LH3DRender::SetMaterial(g_env_mat_info[EnvMap].Material, 1);
		DrawEnvMapMT();
		LH3DRender::Set2ndTex(LH3D_2ND_TEX_MODE_OFF, NULL, true);
		return;
	}
	bool32_t needClipping = IsNeedClipping();
	if (SnowLevel >= LH3D_OBJECT_MIN_SNOW_LEVEL)
	{
		SetNeedClipping(true);
	}
	else if (LH3DRender::g_b_support_TNL && (!RGBA_TORGB(specular) || !RGBA_GETALPHA(specular)))
	{
		DrawTnL();
		return;
	}
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	if (WindowColor.GetColor())
	{
		LH3DMesh::g_window_col = WindowColor.GetColor();
		LH3DMesh::g_window_state = true;
	}
	else
	{
		LH3DMesh::g_window_state = false;
	}
	LH3DMesh::g_current_lod = GetLod();
	if (LH3DMesh::g_current_lod == LH3D_MESH_LOD_FAR && IsPaper())
	{
		g_mat_paper.GetPos() = matrix.GetPos();
		LH3DTech::g_local_to_clipping.Set(g_mat_paper);
		LH3DTech::g_local_to_clipping.ScaleMatrixOnly(scale);
	}
	else
	{
		LH3DTech::g_local_to_clipping.Set(matrix);
	}
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DRender::g_b_need_tilling = IsNeedTilling();
	LH3DRender::SetAnimUV(GetU(), GetV());
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		if (IsDynamicLighting())
		{
			LH3DPrimitive::UpdatePreComputeLight(&matrix);
			if (IsNeedClipping())
			{
				mesh->Draw(true);
			}
			else
			{
				mesh->DrawUnclipped(true);
			}
		}
		else
		{
			if (IsNeedClipping())
			{
				mesh->Draw(false);
			}
			else
			{
				mesh->DrawUnclipped(false);
			}
		}
		LH3DMaterial::SetGlobalAlpha(false);
		SetDrawWithGlobalAlpha(false);
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		if (IsDynamicLighting())
		{
			LH3DPrimitive::UpdatePreComputeLight(&matrix);
			if (IsNeedClipping())
			{
				mesh->Draw(true);
			}
			else
			{
				mesh->DrawUnclipped(true);
			}
		}
		else
		{
			if (IsNeedClipping())
			{
				mesh->Draw(false);
			}
			else
			{
				mesh->DrawUnclipped(false);
			}
		}
	}
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
	if (SnowLevel >= LH3D_OBJECT_MIN_SNOW_LEVEL)
	{
		LH3DPrimitive::UpdatePreComputeLight(&matrix);
		if (LH3DAtmos::snowmat != NULL)
		{
			DrawSnow(LH3DAtmos::snowmat);
		}
		SetNeedClipping(needClipping);
	}
	if (IsCastDynamicShadow())
	{
		for (TShadowInfo* shadow = TShadowInfo::g_first; shadow != NULL; shadow = shadow->Next)
		{
			if (shadow->IsUseable() && !shadow->DynamicShadow && shadow->Caster != this)
			{
				LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
				if (ContainsThisBoundingBox(shadow->Bounds))
				{
					if (IsComplex())
					{
						if (GetShadowInfo() != shadow)
						{
							mesh->DrawInShadow(shadow);
						}
					}
					else
					{
						mesh->DrawInShadow(shadow);
					}
				}
			}
		}
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	}
}

void LH3DStaticMorphableObject::Draw()
{
	caca_static_draw++;
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DPrimitive::g_vertical_translate_vertices = LandAltitudes;
	LH3DRender::g_b_need_tilling = IsNeedTilling();
	float animV = GetV();
	float animU = GetU();
	if (animU == 0.0f && animV == 0.0f)
	{
		LH3DRender::g_adv = 0.0f;
		LH3DRender::g_adu = 0.0f;
		LH3DRender::g_b_need_anim_uv = false;
	}
	else
	{
		LH3DRender::g_adu = animU;
		LH3DRender::g_adv = animV;
		LH3DRender::g_b_need_anim_uv = true;
	}
	bool32_t needClipping = IsNeedClipping();
	if (SnowLevel >= LH3D_OBJECT_MIN_SNOW_LEVEL)
	{
		SetNeedClipping(true);
	}
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		LH3DPrimitive::UpdatePreComputeLight(&matrix);
		mesh->DrawWithVerticalTranslation();
		LH3DMaterial::SetGlobalAlpha(false);
		SetDrawWithGlobalAlpha(false);
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DPrimitive::UpdatePreComputeLight(&matrix);
		mesh->DrawWithVerticalTranslation();
	}
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
	if (SnowLevel >= LH3D_OBJECT_MIN_SNOW_LEVEL)
	{
		LH3DPrimitive::UpdatePreComputeLight(&matrix);
		LH3DPrimitive::g_vertical_translate_vertices = LandAltitudes;
		if (LH3DAtmos::snowmat != NULL)
		{
			DrawSnow(LH3DAtmos::snowmat);
		}
		SetNeedClipping(needClipping);
	}
	if (IsCastDynamicShadow())
	{
		for (TShadowInfo* shadow = TShadowInfo::g_first; shadow != NULL; shadow = shadow->Next)
		{
			if (shadow->IsUseable() && !shadow->DynamicShadow && shadow->Caster != this)
			{
				float radius = scale * mesh->BoundingBox.DiagonalLength;
				float size =
					max(shadow->MaxX - shadow->MinX, shadow->MaxZ - shadow->MinZ) * LH3D_OBJECT_SHADOW_DIAGONAL_SCALE;
				LHPoint position = mesh->GetBoundingBox().centre;
				matrix.TransformPoint(position);
				LHPoint centre((shadow->MinX + shadow->MaxX) * 0.5f, 0.0f, (shadow->MinZ + shadow->MaxZ) * 0.5f);
				float   dz = position.z - centre.z;
				float   dx = position.x - centre.x;
				if (dx * dx + dz * dz < (radius + size) * (radius + size))
				{
					LH3DPrimitive::g_vertical_translate_vertices = LandAltitudes;
					mesh->DrawInShadowWithVerticalTranslation(shadow);
				}
			}
		}
	}
}

void LH3DStaticMorphableObject::DrawSnow()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DPrimitive::g_vertical_translate_vertices = LandAltitudes;
	mesh->DrawSnowWithVerticalTranslation();
}

void LH3DStaticMorphableObject::DrawSnow(LH3DMaterial* material)
{
	if (SnowLevel > 0)
	{
		if (SnowLevel > LH3D_OBJECT_MAX_SNOW_LEVEL)
		{
			SnowLevel = LH3D_OBJECT_MAX_SNOW_LEVEL;
		}
		unsigned long zWriteEnable;
		LH3DRender::GetRenderState(D3DRENDERSTATE_ZWRITEENABLE, zWriteEnable);
		if (zWriteEnable == FALSE)
		{
			SetDrawWithGlobalAlpha(true);
		}
		LH3DRender::g_b_active_g_alpha_ref = true;
		LH3DRender::g_alpha_ref = LH3D_OBJECT_MAX_SNOW_LEVEL - SnowLevel;
		LH3DRender::SetMaterial(material, 0);
		unsigned long alphaBlendEnable;
		unsigned long alphaBlendEnable2;
		unsigned long srcBlend;
		unsigned long destBlend;
		unsigned long alphaTestEnable;
		LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable);
		LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable2);
		LH3DRender::GetRenderState(D3DRENDERSTATE_SRCBLEND, srcBlend);
		LH3DRender::GetRenderState(D3DRENDERSTATE_DESTBLEND, destBlend);
		LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alphaTestEnable);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, TRUE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ONE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ZERO);
		if (zWriteEnable != FALSE)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
		}
		DrawSnow();
		if (zWriteEnable != FALSE)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		}
		SetDrawWithGlobalAlpha(false);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable2);
		LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, srcBlend);
		LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, destBlend);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alphaTestEnable);
		LH3DRender::g_b_active_g_alpha_ref = false;
	}
}

void LH3DStaticObject::Blend(LH3DObject* obj1, LH3DObject* obj2, float blend)
{
	mesh->Blend(obj1->GetMesh(), obj2->GetMesh(), blend, false);
}

void LH3DStaticObject::DrawTextureShadow(unsigned long tile_x, unsigned long tile_z) const
{
	g_current_object_in_draw = (LH3DObject*)this;
	LH3DSubMesh::g_current_status = ((LH3DObject*)this)->GetStatus();
	uint8_t* buffer = shadow_buffer;
	LH3DTech::g_local_to_clipping.Set(matrix);
	float height = -matrix._42;
	LH3DTech::g_local_to_clipping._41 -= tile_x * LH3D_T_SHADOW_TILE_SIZE;
	LH3DTech::g_local_to_clipping._42 += height;
	LH3DTech::g_local_to_clipping._43 -= tile_z * LH3D_T_SHADOW_TILE_SIZE;
	static bool32_t computeFactors = true;
	if (computeFactors)
	{
		LHPoint sun = DEFAULT_SUN;
		sun *= InverseSquareRoot(sun.GetNormeSq());
		LH3DTShadow::g_factorX = -sun.x / sun.y;
		LH3DTShadow::g_factorZ = -sun.z / sun.y;
	}
	LH3DTShadow::g_buffer = buffer;
	LH3DMesh* drawnMesh = mesh;
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if ((submesh->GetLod() & LH3DMesh::g_current_lod) && !submesh->IsPhysics())
		{
			submesh->DrawTextureShadow();
		}
	}
}

void LH3DStaticObject::DrawTextureShadow32x32(SubCollideDataRender* collide, SRTextured* rasterizer,
                                              TShadowInfo* shadow)
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DMesh::g_current_lod = LH3D_MESH_LOD_NEAR;
	LH3DMesh* drawnMesh = mesh;
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			submesh->DrawTextureShadow32x32(collide, rasterizer, shadow);
		}
	}
}

void LH3DStaticObject::DrawSnow()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		submesh->DrawWindow();
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			submesh->DrawSnow();
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

void LH3DStaticObject::DrawSnow(LH3DMaterial* material)
{
	if (SnowLevel > 0)
	{
		if (SnowLevel > LH3D_OBJECT_MAX_SNOW_LEVEL)
		{
			SnowLevel = LH3D_OBJECT_MAX_SNOW_LEVEL;
		}
		unsigned long zWriteEnable;
		LH3DRender::GetRenderState(D3DRENDERSTATE_ZWRITEENABLE, zWriteEnable);
		if (zWriteEnable == FALSE)
		{
			SetDrawWithGlobalAlpha(true);
		}
		LH3DRender::g_b_active_g_alpha_ref = true;
		LH3DRender::g_alpha_ref = LH3D_OBJECT_MAX_SNOW_LEVEL - SnowLevel;
		LH3DRender::SetMaterial(material, 0);
		unsigned long alphaBlendEnable;
		unsigned long alphaBlendEnable2;
		unsigned long srcBlend;
		unsigned long destBlend;
		unsigned long alphaTestEnable;
		LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable);
		LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable2);
		LH3DRender::GetRenderState(D3DRENDERSTATE_SRCBLEND, srcBlend);
		LH3DRender::GetRenderState(D3DRENDERSTATE_DESTBLEND, destBlend);
		LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alphaTestEnable);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, TRUE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ONE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ZERO);
		if (zWriteEnable != FALSE)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
		}
		DrawSnow();
		if (zWriteEnable != FALSE)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		}
		SetDrawWithGlobalAlpha(false);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable2);
		LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, srcBlend);
		LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, destBlend);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alphaTestEnable);
		LH3DRender::g_b_active_g_alpha_ref = false;
	}
}

void LH3DAnimatedObject::DrawSnow(LH3DMaterial* material)
{
	if (SnowLevel > 0)
	{
		if (SnowLevel > LH3D_OBJECT_MAX_SNOW_LEVEL)
		{
			SnowLevel = LH3D_OBJECT_MAX_SNOW_LEVEL;
		}
		unsigned long zWriteEnable;
		LH3DRender::GetRenderState(D3DRENDERSTATE_ZWRITEENABLE, zWriteEnable);
		if (zWriteEnable == FALSE)
		{
			SetDrawWithGlobalAlpha(true);
		}
		LH3DRender::g_b_active_g_alpha_ref = true;
		LH3DRender::g_alpha_ref = LH3D_OBJECT_MAX_SNOW_LEVEL - SnowLevel;
		LH3DRender::SetMaterial(material, 0);
		unsigned long alphaBlendEnable;
		unsigned long alphaBlendEnable2;
		unsigned long srcBlend;
		unsigned long destBlend;
		unsigned long alphaTestEnable;
		LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable);
		LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable2);
		LH3DRender::GetRenderState(D3DRENDERSTATE_SRCBLEND, srcBlend);
		LH3DRender::GetRenderState(D3DRENDERSTATE_DESTBLEND, destBlend);
		LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alphaTestEnable);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, TRUE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ONE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ZERO);
		if (zWriteEnable != FALSE)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
		}
		DrawSnow();
		if (zWriteEnable != FALSE)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		}
		SetDrawWithGlobalAlpha(false);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable2);
		LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, srcBlend);
		LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, destBlend);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alphaTestEnable);
		LH3DRender::g_b_active_g_alpha_ref = false;
	}
}

void LH3DStaticObject::DrawEnvMapMT()
{
	unsigned long objectColor = color;
	unsigned long objectSpecular = specular;
	LH3DMesh::g_color = objectColor;
	LH3DMesh::g_specular = objectSpecular;
	LH3DPrimitive::UpdatePreComputeLight(&matrix);
	if (IsDrawWithGlobalAlpha())
	{
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_global_alpha;
	}
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			submesh->DrawEnvMapMT();
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
	if (IsDrawWithGlobalAlpha())
	{
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_normal;
		SetDrawWithGlobalAlpha(false);
	}
}

void LH3DStaticObject::DrawRefMapMT()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DTech::g_world_to_local.SetInverse(matrix);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			submesh->DrawRefMapMT();
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

int LH3DStaticObject::DrawLightMap(SubMeshDrawData* draw_data, int num_draw_data, int mode, int unused_mode,
                                   bool32_t reverse_winding, bool check_mouse)
{
	float v = GetV();
	float u = GetU();
	if (u == 0.0f && v == 0.0f)
	{
		LH3DRender::g_adv = 0.0f;
		LH3DRender::g_adu = 0.0f;
		LH3DRender::g_b_need_anim_uv = false;
	}
	else
	{
		LH3DRender::g_adu = u;
		LH3DRender::g_adv = v;
		LH3DRender::g_b_need_anim_uv = true;
	}
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	unsigned long objectColor = color;
	unsigned long objectSpecular = specular;
	LH3DMesh::g_color = objectColor;
	LH3DMesh::g_specular = objectSpecular;
	LH3DTech::g_world_to_local.SetInverse(matrix);
	LH3DPrimitive::UpdatePreComputeLight(&matrix);
	int result;
	if (IsDrawWithGlobalAlpha())
	{
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_global_alpha;
		result = mesh->DrawLightMap(draw_data, num_draw_data, mode, unused_mode, reverse_winding, check_mouse);
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_normal;
	}
	else
	{
		result = mesh->DrawLightMap(draw_data, num_draw_data, mode, unused_mode, reverse_winding, check_mouse);
	}
	LH3DRender::g_b_need_anim_uv = false;
	LH3DRender::Set2ndTex(0, NULL, true);
	return result;
}

void LH3DAnimatedObject::DrawSnow()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		submesh->DrawWindow();
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			submesh->DrawSnow();
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

void LH3DAnimatedObject::DrawEnvMapMT()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	unsigned long objectColor = color;
	unsigned long objectSpecular = specular;
	LH3DMesh::g_color = objectColor;
	LH3DMesh::g_specular = objectSpecular;
	LH3DPrimitive::UpdatePreComputeLight(&matrix);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			submesh->DrawEnvMapMT();
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

void LH3DAnimatedObject::DrawRefMapMT()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DTech::g_world_to_local.SetInverse(matrix);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			submesh->DrawRefMapMT();
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

bool32_t LH3DMeshedObject::GetExtraPos(long index, LHPoint* point) const
{
	LH3DMeshExtraMetrics* metrics = (LH3DMeshExtraMetrics*)mesh->GetEMetricsData();
	if (metrics == NULL)
	{
		*point = *(LHPoint*)&matrix.m[9];
		return false;
	}
	if (index < metrics->Count)
	{
		point->Set(metrics->Matrices[index]._41, metrics->Matrices[index]._42, metrics->Matrices[index]._43);
		matrix.TransformPoint(*point);
		if (IsStaticMorphable())
		{
			point->y += LH3DIsland::GetAltitude(*point) - LH3DIsland::GetAltitude(matrix.GetPos());
		}
		return true;
	}
	*point = *(LHPoint*)&matrix.m[9];
	return false;
}

void LH3DMeshedObject::DrawExtraMetric()
{
	LH3DMeshExtraMetrics* metrics = (LH3DMeshExtraMetrics*)mesh->GetEMetricsData();
	if (metrics == NULL)
	{
		return;
	}
	LH3DColor color(0, 0, 0xff);
	for (int i = 0; i < metrics->Count; i++)
	{
		LHMatrix matrix;
		GetExtraPos(i, &matrix);
		LHPoint pos(matrix.GetPos().x, matrix.GetPos().y, matrix.GetPos().z);
		LHPoint axisX(matrix._11, matrix._21, matrix._31);
		LHPoint axisY(matrix._12, matrix._22, matrix._32);
		LHPoint axisZ(matrix._13, matrix._23, matrix._33);
		axisX += pos;
		axisY += pos;
		axisZ += pos;
		LH3DLine::AddLine(pos, axisX, &color, NULL);
		LH3DLine::AddLine(pos, axisY, &color, NULL);
		LH3DLine::AddLine(pos, axisZ, &color, NULL);
	}
}

void LH3DStaticObject::DrawNormals() const
{
	g_current_object_in_draw = const_cast<LH3DStaticObject*>(this);
	LH3DSubMesh::g_current_status = const_cast<LH3DStaticObject*>(this)->GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			submesh->DrawNormals();
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

void LH3DStaticObject::DrawJustPhys() const
{
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	g_current_object_in_draw = const_cast<LH3DStaticObject*>(this);
	LH3DSubMesh::g_current_status = 0;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->IsPhysics())
		{
			submesh->Draw(false);
		}
	}
}

static unsigned long ModulateColor(unsigned long modulate, unsigned long color)
{
	return RGBA_MAKE(
		RGBA_GETRED(color) * RGBA_GETRED(modulate) / 256, RGBA_GETGREEN(color) * RGBA_GETGREEN(modulate) / 256,
		RGBA_GETBLUE(color) * RGBA_GETBLUE(modulate) / 256, RGBA_GETALPHA(color) * RGBA_GETALPHA(modulate) / 256);
}

void LH3DStaticObject::DoFrozPart(float froz_amount, unsigned long froz_color, LH3DMaterial* material)
{
	if (material != NULL)
	{
		LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
		LH3DTech::g_local_to_clipping.Set(matrix);
		LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
		LH3DRender::SetMaterial(material, 0);
		LH3DRender::g_b_do_update_material = false;
		unsigned long frozColor =
			ModulateColor(RGBA_SETALPHA(LH3D_COLOR_WHITE, FloatToInt(froz_amount * 255.0f)), RGB_TORGBA(color));
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = frozColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawFroz();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
		LH3DMaterial::SetGlobalAlpha(false);
		SetDrawWithGlobalAlpha(false);
		LH3DRender::g_b_do_update_material = true;
	}
}

void LH3DStaticObject::DrawFroz(float froz_amount, unsigned long froz_color, LH3DMaterial* material)
{
	caca_static_draw++;
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	SetLod(LH3D_MESH_LOD_NEAR);
	LH3DMesh::g_current_lod = GetLod();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DRender::g_b_need_tilling = IsNeedTilling();
	LH3DRender::SetAnimUV(GetU(), GetV());
	bool32_t      vertexBlending = LH3DPrimitive::g_do_vertex_blending;
	unsigned long objectColor = color;
	if (froz_amount > 0.0f)
	{
		LH3DPrimitive::g_do_vertex_blending = false;
		objectColor = ModulateColor(LH3DBlendColor(LH3D_COLOR_WHITE, froz_color, FloatToInt(froz_amount * 255.0f)),
		                            RGB_TORGBA(color));
	}
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		if (IsDynamicLighting())
		{
			LH3DPrimitive::UpdatePreComputeLight(&matrix);
			mesh->Draw(true);
		}
		else
		{
			mesh->Draw(false);
		}
		LH3DMaterial::SetGlobalAlpha(false);
		SetDrawWithGlobalAlpha(false);
	}
	else
	{
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		if (IsDynamicLighting())
		{
			LH3DPrimitive::UpdatePreComputeLight(&matrix);
			mesh->Draw(true);
		}
		else
		{
			mesh->Draw(false);
		}
	}
	if (froz_amount > 0.0f)
	{
		DoFrozPart(froz_amount, froz_color, material);
	}
	LH3DPrimitive::g_do_vertex_blending = vertexBlending;
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
	if (IsCastDynamicShadow())
	{
		for (TShadowInfo* shadow = TShadowInfo::g_first; shadow != NULL; shadow = shadow->Next)
		{
			if (shadow->IsUseable() && !shadow->DynamicShadow && shadow->Caster != this)
			{
				LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
				if (ContainsThisBoundingBox(shadow->Bounds))
				{
					if (IsComplex())
					{
						if (GetShadowInfo() != shadow)
						{
							mesh->DrawInShadow(shadow);
						}
					}
					else
					{
						mesh->DrawInShadow(shadow);
					}
				}
			}
		}
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	}
}

void LH3DAnimatedObject::DrawNormals() const
{
	g_current_object_in_draw = const_cast<LH3DAnimatedObject*>(this);
	LH3DSubMesh::g_current_status = const_cast<LH3DAnimatedObject*>(this)->GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			submesh->DrawNormals();
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

void LH3DAnimatedObject::DrawUnderWater()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	unsigned long objectColor = color;
	unsigned long objectSpecular = specular;
	LH3DMesh::g_color = objectColor;
	LH3DMesh::g_specular = objectSpecular;
	if (BlendFactor == 0.0f)
	{
		if (CurrentAnim != NULL)
		{
			CurrentAnim->SetTransform(LH3DMesh::g_current_list_matrix, mesh, CurrentCycleTime, matrix);
		}
		else
		{
			LH3DAnim::SetTransform(LH3DMesh::g_current_list_matrix, mesh, matrix);
		}
	}
	else
	{
		CurrentAnim->CombineTransform(LH3DMesh::g_current_list_matrix, CurrentCycleTime, 1.0f - BlendFactor, true);
		LastAnim->CombineTransform(LH3DMesh::g_current_list_matrix, LastCycleTime, BlendFactor, false);
		LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, mesh, matrix);
	}
	if (IsDrawWithGlobalAlpha())
	{
		LH3DMaterial::SetGlobalAlpha(true);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawWaterReflection();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
		LH3DMaterial::SetGlobalAlpha(false);
	}
	else
	{
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawWaterReflection();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
	}
}

void LH3DStaticObject::DrawUnderWater()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	unsigned long objectColor = color;
	unsigned long objectSpecular = specular;
	LH3DMesh::g_color = objectColor;
	LH3DMesh::g_specular = objectSpecular;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	if (IsDrawWithGlobalAlpha())
	{
		LH3DMaterial::SetGlobalAlpha(true);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawWaterReflection();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
		LH3DMaterial::SetGlobalAlpha(false);
	}
	else
	{
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawWaterReflection();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
	}
}

bool32_t LH3DStaticObject::CheckPixelCollide()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			if (submesh->CheckPixelCollide())
			{
				return true;
			}
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
	return false;
}

bool32_t LH3DStaticObject::CheckTriangleCollide()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			if (submesh->CheckTriangleCollide())
			{
				return true;
			}
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
	return false;
}

bool32_t LH3DStaticMorphableObject::CheckTriangleCollide()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DPrimitive::g_vertical_translate_vertices = LandAltitudes;
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	bool32_t  collide;
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			if (submesh->CheckTriangleCollideMorph())
			{
				collide = true;
				goto found;
			}
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
	collide = false;
found:
	if (collide && IsTemple() && ((LH3DCitadel*)this)->Life < 1.0f)
	{
		LHCoord screen(g_selected_px, g_selected_py);
		LHPoint point;
		LH3DTech::Get3DPointFromScreen(screen, point,
		                               LH3DTech::GetNearClipping() / LH3DPrimitive::g_vertex_inside_triangle.rhw);
		if (point.y > matrix._42 + GetMesh()->BoundingBox.size.y * scale * ((LH3DCitadel*)this)->Life * 2.0f)
		{
			return false;
		}
		return true;
	}
	return collide;
}

bool32_t LH3DAnimatedObject::CheckTriangleCollide()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	if (BlendFactor == 0.0f)
	{
		LHMatrix transform;
		transform._11 = matrix._11 * LH3DTech::g_world_to_clipping._11 +
		                matrix._12 * LH3DTech::g_world_to_clipping._21 + matrix._13 * LH3DTech::g_world_to_clipping._31;
		transform._12 = matrix._11 * LH3DTech::g_world_to_clipping._12 +
		                matrix._12 * LH3DTech::g_world_to_clipping._22 + matrix._13 * LH3DTech::g_world_to_clipping._32;
		transform._13 = matrix._11 * LH3DTech::g_world_to_clipping._13 +
		                matrix._12 * LH3DTech::g_world_to_clipping._23 + matrix._13 * LH3DTech::g_world_to_clipping._33;
		transform._21 = matrix._21 * LH3DTech::g_world_to_clipping._11 +
		                matrix._22 * LH3DTech::g_world_to_clipping._21 + matrix._23 * LH3DTech::g_world_to_clipping._31;
		transform._22 = matrix._21 * LH3DTech::g_world_to_clipping._12 +
		                matrix._22 * LH3DTech::g_world_to_clipping._22 + matrix._23 * LH3DTech::g_world_to_clipping._32;
		transform._23 = matrix._21 * LH3DTech::g_world_to_clipping._13 +
		                matrix._22 * LH3DTech::g_world_to_clipping._23 + matrix._23 * LH3DTech::g_world_to_clipping._33;
		transform._31 = matrix._31 * LH3DTech::g_world_to_clipping._11 +
		                matrix._32 * LH3DTech::g_world_to_clipping._21 + matrix._33 * LH3DTech::g_world_to_clipping._31;
		transform._32 = matrix._31 * LH3DTech::g_world_to_clipping._12 +
		                matrix._32 * LH3DTech::g_world_to_clipping._22 + matrix._33 * LH3DTech::g_world_to_clipping._32;
		transform._33 = matrix._31 * LH3DTech::g_world_to_clipping._13 +
		                matrix._32 * LH3DTech::g_world_to_clipping._23 + matrix._33 * LH3DTech::g_world_to_clipping._33;
		transform._41 = matrix._41 * LH3DTech::g_world_to_clipping._11 +
		                matrix._42 * LH3DTech::g_world_to_clipping._21 +
		                matrix._43 * LH3DTech::g_world_to_clipping._31 + LH3DTech::g_world_to_clipping._41;
		transform._42 = matrix._41 * LH3DTech::g_world_to_clipping._12 +
		                matrix._42 * LH3DTech::g_world_to_clipping._22 +
		                matrix._43 * LH3DTech::g_world_to_clipping._32 + LH3DTech::g_world_to_clipping._42;
		transform._43 = matrix._41 * LH3DTech::g_world_to_clipping._13 +
		                matrix._42 * LH3DTech::g_world_to_clipping._23 +
		                matrix._43 * LH3DTech::g_world_to_clipping._33 + LH3DTech::g_world_to_clipping._43;
		CurrentAnim->SetTransform(LH3DMesh::g_current_list_matrix, mesh, CurrentCycleTime, transform);
	}
	else
	{
		CurrentAnim->CombineTransform(LH3DMesh::g_current_list_matrix, CurrentCycleTime, 1.0f - BlendFactor, true);
		LastAnim->CombineTransform(LH3DMesh::g_current_list_matrix, LastCycleTime, BlendFactor, false);
		LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, mesh, matrix);
	}
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			if (submesh->CheckTriangleCollide())
			{
				return true;
			}
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
	return false;
}

bool32_t LH3DComplexObject::CheckTriangleCollide()
{
	int selectedX = g_selected_px;
	int selectedY = g_selected_py;
	g_selected_px = special_jc_x;
	g_selected_py = special_jc_y;
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DMesh::g_current_list_matrix = BoneMatrices;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	bool32_t  collide;
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			if (submesh->CheckTriangleCollide())
			{
				collide = true;
				goto done;
			}
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
	collide = false;
done:
	LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
	g_selected_px = selectedX;
	g_selected_py = selectedY;
	return collide;
}

bool32_t LH3DComplexObject::CheckPixelCollide()
{
	int selectedX = g_selected_px;
	int selectedY = g_selected_py;
	g_selected_px = special_jc_x;
	g_selected_py = special_jc_y;
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DMesh::g_current_list_matrix = BoneMatrices;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	bool32_t  collide;
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			if (submesh->CheckPixelCollide())
			{
				collide = true;
				goto done;
			}
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
	collide = false;
done:
	LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
	g_selected_px = selectedX;
	g_selected_py = selectedY;
	return collide;
}

void LH3DAnimatedObject::DrawCutByPlane()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	if (BlendFactor == 0.0f)
	{
		CurrentAnim->SetTransform(LH3DMesh::g_current_list_matrix, mesh, CurrentCycleTime, matrix);
	}
	else
	{
		CurrentAnim->CombineTransform(LH3DMesh::g_current_list_matrix, CurrentCycleTime, 1.0f - BlendFactor, true);
		LastAnim->CombineTransform(LH3DMesh::g_current_list_matrix, LastCycleTime, BlendFactor, false);
		LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, mesh, matrix);
	}
	LH3DPrimitive::UpdatePreComputeLight(&matrix);
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		LH3DTech::g_world_to_local.SetInverse(matrix);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawCutByPlane();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
		LH3DMaterial::SetGlobalAlpha(false);
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DTech::g_world_to_local.SetInverse(matrix);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawCutByPlane();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
	}
}

void LH3DAnimatedObject::DrawVolLightGJ(unsigned long color, unsigned long specular, LH3DMaterial* material)
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DPrimitive::g_current_index_primitive = 0;
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DMesh::g_current_lod = GetLod();
	LHMatrix localToClipping;
	localToClipping._11 = matrix._11 * LH3DTech::g_world_to_clipping._11 +
	                      matrix._12 * LH3DTech::g_world_to_clipping._21 +
	                      matrix._13 * LH3DTech::g_world_to_clipping._31;
	localToClipping._12 = matrix._11 * LH3DTech::g_world_to_clipping._12 +
	                      matrix._12 * LH3DTech::g_world_to_clipping._22 +
	                      matrix._13 * LH3DTech::g_world_to_clipping._32;
	localToClipping._13 = matrix._11 * LH3DTech::g_world_to_clipping._13 +
	                      matrix._12 * LH3DTech::g_world_to_clipping._23 +
	                      matrix._13 * LH3DTech::g_world_to_clipping._33;
	localToClipping._21 = matrix._21 * LH3DTech::g_world_to_clipping._11 +
	                      matrix._22 * LH3DTech::g_world_to_clipping._21 +
	                      matrix._23 * LH3DTech::g_world_to_clipping._31;
	localToClipping._22 = matrix._21 * LH3DTech::g_world_to_clipping._12 +
	                      matrix._22 * LH3DTech::g_world_to_clipping._22 +
	                      matrix._23 * LH3DTech::g_world_to_clipping._32;
	localToClipping._23 = matrix._21 * LH3DTech::g_world_to_clipping._13 +
	                      matrix._22 * LH3DTech::g_world_to_clipping._23 +
	                      matrix._23 * LH3DTech::g_world_to_clipping._33;
	localToClipping._31 = matrix._31 * LH3DTech::g_world_to_clipping._11 +
	                      matrix._32 * LH3DTech::g_world_to_clipping._21 +
	                      matrix._33 * LH3DTech::g_world_to_clipping._31;
	localToClipping._32 = matrix._31 * LH3DTech::g_world_to_clipping._12 +
	                      matrix._32 * LH3DTech::g_world_to_clipping._22 +
	                      matrix._33 * LH3DTech::g_world_to_clipping._32;
	localToClipping._33 = matrix._31 * LH3DTech::g_world_to_clipping._13 +
	                      matrix._32 * LH3DTech::g_world_to_clipping._23 +
	                      matrix._33 * LH3DTech::g_world_to_clipping._33;
	localToClipping._41 = matrix._41 * LH3DTech::g_world_to_clipping._11 +
	                      matrix._42 * LH3DTech::g_world_to_clipping._21 +
	                      matrix._43 * LH3DTech::g_world_to_clipping._31 + LH3DTech::g_world_to_clipping._41;
	localToClipping._42 = matrix._41 * LH3DTech::g_world_to_clipping._12 +
	                      matrix._42 * LH3DTech::g_world_to_clipping._22 +
	                      matrix._43 * LH3DTech::g_world_to_clipping._32 + LH3DTech::g_world_to_clipping._42;
	localToClipping._43 = matrix._41 * LH3DTech::g_world_to_clipping._13 +
	                      matrix._42 * LH3DTech::g_world_to_clipping._23 +
	                      matrix._43 * LH3DTech::g_world_to_clipping._33 + LH3DTech::g_world_to_clipping._43;
	CurrentAnim->SetTransform(LH3DMesh::g_current_list_matrix, mesh, CurrentCycleTime, localToClipping);
	LH3DMesh::g_color = color;
	LH3DMesh::g_specular = specular;
	LH3DRender::g_b_need_tilling = true;
	if (material != NULL)
	{
		LH3DGJAnimVolFX::g_vol_fx_anim_uv = true;
		LH3DRender::SetMaterial(material, 0);
		LH3DRender::g_b_do_update_material = false;
	}
	else
	{
		LH3DGJAnimVolFX::g_vol_fx_anim_uv = false;
	}
	GetMesh()->DrawVolLightGJ();
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_do_update_material = true;
	LH3DRender::g_b_need_anim_uv = false;
}

void LH3DAnimatedObject::Draw()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DPrimitive::g_current_index_primitive = 0;
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DMesh::g_current_lod = GetLod();
	LH3DMesh* drawnMesh;
	switch (LH3DMesh::g_current_lod)
	{
	case LH3D_MESH_LOD_NEAR:
		drawnMesh = Meshes[LH3D_MESH_LOD_LEVEL_NEAR];
		break;
	case LH3D_MESH_LOD_MEDIUM:
		drawnMesh = Meshes[LH3D_MESH_LOD_LEVEL_MEDIUM];
		break;
	case LH3D_MESH_LOD_FAR:
		drawnMesh = Meshes[LH3D_MESH_LOD_LEVEL_FAR];
		break;
	}
	if (BlendFactor == 0.0f)
	{
		LHMatrix localToClipping;
		localToClipping._11 = matrix._11 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._31;
		localToClipping._12 = matrix._11 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._32;
		localToClipping._13 = matrix._11 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._33;
		localToClipping._21 = matrix._21 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._31;
		localToClipping._22 = matrix._21 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._32;
		localToClipping._23 = matrix._21 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._33;
		localToClipping._31 = matrix._31 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._31;
		localToClipping._32 = matrix._31 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._32;
		localToClipping._33 = matrix._31 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._33;
		localToClipping._41 = matrix._41 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._31 + LH3DTech::g_world_to_clipping._41;
		localToClipping._42 = matrix._41 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._32 + LH3DTech::g_world_to_clipping._42;
		localToClipping._43 = matrix._41 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._33 + LH3DTech::g_world_to_clipping._43;
		if (CurrentAnim != NULL)
		{
			CurrentAnim->SetTransform(LH3DMesh::g_current_list_matrix, mesh, CurrentCycleTime, localToClipping);
		}
		else
		{
			LH3DAnim::SetTransform(LH3DMesh::g_current_list_matrix, mesh, localToClipping);
		}
	}
	else
	{
		LHMatrix localToClipping;
		localToClipping._11 = matrix._11 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._31;
		localToClipping._12 = matrix._11 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._32;
		localToClipping._13 = matrix._11 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._33;
		localToClipping._21 = matrix._21 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._31;
		localToClipping._22 = matrix._21 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._32;
		localToClipping._23 = matrix._21 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._33;
		localToClipping._31 = matrix._31 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._31;
		localToClipping._32 = matrix._31 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._32;
		localToClipping._33 = matrix._31 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._33;
		localToClipping._41 = matrix._41 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._31 + LH3DTech::g_world_to_clipping._41;
		localToClipping._42 = matrix._41 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._32 + LH3DTech::g_world_to_clipping._42;
		localToClipping._43 = matrix._41 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._33 + LH3DTech::g_world_to_clipping._43;
		CurrentAnim->CombineTransform(LH3DMesh::g_current_list_matrix, CurrentCycleTime, 1.0f - BlendFactor, true);
		LastAnim->CombineTransform(LH3DMesh::g_current_list_matrix, LastCycleTime, BlendFactor, false);
		LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, mesh, localToClipping);
	}
	LH3DRender::g_b_need_tilling = IsNeedTilling();
	LH3DRender::SetAnimUV(GetU(), GetV());
	bool32_t needClipping = IsNeedClipping();
	if (SnowLevel >= LH3D_OBJECT_MIN_DRAWN_SNOW_LEVEL)
	{
		SetNeedClipping(true);
	}
	if (IsPreSetup())
	{
		if (IsHuman())
		{
			if (IsHumanShadowed() && matrix._42 > LH3D_OBJECT_FEET_SHADOW_MIN_ALTITUDE)
			{
				LHPoint normal;
				LH3DIsland::GetNormal(matrix.GetPos(), &normal);
				LH3DFeetShadow::Draw(this, &normal, NULL);
			}
			LH3DColor* humanColor = (LH3DColor*)&color;
			if (humanColor->a < MIN_ALPHA_HUMAN)
			{
				humanColor->a = MIN_ALPHA_HUMAN;
			}
			if (IsGlowing())
			{
				LHPoint pos = matrix.GetPos();
				pos.y += scale;
				GlowVillager::AddGlow(&pos, scale);
			}
		}
		else if (IsHumanShadowed() && matrix._42 > LH3D_OBJECT_FEET_SHADOW_MIN_ALTITUDE)
		{
			ExtraBone* bone = (ExtraBone*)GetMesh()->GetEBoneData();
			if (bone != NULL)
			{
				LHPoint normal;
				LH3DIsland::GetNormal(matrix.GetPos(), &normal);
				LH3DFeetShadow::Draw(this, &normal, bone);
			}
		}
		if (IsSuperSortedPolys())
		{
			static LH3DMaterial* superSortedMaterial = NULL;
			if (superSortedMaterial == NULL)
			{
				superSortedMaterial = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_SMOOTH, NULL);
			}
			LH3DRender::SetMaterial(superSortedMaterial, 0);
			LH3DMesh::g_color = 0;
			LH3DMesh::g_specular = 0;
			unsigned long alphaBlendEnable;
			unsigned long srcBlend;
			unsigned long destBlend;
			unsigned long alphaTestEnable;
			LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable);
			LH3DRender::GetRenderState(D3DRENDERSTATE_SRCBLEND, srcBlend);
			LH3DRender::GetRenderState(D3DRENDERSTATE_DESTBLEND, destBlend);
			LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alphaTestEnable);
			LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
			LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ZERO);
			LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ONE);
			LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, FALSE);
			drawnMesh->Draw(false);
			LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable);
			LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, srcBlend);
			LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, destBlend);
			LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alphaTestEnable);
		}
		if (IsFastBlending())
		{
			LH3DRender::g_draw_triangle_func = LH3DRender::DrawTriangleFastBlending;
			SetFastBlendingMaterial(FastBlendingMesh);
		}
	}
	if (GetSpecialLight())
	{
		DrawSpecialLight(1.0f, LH3D_OBJECT_SPECIAL_LIGHT_COLOR);
	}
	else if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::SetGlobalAlpha(true);
		if (IsDynamicLighting())
		{
			LH3DTech::g_world_to_local.SetInverse(matrix);
			drawnMesh->Draw(true);
		}
		else
		{
			drawnMesh->Draw(false);
		}
		LH3DMaterial::SetGlobalAlpha(false);
		SetDrawWithGlobalAlpha(false);
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		if (IsDynamicLighting())
		{
			LH3DTech::g_world_to_local.SetInverse(matrix);
			drawnMesh->Draw(true);
		}
		else
		{
			drawnMesh->Draw(false);
		}
	}
	if (IsPreSetup() && IsFastBlending())
	{
		LH3DRender::g_draw_triangle_func = LH3DRender::DrawTriangle;
	}
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
	if (SnowLevel >= LH3D_OBJECT_MIN_DRAWN_SNOW_LEVEL)
	{
		LH3DPrimitive::UpdatePreComputeLight(&matrix);
		if (LH3DAtmos::snowmat != NULL)
		{
			DrawSnow(LH3DAtmos::snowmat);
		}
		SetNeedClipping(needClipping);
	}
	if (IsCastDynamicShadow())
	{
		for (TShadowInfo* shadow = TShadowInfo::g_first; shadow != NULL; shadow = shadow->Next)
		{
			if (shadow->IsUseable() && !shadow->DynamicShadow && shadow->Caster != this &&
			    ContainsThisBoundingBox(shadow->Bounds))
			{
				if (IsComplex())
				{
					if (GetShadowInfo() != shadow)
					{
						drawnMesh->DrawInShadow(shadow);
					}
				}
				else
				{
					drawnMesh->DrawInShadow(shadow);
				}
			}
		}
	}
}

void LH3DAnimatedObject::DrawIntoSprite(void* sprite_data)
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	unsigned long objectColor = color;
	unsigned long objectSpecular = specular;
	LH3DMesh::g_color = objectColor;
	LH3DMesh::g_specular = objectSpecular;
	if (BlendFactor == 0.0f)
	{
		CurrentAnim->SetTransform(LH3DMesh::g_current_list_matrix, mesh, CurrentCycleTime, matrix);
	}
	else
	{
		CurrentAnim->CombineTransform(LH3DMesh::g_current_list_matrix, CurrentCycleTime, 1.0f - BlendFactor, true);
		LastAnim->CombineTransform(LH3DMesh::g_current_list_matrix, LastCycleTime, BlendFactor, false);
		LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, mesh, matrix);
	}
	LH3DTech::g_world_to_local.SetInverse(matrix);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			submesh->DrawIntoSprite(sprite_data);
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
}

void LH3DMeshedObject::DrawDebugInfo() {}

void LH3DComplexObject::DrawUnderWater()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DMesh::g_current_list_matrix = BoneMatrices;
	LH3DStaticObject::DrawUnderWater();
	LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
}

void LH3DComplexObject::AddDrawing()
{
	int selectedPx = g_selected_px;
	int selectedPy = g_selected_py;
	g_last_selected_box = false;
	g_selected_px = special_jc_x;
	g_selected_py = special_jc_y;
	LH3DMesh* mesh = GetMesh();
	bool32_t  offScreen = !mesh->BoundingBox.CheckRegionOnScreen(this);
	g_selected_px = selectedPx;
	g_selected_py = selectedPy;
	if (offScreen)
	{
		return;
	}
	if (!DrawnAfterFrame)
	{
		if (IsNeedSorting() || IsDrawWithGlobalAlpha())
		{
			LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&LH3DComplexObject::Draw,
			                                  LH3DTech::GetValueForZSorter(matrix.GetPos()), 0);
		}
		else
		{
			Draw();
		}
	}
	else
	{
		DrawAfterFrame = true;
	}
}

void LH3DComplexObject::DrawFizz()
{
	uint8_t alpha = FizzAmount * 255.0f;
	if (alpha == LH3D_COLOR_OPAQUE)
	{
		return;
	}
	bool32_t castDynamicShadow = IsCastDynamicShadow();
	bool32_t dynamicLighting = IsDynamicLighting();
	SetCastDynamicShadow(false);
	SetDynamicLighting(false);
	LH3DMaterial::g_b_force_double_sided = true;
	LH3DRender::g_b_active_g_alpha_ref = true;
	LH3DRender::g_alpha_ref = alpha;
	float timeInc = LH3DTech::GetGameTimeInc() * 0.001f;
	FizzU = fmod(FizzU + r_u_speed * timeInc, 1.0);
	FizzV = fmod(FizzV + r_v_speed * timeInc, 1.0);
	LH3DRender::SetAnimUV(FizzU, FizzV);
	LH3DRender::SetMaterial(FizzMaterial, 0);
	LH3DRender::SetDoUpdateMaterial(false);
	mesh->DrawComplex();
	LH3DRender::g_b_need_anim_uv = false;
	LH3DRender::g_b_active_g_alpha_ref = false;
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
	LH3DRender::SetDoUpdateMaterial(true);
	SetDynamicLighting(dynamicLighting);
	unsigned long savedColor = color;
	color = RGBA_SETALPHA(color, LH3D_COLOR_OPAQUE - alpha);
	LH3DMesh::SetColorSpecular(color, specular);
	LH3DMaterial::SetGlobalAlpha(true);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		drawnMesh->submeshes[i]->DrawComplex();
		LH3DMesh::UpdateMatrixDrawing(drawnMesh->submeshes[i]->NumBones);
	}
	LH3DMaterial::SetGlobalAlpha(false);
	color = savedColor;
	LH3DMaterial::g_b_force_double_sided = false;
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	SetCastDynamicShadow(castDynamicShadow);
}

void LH3DStaticObject::StartFrameIncFizzVars()
{
	float timeInc = LH3DTech::GetGameTimeInc() * 0.001f;
	g_fizz_r_u = fmod(g_fizz_r_u + r_u_speed * timeInc, 1.0);
	g_fizz_r_v = fmod(g_fizz_r_v + r_v_speed * timeInc, 1.0);
}

void LH3DStaticObject::DrawFizz(float amount, LH3DMaterial* material)
{
	uint8_t alpha = amount * 255.0f;
	if (alpha == 255)
	{
		return;
	}
	bool32_t castDynamicShadow = IsCastDynamicShadow();
	bool32_t dynamicLighting = IsDynamicLighting();
	SetCastDynamicShadow(false);
	SetDynamicLighting(false);
	LH3DMaterial::g_b_force_double_sided = true;
	LH3DRender::g_b_active_g_alpha_ref = true;
	LH3DRender::g_alpha_ref = alpha;
	LH3DRender::SetAnimUV(g_fizz_r_u, g_fizz_r_v);
	LH3DRender::SetMaterial(material, 0);
	unsigned long alphaBlendEnable;
	unsigned long blendEnable;
	unsigned long srcBlend;
	unsigned long destBlend;
	unsigned long alphaTestEnable;
	LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable);
	LH3DRender::GetRenderState(D3DRENDERSTATE_BLENDENABLE, blendEnable);
	LH3DRender::GetRenderState(D3DRENDERSTATE_SRCBLEND, srcBlend);
	LH3DRender::GetRenderState(D3DRENDERSTATE_DESTBLEND, destBlend);
	LH3DRender::GetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alphaTestEnable);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_BLENDENABLE, TRUE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ZERO);
	LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ONE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, TRUE);
	LH3DRender::g_b_do_update_material = false;
	DrawWithClipping();
	LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, alphaBlendEnable);
	LH3DRender::SetRenderState(D3DRENDERSTATE_BLENDENABLE, blendEnable);
	LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, srcBlend);
	LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, destBlend);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alphaTestEnable);
	LH3DRender::g_b_need_anim_uv = false;
	LH3DRender::g_b_active_g_alpha_ref = false;
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
	LH3DRender::g_b_do_update_material = true;
	SetDynamicLighting(dynamicLighting);
	unsigned long savedColor = color;
	color = RGBA_SETALPHA(color, LH3D_COLOR_OPAQUE - alpha);
	unsigned long objectColor = color;
	unsigned long objectSpecular = specular;
	LH3DMesh::g_color = objectColor;
	LH3DMesh::g_specular = objectSpecular;
	LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_global_alpha;
	DrawWithClipping();
	LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_normal;
	color = savedColor;
	LH3DMaterial::g_b_force_double_sided = false;
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	SetCastDynamicShadow(castDynamicShadow);
}

void LH3DComplexObject::Draw()
{
	if (EnvMap >= ENV_MAP_TYPE_DEFAULT && g_env_mat_info[EnvMap].Material != NULL)
	{
		g_cur_env_mat_info = &g_env_mat_info[EnvMap];
		LH3DRender::SetMaterial(g_env_mat_info[EnvMap].Material, 1);
		DrawEnvMapMT();
		LH3DRender::Set2ndTex(LH3D_2ND_TEX_MODE_OFF, NULL, true);
		return;
	}
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DMesh::g_current_list_matrix = BoneMatrices;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DTech::g_world_to_local.SetInverse(matrix);
	bool32_t      vertexBlending = LH3DPrimitive::g_do_vertex_blending;
	unsigned long drawColor = color;
	if (FrozAmount > 0.0f)
	{
		LH3DPrimitive::g_do_vertex_blending = false;
		uint8_t       frozAlpha = FloatToInt(FrozAmount * 255.0f);
		unsigned long frozColor = LH3D_BLEND_COLOR(LH3D_COLOR_WHITE, FrozParam, frozAlpha);
		drawColor = ModulateColor(frozColor, RGB_TORGBA(color));
	}
	if (FizzAmount > 0.0f)
	{
		DrawFizz();
	}
	else if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = drawColor;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_global_alpha;
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			drawnMesh->submeshes[i]->DrawComplex();
			LH3DMesh::UpdateMatrixDrawing(drawnMesh->submeshes[i]->NumBones);
		}
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_normal;
	}
	else
	{
		unsigned long objectColor = drawColor;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DTech::g_world_to_local.SetInverse(matrix);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			drawnMesh->submeshes[i]->DrawComplex();
			LH3DMesh::UpdateMatrixDrawing(drawnMesh->submeshes[i]->NumBones);
		}
	}
	if (FrozAmount > 0.0f)
	{
		DoFrozPart();
		LH3DPrimitive::g_do_vertex_blending = vertexBlending;
	}
	if (IsCastDynamicShadow())
	{
		for (TShadowInfo* shadow = TShadowInfo::g_first; shadow != NULL; shadow = shadow->Next)
		{
			if (shadow->IsUseable() && !shadow->DynamicShadow && shadow->Caster != this &&
			    ContainsThisBoundingBox(shadow->Bounds) && GetShadowInfo() != shadow)
			{
				mesh->DrawInShadow(shadow);
			}
		}
	}
	if (hair != NULL && FrozAmount < LH3D_COMPLEX_OBJECT_HAIR_MAX_EFFECT &&
	    FizzAmount < LH3D_COMPLEX_OBJECT_HAIR_MAX_EFFECT)
	{
		caca_color_hair = color;
		caca_specular_hair = specular;
		hair->Draw();
	}
	LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
}

bool do_draw_froz = true;

void LH3DAnimatedObject::DoFrozPart(float froz_amount, unsigned long froz_color, LH3DMaterial* material)
{
	if (material != NULL)
	{
		LH3DRender::SetMaterial(material, 0);
		LH3DRender::SetDoUpdateMaterial(false);
		unsigned long frozColor =
			ModulateColor(RGBA_SETALPHA(LH3D_COLOR_WHITE, FloatToInt(froz_amount * 255.0f)), RGB_TORGBA(color));
		g_current_object_in_draw = this;
		LH3DSubMesh::g_current_status = GetStatus();
		LH3DPrimitive::g_current_index_primitive = 0;
		LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
		LH3DMesh::g_current_lod = GetLod();
		LH3DMesh* drawnMesh;
		switch (LH3DMesh::g_current_lod)
		{
		case LH3D_MESH_LOD_NEAR:
			drawnMesh = Meshes[LH3D_MESH_LOD_LEVEL_NEAR];
			break;
		case LH3D_MESH_LOD_MEDIUM:
			drawnMesh = Meshes[LH3D_MESH_LOD_LEVEL_MEDIUM];
			break;
		case LH3D_MESH_LOD_FAR:
			drawnMesh = Meshes[LH3D_MESH_LOD_LEVEL_FAR];
			break;
		}
		LH3DRender::g_b_need_tilling = IsNeedTilling();
		LH3DRender::SetAnimUV(GetU(), GetV());
		LH3DMesh::SetColorSpecular(frozColor, specular);
		if (do_draw_froz)
		{
			drawnMesh->DrawFroz();
		}
		else
		{
			drawnMesh->Draw(false);
		}
		LH3DRender::SetDoUpdateMaterial(true);
	}
}

void LH3DComplexObject::DoFrozPart()
{
	if (FrozMaterial != NULL)
	{
		LH3DRender::SetMaterial(FrozMaterial, 0);
		LH3DRender::g_b_do_update_material = false;
		unsigned long frozColor =
			ModulateColor(RGBA_SETALPHA(LH3D_COLOR_WHITE, FloatToInt(FrozAmount * 255.0f)), RGB_TORGBA(color));
		g_current_object_in_draw = this;
		LH3DSubMesh::g_current_status = GetStatus();
		LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
		LH3DMesh::g_current_list_matrix = BoneMatrices;
		LH3DTech::g_local_to_clipping.Set(matrix);
		LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
		if (IsDrawWithGlobalAlpha())
		{
			unsigned long objectSpecular = specular;
			LH3DMesh::g_color = frozColor;
			LH3DMesh::g_specular = objectSpecular;
			LH3DMaterial::SetGlobalAlpha(true);
			LH3DTech::g_world_to_local.SetInverse(matrix);
			LH3DMesh* drawnMesh = mesh;
			LH3DMesh::InitMatrixDrawing();
			for (int i = 0; i < drawnMesh->SubmeshCount; i++)
			{
				drawnMesh->submeshes[i]->DrawComplexFroz();
				LH3DMesh::UpdateMatrixDrawing(drawnMesh->submeshes[i]->NumBones);
			}
			LH3DMaterial::SetGlobalAlpha(false);
		}
		else
		{
			unsigned long objectSpecular = specular;
			LH3DMesh::g_color = frozColor;
			LH3DMesh::g_specular = objectSpecular;
			LH3DTech::g_world_to_local.SetInverse(matrix);
			if (matrix._42 < LH3D_OBJECT_FROZ_LOW_ALTITUDE)
			{
				LH3DMesh* drawnMesh = mesh;
				LH3DMesh::InitMatrixDrawing();
				for (int i = 0; i < drawnMesh->SubmeshCount; i++)
				{
					drawnMesh->submeshes[i]->DrawComplexFroz();
					LH3DMesh::UpdateMatrixDrawing(drawnMesh->submeshes[i]->NumBones);
				}
			}
			else
			{
				LH3DMesh* drawnMesh = mesh;
				LH3DMesh::InitMatrixDrawing();
				for (int i = 0; i < drawnMesh->SubmeshCount; i++)
				{
					drawnMesh->submeshes[i]->DrawComplexFroz();
					LH3DMesh::UpdateMatrixDrawing(drawnMesh->submeshes[i]->NumBones);
				}
			}
		}
		LH3DRender::g_b_do_update_material = true;
		LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
	}
}

void LH3DComplexObject::DrawEnvMapMT()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DMesh::g_current_list_matrix = BoneMatrices;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	unsigned long objectColor = color;
	unsigned long objectSpecular = specular;
	LH3DMesh::g_color = objectColor;
	LH3DMesh::g_specular = objectSpecular;
	LH3DPrimitive::UpdatePreComputeLight(&matrix);
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_global_alpha;
		LH3DTech::g_world_to_local.SetInverse(matrix);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			drawnMesh->submeshes[i]->DrawComplexEnvMapMT();
			LH3DMesh::UpdateMatrixDrawing(drawnMesh->submeshes[i]->NumBones);
		}
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_normal;
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DTech::g_world_to_local.SetInverse(matrix);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			drawnMesh->submeshes[i]->DrawComplexEnvMapMT();
			LH3DMesh::UpdateMatrixDrawing(drawnMesh->submeshes[i]->NumBones);
		}
	}
	if (IsCastDynamicShadow())
	{
		for (TShadowInfo* shadow = TShadowInfo::g_first; shadow != NULL; shadow = shadow->Next)
		{
			if (shadow->IsUseable() && !shadow->DynamicShadow && shadow->Caster != this &&
			    ContainsThisBoundingBox(shadow->Bounds) && GetShadowInfo() != shadow)
			{
				mesh->DrawInShadow(shadow);
			}
		}
	}
	if (hair != NULL)
	{
		hair->Draw();
	}
	LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
}

void LH3DComplexObject::DrawSnow()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DMesh::g_current_list_matrix = BoneMatrices;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_global_alpha;
		LH3DTech::g_world_to_local.SetInverse(matrix);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			submesh->DrawWindow();
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawSnow();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_normal;
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DTech::g_world_to_local.SetInverse(matrix);
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = drawnMesh->submeshes[i];
			submesh->DrawWindow();
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				submesh->DrawSnow();
				LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
			}
		}
	}
	if (IsCastDynamicShadow())
	{
		for (TShadowInfo* shadow = TShadowInfo::g_first; shadow != NULL; shadow = shadow->Next)
		{
			if (shadow->IsUseable() && !shadow->DynamicShadow && shadow->Caster != this &&
			    ContainsThisBoundingBox(shadow->Bounds) && GetShadowInfo() != shadow)
			{
				mesh->DrawInShadow(shadow);
			}
		}
	}
	LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
}

void LH3DComplexObject::DrawRefMapMT()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DMesh::g_current_list_matrix = BoneMatrices;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DTech::g_world_to_local.SetInverse(matrix);
	if (IsDrawWithGlobalAlpha())
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_global_alpha;
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			drawnMesh->submeshes[i]->DrawComplexRefMapMT();
			LH3DMesh::UpdateMatrixDrawing(drawnMesh->submeshes[i]->NumBones);
		}
		LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_normal;
	}
	else
	{
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMesh* drawnMesh = mesh;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < drawnMesh->SubmeshCount; i++)
		{
			drawnMesh->submeshes[i]->DrawComplexRefMapMT();
			LH3DMesh::UpdateMatrixDrawing(drawnMesh->submeshes[i]->NumBones);
		}
	}
	if (IsCastDynamicShadow())
	{
		for (TShadowInfo* shadow = TShadowInfo::g_first; shadow != NULL; shadow = shadow->Next)
		{
			if (shadow->IsUseable() && !shadow->DynamicShadow && shadow->Caster != this &&
			    ContainsThisBoundingBox(shadow->Bounds) && GetShadowInfo() != shadow)
			{
				mesh->DrawInShadow(shadow);
			}
		}
	}
	if (hair != NULL)
	{
		hair->Draw();
	}
	LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
}

void LH3DComplexObject::DrawForMouse()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DMesh::g_current_list_matrix = BoneMatrices;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DHand::Init();
	LH3DTech::g_world_to_local.SetInverse(matrix);
	LH3DMesh* drawnMesh = mesh;
	LH3DMesh::InitMatrixDrawing();
	for (int i = 0; i < drawnMesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = drawnMesh->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			submesh->DrawForMouse();
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
	}
	LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
}

void LH3DComplexObject::PrepareShadow()
{
	if (ShadowInfo == NULL)
	{
		return;
	}
	if (Hidden)
	{
		ShadowInfo->Enabled = false;
		return;
	}
	ShadowInfo->Enabled = true;
	float alpha;
	if ((alpha = GetAlphaForShadow(this)) < 255.0f)
	{
		ShadowInfo->Alpha = ShadowInfo->BaseAlpha * alpha * (1.0f / 255.0f);
		if (ShadowInfo->Alpha == 0)
		{
			return;
		}
	}
	else
	{
		ShadowInfo->Alpha = LH3D_SHADOW_ALPHA_OPAQUE;
	}
	float   maxDistance = GetMesh()->BoundingBox.DiagonalLength * scale * LH3D_COMPLEX_OBJECT_SHADOW_DISTANCE_SCALE;
	LHPoint sun = LH3DTech::GetSun();
	LHPoint toSun(sun.x - matrix._41, sun.y - matrix._42, sun.z - matrix._43);
	float   distance = sqrt(toSun.x * toSun.x + toSun.z * toSun.z);
	if (distance < maxDistance)
	{
		if (distance < 0.1)
		{
			toSun.x += 1.0f;
			toSun.z += 1.0f;
		}
		if (toSun.x != 0.0f || toSun.y != 0.0f || toSun.z != 0.0f)
		{
			float factor = maxDistance / (float)sqrt(toSun.x * toSun.x + toSun.y * toSun.y + toSun.z * toSun.z);
			toSun.x *= factor;
			toSun.y *= factor;
			toSun.z *= factor;
		}
		distance = sqrt(toSun.x * toSun.x + toSun.z * toSun.z);
	}
	if (toSun.y / distance < 1.0f)
	{
		toSun.y = distance;
	}
	LHPoint light = matrix.GetPos();
	light += toSun;
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	if (VerticalShadow)
	{
		ShadowInfo->Light.Set(matrix.GetPos());
		LHPoint& shadowLight = ShadowInfo->Light;
		shadowLight.y += LH3D_COMPLEX_OBJECT_VERTICAL_SHADOW_HEIGHT;
	}
	else
	{
		ShadowInfo->Light.Set(light);
	}
	ShadowInfo->Direction.Set(matrix.GetPos());
	ShadowInfo->Direction -= ShadowInfo->Light;
	ShadowInfo->MinX = LH3D_SHADOW_FAR;
	ShadowInfo->MinZ = LH3D_SHADOW_FAR;
	ShadowInfo->MaxX = -LH3D_SHADOW_FAR;
	ShadowInfo->MaxZ = -LH3D_SHADOW_FAR;
	ShadowInfo->MinDepth = LH3D_SHADOW_FAR;
	ShadowInfo->GroundHeight = matrix.GetPos().y;
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::g_local_to_clipping.Set(matrix);
	mesh->CalculateShadow(&matrix, ShadowInfo);
	ShadowInfo->Prepare();
	ShadowInfo->Bounds.MinX = ShadowInfo->MinX;
	ShadowInfo->Bounds.MaxX = ShadowInfo->MaxX;
	ShadowInfo->Bounds.MinZ = ShadowInfo->MinZ;
	ShadowInfo->Bounds.MaxZ = ShadowInfo->MaxZ;
}

LH3DSpriteObject::LH3DSpriteObject(long type)
{
	LHPoint position(0.0f, 0.0f, 0.0f);
	smoke = LH3DSmoke::Create(&position);
	LHPoint offset;
	switch (type)
	{
	case LH3D_SPRITE_OBJECT_TYPE_SMOKE:
		smoke->SetMaterial(g_smoke_mat);
		break;
	case LH3D_SPRITE_OBJECT_TYPE_FIRE_00:
		smoke->SetMaterial(g_fire_mat);
		offset.Set(0.0f, LH3D_SPRITE_OBJECT_FIRE_00_OFFSET, 0.0f);
		smoke->offset = offset;
		break;
	case LH3D_SPRITE_OBJECT_TYPE_FIRE_35:
		smoke->SetMaterial(g_fire_mat);
		offset.SetNull();
		smoke->offset = offset;
		break;
	}
}

LH3DSpriteObject::~LH3DSpriteObject()
{
	smoke->Release();
	smoke = NULL;
}

void LH3DSpriteObject::Release() {}

void LH3DSpriteObject::AddDrawing()
{
	smoke->AddDrawing();
}

void LH3DSpriteObject::Draw()
{
	g_current_object_in_draw = this;
	smoke->Draw();
}

void LH3DSpriteObject::SetPosition(const LHPoint& point, float y_angle, float scale)
{
	smoke->pos = point;
}

void LH3DSpriteObject::SetPosition(float x, float y, float z)
{
	smoke->pos = LHPoint(x, y, z);
}

bool32_t LH3DObject::IsUseAlpha()
{
	return false;
}

void LH3DObject::SetLinked(bool32_t linked) {}

bool32_t LH3DObject::IsLinked()
{
	return false;
}

void LH3DObject::SetMesh(LH3DMesh* mesh1, LH3DMesh* mesh2, LH3DMesh* mesh3) {}

LH3DMesh* LH3DObject::GetMesh() const
{
	return NULL;
}

void LH3DObject::DrawDebugInfo() {}

void LH3DObject::AddDrawing()
{
	g_last_selected_box = false;
}

bool32_t LH3DObject::DrawWithClipping()
{
	g_last_selected_box = false;
	return false;
}

bool32_t LH3DComplexObject::DrawWithClipping()
{
	g_last_selected_box = false;
	return false;
}

void LH3DObject::Draw() {}

void LH3DObject::DrawTnL() {}

void LH3DObject::DrawEnvMapMT() {}

void LH3DObject::DrawEnvMapST() {}

void LH3DObject::DrawLOD(LH3DLODData* lod_data, int lod) {}

void LH3DObject::DrawVolLightGJ(unsigned long color, unsigned long specular, LH3DMaterial* material) {}

void LH3DObject::DrawCage(float scale) {}

void LH3DObject::DrawReverse() {}

void LH3DObject::DrawGlassFronted(float zoom, float alpha) {}

void LH3DObject::DrawSnow(LH3DMaterial* material) {}

void LH3DObject::DrawSnow() {}

void LH3DObject::DrawFroz() {}

void LH3DComplexObject::DrawFroz() {}

void LH3DObject::DrawFroz(float froz_amount, unsigned long froz_color, LH3DMaterial* material) {}

void LH3DObject::DrawFizz() {}

void LH3DObject::DrawFizz(float amount, LH3DMaterial* material) {}

void LH3DObject::DrawRefMapMT() {}

void LH3DObject::DrawUnderWater() {}

void LH3DObject::SetCurrentAnim(LH3DAnim* anim) {}

LH3DAnim* LH3DObject::GetCurrentAnim()
{
	return NULL;
}

void LH3DObject::SetCurrentCycleTime(long time) {}

long LH3DObject::GetCurrentCycleTime()
{
	return 0;
}

void LH3DObject::SetLastAnim(const LH3DAnim* anim) {}

LH3DAnim* LH3DObject::GetLastAnim()
{
	return NULL;
}

void LH3DObject::SetLastCycleTime(long time) {}

long LH3DObject::GetLastCycleTime()
{
	return 0;
}

void LH3DObject::SetBlendFactor(float factor) {}

float LH3DObject::GetBlendFactor()
{
	return 0.0f;
}

TShadowInfo* LH3DObject::GetShadowInfo()
{
	return NULL;
}

bool32_t LH3DObject::ContainsThisBoundingBox(const BBox2D& bbox)
{
	return false;
}

bool32_t LH3DObject::GetChimneyPos(LHPoint* point) const
{
	point->x = point->y = point->z = 0.0f;
	return false;
}

bool32_t LH3DObject::GetDoorPos(LHPoint* point) const
{
	point->x = point->y = point->z = 0.0f;
	return false;
}

bool32_t LH3DObject::GetExtraPos(long index, LHPoint* point) const
{
	point->x = point->y = point->z = 0.0f;
	return false;
}

void LH3DObject::DrawNormals() const {}

void LH3DObject::DrawTextureShadow(unsigned long tile_x, unsigned long tile_z) const {}

void LH3DObject::DrawMorphLand() {}

void LH3DObject::DrawBlendBaseCitadelle() {}

void LH3DObject::DrawIntoSprite(void* sprite_data) {}

void LH3DObject::SetDrawWithGlobalAlpha(bool32_t value) {}

bool32_t LH3DObject::IsDrawWithGlobalAlpha()
{
	return false;
}

void LH3DObject::SetFootPrintOnTexture(bool32_t foot_print_on_texture) {}

bool32_t LH3DObject::IsFootPrintOnTexture()
{
	return false;
}

void LH3DObject::DrawForMouse() {}

void LH3DObject::Blend(LH3DObject* obj1, LH3DObject* obj2, float blend) {}

bool32_t LH3DMeshedObject::DrawWithClipping()
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	if (!GetMesh()->GetBoundingBox().CheckRegionOnScreen(this))
	{
		return false;
	}
	if (IsDisappear())
	{
		LHPoint pos = matrix.GetPos();
		LHPoint delta = pos - LH3DTech::g_camera.pos;
		float   distanceSq = delta.GetNormeSq();
		if (distanceSq > GetMesh()->BoundingBox.DiagonalLength * scale * LH3D_OBJECT_DISAPPEAR_DISTANCE *
		                     (GetMesh()->BoundingBox.DiagonalLength * scale * LH3D_OBJECT_DISAPPEAR_DISTANCE))
		{
			return false;
		}
	}
	Draw();
	return true;
}

const float g_inv_feet_shadow_scale = 1.0f / LH3D_OBJECT_FEET_SHADOW_SCALE;

void LH3DMeshedObject::AddDrawing()
{
	if (GetDontDraw())
	{
		g_last_selected_box = false;
		g_b_last_on_screen = true;
		return;
	}
	g_current_object_in_draw = this;
	if (!GetMesh()->GetBoundingBox().CheckRegionOnScreen(this))
	{
		return;
	}
	bool32_t     needSorting = IsNeedSorting();
	static float maxRadius = 5.0f;
	float        radius = LH3DTech::g_level_of_detail * g_last_radius * (importance + 1.0f);
	if (radius > maxRadius)
	{
		radius = maxRadius;
	}
	float lod3Distance;
	float lod4Distance;
	if (g_last_distance < DISTANCE_LOD_1 * radius)
	{
		SetLod(LH3D_MESH_LOD_NEAR);
	}
	else if (g_last_distance < DISTANCE_LOD_2 * radius)
	{
		SetLod(LH3D_MESH_LOD_MEDIUM);
	}
	else if (g_last_distance < (lod3Distance = DISTANCE_LOD_3 * radius))
	{
		SetLod(LH3D_MESH_LOD_FAR);
	}
	else if (g_last_distance < (lod4Distance = DISTANCE_LOD_4 * radius))
	{
		SetLod(LH3D_MESH_LOD_FAR);
		if (!IsDrawWithGlobalAlpha() && IsDisappear())
		{
			float range = lod4Distance - lod3Distance;
			int   alpha = FloatToInt((range - (g_last_distance - lod3Distance)) * LH3D_OBJECT_MAX_ALPHA / range);
			color = RGBA_SETALPHA(color, alpha);
			SetDrawWithGlobalAlpha(true);
		}
	}
	else if (IsDisappear())
	{
		if (IsHuman())
		{
			if (IsHumanShadowed() && matrix._42 > LH3D_OBJECT_FEET_SHADOW_MIN_HEIGHT)
			{
				g_left *= LH3D_OBJECT_FEET_SHADOW_SCALE;
				g_right *= LH3D_OBJECT_FEET_SHADOW_SCALE;
				TRANS_TO_ADD = LH3D_OBJECT_FEET_SHADOW_TRANS;
				LHPoint offset(0.0f, 1.0f, 0.0f);
				LH3DMesh::g_current_list_matrix[LH3D_OBJECT_RIGHT_FOOT_BONE] = matrix;
				LH3DMesh::g_current_list_matrix[LH3D_OBJECT_LEFT_FOOT_BONE] =
					LH3DMesh::g_current_list_matrix[LH3D_OBJECT_RIGHT_FOOT_BONE];
				LH3DMesh::g_current_list_matrix[LH3D_OBJECT_LEFT_FOOT_BONE].PostMultiply(LH3DTech::g_world_to_clipping);
				LH3DMesh::g_current_list_matrix[LH3D_OBJECT_RIGHT_FOOT_BONE].PostMultiply(
					LH3DTech::g_world_to_clipping);
				LH3DFeetShadow::Draw(this, &offset, NULL);
				g_left *= g_inv_feet_shadow_scale;
				g_right *= g_inv_feet_shadow_scale;
				TRANS_TO_ADD = DEFAULT_TRANS_TO_ADD;
				static LH3DSprite* sprite = NULL;
				if (sprite == NULL)
				{
					sprite = LH3DSprite::Create(1, true);
					sprite->SetMaterial(g_smoke_mat);
					static float spriteSize = 0.3f;
					static float shapeSize = 1.0f;
					static float shapeAspect = 3.0f;
					sprite->SetShape(shapeSize, shapeAspect);
					sprite->SetSize(spriteSize * scale);
					sprite->colour = RGBA_MAKE(0, 0, 0, MIN_ALPHA_HUMAN);
				}
				sprite->pos = matrix.GetPos();
				sprite->pos.y += scale * LH3D_OBJECT_HUMAN_SPRITE_HEIGHT;
				sprite->Draw();
			}
			if (IsGlowing())
			{
				LHPoint glowPos = matrix.GetPos();
				glowPos.y += scale;
				GlowVillager::AddGlow(&glowPos, scale);
			}
		}
		else
		{
			g_b_last_on_screen = false;
		}
		return;
	}
	else
	{
		SetLod(LH3D_MESH_LOD_FAR);
	}
	if (needSorting)
	{
		float dy = matrix._42 - LH3DTech::g_camera.pos.y;
		float dz = matrix._43 - LH3DTech::g_camera.pos.z;
		float dx = matrix._41 - LH3DTech::g_camera.pos.x;
		LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&LH3DObject::Draw,
		                                  dx * dx + dy * dy + dz * dz, 0);
	}
	else
	{
		Draw();
	}
}

bool32_t LH3DObject::CheckTriangleCollide()
{
	return false;
}

bool32_t LH3DObject::CheckPixelCollide()
{
	return false;
}

void LH3DObject::DrawCutByPlane() {}

void LH3DObject::SetLinkedPosition(LH3DObject* linked_obj, float weight, LinkedType type) {}

void LH3DObject::UpdateMelting() {}

void LH3DStaticObject::SetLinkedPosition(LH3DObject* linked_obj, float weight, LinkedType type)
{
	if (linked_obj->GetBlendFactor() == 0.0f)
	{
		linked_obj->GetCurrentAnim()->SetTransform(LH3DMesh::GetListMatrix(), linked_obj->GetMesh(),
		                                           linked_obj->GetCurrentCycleTime(), linked_obj->matrix);
	}
	else
	{
		linked_obj->GetCurrentAnim()->CombineTransform(LH3DMesh::GetListMatrix(), linked_obj->GetCurrentCycleTime(),
		                                               1.0f - linked_obj->GetBlendFactor(), true);
		linked_obj->GetLastAnim()->CombineTransform(LH3DMesh::GetListMatrix(), linked_obj->GetLastCycleTime(),
		                                            linked_obj->GetBlendFactor(), false);
		LH3DAnim::FinishTransform(LH3DMesh::GetListMatrix(), linked_obj->GetMesh(), linked_obj->matrix);
	}
	switch (type)
	{
	case LINKED_TYPE_HAND:
		matrix = LH3DMesh::GetListMatrix()[LH3D_OBJECT_HAND_BONE];
		LHMatrix& handMatrix = matrix;
		LHPoint   vectorY = handMatrix.GetVectorY();
		handMatrix.GetVectorY() = handMatrix.GetVectorZ();
		handMatrix.GetVectorZ() = vectorY;
		handMatrix.GetVectorX() *= -1.0f;
		handMatrix.GetVectorY() *= -1.0f;
		handMatrix.GetVectorZ() *= -1.0f;
		break;
	}
}

LH3DStaticMorphableObject::~LH3DStaticMorphableObject()
{
	g_count_static_object--;
	if (LandAltitudes != NULL)
	{
		LH3DMem::Free(LandAltitudes);
		LandAltitudes = NULL;
	}
}

void LH3DStaticMorphableObject::SetMesh(LH3DMesh* mesh1, LH3DMesh* mesh2, LH3DMesh* mesh3)
{
	LH3DMeshedObject::SetMesh(mesh1, mesh2, mesh3);
	if (LandAltitudes != NULL)
	{
		LH3DMem::Free(LandAltitudes);
		LandAltitudes = NULL;
	}
	if (mesh != NULL)
	{
		long verticesCount = 0;
		for (int i = 0; i < mesh1->SubmeshCount; i++)
		{
			verticesCount += mesh1->submeshes[i]->GetVerticesCount();
		}
		long size = verticesCount * sizeof(float);
		if (IsHDO())
		{
			size *= 3;
		}
		LandAltitudes = (float*)LH3DMem::Alloc(size);
		memset(LandAltitudes, 0, size);
	}
}

void LH3DObject::MeltBorder() {}

void LH3DStaticObject::MeltBorder()
{
	for (int i = 0; i < GetMesh()->GetSubmeshCount(); i++)
	{
		LH3DSubMesh* submesh = GetMesh()->GetListPtrSubmesh()[i];
		for (int j = 0; j < submesh->GetPrimitiveCount(); j++)
		{
			LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[j];
			for (int k = 0; k < primitive->GetVerticesCount(); k++)
			{
				LH3DVertex* vertex = &primitive->GetListVertex()[k];
				LHPoint     pos = vertex->position;
				matrix.TransformPoint(pos);
				float altitude = LH3DIsland::GetAltitude(pos);
				vertex->position.y -= matrix._42 - altitude;
			}
		}
	}
}

LH3DMeshedObject::LH3DMeshedObject()
{
	Flags1 = 0;
	Flags2 = 0;
	SetLod(LH3D_MESH_LOD_NEAR);
	SetNeedClipping(true);
	mesh = NULL;
	EnvMap = ENV_MAP_TYPE_NONE;
	SetDisappear(true);
}

LH3DStaticObject::LH3DStaticObject()
{
	g_count_static_object++;
}

void LH3DStaticObject::Release()
{
	delete this;
}

void LH3DAnimatedObject::Release()
{
	if (GlowVillager::g_the_one == this)
	{
		GlowVillager::g_the_one = NULL;
	}
	g_count_animated_object--;
	delete this;
}

void LH3DComplexObject::Release()
{
	g_count_complex_object--;
	delete this;
}

void LH3DComplexObject::SetCarriedObject(LH3DObject* object)
{
	if (object != NULL)
	{
		object->SetCastDynamicShadow(false);
	}
	CarriedObject = object;
	if (ShadowInfo != NULL)
	{
		ShadowInfo->Object = object;
	}
}

void LH3DObject::SetFastBlendingMaterial(LH3DMesh* mesh)
{
	for (int i = 0; i < mesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = mesh->submeshes[i];
		for (int j = 0; j < submesh->NumPrimitives; j++)
		{
			g_fb_list_mat[j] = submesh->primitives_[j]->GetMaterial();
		}
	}
}

void LH3DObject::SetCastDynamicShadow(bool32_t cast_dynamic_shadow)
{
	if (!LH3DLevelOfDetail::g_b_objects_cast_shadow)
	{
		cast_dynamic_shadow = false;
	}
	if (cast_dynamic_shadow)
	{
		CastDynamicShadow = true;
	}
	else
	{
		CastDynamicShadow = false;
	}
}

void LH3DObject::SetDynamicLighting(bool32_t dynamic_lighting)
{
	if (!LH3DLevelOfDetail::g_b_dynamic_lighting_on_objects)
	{
		dynamic_lighting = false;
	}
	if (dynamic_lighting)
	{
		DynamicLighting = true;
	}
	else
	{
		DynamicLighting = false;
	}
}

void LH3DObject::DrawJustPhys() {}

void LH3DStaticMorphableObject::UpdateMelting()
{
	if (LandAltitudes != NULL && !IsHDO())
	{
		float* altitudes = LandAltitudes;
		float  baseAltitude = LH3DIsland::GetAltitude(matrix.GetPos());
		float  invScale = 1.0f / scale;
		for (int i = 0; i < GetMesh()->GetSubmeshCount(); i++)
		{
			LH3DSubMesh* submesh = GetMesh()->GetListPtrSubmesh()[i];
			for (int j = 0; j < submesh->GetPrimitiveCount(); j++)
			{
				LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[j];
				for (int k = 0; k < primitive->GetVerticesCount(); k++)
				{
					LH3DVertex* vertex = &primitive->GetListVertex()[k];
					LHPoint     pos = vertex->position;
					matrix.TransformPoint(pos);
					float altitude = LH3DIsland::GetAltitude(pos);
					*altitudes++ = -(baseAltitude - altitude) * invScale;
				}
			}
		}
	}
}

inline void UpdateClippingPlane(LHPlane* plane)
{
	LH3DPrimitive::g_clipping_plane_world.Normal.x = plane->Normal.x;
	LH3DPrimitive::g_clipping_plane_world.Normal.y = plane->Normal.y;
	LH3DPrimitive::g_clipping_plane_world.Normal.z = plane->Normal.z;
	LH3DPrimitive::g_clipping_plane_world.Distance = plane->Distance;
	LHPoint normal;
	normal.x = LH3DPrimitive::g_clipping_plane_world.Normal.x;
	normal.y = LH3DPrimitive::g_clipping_plane_world.Normal.y;
	normal.z = LH3DPrimitive::g_clipping_plane_world.Normal.z;
	const LHMatrix& worldToCamera = LH3DTech::g_world_to_camera;
	float           factor = -LH3DPrimitive::g_clipping_plane_world.Distance /
	                         (normal.x * normal.x + normal.y * normal.y + normal.z * normal.z);
	LHPoint         point;
	point.x = normal.x * factor;
	point.y = normal.y * factor;
	point.z = normal.z * factor;
	float nx = normal.x;
	float ny = normal.y;
	float nz = normal.z;
	normal.x = worldToCamera.m[0] * nx + worldToCamera.m[3] * ny + worldToCamera.m[6] * nz;
	normal.y = worldToCamera.m[1] * nx + worldToCamera.m[4] * ny + worldToCamera.m[7] * nz;
	normal.z = worldToCamera.m[2] * nx + worldToCamera.m[5] * ny + worldToCamera.m[8] * nz;
	float x = point.x;
	float y = point.y;
	float z = point.z;
	point.x = worldToCamera.m[0] * x + worldToCamera.m[3] * y + worldToCamera.m[6] * z + worldToCamera.m[9];
	point.y = worldToCamera.m[1] * x + worldToCamera.m[4] * y + worldToCamera.m[7] * z + worldToCamera.m[10];
	point.z = worldToCamera.m[2] * x + worldToCamera.m[5] * y + worldToCamera.m[8] * z + worldToCamera.m[11];
	LH3DPrimitive::g_clipping_plane_camera.Normal = normal;
	LH3DPrimitive::g_clipping_plane_camera.Distance = -normal.DotProduct(&point);
}

void LH3DStaticObject::DrawPartialyBuilt(float built)
{
	if (built < 0.0f)
	{
		built = 0.0f;
	}
	else if (built > 1.0f)
	{
		built = 1.0f;
	}
	g_current_object_in_draw = this;
	LH3DMesh* drawnMesh = GetMesh();
	if (!drawnMesh->BoundingBox.CheckRegionOnScreen(this))
	{
		return;
	}
	float distance = LH3DTech::g_level_of_detail * g_last_radius * (importance + 1.0f);
	float lod3Distance;
	if (g_last_distance < DISTANCE_LOD_1 * distance)
	{
		SetLod(LH3D_MESH_LOD_NEAR);
	}
	else if (g_last_distance < DISTANCE_LOD_2 * distance)
	{
		SetLod(LH3D_MESH_LOD_MEDIUM);
	}
	else if (g_last_distance < (lod3Distance = DISTANCE_LOD_3 * distance))
	{
		SetLod(LH3D_MESH_LOD_FAR);
	}
	else if (g_last_distance < (distance = DISTANCE_LOD_4 * distance))
	{
		SetLod(LH3D_MESH_LOD_FAR);
		if (!IsDrawWithGlobalAlpha() && IsDisappear())
		{
			int alpha = FloatToInt(LH3D_COLOR_OPAQUE * ((distance - lod3Distance) - (g_last_distance - lod3Distance)) /
			                       (distance - lod3Distance));
			color = RGBA_SETALPHA(color, alpha);
			SetDrawWithGlobalAlpha(true);
		}
	}
	else
	{
		if (IsDisappear())
		{
			return;
		}
		SetLod(LH3D_MESH_LOD_FAR);
	}
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DSubMesh::g_current_status = 0;
	LH3DTech::g_local_to_clipping.Set(matrix);
	LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DRender::g_b_need_tilling = IsNeedTilling();
	float animV = GetV();
	float animU = GetU();
	if (animU == 0.0f && animV == 0.0f)
	{
		LH3DRender::g_adv = 0.0f;
		LH3DRender::g_adu = 0.0f;
		LH3DRender::g_b_need_anim_uv = false;
	}
	else
	{
		LH3DRender::g_adu = animU;
		LH3DRender::g_adv = animV;
		LH3DRender::g_b_need_anim_uv = true;
	}
	unsigned long objectColor = color;
	unsigned long objectSpecular = specular;
	LH3DMesh::g_color = objectColor;
	LH3DMesh::g_specular = objectSpecular;
	LH3DPrimitive::UpdatePreComputeLight(&matrix);
	LHPlane buildPlane;
	buildPlane.Normal.y = -1.0f;
	buildPlane.Distance = matrix.m[10] + GetMesh()->BoundingBox.size.y * scale * built * 2.0f;
	UpdateClippingPlane(&buildPlane);
	int maxState = GetMesh()->ComputeMaxState();
	if (maxState < LH3D_STATIC_OBJECT_FIRST_BUILD_STATE)
	{
		maxState = LH3D_STATIC_OBJECT_FIRST_BUILD_STATE;
	}
	if (IsMorphWithLand())
	{
		LH3DPrimitive::g_vertical_translate_vertices = ((LH3DStaticMorphableObject*)this)->LandAltitudes;
	}
	for (int i = 0; i < GetMesh()->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = GetMesh()->submeshes[i];
		if (submesh->GetLod() & LH3DMesh::g_current_lod)
		{
			if (!submesh->GetStatus())
			{
				LH3DSubMesh::g_current_sub_mesh = submesh;
				for (int j = 0; j < submesh->NumPrimitives; j++)
				{
					submesh->primitives_[j]->DrawInBuild();
				}
			}
			else if (submesh->GetStatus() == maxState)
			{
				LH3DSubMesh::g_current_sub_mesh = submesh;
				LH3DPrimitive::g_draw_depth = false;
				for (int j = 0; j < submesh->NumPrimitives; j++)
				{
					if (built < LH3D_STATIC_OBJECT_BUILD_RISE_END)
					{
						LHPoint rise(
							0.0f, (1.0f - built / LH3D_STATIC_OBJECT_BUILD_RISE_END) * mesh->BoundingBox.size.y * -2.0f,
							0.0f);
						LHMatrix savedLocalToClipping = LH3DTech::g_local_to_clipping;
						LHMATRIX_TRANSFORM_POINT(LH3DTech::g_local_to_clipping.GetPos(), rise,
						                         LH3DTech::g_local_to_clipping);
						if (IsMorphWithLand())
						{
							submesh->DrawWithVerticalTranslation();
						}
						else
						{
							submesh->primitives_[j]->DrawLit();
						}
						LH3DTech::g_local_to_clipping = savedLocalToClipping;
					}
					else if (built > LH3D_STATIC_OBJECT_BUILD_CUT_START)
					{
						LHPlane savedWorld = LH3DPrimitive::g_clipping_plane_world;
						LHPlane savedCamera = LH3DPrimitive::g_clipping_plane_camera;
						LHPlane cutPlane;
						cutPlane.Normal.y = -1.0f;
						cutPlane.Distance = matrix.m[10] + (1.0f - (built - LH3D_STATIC_OBJECT_BUILD_CUT_START) /
						                                               LH3D_STATIC_OBJECT_BUILD_CUT_LENGTH) *
						                                       GetMesh()->BoundingBox.size.y * scale * 2.0f;
						UpdateClippingPlane(&cutPlane);
						submesh->primitives_[j]->DrawInBuild();
						LH3DPrimitive::g_clipping_plane_world = savedWorld;
						LH3DPrimitive::g_clipping_plane_camera = savedCamera;
					}
					else
					{
						if (IsMorphWithLand())
						{
							submesh->DrawWithVerticalTranslation();
						}
						else
						{
							submesh->primitives_[j]->DrawLit();
						}
					}
				}
				LH3DPrimitive::g_draw_depth = true;
			}
			else
			{
				LH3DPrimitive::g_vertical_translate_vertices += submesh->GetVerticesCount();
			}
		}
		else
		{
			LH3DPrimitive::g_vertical_translate_vertices += submesh->GetVerticesCount();
		}
	}
	LHPlane groundPlane;
	UpdateClippingPlane(&groundPlane);
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
}

void LH3DStaticObject::DrawSpecialLight(float time, unsigned long special_color)
{
	g_current_object_in_draw = this;
	LH3DMesh* drawnMesh = GetMesh();
	if (drawnMesh->BoundingBox.CheckRegionOnScreen(this))
	{
		SetLod(LH3D_MESH_LOD_NEAR);
		LH3DSubMesh::g_current_status = 0;
		LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
		LH3DTech::g_local_to_clipping.Set(matrix);
		LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
		LH3DRender::g_b_need_tilling = true;
		float animV = GetV();
		float animU = GetU();
		if (animU == 0.0f && animV == 0.0f)
		{
			LH3DRender::g_adv = 0.0f;
			LH3DRender::g_adu = 0.0f;
			LH3DRender::g_b_need_anim_uv = false;
		}
		else
		{
			LH3DRender::g_adu = animU;
			LH3DRender::g_adv = animV;
			LH3DRender::g_b_need_anim_uv = true;
		}
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMesh::g_special_color = special_color;
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < GetMesh()->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = GetMesh()->submeshes[i];
			LH3DSubMesh::g_current_sub_mesh = submesh;
			for (int j = 0; j < submesh->NumPrimitives; j++)
			{
				submesh->primitives_[j]->DrawSpecialLight(time);
			}
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
		LH3DRender::g_b_need_tilling = false;
		LH3DRender::g_b_need_anim_uv = false;
	}
}

void LH3DAnimatedObject::DrawSpecialLight(float time, unsigned long special_color)
{
	g_current_object_in_draw = this;
	LH3DMesh* drawnMesh = GetMesh();
	if (drawnMesh->BoundingBox.CheckRegionOnScreen(this))
	{
		SetLod(LH3D_MESH_LOD_NEAR);
		LH3DSubMesh::g_current_status = 0;
		LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
		LHMatrix transform;
		transform._11 = matrix._11 * LH3DTech::g_world_to_clipping._11 +
		                matrix._12 * LH3DTech::g_world_to_clipping._21 + matrix._13 * LH3DTech::g_world_to_clipping._31;
		transform._12 = matrix._11 * LH3DTech::g_world_to_clipping._12 +
		                matrix._12 * LH3DTech::g_world_to_clipping._22 + matrix._13 * LH3DTech::g_world_to_clipping._32;
		transform._13 = matrix._11 * LH3DTech::g_world_to_clipping._13 +
		                matrix._12 * LH3DTech::g_world_to_clipping._23 + matrix._13 * LH3DTech::g_world_to_clipping._33;
		transform._21 = matrix._21 * LH3DTech::g_world_to_clipping._11 +
		                matrix._22 * LH3DTech::g_world_to_clipping._21 + matrix._23 * LH3DTech::g_world_to_clipping._31;
		transform._22 = matrix._21 * LH3DTech::g_world_to_clipping._12 +
		                matrix._22 * LH3DTech::g_world_to_clipping._22 + matrix._23 * LH3DTech::g_world_to_clipping._32;
		transform._23 = matrix._21 * LH3DTech::g_world_to_clipping._13 +
		                matrix._22 * LH3DTech::g_world_to_clipping._23 + matrix._23 * LH3DTech::g_world_to_clipping._33;
		transform._31 = matrix._31 * LH3DTech::g_world_to_clipping._11 +
		                matrix._32 * LH3DTech::g_world_to_clipping._21 + matrix._33 * LH3DTech::g_world_to_clipping._31;
		transform._32 = matrix._31 * LH3DTech::g_world_to_clipping._12 +
		                matrix._32 * LH3DTech::g_world_to_clipping._22 + matrix._33 * LH3DTech::g_world_to_clipping._32;
		transform._33 = matrix._31 * LH3DTech::g_world_to_clipping._13 +
		                matrix._32 * LH3DTech::g_world_to_clipping._23 + matrix._33 * LH3DTech::g_world_to_clipping._33;
		transform._41 = matrix._41 * LH3DTech::g_world_to_clipping._11 +
		                matrix._42 * LH3DTech::g_world_to_clipping._21 +
		                matrix._43 * LH3DTech::g_world_to_clipping._31 + LH3DTech::g_world_to_clipping._41;
		transform._42 = matrix._41 * LH3DTech::g_world_to_clipping._12 +
		                matrix._42 * LH3DTech::g_world_to_clipping._22 +
		                matrix._43 * LH3DTech::g_world_to_clipping._32 + LH3DTech::g_world_to_clipping._42;
		transform._43 = matrix._41 * LH3DTech::g_world_to_clipping._13 +
		                matrix._42 * LH3DTech::g_world_to_clipping._23 +
		                matrix._43 * LH3DTech::g_world_to_clipping._33 + LH3DTech::g_world_to_clipping._43;
		if (CurrentAnim != NULL)
		{
			CurrentAnim->SetTransform(LH3DMesh::g_current_list_matrix, mesh, CurrentCycleTime, transform);
		}
		else
		{
			LH3DAnim::SetTransform(LH3DMesh::g_current_list_matrix, mesh, transform);
		}
		LH3DRender::g_b_need_tilling = IsNeedTilling();
		float animV = GetV();
		float animU = GetU();
		if (animU == 0.0f && animV == 0.0f)
		{
			LH3DRender::g_adv = 0.0f;
			LH3DRender::g_adu = 0.0f;
			LH3DRender::g_b_need_anim_uv = false;
		}
		else
		{
			LH3DRender::g_adu = animU;
			LH3DRender::g_adv = animV;
			LH3DRender::g_b_need_anim_uv = true;
		}
		unsigned long objectColor = color;
		unsigned long objectSpecular = specular;
		LH3DMesh::g_color = objectColor;
		LH3DMesh::g_specular = objectSpecular;
		LH3DMesh::g_special_color = special_color;
		LH3DTech::g_world_to_local.SetInverse(matrix);
		LH3DMesh::InitMatrixDrawing();
		for (int i = 0; i < GetMesh()->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = GetMesh()->submeshes[i];
			LH3DSubMesh::g_current_sub_mesh = submesh;
			for (int j = 0; j < submesh->NumPrimitives; j++)
			{
				if (submesh->primitives_[j]->Material.render_mode ==
				    LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ)
				{
					submesh->primitives_[j]->DrawSpecialLight(time);
				}
				else
				{
					submesh->primitives_[j]->DrawLit();
				}
			}
			LH3DMesh::UpdateMatrixDrawing(submesh->NumBones);
		}
		LH3DRender::g_b_need_tilling = false;
		LH3DRender::g_b_need_anim_uv = false;
	}
}

bool do_non_froz_part = true;

void LH3DAnimatedObject::DrawFroz(float froz_amount, unsigned long froz_color, LH3DMaterial* material)
{
	g_current_object_in_draw = this;
	LH3DSubMesh::g_current_status = GetStatus();
	LH3DPrimitive::g_current_index_primitive = 0;
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DMesh::g_current_lod = GetLod();
	LH3DMesh* drawnMesh;
	switch (LH3DMesh::g_current_lod)
	{
	case LH3D_MESH_LOD_NEAR:
		drawnMesh = Meshes[LH3D_MESH_LOD_LEVEL_NEAR];
		break;
	case LH3D_MESH_LOD_MEDIUM:
		drawnMesh = Meshes[LH3D_MESH_LOD_LEVEL_MEDIUM];
		break;
	case LH3D_MESH_LOD_FAR:
		drawnMesh = Meshes[LH3D_MESH_LOD_LEVEL_FAR];
		break;
	}
	if (BlendFactor == 0.0f)
	{
		LHMatrix localToClipping;
		localToClipping._11 = matrix._11 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._31;
		localToClipping._12 = matrix._11 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._32;
		localToClipping._13 = matrix._11 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._33;
		localToClipping._21 = matrix._21 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._31;
		localToClipping._22 = matrix._21 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._32;
		localToClipping._23 = matrix._21 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._33;
		localToClipping._31 = matrix._31 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._31;
		localToClipping._32 = matrix._31 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._32;
		localToClipping._33 = matrix._31 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._33;
		localToClipping._41 = matrix._41 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._31 + LH3DTech::g_world_to_clipping._41;
		localToClipping._42 = matrix._41 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._32 + LH3DTech::g_world_to_clipping._42;
		localToClipping._43 = matrix._41 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._33 + LH3DTech::g_world_to_clipping._43;
		if (CurrentAnim != NULL)
		{
			CurrentAnim->SetTransform(LH3DMesh::g_current_list_matrix, mesh, CurrentCycleTime, localToClipping);
		}
		else
		{
			LH3DAnim::SetTransform(LH3DMesh::g_current_list_matrix, mesh, localToClipping);
		}
	}
	else
	{
		LHMatrix localToClipping;
		localToClipping._11 = matrix._11 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._31;
		localToClipping._12 = matrix._11 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._32;
		localToClipping._13 = matrix._11 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._12 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._13 * LH3DTech::g_world_to_clipping._33;
		localToClipping._21 = matrix._21 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._31;
		localToClipping._22 = matrix._21 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._32;
		localToClipping._23 = matrix._21 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._22 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._23 * LH3DTech::g_world_to_clipping._33;
		localToClipping._31 = matrix._31 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._31;
		localToClipping._32 = matrix._31 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._32;
		localToClipping._33 = matrix._31 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._32 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._33 * LH3DTech::g_world_to_clipping._33;
		localToClipping._41 = matrix._41 * LH3DTech::g_world_to_clipping._11 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._21 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._31 + LH3DTech::g_world_to_clipping._41;
		localToClipping._42 = matrix._41 * LH3DTech::g_world_to_clipping._12 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._22 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._32 + LH3DTech::g_world_to_clipping._42;
		localToClipping._43 = matrix._41 * LH3DTech::g_world_to_clipping._13 +
		                      matrix._42 * LH3DTech::g_world_to_clipping._23 +
		                      matrix._43 * LH3DTech::g_world_to_clipping._33 + LH3DTech::g_world_to_clipping._43;
		CurrentAnim->CombineTransform(LH3DMesh::g_current_list_matrix, CurrentCycleTime, 1.0f - BlendFactor, true);
		LastAnim->CombineTransform(LH3DMesh::g_current_list_matrix, LastCycleTime, BlendFactor, false);
		LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, mesh, localToClipping);
	}
	LH3DRender::g_b_need_tilling = IsNeedTilling();
	LH3DRender::SetAnimUV(GetU(), GetV());
	if (IsPreSetup())
	{
		if (IsHuman())
		{
			if (IsHumanShadowed() && matrix._42 > LH3D_OBJECT_FEET_SHADOW_MIN_ALTITUDE)
			{
				LHPoint normal;
				LH3DIsland::GetNormal(matrix.GetPos(), &normal);
				LH3DFeetShadow::Draw(this, &normal, NULL);
			}
		}
		else if (IsHumanShadowed() && matrix._42 > LH3D_OBJECT_FEET_SHADOW_MIN_ALTITUDE)
		{
			ExtraBone* bone = (ExtraBone*)GetMesh()->GetEBoneData();
			if (bone != NULL)
			{
				LHPoint normal;
				LH3DIsland::GetNormal(matrix.GetPos(), &normal);
				LH3DFeetShadow::Draw(this, &normal, bone);
			}
		}
		if (IsFastBlending())
		{
			LH3DRender::g_draw_triangle_func = LH3DRender::DrawTriangleFastBlending;
			SetFastBlendingMaterial(FastBlendingMesh);
		}
	}
	bool32_t      vertexBlending = LH3DPrimitive::g_do_vertex_blending;
	unsigned long objectColor = color;
	if (froz_amount > 0.0f)
	{
		LH3DPrimitive::g_do_vertex_blending = false;
		objectColor = ModulateColor(LH3DBlendColor(LH3D_COLOR_WHITE, froz_color, FloatToInt(froz_amount * 255.0f)),
		                            RGB_TORGBA(color));
	}
	if (IsDrawWithGlobalAlpha())
	{
		LH3DMesh::SetColorSpecular(objectColor, specular);
		LH3DMaterial::SetGlobalAlpha(true);
		if (IsDynamicLighting())
		{
			LH3DTech::g_world_to_local.SetInverse(matrix);
			drawnMesh->Draw(true);
		}
		else
		{
			drawnMesh->Draw(false);
		}
		LH3DMaterial::SetGlobalAlpha(false);
		SetDrawWithGlobalAlpha(false);
	}
	else if (do_non_froz_part)
	{
		LH3DMesh::SetColorSpecular(objectColor, specular);
		if (IsDynamicLighting())
		{
			LH3DTech::g_world_to_local.SetInverse(matrix);
			drawnMesh->Draw(true);
		}
		else
		{
			drawnMesh->Draw(false);
		}
	}
	if (froz_amount > 0.0f)
	{
		DoFrozPart(froz_amount, froz_color, material);
	}
	LH3DPrimitive::g_do_vertex_blending = vertexBlending;
	if (IsPreSetup() && IsFastBlending())
	{
		LH3DRender::g_draw_triangle_func = LH3DRender::DrawTriangle;
	}
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
	if (IsCastDynamicShadow())
	{
		for (TShadowInfo* shadow = TShadowInfo::g_first; shadow != NULL; shadow = shadow->Next)
		{
			if (shadow->IsUseable() && !shadow->DynamicShadow && shadow->Caster != this &&
			    ContainsThisBoundingBox(shadow->Bounds))
			{
				if (IsComplex())
				{
					if (GetShadowInfo() != shadow)
					{
						drawnMesh->DrawInShadow(shadow);
					}
				}
				else
				{
					drawnMesh->DrawInShadow(shadow);
				}
			}
		}
	}
}

void LH3DAnimatedObject::SetCurrentAnim(LH3DAnim* anim)
{
	CurrentAnim = anim;
}

struct LH3DNewEP
{
	LHMatrix Matrix;
	uint32_t field_0x30;
	long     Type;
};

struct LH3DNewEPData
{
	uint32_t  Size;
	long      Count;
	LH3DNewEP EPs[1];
};

bool32_t LH3DMeshedObject::GetNewEP(long index, long type, LHMatrix* matrix)
{
	if (GetMesh() == NULL || !GetMesh()->IsContainsNewEP())
	{
		return false;
	}
	LH3DNewEPData* data = (LH3DNewEPData*)GetMesh()->GetNewEPData();
	long           found = 0;
	for (long i = 0; i < data->Count; i++)
	{
		LH3DNewEP* ep = &data->EPs[i];
		if (ep->Type & type)
		{
			if (index == found)
			{
				*matrix = ep->Matrix;
				return true;
			}
			found++;
		}
	}
	return false;
}

long LH3DMeshedObject::HowManyNewEp(long type)
{
	long           count = 0;
	LH3DNewEPData* data = (LH3DNewEPData*)GetMesh()->GetNewEPData();
	if (data != NULL)
	{
		for (long i = 0; i < data->Count; i++)
		{
			if (data->EPs[i].Type & type)
			{
				count++;
			}
		}
	}
	return count;
}
