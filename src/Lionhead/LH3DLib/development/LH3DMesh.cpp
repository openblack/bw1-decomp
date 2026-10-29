#include "LH3DMesh.h"

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>       /* For LHFileLength, LHLoadData */
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h> /* For LHReleasedFile */
#include <Lionhead/LHFile/ver3.0/LHSegment.h>      /* For LHSegment */
#include <Lionhead/LHLib/ver5.0/LHScreen.h>        /* For LHResetFPU */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>        /* For LHSys */

#include "FootPrintBase.h"        /* For FootPrintBase */
#include "LH3DAnim.h"             /* For LH3DAnim */
#include "LH3DLODData.h"          /* For LH3DLODData */
#include "LH3DMath.h"             /* For LH3DMath */
#include "LH3DMem.h"              /* For LH3DMem */
#include "LH3DObject.h"           /* For LH3DObject */
#include "LH3DPrimitive.h"        /* For LH3DPrimitive */
#include "LH3DRender.h"           /* For LH3DRender */
#include "LH3DSubMesh.h"          /* For LH3DSubMesh */
#include "LH3DTShadow.h"          /* For LH3D_T_SHADOW_SIZE */
#include "LH3DTech.h"             /* For LH3DTech, Report3D__FPCce */
#include "LH3DTexture.h"          /* For LH3DTexture */
#include "LH3DTnLData.h"          /* For LH3DTnLData */
#include "LH3DVertexGroup.h"      /* For LH3DVertexGroup */
#include "LHMatrix.h"             /* For LHMatrix */
#include "SRTextured.h"           /* For SRTextured */
#include "SoftTri.h"              /* For SoftTri */
#include "SubCollideDataRender.h" /* For SubCollideDataRender */
#include "SubMeshDrawData.h"      /* For SubMeshDrawData */
#include "TShadowInfo.h"          /* For TShadowInfo */

#define LH3D_MESH_MAGIC         'L3D0'
#define LH3D_MESH_MAGIC_CHAR(i) ((char)(LH3D_MESH_MAGIC >> (24 - 8 * (i))))

#define LH3D_MESH_SEGMENT_NAME "MESHES"

#define LH3D_MESH_SHADOW_WIDTH 80.0f
#define LH3D_MESH_SHADOW_DEPTH 40.0f

#define LH3D_MESH_SHADOW_CLIP_X 128
#define LH3D_MESH_SHADOW_CLIP_Y 64

#define LH3D_MESH_SHADOW_FAR 1e20f

#define LH3D_MESH_SHADOW_ALPHA_MASK 0xf000

#define LH3D_MESH_SAME_POSITION_EPSILON 0.005f
#define LH3D_MESH_SAME_UV_EPSILON       (1.0f / 512)
#define LH3D_MESH_SAME_NORMAL_COSINE    0.93f
#define LH3D_MESH_MAX_SHARED_NORMALS    10

#define LH3D_MESH_TNL_DEFAULT_VERTICES 0x1000
#define LH3D_MESH_BOX_CORNERS          8
#define LH3D_MESH_SUB_MESH_LIGHT_MAPS  2

enum LH3D_MESH_LIGHT_MAP_PASS
{
	LH3D_MESH_LIGHT_MAP_PASS_LIGHT_MAP,
	LH3D_MESH_LIGHT_MAP_PASS_LIT,
	LH3D_MESH_LIGHT_MAP_PASS_REMAPPED,
	LH3D_MESH_LIGHT_MAP_PASS_LAST
};

enum LH3D_MESH_LIGHT_MAP_DRAW
{
	LH3D_MESH_LIGHT_MAP_DRAW_LIT = 1,
	LH3D_MESH_LIGHT_MAP_DRAW_UV_REMAP = 2,
};

struct LH3DTnLVertex
{
	LHPoint Position; /* 0x0 */
	LHPoint Normal;   /* 0xc */
	float   U;        /* 0x18 */
	float   V;
};
static_assert(sizeof(LH3DTnLVertex) == 0x20, "Data type is of wrong size");

struct LH3DMeshFootprint
{
	int                Width; /* 0x0 */
	int                Height;
	uint32_t           field_0x8;
	uint16_t*          Pixels;   /* 0xc */
	LH3DMeshFootprint* Previous; /* 0x10 */
	int                NumMatrices;
};
static_assert(sizeof(LH3DMeshFootprint) == 0x18, "Data type is of wrong size");

struct LH3DMeshFootprintData
{
	uint32_t           Count; /* 0x0 */
	LH3DMeshFootprint* First;
	uint32_t           Size;
};

struct LH3DMeshNormalList
{
	int     Count;
	LHPoint Normals[LH3D_MESH_MAX_SHARED_NORMALS];
};

#define LH3D_LOD_MIN_EDGES             3
#define LH3D_LOD_MAX_EDGE_LENGTH_SQ    1e10
#define LH3D_LOD_NO_EDGE_LENGTH_SQ     1e20f
#define LH3D_LOD_MAX_POSITION_VERTICES 16
#define LH3D_LOD_MAX_EDGE_VERTICES     8

struct LH3DLODVertexList
{
	int Count;
	int Vertices[LH3D_LOD_MAX_POSITION_VERTICES];

	void Add(int vertex)
	{
		for (int i = 0; i < Count; i++)
		{
			if (Vertices[i] == vertex)
			{
				return;
			}
		}
		Vertices[Count++] = vertex;
	}
};

struct LH3DLODEdge
{
	int   A;
	int   B;
	int   Count;
	int   VerticesA[LH3D_LOD_MAX_EDGE_VERTICES];
	int   VerticesB[LH3D_LOD_MAX_EDGE_VERTICES];
	float Length;
};

static inline int AddEdge(LH3DLODEdge* edges, int count, int a, int b, int vertex_a, int vertex_b)
{
	if (a == b)
	{
		return count;
	}
	if (a > b)
	{
		int swap = a;
		a = b;
		b = swap;
		swap = vertex_a;
		vertex_a = vertex_b;
		vertex_b = swap;
	}
	int i;
	for (i = 0; i < count; i++)
	{
		if (edges[i].A == a && edges[i].B == b)
		{
			for (int j = 0; j < edges[i].Count; j++)
			{
				if (edges[i].VerticesA[j] == vertex_a && edges[i].VerticesB[j] == vertex_b)
				{
					return count;
				}
			}
			edges[i].VerticesA[edges[i].Count] = vertex_a;
			edges[i].VerticesB[edges[i].Count] = vertex_b;
			edges[i].Count++;
			return count;
		}
	}
	edges[i].A = a;
	edges[i].B = b;
	edges[i].Count = 1;
	edges[i].VerticesA[0] = vertex_a;
	edges[i].VerticesB[0] = vertex_b;
	return count + 1;
}

inline long LH3DMesh::GetVerticesCount()
{
	long count = 0;
	for (int i = 0; i < SubmeshCount; i++)
	{
		count += submeshes[i]->GetVerticesCount();
	}
	return count;
}

inline long LH3DSubMesh::GetTriangleCount()
{
	long count = 0;
	for (int i = 0; i < NumPrimitives; i++)
	{
		count += primitives_[i]->GetTriangleCount();
	}
	return count;
}

inline long LH3DMesh::GetTriangleCount()
{
	long count = 0;
	for (int i = 0; i < SubmeshCount; i++)
	{
		count += submeshes[i]->GetTriangleCount();
	}
	return count;
}

unsigned long LH3DMesh::g_color = 0xffffffff;
unsigned long LH3DMesh::g_special_color = 0xffffffff;
int           LH3DMesh::g_current_lod = LH3D_MESH_LOD_NEAR;
unsigned long LH3DMesh::g_window_col = 0xffffffff;
LHMatrix*     LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;

LH3DTnLData*        LH3DMesh::g_current_vb;
bool                LH3DMesh::g_hinge_only = false;
LHPoint             LH3DMesh::g_local_point;
LHPoint             LH3DMesh::g_world_point;
unsigned long       LH3DMesh::g_specular = 0;
TShadowInfo*        LH3DMesh::g_current_shadow = NULL;
LH3DMeshPack*       LH3DMesh::g_pack = NULL;
bool32_t            LH3DMesh::g_b_open = false;
int                 LH3DMesh::g_count = 0;
float*              LH3DMesh::g_list_shadow_pt;
long                LH3DMesh::g_last_size_shadow = 0;
bool                LH3DMesh::g_window_state = false;
LHMatrix*           LH3DMesh::g_current_matrix = NULL;
LHMatrix            LH3DMesh::g_my_list_matrix[LH3D_MESH_LIST_MATRIX_SIZE];
FootPrintBase*      FootPrintBase::g_first = NULL;
int                 FootPrintBase::g_count = 0;
bool32_t            LH3DMesh::g_b_dont_care_about_texture = false;
bool32_t            g_b_from_l3d = false;
LHPoint*            g_can_be_only_one = NULL;
LHPoint*            g_can_be_only_one_normal = NULL;
LHPoint*            g_tmp_can_be_only_one = NULL;
LH3DVertex*         g_can_be_only_one_vertex = NULL;
int                 g_nb_pt_cboo = 0;
LH3DMeshNormalList* g_list_of_normals = NULL;

