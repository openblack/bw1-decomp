#include "SRTextured.h"

#include <string.h> /* For memset */

#include "LH3DMem.h"              /* For LH3DMem */
#include "LH3DMesh.h"             /* For LH3DMesh */
#include "LH3DObject.h"           /* For class LH3DObject */
#include "LH3DPrimitive.h"        /* For LH3DPrimitive */
#include "LH3DSubMesh.h"          /* For LH3DSubMesh */
#include "LH3DTShadow.h"          /* For LH3D_T_SHADOW_BITMAP_SIZE */
#include "LH3DTech.h"             /* For class LH3DTech */
#include "SubCollideDataRender.h" /* For SubCollideDataRender */

#define SR_FIXED_ONE 65536.0f

#define SR_BLOCK_SIZE   10.0f
#define SR_BLOCK_PIXELS 8

#define SR_MASK_SIZE 128

#define SR_SHADE_MAX 255

#define SR_MONO_INSIDE 0xff

SubCollideDataRender::~SubCollideDataRender()
{
	if (Pixels != NULL)
	{
		LH3DMem::Free(Pixels);
		Pixels = NULL;
	}
	if (Buffer != NULL)
	{
		LH3DMem::Free(Buffer);
		Buffer = NULL;
	}
}

static inline void TransformPoint(Vertex3D* point, const LHPoint& position, const LHMatrix* matrix)
{
	point->x = matrix->m[0] * position.x + matrix->m[3] * position.y + matrix->m[6] * position.z + matrix->m[9];
	point->y = matrix->m[1] * position.x + matrix->m[4] * position.y + matrix->m[7] * position.z + matrix->m[10];
	point->rhw = matrix->m[2] * position.x + matrix->m[5] * position.y + matrix->m[8] * position.z + matrix->m[11];
}

static inline int FloorBlock(float value)
{
	return value < 0.0f ? (int)((-1 - (int)(value / -SR_BLOCK_SIZE)) * SR_BLOCK_SIZE) : (int)(value / SR_BLOCK_SIZE);
}

