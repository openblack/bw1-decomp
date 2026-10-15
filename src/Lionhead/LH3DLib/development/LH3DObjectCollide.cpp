#include "LH3DObjectCollide.h"

#include <stdlib.h> /* For free, malloc */
#include <string.h> /* For memcpy, memset */

#include "LH3DMath.h"                  /* For InverseSquareRoot */
#include "LH3DMem.h"                   /* For LH3DMem */
#include "LH3DMesh.h"                  /* For struct LH3DMesh */
#include "LH3DPrimitive.h"             /* For struct LH3DPrimitive */
#include "LH3DStaticMorphableObject.h" /* For class LH3DStaticMorphableObject */
#include "LH3DSubMesh.h"               /* For struct LH3DSubMesh */
#include "LH3DVertex.h"                /* For struct LH3DVertex */

LH3DObjectCollide* LH3DObjectCollide::Create(LH3DObject* object)
{
	if (object->IsAnimated())
	{
		return NULL;
	}

	LH3DMesh* mesh = object->GetMesh();
	long      count = 0;
	for (int i = 0; i < mesh->SubmeshCount; i++)
	{
		count += mesh->submeshes[i]->GetTriangleCount();
	}

	LH3DObjectCollide* collide = (LH3DObjectCollide*)LH3DMem::Alloc(sizeof(LH3DObjectCollide));
	memset(collide, 0, sizeof(LH3DObjectCollide));
	collide->NumTriangles = count;
	collide->Triangles = (Triangle*)LH3DMem::Alloc(count * sizeof(Triangle));
	memset(collide->Triangles, 0, count * sizeof(Triangle));

	int      index = 0;
	int      firstVertex = 0;
	bool32_t initialised = false;
	for (int s = 0; s < object->GetMesh()->SubmeshCount; s++)
	{
		LH3DSubMesh* submesh = object->GetMesh()->submeshes[s];
		for (int p = 0; p < submesh->NumPrimitives; p++)
		{
			LH3DPrimitive* primitive = submesh->primitives_[p];
			for (int t = 0; t < primitive->NumTriangles; t++)
			{
				LH3DTriangle* triangle = &primitive->Triangles[t];
				LHPoint       a = primitive->GetListVertex()[triangle->GetA()].position;
				LHPoint       b = primitive->GetListVertex()[triangle->GetB()].position;
				LHPoint       c = primitive->GetListVertex()[triangle->GetC()].position;

				if (object->IsMorphWithLand())
				{
					float* altitudes = ((LH3DStaticMorphableObject*)object)->LandAltitudes;
					a.y += altitudes[triangle->GetA() + firstVertex];
					b.y += altitudes[triangle->GetB() + firstVertex];
					c.y += altitudes[triangle->GetC() + firstVertex];
				}

				object->matrix.TransformPoint(a);
				object->matrix.TransformPoint(b);
				object->matrix.TransformPoint(c);

				if (!initialised)
				{
					collide->MinX = collide->MaxX = a.x;
					collide->MinZ = collide->MaxZ = a.z;
					initialised = true;
				}
				else
				{
					if (collide->MinX > a.x)
						collide->MinX = a.x;
					if (collide->MaxX < a.x)
						collide->MaxX = a.x;
					if (collide->MinZ > a.z)
						collide->MinZ = a.z;
					if (collide->MaxZ < a.z)
						collide->MaxZ = a.z;
				}
				if (collide->MinX > b.x)
					collide->MinX = b.x;
				if (collide->MaxX < b.x)
					collide->MaxX = b.x;
				if (collide->MinZ > b.z)
					collide->MinZ = b.z;
				if (collide->MaxZ < b.z)
					collide->MaxZ = b.z;
				if (collide->MinX > c.x)
					collide->MinX = c.x;
				if (collide->MaxX < c.x)
					collide->MaxX = c.x;
				if (collide->MinZ > c.z)
					collide->MinZ = c.z;
				if (collide->MaxZ < c.z)
					collide->MaxZ = c.z;

				collide->Triangles[index].Init(&a, &b, &c);
				index++;
			}
			firstVertex += primitive->NumVertices;
		}
	}

	collide->Sorting();
	return collide;
}

