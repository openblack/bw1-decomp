#include "CollideBox.h"

#include <math.h> /* For sqrt */

#include "LH3DColor.h"       /* For LH3DColor */
#include "LH3DLine.h"        /* For LH3DLine */
#include "LH3DMesh.h"        /* For LH3DMesh */
#include "LH3DPrimitive.h"   /* For LH3DPrimitive */
#include "LH3DSubMesh.h"     /* For LH3DSubMesh */
#include "LH3DVertexGroup.h" /* For LH3DVertexGroup */

#define COLLIDE_BOX_RING_POINTS 8
#define COLLIDE_BOX_RINGS       3

// A full turn split between the ring points.
#define COLLIDE_BOX_RING_ANGLE_STEP (2.0f * 3.14159265358979323846f / COLLIDE_BOX_RING_POINTS)

#define COLLIDE_BOX_NO_IMPACT_DISTANCE 1e20f
#define COLLIDE_BOX_MIN_HALF_EXTENT    0.0001f
#define COLLIDE_BOX_MIN_RAY_LENGTH_SQ  0.000001f

CollideBox* CollideBox::CreateCollideBoxes(LH3DMesh* mesh)
{
	int count = mesh->flags;
	if (count & LH3D_MESH_FLAGS_HAS_BONES)
	{
		count &= LH3D_MESH_FLAGS_BONE_COUNT_MASK;
	}
	else
	{
		count = 1;
	}
	CollideBox* boxes = new CollideBox[count];
	boxes->UpdateCollideBoxes(mesh);
	return boxes;
}

void CollideBox::UpdateCollideBoxes(LH3DMesh* mesh)
{
	for (int i = 0; i < mesh->SubmeshCount; i++)
	{
		for (int j = 0; j < mesh->submeshes[i]->NumPrimitives; j++)
		{
			LH3DPrimitive* primitive = mesh->submeshes[i]->primitives_[j];
			LH3DVertex*    vertex = primitive->Vertices;
			if (mesh->flags & LH3D_MESH_FLAGS_HAS_BONES)
			{
				for (int g = 0; g < primitive->NumVertexGroups; g++)
				{
					LH3DVertexGroup* group = &primitive->VertexGroups[g];
					CollideBox*      box = &this[group->BoneIndex];
					for (int v = 0; v < group->vertex_count; v++)
					{
						LHPoint position = vertex->position;
						vertex++;
						if (position.x < box->Min.x)
						{
							box->Min.x = position.x;
						}
						if (position.x > box->Max.x)
						{
							box->Max.x = position.x;
						}
						if (position.y < box->Min.y)
						{
							box->Min.y = position.y;
						}
						if (position.y > box->Max.y)
						{
							box->Max.y = position.y;
						}
						if (position.z < box->Min.z)
						{
							box->Min.z = position.z;
						}
						if (position.z > box->Max.z)
						{
							box->Max.z = position.z;
						}
					}
				}
			}
			else
			{
				for (int v = 0; v < primitive->NumVertices; v++)
				{
					LHPoint position = vertex->position;
					vertex++;
					if (position.x < Min.x)
					{
						Min.x = position.x;
					}
					if (position.x > Max.x)
					{
						Max.x = position.x;
					}
					if (position.y < Min.y)
					{
						Min.y = position.y;
					}
					if (position.y > Max.y)
					{
						Max.y = position.y;
					}
					if (position.z < Min.z)
					{
						Min.z = position.z;
					}
					if (position.z > Max.z)
					{
						Max.z = position.z;
					}
				}
			}
		}
	}
}

void CollideBox::InitForCollision(LH3DMesh* mesh, LHMatrix* matrices)
{
	int count = mesh->flags;
	if (count & LH3D_MESH_FLAGS_HAS_BONES)
	{
		count &= LH3D_MESH_FLAGS_BONE_COUNT_MASK;
	}
	else
	{
		count = 1;
	}
	CollideBox* box = this;
	for (int i = 0; i < count; i++, matrices++, box++)
	{
		box->Matrix = *matrices;
		box->InverseMatrix.SetInverse(*matrices);
	}
}

