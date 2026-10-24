#include "LH3DLibPCH.h"

#include "LH3DMesh.h"

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>       /* For LHFileLength, LHLoadData */
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h> /* For LHReleasedFile */
#include <Lionhead/LHFile/ver3.0/LHSegment.h>      /* For LHSegment */
#include <Lionhead/LHLib/ver5.0/LHScreen.h>        /* For LHResetFPU */

#include "FootPrintBase.h"        /* For FootPrintBase */
#include "LH3DAnim.h"             /* For LH3DAnim */
#include "LH3DLODData.h"          /* For LH3DLODData */
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
#include "TShadowInfo.h"          /* For TShadowInfo */

#define LH3D_MESH_MAGIC_0 'L'
#define LH3D_MESH_MAGIC_1 '3'
#define LH3D_MESH_MAGIC_2 'D'
#define LH3D_MESH_MAGIC_3 '0'

#define LH3D_MESH_SEGMENT_NAME "MESHES"

// The extent of the ground CalculateShadowOntoTexture maps onto the shadow texture.
#define LH3D_MESH_SHADOW_WIDTH 80.0f
#define LH3D_MESH_SHADOW_DEPTH 40.0f

// CalculateShadow scales the projected points to a SoftTri clip window of LH3D_MESH_SHADOW_CLIP_X by
// LH3D_MESH_SHADOW_CLIP_Y.
#define LH3D_MESH_SHADOW_CLIP_X 128
#define LH3D_MESH_SHADOW_CLIP_Y 64

// Larger than any coordinate: the bounds of a shadow start out empty.
#define LH3D_MESH_SHADOW_FAR 1e20f

// The alpha bits of a 4444 shadow pixel.
#define LH3D_MESH_SHADOW_ALPHA_MASK 0xf000

// ComputeNornal shares one normal between the vertices that lie within LH3D_MESH_SAME_POSITION_EPSILON of each
// other (and whose texture coordinates match within LH3D_MESH_SAME_UV_EPSILON), averaging up to
// LH3D_MESH_MAX_SHARED_NORMALS face normals that differ by more than the angle whose cosine is
// LH3D_MESH_SAME_NORMAL_COSINE.
#define LH3D_MESH_SAME_POSITION_EPSILON 0.005f
#define LH3D_MESH_SAME_UV_EPSILON       (1.0f / 512)
#define LH3D_MESH_SAME_NORMAL_COSINE    0.93f
#define LH3D_MESH_MAX_SHARED_NORMALS    10

// The face normals collected for one shared position.
struct LH3DMeshNormalList
{
	int     Count;
	LHPoint Normals[LH3D_MESH_MAX_SHARED_NORMALS];
};

// LH3DLODData::InitialiseDefault collapses the shortest edge of a mesh until LH3D_LOD_MIN_EDGES edges are left or the
// shortest one is longer than the square root of LH3D_LOD_MAX_EDGE_LENGTH_SQ. A position keeps up to
// LH3D_LOD_MAX_POSITION_VERTICES vertices, an edge up to LH3D_LOD_MAX_EDGE_VERTICES pairs of them.
#define LH3D_LOD_MIN_EDGES             3
#define LH3D_LOD_MAX_EDGE_LENGTH_SQ    1e10
#define LH3D_LOD_NO_EDGE_LENGTH_SQ     1e20f
#define LH3D_LOD_MAX_POSITION_VERTICES 16
#define LH3D_LOD_MAX_EDGE_VERTICES     8

// The vertices that share a position.
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

// An edge between two positions, A < B, and the pairs of vertices along it.
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
int           LH3DMesh::g_current_lod = 1;
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

static inline unsigned long ScaleColor(unsigned long color, int scale)
{
	return ((color & 0xff00) * scale & 0xff0000 | (color & 0xff0000) * scale & 0xff0000ff |
	        (color & 0xff) * scale & 0xff00) >>
	           8 |
	       color & 0xff000000;
}

static inline void TransformPointBy(LHPoint* out, const LHPoint& in, const LHMatrix* m)
{
	out->x = m->m[0] * in.x + m->m[3] * in.y + m->m[6] * in.z + m->m[9];
	out->y = m->m[1] * in.x + m->m[4] * in.y + m->m[7] * in.z + m->m[10];
	out->z = m->m[2] * in.x + m->m[5] * in.y + m->m[8] * in.z + m->m[11];
}

