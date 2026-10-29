#include "LH3DMeshIntersect.h"

#include <stdio.h> /* For FILE, fopen, fgetc, fclose */

#include <Lionhead/LHFile/ver3.0/LHFile.h> /* For LHFile */

#include "LH3DColor.h"       /* For LH3DColor */
#include "LH3DMath.h"        /* For InverseSquareRoot */
#include "LH3DMesh.h"        /* For LH3DMesh */
#include "LH3DPrimitive.h"   /* For LH3DPrimitive */
#include "LH3DSubMesh.h"     /* For LH3DSubMesh */
#include "LH3DTexture.h"     /* For LH3DTexture, LH3DSurfDesc */
#include "LH3DVertexGroup.h" /* For LH3DVertexGroup */
#include "LHMatrix.h"        /* For LHMatrix */

// The scar image has a SCAR_TILE_SIZE square tile for each scar type (row) and sub type (column).
#define SCAR_TEXTURE_SIZE 256
#define SCAR_TILE_SIZE    32

// The widths of the skin textures that scars are drawn into.
#define SCAR_SKIN_LARGE 256
#define SCAR_SKIN_SMALL 128

// A skin texel is 4444 ARGB; this is its alpha when opaque.
#define SKIN_TEXEL_OPAQUE 0xf000

#define MESH_INTERSECT_REACH_MARGIN      50.0f
#define MESH_INTERSECT_FACING_EPSILON    0.0001f
#define TEXTURE_TRIANGLE_MIN_DETERMINANT 0.0001f

static const float MESH_INTERSECT_EPSILON = 0.005f;

// BW1W120 00866ec0 BW1M119 0106e560 (LHCombined Release)
void LoadScar();

MeshIntersectData MeshIntersect::GMeshIntersect;
LHPoint           MeshIntersect::WorldHitPos;
LHPoint           MeshIntersect::WorldPoints[MESH_INTERSECT_MAX_POINTS];
long              MeshIntersect::WorldTris[MESH_INTERSECT_MAX_TRIANGLES * 3];
long              GpIdx[MESH_INTERSECT_MAX_POINTS];

void MeshIntersect::InitialiseMeshIntersect()
{
	GMeshIntersect.Points = WorldPoints;
	GMeshIntersect.Triangles = WorldTris;
	GMeshIntersect.NumTriangles = 0;
}