void CollideBox::DrawBoxes(LH3DMesh* mesh)
{
	int count;
	if (mesh->flags & LH3D_MESH_FLAGS_HAS_BONES)
	{
		count = mesh->flags & LH3D_MESH_FLAGS_BONE_COUNT_MASK;
	}
	else
	{
		count = 1;
	}
	for (int i = 0; i < count; i++)
	{
		LH3DColor color(0, 255, 128, 255);
		this[i].DrawBox(&color);
	}
}

void CollideBox::DrawBox(LH3DColor* color)
{
	static LHPoint points[COLLIDE_BOX_RING_POINTS][COLLIDE_BOX_RINGS];
	LHPoint        half = (Max - Min) * 0.5f;
	for (int k = 0; k < COLLIDE_BOX_RING_POINTS; k++)
	{
		float angle = k * COLLIDE_BOX_RING_ANGLE_STEP;
		points[k][0] = LHPoint((float)(sin(angle) + 1.0f) * half.x + Min.x, (float)(cos(angle) + 1.0f) * half.y + Min.y,
		                       half.z + Min.z);
		points[k][1] = LHPoint(half.x + Min.x, (float)(sin(angle) + 1.0f) * half.y + Min.y,
		                       (float)(cos(angle) + 1.0f) * half.z + Min.z);
		points[k][2] = LHPoint((float)(sin(angle) + 1.0f) * half.x + Min.x, half.y + Min.y,
		                       (float)(cos(angle) + 1.0f) * half.z + Min.z);
		Matrix.TransformPoint(points[k][0]);
		Matrix.TransformPoint(points[k][1]);
		Matrix.TransformPoint(points[k][2]);
	}
	if (color == NULL)
	{
		LH3DColor defaultColor(LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX,
		                       LH3D_COLOR_OPAQUE);
		color = &defaultColor;
	}
	for (int l = 0; l < COLLIDE_BOX_RING_POINTS; l++)
	{
		int next = (l + 1) & (COLLIDE_BOX_RING_POINTS - 1);
		LH3DLine::AddLine(points[l][0], points[next][0], color, NULL);
		LH3DLine::AddLine(points[l][1], points[next][1], color, NULL);
		LH3DLine::AddLine(points[l][2], points[next][2], color, NULL);
	}
}

bool32_t CollideBox::GetImpactPoint(LH3DMesh* mesh, LHPoint& start, LHPoint& direction, LHPoint& impact,
                                    LHPoint& normal)
{
	int count;
	if (mesh->flags & LH3D_MESH_FLAGS_HAS_BONES)
	{
		count = mesh->flags & LH3D_MESH_FLAGS_BONE_COUNT_MASK;
	}
	else
	{
		count = 1;
	}
	for (int i = 0; i < count; i++)
	{
		if (this[i].GetImpactPoint(start, direction, impact, normal))
		{
			return true;
		}
	}
	return false;
}

bool32_t CollideBox::GetNearestImpactPoint(LH3DMesh* mesh, LHPoint& start, LHPoint& direction, LHPoint& impact,
                                           LHPoint& normal)
{
	int count;
	if (mesh->flags & LH3D_MESH_FLAGS_HAS_BONES)
	{
		count = mesh->flags & LH3D_MESH_FLAGS_BONE_COUNT_MASK;
	}
	else
	{
		count = 1;
	}
	LHPoint nearestImpact = start;
	LHPoint nearestNormal;
	float   nearest = COLLIDE_BOX_NO_IMPACT_DISTANCE;
	for (int i = 0; i < count; i++)
	{
		float distance;
		if (this[i].GetNearestImpactPoint(start, direction, impact, normal, distance) && distance < nearest)
		{
			nearest = distance;
			nearestImpact = impact;
			nearestNormal = normal;
		}
	}
	impact = nearestImpact;
	normal = nearestNormal;
	return nearest != COLLIDE_BOX_NO_IMPACT_DISTANCE;
}