#ifndef VERSION_BW1W100
void LH3DLODData::InitialiseDefault(LH3DMesh* mesh)
{
	NumIndices = mesh->GetVerticesCount();
	Indices = new LH3DLODIndex[NumIndices];
	NumVertices = mesh->GetVerticesCount();
	Vertices = new LH3DLODVertex[NumIndices];
	NumTVertices = 0;
	TVertices = new LH3DLODTVertex[NumIndices];

	int i;
	int index = 0;
	for (i = 0; i < mesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = mesh->submeshes[i];
		for (int j = 0; j < submesh->NumPrimitives; j++)
		{
			LH3DPrimitive* primitive = submesh->primitives_[j];
			LH3DVertex*    vertex = primitive->Vertices;
			for (int k = 0; k < primitive->NumVertices; k++)
			{
				int t;
				for (t = 0; t < NumTVertices; t++)
				{
					if (TVertices[t].Position == vertex->position)
					{
						break;
					}
				}
				if (t == NumTVertices)
				{
					TVertices[t].Position = vertex->position;
					TVertices[t].Parent = LH3D_LOD_NO_PARENT;
					NumTVertices++;
				}
				Indices[index].TVertex = t;
				Indices[index].Vertex = index;
				Vertices[index].Parent = LH3D_LOD_NO_PARENT;
				Vertices[index].Normal = vertex->normal;
				Vertices[index].UV.x = vertex->uv.x;
				Vertices[index].UV.y = vertex->uv.y;
				vertex++;
				index++;
			}
		}
	}

	LH3DLODVertexList* lists = new LH3DLODVertexList[NumTVertices];
	memset(lists, 0, NumTVertices * sizeof(LH3DLODVertexList));
	long         numTriangles = mesh->GetTriangleCount();
	LH3DLODEdge* edges = new LH3DLODEdge[mesh->GetTriangleCount() * 3];
	int          numEdges = 0;
	int          firstVertex = 0;
	for (i = 0; i < mesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = mesh->submeshes[i];
		for (int j = 0; j < submesh->NumPrimitives; j++)
		{
			LH3DPrimitive* primitive = submesh->primitives_[j];
			LH3DTriangle*  triangle = primitive->Triangles;
			for (int k = 0; k < primitive->NumTriangles; k++)
			{
				int a = triangle->A + firstVertex;
				int b = triangle->B + firstVertex;
				int c = triangle->C + firstVertex;
				int ta = Indices[a].TVertex;
				int tb = Indices[b].TVertex;
				int tc = Indices[c].TVertex;
				int va = Indices[a].Vertex;
				int vb = Indices[b].Vertex;
				int vc = Indices[c].Vertex;
				lists[ta].Add(va);
				lists[tb].Add(vb);
				lists[tc].Add(vc);
				numEdges = AddEdge(edges, numEdges, ta, tb, va, vb);
				numEdges = AddEdge(edges, numEdges, ta, tc, va, vc);
				numEdges = AddEdge(edges, numEdges, tc, tb, vc, vb);
				triangle++;
			}
			firstVertex += primitive->NumVertices;
		}
	}

	int numTVertices = NumTVertices;
	int numVertices = NumIndices;
	while (numEdges > LH3D_LOD_MIN_EDGES)
	{
		int   i;
		int   best = 0;
		float bestLength = LH3D_LOD_NO_EDGE_LENGTH_SQ;
		for (i = 0; i < numEdges; i++)
		{
			float    length = TVertices[edges[i].A].Position.GetDistanceSq(TVertices[edges[i].B].Position);
			int      a = edges[i].A;
			int      b = edges[i].B;
			bool32_t canRemoveA = lists[a].Count <= lists[b].Count;
			bool32_t canRemoveB = lists[a].Count >= lists[b].Count;
			if (length < bestLength && (canRemoveA || canRemoveB))
			{
				bestLength = length;
				best = i;
			}
			edges[i].Length = length;
		}
		int      a = edges[best].A;
		int      b = edges[best].B;
		bool32_t canRemoveA = lists[a].Count <= lists[b].Count;
		bool32_t canRemoveB = lists[a].Count >= lists[b].Count;
		if (bestLength > LH3D_LOD_MAX_EDGE_LENGTH_SQ)
		{
			break;
		}
		if (!canRemoveA && !canRemoveB)
		{
			break;
		}
		float lengthA = 0.0f;
		float lengthB = 0.0f;
		for (i = 0; i < numEdges; i++)
		{
			if (edges[i].A == a || edges[i].B == a)
			{
				lengthA += edges[i].Length;
			}
			if (edges[i].A == b || edges[i].B == b)
			{
				lengthB += edges[i].Length;
			}
		}
		bool swapped = false;
		if ((lengthA > lengthB && canRemoveB) || !canRemoveA)
		{
			int swap = a;
			a = b;
			b = swap;
			swapped = true;
		}
		TVertices[a].Parent = b;
		TVertices[a].NumVertices = numVertices;
		int lastTVertex = numTVertices - 1;
		for (int k = 0; k < edges[best].Count; k++)
		{
			int from = swapped ? edges[best].VerticesB[k] : edges[best].VerticesA[k];
			int to = swapped ? edges[best].VerticesA[k] : edges[best].VerticesB[k];
			int last = numVertices - 1;
			Vertices[from].Parent = to;
			LH3DLODVertex vertex = Vertices[last];
			Vertices[last] = Vertices[from];
			Vertices[from] = vertex;
			for (i = 0; i < NumIndices; i++)
			{
				if (Indices[i].Vertex == from)
				{
					Indices[i].Vertex = last;
				}
				else if (Indices[i].Vertex == last)
				{
					Indices[i].Vertex = from;
				}
			}
			for (i = 0; i < NumTVertices; i++)
			{
				for (int j = 0; j < lists[i].Count; j++)
				{
					if (lists[i].Vertices[j] == from)
					{
						lists[i].Vertices[j] = last;
					}
					else if (lists[i].Vertices[j] == last)
					{
						lists[i].Vertices[j] = from;
					}
				}
			}
			for (i = 0; i < NumVertices; i++)
			{
				if (Vertices[i].Parent == from)
				{
					Vertices[i].Parent = last;
				}
				else if (Vertices[i].Parent == last)
				{
					Vertices[i].Parent = from;
				}
			}
			for (i = 0; i < numEdges; i++)
			{
				for (int j = 0; j < edges[i].Count; j++)
				{
					if (edges[i].VerticesA[j] == from)
					{
						edges[i].VerticesA[j] = to;
					}
					if (edges[i].VerticesB[j] == from)
					{
						edges[i].VerticesB[j] = to;
					}
					if (edges[i].VerticesA[j] == from)
					{
						edges[i].VerticesA[j] = last;
					}
					else if (edges[i].VerticesA[j] == last)
					{
						edges[i].VerticesA[j] = from;
					}
					if (edges[i].VerticesB[j] == from)
					{
						edges[i].VerticesB[j] = last;
					}
					else if (edges[i].VerticesB[j] == last)
					{
						edges[i].VerticesB[j] = from;
					}
				}
			}
			numVertices--;
		}
		LH3DLODTVertex tvertex = TVertices[lastTVertex];
		TVertices[lastTVertex] = TVertices[a];
		TVertices[a] = tvertex;
		LH3DLODVertexList list = lists[lastTVertex];
		lists[lastTVertex] = lists[a];
		lists[a] = list;
		for (i = 0; i < NumIndices; i++)
		{
			if (Indices[i].TVertex == a)
			{
				Indices[i].TVertex = lastTVertex;
			}
			else if (Indices[i].TVertex == lastTVertex)
			{
				Indices[i].TVertex = a;
			}
		}
		for (i = 0; i < NumTVertices; i++)
		{
			if (TVertices[i].Parent == a)
			{
				TVertices[i].Parent = lastTVertex;
			}
			else if (TVertices[i].Parent == lastTVertex)
			{
				TVertices[i].Parent = a;
			}
		}
		for (i = 0; i < numEdges; i++)
		{
			if (edges[i].A == a)
			{
				edges[i].A = b;
			}
			if (edges[i].B == a)
			{
				edges[i].B = b;
			}
			if (edges[i].A == a)
			{
				edges[i].A = lastTVertex;
			}
			else if (edges[i].A == lastTVertex)
			{
				edges[i].A = a;
			}
			if (edges[i].B == a)
			{
				edges[i].B = lastTVertex;
			}
			else if (edges[i].B == lastTVertex)
			{
				edges[i].B = a;
			}
			if (edges[i].A > edges[i].B)
			{
				int swap = edges[i].A;
				edges[i].A = edges[i].B;
				edges[i].B = swap;
				for (int j = 0; j < edges[i].Count; j++)
				{
					swap = edges[i].VerticesA[j];
					edges[i].VerticesA[j] = edges[i].VerticesB[j];
					edges[i].VerticesB[j] = swap;
				}
			}
		}
		numTVertices = lastTVertex;
		for (i = 0; i < numEdges; i++)
		{
			bool remove = edges[i].A == edges[i].B;
			for (int j = 0; j < numEdges; j++)
			{
				if (j != i && edges[j].A == edges[i].A && edges[j].B == edges[i].B && edges[j].Count >= edges[i].Count)
				{
					remove = true;
					break;
				}
			}
			if (remove)
			{
				numEdges--;
				edges[i] = edges[numEdges];
				i--;
			}
		}
	}
	MinLod = numTVertices + 1;
	MaxLod = NumTVertices;
	delete[] lists;
	delete[] edges;
}
#endif

void LH3DMesh::DrawLOD(LH3DLODData* lod_data, int lod)
{
	lod_data->DrawLOD(this, lod);
}