bool32_t MeshIntersect::GetNearestIntersection(LH3DMesh* mesh, const LHMatrix* matrices, LHPoint* start,
                                               LHPoint* direction, bool physics, LHPoint* position, LHPoint* normal,
                                               bool both_ways)
{
	bool32_t found = false;
	float    nearest;
	long     numSubMeshes = mesh->SubmeshCount;
	LHPoint* points = WorldPoints;
	for (long s = 0; s < numSubMeshes; s++)
	{
		LH3DSubMesh* subMesh = mesh->submeshes[s];
		if (!((physics && subMesh->IsPhysics()) || (!physics && (subMesh->GetLod() & LH3D_MESH_LOD_NEAR))))
		{
			continue;
		}
		long numPrimitives = subMesh->NumPrimitives;
		for (long p = 0; p < numPrimitives; p++)
		{
			long           v = 0;
			LH3DPrimitive* primitive = subMesh->primitives_[p];
			LH3DVertex*    vertices = primitive->Vertices;
			if (mesh->flags & LH3D_MESH_FLAGS_HAS_BONES)
			{
				for (long g = 0; g < primitive->NumVertexGroups; g++)
				{
					LH3DVertexGroup* group = &primitive->VertexGroups[g];
					const LHMatrix*  matrix = &matrices[group->BoneIndex];
					for (long i = 0; i < group->vertex_count; i++)
					{
						float x = vertices[v].position.x;
						float y = vertices[v].position.y;
						float z = vertices[v].position.z;
						points[v].x = x * matrix->m[0] + y * matrix->m[3] + z * matrix->m[6] + matrix->m[9];
						points[v].y = x * matrix->m[1] + y * matrix->m[4] + z * matrix->m[7] + matrix->m[10];
						points[v].z = x * matrix->m[2] + y * matrix->m[5] + z * matrix->m[8] + matrix->m[11];
						GpIdx[v] = g;
						v++;
					}
				}
			}
			else
			{
				for (; v < primitive->NumVertices; v++)
				{
					float x = vertices[v].position.x;
					float y = vertices[v].position.y;
					float z = vertices[v].position.z;
					points[v].x = x * matrices->m[0] + y * matrices->m[3] + z * matrices->m[6] + matrices->m[9];
					points[v].y = x * matrices->m[1] + y * matrices->m[4] + z * matrices->m[7] + matrices->m[10];
					points[v].z = x * matrices->m[2] + y * matrices->m[5] + z * matrices->m[8] + matrices->m[11];
					GpIdx[v] = 0;
				}
			}
			for (long t = 0; t < primitive->NumTriangles; t++)
			{
				LH3DTriangle* triangle = &primitive->Triangles[t];
				LHPoint       a = points[triangle->A];
				LHPoint       b = points[triangle->B];
				LHPoint       c = points[triangle->C];
				LHPoint       ab = b - a;
				LHPoint       ac = c - a;
				LHPoint       faceNormal = ab ^ ac;
				faceNormal.FastNormalizeInline();
				float   planeDistance = faceNormal * a;
				LHPoint rayDirection = *direction;
				float   facing = faceNormal * rayDirection;
				if (facing >= -MESH_INTERSECT_EPSILON && facing <= MESH_INTERSECT_EPSILON)
				{
					continue;
				}
				LHPoint rayStart = *start;
				float   distance = (planeDistance - faceNormal * rayStart) / facing;
				if (!both_ways && distance <= 0.0f)
				{
					continue;
				}
				LHPoint hit = *start + *direction * distance;
				LHPoint ah = hit - a;
				long sides = (((b - a) ^ (hit - a)) * faceNormal > 0.0f) + (((c - b) ^ (hit - b)) * faceNormal > 0.0f) +
				             (((a - c) ^ (hit - c)) * faceNormal > 0.0f);
				if (sides != 0 && sides != 3)
				{
					continue;
				}
				if (found && distance >= nearest)
				{
					continue;
				}
				WorldHitPos = hit;
				if (position != NULL && normal != NULL)
				{
					*position = hit;
					if (facing > 0.0f)
					{
						*normal = faceNormal;
					}
					else
					{
						normal->x = -faceNormal.x;
						normal->y = -faceNormal.y;
						normal->z = -faceNormal.z;
					}
					nearest = distance;
					found = true;
				}
				else
				{
					float hitU;
					float hitV;
					if (fabs(ac.x) > MESH_INTERSECT_EPSILON)
					{
						float det = ab.y - ab.x * ac.y / ac.x;
						if (fabs(det) > MESH_INTERSECT_EPSILON)
						{
							hitU = (ah.y - ah.x * ac.y / ac.x) / det;
							hitV = (ah.x - ab.x * hitU) / ac.x;
							if (hitU >= 0.0f && hitU <= 1.0f && hitV >= 0.0f && hitV <= 1.0f)
							{
								nearest = distance;
								found = true;
								Vertices[0] = triangle->A;
								Vertices[1] = triangle->B;
								Vertices[2] = triangle->C;
								VertexGroups[0] = GpIdx[Vertices[0]];
								VertexGroups[1] = GpIdx[Vertices[1]];
								VertexGroups[2] = GpIdx[Vertices[2]];
								U = hitU;
								V = hitV;
								Primitive = p;
								SubMesh = s;
							}
						}
					}
					else if (fabs(ab.x) > MESH_INTERSECT_EPSILON)
					{
						float det = ac.y - ac.x * ab.y / ab.x;
						if (fabs(det) > MESH_INTERSECT_EPSILON)
						{
							hitV = (ah.y - ah.x * ab.y / ab.x) / det;
							hitU = (ah.x - hitV * ac.x) / ab.x;
							if (hitU >= 0.0f && hitU <= 1.0f && hitV >= 0.0f && hitV <= 1.0f)
							{
								nearest = distance;
								found = true;
								Vertices[0] = triangle->A;
								Vertices[1] = triangle->B;
								Vertices[2] = triangle->C;
								VertexGroups[0] = GpIdx[Vertices[0]];
								VertexGroups[1] = GpIdx[Vertices[1]];
								VertexGroups[2] = GpIdx[Vertices[2]];
								U = hitU;
								V = hitV;
								Primitive = p;
								SubMesh = s;
							}
						}
					}
				}
			}
		}
	}
	return found;
}