static inline int GetLightLevel(int intensity)
{
	if (intensity < 0)
	{
		return LH3DPrimitive::MIN_LIGHT;
	}
	return ((LH3D_LIGHT_MAX - LH3DPrimitive::MIN_LIGHT) * intensity >> 8) + LH3DPrimitive::MIN_LIGHT;
}

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
	if ((source->magic[0] != LH3D_MESH_MAGIC_0) | (source->magic[1] != LH3D_MESH_MAGIC_1) |
	    (source->magic[2] != LH3D_MESH_MAGIC_2) | (source->magic[3] != LH3D_MESH_MAGIC_3))
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
				format.Type = 1;
				g_b_from_l3d = true;
				if (mesh->flags & LH3D_MESH_FLAGS_SKINS_HAVE_FORMAT)
				{
					mesh->skins[i] = LH3DTexture::Create(skin, 4, skin_size, &format);
				}
				else
				{
					mesh->skins[i] = LH3DTexture::Create(skin, 4, skin_size, NULL);
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
			uint32_t* header = (uint32_t*)data;
			if (header[1] != LH3D_MESH_NO_OFFSET)
			{
				data = (uint8_t*)mesh + header[1];
				header[1] = (uint32_t)data;
				uint8_t* previous = NULL;
				uint8_t* current = data;
				for (uint32_t j = 0; j < header[0]; j++)
				{
					int count = ((int*)data)[5];
					((uint8_t**)data)[4] = previous;
					((uint8_t**)data)[3] = data + count * sizeof(LHMatrix) + 0x18;
					data += ((int*)data)[1] * ((int*)data)[0] * 2 + count * sizeof(LHMatrix) + 0x18;
					previous = current;
					current = data;
				}
			}
			else
			{
				header[1] = NULL;
			}
		}
		if (mesh->IsContainsUV2())
		{
			uint32_t* header = (uint32_t*)data;
			header[4] += (uint32_t)mesh;
			uint8_t* next = data + header[0];
			header[3] += (uint32_t)mesh;
			LH3DMaterial* material = (LH3DMaterial*)header[4];
			for (int j = 0; j < (int)header[2]; j++)
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
			((uint32_t*)data)[2] += (uint32_t)mesh;
		}
		uint8_t* metrics = mesh->GetEMetricsData();
		if (metrics)
		{
			((uint32_t*)metrics)[2] += (uint32_t)mesh;
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
	char     error[0x400];
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
	desc.dwNumVertices = 0x1000;
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
				float*  vertices;
				HRESULT result =
					buffer->Lock(DDLOCK_WAIT | DDLOCK_WRITEONLY | DDLOCK_DISCARDCONTENTS, (void**)&vertices, NULL);
				if (result == D3D_OK)
				{
					LH3DVertex* vertex = primitive->GetListVertex();
					for (int k = 0; k < (int)desc.dwNumVertices; k++)
					{
						vertices[k * 8 + 6] = vertex->uv.x;
						vertices[k * 8 + 7] = vertex->uv.y;
						vertices[k * 8 + 0] = vertex->position.x;
						vertices[k * 8 + 1] = vertex->position.y;
						vertices[k * 8 + 2] = vertex->position.z;
						vertices[k * 8 + 3] = vertex->normal.x;
						vertices[k * 8 + 4] = vertex->normal.y;
						vertices[k * 8 + 5] = vertex->normal.z;
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
			index += 2;
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
		uint8_t* uv2 = GetUV2Data();
		for (i = 0; i < ((int*)uv2)[2]; i++)
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
	g_current_lod = 1;
	g_current_matrix = g_current_list_matrix;
	int    points = 0;
	float* point = g_list_shadow_pt;
	for (i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if (submesh->GetLod() & 1)
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
				LH3DObject* object = shadow->Object;
				LHMatrix*   list = g_current_list_matrix;
				anim->SetTransform(list, object->GetMesh(), object->GetCurrentCycleTime(), object->matrix);
			}
		}
		LH3DTech::g_local_to_clipping = shadow->Object->matrix;
		g_current_matrix = g_current_list_matrix;
		for (i = 0; i < shadow->Object->GetMesh()->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = shadow->Object->GetMesh()->submeshes[i];
			if (submesh->GetLod() & 1)
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
		if (*uv < 0.0f)
		{
			*uv = 0.0f;
		}
		else if (*uv > LH3D_MESH_SHADOW_CLIP_X - 1)
		{
			*uv = LH3D_MESH_SHADOW_CLIP_X - 1;
		}
		uv++;
		*uv = (*uv - shadow->MinZ) * scale_z;
		if (*uv < 0.0f)
		{
			*uv = 0.0f;
		}
		else if (*uv > LH3D_MESH_SHADOW_CLIP_Y - 1)
		{
			*uv = LH3D_MESH_SHADOW_CLIP_Y - 1;
		}
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
		for (i = 0; i < SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = submeshes[i];
			for (int j = 0; j < submesh->NumPrimitives; j++)
			{
				texture = submesh->primitives_[j]->Material.texture;
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
			if (submesh->GetLod() & 1)
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
			LH3DMesh*    mesh = shadow->Object->GetMesh();
			LH3DTexture* texture = NULL;
			for (i = 0; i < mesh->SubmeshCount; i++)
			{
				LH3DSubMesh* submesh = mesh->submeshes[i];
				for (int j = 0; j < submesh->NumPrimitives; j++)
				{
					texture = submesh->primitives_[j]->Material.texture;
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
				if (submesh->GetLod() & 1)
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
				uint16_t* mask = &collide.Pixels[y * LH3D_SHADOW_SIZE + x];
				pixels[y * LH3D_SHADOW_SIZE + x] |=
					((mask[0] + mask[1] + mask[LH3D_SHADOW_SIZE] + mask[LH3D_SHADOW_SIZE + 1]) / 4) &
					LH3D_MESH_SHADOW_ALPHA_MASK;
			}
		}
	}
	if (faded && pixels)
	{
		for (y = 1; y < LH3D_SHADOW_SIZE - 1; y++)
		{
			for (x = 1; x < LH3D_SHADOW_SIZE - 1; x++)
			{
				uint16_t* pixel = &pixels[y * LH3D_SHADOW_SIZE + x];
				*pixel = ((*pixel * alpha) / LH3D_SHADOW_ALPHA_OPAQUE) & LH3D_MESH_SHADOW_ALPHA_MASK;
			}
		}
	}
	texture->Unlock();
}

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

void LH3DMesh::DrawVolLightGJ()
{
	g_current_matrix = g_current_list_matrix;
	for (int i = 0; i < SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = submeshes[i];
		if ((submesh->GetLod() & 1) && !submesh->GetStatus())
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
		LHMatrix* matrix = ((LHMatrix**)metrics)[2];
		LHMatrix* from_matrix = ((LHMatrix**)from_metrics)[2];
		LHMatrix* to_matrix = ((LHMatrix**)to_metrics)[2];
		for (uint32_t j = 0; j < ((uint32_t*)metrics)[1]; j++)
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
