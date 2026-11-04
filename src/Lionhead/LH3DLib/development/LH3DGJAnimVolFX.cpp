#include "LH3DGJAnimVolFX.h"

#include "LH3DBoundingBox.h" /* For LH3DBoundingBox */
#include "LH3DMesh.h"        /* For LH3DMesh */
#include "LH3DObject.h"      /* For LH3DObject */
#include "LH3DRender.h"      /* For LH3DRender */
#include "LH3DTech.h"        /* For LH3DTech */
#include "LH3DZSorter.h"     /* For LH3DZSorter */
#include <math.h>

#define LH3D_GJ_ANIM_VOL_FX_DISAPPEAR_DISTANCE 300.0f

bool    LH3DGJAnimVolFX::g_vol_fx_anim_uv = true;
float   LH3DGJAnimVolFX::g_vol_fx_texture_frac_u = 1.0f;
float   LH3DGJAnimVolFX::g_vol_fx_texture_frac_v = 0.2f;
float   LH3DGJAnimVolFX::g_vol_fx_xy_for_color_0 = 0.57f;
float   LH3DGJAnimVolFX::g_vol_fx_xy_for_color_255 = 2.0f;
float   LH3DGJAnimVolFX::g_vol_fx_zoom = 1.0f;
uint8_t LH3DGJAnimVolFX::g_vol_fx_go_by_norm = LH3D_GJ_ANIM_VOL_FX_U_BY_NORMAL_Y;

static float g_default_intensity = 0.5f;
static float g_default_u_speed = 0.2f;
static float g_default_v_speed = 0.5f;
static float g_default_texture_frac_u = 0.5f;
static float g_default_texture_frac_v = 0.2f;

float LH3DGJAnimVolFX::g_vol_fx_offset_u;
float LH3DGJAnimVolFX::g_vol_fx_offset_v;
float LH3DGJAnimVolFX::g_vol_fx_normal_offset_x;
float LH3DGJAnimVolFX::g_vol_fx_normal_offset_z;

LH3DGJAnimVolFX* LH3DGJAnimVolFX::Create(LH3DObject* object, LH3DMaterial* material)
{
	return new LH3DGJAnimVolFX(object, material);
}

void LH3DGJAnimVolFX::Release()
{
	delete this;
}

LH3DGJAnimVolFX::LH3DGJAnimVolFX(LH3DObject* object, LH3DMaterial* material)
{
	Color = 0xffffffff;
	Specular = 0;
	Object = object;
	Material = material;
	Intensity = g_default_intensity;
	USpeed = g_default_u_speed;
	VSpeed = g_default_v_speed;
	TextureFracU = g_default_texture_frac_u;
	TextureFracV = g_default_texture_frac_v;
	U = 0.0f;
	V = 0.0f;
}

LH3DGJAnimVolFX::~LH3DGJAnimVolFX() {}

void LH3DGJAnimVolFX::SetColorSpecular(unsigned long color, unsigned long specular)
{
	Color = color;
	Specular = specular;
}

void LH3DGJAnimVolFX::AddDrawing()
{
	if (!Object->GetMesh()->GetBoundingBox().CheckRegionOnScreen(Object))
	{
		return;
	}
	if (Object->IsDisappear())
	{
		LHPoint pos = Object->matrix.GetPos();
		float   distanceSq = (pos - LH3DTech::g_camera.pos).GetNormeSq();
		if (distanceSq > Object->GetMesh()->BoundingBox.DiagonalLength * Object->scale *
		                     LH3D_GJ_ANIM_VOL_FX_DISAPPEAR_DISTANCE *
		                     (Object->GetMesh()->BoundingBox.DiagonalLength * Object->scale *
		                      LH3D_GJ_ANIM_VOL_FX_DISAPPEAR_DISTANCE))
		{
			return;
		}
	}
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&LH3DGJAnimVolFX::Draw,
	                                  LH3DTech::GetValueForZSorter(Object->matrix.GetPos()), 0);
}

void LH3DGJAnimVolFX::Draw()
{
	g_vol_fx_offset_u = U;
	g_vol_fx_offset_v = V;
	g_vol_fx_texture_frac_u = TextureFracU;
	g_vol_fx_texture_frac_v = TextureFracV;
	g_vol_fx_zoom = Object->GetMesh()->BoundingBox.DiagonalLength * Intensity;
	Object->DrawVolLightGJ(Color, Specular, Material);
}

void LH3DGJAnimVolFX::Update(float delta_time)
{
	U = (float)fmod(delta_time * USpeed + U, 1.0);
	V = (float)fmod(delta_time * VSpeed + V, 1.0);
}