#ifndef VERSION_BW1W100
void MeshIntersect::SetUpWorldPoints(LH3DMesh* mesh, const LHMatrix* matrices, MeshIntersectData* data)
{
	long     numPoints = 0;
	long     numTriangles = 0;
	long     numSubMeshes = mesh->SubmeshCount;
	LHPoint* points = data->Points;
	long*    triangles = data->Triangles;
	for (long s = 0; s < numSubMeshes; s++)
	{
		long numPrimitives = mesh->submeshes[s]->NumPrimitives;
		for (long p = 0; p < numPrimitives; p++)
		{
			long           firstPoint = numPoints;
			long           v = 0;
			LH3DPrimitive* primitive = mesh->submeshes[s]->primitives_[p];
			LH3DVertex*    vertices = primitive->Vertices;
			if (mesh->flags & LH3D_MESH_FLAGS_HAS_BONES)
			{
				for (long g = 0; g < primitive->NumVertexGroups; g++)
				{
					LH3DVertexGroup* group = &primitive->VertexGroups[g];
					const LHMatrix*  matrix = &matrices[group->BoneIndex];
					for (long i = 0; i < group->vertex_count; i++)
					{
						float x = vertices[v].position.x;
						float y = vertices[v].position.y;
						float z = vertices[v].position.z;
						points[numPoints].x = x * matrix->m[0] + y * matrix->m[3] + z * matrix->m[6] + matrix->m[9];
						points[numPoints].y = x * matrix->m[1] + y * matrix->m[4] + z * matrix->m[7] + matrix->m[10];
						points[numPoints].z = x * matrix->m[2] + y * matrix->m[5] + z * matrix->m[8] + matrix->m[11];
						GpIdx[v] = g;
						v++;
						numPoints++;
					}
				}
			}
			else
			{
				for (; v < primitive->NumVertices; v++)
				{
					float x = vertices[v].position.x;
					float y = vertices[v].position.y;
					float z = vertices[v].position.z;
					points[numPoints].x = x * matrices->m[0] + y * matrices->m[3] + z * matrices->m[6] + matrices->m[9];
					points[numPoints].y =
						x * matrices->m[1] + y * matrices->m[4] + z * matrices->m[7] + matrices->m[10];
					points[numPoints].z =
						x * matrices->m[2] + y * matrices->m[5] + z * matrices->m[8] + matrices->m[11];
					GpIdx[v] = 0;
					numPoints++;
				}
			}
			long*         index = &triangles[numTriangles * 3];
			LH3DTriangle* triangle = primitive->Triangles;
			for (long t = 0; t < primitive->NumTriangles; t++)
			{
				index[0] = triangle->A + firstPoint;
				index[1] = triangle->B + firstPoint;
				index[2] = triangle->C + firstPoint;
				index += 3;
				numTriangles++;
				triangle++;
			}
		}
	}
	data->NumTriangles = numTriangles;
}