void LH3DLODData::DrawLOD(LH3DMesh* mesh, int lod)
{
	if (lod < MinLod)
	{
		lod = MinLod;
	}
	if (lod > MaxLod)
	{
		lod = MaxLod;
	}
	LH3DMesh::g_current_matrix = LH3DMesh::g_current_list_matrix;
	int             i;
	LH3DLODTVertex* tvertex = TVertices;
	for (i = 0; i < lod; i++)
	{
		TransformPointBy(&tvertex->Transformed, tvertex->Position, LH3DTech::g_current_matrix);
		if (tvertex->Transformed.z < LH3DTech::g_info_transform.NearClip)
		{
			tvertex->ClipFlags = LH3DTech::CLIP_CODE_NEAR;
		}
		else
		{
			tvertex->ClipFlags = 0;
		}
		if (tvertex->Transformed.x > tvertex->Transformed.z)
		{
			tvertex->ClipFlags |= LH3DTech::CLIP_CODE_RIGHT;
		}
		else if (-tvertex->Transformed.z > tvertex->Transformed.x)
		{
			tvertex->ClipFlags |= LH3DTech::CLIP_CODE_LEFT;
		}
		if (tvertex->Transformed.y > tvertex->Transformed.z)
		{
			tvertex->ClipFlags |= LH3DTech::CLIP_CODE_TOP;
		}
		else if (-tvertex->Transformed.z > tvertex->Transformed.y)
		{
			tvertex->ClipFlags |= LH3DTech::CLIP_CODE_BOTTOM;
		}
		if (!tvertex->ClipFlags)
		{
			tvertex->Transformed.z = 1.0f / tvertex->Transformed.z;
			tvertex->Transformed.x =
				(tvertex->Transformed.x * tvertex->Transformed.z + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			tvertex->Transformed.y =
				(1.0f - tvertex->Transformed.y * tvertex->Transformed.z) * LH3DTech::g_info_transform.HalfRes.y;
			tvertex->Transformed.z = tvertex->Transformed.z * LH3DTech::g_info_transform.NearClip;
		}
		tvertex++;
	}

	int            numVertices = TVertices[lod - 1].NumVertices;
	LH3DLODVertex* vertex = Vertices;
	for (i = 0; i < numVertices; i++)
	{
		vertex->PointPrimitive = LH3D_LOD_NO_PRIMITIVE;
		vertex->Color =
			ScaleColor(LH3DMesh::g_color,
		               GetLightLevel(FloatToInt(LH3DPrimitive::g_vect_light * vertex->Normal * LH3D_LIGHT_MAX)));
		vertex++;
	}

	int firstVertex = 0;
	int numPoints = 0;
	for (i = 0; i < mesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = mesh->submeshes[i];
		for (int j = 0; j < submesh->NumPrimitives; j++)
		{
			LH3DPrimitive* primitive = submesh->primitives_[j];
			LH3DTriangle*  triangle = primitive->Triangles;
			LH3DTech::g_index_count = 0;
			LH3DTech::g_points_count = 0;
			for (int t = 0; t < primitive->NumTriangles; t++, triangle++)
			{
				unsigned long* flags = &LH3DTech::g_cache_flags[LH3DTech::g_points_count];
				Vertex3D*      point = &LH3DTech::g_cache_t_points[LH3DTech::g_points_count];
				int            a = triangle->A + firstVertex;
				int            b = triangle->B + firstVertex;
				int            c = triangle->C + firstVertex;
				int            ta = Indices[a].TVertex;
				int            tb = Indices[b].TVertex;
				int            tc = Indices[c].TVertex;
				int            va = Indices[a].Vertex;
				int            vb = Indices[b].Vertex;
				int            vc = Indices[c].Vertex;
				while (ta >= lod)
				{
					ta = TVertices[ta].Parent;
				}
				while (tb >= lod)
				{
					tb = TVertices[tb].Parent;
				}
				while (tc >= lod)
				{
					tc = TVertices[tc].Parent;
				}
				while (va >= numVertices)
				{
					va = Vertices[va].Parent;
				}
				while (vb >= numVertices)
				{
					vb = Vertices[vb].Parent;
				}
				while (vc >= numVertices)
				{
					vc = Vertices[vc].Parent;
				}
				if (TVertices[ta].ClipFlags & TVertices[tb].ClipFlags & TVertices[tc].ClipFlags)
				{
					continue;
				}
				unsigned long clip = TVertices[ta].ClipFlags | TVertices[tb].ClipFlags | TVertices[tc].ClipFlags;
				if (!clip && (TVertices[tb].Transformed.x - TVertices[ta].Transformed.x) *
				                         (TVertices[tc].Transformed.y - TVertices[ta].Transformed.y) -
				                     (TVertices[tc].Transformed.x - TVertices[ta].Transformed.x) *
				                         (TVertices[tb].Transformed.y - TVertices[ta].Transformed.y) <=
				                 0.0f)
				{
					continue;
				}
				int ia;
				int ib;
				int ic;
				if (Vertices[va].PointPrimitive == j)
				{
					ia = Vertices[va].PointIndex;
				}
				else
				{
					LH3DLODTVertex* tv = &TVertices[ta];
					*flags = tv->ClipFlags;
					point->x = tv->Transformed.x;
					point->y = tv->Transformed.y;
					point->rhw = tv->Transformed.z;
					if (!tv->ClipFlags)
					{
						point->z = 1.0f - point->rhw;
					}
					LH3DLODVertex* lodVertex = &Vertices[va];
					point->color = lodVertex->Color;
					point->specular = 0;
					flags++;
					point->uv = lodVertex->UV;
					ia = LH3DTech::g_points_count;
					point++;
					Vertices[va].PointIndex = ia;
					LH3DTech::g_points_count++;
					Vertices[va].PointPrimitive = j;
				}
				if (Vertices[vb].PointPrimitive == j)
				{
					ib = Vertices[vb].PointIndex;
				}
				else
				{
					LH3DLODTVertex* tv = &TVertices[tb];
					*flags = tv->ClipFlags;
					point->x = tv->Transformed.x;
					point->y = tv->Transformed.y;
					point->rhw = tv->Transformed.z;
					if (!tv->ClipFlags)
					{
						point->z = 1.0f - point->rhw;
					}
					LH3DLODVertex* lodVertex = &Vertices[vb];
					point->color = lodVertex->Color;
					point->specular = 0;
					flags++;
					point->uv = lodVertex->UV;
					ib = LH3DTech::g_points_count;
					point++;
					Vertices[vb].PointIndex = ib;
					LH3DTech::g_points_count++;
					Vertices[vb].PointPrimitive = j;
				}
				if (Vertices[vc].PointPrimitive == j)
				{
					ic = Vertices[vc].PointIndex;
				}
				else
				{
					LH3DLODTVertex* tv = &TVertices[tc];
					*flags = tv->ClipFlags;
					point->x = tv->Transformed.x;
					point->y = tv->Transformed.y;
					point->rhw = tv->Transformed.z;
					if (!tv->ClipFlags)
					{
						point->z = 1.0f - point->rhw;
					}
					LH3DLODVertex* lodVertex = &Vertices[vc];
					point->color = lodVertex->Color;
					point->specular = 0;
					flags++;
					point->uv = lodVertex->UV;
					ic = LH3DTech::g_points_count;
					point++;
					Vertices[vc].PointIndex = ic;
					LH3DTech::g_points_count++;
					Vertices[vc].PointPrimitive = j;
				}
				if (clip)
				{
					LH3DTech::ClipTriangle(ia, ib, ic, LH3DTech::CLIP_CODE_NEAR);
				}
				else
				{
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = ia;
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = ib;
					LH3DTech::g_list_indices[LH3DTech::g_index_count++] = ic;
				}
			}
			if (LH3DTech::g_index_count)
			{
				numPoints += LH3DTech::g_points_count;
				LH3DRender::SetMaterial(&primitive->Material, 0);
				LH3DRender::g_draw_triangle_func(LH3DTech::g_cache_t_points, LH3DTech::g_points_count,
				                                 LH3DTech::g_list_indices, LH3DTech::g_index_count);
			}
			firstVertex += primitive->NumVertices;
		}
	}
}

LH3DMesh* LH3DMesh::Create(void* buf, bool32_t dont_care_about_texture)
{
	g_b_dont_care_about_texture = dont_care_about_texture;
	LH3DMesh* source = (LH3DMesh*)buf;
	if ((source->magic[0] != LH3D_MESH_MAGIC_CHAR(0)) | (source->magic[1] != LH3D_MESH_MAGIC_CHAR(1)) |
	    (source->magic[2] != LH3D_MESH_MAGIC_CHAR(2)) | (source->magic[3] != LH3D_MESH_MAGIC_CHAR(3)))
	{
		Report3D__FPCce("It's an old Mesh.\n");
		Report3D__FPCce("Crash Soon.\n");
		if (g_pack)
		{
			GetPackedMesh(0)->AddReference();
			return GetPackedMesh(0);
		}
		return NULL;
	}

	int       i;
	long      size = source->size;
	LH3DMesh* mesh = (LH3DMesh*)LH3DMem::Alloc(size);
	memcpy(mesh, buf, size);
	if (g_b_dont_care_about_texture)
	{
		mesh->SkinCount = 0;
	}
	mesh->size = 1;
	if (mesh->SkinCount == 0)
	{
		mesh->skins = NULL;
	}
	else
	{
		mesh->skins = (LH3DTexture**)((uint8_t*)mesh + (uint32_t)source->skins);
		for (i = 0; i < mesh->SkinCount; i++)
		{
			unsigned long offset = (unsigned long)mesh->skins[i];
			if (mesh->flags & LH3D_MESH_FLAGS_PACKED)
			{
				mesh->skins[i] = LH3DTexture::GetThisTexture(offset);
			}
			else
			{
				uint8_t*      skin = (uint8_t*)buf + offset;
				unsigned long skin_size = *(unsigned long*)skin;
				skin += sizeof(skin_size);
				TextureFormat format;
				format.Type = LH3D_TEXTURE_FORMAT_MESH_SKIN;
				g_b_from_l3d = true;
				if (mesh->flags & LH3D_MESH_FLAGS_SKINS_HAVE_FORMAT)
				{
					mesh->skins[i] = LH3DTexture::Create(skin, LH3D_TEXTURE_TYPE_SYSTEM_MEMORY, skin_size, &format);
				}
				else
				{
					mesh->skins[i] = LH3DTexture::Create(skin, LH3D_TEXTURE_TYPE_SYSTEM_MEMORY, skin_size, NULL);
				}
				g_b_from_l3d = false;
			}
		}
	}

	mesh->submeshes = (LH3DSubMesh**)((uint8_t*)mesh + (uint32_t)source->submeshes);
	for (i = 0; i < mesh->SubmeshCount; i++)
	{
		mesh->submeshes[i] = (LH3DSubMesh*)((uint8_t*)mesh->submeshes[i] + (uint32_t)mesh);
		LH3DSubMesh::Create((uint8_t*)mesh, mesh->submeshes[i]);
	}

	if ((uint32_t)mesh->BoundingBoxes != LH3D_MESH_NO_OFFSET)
	{
		mesh->BoundingBoxes = (uint8_t*)mesh + (uint32_t)mesh->BoundingBoxes;
	}
	else
	{
		mesh->BoundingBoxes = NULL;
	}
	if (mesh->ExtraDataCount)
	{
		mesh->ExtraPos = (LHPoint*)((uint8_t*)mesh + (uint32_t)mesh->ExtraPos);
	}
	else
	{
		mesh->ExtraPos = NULL;
	}

	ComputeNornal(mesh);
	mesh->ComputeBoundingBox();
	g_count++;

	if (mesh->IsContainsNewData() && (uint32_t)mesh->FootprintData != LH3D_MESH_NO_OFFSET)
	{
		uint8_t* data = (uint8_t*)mesh + (uint32_t)mesh->FootprintData;
		mesh->FootprintData = data;
		if (mesh->IsContainsLandscapeFeature())
		{
			LH3DMeshFootprintData* footprints = (LH3DMeshFootprintData*)data;
			if ((uint32_t)footprints->First != LH3D_MESH_NO_OFFSET)
			{
				data = (uint8_t*)mesh + (uint32_t)footprints->First;
				footprints->First = (LH3DMeshFootprint*)data;
				LH3DMeshFootprint* previous = NULL;
				LH3DMeshFootprint* current = (LH3DMeshFootprint*)data;
				for (uint32_t j = 0; j < footprints->Count; j++)
				{
					LH3DMeshFootprint* footprint = (LH3DMeshFootprint*)data;
					int                count = footprint->NumMatrices;
					footprint->Previous = previous;
					footprint->Pixels = (uint16_t*)(data + count * sizeof(LHMatrix) + sizeof(LH3DMeshFootprint));
					data += footprint->Height * footprint->Width * sizeof(uint16_t) + count * sizeof(LHMatrix) +
					        sizeof(LH3DMeshFootprint);
					previous = current;
					current = (LH3DMeshFootprint*)data;
				}
			}
			else
			{
				footprints->First = NULL;
			}
		}
		if (mesh->IsContainsUV2())
		{
			LH3DMeshUV2Data* uv2 = (LH3DMeshUV2Data*)data;
			uv2->LightMaps = (LH3DMaterial*)((uint8_t*)uv2->LightMaps + (uint32_t)mesh);
			uint8_t* next = data + uv2->Size;
			uv2->UVs = (float*)((uint8_t*)uv2->UVs + (uint32_t)mesh);
			LH3DMaterial* material = uv2->LightMaps;
			for (int j = 0; j < (int)uv2->Count; j++)
			{
				if (material->texture)
				{
					material->texture = LH3DTexture::GetThisTexture(material->GetTextureId());
				}
				else
				{
					material->texture = NULL;
				}
				material++;
				if (material->texture)
				{
					material->texture = LH3DTexture::GetThisTexture(material->GetTextureId());
				}
				else
				{
					material->texture = NULL;
				}
				material++;
			}
			data = next;
		}
		if (mesh->IsContainsNameData())
		{
			SubmeshNameData* names = (SubmeshNameData*)data;
			names->Names = (SubmeshName*)((uint8_t*)names->Names + (uint32_t)mesh);
		}
		uint8_t* metrics = mesh->GetEMetricsData();
		if (metrics)
		{
			LH3DMeshExtraMetrics* extra = (LH3DMeshExtraMetrics*)metrics;
			extra->Matrices = (LHMatrix*)((uint8_t*)extra->Matrices + (uint32_t)mesh);
		}
	}
	else
	{
		mesh->FootprintData = NULL;
	}

	bool32_t physics = false;
	for (i = 0; i < mesh->SubmeshCount; i++)
	{
		if (mesh->GetListPtrSubmesh()[i]->IsPhysics())
		{
			physics = true;
		}
	}
	if (physics)
	{
		mesh->flags |= LH3D_MESH_FLAGS_HAS_PHYSICS;
	}

	if (LH3DRender::g_b_support_TNL)
	{
		mesh->InitialiseTnL();
	}
	return mesh;
}

LH3DMesh* LH3DMesh::CreateFromHD(char* filename, bool32_t dont_care_about_textures)
{
	uint32_t length;
	char     error[1024];
	if (LHFileLength(filename, &length) != LH_FILE_RESULT_OK)
	{
		sprintf(error, "Can't create %s", filename);
		return NULL;
	}
	void* data = LH3DMem::Alloc(length);
	LHLoadData(filename, data, length, NULL);
	LH3DMesh* mesh = Create(data, dont_care_about_textures);
	LH3DMem::Free(data);
	return mesh;
}

void LH3DMesh::InitialiseTnL()
{
	ReleaseTnL();
	if (!IsContainsTnLData())
	{
		return;
	}

	D3DVERTEXBUFFERDESC desc;
	desc.dwSize = sizeof(desc);
	desc.dwCaps = D3DVBCAPS_WRITEONLY;
	desc.dwFVF = D3DFVF_XYZ | D3DFVF_NORMAL | D3DFVF_TEX1;
	desc.dwNumVertices = LH3D_MESH_TNL_DEFAULT_VERTICES;
	int       index = 0;
	uint32_t* list = (uint32_t*)GetTnLData();
	for (int i = 0; i < GetSubmeshCount(); i++)
	{
		LH3DSubMesh* submesh = GetListPtrSubmesh()[i];
		for (int j = 0; j < submesh->GetPrimitiveCount(); j++)
		{
			LH3DTnLData*            data = (LH3DTnLData*)&list[index + 1];
			LH3DPrimitive*          primitive = submesh->GetListPtrPrimitive()[j];
			IDirect3DVertexBuffer7* buffer;
			desc.dwNumVertices = primitive->GetVerticesCount();
			LH3DRender::D3D->CreateVertexBuffer(&desc, &buffer, 0);
			if (buffer)
			{
				LH3DTnLVertex* vertices;
				HRESULT        result =
					buffer->Lock(DDLOCK_WAIT | DDLOCK_WRITEONLY | DDLOCK_DISCARDCONTENTS, (void**)&vertices, NULL);
				if (result == D3D_OK)
				{
					LH3DVertex* vertex = primitive->GetListVertex();
					for (int k = 0; k < (int)desc.dwNumVertices; k++)
					{
						vertices[k].U = vertex->uv.x;
						vertices[k].V = vertex->uv.y;
						vertices[k].Position.x = vertex->position.x;
						vertices[k].Position.y = vertex->position.y;
						vertices[k].Position.z = vertex->position.z;
						vertices[k].Normal.x = vertex->normal.x;
						vertices[k].Normal.y = vertex->normal.y;
						vertices[k].Normal.z = vertex->normal.z;
						vertex++;
					}
					LH3DTriangle* triangle = primitive->Triangles;
					uint16_t*     indices = new uint16_t[primitive->GetTriangleCount() * 3];
					data->Indices = indices;
					for (int t = 0; t < primitive->GetTriangleCount(); t++)
					{
						*indices++ = triangle->GetA();
						*indices++ = triangle->GetB();
						*indices++ = triangle->GetC();
						triangle++;
					}
					buffer->Unlock();
					result = buffer->Optimize(LH3DRender::GetD3DDevice(), 0);
				}
				if (result != D3D_OK)
				{
					buffer->Release();
					buffer = NULL;
				}
			}
			data->VertexBuffer = buffer;
			index += sizeof(LH3DTnLData) / sizeof(uint32_t);
		}
	}
}

void LH3DMesh::ReleaseTnL()
{
	if (!IsContainsTnLData())
	{
		return;
	}
	int       index = 0;
	uint32_t* list = (uint32_t*)GetTnLData();
	for (int i = 0; i < GetSubmeshCount(); i++)
	{
		LH3DSubMesh* submesh = GetListPtrSubmesh()[i];
		for (int j = 0; j < submesh->GetPrimitiveCount(); j++)
		{
			IDirect3DVertexBuffer7* buffer = (IDirect3DVertexBuffer7*)list[index + 1];
			if (buffer)
			{
				buffer->Release();
			}
			index++;
			uint16_t* indices = (uint16_t*)list[index + 1];
			if (indices)
			{
				delete indices;
			}
			index++;
		}
	}
}

void LH3DMesh::Release()
{
	if (--size != 0)
	{
		return;
	}
	int i;
	ReleaseTnL();
	for (i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		for (int j = 0; j < submesh->NumPrimitives; j++)
		{
			submesh->primitives_[j]->GetMaterial()->texture = NULL;
		}
	}
	for (i = 0; i < SkinCount; i++)
	{
		skins[i]->Release();
	}
	if (IsContainsUV2())
	{
		LH3DMeshUV2Data* uv2 = (LH3DMeshUV2Data*)GetUV2Data();
		for (i = 0; i < (int)uv2->Count; i++)
		{
		}
	}
	LH3DMem::Free(this);
	g_count--;
}

void LH3DMesh::CalculateShadowOntoTexture(uint8_t* buffer, long pitch, TShadowInfo* shadow)
{
	float size = LH3D_T_SHADOW_SIZE / 2;
	if (!LH3DTexture::g_b_use_low_res)
	{
		size = LH3D_T_SHADOW_SIZE;
	}
	int  i;
	long count = 0;
	for (i = 0; i < SubmeshCount; i++)
	{
		count += submeshes[i]->GetVerticesCount();
	}
	if (count * 2 * (long)sizeof(float) > g_last_size_shadow)
	{
		if (g_list_shadow_pt)
		{
			LH3DMem::Free(g_list_shadow_pt);
		}
		g_list_shadow_pt = (float*)LH3DMem::Alloc(count * 2 * sizeof(float));
		g_last_size_shadow = count * 2 * sizeof(float);
	}
	float scale_x = size / LH3D_MESH_SHADOW_WIDTH;
	float min_x = shadow->MinX;
	float min_z = shadow->MinZ;
	float max_x = shadow->MaxX;
	float max_z = shadow->MaxZ;
	float scale_z = size / LH3D_MESH_SHADOW_DEPTH;
	g_current_matrix = g_current_list_matrix;
	for (i = 0; i < SubmeshCount; i++)
	{
		if (!submeshes[i]->IsPhysics() && !submeshes[i]->GetStatus())
		{
			int    points = submeshes[i]->ComputeProjectedPoints(g_list_shadow_pt, shadow, NULL);
			float* point = g_list_shadow_pt;
			for (int j = 0; j < points; j++)
			{
				float u = (point[0] - min_x) * scale_x;
				float v = (point[1] - min_z) * scale_z;
				*point++ = v;
				*point++ = u;
			}
			submeshes[i]->DrawShadowPolys(buffer, (long)size, g_list_shadow_pt, shadow);
		}
		g_current_matrix += submeshes[i]->NumBones;
	}
	shadow->MinX = min_x;
	shadow->MinZ = min_z;
	shadow->MaxX = max_x;
	shadow->MaxZ = max_z;
}

void LH3DMesh::CalculateShadow(LHMatrix* matrix, TShadowInfo* shadow)
{
	int  i;
	long count = GetVerticesCount();
	if (shadow->Object)
	{
		count += shadow->Object->GetMesh()->GetVerticesCount();
	}
	if (count * 2 * (long)sizeof(float) > g_last_size_shadow)
	{
		if (g_list_shadow_pt)
		{
			LH3DMem::Free(g_list_shadow_pt);
		}
		g_list_shadow_pt = (float*)LH3DMem::Alloc(count * 2 * sizeof(float));
		g_last_size_shadow = count * 2 * sizeof(float);
	}
	memset(shadow->Buffer, 0, sizeof(shadow->Buffer));
	SoftTri::CLIPX = LH3D_MESH_SHADOW_CLIP_X;
	SoftTri::CLIPY = LH3D_MESH_SHADOW_CLIP_Y;
	{
		LHPoint direction;
		direction.x = matrix->_41 - shadow->Light.x;
		direction.y = matrix->_42 - shadow->Light.y;
		direction.z = matrix->_43 - shadow->Light.z;
		shadow->Direction = direction;
	}
	shadow->GroundHeight = matrix->_42;
	shadow->MinX = shadow->MinZ = LH3D_MESH_SHADOW_FAR;
	shadow->MaxX = shadow->MaxZ = -LH3D_MESH_SHADOW_FAR;
	shadow->MinDepth = LH3D_MESH_SHADOW_FAR;
	g_current_lod = LH3D_MESH_LOD_NEAR;
	g_current_matrix = g_current_list_matrix;
	int    points = 0;
	float* point = g_list_shadow_pt;
	for (i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (submesh->GetLod() & LH3D_MESH_LOD_NEAR)
		{
			int projected = submesh->ComputeProjectedPoints(point, shadow, NULL);
			point += projected * 2;
			points += projected;
		}
	}
	LH3DObject* object_in_draw = LH3DObject::g_current_object_in_draw;
	if (shadow->Object)
	{
		LH3DObject::g_current_object_in_draw = shadow->Object;
		LHMatrix* list_matrix = g_current_list_matrix;
		g_current_list_matrix = g_my_list_matrix;
		if (shadow->Object->IsAnimated())
		{
			LH3DAnim* anim = shadow->Object->GetCurrentAnim();
			if (anim)
			{
				LHMatrix* list = g_current_list_matrix;
				anim->SetTransform(list, shadow->Object->GetMesh(), shadow->Object->GetCurrentCycleTime(),
				                   shadow->Object->matrix);
			}
		}
		LH3DTech::g_local_to_clipping = shadow->Object->matrix;
		g_current_matrix = g_current_list_matrix;
		for (i = 0; i < shadow->Object->GetMesh()->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = shadow->Object->GetMesh()->submeshes[i];
			if (submesh->GetLod() & LH3D_MESH_LOD_NEAR)
			{
				int projected = submesh->ComputeProjectedPoints(point, shadow, NULL);
				point += projected * 2;
				points += projected;
			}
		}
		g_current_list_matrix = list_matrix;
	}
	LH3DObject::g_current_object_in_draw = object_in_draw;

	float  scale_x = LH3D_MESH_SHADOW_CLIP_X / (shadow->MaxX - shadow->MinX);
	float  scale_z = LH3D_MESH_SHADOW_CLIP_Y / (shadow->MaxZ - shadow->MinZ);
	float* uv = g_list_shadow_pt;
	for (i = 0; i < points; i++)
	{
		*uv = (*uv - shadow->MinX) * scale_x;
		CLAMP(*uv, 0.0f, LH3D_MESH_SHADOW_CLIP_X - 1);
		uv++;
		*uv = (*uv - shadow->MinZ) * scale_z;
		CLAMP(*uv, 0.0f, LH3D_MESH_SHADOW_CLIP_Y - 1);
		uv++;
	}

	bool32_t             chroma = false;
	SubCollideDataRender collide;
	if (LH3DObject::g_current_object_in_draw->IsShadowOnTextureChroma())
	{
		chroma = true;
		collide.Pixels = (uint16_t*)LH3DMem::Alloc(LH3D_SHADOW_SIZE * LH3D_SHADOW_SIZE * sizeof(uint16_t));
		memset(collide.Pixels, 0, LH3D_SHADOW_SIZE * LH3D_SHADOW_SIZE * sizeof(uint16_t));
		LH3DTexture* texture = NULL;
		for (i = 0; i < GetSubmeshCount(); i++)
		{
			LH3DSubMesh* submesh = GetListPtrSubmesh()[i];
			for (int j = 0; j < submesh->GetPrimitiveCount(); j++)
			{
				texture = submesh->GetListPtrPrimitive()[j]->GetMaterial()->texture;
				if (texture)
				{
					goto found_texture;
				}
			}
		}
	found_texture:
		collide.Texture = texture->GetMaskCollide();
		collide.Width = collide.Height = LH3D_SHADOW_SIZE;
		SRTextured* rasterizer = SRTextured::Create();
		rasterizer->StartRendering(&collide);
		LH3DObject::g_current_object_in_draw->DrawTextureShadow32x32(&collide, rasterizer, shadow);
		rasterizer->Release();
		if (shadow->Object)
		{
			shadow->Object = NULL;
		}
	}
	else
	{
		point = g_list_shadow_pt;
		for (i = 0; i < SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = submeshes[i];
			if (submesh->GetLod() & LH3D_MESH_LOD_NEAR)
			{
				submesh->DrawShadowPolys(shadow->Buffer, LH3D_SHADOW_SIZE, point, shadow);
				g_current_matrix += submesh->NumBones;
				point += submesh->GetVerticesCount() * 2;
			}
		}
	}
	if (shadow->Object)
	{
		if (shadow->Object->IsShadowOnTextureChroma())
		{
			chroma = true;
			collide.Pixels = (uint16_t*)LH3DMem::Alloc(LH3D_SHADOW_SIZE * LH3D_SHADOW_SIZE * sizeof(uint16_t));
			memset(collide.Pixels, 0, LH3D_SHADOW_SIZE * LH3D_SHADOW_SIZE * sizeof(uint16_t));
			LH3DTexture* texture = NULL;
			LH3DMesh*    mesh = shadow->Object->GetMesh();
			for (i = 0; i < mesh->GetSubmeshCount(); i++)
			{
				LH3DSubMesh* submesh = mesh->GetListPtrSubmesh()[i];
				for (int j = 0; j < submesh->GetPrimitiveCount(); j++)
				{
					texture = submesh->GetListPtrPrimitive()[j]->GetMaterial()->texture;
					if (texture)
					{
						goto found_object_texture;
					}
				}
			}
		found_object_texture:
			collide.Texture = texture->GetMaskCollide();
			collide.Width = collide.Height = LH3D_SHADOW_SIZE;
			SRTextured* rasterizer = SRTextured::Create();
			rasterizer->StartRendering(&collide);
			shadow->Object->DrawTextureShadow32x32(&collide, rasterizer, shadow);
			rasterizer->Release();
		}
		else
		{
			int color = shadow->Color;
			shadow->Color = 0;
			for (i = 0; i < shadow->Object->GetMesh()->SubmeshCount; i++)
			{
				LH3DSubMesh* submesh = shadow->Object->GetMesh()->submeshes[i];
				if (submesh->GetLod() & LH3D_MESH_LOD_NEAR)
				{
					submesh->DrawShadowPolys(shadow->Buffer, LH3D_SHADOW_SIZE, point, shadow);
					g_current_matrix += submesh->NumBones;
					point += submesh->GetVerticesCount() * 2;
				}
			}
			shadow->Color = color;
		}
	}

	bool32_t faded = false;
	if (shadow->Alpha != LH3D_SHADOW_ALPHA_OPAQUE)
	{
		faded = true;
	}
	int          alpha = shadow->Alpha;
	LH3DTexture* texture = shadow->Material->texture;
	{
		LH3DSurfDesc desc;
		texture->Lock(&desc);
		if (desc.Surface)
		{
			shadow->renderbuffer((uint16_t*)desc.Surface, desc.Pitch);
		}
		if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
		{
			texture->ReloadPending = true;
		}
		uint16_t* pixels = (uint16_t*)desc.Surface;
		int       x;
		int       y;
		if (chroma && pixels)
		{
			for (y = 1; y < LH3D_SHADOW_SIZE - 1; y++)
			{
				for (x = 1; x < LH3D_SHADOW_SIZE - 1; x++)
				{
					int index = y * LH3D_SHADOW_SIZE + x;
					int sum = collide.Pixels[index] + collide.Pixels[index + 1] +
					          collide.Pixels[index + LH3D_SHADOW_SIZE] + collide.Pixels[index + LH3D_SHADOW_SIZE + 1];
					pixels[index] |= (sum / 4) & LH3D_MESH_SHADOW_ALPHA_MASK;
				}
			}
		}
		if (faded && pixels)
		{
			for (y = 1; y < LH3D_SHADOW_SIZE - 1; y++)
			{
				for (x = 1; x < LH3D_SHADOW_SIZE - 1; x++)
				{
					int index = y * LH3D_SHADOW_SIZE + x;
					pixels[index] = ((pixels[index] * alpha) / LH3D_SHADOW_ALPHA_OPAQUE) & LH3D_MESH_SHADOW_ALPHA_MASK;
				}
			}
		}
		texture->Unlock();
	}
}

#ifndef VERSION_BW1W100
void LH3DMesh::DrawVolLight(LHPoint* light, float intensity)
{
	g_current_matrix = g_current_list_matrix;
	LHPoint point;
	LHMATRIX_TRANSFORM_POINT(point, *light, LH3DTech::g_world_to_clipping);
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (submesh->GetLod() & g_current_lod)
		{
			if (submesh->GetStatus() <= LH3DSubMesh::g_current_status)
			{
				LH3DSubMesh::g_current_sub_mesh = submesh;
				for (int j = 0; j < submesh->NumPrimitives; j++)
				{
					submesh->primitives_[j]->DrawVolLight(&point, intensity);
				}
			}
			g_current_matrix += submesh->NumBones;
		}
	}
}
#endif

