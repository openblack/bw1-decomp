#include "LH3DSprite.h"

#include <re_common.h> /* For CLAMP */

#include "LH3DMem.h"     /* For LH3DMem */
#include "LH3DP3.h"      /* For LH3DP3 */
#include "LH3DRender.h"  /* For LH3DRender */
#include "LH3DTech.h"    /* For LH3DTech */
#include "LH3DZSorter.h" /* For LH3DZSorter */
#include "LHMatrix.h"    /* For LHMatrix */

float utex[LH3D_SPRITE_CORNER_COUNT] = {0.0f, 1.0f / LH3D_SPRITE_DEFAULT_FRAMES_PER_ROW,
                                        1.0f / LH3D_SPRITE_DEFAULT_FRAMES_PER_ROW, 0.0f};
float vtex[LH3D_SPRITE_CORNER_COUNT] = {0.0f, 0.0f, 1.0f / LH3D_SPRITE_DEFAULT_FRAMES_PER_ROW,
                                        1.0f / LH3D_SPRITE_DEFAULT_FRAMES_PER_ROW};

static inline void SetRotationZ(LHMatrix& matrix, float angle)
{
	matrix.SetIdentity();
	matrix.m[0] = matrix.m[4] = cos(angle);
	matrix.m[3] = sin(angle);
	matrix.m[1] = -matrix.m[3];
}

static inline void SetClipFlags(unsigned long* flags, const Vertex3D* vertex)
{
	if (vertex->rhw < LH3DTech::g_info_transform.NearClip)
	{
		*flags = LH3DTech::CLIP_CODE_NEAR;
	}
	else
	{
		*flags = LH3DTech::CLIP_CODE_NONE;
	}
	if (vertex->x > vertex->rhw)
	{
		*flags |= LH3DTech::CLIP_CODE_RIGHT;
	}
	else if (-vertex->rhw > vertex->x)
	{
		*flags |= LH3DTech::CLIP_CODE_LEFT;
	}
	if (vertex->y > vertex->rhw)
	{
		*flags |= LH3DTech::CLIP_CODE_TOP;
	}
	else if (-vertex->rhw > vertex->y)
	{
		*flags |= LH3DTech::CLIP_CODE_BOTTOM;
	}
}

static inline void TransformCorner(Vertex3D* out, const LHPoint* in, const LHMatrix* matrix)
{
	out->x = in->x * matrix->_11 + in->y * matrix->_21 + in->z * matrix->_31 + matrix->_41;
	out->y = in->x * matrix->_12 + in->y * matrix->_22 + in->z * matrix->_32 + matrix->_42;
	out->rhw = in->x * matrix->_13 + in->y * matrix->_23 + in->z * matrix->_33 + matrix->_43;
}

LH3DSprite* __fastcall LH3DSprite::Create(long count, bool32_t use_material)
{
	LH3DSprite* sprites = (LH3DSprite*)LH3DMem::Alloc(count * sizeof(LH3DSprite));
	for (long i = 0; i < count; i++)
	{
		sprites[i].SetToZero();
		if (use_material)
		{
			sprites[i].UseMaterial = true;
		}
	}
	return sprites;
}

void LH3DSprite::SetToZero()
{
	pos.x = pos.y = pos.z = 0.0f;
	Size = Aspect = 1.0f;
	angle = 0.0f;
	colour = LH3DColor(LH3D_COLOR_WHITE);
	specular = LH3DColor(0);
	Frame = 0;
	Horizontal = false;
	UseMaterial = false;
	Unused = 0;
	FramesPerRow = LH3D_SPRITE_DEFAULT_FRAMES_PER_ROW;
	OffsetX = 0.0f;
	OffsetY = 0.0f;
}

void LH3DSprite::Release()
{
	LH3DMem::Free(this);
}