void DrawCollide(SubCollideDataRender* collide, LH3DObject* object)
{
	LHMatrix* matrix = &object->matrix;
	bool32_t  found = false;
	LH3DMesh* mesh = object->GetMesh();
	float     minX;
	float     maxX;
	float     minZ;
	float     maxZ;
	int       i;
	int       j;
	int       k;
	Vertex3D* point;
	for (i = 0; i < mesh->GetSubmeshCount(); i++)
	{
		LH3DSubMesh* submesh = mesh->GetListPtrSubmesh()[i];
		for (j = 0; j < submesh->GetPrimitiveCount(); j++)
		{
			LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[j];
			point = LH3DTech::g_cache_t_points;
			LH3DVertex* vertex = primitive->GetListVertex();
			for (k = 0; k < primitive->GetVerticesCount(); point++, vertex++, k++)
			{
				TransformPoint(point, vertex->position, matrix);
				point->z = point->rhw;
				if (found)
				{
					if (point->x < minX)
					{
						minX = point->x;
					}
					else if (point->x > maxX)
					{
						maxX = point->x;
					}
					if (point->z < minZ)
					{
						minZ = point->z;
					}
					else if (point->z > maxZ)
					{
						maxZ = point->z;
					}
				}
				else
				{
					minX = maxX = point->x;
					minZ = maxZ = point->z;
					found = true;
				}
			}
		}
	}
	int blockX = FloorBlock(minX);
	int blockZ = FloorBlock(minZ);
	int originX = blockX * (int)SR_BLOCK_SIZE;
	int originZ = blockZ * (int)SR_BLOCK_SIZE;
	int blocksX = 1 - (int)((maxX - originX) / -SR_BLOCK_SIZE);
	int blocksZ = 1 - (int)((maxZ - originZ) / -SR_BLOCK_SIZE);
	collide->MinBlockX = (int)(originX / SR_BLOCK_SIZE);
	collide->MaxBlockX = collide->MinBlockX + blocksX - 1;
	collide->MinBlockZ = (int)(originZ / SR_BLOCK_SIZE);
	collide->MaxBlockZ = collide->MinBlockZ + blocksZ - 1;
	int height = blocksX * SR_BLOCK_PIXELS;
	int width = blocksZ * SR_BLOCK_PIXELS;
	collide->Width = width;
	collide->Height = height;
	float scaleX = (float)height / (blocksX * SR_BLOCK_SIZE);
	float scaleZ = (float)width / (blocksZ * SR_BLOCK_SIZE);
	if (collide->Buffer != NULL)
	{
		LH3DMem::Free(collide->Buffer);
	}
	collide->Buffer = (uint8_t*)LH3DMem::Alloc(width * height);
	memset(collide->Buffer, 0, width * height);
	SRMono* rasterizer = SRMono::Create(SRMono::TYPE_SOLID);
	rasterizer->StartRendering(collide);
	for (i = 0; i < mesh->GetSubmeshCount(); i++)
	{
		LH3DSubMesh* submesh = mesh->GetListPtrSubmesh()[i];
		for (j = 0; j < submesh->GetPrimitiveCount(); j++)
		{
			LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[j];
			point = LH3DTech::g_cache_t_points;
			LH3DVertex* vertex = primitive->GetListVertex();
			for (k = 0; k < primitive->GetVerticesCount(); point++, vertex++, k++)
			{
				TransformPoint(point, vertex->position, matrix);
				point->x = (point->x - originX) * scaleX;
				point->z = (point->rhw - originZ) * scaleZ;
			}
			LH3DTriangle* triangle = primitive->Triangles;
			for (k = 0; k < primitive->GetTriangleCount(); triangle++, k++)
			{
				int       indexA = triangle->A;
				int       indexB = triangle->B;
				int       indexC = triangle->C;
				SRVertex  a;
				SRVertex  b;
				SRVertex  c;
				Vertex3D* cache = LH3DTech::g_cache_t_points;
				a.X = (int)cache[indexA].z;
				a.Y = (int)cache[indexA].x;
				b.X = (int)cache[indexB].z;
				b.Y = (int)cache[indexB].x;
				c.X = (int)cache[indexC].z;
				c.Y = (int)cache[indexC].x;
				rasterizer->AddTriangle(&a, &b, &c);
			}
		}
	}
	rasterizer->Release();
}

SRMono* SRMono::Create(Type type)
{
	SRMono* rasterizer = (SRMono*)LH3DMem::Alloc(sizeof(SRMono));
	memset(rasterizer, 0, sizeof(SRMono));
	return rasterizer;
}

void SRMono::Release()
{
	if (Left != NULL)
	{
		LH3DMem::Free(Left);
		Left = NULL;
	}
	if (Right != NULL)
	{
		LH3DMem::Free(Right);
		Right = NULL;
	}
	LH3DMem::Free(this);
}

SRTextured* SRTextured::Create()
{
	SRTextured* rasterizer = (SRTextured*)LH3DMem::Alloc(sizeof(SRTextured));
	memset(rasterizer, 0, sizeof(SRTextured));
	return rasterizer;
}

void SRTextured::Release()
{
	if (Left != NULL)
	{
		LH3DMem::Free(Left);
		Left = NULL;
	}
	if (Right != NULL)
	{
		LH3DMem::Free(Right);
		Right = NULL;
	}
	LH3DMem::Free(this);
}

SRFlatShade* SRFlatShade::Create()
{
	SRFlatShade* rasterizer = (SRFlatShade*)LH3DMem::Alloc(sizeof(SRFlatShade));
	memset(rasterizer, 0, sizeof(SRFlatShade));
	return rasterizer;
}

void SRFlatShade::Release()
{
	if (Left != NULL)
	{
		LH3DMem::Free(Left);
		Left = NULL;
	}
	if (Right != NULL)
	{
		LH3DMem::Free(Right);
		Right = NULL;
	}
	LH3DMem::Free(this);
}