bool32_t MeshIntersect::GetImpactPointAlex(LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal,
                                           MeshIntersectData* data, float max_dist)
{
	LHPoint* points = data->Points;
	long     numTriangles = data->NumTriangles;
	long*    triangles = data->Triangles;
	float    reachSq = (max_dist + MESH_INTERSECT_REACH_MARGIN) * (max_dist + MESH_INTERSECT_REACH_MARGIN);
	bool     found = false;
	float    nearestDistance;
	LHPoint  nearestImpact;
	LHPoint  nearestNormal;
	for (long i = 0; i < numTriangles; i++)
	{
		LHPoint a = points[triangles[0]];
		LHPoint b = points[triangles[1]];
		LHPoint c = points[triangles[2]];
		if (a.GetDistanceSq(start) < reachSq || b.GetDistanceSq(start) < reachSq || c.GetDistanceSq(start) < reachSq)
		{
			LHPoint ab = b - a;
			LHPoint ac = c - a;
			normal = ab ^ ac;
			if (normal * direction < -MESH_INTERSECT_FACING_EPSILON)
			{
				normal *= InverseSquareRoot(normal * normal);
				float distance = (normal * a - normal * start) / (normal * direction);
				if (distance < max_dist && distance > 0.0f)
				{
					impact = start + direction * distance;
					int insideEdges = ((ab ^ (impact - a)) * normal > 0.0f ? 1 : 0) +
					                  (((c - b) ^ (impact - b)) * normal > 0.0f ? 1 : 0) +
					                  (((impact - c) ^ ac) * normal > 0.0f ? 1 : 0);
					if (insideEdges == 0 || insideEdges == 3)
					{
						if (!found || distance < nearestDistance)
						{
							found = true;
							nearestDistance = distance;
							nearestImpact = impact;
							nearestNormal = normal;
						}
					}
				}
			}
		}
		triangles += 3;
	}
	normal = nearestNormal;
	impact = nearestImpact;
	return found;
}

bool32_t MeshIntersect::GetImpactPoint(LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal,
                                       MeshIntersectData* data)
{
	LHPoint* points = data->Points;
	long     numTriangles = data->NumTriangles;
	long*    triangles = data->Triangles;
	for (long i = 0; i < numTriangles; i++)
	{
		LHPoint a = points[triangles[0]];
		LHPoint b = points[triangles[1]];
		LHPoint c = points[triangles[2]];
		LHPoint ab = b - a;
		LHPoint ac = c - a;
		normal = ab ^ ac;
		if (normal * direction < -MESH_INTERSECT_FACING_EPSILON)
		{
			normal *= InverseSquareRoot(normal * normal);
			float distance = (normal * a - normal * start) / (normal * direction);
			if (distance <= 0.0f)
			{
				impact = start + direction * distance;
				if ((ab ^ (impact - a)) * normal > 0.0f && ((c - b) ^ (impact - b)) * normal > 0.0f &&
				    ((impact - c) ^ ac) * normal > 0.0f)
				{
					return true;
				}
			}
		}
		triangles += 3;
	}
	return false;
}
#endif

