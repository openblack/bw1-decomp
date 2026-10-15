#include "LH3DPrimitive.h"

#include <d3dtypes.h> /* For RGBA_MAKE */
#include <math.h>     /* For fabs */

#include "LH3DObject.h"  /* For class LH3DObject */
#include "LH3DTShadow.h" /* For struct LH3DTShadow */
#include "LH3DTech.h"    /* For class LH3DTech */
#include "LH3DTexture.h" /* For struct LH3DTexture */

// BW1W120 0084abc0 BW1M119 null
int GetGridIndex(LHPoint* point);

int      LH3DPrimitive::MIN_LIGHT = 90;
int      LH3DPrimitive::g_envmaptable[LH3D_ENV_MAP_TABLE_SIZE] = {1, 3, 7, 4, 5, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
bool32_t LH3DPrimitive::g_do_vertex_blending = true;
float    LH3DPrimitive::g_size_fine_wall = 0.2f;
float    LH3DPrimitive::g_size_thick_wall = 0.35f;
int      LH3DPrimitive::g_draw_depth = 1;

LHPoint        LH3DPrimitive::g_vect_light(1.0f, 0.0f, 0.0f);
float          LH3DPrimitive::g_fog_max;
float          LH3DPrimitive::g_fog_min;
float          LH3DPrimitive::g_delta_fog;
unsigned long  LH3DPrimitive::g_fog_table[LH3D_FOG_TABLE_SIZE][2];
LHPlane        LH3DPrimitive::g_clipping_plane_world;
LHPlane        LH3DPrimitive::g_clipping_plane_camera;
int            LH3DPrimitive::g_collide_count;
float          LH3DPrimitive::g_best_vertex_inside_triangle;
Vertex3D       LH3DPrimitive::g_vertex_inside_triangle;
LH3DPrimitive* LH3DPrimitive::g_current_primitive;
int            LH3DPrimitive::g_current_index_primitive;
float*         LH3DPrimitive::g_lightmap_remap_uvs;
float*         LH3DPrimitive::g_vertical_translate_vertices;
LHMatrix       LH3DPrimitive::g_froz_wiggle_mat;

float wiggle_speed = 2.0f;
float wiggle_amp = 0.02f;

static inline int FloatToInt(float value)
{
	int  result;
	int* resultPtr = &result;
	__asm
	{
		fld value
		mov edx, resultPtr
		fistp dword ptr [edx]
	}
	return result;
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
		vertex.color = g_fog_table[0][0];
		vertex.specular = g_fog_table[0][1];
	}
	else if (vertex.rhw > g_fog_max)
	{
		vertex.color = g_fog_table[LH3D_FOG_TABLE_SIZE - 1][0];
		vertex.specular = g_fog_table[LH3D_FOG_TABLE_SIZE - 1][1];
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
		vertex.color = g_fog_table[index][0];
		vertex.specular = g_fog_table[index][1];
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
		g_fog_table[i][1] = RGBA_MAKE(r, g, b, 0xff);
		g_fog_table[i][0] =
			((0xff00 * brightness & 0xff0000) | (0xff * brightness & 0xff00) | (0xff0000 * brightness & 0xff0000ff)) >>
				8 |
			0xff000000;
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

void __fastcall LH3DTShadow::AddEdge(Vertex3D* a, Vertex3D* b, int unused)
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

void LH3DPrimitive::DrawComplexSnow()
{
	DrawComplex();
}

LHPoint g_vollightgj_u_dirn(0.0f, 1.0f, 0.0f);
bool    g_volfx_gj_cover_surface;

void LH3DPrimitive::DrawLit4() {}

void LH3DPrimitive::FillListVertices4() {}

void GetSnowUV(float* u, float* v, LHPoint* normal, LH3DVertex* vertex)
{
	float x = (float)fabs(vertex->uv.x);
	*u = x - (int)x;
	float y = (float)fabs(vertex->uv.y);
	*v = y - (int)y;
	*u = (normal->y + 1.0f) * 0.4f + *u * 0.2f;
	*v *= 0.2f;
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