void SRMono::StartRendering(SubCollideDataRender* target)
{
	Target = target;
	if (NumLines != target->Height)
	{
		NumLines = target->Height;
		long size = NumLines * sizeof(int);
		if (Left != NULL)
		{
			LH3DMem::Free(Left);
		}
		Left = (int*)LH3DMem::Alloc(size);
		if (Right != NULL)
		{
			LH3DMem::Free(Right);
		}
		Right = (int*)LH3DMem::Alloc(size);
	}
}

void SRTextured::StartRendering(SubCollideDataRender* target)
{
	Target = target;
	if (NumLines != target->Height)
	{
		NumLines = target->Height;
		long size = NumLines * sizeof(SRTexturedEdge);
		if (Left != NULL)
		{
			LH3DMem::Free(Left);
		}
		Left = (SRTexturedEdge*)LH3DMem::Alloc(size);
		if (Right != NULL)
		{
			LH3DMem::Free(Right);
		}
		Right = (SRTexturedEdge*)LH3DMem::Alloc(size);
	}
}

void SRFlatShade::StartRendering(SubCollideDataRender* target)
{
	Target = target;
	if (NumLines != target->Height)
	{
		NumLines = target->Height;
		long size = NumLines * sizeof(SRFlatShadeEdge);
		if (Left != NULL)
		{
			LH3DMem::Free(Left);
		}
		Left = (SRFlatShadeEdge*)LH3DMem::Alloc(size);
		if (Right != NULL)
		{
			LH3DMem::Free(Right);
		}
		Right = (SRFlatShadeEdge*)LH3DMem::Alloc(size);
	}
}

bool32_t SRMono::AddEdge(SRVertex* a, SRVertex* b)
{
	if (a->Y == b->Y)
	{
		if (a->X < b->X)
		{
			Left[a->Y] = a->X;
			Right[a->Y] = b->X;
		}
		else
		{
			Left[a->Y] = b->X;
			Right[a->Y] = a->X;
		}
		return true;
	}
	int  y0 = a->Y;
	int  y1 = b->Y;
	int  x0 = a->X;
	int  x1 = b->X;
	int* edge;
	if (y0 > y1)
	{
		edge = Right;
		int t = y0;
		y0 = y1;
		y1 = t;
		t = x0;
		x0 = x1;
		x1 = t;
	}
	else
	{
		edge = Left;
	}
	x1 -= x0;
	y1 += 1 - y0;
	edge += y0;
	int step = (int)((float)x1 / y1 * SR_FIXED_ONE);
	int x = x0 << 16;
	while (y1--)
	{
		*edge++ = x >> 16;
		x += step;
	}
	return true;
}

static inline void Clip(SRVertex* vertex, SubCollideDataRender* target)
{
	if (vertex->X < 0)
	{
		vertex->X = 0;
	}
	else if (vertex->X >= target->Width)
	{
		vertex->X = target->Width - 1;
	}
	if (vertex->Y < 0)
	{
		vertex->Y = 0;
	}
	else if (vertex->Y >= target->Height)
	{
		vertex->Y = target->Height - 1;
	}
}

static inline bool32_t IsAbove(SRVertex* a, SRVertex* b)
{
	return a->Y < b->Y || (a->Y == b->Y && a->X >= b->X);
}

static inline void Swap(SRVertex*& a, SRVertex*& b)
{
	SRVertex* t = a;
	a = b;
	b = t;
}

static inline void SortTriangle(SRVertex*& a, SRVertex*& b, SRVertex*& c)
{
	if (IsAbove(a, b))
	{
		if (!IsAbove(a, c))
		{
			Swap(a, c);
		}
	}
	else if (IsAbove(b, c))
	{
		Swap(a, b);
	}
	else
	{
		Swap(a, c);
	}
	int cx = c->X;
	int bx = b->X;
	if (bx > cx)
	{
		Swap(b, c);
	}
	else if (bx == cx)
	{
		if (a->X > b->X)
		{
			if (b->Y > c->Y)
			{
				Swap(b, c);
			}
		}
		else if (b->Y < c->Y)
		{
			Swap(b, c);
		}
	}
}

