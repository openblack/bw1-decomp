#include "LH3DPrimitive.h"

#include <d3dtypes.h> /* For RGBA_MAKE */
#include <math.h>     /* For fabs */

#include "LH3DEnvMatInfo.h"       /* For LH3DEnvMatInfo */
#include "LH3DMath.h"             /* For InverseSquareRoot */
#include "LH3DMesh.h"             /* For LH3DMesh */
#include "LH3DObject.h"           /* For class LH3DObject */
#include "LH3DRender.h"           /* For LH3DRender */
#include "LH3DSubMesh.h"          /* For LH3DSubMesh */
#include "LH3DTShadow.h"          /* For struct LH3DTShadow */
#include "LH3DTech.h"             /* For class LH3DTech */
#include "LH3DTexture.h"          /* For struct LH3DTexture */
#include "LH3DTnLData.h"          /* For LH3DTnLData */
#include "LH3DVB.h"               /* For LH3DVB */
#include "LH3DVertexGroup.h"      /* For LH3DVertexGroup */
#include "SRTextured.h"           /* For SRTextured, SRVertex */
#include "SoftTri.h"              /* For SoftTri */
#include "SubCollideDataRender.h" /* For SubCollideDataRender */
#include "TShadowInfo.h"          /* For TShadowInfo */
#include "LH3DGJAnimVolFX.h"      /* For LH3DGJAnimVolFX */
#include "LH3DInBuild.h"          /* For LH3DInBuild */

// BW1W120 0084abc0 BW1M119 null
int GetGridIndex(LHPoint* point);

int      LH3DPrimitive::MIN_LIGHT = 90;
int      LH3DPrimitive::g_envmaptable[LH3D_ENV_MAP_TABLE_SIZE] = {1, 3, 7, 4, 5, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
bool32_t LH3DPrimitive::g_do_vertex_blending = true;
float    LH3DPrimitive::g_size_fine_wall = 0.2f;
float    LH3DPrimitive::g_size_thick_wall = 0.35f;
int      LH3DPrimitive::g_draw_depth = 1;

LHPoint        LH3DPrimitive::g_vect_light(1.0f, 0.0f, 0.0f);
float          LH3DPrimitive::g_best_vertex_inside_triangle;
int            LH3DPrimitive::g_collide_count;
LHPlane        LH3DPrimitive::g_clipping_plane_world;
LHPlane        LH3DPrimitive::g_clipping_plane_camera;
float          LH3DPrimitive::g_fog_max = 0.0f;
float          LH3DPrimitive::g_fog_min = 0.0f;
float          LH3DPrimitive::g_delta_fog = 0.0f;
unsigned long  LH3DPrimitive::g_fog_table[LH3D_FOG_TABLE_SIZE][LH3D_FOG_COMPONENT_LAST] = {{0}};
Vertex3D       LH3DPrimitive::g_vertex_inside_triangle = {0};
float*         LH3DPrimitive::g_lightmap_remap_uvs = NULL;
LH3DPrimitive* LH3DPrimitive::g_current_primitive = NULL;
float*         LH3DPrimitive::g_vertical_translate_vertices = NULL;
int            LH3DPrimitive::g_current_index_primitive = 0;
LHMatrix       LH3DPrimitive::g_froz_wiggle_mat;

float wiggle_speed = 2.0f;
float wiggle_amp = 0.02f;

static inline void RotatePointBy(LHPoint* out, const LHPoint& in, const LHMatrix* m)
{
	out->x = m->m[0] * in.x + m->m[3] * in.y + m->m[6] * in.z;
	out->y = m->m[1] * in.x + m->m[4] * in.y + m->m[7] * in.z;
	out->z = m->m[2] * in.x + m->m[5] * in.y + m->m[8] * in.z;
}

static inline void TransformToClipping(Vertex3D* point, const LHPoint& position, const LHMatrix* matrix)
{
	point->x = matrix->m[0] * position.x + matrix->m[3] * position.y + matrix->m[6] * position.z + matrix->m[9];
	point->y = matrix->m[1] * position.x + matrix->m[4] * position.y + matrix->m[7] * position.z + matrix->m[10];
	point->rhw = matrix->m[2] * position.x + matrix->m[5] * position.y + matrix->m[8] * position.z + matrix->m[11];
}

static inline void ComputeClipFlags(Vertex3D* point, unsigned long* flags)
{
	if (point->rhw < LH3DTech::g_info_transform.NearClip)
	{
		*flags = LH3DTech::CLIP_CODE_NEAR;
	}
	else
	{
		*flags = 0;
	}
	if (point->x > point->rhw)
	{
		*flags |= LH3DTech::CLIP_CODE_RIGHT;
	}
	else if (-point->rhw > point->x)
	{
		*flags |= LH3DTech::CLIP_CODE_LEFT;
	}
	if (point->y > point->rhw)
	{
		*flags |= LH3DTech::CLIP_CODE_TOP;
	}
	else if (-point->rhw > point->y)
	{
		*flags |= LH3DTech::CLIP_CODE_BOTTOM;
	}
}

void LH3DPrimitive::ReverseTriangles()
{
	LH3DTriangle* end = Triangles + NumTriangles;
	for (LH3DTriangle* triangle = Triangles; triangle < end; triangle++)
	{
		uint16_t b = triangle->B;
		uint16_t c = triangle->C;
		triangle->B = c;
		triangle->C = b;
	}
}

float LH3DPrimitive::GetFogFactor(const LHPoint& point)
{
	Vertex3D  vertex;
	LHMatrix* matrix = LH3DTech::g_current_matrix;
	vertex.x = matrix->m[0] * point.x + matrix->m[3] * point.y + matrix->m[6] * point.z + matrix->m[9];
	vertex.y = matrix->m[1] * point.x + matrix->m[4] * point.y + matrix->m[7] * point.z + matrix->m[10];
	vertex.rhw = matrix->m[2] * point.x + matrix->m[5] * point.y + matrix->m[8] * point.z + matrix->m[11];
	if (vertex.rhw < g_fog_min)
	{
		return 0.0f;
	}
	if (vertex.rhw > g_fog_max)
	{
		return 1.0f;
	}
	return (vertex.rhw - g_fog_min) * g_delta_fog * (1.0f / LH3D_FOG_TABLE_SIZE);
}

unsigned long LH3DPrimitive::ApplyFog(const LHPoint& point, LH3DColor* color)
{
	Vertex3D  vertex;
	LHMatrix* matrix = LH3DTech::g_current_matrix;
	vertex.x = matrix->m[0] * point.x + matrix->m[3] * point.y + matrix->m[6] * point.z + matrix->m[9];
	vertex.y = matrix->m[1] * point.x + matrix->m[4] * point.y + matrix->m[7] * point.z + matrix->m[10];
	vertex.rhw = matrix->m[2] * point.x + matrix->m[5] * point.y + matrix->m[8] * point.z + matrix->m[11];
	if (vertex.rhw < g_fog_min)
	{
		vertex.color = g_fog_table[0][LH3D_FOG_COMPONENT_DIFFUSE];
		vertex.specular = g_fog_table[0][LH3D_FOG_COMPONENT_SPECULAR];
	}
	else if (vertex.rhw > g_fog_max)
	{
		vertex.color = g_fog_table[LH3D_FOG_TABLE_SIZE - 1][LH3D_FOG_COMPONENT_DIFFUSE];
		vertex.specular = g_fog_table[LH3D_FOG_TABLE_SIZE - 1][LH3D_FOG_COMPONENT_SPECULAR];
	}
	else
	{
		int index = (int)((vertex.rhw - g_fog_min) * g_delta_fog);
		if (index < 0)
		{
			index = 0;
		}
		else if (index > LH3D_FOG_TABLE_SIZE - 1)
		{
			index = LH3D_FOG_TABLE_SIZE - 1;
		}
		vertex.color = g_fog_table[index][LH3D_FOG_COMPONENT_DIFFUSE];
		vertex.specular = g_fog_table[index][LH3D_FOG_COMPONENT_SPECULAR];
	}
	LH3DColor* scale = (LH3DColor*)&vertex.color;
	color->r = (color->r * scale->r) >> 8;
	color->g = (color->g * scale->g) >> 8;
	color->b = (color->b * scale->b) >> 8;
	return vertex.specular;
}

void LH3DPrimitive::CalcFogTable(float red, float green, float blue, float max_fog, float fog_min, float fog_max)
{
	g_fog_min = fog_min;
	g_fog_max = fog_max;
	g_delta_fog = LH3D_FOG_TABLE_SIZE / (fog_max - fog_min);
	for (int i = 0; i < LH3D_FOG_TABLE_SIZE; i++)
	{
		float         fog = i * (1.0f / LH3D_FOG_TABLE_SIZE);
		unsigned long brightness = 256 - (unsigned long)((256.0f - max_fog) * fog);
		int           r = FloatToInt(fog * red);
		int           g = FloatToInt(fog * green);
		int           b = FloatToInt(fog * blue);
		g_fog_table[i][LH3D_FOG_COMPONENT_SPECULAR] = RGBA_MAKE(r, g, b, LH3D_COLOR_OPAQUE);
		g_fog_table[i][LH3D_FOG_COMPONENT_DIFFUSE] =
			((0xff00 * brightness & 0xff0000) | (0xff * brightness & 0xff00) | (0xff0000 * brightness & 0xff0000ff)) >>
				8 |
			0xff000000;
	}
}

void __fastcall LH3DPrimitive::DrawIntoSprite(void* sprite)
{
	g_current_primitive = this;
	LH3DVertex* vertex = Vertices;
	Vertex3D*   point = LH3DTech::g_cache_t_points;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->color = LH3DMesh::g_color;
			point->specular = LH3DMesh::g_specular;
			point->uv = vertex->uv;
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			for (int j = start; j < start + group->vertex_count; point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, matrix);
				point->color = LH3DMesh::g_color;
				point->specular = LH3DMesh::g_specular;
				point->uv = vertex->uv;
			}
			start += group->vertex_count;
		}
	}
	ApplyVBlendsAndSetFlags(LH3DTech::g_cache_t_points, LH3DTech::g_cache_flags);

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void __fastcall LH3DPrimitive::Create(uint8_t* buffer, LH3DPrimitive* primitive)
{
	if (primitive->Material.GetTextureId() != LH3D_PRIMITIVE_NO_TEXTURE)
	{
		if (!LH3DMesh::g_b_dont_care_about_texture)
		{
			primitive->Material.texture = LH3DTexture::GetThisTexture(primitive->Material.GetTextureId());
		}
	}
	else
	{
		primitive->Material.texture = NULL;
	}
	if (primitive->NumVertices)
	{
		primitive->Vertices = (LH3DVertex*)(buffer + (unsigned long)primitive->Vertices);
	}
	else
	{
		primitive->Vertices = NULL;
	}
	if (primitive->NumTriangles)
	{
		primitive->Triangles = (LH3DTriangle*)(buffer + (unsigned long)primitive->Triangles);
	}
	else
	{
		primitive->Triangles = NULL;
	}
	if (primitive->NumVertexGroups)
	{
		primitive->VertexGroups = (LH3DVertexGroup*)(buffer + (unsigned long)primitive->VertexGroups);
	}
	else
	{
		primitive->VertexGroups = NULL;
	}
	if (primitive->NumBlends)
	{
		primitive->Blends = (LH3DVertexBlending*)(buffer + (unsigned long)primitive->Blends);
	}
	else
	{
		primitive->Blends = NULL;
	}
}

int GetGridIndex(LHPoint* point)
{
	int x = (int)(point->x / LH3D_GRID_CELL_SIZE);
	int z = (int)(point->z / LH3D_GRID_CELL_SIZE);
	if (x < 0)
	{
		x = 0;
	}
	if (z < 0)
	{
		z = 0;
	}
	if (x > LH3D_GRID_SIZE)
	{
		x = LH3D_GRID_SIZE;
	}
	if (z > LH3D_GRID_SIZE)
	{
		z = LH3D_GRID_SIZE;
	}
	return x * LH3D_GRID_SIZE + z;
}

