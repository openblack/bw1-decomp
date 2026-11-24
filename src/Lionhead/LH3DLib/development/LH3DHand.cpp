#include "LH3DHand.h"

#include <stdlib.h> /* For malloc */
#include <string.h> /* For memset */

#include <Lionhead/LHFile/ver3.0/LHOSFile.h> /* For LHFileLength, LHLoadData */

#include "LH3DMath.h"        /* For FloatToInt, InverseSquareRoot */
#include "LH3DMesh.h"        /* For LH3DMesh */
#include "LH3DPrimitive.h"   /* For LH3DPrimitive, TransformPointBy */
#include "LH3DRender.h"      /* For LH3DRender */
#include "LH3DTech.h"        /* For LH3DTech */
#include "LH3DVertexGroup.h" /* For LH3DVertexGroup */

// Inliner IL size: 240
// BW1W120 00862f70 BW1M119 inlined
static inline void __fastcall AddPoint(int y, int x, float u, float v, float light);

uint8_t*     g_raw_bitmap;
float        LH3DHand::g_hotspot_y;
float        LH3DHand::g_hotspot_x;
uint16_t*    LH3DHand::g_buffer;
LH3DHandLine LH3DHand::g_line[LH3D_HAND_SIZE];

static inline void __fastcall AddPoint(int y, int x, float u, float v, float light)
{
	if (y >= 0)
	{
		if (y < LH3D_HAND_SIZE)
		{
			LH3DHandLine* line = &LH3DHand::g_line[y];
			if (line->Active)
			{
				if (line->MinX > x)
				{
					line->MinX = x;
					line->MinU = u * LH3D_HAND_TEXTURE_SIZE;
					line->MinV = v * LH3D_HAND_TEXTURE_SIZE;
					line->MinLight = light;
				}
				else if (line->MaxX < x)
				{
					line->MaxX = x;
					line->MaxU = u * LH3D_HAND_TEXTURE_SIZE;
					line->MaxV = v * LH3D_HAND_TEXTURE_SIZE;
					line->MaxLight = light;
				}
			}
			else
			{
				line->MinX = line->MaxX = x;
				line->MinU = line->MaxU = u * LH3D_HAND_TEXTURE_SIZE;
				line->MinV = line->MaxV = v * LH3D_HAND_TEXTURE_SIZE;
				line->MinLight = line->MaxLight = light;
				line->Active = true;
			}
		}
	}
}

void __fastcall LH3DHand::AddEdge(Vertex3D* a, Vertex3D* b)
{
	if (a->x > b->x)
	{
		Vertex3D* swap = a;
		a = b;
		b = swap;
	}
	int   x0 = FloatToInt(a->x);
	int   y0 = FloatToInt(a->y);
	int   x1 = FloatToInt(b->x);
	int   y1 = FloatToInt(b->y);
	int   x = x0;
	int   y = y0;
	int   dx = x1 - x0;
	int   dy = y1 - y0;
	float u = a->uv.x;
	float v = a->uv.y;
	float light = (float)a->color;
	int   stepX;
	int   stepY;
	if (dx < 0)
	{
		stepX = -1;
		dx = -dx;
	}
	else
	{
		stepX = 1;
	}
	if (dy < 0)
	{
		stepY = -1;
		dy = -dy;
	}
	else
	{
		stepY = 1;
	}
	int error = 0;
	int i;
	if (dx < dy)
	{
		if (dy)
		{
			float du = (b->uv.x - a->uv.x) / dy;
			float dv = (b->uv.y - a->uv.y) / dy;
			float dl = ((float)b->color - (float)a->color) / dy;
			for (i = 0; i < dy + 1; i++)
			{
				AddPoint(y, x, u, v, light);
				error += dx;
				v += dv;
				y += stepY;
				u += du;
				light += dl;
				if (error > dy)
				{
					x += stepX;
					error -= dy;
				}
			}
		}
		else
		{
			AddPoint(y0, x0, a->uv.x, a->uv.y, (float)a->color);
			AddPoint(y1, x1, b->uv.x, b->uv.y, (float)b->color);
		}
	}
	else
	{
		if (dx)
		{
			float du = (b->uv.x - a->uv.x) / dx;
			float dv = (b->uv.y - a->uv.y) / dx;
			float dl = ((float)b->color - (float)a->color) / dx;
			for (i = 0; i < dx + 1; i++)
			{
				AddPoint(y, x, u, v, light);
				error += dy;
				u += du;
				x += stepX;
				v += dv;
				light += dl;
				if (error > dx)
				{
					y += stepY;
					error -= dx;
				}
			}
			AddPoint(y1, x1, b->uv.x, b->uv.y, (float)b->color);
		}
		else
		{
			AddPoint(y0, x0, u, v, light);
		}
	}
}