void SRMono::AddTriangle(SRVertex* a, SRVertex* b, SRVertex* c)
{
	Clip(a, Target);
	Clip(b, Target);
	Clip(c, Target);
	SortTriangle(a, b, c);
	Top = a->Y;
	Bottom = b->Y > c->Y ? b->Y : c->Y;
	AddEdge(a, b);
	AddEdge(b, c);
	AddEdge(c, a);
	RenderTriangle();
}

void SRMono::RenderTriangle()
{
	int*     left = Left + Top;
	int*     right = Right + Top;
	int      count = Bottom - Top + 1;
	int      width = Target->Width;
	uint8_t* line = Target->Buffer + Top * width;
	while (count--)
	{
		int      length = *right - *left + 1;
		uint8_t* pixel;
		if (length < 0)
		{
			length = *left - *right + 1;
			pixel = line + *right;
		}
		else
		{
			pixel = line + *left;
		}
		while (length--)
		{
			*pixel++ = SR_MONO_INSIDE;
		}
		line += width;
		left++;
		right++;
	}
}

bool32_t SRTextured::AddEdge(SRVertex* a, SRVertex* b)
{
	if (a->Y == b->Y)
	{
		if (a->X < b->X)
		{
			Left[a->Y].X = a->X;
			Left[a->Y].U = a->U;
			Left[a->Y].V = a->V;
			Right[a->Y].X = b->X;
			Right[a->Y].U = b->U;
			Right[a->Y].V = b->V;
		}
		else
		{
			Left[a->Y].X = b->X;
			Left[a->Y].U = b->U;
			Left[a->Y].V = b->V;
			Right[a->Y].X = a->X;
			Right[a->Y].U = a->U;
			Right[a->Y].V = a->V;
		}
		return true;
	}
	int             x0 = a->X;
	int             y0 = a->Y;
	int             y1 = b->Y;
	int             x1 = b->X;
	int             u0 = a->U;
	int             v0 = a->V;
	int             u1 = b->U;
	int             v1 = b->V;
	SRTexturedEdge* edge;
	if (y0 > y1)
	{
		int t = y0;
		y0 = y1;
		y1 = t;
		t = x0;
		x0 = x1;
		x1 = t;
		t = u0;
		u0 = u1;
		u1 = t;
		t = v0;
		v0 = v1;
		v1 = t;
		edge = Right;
	}
	else
	{
		edge = Left;
	}
	y1 += 1 - y0;
	float inverse = 1.0f / y1;
	edge += y0;
	int stepX = (int)((x1 - x0) * inverse * SR_FIXED_ONE);
	int x = x0 << 16;
	int stepU = (int)((u1 - u0) * inverse * SR_FIXED_ONE);
	int u = u0 << 16;
	int stepV = (int)((v1 - v0) * inverse * SR_FIXED_ONE);
	int v = v0 << 16;
	while (y1--)
	{
		edge->X = x >> 16;
		edge->U = u;
		edge->V = v;
		edge++;
		x += stepX;
		u += stepU;
		v += stepV;
	}
	return true;
}

bool32_t SRFlatShade::AddEdge(SRVertex* a, SRVertex* b)
{
	if (a->Y == b->Y)
	{
		if (a->X < b->X)
		{
			Left[a->Y].X = a->X;
			Left[a->Y].Shade = a->U << 16;
			Right[a->Y].X = b->X;
			Right[a->Y].Shade = b->U << 16;
		}
		else
		{
			Left[a->Y].X = b->X;
			Left[a->Y].Shade = b->U << 16;
			Right[a->Y].X = a->X;
			Right[a->Y].Shade = a->U << 16;
		}
		return true;
	}
	int              x0 = a->X;
	int              y0 = a->Y;
	int              y1 = b->Y;
	int              x1 = b->X;
	int              s0 = a->U;
	int              s1 = b->U;
	SRFlatShadeEdge* edge;
	if (y0 > y1)
	{
		int t = y0;
		y0 = y1;
		y1 = t;
		t = x0;
		x0 = x1;
		x1 = t;
		t = s0;
		s0 = s1;
		s1 = t;
		edge = Right;
	}
	else
	{
		edge = Left;
	}
	y1 += 1 - y0;
	edge += y0;
	float inverse = 1.0f / y1;
	int   stepX = (int)((x1 - x0) * inverse * SR_FIXED_ONE);
	int   x = x0 << 16;
	int   stepShade = (int)((s1 - s0) * inverse * SR_FIXED_ONE);
	int   shade = s0 << 16;
	while (y1--)
	{
		edge->X = x >> 16;
		edge->Shade = shade;
		edge++;
		x += stepX;
		shade += stepShade;
	}
	return true;
}