void LH3DMesh::DrawVolLightGJ()
{
	g_current_matrix = g_current_list_matrix;
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if ((submesh->GetLod() & LH3D_MESH_LOD_NEAR) && !submesh->GetStatus())
		{
			if (submesh->GetStatus() <= LH3DSubMesh::g_current_status)
			{
				LH3DSubMesh::g_current_sub_mesh = submesh;
				for (int j = 0; j < submesh->NumPrimitives; j++)
				{
					submesh->primitives_[j]->DrawVolLightGJ();
				}
			}
			g_current_matrix += submesh->NumBones;
		}
	}
}

#ifndef VERSION_BW1W100
void LH3DMesh::Blend(long blend, LH3DMesh* from, LH3DMesh* to)
{
	if (SkinCount != from->SkinCount || SkinCount != to->SkinCount)
	{
		Report3D__FPCce("LH3DMesh::Blend Bad parameters.\n");
		return;
	}
	for (int i = 0; i < SkinCount; i++)
	{
		LH3DSRAMTex* sram = skins[i]->GetSRamTex();
		LH3DSRAMTex* from_sram = from->skins[i]->GetSRamTex();
		LH3DSRAMTex* to_sram = to->skins[i]->GetSRamTex();
		sram->Blend(blend, from_sram, to_sram);
		LH3DTexture* texture = skins[i];
		if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
		{
			texture->ReloadPending = true;
		}
	}
}
#endif