void LH3DHand::Draw()
{
	for (int y = 0; y < LH3D_HAND_SIZE; y++)
	{
		LH3DHandLine* line = &g_line[y];
		if (line->Active)
		{
			float du;
			float dv;
			float dl;
			float length = (float)(line->MaxX - line->MinX);
			if (length == 0.0f)
			{
				du = dv = dl = 0.0f;
			}
			else
			{
				float inverse = 1.0f / length;
				du = (line->MaxU - line->MinU) * inverse;
				dv = (line->MaxV - line->MinV) * inverse;
				dl = (line->MaxLight - line->MinLight) * inverse;
			}
			float     u = line->MinU;
			float     v = line->MinV;
			float     light = line->MinLight;
			int       minX = line->MinX;
			int       maxX = line->MaxX;
			uint16_t* pixel = &g_buffer[y * LH3D_HAND_SIZE + minX];
			uint32_t  intensity = FloatToInt(light);
			for (int x = minX; x <= maxX; x++)
			{
				int texel = (FloatToInt(v) * LH3D_HAND_TEXTURE_SIZE + FloatToInt(u)) * LH3D_HAND_TEXTURE_BPP;
				u += du;
				v += dv;
				light += dl;
				*pixel = ((g_raw_bitmap[texel] * intensity) & LH3D_HAND_RED_MASK) |
				         (((g_raw_bitmap[texel + 1] * intensity) >> 5) & LH3D_HAND_RED_GREEN_MASK) |
				         ((g_raw_bitmap[texel + 2] * intensity) >> 11);
				intensity = FloatToInt(light);
				pixel++;
			}
			line->Active = false;
		}
	}
}

void LH3DHand::Init()
{
	static bool32_t first = true;
	if (first)
	{
		first = false;
		memset(g_line, 0, sizeof(g_line));
		uint32_t length;
		LHFileLength(".\\data\\hand.raw", &length);
		void* data = malloc(length);
		LHLoadData(".\\data\\hand.raw", data, length, NULL);
		g_raw_bitmap = (uint8_t*)data;
	}
	memset(g_buffer, 0, LH3D_HAND_SIZE * LH3D_HAND_SIZE * sizeof(uint16_t));
}

static inline void TransformToClipping(Vertex3D* point, const LHPoint& position, const LHMatrix* matrix)
{
	point->x = matrix->m[0] * position.x + matrix->m[3] * position.y + matrix->m[6] * position.z + matrix->m[9];
	point->y = matrix->m[1] * position.x + matrix->m[4] * position.y + matrix->m[7] * position.z + matrix->m[10];
	point->rhw = matrix->m[2] * position.x + matrix->m[5] * position.y + matrix->m[8] * position.z + matrix->m[11];
}