long LH3DSubMesh::GetTriangleCount()
{
	long count = 0;
	for (int i = 0; i < NumPrimitives; i++)
	{
		count += primitives_[i]->NumTriangles;
	}
	return count;
}

void LH3DObjectCollide::Release()
{
	LH3DMem::Free(this);
}

void LH3DObjectCollide::Triangle::Init(LHPoint* a, LHPoint* b, LHPoint* c)
{
	LHPoint ab = LHPoint(b);
	LHPoint ac = LHPoint(c);
	ab -= LHPoint(a);
	ac -= LHPoint(a);
	Normal.CrossProduct(ab, ac);
	Normal *= InverseSquareRoot(Normal.GetNorm());
	Distance = -Normal.DotProduct(LHPoint(a));
	Points[0] = *a;
	Points[1] = *b;
	Points[2] = *c;
	Points[3] = *a;
	Active = true;
}

float LH3DObjectCollide::Triangle::FUNC(long edge, LHPoint* point)
{
	return (Points[edge + 1].z - point->z) * (Points[edge].x - point->x) -
	       (Points[edge + 1].x - point->x) * (Points[edge].z - point->z);
}

bool32_t LH3DObjectCollide::Triangle::Inside(LHPoint* point)
{
	if (FUNC(0, point) > 0.0f)
	{
		if (FUNC(1, point) >= 0.0f && FUNC(2, point) >= 0.0f)
		{
			return true;
		}
	}
	else
	{
		if (FUNC(1, point) <= 0.0f && FUNC(2, point) <= 0.0f)
		{
			return true;
		}
	}
	return false;
}

bool32_t LH3DObjectCollide::SetAltitude(LHPoint* point)
{
	if (point->x >= MinX && point->x <= MaxX && point->z >= MinZ && point->z <= MaxZ)
	{
		Triangle* triangle = Triangles;
		for (int i = 0; i < NumTriangles; triangle++, i++)
		{
			if (triangle->Active && triangle->Inside(point))
			{
				point->y = triangle->GetAltitude(point);
				return true;
			}
		}
	}
	return false;
}

float LH3DObjectCollide::Triangle::GetAltitude(LHPoint* point)
{
	return -(Normal.x * point->x + Normal.z * point->z + Distance) / Normal.y;
}

int LH3DObjectCollide::GetIndexWithThisValue(float* value)
{
	float highest = -10000.0f;
	int   index = -1;
	for (int i = 0; i < NumTriangles; i++)
	{
		if (Triangles[i].Active)
		{
			float sum = Triangles[i].GetValue();
			if (sum == *value)
			{
				Triangles[i].Active = false;
				return i;
			}
			if (sum > highest)
			{
				highest = sum;
				index = i;
			}
		}
	}
	*value = highest;
	Triangles[index].Active = false;
	return index;
}

void LH3DObjectCollide::Sorting()
{
	int       size = NumTriangles * sizeof(Triangle);
	Triangle* sorted = (Triangle*)malloc(size);
	memset(sorted, 0, size);

	float value = Triangles[0].GetValue();
	for (int i = 0; i < NumTriangles; i++)
	{
		Triangles[i].Active = true;
		if (Triangles[i].GetValue() > value)
			value = Triangles[i].GetValue();
	}

	Triangle* next = sorted;
	bool      done = false;
	while (!done)
	{
		int index = GetIndexWithThisValue(&value);
		if (index == -1)
		{
			done = true;
		}
		else
		{
			*next++ = Triangles[index];
		}
	}

	memcpy(Triangles, sorted, NumTriangles * sizeof(Triangle));
	free(sorted);
	for (int j = 0; j < NumTriangles; j++)
	{
		Triangles[j].Active = true;
	}
}