void LH3DPrimitive::ApplyVBlendsAndSetFlags(Vertex3D* points, unsigned long* flags)
{
	if (g_do_vertex_blending)
	{
		LH3DVertexBlending* blending = Blends;
		for (int i = 0; i < NumBlends; blending++, i++)
		{
			points[blending->Vertex].x += (points[blending->Target].x - points[blending->Vertex].x) * blending->Blend;
			points[blending->Vertex].y += (points[blending->Target].y - points[blending->Vertex].y) * blending->Blend;
			points[blending->Vertex].rhw +=
				(points[blending->Target].rhw - points[blending->Vertex].rhw) * blending->Blend;
		}
	}
	for (int i = 0; i < NumVertices; points++, flags++, i++)
	{
		if (points->rhw < LH3DTech::g_info_transform.NearClip)
		{
			*flags = LH3DTech::CLIP_CODE_NEAR;
		}
		else
		{
			*flags = 0;
		}
		if (points->x > points->rhw)
		{
			*flags |= LH3DTech::CLIP_CODE_RIGHT;
		}
		else if (-points->rhw > points->x)
		{
			*flags |= LH3DTech::CLIP_CODE_LEFT;
		}
		if (points->y > points->rhw)
		{
			*flags |= LH3DTech::CLIP_CODE_TOP;
		}
		else if (-points->rhw > points->y)
		{
			*flags |= LH3DTech::CLIP_CODE_BOTTOM;
		}
		if (*flags == 0)
		{
			points->rhw = 1.0f / points->rhw;
			points->x = (points->x * points->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			if (points->x < 0.0f)
			{
				points->x = 0.0f;
			}
			else if (points->x > LH3DTech::g_max_screen[0])
			{
				points->x = LH3DTech::g_max_screen[0];
			}
			points->y =
				LH3DTech::g_info_transform.HalfRes.y - (points->rhw * points->y) * LH3DTech::g_info_transform.HalfRes.y;
			if (points->y < 0.0f)
			{
				points->y = 0.0f;
			}
			else if (points->y > LH3DTech::g_max_screen[1])
			{
				points->y = LH3DTech::g_max_screen[1];
			}
			points->rhw = LH3DTech::g_info_transform.NearClip * points->rhw;
			points->z = 1.0f - points->rhw;
		}
	}
}

void LH3DPrimitive::ApplyVBlendsAndSetFlagsMT(Vertex3DMT* points, unsigned long* flags)
{
	if (g_do_vertex_blending)
	{
		LH3DVertexBlending* blending = Blends;
		for (int i = 0; i < NumBlends; blending++, i++)
		{
			points[blending->Vertex].x += (points[blending->Target].x - points[blending->Vertex].x) * blending->Blend;
			points[blending->Vertex].y += (points[blending->Target].y - points[blending->Vertex].y) * blending->Blend;
			points[blending->Vertex].rhw +=
				(points[blending->Target].rhw - points[blending->Vertex].rhw) * blending->Blend;
		}
	}
	for (int i = 0; i < NumVertices; points++, flags++, i++)
	{
		if (points->rhw < LH3DTech::g_info_transform.NearClip)
		{
			*flags = LH3DTech::CLIP_CODE_NEAR;
		}
		else
		{
			*flags = 0;
		}
		if (points->x > points->rhw)
		{
			*flags |= LH3DTech::CLIP_CODE_RIGHT;
		}
		else if (-points->rhw > points->x)
		{
			*flags |= LH3DTech::CLIP_CODE_LEFT;
		}
		if (points->y > points->rhw)
		{
			*flags |= LH3DTech::CLIP_CODE_TOP;
		}
		else if (-points->rhw > points->y)
		{
			*flags |= LH3DTech::CLIP_CODE_BOTTOM;
		}
		if (*flags == 0)
		{
			points->rhw = 1.0f / points->rhw;
			points->x = (points->x * points->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			if (points->x < 0.0f)
			{
				points->x = 0.0f;
			}
			else if (points->x > LH3DTech::g_max_screen[0])
			{
				points->x = LH3DTech::g_max_screen[0];
			}
			points->y =
				LH3DTech::g_info_transform.HalfRes.y - (points->rhw * points->y) * LH3DTech::g_info_transform.HalfRes.y;
			if (points->y < 0.0f)
			{
				points->y = 0.0f;
			}
			else if (points->y > LH3DTech::g_max_screen[1])
			{
				points->y = LH3DTech::g_max_screen[1];
			}
			points->rhw = LH3DTech::g_info_transform.NearClip * points->rhw;
			points->z = 1.0f - points->rhw;
		}
	}
}

inline void __fastcall LH3DTShadow::AddPoint(long y, long x, float u, float v)
{
	if (y >= 0 && y <= VMAX)
	{
		ScanLine* line = &g_list_scan_line[y];
		if (line->Used)
		{
			if (line->Min > x)
			{
				line->Min = x;
				line->MinU = u;
				line->MinV = v;
			}
			else if (line->Max < x)
			{
				line->Max = x;
				line->MaxU = u;
				line->MaxV = v;
			}
		}
		else
		{
			line->Min = line->Max = x;
			line->MinU = line->MaxU = u;
			line->MinV = line->MaxV = v;
			line->Used = true;
		}
	}
}

inline void __fastcall LH3DTShadow::AddEdge(Vertex3D* a, Vertex3D* b, int unused)
{
	if (a->x > b->x)
	{
		Vertex3D* swap = a;
		a = b;
		b = swap;
	}
	long  y0 = (long)a->x;
	long  x0 = (long)a->z;
	long  y = y0;
	long  x = x0;
	long  dy = (long)b->x - y0;
	long  dx = (long)b->z - x0;
	float u = a->uv.x;
	float v = a->uv.y;
	float du;
	float dv;
	long  stepY;
	long  stepX;
	if (dy < 0)
	{
		stepY = -1;
		dy = -dy;
	}
	else
	{
		stepY = 1;
	}
	if (dx < 0)
	{
		stepX = -1;
		dx = -dx;
	}
	else
	{
		stepX = 1;
	}
	long error = 0;
	AddPoint(y0, x0, u, v);
	if (dy < dx)
	{
		if (dx)
		{
			du = (b->uv.x - a->uv.x) / dx;
			dv = (b->uv.y - a->uv.y) / dx;
			for (long i = 0; i < dx; i++)
			{
				x += stepX;
				v += dv;
				error += dy;
				u += du;
				if (error > dx)
				{
					y += stepY;
					error -= dx;
				}
				AddPoint(y, x, u, v);
			}
		}
	}
	else
	{
		if (dy)
		{
			du = (b->uv.x - a->uv.x) / dy;
			dv = (b->uv.y - a->uv.y) / dy;
			for (long i = 0; i < dy; i++)
			{
				y += stepY;
				u += du;
				error += dx;
				v += dv;
				if (error > dy)
				{
					x += stepX;
					error -= dy;
				}
				AddPoint(y, x, u, v);
			}
		}
	}
}

void LH3DPrimitive::DrawTextureShadow()
{
	float size = LH3DTexture::g_b_use_low_res ? LH3D_T_SHADOW_SIZE / 2.0f : (float)LH3D_T_SHADOW_SIZE;
	g_current_primitive = this;
	if (LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED)
	{
		return;
	}
	uint16_t* indices = &Triangles->A;
	uint8_t*  bitmap = Material.texture->GetMaskCollide();
	if (!bitmap)
	{
		return;
	}
	LHPoint light = DEFAULT_SUN;
	light.x += LH3DTech::g_local_to_clipping.m[9] - LH3DObject::g_current_object_in_draw->matrix.m[9];
	light.z += LH3DTech::g_local_to_clipping.m[11] - LH3DObject::g_current_object_in_draw->matrix.m[11];
	LH3DTShadow::g_bitmap = bitmap;
	for (int i = 0; i < NumTriangles; i++)
	{
		Vertex3D corners[3];
		for (int k = 0; k < 3; indices++, k++)
		{
			LH3DVertex* vertex = &Vertices[*indices];
			LHPoint     position = vertex->position;
			LH3DTech::g_local_to_clipping.TransformPoint(position);
			if (position.y < 0.0f)
			{
				position.y = 0.0f;
			}
			float t = light.y / (light.y - position.y);
			corners[k].x = (light.x + (position.x - light.x) * t) * size * LH3D_T_SHADOW_SCALE;
			corners[k].z = (light.z + (position.z - light.z) * t) * size * LH3D_T_SHADOW_SCALE;
			corners[k].uv.x = vertex->uv.x * (LH3D_T_SHADOW_BITMAP_SIZE - 1) + 0.5f;
			corners[k].uv.y = vertex->uv.y * (LH3D_T_SHADOW_BITMAP_SIZE - 1) + 0.5f;
		}
		LH3DTShadow::AddEdge(&corners[0], &corners[1], 1);
		LH3DTShadow::AddEdge(&corners[1], &corners[2], 1);
		LH3DTShadow::AddEdge(&corners[2], &corners[0], 1);
		LH3DTShadow::DrawAlpha();
	}
}

void LH3DPrimitive::DrawTextureShadow32x32(SubCollideDataRender* collide, SRTextured* rasterizer, TShadowInfo* shadow)
{
	float minDepth = shadow->MinDepth;
	float height = shadow->GroundHeight - shadow->Light.y;
	if (LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED)
	{
		return;
	}
	float       scaleX = LH3D_T_SHADOW_SMALL_SIZE / (shadow->MaxX - shadow->MinX);
	float       scaleZ = LH3D_T_SHADOW_SMALL_SIZE / (shadow->MaxZ - shadow->MinZ);
	LH3DVertex* vertex = Vertices;
	Vertex3D*   point = LH3DTech::g_cache_t_points;
	int         i;
	for (i = 0; i < NumVertices; i++, vertex++, point++)
	{
		LHPoint   position = vertex->position;
		LHMatrix* matrix = &LH3DObject::g_current_object_in_draw->matrix;
		point->x = matrix->m[0] * position.x + matrix->m[3] * position.y + matrix->m[6] * position.z + matrix->m[9];
		point->y = matrix->m[1] * position.x + matrix->m[4] * position.y + matrix->m[7] * position.z + matrix->m[10];
		point->z = matrix->m[2] * position.x + matrix->m[5] * position.y + matrix->m[8] * position.z + matrix->m[11];
		float depth = point->x * shadow->Direction.x + point->z * shadow->Direction.z;
		if (depth < minDepth)
		{
			minDepth = depth;
		}
		point->y = height / (point->y - shadow->Light.y);
		point->x = ((point->x - shadow->Light.x) * point->y + shadow->Light.x - shadow->MinX) * scaleX;
		if (point->x < 1.0f)
		{
			point->x = 1.0f;
		}
		else if (point->x > LH3D_T_SHADOW_SMALL_SIZE - 1.0f)
		{
			point->x = LH3D_T_SHADOW_SMALL_SIZE - 1.0f;
		}
		point->z = ((point->z - shadow->Light.z) * point->y + shadow->Light.z - shadow->MinZ) * scaleZ;
		if (point->z < 1.0f)
		{
			point->z = 1.0f;
		}
		else if (point->z > LH3D_T_SHADOW_SMALL_SIZE - 1.0f)
		{
			point->z = LH3D_T_SHADOW_SMALL_SIZE - 1.0f;
		}
		point->uv.x = vertex->uv.x * (LH3D_T_SHADOW_BITMAP_SIZE - 1);
		point->uv.y = vertex->uv.y * (LH3D_T_SHADOW_BITMAP_SIZE - 1);
	}
	rasterizer->Target->Texture = Material.texture->GetMaskCollide();
	LH3DTriangle* triangle = Triangles;
	for (i = 0; i < NumTriangles; i++, triangle++)
	{
		SRVertex  a;
		SRVertex  b;
		SRVertex  c;
		Vertex3D* corner = &LH3DTech::g_cache_t_points[triangle->A];
		a.X = (int)corner->x;
		a.Y = (int)corner->z;
		a.U = (int)corner->uv.x;
		a.V = (int)corner->uv.y;
		corner = &LH3DTech::g_cache_t_points[triangle->B];
		b.X = (int)corner->x;
		b.Y = (int)corner->z;
		b.U = (int)corner->uv.x;
		b.V = (int)corner->uv.y;
		corner = &LH3DTech::g_cache_t_points[triangle->C];
		c.X = (int)corner->x;
		c.Y = (int)corner->z;
		c.U = (int)corner->uv.x;
		c.V = (int)corner->uv.y;
		rasterizer->AddTriangle(&a, &b, &c);
	}
}

void LH3DPrimitive::DrawLit()
{
	unsigned long color = !Material.texture ? Material.ModulateColor(LH3DMesh::g_color) : LH3DMesh::g_color;
	g_current_primitive = this;
	LH3DVertex*    vertex = Vertices;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			int light = GetLightLevel(FloatToInt(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
			point->color = ScaleColor(color, light);
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           point->rhw * (point->y * LH3DTech::g_info_transform.HalfRes.y);
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			LHMatrix         inverse;
			inverse.SetInverse(*matrix);
			LHPoint sun = LH3DTech::g_sun_light_clipping;
			LHPoint lightDirection;
			TransformPointBy(&lightDirection, sun, &inverse);
			lightDirection *= InverseSquareRoot(lightDirection.GetNorm());
			for (int j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, matrix);
				point->specular = LH3DMesh::g_specular;
				int light = GetLightLevel(FloatToInt(lightDirection * vertex->normal * LH3D_LIGHT_MAX));
				point->color = ScaleColor(color, light);
				point->uv = vertex->uv;
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}

	LH3DTech::g_points_count = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void LH3DPrimitive::DrawComplex()
{
	g_current_primitive = this;
	LH3DVertex* vertex = Vertices;
	Vertex3D*   point = LH3DTech::g_cache_t_points;
	int         start = 0;
	for (int i = 0; i < NumVertexGroups; i++)
	{
		LH3DVertexGroup* group = &VertexGroups[i];
		LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
		LHMatrix         inverse;
		inverse.SetInverse(*matrix);
		LHPoint light = inverse * LH3DTech::g_sun_light;
		light *= InverseSquareRoot(light.GetNorm());
		LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
		LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
		for (int j = start; j < start + group->vertex_count; point++, vertex++, j++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			float intensity = light * vertex->normal;
			if (intensity < 0.0f)
			{
				intensity = 0.0f;
			}
			else
			{
				intensity *= LH3D_COMPLEX_LIGHT_SCALE;
			}
			intensity += LH3D_COMPLEX_LIGHT_AMBIENT;
			if (intensity > 1.0f)
			{
				intensity = 1.0f;
			}
			point->color = ScaleColor(LH3DMesh::g_color, (int)(intensity * LH3D_LIGHT_MAX));
			point->uv = vertex->uv;
		}
		start += group->vertex_count;
	}
	ApplyVBlendsAndSetFlags(LH3DTech::g_cache_t_points, LH3DTech::g_cache_flags);

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void Draw3DClipTriangle(long num_points, Vertex3D* points, long num_triangles, long* indices, LH3DMaterial* material)
{
	unsigned long* flags = LH3DTech::g_cache_flags;
	for (int i = 0; i < num_points; flags++, points++, i++)
	{
		ComputeClipFlags(points, flags);
		if (!*flags)
		{
			points->rhw = 1.0f / points->rhw;
			points->x = (points->x * points->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			if (points->x < 0.0f)
			{
				points->x = 0.0f;
			}
			else if (points->x > LH3DTech::g_max_screen[0])
			{
				points->x = LH3DTech::g_max_screen[0];
			}
			points->y =
				LH3DTech::g_info_transform.HalfRes.y - (points->y * points->rhw) * LH3DTech::g_info_transform.HalfRes.y;
			if (points->y < 0.0f)
			{
				points->y = 0.0f;
			}
			else if (points->y > LH3DTech::g_max_screen[1])
			{
				points->y = LH3DTech::g_max_screen[1];
			}
			points->rhw = LH3DTech::g_info_transform.NearClip * points->rhw;
			points->z = 1.0f - points->rhw;
		}
	}

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = num_points;
	LH3DTech::g_clip_with_double_sided = material->IsDoubleSided();
	int j;
	if (material->IsDoubleSided())
	{
		for (j = 0; j < (uint16_t)num_triangles; j++)
		{
			uint16_t a = (uint16_t)*indices++;
			uint16_t b = (uint16_t)*indices++;
			uint16_t c = (uint16_t)*indices++;
			if (LH3DTech::g_cache_flags[a] | LH3DTech::g_cache_flags[b] | LH3DTech::g_cache_flags[c])
			{
				if (!(LH3DTech::g_cache_flags[a] & LH3DTech::g_cache_flags[b] & LH3DTech::g_cache_flags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* cachePoints = LH3DTech::g_cache_t_points;
		for (j = 0; j < (uint16_t)num_triangles; j++)
		{
			uint16_t a = (uint16_t)*indices++;
			uint16_t b = (uint16_t)*indices++;
			uint16_t c = (uint16_t)*indices++;
			if (LH3DTech::g_cache_flags[a] | LH3DTech::g_cache_flags[b] | LH3DTech::g_cache_flags[c])
			{
				if (!(LH3DTech::g_cache_flags[a] & LH3DTech::g_cache_flags[b] & LH3DTech::g_cache_flags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((cachePoints[c].y - cachePoints[a].y) * (cachePoints[b].x - cachePoints[a].x) -
			             (cachePoints[b].y - cachePoints[a].y) * (cachePoints[c].x - cachePoints[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(material, 0);
		LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                         LH3DTech::g_index_count);
	}
}

void LH3DPrimitive::DrawComplexFroz()
{
	unsigned long color = LH3DMesh::g_color | RGB_MAKE(0xff, 0xff, 0xff);
	g_current_primitive = this;
	LH3DVertex* vertex = Vertices;
	Vertex3D*   point = &LH3DTech::g_cache_t_points[LH3D_FROZ_FIRST_POINT];
	int         start = 0;
	for (int i = 0; i < NumVertexGroups; i++)
	{
		LH3DVertexGroup* group = &VertexGroups[i];
		LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
		LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
		LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
		for (int j = start; j < start + group->vertex_count; point++, vertex++, j++)
		{
			TransformToClipping(point, vertex->position, &LH3DTech::g_local_to_clipping);
			point->z = point->rhw;
			point->color = color;
			point->specular = 0;
		}
		start += group->vertex_count;
	}

	LHMatrix matrix = LH3DTech::g_world_to_camera;
	matrix.PreMultiply(LH3DTech::g_clipping_to_world);
	matrix.PreMultiply(g_froz_wiggle_mat);
	LHPoint       axisX = matrix.GetVectorX();
	LHPoint       axisY = matrix.GetVectorY();
	LH3DTriangle* triangle = Triangles;
	long          indices[LH3D_FROZ_BATCH_TRIANGLES * 3];
	for (int k = 0; k < LH3D_FROZ_BATCH_TRIANGLES; k++)
	{
		indices[k * 3] = k * 3;
		indices[k * 3 + 1] = k * 3 + 1;
		indices[k * 3 + 2] = k * 3 + 2;
	}
	Vertex3D* points = &LH3DTech::g_cache_t_points[LH3D_FROZ_FIRST_POINT];
	while (triangle < Triangles + NumTriangles)
	{
		int count;
		for (count = 0; count < LH3D_FROZ_BATCH_TRIANGLES; count++)
		{
			if (triangle >= Triangles + NumTriangles)
			{
				break;
			}
			uint16_t  a = triangle->A;
			uint16_t  b = triangle->B;
			uint16_t  c = triangle->C;
			Vertex3D* out = &LH3DTech::g_cache_t_points[count * 3];
			out[0] = points[a];
			out[1] = points[b];
			out[2] = points[c];
			LHPoint pa = *(LHPoint*)&points[a];
			LHPoint pb = *(LHPoint*)&points[b];
			LHPoint pc = *(LHPoint*)&points[c];
			LHPoint normal = (pa - pb) ^ (pb - pc);
			float   norm = normal.GetNorm();
			normal *= InverseSquareRoot(norm);
			float u = (axisX * normal + 1.0f) * LH3D_ENV_MAP_UV_SCALE;
			float v = (axisY * normal + 1.0f) * LH3D_ENV_MAP_UV_SCALE;
			out[0].uv.x = out[1].uv.x = out[2].uv.x = u;
			out[0].uv.y = out[1].uv.y = out[2].uv.y = v;
			triangle++;
		}
		if (count > 0)
		{
			Draw3DClipTriangle(count * 3, LH3DTech::g_cache_t_points, count, indices,
			                   LH3DRender::g_current_active_material);
		}
	}
}

void LH3DPrimitive::DrawComplexSnow()
{
	DrawComplex();
}

void LH3DPrimitive::DrawComplexEnvMapMT()
{
	int envMap = g_envmaptable[Material.GetEnvMap()];
	LH3DRender::Set2ndTex(envMap, NULL, false);
	if (envMap == LH3D_2ND_TEX_MODE_SINGLE)
	{
		DrawComplex();
		return;
	}
	g_current_primitive = this;
	LH3DVertex* vertex = Vertices;
	Vertex3DMT* point = (Vertex3DMT*)LH3DTech::g_cache_t_points;
	int         start = 0;
	for (int i = 0; i < NumVertexGroups; i++)
	{
		LH3DVertexGroup* group = &VertexGroups[i];
		LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
		LHMatrix         inverse;
		inverse.SetInverse(*matrix);
		LHPoint light;
		LHMATRIX_TRANSFORM_POINT(light, LH3DTech::GetSun(), inverse);
		float norm = light.GetNorm();
		light *= InverseSquareRoot(norm);
		LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
		LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
		LHMatrix envMatrix = LH3DTech::g_world_to_camera;
		envMatrix.PreMultiply(*matrix);
		envMatrix.NormaliseMatrixOnly();
		envMatrix.m[9] = 0.0f;
		envMatrix.m[10] = 0.0f;
		envMatrix.m[11] = 0.0f;
		LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
		LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
		unsigned long color = LH3DMesh::g_color;
		for (int j = start; j < start + group->vertex_count; point++, vertex++, j++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			float intensity = light * vertex->normal;
			if (intensity < 0.0f)
			{
				intensity = 0.0f;
			}
			else
			{
				intensity *= LH3D_COMPLEX_LIGHT_SCALE;
			}
			intensity += LH3D_COMPLEX_LIGHT_AMBIENT;
			if (intensity > 1.0f)
			{
				intensity = 1.0f;
			}
			point->color = ScaleColor(color, (int)(intensity * LH3D_LIGHT_MAX));
			point->uv = vertex->uv;
			float u = (envMatrix.m[0] * vertex->normal.x + envMatrix.m[3] * vertex->normal.y +
			           envMatrix.m[6] * vertex->normal.z + 1.0f) *
			          LH3D_ENV_MAP_UV_SCALE;
			float v = (envMatrix.m[1] * vertex->normal.x + envMatrix.m[4] * vertex->normal.y +
			           envMatrix.m[7] * vertex->normal.z + 1.0f) *
			          LH3D_ENV_MAP_UV_SCALE;
			point->uv2.x = u * LH3DObject::g_cur_env_mat_info->ScaleU + LH3DObject::g_cur_env_mat_info->OffsetU;
			point->uv2.y = v * LH3DObject::g_cur_env_mat_info->ScaleV + LH3DObject::g_cur_env_mat_info->OffsetV;
		}
		start += group->vertex_count;
	}
	ApplyVBlendsAndSetFlagsMT((Vertex3DMT*)LH3DTech::g_cache_t_points, LH3DTech::g_cache_flags);

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            k;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleMT(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3DMT* points = (Vertex3DMT*)LH3DTech::g_cache_t_points;
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleMT(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::DrawTriangleMT((Vertex3DMT*)LH3DTech::g_cache_t_points, LH3DTech::g_points_count,
		                           LH3DTech::g_list_indices, LH3DTech::g_index_count);
	}
	LH3DRender::Set2ndTex(LH3D_2ND_TEX_MODE_OFF, NULL, false);
}

void LH3DPrimitive::DrawComplexRefMapMT()
{
	g_current_primitive = this;
	LH3DVertex* vertex = Vertices;
	Vertex3DMT* point = (Vertex3DMT*)LH3DTech::g_cache_t_points;
	int         start = 0;
	for (int i = 0; i < NumVertexGroups; i++)
	{
		LH3DVertexGroup* group = &VertexGroups[i];
		LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
		LHMatrix         inverse;
		inverse.SetInverse(*matrix);
		LHPoint light;
		LHMATRIX_TRANSFORM_POINT(light, LH3DTech::GetSun(), inverse);
		float norm = light.GetNorm();
		light *= InverseSquareRoot(norm);
		LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
		LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
		LHMatrix envMatrix = LH3DTech::g_world_to_camera;
		envMatrix.PreMultiply(*matrix);
		envMatrix.NormaliseMatrixOnly();
		envMatrix.m[9] = 0.0f;
		envMatrix.m[10] = 0.0f;
		envMatrix.m[11] = 0.0f;
		LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
		LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
		for (int j = start; j < start + group->vertex_count; point++, vertex++, j++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			float intensity = light * vertex->normal;
			if (intensity < 0.0f)
			{
				intensity = 0.0f;
			}
			else
			{
				intensity *= LH3D_COMPLEX_LIGHT_SCALE;
			}
			intensity += LH3D_COMPLEX_LIGHT_AMBIENT;
			if (intensity > 1.0f)
			{
				intensity = 1.0f;
			}
			point->color = ScaleColor(LH3DMesh::g_color, (int)(intensity * LH3D_LIGHT_MAX));
			point->uv = vertex->uv;
			float u = (envMatrix.m[0] * vertex->normal.x + envMatrix.m[3] * vertex->normal.y +
			           envMatrix.m[6] * vertex->normal.z + 1.0f) *
			          LH3D_ENV_MAP_UV_SCALE;
			float v = (envMatrix.m[1] * vertex->normal.x + envMatrix.m[4] * vertex->normal.y +
			           envMatrix.m[7] * vertex->normal.z + 1.0f) *
			          LH3D_ENV_MAP_UV_SCALE;
			point->uv2.x = u;
			point->uv2.y = v;
		}
		start += group->vertex_count;
	}
	ApplyVBlendsAndSetFlagsMT((Vertex3DMT*)LH3DTech::g_cache_t_points, LH3DTech::g_cache_flags);

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            k;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleMT(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3DMT* points = (Vertex3DMT*)LH3DTech::g_cache_t_points;
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleMT(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::DrawTriangleMT((Vertex3DMT*)LH3DTech::g_cache_t_points, LH3DTech::g_points_count,
		                           LH3DTech::g_list_indices, LH3DTech::g_index_count);
	}
}

void LH3DPrimitive::DrawInShadow()
{
	g_current_primitive = this;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	int            j;
	float          u;
	float          v;
	float          depth;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (j = 0; j < NumVertices; flags++, point++, vertex++, j++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			LHPoint position;
			position.x = point->x;
			position.y = point->y;
			position.z = point->rhw;
			point->color = RGBA_MAKE(0xff, 0xff, 0xff, 0xff);
			point->specular = 0;
			depth = LH3DMesh::g_current_shadow->CalcShadowUV_Clipping(position, point->uv.x, point->uv.y);
			u = point->uv.x;
			v = point->uv.y;
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
			if (depth < LH3DMesh::g_current_shadow->MinDepth)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_BEHIND;
			}
			if (u < 0.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_U_MIN;
			}
			else if (u > 1.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_U_MAX;
			}
			if (v < 0.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_V_MIN;
			}
			else if (v > 1.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_V_MAX;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
			LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
			for (j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
				LHPoint position;
				position.x = point->x;
				position.y = point->y;
				position.z = point->rhw;
				point->specular = 0;
				point->color = RGBA_MAKE(0xff, 0xff, 0xff, 0xff);
				depth = LH3DMesh::g_current_shadow->CalcShadowUV_Clipping(position, point->uv.x, point->uv.y);
				u = point->uv.x;
				v = point->uv.y;
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
				if (depth < LH3DMesh::g_current_shadow->MinDepth)
				{
					*flags |= LH3D_SHADOW_CLIP_CODE_BEHIND;
				}
				if (u < 0.0f)
				{
					*flags |= LH3D_SHADOW_CLIP_CODE_U_MIN;
				}
				else if (u > 1.0f)
				{
					*flags |= LH3D_SHADOW_CLIP_CODE_U_MAX;
				}
				if (v < 0.0f)
				{
					*flags |= LH3D_SHADOW_CLIP_CODE_V_MIN;
				}
				else if (v > 1.0f)
				{
					*flags |= LH3D_SHADOW_CLIP_CODE_V_MAX;
				}
			}
			start += group->vertex_count;
		}
	}

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	Vertex3D*      points = LH3DTech::g_cache_t_points;
	for (int k = 0; k < NumTriangles; k++, triangle++)
	{
		uint16_t a = triangle->A;
		uint16_t b = triangle->B;
		uint16_t c = triangle->C;
		if ((clipFlags[a] | clipFlags[b] | clipFlags[c]) & LH3DTech::CLIP_CODE_FRUSTUM)
		{
			if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
			{
				LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
			}
		}
		else if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
		{
			if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			        (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			    0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void __fastcall LH3DPrimitive::DrawVolLight(LHPoint* light, float intensity)
{
	g_current_primitive = this;
	Vertex3D*   point = LH3DTech::g_cache_t_points;
	LH3DVertex* vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			LHMatrix* matrix = LH3DTech::g_current_matrix;
			float     x = matrix->m[0] * vertex->position.x + matrix->m[3] * vertex->position.y +
			              matrix->m[6] * vertex->position.z;
			float     y = matrix->m[1] * vertex->position.x + matrix->m[4] * vertex->position.y +
			              matrix->m[7] * vertex->position.z;
			float     z =
				matrix->m[2] * vertex->normal.x + matrix->m[5] * vertex->normal.y + matrix->m[8] * vertex->normal.z;
			point->specular = LH3DMesh::g_specular;
			point->color = LH3DMesh::g_color;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			unsigned long alpha = (unsigned long)(fabs(z / (fabs(x) + fabs(y))) * LH3D_VOL_LIGHT_ALPHA_SCALE);
			if (alpha <= 0)
			{
				point->color = 0;
			}
			else if (alpha < LH3D_LIGHT_MAX)
			{
				point->color = ScaleColor(LH3DMesh::g_color, alpha);
			}
			else
			{
				point->color = LH3DMesh::g_color;
			}
			point[1].x = (point->x - light->x) * intensity + point->x;
			point[1].y = (point->y - light->y) * intensity + point->y;
			point[1].rhw = (point->rhw - light->z) * intensity + point->rhw;
			point++;
			point->color = 0;
			point->specular = 0;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
			LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
			for (int j = start; j < start + group->vertex_count; point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
				point->specular = LH3DMesh::g_specular;
				point->color = LH3DMesh::g_color;
				point->uv.x = vertex->uv.x;
				point->uv.y = vertex->uv.y;
				point[1].x = (point->x - light->x) * intensity + point->x;
				point[1].y = (point->y - light->y) * intensity + point->y;
				point[1].rhw = (point->rhw - light->z) * intensity + point->rhw;
				point++;
				point->color = 0;
				point->specular = 0;
				point->uv.x = vertex->uv.x;
				point->uv.y = vertex->uv.y;
			}
			start += group->vertex_count;
		}
	}

	point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	for (int i = 0; i < NumVertices * 2; point++, flags++, i++)
	{
		ComputeClipFlags(point, flags);
		if (!*flags)
		{
			point->rhw = 1.0f / point->rhw;
			point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			if (point->x < 0.0f)
			{
				point->x = 0.0f;
			}
			else if (point->x > LH3DTech::g_max_screen[0])
			{
				point->x = LH3DTech::g_max_screen[0];
			}
			point->y =
				LH3DTech::g_info_transform.HalfRes.y - point->y * (point->rhw * LH3DTech::g_info_transform.HalfRes.y);
			if (point->y < 0.0f)
			{
				point->y = 0.0f;
			}
			else if (point->y > LH3DTech::g_max_screen[1])
			{
				point->y = LH3DTech::g_max_screen[1];
			}
			point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
			point->z = 1.0f - point->rhw;
		}
	}

	uint16_t pointsCount = NumVertices * 2;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = false;
	uint16_t a;
	uint16_t b;
	uint16_t c;
	for (int j = 0; j < NumTriangles; triangle++, j++)
	{
		for (int k = intensity > 0.0f ? 1 : 0; k < 3; k++)
		{
			if (k && intensity <= 0.0f)
			{
				break;
			}
			switch (k)
			{
			case 0:
				a = triangle->A * 2;
				b = triangle->B * 2;
				c = triangle->C * 2;
				break;
			case 1:
				a = triangle->A * 2;
				b = triangle->A * 2 + 1;
				c = triangle->B * 2 + 1;
				break;
			case 2:
				a = triangle->B * 2 + 1;
				b = triangle->B * 2;
				c = triangle->A * 2;
				break;
			case 3:
				a = triangle->B * 2;
				b = triangle->B * 2 + 1;
				c = triangle->C * 2 + 1;
				break;
			case 4:
				a = triangle->C * 2 + 1;
				b = triangle->C * 2;
				c = triangle->B * 2;
				break;
			case 5:
				a = triangle->C * 2;
				b = triangle->C * 2 + 1;
				c = triangle->A * 2 + 1;
				break;
			case 6:
				a = triangle->A * 2 + 1;
				b = triangle->A * 2;
				c = triangle->C * 2;
				break;
			}
			if (LH3DTech::g_cache_flags[a] | LH3DTech::g_cache_flags[b] | LH3DTech::g_cache_flags[c])
			{
				if (!(LH3DTech::g_cache_flags[a] & LH3DTech::g_cache_flags[b] & LH3DTech::g_cache_flags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				Vertex3D* points = LH3DTech::g_cache_t_points;
				if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
				        (points[b].y - points[a].y) * (points[c].x - points[a].x) >
				    0.0f)
				{
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
				}
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ONE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ONE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, FALSE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
		LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_SRCALPHA);
		LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_INVSRCALPHA);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, FALSE);
	}
}

void LH3DPrimitive::DrawFroz()
{
	g_current_primitive = this;
	LH3DVertex*   vertex = Vertices;
	unsigned long color = LH3DMesh::g_color;
	Vertex3D*     point = &LH3DTech::g_cache_t_points[LH3D_FROZ_FIRST_POINT];
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->z = point->rhw;
			point->color = color;
			point->specular = 0;
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
			LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
			for (int j = start; j < start + group->vertex_count; point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, matrix);
				point->z = point->rhw;
				point->color = color;
				point->specular = 0;
			}
			start += group->vertex_count;
		}
	}

	LHMatrix matrix = LH3DTech::g_world_to_camera;
	matrix.PreMultiply(LH3DTech::g_clipping_to_world);
	matrix.PreMultiply(g_froz_wiggle_mat);
	LHPoint       axisX = matrix.GetVectorX();
	LHPoint       axisY = matrix.GetVectorY();
	LH3DTriangle* triangle = Triangles;
	long          indices[LH3D_FROZ_BATCH_TRIANGLES * 3];
	for (int k = 0; k < LH3D_FROZ_BATCH_TRIANGLES; k++)
	{
		indices[k * 3] = k * 3;
		indices[k * 3 + 1] = k * 3 + 1;
		indices[k * 3 + 2] = k * 3 + 2;
	}
	Vertex3D* points = &LH3DTech::g_cache_t_points[LH3D_FROZ_FIRST_POINT];
	while (triangle < Triangles + NumTriangles)
	{
		int count;
		for (count = 0; count < LH3D_FROZ_BATCH_TRIANGLES; count++)
		{
			if (triangle >= Triangles + NumTriangles)
			{
				break;
			}
			uint16_t  a = triangle->A;
			uint16_t  b = triangle->B;
			uint16_t  c = triangle->C;
			Vertex3D* out = &LH3DTech::g_cache_t_points[count * 3];
			out[0] = points[a];
			out[1] = points[b];
			out[2] = points[c];
			LHPoint pa = *(LHPoint*)&points[a];
			LHPoint pb = *(LHPoint*)&points[b];
			LHPoint pc = *(LHPoint*)&points[c];
			LHPoint normal = (pa - pb) ^ (pb - pc);
			float   norm = normal.GetNorm();
			normal *= InverseSquareRoot(norm);
			float u = (axisX * normal + 1.0f) * LH3D_ENV_MAP_UV_SCALE;
			float v = (axisY * normal + 1.0f) * LH3D_ENV_MAP_UV_SCALE;
			out[0].uv.x = out[1].uv.x = out[2].uv.x = u;
			out[0].uv.y = out[1].uv.y = out[2].uv.y = v;
			triangle++;
		}
		if (count > 0)
		{
			bool32_t doubleSided = LH3DRender::g_current_active_material->Flags & LH3DMaterial::FLAG_DOUBLE_SIDED;
			if (Material.IsDoubleSided())
			{
				LH3DRender::g_current_active_material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
			}
			else
			{
				LH3DRender::g_current_active_material->Flags &= ~LH3DMaterial::FLAG_DOUBLE_SIDED;
			}
			unsigned long zFunc;
			LH3DRender::GetRenderState(D3DRENDERSTATE_ZFUNC, zFunc);
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
			Draw3DClipTriangle(count * 3, LH3DTech::g_cache_t_points, count, indices,
			                   LH3DRender::g_current_active_material);
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, zFunc);
			if (doubleSided)
			{
				LH3DRender::g_current_active_material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
			}
			else
			{
				LH3DRender::g_current_active_material->Flags &= ~LH3DMaterial::FLAG_DOUBLE_SIDED;
			}
		}
	}
}

LHPoint g_vollightgj_u_dirn(0.0f, 1.0f, 0.0f);
bool    g_volfx_gj_cover_surface = false;

void LH3DPrimitive::DrawVolLightGJ()
{
	float colorScale = 1.0f / (LH3DGJAnimVolFX::g_vol_fx_xy_for_color_255 - LH3DGJAnimVolFX::g_vol_fx_xy_for_color_0);
	g_current_primitive = this;
	Vertex3D*   point = &LH3DTech::g_cache_t_points[LH3D_GJ_ANIM_VOL_FX_FIRST_POINT];
	LH3DVertex* vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		LHMatrix normalMatrix = *LH3DTech::g_current_matrix;
		normalMatrix.NormaliseMatrixOnly();
		for (int i = 0; i < NumVertices; i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			LHPoint offsetNormal = vertex->normal + LHPoint(LH3DGJAnimVolFX::g_vol_fx_normal_offset_x, 0.0f,
			                                                LH3DGJAnimVolFX::g_vol_fx_normal_offset_z);
			LHPoint normal;
			normal.x = normalMatrix.m[0] * offsetNormal.x + normalMatrix.m[3] * offsetNormal.y +
			           normalMatrix.m[6] * offsetNormal.z;
			normal.y = normalMatrix.m[1] * offsetNormal.x + normalMatrix.m[4] * offsetNormal.y +
			           normalMatrix.m[7] * offsetNormal.z;
			normal.z = normalMatrix.m[2] * offsetNormal.x + normalMatrix.m[5] * offsetNormal.y +
			           normalMatrix.m[8] * offsetNormal.z;
			float value = ((normal.x * normal.x + normal.y * normal.y) / (float)sqrt(2.0f) -
			               LH3DGJAnimVolFX::g_vol_fx_xy_for_color_0) *
			              colorScale;
			if (value <= 0.0f)
			{
				point->color = point->specular = 0;
			}
			else
			{
				unsigned long alpha = FloatToInt(value * LH3D_LIGHT_MAX);
				point->color = alpha < LH3D_LIGHT_MAX ? ScaleColor(LH3DMesh::g_color, alpha) : LH3DMesh::g_color;
			}
			point->specular = LH3DMesh::g_specular;
			if (LH3DGJAnimVolFX::g_vol_fx_anim_uv)
			{
				point[1].uv.x = point->uv.x = normal * g_vollightgj_u_dirn * LH3DGJAnimVolFX::g_vol_fx_texture_frac_u +
				                              LH3DGJAnimVolFX::g_vol_fx_offset_u;
				point->uv.y = LH3DGJAnimVolFX::g_vol_fx_offset_v;
				point[1].uv.y = point->uv.y - LH3DGJAnimVolFX::g_vol_fx_texture_frac_v;
			}
			else
			{
				point[1].uv.x = point->uv.x = vertex->uv.x;
				point[1].uv.y = point->uv.y = vertex->uv.y;
			}
			point++;
			LHPoint extruded = vertex->position + vertex->normal * LH3DGJAnimVolFX::g_vol_fx_zoom;
			TransformToClipping(point, extruded, LH3DTech::g_current_matrix);
			point->color = 0;
			point->specular = 0;
			point++;
			vertex++;
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			LHMatrix         normalMatrix = *matrix;
			normalMatrix.NormaliseMatrixOnly();
			for (int j = start; j < start + group->vertex_count; j++)
			{
				TransformToClipping(point, vertex->position, matrix);
				LHPoint offsetNormal = vertex->normal + LHPoint(LH3DGJAnimVolFX::g_vol_fx_normal_offset_x, 0.0f,
				                                                LH3DGJAnimVolFX::g_vol_fx_normal_offset_z);
				LHPoint normal;
				normal.x = normalMatrix.m[0] * offsetNormal.x + normalMatrix.m[3] * offsetNormal.y +
				           normalMatrix.m[6] * offsetNormal.z;
				normal.y = normalMatrix.m[1] * offsetNormal.x + normalMatrix.m[4] * offsetNormal.y +
				           normalMatrix.m[7] * offsetNormal.z;
				normal.z = normalMatrix.m[2] * offsetNormal.x + normalMatrix.m[5] * offsetNormal.y +
				           normalMatrix.m[8] * offsetNormal.z;
				float value =
					((float)fabs(normal.x) + (float)fabs(normal.y) - LH3DGJAnimVolFX::g_vol_fx_xy_for_color_0) *
					colorScale;
				if (value <= 0.0f)
				{
					point->color = point->specular = 0;
				}
				else
				{
					unsigned long alpha = FloatToInt(value * LH3D_LIGHT_MAX);
					point->color = alpha < LH3D_LIGHT_MAX ? ScaleColor(LH3DMesh::g_color, alpha) : LH3DMesh::g_color;
				}
				point->specular = LH3DMesh::g_specular;
				float u;
				switch (LH3DGJAnimVolFX::g_vol_fx_go_by_norm)
				{
				case LH3D_GJ_ANIM_VOL_FX_U_BY_NORMAL_Y:
					u = normal.y;
					break;
				case LH3D_GJ_ANIM_VOL_FX_U_BY_NORMAL_X:
					u = normal.x;
					break;
				case LH3D_GJ_ANIM_VOL_FX_U_BY_NORMAL_Z:
					u = normal.z;
					break;
				default:
					u = 0.0f;
					break;
				}
				if (LH3DGJAnimVolFX::g_vol_fx_anim_uv)
				{
					point[1].uv.x = point->uv.x =
						u * LH3DGJAnimVolFX::g_vol_fx_texture_frac_u + LH3DGJAnimVolFX::g_vol_fx_offset_u;
					point->uv.y = LH3DGJAnimVolFX::g_vol_fx_offset_v;
					point[1].uv.y = point->uv.y - LH3DGJAnimVolFX::g_vol_fx_texture_frac_v;
				}
				else
				{
					point[1].uv.x = point->uv.x = vertex->uv.x;
					point[1].uv.y = point->uv.y = vertex->uv.y;
				}
				point++;
				LHPoint extruded = vertex->position + vertex->normal * LH3DGJAnimVolFX::g_vol_fx_zoom;
				TransformToClipping(point, extruded, matrix);
				point->color = point->specular = 0;
				point++;
				vertex++;
			}
			start += group->vertex_count;
		}
	}

	long indices[LH3D_GJ_ANIM_VOL_FX_TRIANGLE_BATCH * 3];
	for (int k = 0; k < LH3D_GJ_ANIM_VOL_FX_TRIANGLE_BATCH; k++)
	{
		indices[k * 3] = k * 3;
		indices[k * 3 + 1] = k * 3 + 1;
		indices[k * 3 + 2] = k * 3 + 2;
	}
	LH3DTriangle* triangle = Triangles;
	Vertex3D*     points = &LH3DTech::g_cache_t_points[LH3D_GJ_ANIM_VOL_FX_FIRST_POINT];
	uint16_t      a;
	uint16_t      b;
	uint16_t      c;
	while (triangle < Triangles + NumTriangles)
	{
		int count = 0;
		for (; count < LH3D_GJ_ANIM_VOL_FX_TRIANGLE_BATCH - LH3D_GJ_ANIM_VOL_FX_FACES_PER_TRIANGLE &&
		       triangle < Triangles + NumTriangles;
		     triangle++)
		{
			for (int face = !g_volfx_gj_cover_surface; face < LH3D_GJ_ANIM_VOL_FX_FACES_PER_TRIANGLE; face++)
			{
				switch (face)
				{
				case 0:
					a = triangle->A * 2;
					b = triangle->B * 2;
					c = triangle->C * 2;
					break;
				case 1:
					a = triangle->A * 2;
					b = triangle->A * 2 + 1;
					c = triangle->B * 2 + 1;
					break;
				case 2:
					a = triangle->B * 2 + 1;
					b = triangle->B * 2;
					c = triangle->A * 2;
					break;
				case 3:
					a = triangle->B * 2;
					b = triangle->B * 2 + 1;
					c = triangle->C * 2 + 1;
					break;
				case 4:
					a = triangle->C * 2 + 1;
					b = triangle->C * 2;
					c = triangle->B * 2;
					break;
				case 5:
					a = triangle->C * 2;
					b = triangle->C * 2 + 1;
					c = triangle->A * 2 + 1;
					break;
				case 6:
					a = triangle->A * 2 + 1;
					b = triangle->A * 2;
					c = triangle->C * 2;
					break;
				}
				if (points[a].color || points[b].color || points[c].color)
				{
					int index = count * 3;
					count++;
					LH3DTech::g_cache_t_points[index] = points[a];
					LH3DTech::g_cache_t_points[index + 1] = points[b];
					LH3DTech::g_cache_t_points[index + 2] = points[c];
				}
			}
		}
		if (count > 0)
		{
			bool32_t doubleSided = LH3DRender::g_current_active_material->Flags & LH3DMaterial::FLAG_DOUBLE_SIDED;
			LH3DRender::g_current_active_material->Flags &= ~LH3DMaterial::FLAG_DOUBLE_SIDED;
			Draw3DClipTriangle(count * 3, LH3DTech::g_cache_t_points, count, indices,
			                   LH3DRender::g_current_active_material);
			if (doubleSided)
			{
				LH3DRender::g_current_active_material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
			}
			else
			{
				LH3DRender::g_current_active_material->Flags &= ~LH3DMaterial::FLAG_DOUBLE_SIDED;
			}
		}
	}
}

void LH3DPrimitive::DrawCage(float scale)
{
	g_current_primitive = this;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		LHMatrix matrix = *LH3DTech::g_current_matrix;
		matrix.NormaliseMatrixOnly();
		for (int i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			LHPoint position = vertex->position + vertex->normal * scale;
			TransformToClipping(point, position, LH3DTech::g_current_matrix);
			point->color = LH3DMesh::g_color;
			point->specular = LH3DMesh::g_specular;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			for (int j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, matrix);
				point->color = LH3DMesh::g_color;
				point->specular = LH3DMesh::g_specular;
				point->uv.x = vertex->uv.x;
				point->uv.y = vertex->uv.y;
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}

	LH3DTech::g_points_count = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DMaterial::RenderMode renderMode = Material.render_mode;
		Material.render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ;
		LH3DRender::SetMaterial(&Material, 0);
		Material.render_mode = renderMode;
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
	g_current_index_primitive++;
}

int __fastcall LH3DPrimitive::ComputeProjectedPoints(float* projected, TShadowInfo* shadow, float* depths)
{
	float lightHeight = -shadow->Light.y;
	float minDepth = shadow->MinDepth;
	float minX = shadow->MinX;
	float minZ = shadow->MinZ;
	float maxX = shadow->MaxX;
	float maxZ = shadow->MaxZ;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		float       height = -LH3DObject::g_current_object_in_draw->matrix.m[10];
		LH3DVertex* vertex = Vertices;
		LH3DTech::g_current_matrix->m[10] += height;
		for (int i = 0; i < NumVertices; i++, vertex++)
		{
			float x = LH3DTech::g_current_matrix->m[0] * vertex->position.x +
			          LH3DTech::g_current_matrix->m[3] * vertex->position.y +
			          LH3DTech::g_current_matrix->m[6] * vertex->position.z + LH3DTech::g_current_matrix->m[9];
			float y = LH3DTech::g_current_matrix->m[1] * vertex->position.x +
			          LH3DTech::g_current_matrix->m[4] * vertex->position.y +
			          LH3DTech::g_current_matrix->m[7] * vertex->position.z + LH3DTech::g_current_matrix->m[10];
			float z = LH3DTech::g_current_matrix->m[2] * vertex->position.x +
			          LH3DTech::g_current_matrix->m[5] * vertex->position.y +
			          LH3DTech::g_current_matrix->m[8] * vertex->position.z + LH3DTech::g_current_matrix->m[11];
			if (y < 0.0f)
			{
				y = 0.0f;
			}
			if (depths)
			{
				*depths++ = x;
				*depths++ = y;
				*depths++ = z;
			}
			float depth = z * shadow->Direction.z + x * shadow->Direction.x;
			if (depth < minDepth)
			{
				minDepth = depth;
			}
			float t = lightHeight / (y - shadow->Light.y);
			x = (x - shadow->Light.x) * t + shadow->Light.x;
			*projected++ = x;
			z = (z - shadow->Light.z) * t + shadow->Light.z;
			*projected++ = z;
			if (x < minX)
			{
				minX = x;
			}
			if (x > maxX)
			{
				maxX = x;
			}
			if (z < minZ)
			{
				minZ = z;
			}
			if (z > maxZ)
			{
				maxZ = z;
			}
		}
		LH3DTech::g_current_matrix->m[10] -= height;
	}
	else
	{
		float       height = -LH3DObject::g_current_object_in_draw->matrix.m[10];
		LH3DVertex* vertex = Vertices;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix         matrix = LH3DMesh::g_current_matrix[group->BoneIndex];
			matrix.m[10] += height;
			for (int j = 0; j < group->vertex_count; j++, vertex++)
			{
				float x = matrix.m[0] * vertex->position.x + matrix.m[3] * vertex->position.y +
				          matrix.m[6] * vertex->position.z + matrix.m[9];
				float y = matrix.m[1] * vertex->position.x + matrix.m[4] * vertex->position.y +
				          matrix.m[7] * vertex->position.z + matrix.m[10];
				float z = matrix.m[2] * vertex->position.x + matrix.m[5] * vertex->position.y +
				          matrix.m[8] * vertex->position.z + matrix.m[11];
				float depth = z * shadow->Direction.z + x * shadow->Direction.x;
				if (depth < minDepth)
				{
					minDepth = depth;
				}
				float t = lightHeight / (y - shadow->Light.y);
				x = (x - shadow->Light.x) * t + shadow->Light.x;
				*projected++ = x;
				z = (z - shadow->Light.z) * t + shadow->Light.z;
				*projected++ = z;
				if (x < minX)
				{
					minX = x;
				}
				if (x > maxX)
				{
					maxX = x;
				}
				if (z < minZ)
				{
					minZ = z;
				}
				if (z > maxZ)
				{
					maxZ = z;
				}
			}
		}
	}
	shadow->MinDepth = minDepth;
	shadow->MinX = minX;
	shadow->MinZ = minZ;
	shadow->MaxX = maxX;
	shadow->MaxZ = maxZ;
	return NumVertices;
}

void __fastcall LH3DPrimitive::DrawShadowPolys(uint8_t* buffer, long pitch, float* projected, TShadowInfo* shadow)
{
	LH3DTriangle* triangle = Triangles;
	if (!GetMaterial()->IsDoubleSided() && !LH3DObject::g_current_object_in_draw->IsTemple())
	{
		for (int i = 0; i < NumTriangles; i++, triangle++)
		{
			int    color = shadow->Color;
			float* b = &projected[triangle->B * 2];
			int    yB = (int)b[1];
			float  xB = b[0];
			float* c = &projected[triangle->C * 2];
			int    yC = (int)c[1];
			float  xC = c[0];
			float* a = &projected[triangle->A * 2];
			int    yA = (int)a[1];
			float  xA = a[0];
			if (!((float)(yB - yC) * (xA - xC) > (float)(yA - yC) * (xB - xC)))
			{
				SoftTri::miny = SoftTri::CLIPY;
				SoftTri::maxy = 0;
				SoftTri::addedge_123(xA, yA, xC, yC, xC, yC, xB, yB, xB, yB, xA, yA);
				SoftTri::rendertri(buffer, pitch, color);
			}
		}
	}
	else
	{
		for (int i = 0; i < NumTriangles; i++, triangle++)
		{
			int    color = shadow->Color;
			float* c = &projected[triangle->C * 2];
			int    yC = (int)c[1];
			float  xC = c[0];
			float* b = &projected[triangle->B * 2];
			int    yB = (int)b[1];
			float  xB = b[0];
			float* a = &projected[triangle->A * 2];
			int    yA = (int)a[1];
			float  xA = a[0];
			SoftTri::miny = SoftTri::CLIPY;
			SoftTri::maxy = 0;
			if ((float)(yC - yB) * (xA - xB) > (float)(yA - yB) * (xC - xB))
			{
				SoftTri::addedge_123(xA, yA, xC, yC, xC, yC, xB, yB, xB, yB, xA, yA);
			}
			else
			{
				SoftTri::addedge_123(xA, yA, xB, yB, xB, yB, xC, yC, xC, yC, xA, yA);
			}
			SoftTri::rendertri(buffer, pitch, color);
		}
	}
}

void LH3DPrimitive::DrawLit4() {}

void LH3DPrimitive::FillListVertices4() {}

void LH3DPrimitive::DrawWaterReflection()
{
	float scaleX = 1.0f / LH3DTech::g_info_transform.InvHalfTanFovY;
	g_current_primitive = this;
	LH3DVertex*    vertex = Vertices;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	float          scaleY = 1.0f / LH3DTech::g_info_transform.InvHalfTanFovX;
	GetTickCount();
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		LHMatrix* matrix = &LH3DObject::g_current_object_in_draw->matrix;
		for (int i = 0; i < NumVertices; point++, vertex++, flags++, i++)
		{
			LHPoint world;
			TransformPointBy(&world, vertex->position, matrix);
			point->x = LH3DTech::g_world_to_clipping.m[0] * world.x - LH3DTech::g_world_to_clipping.m[3] * world.y +
			           LH3DTech::g_world_to_clipping.m[6] * world.z + LH3DTech::g_world_to_clipping.m[9];
			point->y = LH3DTech::g_world_to_clipping.m[1] * world.x - LH3DTech::g_world_to_clipping.m[4] * world.y +
			           LH3DTech::g_world_to_clipping.m[7] * world.z + LH3DTech::g_world_to_clipping.m[10];
			point->rhw = LH3DTech::g_world_to_clipping.m[2] * world.x - LH3DTech::g_world_to_clipping.m[5] * world.y +
			             LH3DTech::g_world_to_clipping.m[8] * world.z + LH3DTech::g_world_to_clipping.m[11];
			point->specular = LH3DMesh::g_specular;
			point->color = LH3DMesh::g_color;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			if (g_clipping_plane_camera.Normal.x * point->x * scaleX +
			        g_clipping_plane_camera.Normal.y * point->y * scaleY +
			        g_clipping_plane_camera.Normal.z * point->rhw + g_clipping_plane_camera.Distance >
			    0.0f)
			{
				*flags = LH3DTech::CLIP_CODE_PLANE;
			}
			else
			{
				*flags = 0;
			}
			if (point->rhw < LH3DTech::g_info_transform.NearClip)
			{
				*flags = LH3DTech::CLIP_CODE_NEAR;
			}
			if (point->x > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_RIGHT;
			}
			else if (-point->rhw > point->x)
			{
				*flags |= LH3DTech::CLIP_CODE_LEFT;
			}
			if (point->y > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_TOP;
			}
			else if (-point->rhw > point->y)
			{
				*flags |= LH3DTech::CLIP_CODE_BOTTOM;
			}
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			for (int j = start; j < start + group->vertex_count; point++, vertex++, flags++, j++)
			{
				LHPoint world = *matrix * vertex->position;
				point->x = LH3DTech::g_world_to_clipping.m[0] * world.x - LH3DTech::g_world_to_clipping.m[3] * world.y +
				           LH3DTech::g_world_to_clipping.m[6] * world.z + LH3DTech::g_world_to_clipping.m[9];
				point->y = LH3DTech::g_world_to_clipping.m[1] * world.x - LH3DTech::g_world_to_clipping.m[4] * world.y +
				           LH3DTech::g_world_to_clipping.m[7] * world.z + LH3DTech::g_world_to_clipping.m[10];
				point->rhw = LH3DTech::g_world_to_clipping.m[2] * world.x -
				             LH3DTech::g_world_to_clipping.m[5] * world.y +
				             LH3DTech::g_world_to_clipping.m[8] * world.z + LH3DTech::g_world_to_clipping.m[11];
				point->specular = LH3DMesh::g_specular;
				point->color = LH3DMesh::g_color;
				point->uv.x = vertex->uv.x;
				point->uv.y = vertex->uv.y;
				if (g_clipping_plane_camera.Normal.x * point->x * scaleX +
				        g_clipping_plane_camera.Normal.y * point->y * scaleY +
				        g_clipping_plane_camera.Normal.z * point->rhw + g_clipping_plane_camera.Distance >
				    0.0f)
				{
					*flags = LH3DTech::CLIP_CODE_PLANE;
				}
				else
				{
					*flags = 0;
				}
				if (point->rhw < LH3DTech::g_info_transform.NearClip)
				{
					*flags = LH3DTech::CLIP_CODE_NEAR;
				}
				if (point->x > point->rhw)
				{
					*flags |= LH3DTech::CLIP_CODE_RIGHT;
				}
				else if (-point->rhw > point->x)
				{
					*flags |= LH3DTech::CLIP_CODE_LEFT;
				}
				if (point->y > point->rhw)
				{
					*flags |= LH3DTech::CLIP_CODE_TOP;
				}
				else if (-point->rhw > point->y)
				{
					*flags |= LH3DTech::CLIP_CODE_BOTTOM;
				}
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           point->rhw * (point->y * LH3DTech::g_info_transform.HalfRes.y);
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleWithPlane(a, b, c);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleWithPlane(a, b, c);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void GetSnowUV(float* u, float* v, LHPoint* normal, LH3DVertex* vertex)
{
	float x = (float)fabs(vertex->uv.x);
	*u = x - (int)x;
	float y = (float)fabs(vertex->uv.y);
	*v = y - (int)y;
	*u = (normal->y + 1.0f) * 0.4f + *u * 0.2f;
	*v *= 0.2f;
}

void LH3DPrimitive::DrawSnow()
{
	unsigned long grey = LH3DMesh::g_color & 0xff00ff00;
	grey |= (grey >> 8) & 0xff;
	grey |= (grey & 0xff00) << 8;
	unsigned long blend =
		(LH3DMesh::g_color & 0xff0000) +
				((((grey & 0xff0000) - (LH3DMesh::g_color & 0xff0000)) * LH3D_SNOW_WHITENESS) >> 8) &
			0xff0000 |
		(LH3DMesh::g_color & 0xff00) + ((((grey & 0xff00) - (LH3DMesh::g_color & 0xff00)) * LH3D_SNOW_WHITENESS) >> 8) &
			0xff00 |
		(LH3DMesh::g_color & 0xff) + ((((grey & 0xff) - (LH3DMesh::g_color & 0xff)) * LH3D_SNOW_WHITENESS) >> 8) &
			0xff |
		grey & 0xff000000;
	unsigned long snowColor = (blend & 0xffffff) + (LH3DMesh::g_color & 0xff000000);
	g_current_primitive = this;
	if (LH3DObject::g_current_object_in_draw && LH3DObject::g_current_object_in_draw->DrawAsFence)
	{
		if (LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED)
		{
			return;
		}
		LH3DVertex*    vertices = Vertices;
		LH3DTriangle*  triangle = Triangles;
		Vertex3D*      point = LH3DTech::g_cache_t_points;
		unsigned long* flags = LH3DTech::g_cache_flags;
		int            count = 0;
		for (int i = 0; i < NumTriangles; i++)
		{
			LH3DVertex* a = &vertices[triangle->A];
			LH3DVertex* b = &vertices[triangle->B];
			LH3DVertex* c = &vertices[triangle->C];
			LHPoint     normal;
			normal = a->normal + b->normal + c->normal;
			normal *= InverseSquareRoot(normal.GetNormeSq());

			point->color = ScaleColor(snowColor, GetLightLevel(FloatToInt(g_vect_light * a->normal * LH3D_LIGHT_MAX)));
			point->specular = LH3DMesh::g_specular;
			GetSnowUV(&point->uv.x, &point->uv.y, &normal, a);
			TransformToClipping(point, a->position, LH3DTech::g_current_matrix);
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
			flags++;
			point++;

			point->color = ScaleColor(snowColor, GetLightLevel(FloatToInt(g_vect_light * b->normal * LH3D_LIGHT_MAX)));
			point->specular = LH3DMesh::g_specular;
			GetSnowUV(&point->uv.x, &point->uv.y, &normal, b);
			TransformToClipping(point, b->position, LH3DTech::g_current_matrix);
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
			flags++;
			point++;

			point->color = ScaleColor(snowColor, GetLightLevel(FloatToInt(g_vect_light * c->normal * LH3D_LIGHT_MAX)));
			point->specular = LH3DMesh::g_specular;
			GetSnowUV(&point->uv.x, &point->uv.y, &normal, c);
			TransformToClipping(point, c->position, LH3DTech::g_current_matrix);
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
			flags++;
			triangle++;
			point++;
			count++;
			if (count >= LH3D_SNOW_BATCH_TRIANGLES || i == NumTriangles - 1)
			{
				LH3DTech::g_points_count = count * 3;
				LH3DTech::g_index_count = 0;
				point = LH3DTech::g_cache_t_points;
				flags = LH3DTech::g_cache_flags;
				LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
				int k;
				if (Material.IsDoubleSided())
				{
					for (k = 0; k < count; k++)
					{
						int index = k * 3;
						if (flags[index] | flags[index + 1] | flags[index + 2])
						{
							if (!(flags[index] & flags[index + 1] & flags[index + 2]))
							{
								LH3DTech::ClipTriangle(index, index + 1, index + 2, LH3DTech::CLIP_CODE_NEAR);
							}
						}
						else
						{
							LH3DTech::g_list_indices[LH3DTech::g_index_count++] = index;
							LH3DTech::g_list_indices[LH3DTech::g_index_count++] = index + 1;
							LH3DTech::g_list_indices[LH3DTech::g_index_count++] = index + 2;
						}
					}
				}
				else
				{
					for (k = 0; k < count; k++)
					{
						int index = k * 3;
						if (flags[index] | flags[index + 1] | flags[index + 2])
						{
							if (!(flags[index] & flags[index + 1] & flags[index + 2]))
							{
								LH3DTech::ClipTriangle(index, index + 1, index + 2, LH3DTech::CLIP_CODE_NEAR);
							}
						}
						else if ((point[index + 2].y - point[index].y) * (point[index + 1].x - point[index].x) -
						             (point[index + 1].y - point[index].y) * (point[index + 2].x - point[index].x) >
						         0.0f)
						{
							LH3DTech::g_list_indices[LH3DTech::g_index_count++] = index;
							LH3DTech::g_list_indices[LH3DTech::g_index_count++] = index + 1;
							LH3DTech::g_list_indices[LH3DTech::g_index_count++] = index + 2;
						}
					}
				}
				if (LH3DTech::g_index_count)
				{
					LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count,
					                         LH3DTech::g_list_indices, LH3DTech::g_index_count);
				}
				count = 0;
			}
		}
	}
	else
	{
		LH3DVertex*    vertex = Vertices;
		Vertex3D*      point = LH3DTech::g_cache_t_points;
		unsigned long* flags = LH3DTech::g_cache_flags;
		if (LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED)
		{
			int start = 0;
			for (int i = 0; i < NumVertexGroups; i++)
			{
				LH3DVertexGroup* group = &VertexGroups[i];
				LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
				LHMatrix         inverse;
				inverse.SetInverse(*matrix);
				LHPoint sun = LH3DTech::g_sun_light_clipping;
				LHPoint light;
				TransformPointBy(&light, sun, &inverse);
				float norm = light.GetNormeSq();
				light *= InverseSquareRoot(norm);
				for (int j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
				{
					TransformToClipping(point, vertex->position, matrix);
					point->specular = LH3DMesh::g_specular;
					point->color =
						ScaleColor(snowColor, GetLightLevel(FloatToInt(light * vertex->normal * LH3D_LIGHT_MAX)));
					float v = vertex->position.y * 0.3f + vertex->position.z + 10.0f;
					float u = vertex->position.x + vertex->position.z * 0.1f;
					u -= (int)u + 5.0f;
					v -= (int)v + 5.0f;
					point->uv.Set((u - (int)u) * 0.2f + vertex->normal.y, (v - (int)v) * 0.2f + vertex->normal.x);
					ComputeClipFlags(point, flags);
					if (!*flags)
					{
						point->rhw = 1.0f / point->rhw;
						point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
						if (point->x < 0.0f)
						{
							point->x = 0.0f;
						}
						else if (point->x > LH3DTech::g_max_screen[0])
						{
							point->x = LH3DTech::g_max_screen[0];
						}
						point->y = LH3DTech::g_info_transform.HalfRes.y -
						           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
						if (point->y < 0.0f)
						{
							point->y = 0.0f;
						}
						else if (point->y > LH3DTech::g_max_screen[1])
						{
							point->y = LH3DTech::g_max_screen[1];
						}
						point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
						point->z = 1.0f - point->rhw;
					}
				}
				start += group->vertex_count;
			}
		}
		else
		{
			LHMatrix envMatrix = LH3DObject::g_current_object_in_draw->matrix;
			envMatrix.m[9] = envMatrix.m[10] = envMatrix.m[11] = 0.0f;
			envMatrix.NormaliseMatrixOnly();
			for (int i = 0; i < NumVertices; flags++, point++, vertex++, i++)
			{
				TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
				point->specular = LH3DMesh::g_specular;
				point->color =
					ScaleColor(snowColor, GetLightLevel(FloatToInt(g_vect_light * vertex->normal * LH3D_LIGHT_MAX)));
				float v = vertex->position.y * 0.3f + vertex->position.z + 10.0f;
				float u = vertex->position.x + vertex->position.z * 0.1f;
				u -= (int)u + 5.0f;
				v -= (int)v + 5.0f;
				point->uv.Set(
					(u - (int)u) * 0.2f + (envMatrix.m[1] * vertex->normal.x + envMatrix.m[4] * vertex->normal.y +
				                           envMatrix.m[7] * vertex->normal.z),
					(v - (int)v) * 0.2f + (envMatrix.m[0] * vertex->normal.x + envMatrix.m[3] * vertex->normal.y +
				                           envMatrix.m[6] * vertex->normal.z));
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
		}

		uint16_t pointsCount = NumVertices;
		LH3DTech::g_index_count = 0;
		LH3DTech::g_points_count = pointsCount;
		LH3DTriangle* triangle = Triangles;
		LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
		unsigned long* clipFlags = LH3DTech::g_cache_flags;
		int            j;
		uint16_t       a;
		uint16_t       b;
		uint16_t       c;
		if (Material.IsDoubleSided())
		{
			for (j = 0; j < NumTriangles; triangle++, j++)
			{
				a = triangle->A;
				b = triangle->B;
				c = triangle->C;
				if (clipFlags[a] | clipFlags[b] | clipFlags[c])
				{
					if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
					{
						LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
					}
				}
				else
				{
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
				}
			}
		}
		else
		{
			Vertex3D* points = LH3DTech::g_cache_t_points;
			for (j = 0; j < NumTriangles; triangle++, j++)
			{
				a = triangle->A;
				b = triangle->B;
				c = triangle->C;
				if (clipFlags[a] | clipFlags[b] | clipFlags[c])
				{
					if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
					{
						LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
					}
				}
				else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
				             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
				         0.0f)
				{
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
				}
			}
		}
		if (LH3DTech::g_index_count)
		{
			LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
			                         LH3DTech::g_index_count);
		}
	}
}

void LH3DPrimitive::DrawEnvMapMT()
{
	int envMap = LH3DObject::g_env_map_mode;
	if (!envMap)
	{
		envMap = Material.GetEnvMap();
	}
	envMap = g_envmaptable[envMap];
	LH3DRender::Set2ndTex(envMap, NULL, false);
	if (envMap == LH3D_2ND_TEX_MODE_SINGLE)
	{
		DrawLit();
		return;
	}
	g_current_primitive = this;
	Vertex3DMT*    point = (Vertex3DMT*)LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		LHMatrix envMatrix = LH3DObject::g_current_object_in_draw->matrix;
		envMatrix.SetTranslateOnly(LHPoint(0.0f, 0.0f, 0.0f));
		envMatrix.PostMultiplyMatrixOnly(LH3DTech::g_world_to_camera);
		envMatrix.SetTranslateOnly(LHPoint(0.0f, 0.0f, 0.0f));
		envMatrix.NormaliseMatrixOnly();
		envMatrix.RotateZ(LH3DObject::g_env_map_z_rot);
		for (int i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			point->color = ScaleColor(LH3DMesh::g_color,
			                          GetLightLevel(FloatToInt(g_vect_light * vertex->normal * LH3D_LIGHT_MAX)));
			point->uv = vertex->uv;
			float u = ((envMatrix.m[0] * vertex->normal.x + envMatrix.m[3] * vertex->normal.y +
			            envMatrix.m[6] * vertex->normal.z) *
			               LH3DObject::g_env_map_zoom_x +
			           1.0f) *
			          LH3D_ENV_MAP_UV_SCALE;
			float v = ((envMatrix.m[1] * vertex->normal.x + envMatrix.m[4] * vertex->normal.y +
			            envMatrix.m[7] * vertex->normal.z) *
			               LH3DObject::g_env_map_zoom_y +
			           1.0f) *
			          LH3D_ENV_MAP_UV_SCALE;
			point->uv2.x = u * LH3DObject::g_cur_env_mat_info->ScaleU + LH3DObject::g_cur_env_mat_info->OffsetU;
			point->uv2.y = v * LH3DObject::g_cur_env_mat_info->ScaleV + LH3DObject::g_cur_env_mat_info->OffsetV;
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			LHMatrix         inverse;
			inverse.SetInverse(*matrix);
			LHPoint light = inverse * LH3DTech::GetSun();
			float   norm = light.GetNorm();
			light *= InverseSquareRoot(norm);
			LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
			LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
			LHMatrix envMatrix = LH3DTech::g_world_to_camera;
			envMatrix.PreMultiply(*matrix);
			envMatrix.NormaliseMatrixOnly();
			envMatrix.m[9] = 0.0f;
			envMatrix.m[10] = 0.0f;
			envMatrix.m[11] = 0.0f;
			for (int j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, &LH3DTech::g_local_to_clipping);
				point->specular = LH3DMesh::g_specular;
				point->color =
					ScaleColor(LH3DMesh::g_color, GetLightLevel(FloatToInt(light * vertex->normal * LH3D_LIGHT_MAX)));
				point->uv = vertex->uv;
				float u = (envMatrix.m[0] * vertex->normal.x + envMatrix.m[3] * vertex->normal.y +
				           envMatrix.m[6] * vertex->normal.z + 1.0f) *
				          LH3D_ENV_MAP_UV_SCALE;
				float v = (envMatrix.m[1] * vertex->normal.x + envMatrix.m[4] * vertex->normal.y +
				           envMatrix.m[7] * vertex->normal.z + 1.0f) *
				          LH3D_ENV_MAP_UV_SCALE;
				point->uv2.x = u * LH3DObject::g_cur_env_mat_info->ScaleU + LH3DObject::g_cur_env_mat_info->OffsetU;
				point->uv2.y = v * LH3DObject::g_cur_env_mat_info->ScaleV + LH3DObject::g_cur_env_mat_info->OffsetV;
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}

	LH3DTech::g_points_count = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            k;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleMT(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3DMT* points = (Vertex3DMT*)LH3DTech::g_cache_t_points;
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleMT(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		if (LH3DObject::g_env_map_tex_color_env_alpha)
		{
			LH3DRender::SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_SELECTARG1);
			LH3DRender::SetTextureStageState(1, D3DTSS_COLORARG1, D3DTA_CURRENT);
			LH3DRender::SetTextureStageState(1, D3DTSS_ALPHAOP, D3DTOP_MODULATE);
			LH3DRender::SetTextureStageState(1, D3DTSS_ALPHAARG1, D3DTA_CURRENT);
			LH3DRender::SetTextureStageState(1, D3DTSS_ALPHAARG2, D3DTA_TEXTURE);
		}
		LH3DRender::DrawTriangleMT((Vertex3DMT*)LH3DTech::g_cache_t_points, LH3DTech::g_points_count,
		                           LH3DTech::g_list_indices, LH3DTech::g_index_count);
	}
	LH3DRender::Set2ndTex(LH3D_2ND_TEX_MODE_OFF, NULL, false);
}

void LH3DPrimitive::DrawEnvMapST()
{
	g_current_primitive = this;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		LHMatrix envMatrix = LH3DObject::g_current_object_in_draw->matrix;
		envMatrix.SetTranslateOnly(LHPoint(0.0f, 0.0f, 0.0f));
		envMatrix.PostMultiplyMatrixOnly(LH3DTech::g_world_to_camera);
		envMatrix.SetTranslateOnly(LHPoint(0.0f, 0.0f, 0.0f));
		envMatrix.NormaliseMatrixOnly();
		envMatrix.RotateZ(LH3DObject::g_env_map_z_rot);
		for (int i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			point->color = LH3DMesh::g_color;
			float u = ((envMatrix.m[0] * vertex->normal.x + envMatrix.m[3] * vertex->normal.y +
			            envMatrix.m[6] * vertex->normal.z) *
			               LH3DObject::g_env_map_zoom_x +
			           1.0f) *
			          LH3D_ENV_MAP_UV_SCALE;
			float v = ((envMatrix.m[1] * vertex->normal.x + envMatrix.m[4] * vertex->normal.y +
			            envMatrix.m[7] * vertex->normal.z) *
			               LH3DObject::g_env_map_zoom_y +
			           1.0f) *
			          LH3D_ENV_MAP_UV_SCALE;
			point->uv.x = u;
			point->uv.y = v;
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			LHMatrix         inverse;
			inverse.SetInverse(*matrix);
			LHPoint light = inverse * LH3DTech::GetSun();
			float   norm = light.GetNorm();
			light *= InverseSquareRoot(norm);
			LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
			LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
			LHMatrix envMatrix = LH3DTech::g_world_to_camera;
			envMatrix.PreMultiply(*matrix);
			envMatrix.NormaliseMatrixOnly();
			envMatrix.m[9] = 0.0f;
			envMatrix.m[10] = 0.0f;
			envMatrix.m[11] = 0.0f;
			for (int j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, &LH3DTech::g_local_to_clipping);
				point->specular = LH3DMesh::g_specular;
				point->color =
					ScaleColor(LH3DMesh::g_color, GetLightLevel(FloatToInt(light * vertex->normal * LH3D_LIGHT_MAX)));
				float u = (envMatrix.m[0] * vertex->normal.x + envMatrix.m[3] * vertex->normal.y +
				           envMatrix.m[6] * vertex->normal.z + 1.0f) *
				          LH3D_ENV_MAP_UV_SCALE;
				float v = (envMatrix.m[1] * vertex->normal.x + envMatrix.m[4] * vertex->normal.y +
				           envMatrix.m[7] * vertex->normal.z + 1.0f) *
				          LH3D_ENV_MAP_UV_SCALE;
				point->uv.x = u;
				point->uv.y = v;
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}

	LH3DTech::g_points_count = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            k;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                         LH3DTech::g_index_count);
	}
}

void LH3DPrimitive::DrawRefMapMT()
{
	g_current_primitive = this;
	Vertex3DMT*    point = (Vertex3DMT*)LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		LHPoint eye = *LH3DTech::GetCameraPosition();
		LH3DTech::g_world_to_local.TransformPoint(eye);
		for (int i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			point->color = ScaleColor(LH3DMesh::g_color,
			                          GetLightLevel(FloatToInt(g_vect_light * vertex->normal * LH3D_LIGHT_MAX)));
			point->uv = vertex->uv;
			LHPoint reflection = eye - vertex->position;
			float   norm = reflection.GetNorm();
			reflection *= InverseSquareRoot(norm);
			reflection += (vertex->normal * reflection.DotProduct(vertex->normal) - reflection) * 2.0f;
			float v = 0.5f - (float)asin(reflection.y) * (1.0f / PI_F);
			float u = (float)atan2(reflection.z, reflection.x) * (1.0f / TWO_PI) + 0.5f;
			if (u > 1.0f)
			{
				u -= 1.0f;
			}
			point->uv2.x = u;
			point->uv2.y = v;
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			LHMatrix         inverse;
			inverse.SetInverse(*matrix);
			LHPoint light;
			LHMATRIX_TRANSFORM_POINT(light, LH3DTech::GetSun(), inverse);
			float norm = light.GetNorm();
			light *= InverseSquareRoot(norm);
			LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
			LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
			LHMatrix envMatrix = LH3DTech::g_world_to_camera;
			envMatrix.PreMultiply(*matrix);
			envMatrix.NormaliseMatrixOnly();
			envMatrix.m[9] = 0.0f;
			envMatrix.m[10] = 0.0f;
			envMatrix.m[11] = 0.0f;
			for (int j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, &LH3DTech::g_local_to_clipping);
				point->specular = LH3DMesh::g_specular;
				point->color =
					ScaleColor(LH3DMesh::g_color, GetLightLevel(FloatToInt(light * vertex->normal * LH3D_LIGHT_MAX)));
				point->uv = vertex->uv;
				float u = (envMatrix.m[0] * vertex->normal.x + envMatrix.m[3] * vertex->normal.y +
				           envMatrix.m[6] * vertex->normal.z + 1.0f) *
				          LH3D_ENV_MAP_UV_SCALE;
				float v = (envMatrix.m[1] * vertex->normal.x + envMatrix.m[4] * vertex->normal.y +
				           envMatrix.m[7] * vertex->normal.z + 1.0f) *
				          LH3D_ENV_MAP_UV_SCALE;
				point->uv2.x = u;
				point->uv2.y = v;
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}

	LH3DTech::g_points_count = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            k;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleMT(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3DMT* points = (Vertex3DMT*)LH3DTech::g_cache_t_points;
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleMT(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::DrawTriangleMT((Vertex3DMT*)LH3DTech::g_cache_t_points, LH3DTech::g_points_count,
		                           LH3DTech::g_list_indices, LH3DTech::g_index_count);
	}
}

LHPoint  l_point[LH3D_MAX_L_POINTS];
bool32_t l_bool[LH3D_MAX_L_POINTS];

void LH3DPrimitive::DrawNormals() {}

void __fastcall LH3DPrimitive::Blend(LH3DPrimitive* from, LH3DPrimitive* to, float blend)
{
	LH3DVertex* vertex = Vertices;
	LH3DVertex* fromVertex = from->Vertices;
	LH3DVertex* toVertex = to->Vertices;
	blend = 1.0f - blend;
	for (int i = 0; i < NumVertices; vertex++, fromVertex++, toVertex++, i++)
	{
		vertex->position.x = blend * fromVertex->position.x + (1.0f - blend) * toVertex->position.x;
		vertex->position.y = blend * fromVertex->position.y + (1.0f - blend) * toVertex->position.y;
		vertex->position.z = blend * fromVertex->position.z + (1.0f - blend) * toVertex->position.z;
		vertex->normal.x = blend * fromVertex->normal.x + (1.0f - blend) * toVertex->normal.x;
		vertex->normal.y = blend * fromVertex->normal.y + (1.0f - blend) * toVertex->normal.y;
		vertex->normal.z = blend * fromVertex->normal.z + (1.0f - blend) * toVertex->normal.z;
		vertex->uv.x = blend * fromVertex->uv.x + (1.0f - blend) * toVertex->uv.x;
		vertex->uv.y = blend * fromVertex->uv.y + (1.0f - blend) * toVertex->uv.y;
	}
}

void LH3DPrimitive::UpdatePreComputeLight(LHMatrix* matrix)
{
	LH3DTech::g_world_to_local.SetInverse(*matrix);
	LHPoint sun = LH3DTech::GetSun();
	TransformPointBy(&g_vect_light, sun, &LH3DTech::g_world_to_local);
	g_vect_light *= InverseSquareRoot(g_vect_light.GetNorm());
}

bool32_t LH3DPrimitive::CheckTriangleCollide()
{
	g_current_primitive = this;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, &LH3DTech::g_local_to_clipping);
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           point->y * (point->rhw * LH3DTech::g_info_transform.HalfRes.y);
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix;
			if (LH3DObject::g_current_object_in_draw->IsComplex())
			{
				LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
				LH3DTech::g_local_to_clipping.PreMultiply(LH3DMesh::g_current_matrix[group->BoneIndex]);
				matrix = &LH3DTech::g_local_to_clipping;
			}
			else
			{
				matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			}
			for (int j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, matrix);
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}

	int triangleCount = LH3DTech::g_index_count / 3;
	if (triangleCount)
	{
		LHCoordF mouse;
		mouse.x = (float)LH3DObject::g_selected_px;
		mouse.y = (float)LH3DObject::g_selected_py;
		for (j = 0; j < triangleCount; j++)
		{
			Vertex3D* pointA = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[j * 3]];
			Vertex3D* pointB = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[j * 3 + 1]];
			Vertex3D* pointC = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[j * 3 + 2]];
			LHCoordF  offset[3];
			offset[0].x = pointA->x - mouse.x;
			offset[0].y = pointA->y - mouse.y;
			offset[1].x = pointB->x - mouse.x;
			offset[1].y = pointB->y - mouse.y;
			offset[2].x = pointC->x - mouse.x;
			offset[2].y = pointC->y - mouse.y;
			if (offset[0].x * offset[1].y - offset[1].x * offset[0].y > 0.0f)
			{
				for (int corner = 1; corner < 3; corner++)
				{
					int nextCorner = (corner + 1) % 3;
					if (offset[corner].x * offset[nextCorner].y - offset[nextCorner].x * offset[corner].y < 0.0f)
					{
						goto outside;
					}
				}
				ComputeZForTriangleCollide(pointA, pointB, pointC);
				return true;
			}
			else
			{
				for (int corner = 1; corner < 3; corner++)
				{
					int nextCorner = (corner + 1) % 3;
					if (offset[corner].x * offset[nextCorner].y - offset[nextCorner].x * offset[corner].y > 0.0f)
					{
						goto outside;
					}
				}
				ComputeZForTriangleCollide(pointA, pointB, pointC);
				return true;
			}
		outside:;
		}
	}
	return false;
}

bool32_t LH3DPrimitive::CheckTriangleCollideMorph()
{
	g_current_primitive = this;
	LH3DVertex*    vertex = Vertices;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	for (int i = 0; i < NumVertices; flags++, point++, vertex++, g_vertical_translate_vertices++, i++)
	{
		LHPoint position(vertex->position.x, vertex->position.y + *g_vertical_translate_vertices, vertex->position.z);
		TransformToClipping(point, position, LH3DTech::g_current_matrix);
		ComputeClipFlags(point, flags);
		if (!*flags)
		{
			point->rhw = 1.0f / point->rhw;
			point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			if (point->x < 0.0f)
			{
				point->x = 0.0f;
			}
			else if (point->x > LH3DTech::g_max_screen[0])
			{
				point->x = LH3DTech::g_max_screen[0];
			}
			point->y =
				LH3DTech::g_info_transform.HalfRes.y - (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
			if (point->y < 0.0f)
			{
				point->y = 0.0f;
			}
			else if (point->y > LH3DTech::g_max_screen[1])
			{
				point->y = LH3DTech::g_max_screen[1];
			}
			point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
		}
	}

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}

	int triangleCount = LH3DTech::g_index_count / 3;
	if (triangleCount)
	{
		LHCoordF mouse;
		mouse.x = (float)LH3DObject::g_selected_px;
		mouse.y = (float)LH3DObject::g_selected_py;
		for (j = 0; j < triangleCount; j++)
		{
			Vertex3D* pointA = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[j * 3]];
			Vertex3D* pointB = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[j * 3 + 1]];
			Vertex3D* pointC = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[j * 3 + 2]];
			LHCoordF  offset[3];
			offset[0].x = pointA->x - mouse.x;
			offset[0].y = pointA->y - mouse.y;
			offset[1].x = pointB->x - mouse.x;
			offset[1].y = pointB->y - mouse.y;
			offset[2].x = pointC->x - mouse.x;
			offset[2].y = pointC->y - mouse.y;
			if (offset[0].x * offset[1].y - offset[1].x * offset[0].y > 0.0f)
			{
				for (int corner = 1; corner < 3; corner++)
				{
					int nextCorner = (corner + 1) % 3;
					if (offset[corner].x * offset[nextCorner].y - offset[nextCorner].x * offset[corner].y < 0.0f)
					{
						goto outside;
					}
				}
				ComputeZForTriangleCollide(pointA, pointB, pointC);
				return true;
			}
			else
			{
				for (int corner = 1; corner < 3; corner++)
				{
					int nextCorner = (corner + 1) % 3;
					if (offset[corner].x * offset[nextCorner].y - offset[nextCorner].x * offset[corner].y > 0.0f)
					{
						goto outside;
					}
				}
				ComputeZForTriangleCollide(pointA, pointB, pointC);
				return true;
			}
		outside:;
		}
	}
	return false;
}

bool32_t LH3DPrimitive::CheckPixelCollide()
{
	g_current_primitive = this;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, &LH3DTech::g_local_to_clipping);
			ComputeClipFlags(point, flags);
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->y * point->rhw) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
			LH3DTech::g_local_to_clipping.PreMultiply(LH3DMesh::g_current_matrix[group->BoneIndex]);
			for (int j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, &LH3DTech::g_local_to_clipping);
				ComputeClipFlags(point, flags);
				point->uv.x = vertex->uv.x;
				point->uv.y = vertex->uv.y;
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}

	int triangleCount = LH3DTech::g_index_count / 3;
	if (triangleCount)
	{
		LHCoordF mouse;
		mouse.x = (float)LH3DObject::g_selected_px;
		mouse.y = (float)LH3DObject::g_selected_py;
		for (j = 0; j < triangleCount; j++)
		{
			Vertex3D* pointA = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[j * 3]];
			Vertex3D* pointB = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[j * 3 + 1]];
			Vertex3D* pointC = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[j * 3 + 2]];
			LHCoordF  offset[3];
			offset[0].x = pointA->x - mouse.x;
			offset[0].y = pointA->y - mouse.y;
			offset[1].x = pointB->x - mouse.x;
			offset[1].y = pointB->y - mouse.y;
			offset[2].x = pointC->x - mouse.x;
			offset[2].y = pointC->y - mouse.y;
			if (offset[0].x * offset[1].y - offset[1].x * offset[0].y > 0.0f)
			{
				for (int corner = 1; corner < 3; corner++)
				{
					int nextCorner = (corner + 1) % 3;
					if (offset[corner].x * offset[nextCorner].y - offset[nextCorner].x * offset[corner].y < 0.0f)
					{
						goto outside;
					}
				}
				if (ComputeVertexInsideTriangle(pointA, pointB, pointC))
				{
					return true;
				}
			}
			else
			{
				for (int corner = 1; corner < 3; corner++)
				{
					int nextCorner = (corner + 1) % 3;
					if (offset[corner].x * offset[nextCorner].y - offset[nextCorner].x * offset[corner].y > 0.0f)
					{
						goto outside;
					}
				}
				if (ComputeVertexInsideTriangle(pointA, pointB, pointC))
				{
					return true;
				}
			}
		outside:;
		}
	}
	return false;
}