bool32_t MeshIntersect::CreateFromTextureRef(LH3DMesh* mesh, LHMatrix* matrices, TextureRef* ref)
{
	long         numSubMeshes = mesh->SubmeshCount;
	long         found = 0;
	LH3DTexture* skin = mesh->skins[ref->Skin];
	for (long s = 0; s < numSubMeshes; s++)
	{
		long numPrimitives = mesh->submeshes[s]->NumPrimitives;
		for (long p = 0; p < numPrimitives; p++)
		{
			LH3DPrimitive* primitive = mesh->submeshes[s]->primitives_[p];
			LH3DVertex*    vertices = primitive->Vertices;
			LH3DTexture*   texture = primitive->Material.texture;
			long           v = 0;
			texture->format.GetWidth();
			if (mesh->flags & LH3D_MESH_FLAGS_HAS_BONES)
			{
				for (long g = 0; g < primitive->NumVertexGroups; g++)
				{
					LH3DVertexGroup* group = &primitive->VertexGroups[g];
					LHMatrix*        matrix = &matrices[group->BoneIndex];
					for (long i = 0; i < group->vertex_count; i++)
					{
						float    x = vertices[v].position.x;
						float    y = vertices[v].position.y;
						float    z = vertices[v].position.z;
						LHPoint* point = &WorldPoints[v];
						point->x = x * matrix->m[0] + y * matrix->m[3] + z * matrix->m[6] + matrix->m[9];
						point->y = x * matrix->m[1] + y * matrix->m[4] + z * matrix->m[7] + matrix->m[10];
						point->z = x * matrix->m[2] + y * matrix->m[5] + z * matrix->m[8] + matrix->m[11];
						GpIdx[v] = g;
						v++;
					}
				}
			}
			else
			{
				for (; v < primitive->NumVertices; v++)
				{
					float    x = vertices[v].position.x;
					float    y = vertices[v].position.y;
					float    z = vertices[v].position.z;
					LHPoint* point = &WorldPoints[v];
					point->x = x * matrices->m[0] + y * matrices->m[3] + z * matrices->m[6] + matrices->m[9];
					point->y = x * matrices->m[1] + y * matrices->m[4] + z * matrices->m[7] + matrices->m[10];
					point->z = x * matrices->m[2] + y * matrices->m[5] + z * matrices->m[8] + matrices->m[11];
					GpIdx[v] = 0;
				}
			}
			if (texture == skin)
			{
				for (long t = 0; t < primitive->NumTriangles; t++)
				{
					LH3DTriangle* triangle = &primitive->Triangles[t];
					Vertices[0] = triangle->A;
					Vertices[1] = triangle->B;
					Vertices[2] = triangle->C;
					float u0 = primitive->Vertices[Vertices[0]].uv.x;
					float v0 = primitive->Vertices[Vertices[0]].uv.y;
					float u1 = primitive->Vertices[Vertices[1]].uv.x;
					float v1 = primitive->Vertices[Vertices[1]].uv.y;
					float u2 = primitive->Vertices[Vertices[2]].uv.x;
					float v2 = primitive->Vertices[Vertices[2]].uv.y;
					float du1 = u1 - u0;
					float dv1 = v1 - v0;
					float du2 = u2 - u0;
					float dv2 = v2 - v0;
					float det = du2 * dv1 - du1 * dv2;
					if (fabs(det) > TEXTURE_TRIANGLE_MIN_DETERMINANT)
					{
						float du = (float)ref->U / SCAR_TEXTURE_SIZE - u0;
						float dv = (float)ref->V / SCAR_TEXTURE_SIZE - v0;
						V = (dv1 * du - du1 * dv) / det;
						U = (du2 * dv - dv2 * du) / det;
						if (V >= 0.0f && V <= 1.0f && U >= 0.0f && U <= 1.0f && V + U <= 1.0f)
						{
							found++;
							VertexGroups[0] = GpIdx[Vertices[0]];
							VertexGroups[1] = GpIdx[Vertices[1]];
							VertexGroups[2] = GpIdx[Vertices[2]];
							Primitive = p;
							SubMesh = s;
							break;
						}
					}
				}
			}
			if (found)
			{
				break;
			}
		}
		if (found)
		{
			break;
		}
	}
	return found != 0;
}

void MeshIntersect::GetTextureRef(LH3DMesh* mesh, TextureRef* ref)
{
	LH3DPrimitive* primitive = mesh->submeshes[0]->primitives_[Primitive];
	LH3DTexture*   texture = primitive->Material.texture;
	int            skin = 0;
	for (int i = 0; i < mesh->SkinCount; i++)
	{
		if (mesh->skins[i] == texture)
		{
			skin = i;
		}
	}
	LH3DVertex*   vertices = primitive->Vertices;
	float         u0 = vertices[Vertices[0]].uv.x;
	float         v0 = vertices[Vertices[0]].uv.y;
	unsigned long u =
		(unsigned long)(((vertices[Vertices[1]].uv.x - u0) * U + (vertices[Vertices[2]].uv.x - u0) * V + u0) *
	                    SCAR_TEXTURE_SIZE);
	unsigned long v =
		(unsigned long)(((vertices[Vertices[1]].uv.y - v0) * U + (vertices[Vertices[2]].uv.y - v0) * V + v0) *
	                    SCAR_TEXTURE_SIZE);
	ref->U = u > 0 ? (u < SCAR_TEXTURE_SIZE - 1 ? u : SCAR_TEXTURE_SIZE - 1) : 0;
	ref->V = v > 0 ? (v < SCAR_TEXTURE_SIZE - 1 ? v : SCAR_TEXTURE_SIZE - 1) : 0;
	ref->Age = 0;
	ref->Skin = skin;
}