void LH3DMesh::Blend(LH3DMesh* from, LH3DMesh* to, float blend, bool blend_skins)
{
	int i;
	for (i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* from_submesh = from->submeshes[i];
		LH3DSubMesh* to_submesh = to->submeshes[i];
		LH3DSubMesh* submesh = submeshes[i];
		LH3DSubMesh::g_current_sub_mesh = submesh;
		for (int j = 0; j < submesh->NumPrimitives; j++)
		{
			submesh->primitives_[j]->Blend(from_submesh->primitives_[j], to_submesh->primitives_[j], blend);
		}
	}
	uint8_t* metrics = GetEMetricsData();
	uint8_t* from_metrics = from->GetEMetricsData();
	uint8_t* to_metrics = to->GetEMetricsData();
	if (metrics)
	{
		LHMatrix* matrix = ((LH3DMeshExtraMetrics*)metrics)->Matrices;
		LHMatrix* from_matrix = ((LH3DMeshExtraMetrics*)from_metrics)->Matrices;
		LHMatrix* to_matrix = ((LH3DMeshExtraMetrics*)to_metrics)->Matrices;
		for (uint32_t j = 0; j < ((LH3DMeshExtraMetrics*)metrics)->Count; j++)
		{
			matrix->SetBlend(*from_matrix, *to_matrix, blend);
			matrix++;
			from_matrix++;
			to_matrix++;
		}
	}
	if (blend_skins)
	{
		for (i = 0; i < SkinCount; i++)
		{
			LH3DSRAMTex* sram = skins[i]->GetSRamTex();
			LH3DSRAMTex* from_sram = from->skins[i]->GetSRamTex();
			LH3DSRAMTex* to_sram = to->skins[i]->GetSRamTex();
			sram->OrganicBlend(from_sram, to_sram, blend);
			LH3DTexture* texture = skins[i];
			if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
			{
				texture->ReloadPending = true;
			}
		}
	}
}

void LH3DMesh::CreatePackInternal(void* data)
{
	if (g_pack)
	{
		Report3D__FPCce("CreatePack: ERROR already create.\n");
		return;
	}
	PackHeader* header = (PackHeader*)data;
	g_pack = (LH3DMeshPack*)LH3DMem::Alloc(header->GetCount() * sizeof(LH3DMesh*) + sizeof(long));
	g_pack->MeshCount = header->GetCount();
	for (int i = 0; i < header->Count; i++)
	{
		uint8_t* mesh = (uint8_t*)data + header->Offsets[i];
		g_pack->Meshes[i] = Create(mesh, false);
	}
}

void LH3DMesh::CreatePack()
{
	g_cached_tex_file.Open(LH_FILE_MODE_READ_ONLY);
	LH3DTexture::SetPackedTexture();
	LHSegment segment;
	if (g_cached_tex_file.GetSegment(LH3D_MESH_SEGMENT_NAME, &segment, true) != LH_FILE_RESULT_NOT_FOUND)
	{
		CreatePackInternal(segment.buffer);
	}
}

#ifndef VERSION_BW1W100
void LH3DMesh::SavePack(void* data, long size, const char* filename)
{
	LHReleasedFile file(filename);
	file.Open(LH_FILE_MODE_UPDATE);
	LHSegment segment;
	segment.buffer = (uint8_t*)data;
	segment.size = size;
	strcpy((char*)segment.name, LH3D_MESH_SEGMENT_NAME);
	file.WriteSegment(&segment);
	file.Close();
}

void LH3DMesh::SavePacks(const char* filename, void* textures, long textures_size, void* meshes, long meshes_size)
{
	LH3DTexture::SavePack(textures, filename);
	SavePack(meshes, meshes_size, filename);
}
#endif

bool32_t LH3DMesh::Open()
{
	if (g_b_open)
	{
		Report3D__FPCce("LH3DMesh::Open: already open!\n");
		return false;
	}
	g_b_open = true;
	g_count = 0;
	g_list_shadow_pt = NULL;
	return true;
}

bool32_t LH3DMesh::Close()
{
	bool32_t result = true;
	if (!g_b_open)
	{
		Report3D__FPCce("LH3DMesh::Close: not open!\n");
		return false;
	}
	if (g_pack)
	{
		LH3DMeshPack* pack = g_pack;
		for (int i = 0; i < pack->MeshCount; i++)
		{
			pack->Meshes[i]->Release();
		}
		LH3DMem::Free(g_pack);
		g_pack = NULL;
	}
	if (g_count)
	{
		Report3D__FPCce("LH3DMesh::Close: %d Meshes not released!\n", g_count);
		result = false;
	}
	if (g_list_shadow_pt)
	{
		LH3DMem::Free(g_list_shadow_pt);
		g_list_shadow_pt = NULL;
	}
	g_b_open = false;
	return result;
}

void LH3DPrimitive::ComputeBoundingBox(LHPoint& maxima, LHPoint& minima, int& initialized)
{
	LHPoint point;
	LHResetFPU();
	LH3DVertex* vertex = Vertices;
	if (!(LH3DSubMesh::g_current_sub_mesh->flags_ & LH3D_SUB_MESH_FLAGS_SKINNED))
	{
		for (int i = 0; i < NumVertices; i++)
		{
			if (!initialized)
			{
				maxima.Set(vertex->position);
				minima.Set(vertex->position);
				initialized = true;
			}
			else
			{
				if (vertex->position.x > maxima.x)
				{
					maxima.x = vertex->position.x;
				}
				if (vertex->position.x < minima.x)
				{
					minima.x = vertex->position.x;
				}
				if (vertex->position.y > maxima.y)
				{
					maxima.y = vertex->position.y;
				}
				if (vertex->position.y < minima.y)
				{
					minima.y = vertex->position.y;
				}
				if (vertex->position.z > maxima.z)
				{
					maxima.z = vertex->position.z;
				}
				if (vertex->position.z < minima.z)
				{
					minima.z = vertex->position.z;
				}
			}
			vertex++;
		}
	}
	else
	{
		int first = 0;
		for (int g = 0; g < NumVertexGroups; g++)
		{
			LH3DVertexGroup* group = &VertexGroups[g];
			LHMatrix*        matrix = &LH3DMesh::g_current_matrix[group->BoneIndex];
			for (int i = first; i < first + group->vertex_count; i++)
			{
				LHMATRIX_TRANSFORM_POINT(point, vertex->position, *matrix);
				if (!initialized)
				{
					maxima.Set(point);
					minima.Set(point);
					initialized = true;
				}
				else
				{
					if (point.x > maxima.x)
					{
						maxima.x = point.x;
					}
					if (point.x < minima.x)
					{
						minima.x = point.x;
					}
					if (point.y > maxima.y)
					{
						maxima.y = point.y;
					}
					if (point.y < minima.y)
					{
						minima.y = point.y;
					}
					if (point.z > maxima.z)
					{
						maxima.z = point.z;
					}
					if (point.z < minima.z)
					{
						minima.z = point.z;
					}
				}
				vertex++;
			}
			first += group->vertex_count;
		}
	}
}

void LH3DMesh::ComputeBoundingBox()
{
	LHPoint  maxima(0.0f, 0.0f, 0.0f);
	LHPoint  minima(0.0f, 0.0f, 0.0f);
	LHMatrix transform;
	transform.SetIdentity();
	int initialized = false;
	if (flags & LH3D_MESH_FLAGS_HAS_BONES)
	{
		LH3DAnim::SetTransform(g_current_list_matrix, this, transform);
	}
	g_current_matrix = g_current_list_matrix;
	for (int i = 0; i < SubmeshCount; i++)
	{
		submeshes[i]->ComputeBoundingBox(maxima, minima, initialized);
		g_current_matrix += submeshes[i]->NumBones;
	}
	BoundingBox.centre.Set(maxima);
	BoundingBox.centre += minima;
	BoundingBox.centre *= 0.5f;
	BoundingBox.size.Set(maxima);
	BoundingBox.size -= minima;
	BoundingBox.size *= 0.5f;
	BoundingBox.DiagonalLength = BoundingBox.size.GetNorme();
}