void LH3DPrimitive::DrawForMouse()
{
	g_current_primitive = this;
	LH3DVertex* vertex = Vertices;
	Vertex3D*   point = LH3DTech::g_cache_t_points;
	int         start = 0;
	float       minX = LH3D_HAND_BOUNDS_START;
	float       minY = LH3D_HAND_BOUNDS_START;
	float       maxX = -LH3D_HAND_BOUNDS_START;
	float       maxY = -LH3D_HAND_BOUNDS_START;
	int         i;
	for (int k = 0; k < NumVertexGroups; k++)
	{
		LH3DVertexGroup* group = &VertexGroups[k];
		LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
		LHMatrix         inverse;
		inverse.SetInverse(*matrix);
		LHPoint lightDirection;
		lightDirection.x = inverse._11 * LH3DTech::GetSun().x + inverse._21 * LH3DTech::GetSun().y +
		                   inverse._31 * LH3DTech::GetSun().z + inverse._41;
		lightDirection.y = inverse._12 * LH3DTech::GetSun().x + inverse._22 * LH3DTech::GetSun().y +
		                   inverse._32 * LH3DTech::GetSun().z + inverse._42;
		lightDirection.z = inverse._13 * LH3DTech::GetSun().x + inverse._23 * LH3DTech::GetSun().y +
		                   inverse._33 * LH3DTech::GetSun().z + inverse._43;
		float norm = lightDirection.GetNorm();
		lightDirection *= InverseSquareRoot(norm);
		LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
		LH3DTech::g_local_to_clipping.PreMultiply(*matrix);
		for (i = start; i < start + group->vertex_count; point++, vertex++, i++)
		{
			TransformToClipping(point, vertex->position, LH3DTech::g_current_matrix);
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
			point->uv = vertex->uv;
			if (minX > point->x)
			{
				minX = point->x;
			}
			if (maxX < point->x)
			{
				maxX = point->x;
			}
			if (minY > point->y)
			{
				minY = point->y;
			}
			if (maxY < point->y)
			{
				maxY = point->y;
			}
			point->color = FloatToInt((lightDirection * vertex->normal + 1.0f) * (LH3D_LIGHT_MAX / 2));
			if (point->color < LH3D_HAND_MIN_LIGHT)
			{
				point->color = LH3D_HAND_MIN_LIGHT;
			}
		}
		start += group->vertex_count;
	}

	minX = (float)FloatToInt(minX);
	minY = (float)FloatToInt(minY);
	maxX = (float)(FloatToInt(maxX) + 1);
	maxY = (float)(FloatToInt(maxY) + 1);

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = NumVertices;
	LH3DTriangle* triangle = Triangles;
	int           j;
	uint16_t      a;
	uint16_t      b;
	uint16_t      c;
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
		float size = max(maxX - minX, maxY - minY);
		float scale;
		if (size > LH3D_HAND_SIZE - 2 * LH3D_HAND_BORDER)
		{
			scale = (LH3D_HAND_SIZE - 2 * LH3D_HAND_BORDER) / size;
		}
		else
		{
			scale = 1.0f;
		}
		LH3DHand::g_hotspot_x = (LH3DHand::g_hotspot_x - minX) * scale;
		LH3DHand::g_hotspot_y = (LH3DHand::g_hotspot_y - minY) * scale;
		point = LH3DTech::g_cache_t_points;
		for (i = 0; i < NumVertices; point++, i++)
		{
			point->x = (point->x - minX) * scale + LH3D_HAND_BORDER;
			point->y = (point->y - minY) * scale + LH3D_HAND_BORDER;
		}

		uint16_t* indices = LH3DRender::SortTriangle(LH3DTech::g_cache_t_points, NumVertices, LH3DTech::g_list_indices,
		                                             LH3DTech::g_index_count);
		int       count = LH3DTech::g_index_count / 3;
		for (j = 0; j < count; j++)
		{
			Vertex3D* pointA = &LH3DTech::g_cache_t_points[indices[j * 3]];
			Vertex3D* pointB = &LH3DTech::g_cache_t_points[indices[j * 3 + 1]];
			Vertex3D* pointC = &LH3DTech::g_cache_t_points[indices[j * 3 + 2]];
			if (pointA->y < pointB->y)
			{
				if (pointA->y < pointC->y)
				{
					if (pointB->x < pointC->x)
					{
						LH3DHand::AddEdge(pointA, pointB);
						LH3DHand::AddEdge(pointB, pointC);
						LH3DHand::AddEdge(pointC, pointA);
					}
					else
					{
						LH3DHand::AddEdge(pointA, pointC);
						LH3DHand::AddEdge(pointC, pointB);
						LH3DHand::AddEdge(pointB, pointA);
					}
				}
				else if (pointA->x < pointB->x)
				{
					LH3DHand::AddEdge(pointC, pointA);
					LH3DHand::AddEdge(pointA, pointB);
					LH3DHand::AddEdge(pointB, pointC);
				}
				else
				{
					LH3DHand::AddEdge(pointC, pointB);
					LH3DHand::AddEdge(pointB, pointA);
					LH3DHand::AddEdge(pointA, pointC);
				}
			}
			else if (pointB->y < pointC->y)
			{
				if (pointA->x < pointC->x)
				{
					LH3DHand::AddEdge(pointB, pointA);
					LH3DHand::AddEdge(pointA, pointC);
					LH3DHand::AddEdge(pointC, pointB);
				}
				else
				{
					LH3DHand::AddEdge(pointB, pointC);
					LH3DHand::AddEdge(pointC, pointA);
					LH3DHand::AddEdge(pointA, pointB);
				}
			}
			else if (pointA->x < pointB->x)
			{
				LH3DHand::AddEdge(pointC, pointA);
				LH3DHand::AddEdge(pointA, pointB);
				LH3DHand::AddEdge(pointB, pointC);
			}
			else
			{
				LH3DHand::AddEdge(pointC, pointB);
				LH3DHand::AddEdge(pointB, pointA);
				LH3DHand::AddEdge(pointA, pointC);
			}
			LH3DHand::Draw();
		}
	}
	else
	{
		LH3DHand::g_hotspot_x = LH3DHand::g_hotspot_y = 0.0f;
	}
}