void MeshIntersect::ObtainPointColour(LH3DMesh* mesh, unsigned long* colour)
{
	LH3DPrimitive* primitive = mesh->submeshes[0]->primitives_[Primitive];
	LH3DTexture*   texture = primitive->Material.texture;
	LH3DSurfDesc   desc;
	texture->Lock(&desc);
	if (desc.Surface == NULL || (desc.Width != SCAR_SKIN_LARGE && desc.Width != SCAR_SKIN_SMALL))
	{
		texture->Unlock();
		return;
	}
	int skin = 0;
	for (int i = 0; i < mesh->SkinCount; i++)
	{
		if (mesh->skins[i] == texture)
		{
			skin = i;
		}
	}
	LH3DVertex* vertices = primitive->Vertices;
	float       u0 = vertices[Vertices[0]].uv.X();
	float       v0 = vertices[Vertices[0]].uv.Y();
	uint32_t x = (uint32_t)(((vertices[Vertices[1]].uv.X() - u0) * U + (vertices[Vertices[2]].uv.X() - u0) * V + u0) *
	                        desc.Width);
	uint32_t y = (uint32_t)(((vertices[Vertices[1]].uv.Y() - v0) * U + (vertices[Vertices[2]].uv.Y() - v0) * V + v0) *
	                        desc.Width);
	uint32_t px = (uint8_t)(x > 0 ? (x < desc.Width - 1 ? x : desc.Width - 1) : 0);
	uint32_t py = (uint8_t)(y > 0 ? (y < desc.Width - 1 ? y : desc.Width - 1) : 0);
	uint16_t pixel = ((uint16_t*)desc.Surface)[px + py * desc.Width];
	*colour = ((unsigned long)LH3D_COLOR_OPAQUE << LH3D_COLOR_ALPHA_SHIFT) +
	          (((pixel >> 4) & 0xf0) << LH3D_COLOR_RED_SHIFT) + ((pixel & 0xf0) << LH3D_COLOR_GREEN_SHIFT) +
	          ((pixel & 0xf) << 4);
	texture->Unlock();
}

void TextureRef::ColourIntersectionPoint(LH3DMesh* mesh, LH3DColor* colour, float amount)
{
	LH3DTexture* texture = mesh->skins[Skin >= mesh->SkinCount ? 0 : Skin];
	LH3DSurfDesc desc;
	texture->Lock(&desc);
	if (desc.Surface == NULL)
	{
		texture->Unlock();
		return;
	}
	bool large;
	if (desc.Width == SCAR_SKIN_LARGE)
	{
		large = true;
	}
	else if (desc.Width == SCAR_SKIN_SMALL)
	{
		large = false;
	}
	else
	{
		texture->Unlock();
		return;
	}
	long      y = large ? V : V >> 1;
	long      x = large ? U : U >> 1;
	uint16_t* pixel = (uint16_t*)desc.Surface + (y * desc.Width + x);
	uint16_t  old = *pixel;
	uint32_t  red = (uint32_t)(old >> 4 & 0xf0) * (1.0f - amount) + colour->r * amount;
	uint32_t  green = (uint32_t)(old & 0xf0) * (1.0f - amount) + colour->g * amount;
	uint32_t  blue = (uint32_t)((old & 0xf) << 4) * (1.0f - amount) + colour->b * amount;
	*pixel = SKIN_TEXEL_OPAQUE + ((red & 0xf0) << 4) + (green & 0xf0) + (blue >> 4 & 0xf);
	if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
	{
		texture->ReloadPending = true;
	}
	texture->Unlock();
}

LH3DColor NewCols[SCAR_TEXTURE_SIZE * SCAR_TEXTURE_SIZE];
LH3DColor OldCols[SCAR_TEXTURE_SIZE * SCAR_TEXTURE_SIZE];
bool      ScarLoaded = false;