void __fastcall LH3DPrimitive::ComputeZForTriangleCollide(Vertex3D* top, Vertex3D* middle, Vertex3D* bottom)
{
	Vertex3D* temp;
	if (top->y < middle->y)
	{
		if (middle->y >= bottom->y)
		{
			if (top->y < bottom->y)
			{
				temp = middle;
				middle = bottom;
				bottom = temp;
			}
			else
			{
				temp = top;
				top = bottom;
				bottom = middle;
				middle = temp;
			}
		}
	}
	else if (top->y < bottom->y)
	{
		temp = middle;
		middle = top;
		top = temp;
	}
	else if (middle->y < bottom->y)
	{
		temp = middle;
		middle = bottom;
		bottom = top;
		top = temp;
	}
	else
	{
		temp = bottom;
		bottom = top;
		top = temp;
	}

	Vertex3D longEdge;
	Vertex3D shortEdge;
	float    y = (float)LH3DObject::g_selected_py;
	float    dy1 = top->y - y;
	float    dy2 = bottom->y - y;
	float    t = dy1 / (dy1 - dy2);
	longEdge.rhw = (1.0f - t) * top->rhw + t * bottom->rhw;
	longEdge.x = (1.0f - t) * top->x + t * bottom->x;
	if (y < middle->y)
	{
		bottom = middle;
	}
	else
	{
		top = middle;
	}
	dy1 = top->y - y;
	dy2 = bottom->y - y;
	float t2 = dy1 / (dy1 - dy2);
	shortEdge.rhw = (1.0f - t2) * top->rhw + t2 * bottom->rhw;
	shortEdge.x = (1.0f - t2) * top->x + t2 * bottom->x;
	float x = (float)LH3DObject::g_selected_px;
	float dx1 = shortEdge.x - x;
	float dx2 = longEdge.x - x;
	t = dx1 / (dx1 - dx2);
	g_vertex_inside_triangle.rhw = (1.0f - t) * shortEdge.rhw + t * longEdge.rhw;
}