bool32_t IsSamePoint(LHPoint* a, LHPoint* b)
{
	if (fabs(a->x - b->x) > LH3D_MESH_SAME_POSITION_EPSILON)
	{
		return false;
	}
	if (fabs(a->y - b->y) > LH3D_MESH_SAME_POSITION_EPSILON)
	{
		return false;
	}
	if (fabs(a->z - b->z) > LH3D_MESH_SAME_POSITION_EPSILON)
	{
		return false;
	}
	return true;
}

bool32_t IsSameVertex(LH3DVertex* a, LH3DVertex* b)
{
	return IsSamePoint(&a->position, &b->position) && fabs(a->uv.x - b->uv.x) <= LH3D_MESH_SAME_UV_EPSILON &&
	       fabs(a->uv.y - b->uv.y) <= LH3D_MESH_SAME_UV_EPSILON;
}

void AddThisPoint(LHPoint* point)
{
	int i;
	for (i = 0; i < g_nb_pt_cboo; i++)
	{
		if (IsSamePoint(&g_can_be_only_one[i], point))
		{
			return;
		}
	}
	g_can_be_only_one[g_nb_pt_cboo] = *point;
	g_can_be_only_one_normal[g_nb_pt_cboo].SetNull();
	g_list_of_normals[i].Count = 0;
	g_nb_pt_cboo++;
}

void AddThisVertex(LH3DVertex* vertex)
{
	int i;
	for (i = 0; i < g_nb_pt_cboo; i++)
	{
		if (IsSameVertex(&g_can_be_only_one_vertex[i], vertex))
		{
			return;
		}
	}
	g_can_be_only_one_vertex[g_nb_pt_cboo] = *vertex;
	g_can_be_only_one_normal[g_nb_pt_cboo].SetNull();
	g_list_of_normals[i].Count = 0;
	g_nb_pt_cboo++;
}

bool32_t SameNormal(LHPoint* a, LHPoint* b)
{
	LHPoint normal = *b;
	return *a * normal > LH3D_MESH_SAME_NORMAL_COSINE;
}

bool32_t AlreadyAdded(unsigned long index, LHPoint* normal)
{
	for (int i = 0; i < g_list_of_normals[index].Count; i++)
	{
		if (SameNormal(&g_list_of_normals[index].Normals[i], normal))
		{
			return true;
		}
	}
	return false;
}

void AddNormal(LHPoint* point, LHPoint* normal)
{
	for (int i = 0; i < g_nb_pt_cboo; i++)
	{
		if (IsSamePoint(&g_can_be_only_one[i], point))
		{
			if (!AlreadyAdded(i, normal))
			{
				g_can_be_only_one_normal[i] += *normal;
				if (g_list_of_normals[i].Count < LH3D_MESH_MAX_SHARED_NORMALS)
				{
					g_list_of_normals[i].Normals[g_list_of_normals[i].Count].Set(*normal);
					g_list_of_normals[i].Count++;
				}
			}
			return;
		}
	}
}

void AddNormal(LH3DVertex* vertex, LHPoint* normal)
{
	for (int i = 0; i < g_nb_pt_cboo; i++)
	{
		if (IsSameVertex(&g_can_be_only_one_vertex[i], vertex))
		{
			if (!AlreadyAdded(i, normal))
			{
				g_can_be_only_one_normal[i] += *normal;
				if (g_list_of_normals[i].Count < LH3D_MESH_MAX_SHARED_NORMALS)
				{
					g_list_of_normals[i].Normals[g_list_of_normals[i].Count].Set(*normal);
					g_list_of_normals[i].Count++;
				}
			}
			return;
		}
	}
}

void GetNormal(LHPoint* point, LHPoint* normal)
{
	for (int i = 0; i < g_nb_pt_cboo; i++)
	{
		if (IsSamePoint(&g_can_be_only_one[i], point))
		{
			normal->Set(g_can_be_only_one_normal[i]);
			return;
		}
	}
	normal->Set(0.0f, 1.0f, 0.0f);
}

void GetNormal(LH3DVertex* vertex, LHPoint* normal)
{
	for (int i = 0; i < g_nb_pt_cboo; i++)
	{
		if (IsSameVertex(&g_can_be_only_one_vertex[i], vertex))
		{
			normal->Set(g_can_be_only_one_normal[i]);
			return;
		}
	}
	normal->Set(0.0f, 1.0f, 0.0f);
}

void __fastcall ComputeNornal(LH3DMesh* mesh)
{
	if (mesh->flags & LH3D_MESH_FLAGS_NO_DRAW)
	{
		return;
	}
	long count = mesh->GetVerticesCount();
	g_can_be_only_one = (LHPoint*)LH3DMem::Alloc(count * sizeof(LHPoint));
	g_can_be_only_one_normal = (LHPoint*)LH3DMem::Alloc(count * sizeof(LHPoint));
	g_tmp_can_be_only_one = (LHPoint*)LH3DMem::Alloc(count * sizeof(LHPoint));
	g_list_of_normals = (LH3DMeshNormalList*)LH3DMem::Alloc(count * sizeof(LH3DMeshNormalList));
	g_can_be_only_one_vertex = (LH3DVertex*)LH3DMem::Alloc(count * sizeof(LH3DVertex));
	g_nb_pt_cboo = 0;
	int i;
	if (mesh->flags & LH3D_MESH_FLAGS_HAS_BONES)
	{
		LHMatrix identity;
		identity.SetIdentity();
		LH3DAnim::SetTransform(LH3DMesh::g_current_list_matrix, mesh, identity);
		LH3DSubMesh* submesh = mesh->GetListPtrSubmesh()[0];
		for (i = 0; i < submesh->GetPrimitiveCount(); i++)
		{
			LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[i];
			int            k = 0;
			for (int g = 0; g < primitive->NumVertexGroups; g++)
			{
				LH3DVertexGroup* group = &primitive->VertexGroups[g];
				LHMatrix         matrix = LH3DMesh::g_current_list_matrix[group->BoneIndex];
				for (int j = 0; j < group->vertex_count; j++)
				{
					LHPoint point = primitive->GetListVertex()[k].position;
					matrix.TransformPoint(point);
					AddThisPoint(&point);
					k++;
				}
			}
		}
		for (i = 0; i < submesh->GetPrimitiveCount(); i++)
		{
			LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[i];
			int            k = 0;
			for (int g = 0; g < primitive->NumVertexGroups; g++)
			{
				LH3DVertexGroup* group = &primitive->VertexGroups[g];
				LHMatrix         matrix = LH3DMesh::g_current_list_matrix[group->BoneIndex];
				for (int j = 0; j < group->vertex_count; j++)
				{
					LHPoint* point = &g_tmp_can_be_only_one[k];
					point->Set(primitive->GetListVertex()[k].position);
					matrix.TransformPoint(*point);
					k++;
				}
			}
			for (int t = 0; t < primitive->GetTriangleCount(); t++)
			{
				LH3DTriangle* triangle = &primitive->Triangles[t];
				LHPoint       a = g_tmp_can_be_only_one[triangle->GetA()];
				a -= g_tmp_can_be_only_one[triangle->GetB()];
				LHPoint c = g_tmp_can_be_only_one[triangle->GetC()];
				c -= g_tmp_can_be_only_one[triangle->GetB()];
				LHPoint normal = c ^ a;
				normal.Normalise();
				AddNormal(&g_tmp_can_be_only_one[triangle->GetA()], &normal);
				AddNormal(&g_tmp_can_be_only_one[triangle->GetB()], &normal);
				AddNormal(&g_tmp_can_be_only_one[triangle->GetC()], &normal);
			}
		}
		for (i = 0; i < g_nb_pt_cboo; i++)
		{
			g_can_be_only_one_normal[i].Normalise();
		}
		for (i = 0; i < submesh->GetPrimitiveCount(); i++)
		{
			LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[i];
			int            k = 0;
			for (int g = 0; g < primitive->NumVertexGroups; g++)
			{
				LH3DVertexGroup* group = &primitive->VertexGroups[g];
				LHMatrix         matrix = LH3DMesh::g_current_list_matrix[group->BoneIndex];
				for (int j = 0; j < group->vertex_count; j++)
				{
					LHPoint* point = &g_tmp_can_be_only_one[k];
					point->Set(primitive->GetListVertex()[k].position);
					matrix.TransformPoint(*point);
					k++;
				}
			}
			for (int t = 0; t < primitive->GetTriangleCount(); t++)
			{
				LH3DTriangle* triangle = &primitive->Triangles[t];
				LHPoint       normal;
				GetNormal(&g_tmp_can_be_only_one[triangle->GetA()], &normal);
				primitive->GetListVertex()[triangle->GetA()].normal.Set(normal);
				GetNormal(&g_tmp_can_be_only_one[triangle->GetB()], &normal);
				primitive->GetListVertex()[triangle->GetB()].normal.Set(normal);
				GetNormal(&g_tmp_can_be_only_one[triangle->GetC()], &normal);
				primitive->GetListVertex()[triangle->GetC()].normal.Set(normal);
			}
		}
		for (i = 0; i < submesh->GetPrimitiveCount(); i++)
		{
			LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[i];
			int            k = 0;
			for (int g = 0; g < primitive->NumVertexGroups; g++)
			{
				LH3DVertexGroup* group = &primitive->VertexGroups[g];
				LHMatrix         matrix = LH3DMesh::g_current_list_matrix[group->BoneIndex];
				LHMatrix         inverse;
				inverse.SetInverse(matrix);
				inverse.GetPos().SetNull();
				for (int j = 0; j < group->vertex_count; j++)
				{
					LHPoint normal = primitive->GetListVertex()[k].normal;
					inverse.TransformPoint(normal);
					if (normal.x == 0.0f && normal.y == 0.0f && normal.z == 0.0f)
					{
						normal.Set(0.0f, 1.0f, 0.0f);
					}
					primitive->GetListVertex()[k].normal = normal;
					k++;
				}
			}
		}
	}
	else
	{
		for (i = 0; i < mesh->GetSubmeshCount(); i++)
		{
			LH3DSubMesh* submesh = mesh->GetListPtrSubmesh()[i];
			for (int j = 0; j < submesh->GetPrimitiveCount(); j++)
			{
				LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[j];
				for (int k = 0; k < primitive->GetVerticesCount(); k++)
				{
					AddThisVertex(&primitive->Vertices[k]);
				}
			}
		}
		for (i = 0; i < mesh->GetSubmeshCount(); i++)
		{
			LH3DSubMesh* submesh = mesh->GetListPtrSubmesh()[i];
			for (int j = 0; j < submesh->GetPrimitiveCount(); j++)
			{
				LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[j];
				for (int t = 0; t < primitive->GetTriangleCount(); t++)
				{
					LH3DTriangle* triangle = &primitive->Triangles[t];
					LHPoint       a = primitive->GetListVertex()[triangle->GetA()].position;
					a -= primitive->GetListVertex()[triangle->GetB()].position;
					LHPoint c = primitive->GetListVertex()[triangle->GetC()].position;
					c -= primitive->GetListVertex()[triangle->GetB()].position;
					LHPoint normal = c ^ a;
					normal.Normalise();
					AddNormal(&primitive->Vertices[triangle->GetA()], &normal);
					AddNormal(&primitive->Vertices[triangle->GetB()], &normal);
					AddNormal(&primitive->Vertices[triangle->GetC()], &normal);
				}
			}
		}
		for (i = 0; i < g_nb_pt_cboo; i++)
		{
			g_can_be_only_one_normal[i].Normalise();
		}
		for (i = 0; i < mesh->GetSubmeshCount(); i++)
		{
			LH3DSubMesh* submesh = mesh->GetListPtrSubmesh()[i];
			for (int j = 0; j < submesh->GetPrimitiveCount(); j++)
			{
				LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[j];
				for (int k = 0; k < primitive->GetVerticesCount(); k++)
				{
					LHPoint normal;
					GetNormal(&primitive->Vertices[k], &normal);
					primitive->GetListVertex()[k].normal.Set(normal);
				}
			}
		}
	}
	LH3DMem::Free(g_can_be_only_one);
	LH3DMem::Free(g_can_be_only_one_normal);
	LH3DMem::Free(g_tmp_can_be_only_one);
	LH3DMem::Free(g_list_of_normals);
	LH3DMem::Free(g_can_be_only_one_vertex);
}