void LoadScar()
{
	ScarLoaded = true;
	FILE* colours = fopen("data\\damage_new256.raw", "rb");
	if (colours == NULL)
	{
		return;
	}
	FILE* alphas = fopen("data\\damage_new256A.raw", "rb");
	if (alphas == NULL)
	{
		fclose(colours);
		return;
	}
	LH3DColor* colour = NewCols;
	int        x;
	int        y;
	for (y = 0; y < SCAR_TEXTURE_SIZE; y++)
	{
		for (x = 0; x < SCAR_TEXTURE_SIZE; x++)
		{
			int red = fgetc(colours);
			int green = fgetc(colours);
			int blue = fgetc(colours);
			colour->a = fgetc(alphas);
			colour->r = red;
			colour->g = green;
			colour->b = blue;
			colour++;
		}
	}
	fclose(colours);
	fclose(alphas);
	colours = fopen("data\\damage_old256.raw", "rb");
	if (colours == NULL)
	{
		return;
	}
	alphas = fopen("data\\damage_old256A.raw", "rb");
	if (alphas == NULL)
	{
		fclose(colours);
		return;
	}
	colour = OldCols;
	for (y = 0; y < SCAR_TEXTURE_SIZE; y++)
	{
		for (x = 0; x < SCAR_TEXTURE_SIZE; x++)
		{
			int red = fgetc(colours);
			int green = fgetc(colours);
			int blue = fgetc(colours);
			colour->a = fgetc(alphas);
			colour->r = red;
			colour->g = green;
			colour->b = blue;
			colour++;
		}
	}
	fclose(colours);
	fclose(alphas);
}

void TextureRef::DrawCutAroundIntersectionPoint(LH3DMesh* mesh, float amount)
{
	if (!ScarLoaded)
	{
		LoadScar();
	}
	LH3DTexture* texture = mesh->skins[Skin >= mesh->SkinCount ? 0 : Skin];
	LH3DSurfDesc desc;
	texture->Lock(&desc);
	if (desc.Surface == NULL)
	{
		texture->Unlock();
		return;
	}
	uint16_t* surface = (uint16_t*)desc.Surface;
	long      width = desc.Width;
	bool      large;
	if (width == SCAR_SKIN_LARGE)
	{
		large = true;
	}
	else if (width == SCAR_SKIN_SMALL)
	{
		large = false;
	}
	else
	{
		texture->Unlock();
		return;
	}
	long          tile = (Type * SCAR_TEXTURE_SIZE + SubType) * SCAR_TILE_SIZE;
	LH3DColor*    newCols = &NewCols[tile];
	LH3DColor*    oldCols = &OldCols[tile];
	unsigned long blend = (unsigned long)(amount * LH3D_COLOR_OPAQUE);
	long          v = large ? V : V >> 1;
	long          u = large ? U : U >> 1;
	long          size = large ? SCAR_TILE_SIZE / 2 : SCAR_TILE_SIZE / 4;
	for (long j = 0; j < SCAR_TILE_SIZE; j++)
	{
		if (large || (j & 1))
		{
			long y = (large ? j : j >> 1) - size + v;
			for (long i = 0; i < SCAR_TILE_SIZE; i++)
			{
				if (large || (i & 1))
				{
					long x = (large ? i : i >> 1) - size + u;
					if (x >= 0 && x < desc.Width && y >= 0 && y < desc.Height)
					{
						unsigned long to = *(unsigned long*)oldCols;
						unsigned long from = *(unsigned long*)newCols;
						LH3DColor     colour(LH3D_BLEND_COLOR_AND_ALPHA(from, to, blend));
						uint16_t*     pixel = &surface[y * width + x];
						int           alpha = colour.a;
						int           red =
							(colour.r * alpha + (*pixel >> 4 & 0xf0) * (LH3D_COLOR_OPAQUE - alpha)) / LH3D_COLOR_OPAQUE;
						int green =
							(colour.g * alpha + (*pixel & 0xf0) * (LH3D_COLOR_OPAQUE - alpha)) / LH3D_COLOR_OPAQUE;
						int blue = (colour.b * alpha + ((*pixel & 0xf) << 4) * (LH3D_COLOR_OPAQUE - alpha)) /
						           LH3D_COLOR_OPAQUE;
						*pixel = SKIN_TEXEL_OPAQUE + ((red & 0xf0) << 4) + (green & 0xf0) + ((blue & 0xf0) >> 4);
					}
				}
				newCols++;
				oldCols++;
			}
			newCols += SCAR_TEXTURE_SIZE - SCAR_TILE_SIZE;
			oldCols += SCAR_TEXTURE_SIZE - SCAR_TILE_SIZE;
		}
		else
		{
			newCols += SCAR_TEXTURE_SIZE;
			oldCols += SCAR_TEXTURE_SIZE;
		}
	}
	texture->Unlock();
	if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
	{
		texture->ReloadPending = true;
	}
}