bool32_t __fastcall LH3DPrimitive::ComputeVertexInsideTriangle(Vertex3D* top, Vertex3D* middle, Vertex3D* bottom)
{
	Vertex3D* temp;
	if (top->y < middle->y)
	{
		if (middle->y >= bottom->y)
		{
			if (top->y < bottom->y)
			{
				temp = middle;
				middle = bottom;
				bottom = temp;
			}
			else
			{
				temp = top;
				top = bottom;
				bottom = middle;
				middle = temp;
			}
		}
	}
	else if (top->y < bottom->y)
	{
		temp = middle;
		middle = top;
		top = temp;
	}
	else if (middle->y < bottom->y)
	{
		temp = middle;
		middle = bottom;
		bottom = top;
		top = temp;
	}
	else
	{
		temp = bottom;
		bottom = top;
		top = temp;
	}

	Vertex3D longEdge;
	Vertex3D shortEdge;
	float    y = (float)LH3DObject::g_selected_py;
	float    dy1 = top->y - y;
	float    dy2 = bottom->y - y;
	float    t = dy1 / (dy1 - dy2);
	float    s = 1.0f - t;
	longEdge.rhw = s * top->rhw + t * bottom->rhw;
	longEdge.x = s * top->x + t * bottom->x;
	longEdge.uv.x = (s * (top->uv.x * top->rhw) + (t * bottom->uv.x) * bottom->rhw) / longEdge.rhw;
	longEdge.uv.y = (s * (top->uv.y * top->rhw) + (t * bottom->uv.y) * bottom->rhw) / longEdge.rhw;
	if (y < middle->y)
	{
		bottom = middle;
	}
	else
	{
		top = middle;
	}
	dy1 = top->y - y;
	dy2 = bottom->y - y;
	float t2 = dy1 / (dy1 - dy2);
	float s2 = 1.0f - t2;
	shortEdge.rhw = s2 * top->rhw + t2 * bottom->rhw;
	shortEdge.x = s2 * top->x + t2 * bottom->x;
	shortEdge.uv.x = (s2 * top->uv.x * top->rhw + t2 * bottom->uv.x * bottom->rhw) / shortEdge.rhw;
	shortEdge.uv.y = (s2 * top->uv.y * top->rhw + t2 * bottom->uv.y * bottom->rhw) / shortEdge.rhw;
	float x = (float)LH3DObject::g_selected_px;
	float dx1 = shortEdge.x - x;
	float dx2 = longEdge.x - x;
	t = dx1 / (dx1 - dx2);
	s = 1.0f - t;
	g_vertex_inside_triangle.rhw = s * shortEdge.rhw + t * longEdge.rhw;
	g_vertex_inside_triangle.uv.x =
		(s * shortEdge.uv.x * shortEdge.rhw + t * longEdge.uv.x * longEdge.rhw) / g_vertex_inside_triangle.rhw;
	g_vertex_inside_triangle.uv.y =
		(s * shortEdge.uv.y * shortEdge.rhw + t * longEdge.uv.y * longEdge.rhw) / g_vertex_inside_triangle.rhw;
	if (Material.texture)
	{
		return Material.texture->IsCollide(g_vertex_inside_triangle.uv.x, g_vertex_inside_triangle.uv.y);
	}
	return true;
}

