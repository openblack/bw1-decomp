#include "LH3DFade.h"

#include "LH3DDivers.h"
#include "LH3DRender.h"
#include "LH3DTech.h"

LH3DMaterial* LH3DFade::g_material;
uint32_t      LH3DFade::g_color;

void LH3DFade::Draw()
{
	if (((LH3DColor*)&g_color)->a == 0)
	{
		return;
	}
	int height = LH3DWideScreen::GetHeight();
	if (height != 0)
	{
		height--;
	}
	LH3DTech::g_cache_t_points[0].x = 0.0f;
	LH3DTech::g_cache_t_points[0].y = (float)height;
	LH3DTech::g_cache_t_points[0].z = 0.0f;
	LH3DTech::g_cache_t_points[0].rhw = 1.0f;
	LH3DTech::g_cache_t_points[0].color = g_color;
	LH3DTech::g_cache_t_points[0].specular = 0;
	LH3DTech::g_cache_t_points[0].uv.Set(0.0f, 0.0f);
	LH3DTech::g_cache_t_points[1].x = (float)LH3DTech::g_info_transform.resolution.x - 1.0f;
	LH3DTech::g_cache_t_points[1].y = (float)height;
	LH3DTech::g_cache_t_points[1].z = 0.0f;
	LH3DTech::g_cache_t_points[1].rhw = 1.0f;
	LH3DTech::g_cache_t_points[1].color = g_color;
	LH3DTech::g_cache_t_points[1].specular = 0;
	LH3DTech::g_cache_t_points[1].uv.Set(1.0f, 0.0f);
	LH3DTech::g_cache_t_points[2].x = (float)LH3DTech::g_info_transform.resolution.x - 1.0f;
	LH3DTech::g_cache_t_points[2].y = (float)LH3DTech::g_info_transform.resolution.y - 1.0f - (float)height;
	LH3DTech::g_cache_t_points[2].z = 0.0f;
	LH3DTech::g_cache_t_points[2].rhw = 1.0f;
	LH3DTech::g_cache_t_points[2].color = g_color;
	LH3DTech::g_cache_t_points[2].specular = 0;
	LH3DTech::g_cache_t_points[2].uv.Set(1.0f, 1.0f);
	LH3DTech::g_cache_t_points[3].x = 0.0f;
	LH3DTech::g_cache_t_points[3].y = (float)LH3DTech::g_info_transform.resolution.y - 1.0f - (float)height;
	LH3DTech::g_cache_t_points[3].z = 0.0f;
	LH3DTech::g_cache_t_points[3].rhw = 1.0f;
	LH3DTech::g_cache_t_points[3].color = g_color;
	LH3DTech::g_cache_t_points[3].specular = 0;
	LH3DTech::g_cache_t_points[3].uv.Set(0.0f, 1.0f);
	LH3DTech::g_points_count = 4;
	LH3DTech::g_list_indices[0] = 0;
	LH3DTech::g_list_indices[1] = 1;
	LH3DTech::g_list_indices[2] = 2;
	LH3DTech::g_list_indices[3] = 0;
	LH3DTech::g_list_indices[4] = 2;
	LH3DTech::g_list_indices[5] = 3;
	LH3DTech::g_index_count = 6;
	if (g_material == NULL)
	{
		g_material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_SMOOTH_ALPHA, NULL);
	}
	LH3DRender::SetMaterial(g_material, 0);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
	                         LH3DTech::g_index_count);
	if (LH3DWideScreen::g_fvalue != 0.0f)
	{
		LH3DColor black(0, 0, 0, 0xff);
		int       barHeight = LH3DWideScreen::GetHeight();
		LHRegion  region;
		region.start.Set(0, 0);
		region.end.Set(LH3DTech::g_info_transform.resolution.x, barHeight);
		BackgroundBox::Draw(&region, &black, false);
		region.start.Set(0, LH3DTech::g_info_transform.resolution.y - barHeight);
		region.end.Set(LH3DTech::g_info_transform.resolution.x, region.start.Y() + barHeight);
		BackgroundBox::Draw(&region, &black, false);
	}
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	g_color = 0;
}