#ifndef VERSION_BW1W100
void LH3DMesh::ComputeVerticesIn3DWorld()
{
	if (flags & LH3D_MESH_FLAGS_HAS_BONES)
	{
		LHMatrix identity;
		identity.SetIdentity();
		LH3DAnim::SetTransform(g_current_list_matrix, this, identity);
		g_current_matrix = g_current_list_matrix;
		LH3DSubMesh* submesh = submeshes[0];
		for (int i = 0; i < submesh->NumPrimitives; i++)
		{
			LH3DPrimitive* primitive = submesh->primitives_[i];
			uint32_t       first = 0;
			LH3DVertex*    vertex = primitive->Vertices;
			for (int g = 0; g < primitive->NumVertexGroups; g++)
			{
				LH3DVertexGroup* group = &primitive->VertexGroups[g];
				LHMatrix         matrix;
				matrix.Set(g_current_matrix[group->BoneIndex]);
				for (uint32_t j = first; j < first + group->vertex_count; j++)
				{
					matrix.TransformPoint(vertex->position);
					vertex->normal.Normalise();
					vertex++;
				}
				first += group->vertex_count;
			}
		}
	}
}

void LH3DMesh::UnScale()
{
	if (flags & LH3D_MESH_FLAGS_HAS_BONES)
	{
		ComputeVerticesIn3DWorld();
		LHMatrix identity;
		identity.SetIdentity();
		LH3DAnim::SetTransform(g_current_list_matrix, this, identity);
		LH3DSubMesh* submesh = submeshes[0];
		int          i;
		for (i = 0; i < submesh->NumBones; i++)
		{
			g_current_list_matrix[i].NormaliseMatrixOnly();
		}
		ComputeVerticesIn3DLocal();
		LH3DBone* bone = submesh->Bones;
		for (i = 0; i < submesh->NumBones; i++)
		{
			if (bone->Parent != LH3D_BONE_NO_PARENT)
			{
				LHMatrix parent = g_current_list_matrix[bone->Parent];
				LHMatrix matrix = g_current_list_matrix[i];
				LHMatrix inverse;
				inverse.SetInverse(parent);
				matrix.PostMultiply(inverse);
				bone->Matrix = matrix;
			}
			else
			{
				bone->Matrix = GetListMatrix()[i];
			}
			bone++;
		}
	}
}

void LH3DMesh::ComputeVerticesIn3DLocal()
{
	if (flags & LH3D_MESH_FLAGS_HAS_BONES)
	{
		g_current_matrix = g_current_list_matrix;
		LH3DSubMesh* submesh = submeshes[0];
		for (int i = 0; i < submesh->NumPrimitives; i++)
		{
			LH3DPrimitive* primitive = submesh->primitives_[i];
			uint32_t       first = 0;
			LH3DVertex*    vertex = primitive->Vertices;
			for (int g = 0; g < primitive->NumVertexGroups; g++)
			{
				LH3DVertexGroup* group = &primitive->VertexGroups[g];
				LHMatrix         matrix;
				matrix.Set(g_current_matrix[group->BoneIndex]);
				matrix.SetInverse();
				for (uint32_t j = first; j < first + group->vertex_count; j++)
				{
					matrix.TransformPoint(vertex->position);
					vertex++;
				}
				first += group->vertex_count;
			}
		}
	}
}

void LH3DMesh::BuildListTriangle(LHPoint* points, long* indices, LHPoint* normals)
{
	long first = 0;
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		for (int j = 0; j < submesh->NumPrimitives; j++)
		{
			LH3DPrimitive* primitive = submesh->primitives_[j];
			LH3DVertex*    vertex = primitive->Vertices;
			for (int k = 0; k < primitive->NumVertices; k++)
			{
				points->Set(vertex->position);
				points++;
				normals->Set(vertex->normal);
				normals++;
				vertex++;
			}
			LH3DTriangle* triangle = primitive->Triangles;
			for (int t = 0; t < primitive->NumTriangles; t++)
			{
				*indices++ = triangle->A + first;
				*indices++ = triangle->B + first;
				*indices++ = triangle->C + first;
				triangle++;
			}
			first += primitive->NumTriangles * 3;
		}
	}
}
#endif

static unsigned long MultiplyColor(unsigned long color, unsigned long multiplier)
{
	unsigned long blue = (((color & 0xff) * (multiplier & 0xff)) >> 8) & 0xff;
	unsigned long green = (((color >> 8) & 0xff) * ((multiplier >> 8) & 0xff)) & 0xff00;
	unsigned long red = ((((color >> 16) & 0xff) * ((multiplier >> 16) & 0xff)) << 8) & 0xff0000;
	return (color & 0xff000000) + (blue + green + red);
}

static unsigned long AddColor(unsigned long color, unsigned long addition)
{
	int blue = (color & 0xff) + (addition & 0xff);
	blue = min(0xff, blue);
	int green = ((color >> 8) & 0xff) + ((addition >> 8) & 0xff);
	green = min(0xff, green);
	int red = ((color >> 16) & 0xff) + ((addition >> 16) & 0xff);
	red = min(0xff, red);
	return (color & 0xff000000) + (blue + (green << 8) + (red << 16));
}

int __fastcall LH3DMesh::DrawLightMap(SubMeshDrawData* draw_data, int num_draw_data, int mode, int unused_mode,
                                      bool32_t reverse_winding, bool check_mouse)
{
	g_current_matrix = g_current_list_matrix;
	LHCoord screen = LHSys::TheSystem.mouse.Pos();
	int     mouse_x = screen.x;
	int     mouse_y = screen.y;
	LH3DObject::g_selected_px = mouse_x;
	LH3DObject::g_selected_py = mouse_y;
	int width = LHSys::TheSystem.screen.width;
	int height = LHSys::TheSystem.screen.height;
	LH3DRender::Set2ndTex(mode, NULL, false);
	LH3DRender::SetRenderState(D3DRENDERSTATE_WRAP1, 0);
	LH3DRender::g_b_need_tilling = true;
	LHMatrix*        saved_matrix = LH3DTech::g_current_matrix;
	LHMatrix*        object_matrix = &LH3DObject::g_current_object_in_draw->matrix;
	SubmeshNameData* name_data = (SubmeshNameData*)GetNameData();
	LH3DPrimitive::g_collide_count = 0;
	LH3DPrimitive::g_best_vertex_inside_triangle = 0.0f;
	int              last_collide_count = 0;
	int              result = -1;
	unsigned long    color = g_color;
	unsigned long    specular = g_specular;
	int              first_num_draw_data = num_draw_data;
	SubMeshDrawData* first_draw_data = draw_data;
	int              num_passes = LH3D_MESH_LIGHT_MAP_PASS_REMAPPED;
	LHMatrix         box_matrix;
	for (int pass = 0; pass < num_passes; pass++)
	{
		draw_data = first_draw_data;
		num_draw_data = first_num_draw_data;
		LH3DMeshUV2Data* uv2 = (LH3DMeshUV2Data*)GetUV2Data();
		LH3DMaterial*    light_map = uv2 ? uv2->LightMaps : NULL;
		float*           uvs = uv2 ? uv2->UVs : NULL;
		if (pass == LH3D_MESH_LIGHT_MAP_PASS_LIT)
		{
			LH3DRender::Set2ndTex(LH3D_2ND_TEX_MODE_OFF, NULL, false);
		}
		for (int i = 0; i < GetSubmeshCount(); i++)
		{
			g_color = color;
			g_specular = specular;
			while (num_draw_data != 0 && draw_data->SubMeshIndex < i)
			{
				draw_data++;
				num_draw_data--;
			}
			LH3DSubMesh*   sub_mesh = GetListPtrSubmesh()[i];
			bool           draw = true;
			bool           check = false;
			static LHPoint corners[LH3D_MESH_BOX_CORNERS];
			LH3DRender::g_b_do_update_material = true;
			LH3DPrimitive::g_lightmap_remap_uvs = NULL;
			LHMatrix matrix;
			if (name_data != NULL)
			{
				matrix.Set(*object_matrix);
				SubmeshName* name = &name_data->Names[i];
				if (name->Bone >= 0 && name->Bone < LH3D_MESH_LIST_MATRIX_SIZE)
				{
					matrix.m[9] = matrix.m[0] * name->Pivot.x + matrix.m[3] * name->Pivot.y +
					              matrix.m[6] * name->Pivot.z + matrix.m[9];
					matrix.m[10] = matrix.m[1] * name->Pivot.x + matrix.m[4] * name->Pivot.y +
					               matrix.m[7] * name->Pivot.z + matrix.m[10];
					matrix.m[11] = matrix.m[2] * name->Pivot.x + matrix.m[5] * name->Pivot.y +
					               matrix.m[8] * name->Pivot.z + matrix.m[11];
					matrix.PreMultiply(g_my_list_matrix[name->Bone]);
					LHPoint pivot(-name->Pivot.x, -name->Pivot.y, -name->Pivot.z);
					matrix.m[9] = matrix.m[0] * pivot.x + matrix.m[3] * pivot.y + matrix.m[6] * pivot.z + matrix.m[9];
					matrix.m[10] = matrix.m[1] * pivot.x + matrix.m[4] * pivot.y + matrix.m[7] * pivot.z + matrix.m[10];
					matrix.m[11] = matrix.m[2] * pivot.x + matrix.m[5] * pivot.y + matrix.m[8] * pivot.z + matrix.m[11];
				}
				else if (g_hinge_only)
				{
					draw = false;
				}
				if (num_draw_data != 0 && draw_data->SubMeshIndex == i)
				{
					if (draw_data->Type == SUB_MESH_DRAW_TYPE_HIDDEN)
					{
						draw = false;
					}
					g_color = MultiplyColor(color, draw_data->Color.GetColor());
					g_specular = AddColor(specular, draw_data->Specular.GetColor());
					matrix.PreMultiply(name->Transform);
					matrix.PreMultiply(draw_data->Matrix);
					matrix.PreMultiply(name->InverseTransform);
					if (draw_data->Material != NULL)
					{
						LH3DRender::SetMaterial(draw_data->Material, 0);
						LH3DRender::g_b_do_update_material = false;
						LH3DPrimitive::g_lightmap_remap_uvs = (float*)draw_data;
						num_passes = LH3D_MESH_LIGHT_MAP_PASS_LAST;
					}
				}
				box_matrix = matrix;
				box_matrix.PreMultiply(name->Transform);
				corners[0] = LHPoint(name->BoxMin.x, name->BoxMin.y, name->BoxMin.z);
				corners[1] = LHPoint(name->BoxMax.x, name->BoxMin.y, name->BoxMin.z);
				corners[2] = LHPoint(name->BoxMin.x, name->BoxMax.y, name->BoxMin.z);
				corners[3] = LHPoint(name->BoxMax.x, name->BoxMax.y, name->BoxMin.z);
				corners[4] = LHPoint(name->BoxMin.x, name->BoxMin.y, name->BoxMax.z);
				corners[5] = LHPoint(name->BoxMax.x, name->BoxMin.y, name->BoxMax.z);
				corners[6] = LHPoint(name->BoxMin.x, name->BoxMax.y, name->BoxMax.z);
				corners[7] = LHPoint(name->BoxMax.x, name->BoxMax.y, name->BoxMax.z);
				int x_out = 0;
				int y_out = 0;
				int behind = 0;
				int min_x = width;
				int max_x = 0;
				int min_y = height;
				int max_y = 0;
				for (int k = 0; k < LH3D_MESH_BOX_CORNERS; k++)
				{
					LHPoint point = box_matrix * corners[k];
					corners[k] = point;
					int      x;
					int      y;
					uint32_t projected = LH3DTech::ProjectPoint(&point, &x, &y);
					if (projected == LH3D_PROJECT_BEHIND_CAMERA)
					{
						behind++;
					}
					else
					{
						if (projected == LH3D_PROJECT_OFF_SCREEN)
						{
							if (x < 0)
							{
								x_out--;
							}
							else if (x >= width)
							{
								x_out++;
							}
							if (y < 0)
							{
								y_out--;
							}
							else if (y >= height)
							{
								y_out++;
							}
						}
						if (x < min_x)
						{
							min_x = x;
						}
						if (x > max_x)
						{
							max_x = x;
						}
						if (y < min_y)
						{
							min_y = y;
						}
						if (y > max_y)
						{
							max_y = y;
						}
					}
				}
				if (behind == LH3D_MESH_BOX_CORNERS || x_out == LH3D_MESH_BOX_CORNERS ||
				    y_out == LH3D_MESH_BOX_CORNERS || x_out == -LH3D_MESH_BOX_CORNERS ||
				    y_out == -LH3D_MESH_BOX_CORNERS)
				{
					draw = false;
				}
				else
				{
					if (behind != 0)
					{
						min_x = 0;
						max_x = width;
						min_y = 0;
						max_y = height;
					}
					if (mouse_x >= min_x && mouse_x < max_x && mouse_y >= min_y && mouse_y < max_y)
					{
						check = check_mouse && draw;
					}
					matrix.PostMultiply(LH3DTech::g_world_to_clipping);
					LH3DTech::g_current_matrix = &matrix;
				}
			}
			else
			{
				LH3DTech::g_current_matrix = saved_matrix;
			}
			if (draw && (sub_mesh->GetLod() & g_current_lod))
			{
				if (light_map != NULL && light_map->texture != NULL && mode != 0 &&
				    !(num_draw_data != 0 && draw_data != NULL && draw_data->Type == SUB_MESH_DRAW_TYPE_UV_REMAP &&
				      draw_data->SubMeshIndex == i))
				{
					if (pass == LH3D_MESH_LIGHT_MAP_PASS_LIGHT_MAP)
					{
						LH3DSubMesh::g_current_sub_mesh = sub_mesh;
						float* uv = uvs;
						for (int j = 0; j < sub_mesh->GetPrimitiveCount(); j++)
						{
							sub_mesh->GetListPtrPrimitive()[j]->DrawLightMap(light_map, uv, reverse_winding, check);
							uv += sub_mesh->GetListPtrPrimitive()[j]->GetVerticesCount() * 2;
						}
					}
				}
				else if (pass >= LH3D_MESH_LIGHT_MAP_PASS_LIT && sub_mesh->GetPrimitiveCount() != 0)
				{
					LHMatrix* current_matrix = LH3DTech::g_current_matrix;
					LH3DTech::g_current_matrix = &LH3DTech::g_world_to_clipping;
					g_specular =
						AddColor(g_specular,
					             LH3DPrimitive::ApplyFog(sub_mesh->GetListPtrPrimitive()[0]->GetListVertex()->position,
					                                     (LH3DColor*)&g_color));
					LH3DTech::g_current_matrix = current_matrix;
					bool lit = !(num_draw_data != 0 && draw_data != NULL &&
					             draw_data->Type == SUB_MESH_DRAW_TYPE_UV_REMAP && draw_data->SubMeshIndex == i);
					if (pass == LH3D_MESH_LIGHT_MAP_PASS_REMAPPED ||
					    !(num_draw_data != 0 && draw_data != NULL && draw_data->Type == SUB_MESH_DRAW_TYPE_UV_REMAP &&
					      draw_data->Material != NULL && draw_data->SubMeshIndex == i))
					{
						float* uv = uvs;
						LH3DSubMesh::g_current_sub_mesh = sub_mesh;
						int j;
						switch (lit ? LH3D_MESH_LIGHT_MAP_DRAW_LIT : LH3D_MESH_LIGHT_MAP_DRAW_UV_REMAP)
						{
						case LH3D_MESH_LIGHT_MAP_DRAW_LIT:
							for (j = 0; j < sub_mesh->GetPrimitiveCount(); j++)
							{
								sub_mesh->GetListPtrPrimitive()[j]->DrawLit();
								if (check)
								{
									sub_mesh->GetListPtrPrimitive()[j]->DoMouseCheck();
								}
								uv += sub_mesh->GetListPtrPrimitive()[j]->GetVerticesCount() * 2;
							}
							break;
						case LH3D_MESH_LIGHT_MAP_DRAW_UV_REMAP:
							for (j = 0; j < sub_mesh->GetPrimitiveCount(); j++)
							{
								sub_mesh->GetListPtrPrimitive()[j]->DrawUnlitWithUVRemap();
								if (check)
								{
									sub_mesh->GetListPtrPrimitive()[j]->DoMouseCheck();
								}
								uv += sub_mesh->GetListPtrPrimitive()[j]->GetVerticesCount() * 2;
							}
							break;
						default:
							for (j = 0; j < sub_mesh->GetPrimitiveCount(); j++)
							{
								sub_mesh->GetListPtrPrimitive()[j]->DrawLightMap(light_map, uv, reverse_winding, check);
								uv += sub_mesh->GetListPtrPrimitive()[j]->GetVerticesCount() * 2;
							}
							break;
						}
					}
				}
				if (LH3DPrimitive::g_collide_count > last_collide_count)
				{
					result = i;
					LH3DTech::Get3DPointFromScreen(screen, g_world_point,
					                               LH3DTech::GetNearClipping() /
					                                   LH3DPrimitive::g_best_vertex_inside_triangle);
					LHMatrix inverse;
					inverse.SetInverse(box_matrix);
					LHMATRIX_TRANSFORM_POINT(g_local_point, g_world_point, inverse);
				}
				g_current_matrix += sub_mesh->NumBones;
			}
			LH3DRender::g_b_do_update_material = true;
			last_collide_count = LH3DPrimitive::g_collide_count;
			if (light_map != NULL)
			{
				light_map += LH3D_MESH_SUB_MESH_LIGHT_MAPS;
			}
			if (uvs != NULL)
			{
				uvs += sub_mesh->GetVerticesCount() * 2;
			}
		}
	}
	LH3DRender::g_b_do_update_material = true;
	LH3DRender::g_b_need_tilling = true;
	LH3DRender::g_current_active_material = NULL;
	LH3DRender::Set2ndTex(LH3D_2ND_TEX_MODE_OFF, NULL, true);
	LH3DTech::g_current_matrix = saved_matrix;
	return result;
}