void LH3DPrimitive::Draw()
{
	g_current_primitive = this;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->color = LH3DMesh::g_color;
			point->specular = LH3DMesh::g_specular;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           point->rhw * (point->y * LH3DTech::g_info_transform.HalfRes.y);
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			for (int j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, matrix);
				point->color = LH3DMesh::g_color;
				point->specular = LH3DMesh::g_specular;
				point->uv = vertex->uv;
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}
	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
	g_current_index_primitive++;
}

void LH3DPrimitive::DrawUnlitWithUVRemap()
{
	if (!g_lightmap_remap_uvs)
	{
		Draw();
		return;
	}
	g_current_primitive = this;
	int            i;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->color = LH3DMesh::g_color;
			point->specular = LH3DMesh::g_specular;
			point->uv.x =
				(g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MAX_U] - g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_U]) *
					vertex->uv.x +
				g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_U];
			point->uv.y =
				(g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MAX_V] - g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_V]) *
					vertex->uv.y +
				g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_V];
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int k = 0; k < NumVertexGroups; k++)
		{
			LH3DVertexGroup* group = &VertexGroups[k];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			for (i = start; i < start + group->vertex_count; flags++, point++, vertex++, i++)
			{
				TransformToClipping(point, vertex->position, matrix);
				point->color = LH3DMesh::g_color;
				point->specular = LH3DMesh::g_specular;
				point->uv.x = (g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MAX_U] -
				               g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_U]) *
				                  vertex->uv.x +
				              g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_U];
				point->uv.y = (g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MAX_V] -
				               g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_V]) *
				                  vertex->uv.y +
				              g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_V];
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           point->rhw * (point->y * LH3DTech::g_info_transform.HalfRes.y);
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}
	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
	g_current_index_primitive++;
}