void SRTextured::AddTriangle(SRVertex* a, SRVertex* b, SRVertex* c)
{
	Clip(a, Target);
	Clip(b, Target);
	Clip(c, Target);
	SortTriangle(a, b, c);
	Top = a->Y;
	Bottom = b->Y > c->Y ? b->Y : c->Y;
	AddEdge(a, b);
	AddEdge(b, c);
	AddEdge(c, a);
	RenderTriangle();
}

void SRFlatShade::AddTriangle(SRVertex* a, SRVertex* b, SRVertex* c)
{
	Clip(a, Target);
	Clip(b, Target);
	Clip(c, Target);
	SortTriangle(a, b, c);
	Top = a->Y;
	Bottom = b->Y > c->Y ? b->Y : c->Y;
	AddEdge(a, b);
	AddEdge(b, c);
	AddEdge(c, a);
	RenderTriangle();
}

void SRTextured::RenderTriangle()
{
	SRTexturedEdge* left = Left + Top;
	SRTexturedEdge* right = Right + Top;
	int             count = Bottom - Top + 1;
	int             width = Target->Width;
	uint16_t*       line = Target->Pixels + Top * width;
	uint8_t*        texture = Target->Texture;
	while (count--)
	{
		int       length = right->X - left->X + 1;
		uint16_t* pixel;
		int       u;
		int       v;
		int       stepU;
		int       stepV;
		if (length < 0)
		{
			length = left->X - right->X + 1;
			pixel = line + right->X;
			u = right->U;
			v = right->V;
			if (length != 0)
			{
				stepU = (left->U - u) / length;
				stepV = (left->V - v) / length;
			}
		}
		else
		{
			pixel = line + left->X;
			u = left->U;
			v = left->V;
			if (length != 0)
			{
				stepU = (right->U - u) / length;
				stepV = (right->V - v) / length;
			}
		}
		while (length--)
		{
			*pixel++ |= (texture[((v >> 10) & ~(LH3D_T_SHADOW_BITMAP_SIZE - 1)) + (u >> 16)] >> 5) << 12;
			u += stepU;
			v += stepV;
		}
		line += width;
		left++;
		right++;
	}
}

void SRFlatShade::RenderTriangle()
{
	SRFlatShadeEdge* left = Left + Top;
	SRFlatShadeEdge* right = Right + Top;
	int              count = Bottom - Top + 1;
	int              width = Target->Width;
	uint8_t*         line = Target->Buffer + Top * width;
	while (count--)
	{
		int      length = right->X - left->X + 1;
		uint8_t* pixel;
		int      shade;
		int      step;
		if (length < 0)
		{
			length = left->X - right->X + 1;
			pixel = line + right->X;
			shade = right->Shade;
			if (length != 0)
			{
				step = (left->Shade - shade) / length;
			}
		}
		else
		{
			pixel = line + left->X;
			shade = left->Shade;
			if (length != 0)
			{
				step = (right->Shade - shade) / length;
			}
		}
		while (length--)
		{
			int value = shade >> 16;
			if (value != 0)
			{
				if (value > SR_SHADE_MAX)
				{
					value = SR_SHADE_MAX;
				}
				else if (value < 0)
				{
					value = 0;
				}
			}
			else
			{
				value = 0;
			}
			if (*pixel > value)
			{
				*pixel = value;
			}
			pixel++;
			shade += step;
		}
		line += width;
		left++;
		right++;
	}
}