void LH3DSprite::Draw()
{
#ifndef VERSION_BW1W100
	if (LH3DTech::g_b_P3)
	{
		LH3DP3::DrawSpriteWrapper(this);
		return;
	}
#endif

	LHPoint camera;
	if (!Horizontal)
	{
		const LHMatrix* matrix = &LH3DTech::g_world_to_camera;
		const LHPoint&  position = pos;
		camera.z = position.x * matrix->_13 + position.y * matrix->_23 + position.z * matrix->_33 + matrix->_43;
		if (camera.z <= LH3DTech::g_info_transform.NearClip)
		{
			return;
		}
		camera.x = position.x * matrix->_11 + position.y * matrix->_21 + position.z * matrix->_31 + matrix->_41;
		camera.y = position.x * matrix->_12 + position.y * matrix->_22 + position.z * matrix->_32 + matrix->_42;
	}

	if (Horizontal)
	{
		if (angle != 0.0f)
		{
			LH3DTech::g_local_to_clipping.SetRotationY(angle);
		}
		else
		{
			LH3DTech::g_local_to_clipping.SetIdentity();
		}
		LH3DTech::g_local_to_clipping.SetTranslateOnly(pos);
		LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	}
	else
	{
		if (angle != 0.0f)
		{
			SetRotationZ(LH3DTech::g_local_to_clipping, angle);
		}
		else
		{
			LH3DTech::g_local_to_clipping.SetIdentity();
		}
		LH3DTech::g_local_to_clipping._11 *= LH3DTech::g_info_transform.InvHalfTanFovY;
		LH3DTech::g_local_to_clipping._21 *= LH3DTech::g_info_transform.InvHalfTanFovY;
		LH3DTech::g_local_to_clipping._41 = camera.x * LH3DTech::g_info_transform.InvHalfTanFovY;
		LH3DTech::g_local_to_clipping._12 *= LH3DTech::g_info_transform.InvHalfTanFovX;
		LH3DTech::g_local_to_clipping._22 *= LH3DTech::g_info_transform.InvHalfTanFovX;
		LH3DTech::g_local_to_clipping._42 = camera.y * LH3DTech::g_info_transform.InvHalfTanFovX;
		LH3DTech::g_local_to_clipping._43 = camera.z;
	}

	float   height = Size * Aspect;
	LHPoint corners[LH3D_SPRITE_CORNER_COUNT];
	corners[0].x = corners[3].x = -Size - OffsetX;
	corners[1].x = corners[2].x = Size - OffsetX;
	if (Horizontal)
	{
		corners[0].y = corners[1].y = corners[2].y = corners[3].y = 0.0f;
		corners[0].z = corners[1].z = -height - OffsetY;
		corners[2].z = corners[3].z = height - OffsetY;
	}
	else
	{
		corners[0].z = corners[1].z = corners[2].z = corners[3].z = 0.0f;
		corners[0].y = corners[1].y = height - OffsetY;
		corners[2].y = corners[3].y = -height - OffsetY;
	}

	Vertex3D*      vertex = LH3DTech::g_cache_t_points;
	LHPoint*       corner = corners;
	unsigned long* clip = LH3DTech::g_cache_flags;
	float          frameSize = 1.0f / FramesPerRow;
	float          cornerScale = frameSize * LH3D_SPRITE_DEFAULT_FRAMES_PER_ROW;
	float          frameU = Frame % FramesPerRow;
	float          frameV = Frame / FramesPerRow;
	frameU *= frameSize;
	frameV *= frameSize;
	for (uint32_t i = 0; i < LH3D_SPRITE_CORNER_COUNT; i++)
	{
		TransformCorner(vertex, corner, &LH3DTech::g_local_to_clipping);
		SetClipFlags(clip, vertex);
		if (*clip == LH3DTech::CLIP_CODE_NONE)
		{
			vertex->rhw = 1.0f / vertex->rhw;
			vertex->x = (vertex->rhw * vertex->x + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			CLAMP(vertex->x, 0.0f, LH3DTech::g_max_screen[0]);
			vertex->y =
				LH3DTech::g_info_transform.HalfRes.y - vertex->rhw * vertex->y * LH3DTech::g_info_transform.HalfRes.y;
			CLAMP(vertex->y, 0.0f, LH3DTech::g_max_screen[1]);
			vertex->rhw = LH3DTech::g_info_transform.NearClip * vertex->rhw;
			vertex->z = 1.0f - vertex->rhw;
		}
		vertex->uv.x = utex[i] * cornerScale + frameU;
		vertex->uv.y = vtex[i] * cornerScale + frameV;
		vertex->color = colour.GetColor();
		vertex->specular = specular.GetColor();
		clip++;
		vertex++;
		corner++;
	}

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = LH3D_SPRITE_CORNER_COUNT;
	LH3DTech::g_clip_with_double_sided = true;
	if (LH3DTech::g_cache_flags[3] | LH3DTech::g_cache_flags[2] | LH3DTech::g_cache_flags[1] |
	    LH3DTech::g_cache_flags[0])
	{
		if (!(LH3DTech::g_cache_flags[3] & LH3DTech::g_cache_flags[2] & LH3DTech::g_cache_flags[1] &
		      LH3DTech::g_cache_flags[0]))
		{
			LH3DTech::ClipTriangle(0, 1, 2, LH3DTech::CLIP_CODE_NEAR);
			LH3DTech::ClipTriangle(0, 2, 3, LH3DTech::CLIP_CODE_NEAR);
		}
	}
	else
	{
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 0;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 1;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 2;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 0;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 2;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 3;
	}

	if (LH3DTech::g_index_count != 0)
	{
		if (UseMaterial)
		{
			LH3DRender::SetMaterial(material, 0);
		}
		LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                         LH3DTech::g_index_count);
	}
}