void LH3DPrimitive::DrawLightMap(LH3DMaterial* light_map, float* uvs, bool32_t reverse_winding, bool check_mouse)
{
	g_current_primitive = this;
	Vertex3DMT*    point = (Vertex3DMT*)LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			float depth = point->rhw;
			if (depth <= g_fog_min)
			{
				point->color = LH3DMesh::g_color;
				point->specular = LH3DMesh::g_specular;
			}
			else if (depth >= g_fog_max)
			{
				point->color = g_fog_table[LH3D_FOG_TABLE_SIZE - 1][LH3D_FOG_COMPONENT_DIFFUSE];
				point->specular = g_fog_table[LH3D_FOG_TABLE_SIZE - 1][LH3D_FOG_COMPONENT_SPECULAR];
			}
			else
			{
				int index = (int)((depth - g_fog_min) * g_delta_fog);
				if (index < 0)
				{
					index = 0;
				}
				else if (index > LH3D_FOG_TABLE_SIZE - 1)
				{
					index = LH3D_FOG_TABLE_SIZE - 1;
				}
				int fogLevel = index / LH3D_FOG_TABLE_STEPS_PER_LEVEL;
				point->color =
					LH3D_BLEND_COLOR(LH3DMesh::g_color, g_fog_table[index][LH3D_FOG_COMPONENT_DIFFUSE], fogLevel);
				point->specular =
					LH3D_BLEND_COLOR(LH3DMesh::g_specular, g_fog_table[index][LH3D_FOG_COMPONENT_SPECULAR], fogLevel);
			}
			point->color = point->color & 0xffffff | LH3DMesh::g_color & 0xff000000;
			point->uv2.x = *uvs++;
			point->uv2.y = *uvs++;
			if (g_lightmap_remap_uvs)
			{
				point->uv.x = (g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MAX_U] -
				               g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_U]) *
				                  vertex->uv.x +
				              g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_U];
				point->uv.y = (g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MAX_V] -
				               g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_V]) *
				                  vertex->uv.y +
				              g_lightmap_remap_uvs[LH3D_LIGHTMAP_REMAP_MIN_V];
			}
			else
			{
				point->uv.x = vertex->uv.x;
				point->uv.y = vertex->uv.y;
			}
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
			LH3DTech::g_local_to_clipping.PreMultiply(LH3DMesh::g_current_matrix[group->BoneIndex]);
			for (int j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, &LH3DTech::g_local_to_clipping);
				point->color = LH3DMesh::g_color;
				point->specular = LH3DMesh::g_specular;
				point->uv2.x = *uvs++;
				point->uv2.y = *uvs++;
				point->uv.x = vertex->uv.x;
				point->uv.y = vertex->uv.y;
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}

	LH3DTech::g_points_count = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            k;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleMT(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else if (reverse_winding)
	{
		Vertex3DMT* points = (Vertex3DMT*)LH3DTech::g_cache_t_points;
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->C;
			b = triangle->B;
			c = triangle->A;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleMT(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3DMT* points = (Vertex3DMT*)LH3DTech::g_cache_t_points;
		for (k = 0; k < NumTriangles; triangle++, k++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleMT(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		if (!LH3DRender::g_b_do_update_material)
		{
			LH3DRender::g_b_do_update_material = true;
			LH3DRender::SetMaterial(light_map, 1);
			LH3DRender::g_b_do_update_material = false;
		}
		else
		{
			LH3DRender::SetMaterial(light_map, 1);
		}
		if (light_map && !LH3DRender::g_use_multipass)
		{
			LH3DMaterial::g_list_render_func[light_map->GetMode()].Func(light_map, 1);
		}
		LH3DRender::DrawTriangleMT((Vertex3DMT*)LH3DTech::g_cache_t_points, LH3DTech::g_points_count,
		                           LH3DTech::g_list_indices, LH3DTech::g_index_count);
		LH3DRender::SetTexture(NULL, 1);
	}
	if (check_mouse)
	{
		DoMouseCheckMT();
	}
}

void LH3DPrimitive::DoMouseCheckMT()
{
	int triangleCount = LH3DTech::g_index_count / 3;
	if (triangleCount)
	{
		LHCoordF mouse;
		mouse.x = (float)LH3DObject::g_selected_px;
		mouse.y = (float)LH3DObject::g_selected_py;
		for (int i = 0; i < triangleCount; i++)
		{
			Vertex3DMT* pointA = &((Vertex3DMT*)LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[i * 3]];
			Vertex3DMT* pointB = &((Vertex3DMT*)LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[i * 3 + 1]];
			Vertex3DMT* pointC = &((Vertex3DMT*)LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[i * 3 + 2]];
			LHCoordF    offset[3];
			offset[0].x = pointA->x - mouse.x;
			offset[0].y = pointA->y - mouse.y;
			offset[1].x = pointB->x - mouse.x;
			offset[1].y = pointB->y - mouse.y;
			offset[2].x = pointC->x - mouse.x;
			offset[2].y = pointC->y - mouse.y;
			if (offset[0].x * offset[1].y - offset[1].x * offset[0].y > 0.0f)
			{
				for (int corner = 1; corner < 3; corner++)
				{
					int nextCorner = (corner + 1) % 3;
					if (offset[corner].x * offset[nextCorner].y - offset[nextCorner].x * offset[corner].y < 0.0f)
					{
						goto outside;
					}
				}
				ComputeZForTriangleCollide((Vertex3D*)pointA, (Vertex3D*)pointB, (Vertex3D*)pointC);
				if (g_vertex_inside_triangle.rhw > g_best_vertex_inside_triangle || !g_collide_count)
				{
					g_best_vertex_inside_triangle = g_vertex_inside_triangle.rhw;
					g_collide_count++;
				}
			}
			else
			{
				for (int corner = 1; corner < 3; corner++)
				{
					int nextCorner = (corner + 1) % 3;
					if (offset[corner].x * offset[nextCorner].y - offset[nextCorner].x * offset[corner].y > 0.0f)
					{
						goto outside;
					}
				}
				ComputeZForTriangleCollide((Vertex3D*)pointA, (Vertex3D*)pointB, (Vertex3D*)pointC);
				if (g_vertex_inside_triangle.rhw > g_best_vertex_inside_triangle || !g_collide_count)
				{
					g_best_vertex_inside_triangle = g_vertex_inside_triangle.rhw;
					g_collide_count++;
				}
			}
		outside:;
		}
	}
}

void LH3DPrimitive::DoMouseCheck()
{
	int triangleCount = LH3DTech::g_index_count / 3;
	if (triangleCount)
	{
		LHCoordF mouse;
		mouse.x = (float)LH3DObject::g_selected_px;
		mouse.y = (float)LH3DObject::g_selected_py;
		for (int i = 0; i < triangleCount; i++)
		{
			Vertex3D* pointA = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[i * 3]];
			Vertex3D* pointB = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[i * 3 + 1]];
			Vertex3D* pointC = &(LH3DTech::g_cache_t_points)[LH3DTech::g_list_indices[i * 3 + 2]];
			LHCoordF  offset[3];
			offset[0].x = pointA->x - mouse.x;
			offset[0].y = pointA->y - mouse.y;
			offset[1].x = pointB->x - mouse.x;
			offset[1].y = pointB->y - mouse.y;
			offset[2].x = pointC->x - mouse.x;
			offset[2].y = pointC->y - mouse.y;
			if (offset[0].x * offset[1].y - offset[1].x * offset[0].y > 0.0f)
			{
				for (int corner = 1; corner < 3; corner++)
				{
					int nextCorner = (corner + 1) % 3;
					if (offset[corner].x * offset[nextCorner].y - offset[nextCorner].x * offset[corner].y < 0.0f)
					{
						goto outside;
					}
				}
				ComputeZForTriangleCollide(pointA, pointB, pointC);
				if (g_vertex_inside_triangle.rhw > g_best_vertex_inside_triangle || !g_collide_count)
				{
					g_best_vertex_inside_triangle = g_vertex_inside_triangle.rhw;
					g_collide_count++;
				}
			}
			else
			{
				for (int corner = 1; corner < 3; corner++)
				{
					int nextCorner = (corner + 1) % 3;
					if (offset[corner].x * offset[nextCorner].y - offset[nextCorner].x * offset[corner].y > 0.0f)
					{
						goto outside;
					}
				}
				ComputeZForTriangleCollide(pointA, pointB, pointC);
				if (g_vertex_inside_triangle.rhw > g_best_vertex_inside_triangle || !g_collide_count)
				{
					g_best_vertex_inside_triangle = g_vertex_inside_triangle.rhw;
					g_collide_count++;
				}
			}
		outside:;
		}
	}
}

void LH3DPrimitive::DrawCutByPlane()
{
	unsigned long color = !Material.texture ? Material.ModulateColor(LH3DMesh::g_color) : LH3DMesh::g_color;
	float         toCameraX = 1.0f / LH3DTech::g_info_transform.InvHalfTanFovY;
	float         toCameraY = 1.0f / LH3DTech::g_info_transform.InvHalfTanFovX;
	g_current_primitive = this;
	int            i;
	LH3DVertex*    vertex = Vertices;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			int   light = GetLightLevel(FloatToInt(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
			float distance = g_clipping_plane_camera.Normal.x * point->x * toCameraX +
			                 g_clipping_plane_camera.Normal.y * point->y * toCameraY +
			                 g_clipping_plane_camera.Normal.z * point->rhw + g_clipping_plane_camera.Distance;
			point->color = ScaleColor(color, light);
			point->specular = LH3DMesh::g_specular;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			if (distance < 0.0f)
			{
				*flags = LH3DTech::CLIP_CODE_PLANE;
			}
			else
			{
				*flags = 0;
			}
			if (point->rhw < LH3DTech::g_info_transform.NearClip)
			{
				*flags |= LH3DTech::CLIP_CODE_NEAR;
			}
			if (point->x > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_RIGHT;
			}
			else if (-point->rhw > point->x)
			{
				*flags |= LH3DTech::CLIP_CODE_LEFT;
			}
			if (point->y > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_TOP;
			}
			else if (-point->rhw > point->y)
			{
				*flags |= LH3DTech::CLIP_CODE_BOTTOM;
			}
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (int k = 0; k < NumVertexGroups; k++)
		{
			LH3DVertexGroup* group = &VertexGroups[k];
			LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
			LH3DTech::g_local_to_clipping.PreMultiply(LH3DMesh::g_current_matrix[group->BoneIndex]);
			for (i = start; i < start + group->vertex_count; flags++, point++, vertex++, i++)
			{
				TransformToClipping(point, vertex->position, &LH3DTech::g_local_to_clipping);
				int   light = GetLightLevel(FloatToInt(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
				float distance = g_clipping_plane_camera.Normal.x * point->x * toCameraX +
				                 g_clipping_plane_camera.Normal.y * point->y * toCameraY +
				                 g_clipping_plane_camera.Normal.z * point->rhw + g_clipping_plane_camera.Distance;
				point->color = ScaleColor(color, light);
				point->specular = LH3DMesh::g_specular;
				point->uv.x = vertex->uv.x;
				point->uv.y = vertex->uv.y;
				if (distance < 0.0f)
				{
					*flags = LH3DTech::CLIP_CODE_PLANE;
				}
				else
				{
					*flags = 0;
				}
				if (point->rhw < LH3DTech::g_info_transform.NearClip)
				{
					*flags |= LH3DTech::CLIP_CODE_NEAR;
				}
				if (point->x > point->rhw)
				{
					*flags |= LH3DTech::CLIP_CODE_RIGHT;
				}
				else if (-point->rhw > point->x)
				{
					*flags |= LH3DTech::CLIP_CODE_LEFT;
				}
				if (point->y > point->rhw)
				{
					*flags |= LH3DTech::CLIP_CODE_TOP;
				}
				else if (-point->rhw > point->y)
				{
					*flags |= LH3DTech::CLIP_CODE_BOTTOM;
				}
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}

	LH3DTech::g_points_count = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTriangle* triangle = Triangles;
	bool32_t      doubleSided = LH3DMaterial::g_b_force_double_sided ? true : Material.IsDoubleSided();
	LH3DTech::g_clip_with_double_sided = doubleSided;
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (doubleSided)
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				LH3DTech::ClipTriangleWithPlane(a, b, c);
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangleWithPlane(a, b, c);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void LH3DPrimitive::DrawWithVerticalTranslation()
{
	unsigned long* flags = LH3DTech::g_cache_flags;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	g_current_primitive = this;
	LH3DVertex* vertex = Vertices;
	int         i;
	if (LH3DObject::g_current_object_in_draw->IsHDO())
	{
		float* translate = g_vertical_translate_vertices;
		for (i = 0; i < NumVertices; flags++, point++, vertex++, translate += 3, i++)
		{
			LHPoint position(vertex->position.x + translate[0], vertex->position.y + translate[1],
			                 vertex->position.z + translate[2]);
			TransformToClipping(point, position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			int light = GetLightLevel((int)(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
			point->color = ScaleColor(LH3DMesh::g_color, light);
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			ComputeClipFlags(point, flags);
			if (*flags == 0)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->rhw * point->x + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y =
					LH3DTech::g_info_transform.HalfRes.y - point->rhw * point->y * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
		g_vertical_translate_vertices = translate;
	}
	else
	{
		for (i = 0; i < NumVertices; flags++, point++, vertex++, g_vertical_translate_vertices++, i++)
		{
			LHPoint position(vertex->position.x, vertex->position.y + *g_vertical_translate_vertices,
			                 vertex->position.z);
			TransformToClipping(point, position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			int light = GetLightLevel((int)(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
			point->color = ScaleColor(LH3DMesh::g_color, light);
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			ComputeClipFlags(point, flags);
			if (*flags == 0)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void LH3DPrimitive::DrawSnowWithVerticalTranslation()
{
	unsigned long grey = LH3DMesh::g_color & 0xff00ff00;
	grey |= (grey >> 8) & 0xff;
	grey |= (grey & 0xff00) << 8;
	g_current_primitive = this;
	LH3DVertex*    vertex = Vertices;
	LHMatrix       envMatrix = LH3DObject::g_current_object_in_draw->matrix;
	unsigned long* flags = LH3DTech::g_cache_flags;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	int            i;
	envMatrix.m[9] = envMatrix.m[10] = envMatrix.m[11] = 0.0f;
	envMatrix.NormaliseMatrixOnly();
	if (LH3DObject::g_current_object_in_draw->IsHDO())
	{
		float* translate = g_vertical_translate_vertices;
		for (i = 0; i < NumVertices; flags++, point++, vertex++, translate += 3, i++)
		{
			LHPoint position(vertex->position.x + translate[0], vertex->position.y + translate[1],
			                 vertex->position.z + translate[2]);
			TransformToClipping(point, position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			int light = GetLightLevel((int)(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
			point->color = ScaleColor(grey, light);
			float v = vertex->position.y * 0.3f + vertex->position.z + 5.0f;
			float u = vertex->position.x + vertex->position.z * 0.1f;
			u -= (int)u + 2.5f;
			v -= (int)v + 2.5f;
			point->uv.Set((u - (int)u) * 0.2f + (envMatrix.m[1] * vertex->normal.x + envMatrix.m[4] * vertex->normal.y +
			                                     envMatrix.m[7] * vertex->normal.z),
			              (v - (int)v) * 0.2f + (envMatrix.m[0] * vertex->normal.x + envMatrix.m[3] * vertex->normal.y +
			                                     envMatrix.m[6] * vertex->normal.z));
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
		g_vertical_translate_vertices = translate;
	}
	else
	{
		for (i = 0; i < NumVertices; flags++, point++, vertex++, g_vertical_translate_vertices++, i++)
		{
			LHPoint position(vertex->position.x, vertex->position.y + *g_vertical_translate_vertices,
			                 vertex->position.z);
			TransformToClipping(point, position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			int light = GetLightLevel((int)(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
			point->color = ScaleColor(LH3DMesh::g_color, light);
			float v = vertex->position.y * 0.3f + vertex->position.z + 5.0f;
			float u = vertex->position.x + vertex->position.z * 0.1f;
			u -= (int)u + 2.5f;
			v -= (int)v + 2.5f;
			point->uv.Set((u - (int)u) * 0.2f + (envMatrix.m[1] * vertex->normal.x + envMatrix.m[4] * vertex->normal.y +
			                                     envMatrix.m[7] * vertex->normal.z),
			              (v - (int)v) * 0.2f + (envMatrix.m[0] * vertex->normal.x + envMatrix.m[3] * vertex->normal.y +
			                                     envMatrix.m[6] * vertex->normal.z));
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void LH3DPrimitive::DrawInShadowWithVerticalTranslation()
{
	g_current_primitive = this;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	int            j;
	float          u;
	float          v;
	float          depth;
	for (j = 0; j < NumVertices; flags++, point++, vertex++, g_vertical_translate_vertices++, j++)
	{
		LHPoint translated(vertex->position.x, vertex->position.y + *g_vertical_translate_vertices, vertex->position.z);
		TransformToClipping(point, translated, LH3DTech::g_current_matrix);
		LHPoint position;
		point->color = RGBA_MAKE(0xff, 0xff, 0xff, 0xff);
		point->specular = 0;
		position.x = point->x;
		position.y = point->y;
		position.z = point->rhw;
		depth = LH3DMesh::g_current_shadow->CalcShadowUV_Clipping(position, point->uv.x, point->uv.y);
		u = point->uv.x;
		v = point->uv.y;
		ComputeClipFlags(point, flags);
		if (!*flags)
		{
			point->rhw = 1.0f / point->rhw;
			point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			if (point->x < 0.0f)
			{
				point->x = 0.0f;
			}
			else if (point->x > LH3DTech::g_max_screen[0])
			{
				point->x = LH3DTech::g_max_screen[0];
			}
			point->y =
				LH3DTech::g_info_transform.HalfRes.y - point->rhw * point->y * LH3DTech::g_info_transform.HalfRes.y;
			if (point->y < 0.0f)
			{
				point->y = 0.0f;
			}
			else if (point->y > LH3DTech::g_max_screen[1])
			{
				point->y = LH3DTech::g_max_screen[1];
			}
			point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
			point->z = 1.0f - point->rhw;
		}
		if (depth < LH3DMesh::g_current_shadow->MinDepth)
		{
			*flags |= LH3D_SHADOW_CLIP_CODE_BEHIND;
		}
		if (u < 0.0f)
		{
			*flags |= LH3D_SHADOW_CLIP_CODE_U_MIN;
		}
		else if (u > 1.0f)
		{
			*flags |= LH3D_SHADOW_CLIP_CODE_U_MAX;
		}
		if (v < 0.0f)
		{
			*flags |= LH3D_SHADOW_CLIP_CODE_V_MIN;
		}
		else if (v > 1.0f)
		{
			*flags |= LH3D_SHADOW_CLIP_CODE_V_MAX;
		}
	}

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	Vertex3D*      points = LH3DTech::g_cache_t_points;
	for (int k = 0; k < NumTriangles; k++, triangle++)
	{
		uint16_t a = triangle->A;
		uint16_t b = triangle->B;
		uint16_t c = triangle->C;
		if ((clipFlags[a] | clipFlags[b] | clipFlags[c]) & LH3DTech::CLIP_CODE_FRUSTUM)
		{
			if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
			{
				LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
			}
		}
		else if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
		{
			if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			        (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			    0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void LH3DPrimitive::DrawLitUnclipped()
{
	unsigned long color = !Material.texture ? Material.ModulateColor(LH3DMesh::g_color) : LH3DMesh::g_color;
	g_current_primitive = this;
	LH3DVertex* vertex = Vertices;
	Vertex3D*   point = LH3DTech::g_cache_t_points;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->specular = LH3DMesh::g_specular;
			int light = GetLightLevel(FloatToInt(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
			point->color = ScaleColor(color, light);
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			point->rhw = 1.0f / point->rhw;
			point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			if (point->x < 0.0f)
			{
				point->x = 0.0f;
			}
			else if (point->x > LH3DTech::g_max_screen[0])
			{
				point->x = LH3DTech::g_max_screen[0];
			}
			point->y =
				LH3DTech::g_info_transform.HalfRes.y - point->rhw * (point->y * LH3DTech::g_info_transform.HalfRes.y);
			if (point->y < 0.0f)
			{
				point->y = 0.0f;
			}
			else if (point->y > LH3DTech::g_max_screen[1])
			{
				point->y = LH3DTech::g_max_screen[1];
			}
			point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
			point->z = 1.0f - point->rhw;
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			LHMatrix         inverse;
			inverse.SetInverse(*matrix);
			LHPoint sun = LH3DTech::g_sun_light_clipping;
			LHPoint lightDirection;
			TransformPointBy(&lightDirection, sun, &inverse);
			lightDirection *= InverseSquareRoot(lightDirection.GetNorm());
			for (int j = start; j < start + group->vertex_count; point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, matrix);
				point->specular = LH3DMesh::g_specular;
				int light = GetLightLevel(FloatToInt(lightDirection * vertex->normal * LH3D_LIGHT_MAX));
				point->color = ScaleColor(color, light);
				point->uv = vertex->uv;
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
			start += group->vertex_count;
		}
	}

	LH3DTech::g_points_count = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	int      j;
	uint16_t a;
	uint16_t b;
	uint16_t c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			        (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			    0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void LH3DPrimitive::DrawInShadowTnL()
{
	g_current_primitive = this;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVBVertex*  out = (LH3DVBVertex*)LH3DVB::Lock(NumVertices);
	LH3DVertex*    vertex = Vertices;
	int            j;
	float          u;
	float          v;
	LHPoint        point;
	LHPoint        transformed;
	float          depth;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (j = 0; j < NumVertices; flags++, out++, vertex++, j++)
		{
			out->position.x = vertex->position.x;
			out->position.y = vertex->position.y;
			out->position.z = vertex->position.z;
			out->normal.x = vertex->normal.x;
			out->normal.y = vertex->normal.y;
			out->normal.z = vertex->normal.z;
			LHPoint position(&vertex->position);
			TransformPointBy(&transformed, position, LH3DTech::g_current_matrix);
			LH3DMesh::g_current_shadow->CalcShadowUV_World(transformed, &out->uv.x, &out->uv.y, &depth);
			u = out->uv.x;
			v = out->uv.y;
			*flags = 0;
			if (depth < LH3DMesh::g_current_shadow->MinDepth)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_BEHIND;
			}
			if (u < 0.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_U_MIN;
			}
			else if (u > 1.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_U_MAX;
			}
			if (v < 0.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_V_MIN;
			}
			else if (v > 1.0f)
			{
				*flags |= LH3D_SHADOW_CLIP_CODE_V_MAX;
			}
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			for (j = start; j < start + group->vertex_count; flags++, out++, vertex++, j++)
			{
				TransformPointBy(&point, vertex->position, matrix);
				out->position.x = point.x;
				out->position.y = point.y;
				out->position.z = point.z;
				LH3DMesh::g_current_shadow->CalcShadowUV_World(transformed, &out->uv.x, &out->uv.y, &depth);
				u = out->uv.x;
				v = out->uv.y;
				RotatePointBy(&point, vertex->normal, matrix);
				out->normal.x = point.x;
				out->normal.y = point.y;
				out->normal.z = point.z;
				*flags = 0;
				if (depth < LH3DMesh::g_current_shadow->MinDepth)
				{
					*flags |= LH3D_SHADOW_CLIP_CODE_BEHIND;
				}
				if (u < 0.0f)
				{
					*flags |= LH3D_SHADOW_CLIP_CODE_U_MIN;
				}
				else if (u > 1.0f)
				{
					*flags |= LH3D_SHADOW_CLIP_CODE_U_MAX;
				}
				if (v < 0.0f)
				{
					*flags |= LH3D_SHADOW_CLIP_CODE_V_MIN;
				}
				else if (v > 1.0f)
				{
					*flags |= LH3D_SHADOW_CLIP_CODE_V_MAX;
				}
			}
			start += group->vertex_count;
		}
	}

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = 0;
	LH3DTriangle*  triangle = Triangles;
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	for (int k = 0; k < NumTriangles; k++, triangle++)
	{
		uint16_t a = triangle->A;
		uint16_t b = triangle->B;
		uint16_t c = triangle->C;
		if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
		{
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
		}
	}
	LH3DVB::UnlockAndDraw(NumVertices, LH3DTech::g_list_indices, LH3DTech::g_index_count);
}

void LH3DPrimitive::DrawLitTnL()
{
	g_current_primitive = this;
	if (LH3DMesh::g_current_vb && LH3DMesh::g_current_vb->VertexBuffer)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::D3DDevice->DrawIndexedPrimitiveVB(D3DPT_TRIANGLELIST, LH3DMesh::g_current_vb->VertexBuffer, 0,
		                                              GetVerticesCount(), LH3DMesh::g_current_vb->Indices,
		                                              NumTriangles * 3, 0);
		LH3DMesh::g_current_vb++;
		return;
	}
	LH3DVBVertex* out = (LH3DVBVertex*)LH3DVB::Lock(GetVerticesCount());
	LH3DVertex*   vertex = GetListVertex();
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; out++, vertex++, i++)
		{
			out->position.x = vertex->position.x;
			out->position.y = vertex->position.y;
			out->position.z = vertex->position.z;
			out->normal.x = vertex->normal.x;
			out->normal.y = vertex->normal.y;
			out->normal.z = vertex->normal.z;
			out->uv.x = vertex->uv.x;
			out->uv.y = vertex->uv.y;
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			for (int j = start; j < start + group->vertex_count; out++, vertex++, j++)
			{
				LHPoint point;
				TransformPointBy(&point, vertex->position, matrix);
				out->position.x = point.x;
				out->position.y = point.y;
				out->position.z = point.z;
				RotatePointBy(&point, vertex->normal, matrix);
				out->normal.x = point.x;
				out->normal.y = point.y;
				out->normal.z = point.z;
				out->uv.x = vertex->uv.x;
				out->uv.y = vertex->uv.y;
			}
			start += group->vertex_count;
		}
	}

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = 0;
	LH3DTriangle* triangle = Triangles;
	for (int k = 0; k < NumTriangles; triangle++, k++)
	{
		uint16_t c = triangle->C;
		uint16_t b = triangle->B;
		uint16_t a = triangle->A;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
	}
	LH3DRender::SetMaterial(&Material, 0);
	LH3DVB::UnlockAndDraw(GetVerticesCount(), LH3DTech::g_list_indices, LH3DTech::g_index_count);
}

void LH3DPrimitive::DrawUnclipped()
{
	g_current_primitive = this;
	Vertex3D*   point = LH3DTech::g_cache_t_points;
	LH3DVertex* vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->color = LH3DMesh::g_color;
			point->specular = LH3DMesh::g_specular;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			point->rhw = 1.0f / point->rhw;
			point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			if (point->x < 0.0f)
			{
				point->x = 0.0f;
			}
			else if (point->x > LH3DTech::g_max_screen[0])
			{
				point->x = LH3DTech::g_max_screen[0];
			}
			point->y =
				LH3DTech::g_info_transform.HalfRes.y - (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
			if (point->y < 0.0f)
			{
				point->y = 0.0f;
			}
			else if (point->y > LH3DTech::g_max_screen[1])
			{
				point->y = LH3DTech::g_max_screen[1];
			}
			point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
			point->z = 1.0f - point->rhw;
		}
	}
	else
	{
		int start = 0;
		for (int i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			for (int j = start; j < start + group->vertex_count; point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, matrix);
				point->color = LH3DMesh::g_color;
				point->specular = LH3DMesh::g_specular;
				point->uv = vertex->uv;
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
			start += group->vertex_count;
		}
	}

	LH3DTech::g_points_count = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	int      j;
	uint16_t a;
	uint16_t b;
	uint16_t c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			        (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			    0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void LH3DPrimitive::StartFrameIncFrozVars()
{
	static LHPoint angles(0.0f, 0.0f, 0.0f);
	float          speed = LH3DTech::GetGameTimeInc() * wiggle_speed * 0.001f;
	angles += LHPoint(speed, speed * 1.1f, speed * 1.3f);
	angles.x = fmod(angles.x, TWO_PI);
	angles.y = fmod(angles.y, TWO_PI);
	angles.z = fmod(angles.z, TWO_PI);
	LHPoint wiggle(sin(angles.x), sin(angles.y), sin(angles.z));
	wiggle *= wiggle_amp;
	g_froz_wiggle_mat.SetIdentity();
	g_froz_wiggle_mat.SetZXYMatrixOnly(wiggle.z, wiggle.y, wiggle.x);
}

void LH3DPrimitive::DrawInBuildInside()
{
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	float          wallSize = Material.IsDoubleSided() ? g_size_fine_wall : g_size_thick_wall;
	float          height = g_clipping_plane_world.Distance - LH3DObject::g_current_object_in_draw->matrix.m[10];
	int            i;
	if (LH3DObject::g_current_object_in_draw->IsMorphWithLand())
	{
		for (i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			LHPoint position;
			position.x = vertex->position.x - wallSize * vertex->normal.x;
			position.y = vertex->position.y + *g_vertical_translate_vertices;
			position.z = vertex->position.z - wallSize * vertex->normal.z;
			g_vertical_translate_vertices++;
			TransformToClipping(point, position, LH3DTech::g_current_matrix);
			int light = GetLightLevel(FloatToInt(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
			point->color = ScaleColor(LH3DMesh::g_color, light);
			point->specular = LH3DMesh::g_specular;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			if (height <= position.y)
			{
				*flags = LH3DTech::CLIP_CODE_PLANE;
			}
			else
			{
				*flags = 0;
			}
			if (point->rhw < LH3DTech::g_info_transform.NearClip)
			{
				*flags |= LH3DTech::CLIP_CODE_NEAR;
			}
			if (point->x > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_RIGHT;
			}
			else if (-point->rhw > point->x)
			{
				*flags |= LH3DTech::CLIP_CODE_LEFT;
			}
			if (point->y > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_TOP;
			}
			else if (-point->rhw > point->y)
			{
				*flags |= LH3DTech::CLIP_CODE_BOTTOM;
			}
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           point->y * (point->rhw * LH3DTech::g_info_transform.HalfRes.y);
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		for (i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			LHPoint position;
			position.x = vertex->position.x - wallSize * vertex->normal.x;
			position.y = vertex->position.y;
			position.z = vertex->position.z - wallSize * vertex->normal.z;
			TransformToClipping(point, position, LH3DTech::g_current_matrix);
			int light = GetLightLevel(FloatToInt(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
			point->color = ScaleColor(LH3DMesh::g_color, light);
			point->specular = LH3DMesh::g_specular;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			if (height <= vertex->position.y)
			{
				*flags = LH3DTech::CLIP_CODE_PLANE;
			}
			else
			{
				*flags = 0;
			}
			if (point->rhw < LH3DTech::g_info_transform.NearClip)
			{
				*flags |= LH3DTech::CLIP_CODE_NEAR;
			}
			if (point->x > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_RIGHT;
			}
			else if (-point->rhw > point->x)
			{
				*flags |= LH3DTech::CLIP_CODE_LEFT;
			}
			if (point->y > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_TOP;
			}
			else if (-point->rhw > point->y)
			{
				*flags |= LH3DTech::CLIP_CODE_BOTTOM;
			}
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           point->y * (point->rhw * LH3DTech::g_info_transform.HalfRes.y);
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = true;
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	for (int j = 0; j < NumTriangles; triangle++, j++)
	{
		uint16_t a = triangle->A;
		uint16_t b = triangle->B;
		uint16_t c = triangle->C;
		if (clipFlags[a] | clipFlags[b] | clipFlags[c])
		{
			LH3DTech::ClipTriangleInBuild(a, b, c);
		}
		else
		{
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::SetRenderState(D3DRENDERSTATE_CULLMODE, D3DCULL_NONE);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
}

void LH3DPrimitive::DrawInBuild()
{
	LH3DInBuild::g_edge_count = 0;
	LH3DInBuild::g_b_fuck = false;
	g_current_primitive = this;
	float          height = g_clipping_plane_world.Distance - LH3DObject::g_current_object_in_draw->matrix.m[10];
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	int            i;
	if (height < LH3D_IN_BUILD_MIN_HEIGHT)
	{
		return;
	}
	if (LH3DObject::g_current_object_in_draw->IsMorphWithLand())
	{
		for (i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			LHPoint position = vertex->position;
			position.y += *g_vertical_translate_vertices++;
			TransformToClipping(point, position, LH3DTech::g_current_matrix);
			int light = GetLightLevel(FloatToInt(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
			point->color = ScaleColor(LH3DMesh::g_color, light);
			point->specular = LH3DMesh::g_specular;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			if (height <= position.y)
			{
				*flags = LH3DTech::CLIP_CODE_PLANE;
			}
			else
			{
				*flags = 0;
			}
			if (point->rhw < LH3DTech::g_info_transform.NearClip)
			{
				*flags |= LH3DTech::CLIP_CODE_NEAR;
			}
			if (point->x > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_RIGHT;
			}
			else if (-point->rhw > point->x)
			{
				*flags |= LH3DTech::CLIP_CODE_LEFT;
			}
			if (point->y > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_TOP;
			}
			else if (-point->rhw > point->y)
			{
				*flags |= LH3DTech::CLIP_CODE_BOTTOM;
			}
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           point->rhw * (point->y * LH3DTech::g_info_transform.HalfRes.y);
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		for (i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			int light = GetLightLevel(FloatToInt(g_vect_light * vertex->normal * LH3D_LIGHT_MAX));
			point->color = ScaleColor(LH3DMesh::g_color, light);
			point->specular = LH3DMesh::g_specular;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			if (height <= vertex->position.y)
			{
				*flags = LH3DTech::CLIP_CODE_PLANE;
			}
			else
			{
				*flags = 0;
			}
			if (point->rhw < LH3DTech::g_info_transform.NearClip)
			{
				*flags |= LH3DTech::CLIP_CODE_NEAR;
			}
			if (point->x > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_RIGHT;
			}
			else if (-point->rhw > point->x)
			{
				*flags |= LH3DTech::CLIP_CODE_LEFT;
			}
			if (point->y > point->rhw)
			{
				*flags |= LH3DTech::CLIP_CODE_TOP;
			}
			else if (-point->rhw > point->y)
			{
				*flags |= LH3DTech::CLIP_CODE_BOTTOM;
			}
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = true;
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	for (int j = 0; j < NumTriangles; triangle++, j++)
	{
		uint16_t a = triangle->A;
		uint16_t b = triangle->B;
		uint16_t c = triangle->C;
		if (clipFlags[a] | clipFlags[b] | clipFlags[c])
		{
			LH3DTech::ClipTriangleInBuild(a, b, c);
		}
		else
		{
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::SetRenderState(D3DRENDERSTATE_CULLMODE, D3DCULL_NONE);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
		if (g_draw_depth)
		{
			LH3DInBuild::ec1 = LH3DInBuild::g_edge_count;
			if (LH3DObject::g_current_object_in_draw->IsMorphWithLand())
			{
				g_vertical_translate_vertices -= NumVertices;
			}
			DrawInBuildInside();
			LH3DInBuild::ec2 = LH3DInBuild::g_edge_count - LH3DInBuild::ec1;
			if (LH3DInBuild::ec1 && LH3DInBuild::ec2 == LH3DInBuild::ec1)
			{
				if (!(LH3DObject::g_current_object_in_draw->Flags2 & LH3D_OBJECT_FLAGS2_NO_BUILD_OUTLINE))
				{
					LH3DInBuild::Draw();
				}
				return;
			}
		}
	}
	LH3DInBuild::g_edge_count = 0;
	LH3DInBuild::g_b_fuck = false;
}

void LH3DPrimitive::DrawSpecialLight(float time)
{
	g_current_primitive = this;
	Vertex3D*      point = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	LH3DVertex*    vertex = Vertices;
	int            i;
	float          height = LH3DObject::g_current_object_in_draw->GetMesh()->BoundingBox.size.y * 2.0f - 0.1f;
	float          angle = -PI_F * LH3DTech::g_current_time / LH3D_SPECIAL_LIGHT_HALF_TURN_TIME;
	float          cosAngle = cos(angle);
	float          sinAngle = sin(angle);
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (i = 0; i < NumVertices; flags++, point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
			point->color = vertex->position.y > height ? LH3DMesh::g_color & 0xffffff : LH3DMesh::g_color;
			point->specular = LH3DMesh::g_specular;
			point->uv.x = vertex->uv.x;
			point->uv.y = vertex->uv.y;
			ComputeClipFlags(point, flags);
			if (!*flags)
			{
				point->rhw = 1.0f / point->rhw;
				point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
				if (point->x < 0.0f)
				{
					point->x = 0.0f;
				}
				else if (point->x > LH3DTech::g_max_screen[0])
				{
					point->x = LH3DTech::g_max_screen[0];
				}
				point->y = LH3DTech::g_info_transform.HalfRes.y -
				           (point->rhw * point->y) * LH3DTech::g_info_transform.HalfRes.y;
				if (point->y < 0.0f)
				{
					point->y = 0.0f;
				}
				else if (point->y > LH3DTech::g_max_screen[1])
				{
					point->y = LH3DTech::g_max_screen[1];
				}
				point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
				point->z = 1.0f - point->rhw;
			}
		}
	}
	else
	{
		int start = 0;
		for (i = 0; i < NumVertexGroups; i++)
		{
			LH3DVertexGroup* group = &VertexGroups[i];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			LHMatrix         worldMatrix = *matrix;
			worldMatrix.PostMultiply(LH3DTech::g_clipping_to_world);
			for (int j = start; j < start + group->vertex_count; flags++, point++, vertex++, j++)
			{
				TransformToClipping(point, vertex->position, &worldMatrix);
				if (i != 1)
				{
					point->color = LH3DMesh::g_special_color & 0xffffff;
				}
				else
				{
					point->color = LH3DMesh::g_special_color;
				}
				TransformToClipping(point, vertex->position, matrix);
				point->specular = LH3DMesh::g_specular;
				float u = vertex->uv.x - 0.5f;
				float v = vertex->uv.y - 0.5f;
				point->uv.x = u * cosAngle + v * sinAngle + 0.5f;
				point->uv.y = u * sinAngle - v * cosAngle + 0.5f;
				ComputeClipFlags(point, flags);
				if (!*flags)
				{
					point->rhw = 1.0f / point->rhw;
					point->x = (point->x * point->rhw + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
					if (point->x < 0.0f)
					{
						point->x = 0.0f;
					}
					else if (point->x > LH3DTech::g_max_screen[0])
					{
						point->x = LH3DTech::g_max_screen[0];
					}
					point->y = LH3DTech::g_info_transform.HalfRes.y -
					           point->rhw * (point->y * LH3DTech::g_info_transform.HalfRes.y);
					if (point->y < 0.0f)
					{
						point->y = 0.0f;
					}
					else if (point->y > LH3DTech::g_max_screen[1])
					{
						point->y = LH3DTech::g_max_screen[1];
					}
					point->rhw = LH3DTech::g_info_transform.NearClip * point->rhw;
					point->z = 1.0f - point->rhw;
				}
			}
			start += group->vertex_count;
		}
	}

	uint16_t pointsCount = NumVertices;
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = pointsCount;
	LH3DTriangle* triangle = Triangles;
	LH3DTech::g_clip_with_double_sided = Material.IsDoubleSided();
	unsigned long* clipFlags = LH3DTech::g_cache_flags;
	int            j;
	uint16_t       a;
	uint16_t       b;
	uint16_t       c;
	if (Material.IsDoubleSided())
	{
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	else
	{
		Vertex3D* points = LH3DTech::g_cache_t_points;
		for (j = 0; j < NumTriangles; triangle++, j++)
		{
			a = triangle->A;
			b = triangle->B;
			c = triangle->C;
			if (clipFlags[a] | clipFlags[b] | clipFlags[c])
			{
				if (!(clipFlags[a] & clipFlags[b] & clipFlags[c]))
				{
					LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
				}
			}
			else if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
			             (points[b].y - points[a].y) * (points[c].x - points[a].x) >
			         0.0f)
			{
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
				LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
			}
		}
	}
	if (LH3DTech::g_index_count)
	{
		LH3DRender::SetMaterial(&Material, 0);
		LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                                 LH3DTech::g_index_count);
	}
	g_current_index_primitive++;
}

long LH3DPrimitive::GetTriangleCountDrawable()
{
	return NumTriangles;
}

void LH3DPrimitive::GetTriangleDrawable(long index, LH3DVertex* a, LH3DVertex* b, LH3DVertex* c)
{
	if (index >= NumTriangles)
	{
		index = 0;
	}
	LH3DTriangle* triangle = &Triangles[index];
	*a = Vertices[triangle->A];
	*b = Vertices[triangle->B];
	*c = Vertices[triangle->C];
}