#ifndef VERSION_BW1W100
void LH3DMesh::ComputeRadialUV()
{
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* sub_mesh = submeshes[i];
		for (int j = 0; j < sub_mesh->NumPrimitives; j++)
		{
			LH3DPrimitive* primitive = sub_mesh->primitives_[j];
			float          max_radius = 0.0f;
			int            k;
			for (k = 0; k < primitive->NumVertices; k++)
			{
				float radius = primitive->Vertices[k].position.GetNorme();
				max_radius = max(radius, max_radius);
			}
			for (k = 0; k < primitive->NumVertices; k++)
			{
				LH3DVertex* vertex = &primitive->Vertices[k];
				vertex->uv.x = vertex->position.GetNorme() / max_radius;
				LHPoint centre(0.0f, 0.0f, 0.0f);
				LH3DMath::GetYAngle(&centre, &vertex->position);
			}
		}
	}
}
#endif

uint32_t LH3DMesh::ComputeMaxState()
{
	uint32_t maxState = 0;
	for (int i = 0; i < SubmeshCount; i++)
	{
		uint32_t state = submeshes[i]->GetStatus();
		if (maxState < state)
		{
			maxState = state;
		}
	}
	return maxState;
}

void LH3DMesh::DrawWithVerticalTranslation()
{
	for (int i = 0; i < SubmeshCount; i++)
	{
		bool32_t     drawn = true;
		LH3DSubMesh* submesh = submeshes[i];
		if (g_window_state && submesh->IsWindow())
		{
			unsigned long savedColor = g_color;
			g_color = g_window_col;
			submesh->DrawWithVerticalTranslation();
			g_color = savedColor;
		}
		else if (g_current_lod & submesh->GetLod())
		{
			if (submesh->GetStatus() <= LH3DSubMesh::g_current_status)
			{
				submesh->DrawWithVerticalTranslation();
			}
			else
			{
				drawn = false;
			}
		}
		else
		{
			drawn = false;
		}
		if (!drawn)
		{
			LH3DPrimitive::g_vertical_translate_vertices += submesh->GetVerticesCount();
		}
	}
}

void LH3DMesh::DrawInShadowWithVerticalTranslation(TShadowInfo* shadow) const
{
	g_current_shadow = shadow;
	LH3DRender::SetMaterial(shadow->Material, 0);
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (g_current_lod & submesh->GetLod())
		{
			if (submesh->IsPhysics())
			{
				LH3DPrimitive::g_vertical_translate_vertices += submesh->GetVerticesCount();
			}
			else if (submesh->GetStatus() <= LH3DSubMesh::g_current_status)
			{
				for (int j = 0; j < submesh->NumPrimitives; j++)
				{
					submesh->primitives_[j]->DrawInShadowWithVerticalTranslation();
				}
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
}

void LH3DMesh::DrawSnowWithVerticalTranslation()
{
	for (int i = 0; i < SubmeshCount; i++)
	{
		bool32_t     drawn = true;
		LH3DSubMesh* submesh = submeshes[i];
		if (g_window_state && submesh->IsWindow())
		{
			unsigned long savedColor = g_color;
			g_color = g_window_col;
			submesh->DrawWithVerticalTranslation();
			g_color = savedColor;
		}
		else if (g_current_lod & submesh->GetLod())
		{
			if (submesh->GetStatus() <= LH3DSubMesh::g_current_status)
			{
				LH3DSubMesh::g_current_sub_mesh = submesh;
				for (int j = 0; j < submesh->NumPrimitives; j++)
				{
					submesh->primitives_[j]->DrawSnowWithVerticalTranslation();
				}
			}
			else
			{
				drawn = false;
			}
		}
		else
		{
			drawn = false;
		}
		if (!drawn)
		{
			LH3DPrimitive::g_vertical_translate_vertices += submesh->GetVerticesCount();
		}
	}
}

void LH3DMesh::DrawInShadow(TShadowInfo* shadow) const
{
	g_current_shadow = shadow;
	g_current_matrix = g_current_list_matrix;
	LH3DRender::SetMaterial(shadow->Material, 0);
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (g_current_lod & submesh->GetLod())
		{
			for (int j = 0; j < submesh->NumPrimitives; j++)
			{
				submesh->primitives_[j]->DrawInShadow();
			}
			g_current_matrix += submesh->NumBones;
		}
	}
}

void LH3DMesh::DrawInShadowTnL(TShadowInfo* shadow) const
{
	g_current_shadow = shadow;
	g_current_matrix = g_current_list_matrix;
	LH3DRender::SetMaterial(shadow->Material, 0);
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (g_current_lod & submesh->GetLod())
		{
			for (int j = 0; j < submesh->NumPrimitives; j++)
			{
				submesh->primitives_[j]->DrawInShadowTnL();
			}
			g_current_matrix += submesh->NumBones;
		}
	}
}

void LH3DMesh::SetAllTextures(LH3DTexture* texture)
{
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		for (int j = 0; j < submesh->NumPrimitives; j++)
		{
			LH3DPrimitive* primitive = submesh->primitives_[j];
			if (primitive->GetMaterial()->texture)
			{
				primitive->GetMaterial()->texture = texture;
			}
		}
	}
}

long LH3DMesh::GetTriangleCountDrawable()
{
	long count = 0;
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (g_current_lod & submesh->GetLod())
		{
			count += submesh->GetTriangleCountDrawable();
		}
	}
	return count;
}

void LH3DMesh::GetTriangleDrawable(long index, LH3DVertex* a, LH3DVertex* b, LH3DVertex* c)
{
	long count = 0;
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (g_current_lod & submesh->GetLod())
		{
			long first = count;
			count += submesh->GetTriangleCountDrawable();
			if (count > index)
			{
				submesh->GetTriangleDrawable(index - first, a, b, c);
				return;
			}
		}
	}
}