void MeshIntersect::GetWorldPositionAndInwardNormal(LH3DMesh* mesh, const LHMatrix* matrices, LHPoint* position,
                                                    LHPoint* normal)
{
	LH3DPrimitive* primitive = mesh->submeshes[SubMesh]->primitives_[Primitive];
	LH3DVertex*    vertices = primitive->Vertices;
	LHPoint        a;
	LHPoint        b;
	LHPoint        c;
	if (mesh->flags & LH3D_MESH_FLAGS_HAS_BONES)
	{
		const LHMatrix* matrix = &matrices[primitive->VertexGroups[VertexGroups[0]].BoneIndex];
		TransformPoint(a, vertices[Vertices[0]].position, *matrix);
		matrix = &matrices[primitive->VertexGroups[VertexGroups[1]].BoneIndex];
		TransformPoint(b, vertices[Vertices[1]].position, *matrix);
		matrix = &matrices[primitive->VertexGroups[VertexGroups[2]].BoneIndex];
		TransformPoint(c, vertices[Vertices[2]].position, *matrix);
	}
	else
	{
		TransformPoint(a, vertices[Vertices[0]].position, *matrices);
		TransformPoint(b, vertices[Vertices[1]].position, *matrices);
		TransformPoint(c, vertices[Vertices[2]].position, *matrices);
	}
	LHPoint ab = b - a;
	LHPoint ac = c - a;
	normal->CrossProduct(ac, ab);
	position->Set(a + ab * U + ac * V);
}

void MeshIntersect::GetWorldPositionInwardNormalAndAverageMatrix(LH3DMesh* mesh, const LHMatrix* matrices,
                                                                 LHPoint* position, LHPoint* normal, LHMatrix* matrix)
{
	LH3DPrimitive* primitive = mesh->submeshes[0]->primitives_[Primitive];
	LH3DVertex*    vertices = primitive->Vertices;
	LHMatrix       boneMatrix;
	LHPoint        a;
	LHPoint        b;
	LHPoint        c;
	boneMatrix = matrices[primitive->VertexGroups[VertexGroups[0]].BoneIndex];
	TransformPoint(a, vertices[Vertices[0]].position, boneMatrix);
	boneMatrix.NormaliseMatrixOnly();
	matrix->Set(boneMatrix);
	boneMatrix = matrices[primitive->VertexGroups[VertexGroups[1]].BoneIndex];
	TransformPoint(b, vertices[Vertices[1]].position, boneMatrix);
	boneMatrix.NormaliseMatrixOnly();
	AddMatrix(*matrix, boneMatrix);
	boneMatrix = matrices[primitive->VertexGroups[VertexGroups[2]].BoneIndex];
	TransformPoint(c, vertices[Vertices[2]].position, boneMatrix);
	boneMatrix.NormaliseMatrixOnly();
	AddMatrix(*matrix, boneMatrix);
	matrix->NormaliseMatrixOnly();
	matrix->_41 = 0.0f;
	matrix->_42 = 0.0f;
	matrix->_43 = 0.0f;
	LHPoint ab = b - a;
	LHPoint ac = c - a;
	normal->CrossProduct(ac, ab);
	position->Set(a + ab * U + ac * V);
}

void MeshIntersect::WriteBinary(LHFile* file)
{
	file->WriteLong(Primitive);
	file->WriteLong(Vertices[0]);
	file->WriteLong(Vertices[1]);
	file->WriteLong(Vertices[2]);
	file->WriteLong(VertexGroups[0]);
	file->WriteLong(VertexGroups[1]);
	file->WriteLong(VertexGroups[2]);
	file->WriteFloat(U);
	file->WriteFloat(V);
}

void MeshIntersect::ReadBinary(LHFile* file)
{
	Primitive = file->ReadLong();
	Vertices[0] = file->ReadLong();
	Vertices[1] = file->ReadLong();
	Vertices[2] = file->ReadLong();
	VertexGroups[0] = file->ReadLong();
	VertexGroups[1] = file->ReadLong();
	VertexGroups[2] = file->ReadLong();
	U = file->ReadFloat();
	V = file->ReadFloat();
	SubMesh = 0;
}