void DrawMaskForBuildingPos(SubCollideDataRender* collide, LH3DObject* object)
{
	bool32_t       found = false;
	LH3DMesh*      mesh = object->GetMesh();
	float          minX;
	float          maxX;
	float          minZ;
	float          maxZ;
	LHMatrix*      matrix = &object->matrix;
	int            i;
	int            j;
	int            k;
	LH3DPrimitive* primitive;
	Vertex3D*      point;
	for (i = 0; i < mesh->GetSubmeshCount(); i++)
	{
		LH3DSubMesh* submesh = mesh->GetListPtrSubmesh()[i];
		if (submesh->GetStatus() != 0 || submesh->IsPhysics())
		{
			continue;
		}
		for (j = 0; j < submesh->GetPrimitiveCount(); j++)
		{
			primitive = submesh->GetListPtrPrimitive()[j];
			point = LH3DTech::g_cache_t_points;
			LH3DVertex* vertex = primitive->GetListVertex();
			for (k = 0; k < primitive->GetVerticesCount(); point++, vertex++, k++)
			{
				TransformPoint(point, vertex->position, matrix);
				point->z = point->rhw;
				if (found)
				{
					if (point->x < minX)
					{
						minX = point->x;
					}
					else if (point->x > maxX)
					{
						maxX = point->x;
					}
					if (point->z < minZ)
					{
						minZ = point->z;
					}
					else if (point->z > maxZ)
					{
						maxZ = point->z;
					}
				}
				else
				{
					minX = maxX = point->x;
					minZ = maxZ = point->z;
					found = true;
				}
			}
		}
	}
	int size = SR_MASK_SIZE;
	int count = size * size;
	int lastX = size - 1;
	int lastZ = size - 1;
	collide->Height = collide->Width = size;
	collide->Buffer = (uint8_t*)LH3DMem::AllocClear(count);
	SRMono* rasterizer = SRMono::Create(SRMono::TYPE_SOLID);
	rasterizer->StartRendering(collide);
	float scaleX = lastX / (maxX - minX);
	float scaleZ = lastZ / (maxZ - minZ);
	collide->Min.Set(minX, 0.0f, minZ);
	collide->Max.Set(maxX, 0.0f, maxZ);
	for (i = 0; i < mesh->GetSubmeshCount(); i++)
	{
		LH3DSubMesh* submesh = mesh->GetListPtrSubmesh()[i];
		if (submesh->GetStatus() != 0 || submesh->IsPhysics())
		{
			continue;
		}
		for (j = 0; j < submesh->GetPrimitiveCount(); j++)
		{
			primitive = submesh->GetListPtrPrimitive()[j];
			point = LH3DTech::g_cache_t_points;
			LH3DVertex* vertex = primitive->GetListVertex();
			for (k = 0; k < primitive->GetVerticesCount(); point++, vertex++, k++)
			{
				TransformPoint(point, vertex->position, matrix);
				point->x = (point->x - minX) * scaleX;
				point->z = (point->rhw - minZ) * scaleZ;
			}
			LH3DTriangle* triangle = primitive->Triangles;
			for (k = 0; k < primitive->GetTriangleCount(); triangle++, k++)
			{
				int       indexA = triangle->A;
				int       indexB = triangle->B;
				int       indexC = triangle->C;
				SRVertex  a;
				SRVertex  b;
				SRVertex  c;
				Vertex3D* cache = LH3DTech::g_cache_t_points;
				a.X = (int)cache[indexA].z;
				a.Y = (int)cache[indexA].x;
				b.X = (int)cache[indexB].z;
				b.Y = (int)cache[indexB].x;
				c.X = (int)cache[indexC].z;
				c.Y = (int)cache[indexC].x;
				rasterizer->AddTriangle(&a, &b, &c);
			}
		}
	}
	rasterizer->Release();
}