void LH3DSprite::AddDrawing()
{
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&LH3DSprite::Draw,
	                                  LH3DTech::GetValueForZSorter(pos), 0);
}

void LH3DSprite::DrawSpecial1(LHMatrix* matrix)
{
	LHMatrix local = *matrix;
	if (angle != 0.0f)
	{
		local.RotateY(angle);
	}

	float   height = Size * Aspect;
	LHPoint corners[LH3D_SPRITE_CORNER_COUNT];
	corners[0].x = corners[3].x = -Size - OffsetX;
	corners[1].x = corners[2].x = Size - OffsetX;
	corners[0].y = corners[1].y = corners[2].y = corners[3].y = 0.0f;
	corners[0].z = corners[1].z = -height - OffsetY;
	corners[2].z = corners[3].z = height - OffsetY;

	Vertex3D*      vertex = LH3DTech::g_cache_t_points;
	LHPoint*       corner = corners;
	unsigned long* clip = LH3DTech::g_cache_flags;
	float          frameSize = 1.0f / FramesPerRow;
	float          cornerScale = frameSize * LH3D_SPRITE_DEFAULT_FRAMES_PER_ROW;
	float          frameU = Frame % FramesPerRow;
	float          frameV = Frame / FramesPerRow;
	frameU *= frameSize;
	frameV *= frameSize;
	for (uint32_t i = 0; i < LH3D_SPRITE_CORNER_COUNT; i++)
	{
		TransformCorner(vertex, corner, &local);
		SetClipFlags(clip, vertex);
		if (*clip == LH3DTech::CLIP_CODE_NONE)
		{
			vertex->rhw = 1.0f / vertex->rhw;
			vertex->x = (vertex->rhw * vertex->x + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			CLAMP(vertex->x, 0.0f, LH3DTech::g_max_screen[0]);
			vertex->y =
				LH3DTech::g_info_transform.HalfRes.y - vertex->rhw * vertex->y * LH3DTech::g_info_transform.HalfRes.y;
			CLAMP(vertex->y, 0.0f, LH3DTech::g_max_screen[1]);
			vertex->rhw = LH3DTech::g_info_transform.NearClip * vertex->rhw;
			vertex->z = 1.0f - vertex->rhw;
		}
		vertex->uv.x = utex[i] * cornerScale + frameU;
		vertex->uv.y = vtex[i] * cornerScale + frameV;
		vertex->color = colour.GetColor();
		vertex->specular = 0;
		clip++;
		vertex++;
		corner++;
	}

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = LH3D_SPRITE_CORNER_COUNT;
	LH3DTech::g_clip_with_double_sided = true;
	if (LH3DTech::g_cache_flags[3] | LH3DTech::g_cache_flags[2] | LH3DTech::g_cache_flags[1] |
	    LH3DTech::g_cache_flags[0])
	{
		if (!(LH3DTech::g_cache_flags[3] & LH3DTech::g_cache_flags[2] & LH3DTech::g_cache_flags[1] &
		      LH3DTech::g_cache_flags[0]))
		{
			LH3DTech::ClipTriangle(0, 1, 2, LH3DTech::CLIP_CODE_NEAR);
			LH3DTech::ClipTriangle(0, 2, 3, LH3DTech::CLIP_CODE_NEAR);
		}
	}
	else
	{
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 0;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 1;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 2;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 0;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 2;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 3;
	}

	if (LH3DTech::g_index_count != 0)
	{
		if (UseMaterial)
		{
			LH3DRender::SetMaterial(material, 0);
		}
		LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                         LH3DTech::g_index_count);
	}
}