bool32_t CollideBox::GetImpactPoint(LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal)
{
	LHPoint half((Max.x - Min.x) * 0.5f, (Max.y - Min.y) * 0.5f, (Max.z - Min.z) * 0.5f);
	LHPoint local;
	if (half.x > COLLIDE_BOX_MIN_HALF_EXTENT && half.y > COLLIDE_BOX_MIN_HALF_EXTENT &&
	    half.z > COLLIDE_BOX_MIN_HALF_EXTENT)
	{
		local = InverseMatrix * start;
		if (local.x > Min.x && local.x < Max.x && local.y > Min.y && local.y < Max.y && local.z > Min.z &&
		    local.z < Max.z)
		{
			LHPoint offset((local.x - Min.x) / half.x - 1.0f, (local.y - Min.y) / half.y - 1.0f,
			               (local.z - Min.z) / half.z - 1.0f);
			float   c = offset * offset;
			if (c < 1.0f)
			{
				LHPoint rotated(direction.x * InverseMatrix.m[0] + direction.y * InverseMatrix.m[3] +
				                    direction.z * InverseMatrix.m[6],
				                direction.x * InverseMatrix.m[1] + direction.y * InverseMatrix.m[4] +
				                    direction.z * InverseMatrix.m[7],
				                direction.x * InverseMatrix.m[2] + direction.y * InverseMatrix.m[5] +
				                    direction.z * InverseMatrix.m[8]);
				LHPoint ray(rotated.x / half.x, rotated.y / half.y, rotated.z / half.z);
				float   a = ray * ray;
				float   b = 2.0f * (ray * offset);
				float   discriminant = b * b - 4.0f * a * (c - 1.0f);
				if (discriminant >= 0.0f && a >= COLLIDE_BOX_MIN_RAY_LENGTH_SQ)
				{
					float   t = (-b - sqrt(discriminant)) / (2.0f * a);
					LHPoint hit = offset + ray * t;
					impact = LHPoint((hit.x + 1.0f) * half.x + Min.x, (hit.y + 1.0f) * half.y + Min.y,
					                 (hit.z + 1.0f) * half.z + Min.z);
					normal = LHPoint(hit.x * half.x, hit.y * half.y, hit.z * half.z);
					Matrix.TransformPoint(impact);
					Matrix.TransformVector(normal);
					normal.FastNormalize();
					return true;
				}
			}
		}
	}
	return false;
}

bool32_t CollideBox::GetNearestImpactPoint(LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal,
                                           float& distance)
{
	LHPoint half = (Max - Min) * 0.5f;
	LHPoint local;
	if (half.x > COLLIDE_BOX_MIN_HALF_EXTENT && half.y > COLLIDE_BOX_MIN_HALF_EXTENT &&
	    half.z > COLLIDE_BOX_MIN_HALF_EXTENT)
	{
		local = InverseMatrix * start;
		LHPoint offset((local.x - Min.x) / half.x - 1.0f, (local.y - Min.y) / half.y - 1.0f,
		               (local.z - Min.z) / half.z - 1.0f);
		LHPoint rotated(
			direction.x * InverseMatrix.m[0] + direction.y * InverseMatrix.m[3] + direction.z * InverseMatrix.m[6],
			direction.x * InverseMatrix.m[1] + direction.y * InverseMatrix.m[4] + direction.z * InverseMatrix.m[7],
			direction.x * InverseMatrix.m[2] + direction.y * InverseMatrix.m[5] + direction.z * InverseMatrix.m[8]);
		LHPoint ray(rotated.x / half.x, rotated.y / half.y, rotated.z / half.z);
		float   a = ray * ray;
		if (a > COLLIDE_BOX_MIN_HALF_EXTENT)
		{
			float b = 2.0f * (ray * offset);
			float discriminant = b * b - 4.0f * a * (offset * offset - 1.0f);
			if (discriminant >= 0.0f)
			{
				float   root = sqrt(discriminant);
				float   t = (-b - root) / (2.0f * a);
				LHPoint hit = offset + ray * t;
				impact = LHPoint((hit.x + 1.0f) * half.x + Min.x, (hit.y + 1.0f) * half.y + Min.y,
				                 (hit.z + 1.0f) * half.z + Min.z);
				normal = LHPoint(hit.x * half.x, hit.y * half.y, hit.z * half.z);
				Matrix.TransformPoint(impact);
				Matrix.TransformVector(normal);
				normal.FastNormalize();
				distance = t;
				return true;
			}
		}
	}
	return false;
}
