#include "LH3DCamera.h"

#include <string.h> /* For memcpy */

#include "LH3DMem.h"           /* For LH3DMem */
#include "LH3DObject.h"        /* For LH3DObject */
#include "LH3DTech.h"          /* For LH3DTech */
#include "LHMatrix.h"          /* For LHMatrix */
#include "LHMatrixOperators.h" /* For PostScale */

struct LH3DCameraMatrixKey
{
	LHPoint  Position; /* 0x0 */
	LHPoint  Focus;    /* 0xc */
	LHMatrix Matrix;   /* 0x18 */
};

struct LH3DMatrixCamera
{
	long                Size;     /* 0x0 */
	unsigned long       Duration; /* 0x4 */
	unsigned long       NumKeys;  /* 0x8 */
	LH3DCameraMatrixKey Keys[1];  /* 0xc */
};

LH3DCamera* LH3DCamera::Create(void* data, bool with_matrices)
{
	LH3DCamera* camera = (LH3DCamera*)LH3DMem::Alloc(((LH3DCamera*)data)->Size);
	memcpy(camera, data, ((LH3DCamera*)data)->Size);
	return camera;
}

void LH3DCamera::Release()
{
	LH3DMem::Free(this);
}

void __fastcall LH3DCamera::GetCamera(LH3DObject* object, unsigned long time, LHPoint* position, LHPoint* focus)
{
	if (time > Duration)
	{
		time = Duration - 1;
	}
	unsigned long key = (NumKeys - 1) * time / Duration;
	if (key >= NumKeys)
	{
		key -= key / NumKeys * NumKeys;
	}
	float         timePerKey = Duration / (float)(NumKeys - 1);
	unsigned long elapsedKeys = (unsigned long)(time / timePerKey);
	unsigned long keyLength = (unsigned long)timePerKey;
	float         blend = (time - elapsedKeys * keyLength) / timePerKey;
	unsigned long next = key + 1;
	if (next >= NumKeys)
	{
		next = key;
	}
	position->Set(Keys[key].Position);
	*position *= 1.0f - blend;
	LHPoint delta = Keys[next].Position;
	delta *= blend;
	*position += delta;
	focus->Set(Keys[key].Focus);
	*focus *= 1.0f - blend;
	delta.Set(Keys[next].Focus);
	delta *= blend;
	*focus += delta;
	if (object != NULL)
	{
		object->matrix.TransformPoint(*position);
		object->matrix.TransformPoint(*focus);
	}
}

void __fastcall LH3DCamera::GetCamera(LH3DObject* object, unsigned long time, LHPoint* position, LHPoint* focus,
                                      LHMatrix* matrix)
{
	if (time > Duration)
	{
		time = Duration - 1;
	}
	unsigned long key = (NumKeys - 1) * time / Duration;
	if (key >= NumKeys)
	{
		key -= key / NumKeys * NumKeys;
	}
	float         timePerKey = Duration / (float)(NumKeys - 1);
	unsigned long elapsedKeys = (unsigned long)(time / timePerKey);
	unsigned long keyLength = (unsigned long)timePerKey;
	float         blend = (time - elapsedKeys * keyLength) / timePerKey;
	unsigned long next = key + 1;
	if (next >= NumKeys)
	{
		next = key;
	}
	LH3DMatrixCamera* camera = (LH3DMatrixCamera*)this;
	position->x = camera->Keys[key].Position.x;
	position->y = camera->Keys[key].Position.y;
	position->z = camera->Keys[key].Position.z;
	*position *= 1.0f - blend;
	LHPoint delta = camera->Keys[next].Position;
	delta *= blend;
	*position += delta;
	focus->x = camera->Keys[key].Focus.x;
	focus->y = camera->Keys[key].Focus.y;
	focus->z = camera->Keys[key].Focus.z;
	*focus *= 1.0f - blend;
	delta.Set(camera->Keys[next].Focus);
	delta *= blend;
	*focus += delta;
	matrix->Set(camera->Keys[key].Matrix);
	PostScale(*matrix, 1.0f - blend);
	LHMatrix nextMatrix;
	nextMatrix.Set(camera->Keys[next].Matrix);
	PostScale(nextMatrix, blend);
	*matrix += nextMatrix;
	if (object != NULL)
	{
		object->matrix.TransformPoint(*position);
		object->matrix.TransformPoint(*focus);
	}
}

#ifndef VERSION_BW1W100
void __fastcall LH3DCamera::SetTechCamera(LHMatrix* matrix, unsigned long time)
{
	unsigned long key = (NumKeys - 1) * time / Duration;
	if (key >= NumKeys)
	{
		key -= key / NumKeys * NumKeys;
	}
	float         timePerKey = Duration / (float)(NumKeys - 1);
	unsigned long elapsedKeys = (unsigned long)(time / timePerKey);
	unsigned long keyLength = (unsigned long)timePerKey;
	float         blend = (time - elapsedKeys * keyLength) / timePerKey;
	unsigned long next = key + 1;
	if (next > NumKeys)
	{
		next = key;
	}
	LHPoint position = Keys[key].Position;
	position *= 1.0f - blend;
	LHPoint delta = Keys[next].Position;
	delta *= blend;
	position += delta;
	LHPoint focus = Keys[key].Focus;
	focus *= 1.0f - blend;
	delta.Set(Keys[next].Focus);
	delta *= blend;
	focus += delta;
	matrix->TransformPoint(position);
	matrix->TransformPoint(focus);
	LH3DTech::UpdateCamera(position, focus);
}

void __fastcall LH3DCamera::SetTechCamera(LH3DObject* object, unsigned long time)
{
	unsigned long key = (NumKeys - 1) * time / Duration;
	if (key >= NumKeys)
	{
		key -= key / NumKeys * NumKeys;
	}
	float         timePerKey = Duration / (float)(NumKeys - 1);
	unsigned long elapsedKeys = (unsigned long)(time / timePerKey);
	unsigned long keyLength = (unsigned long)timePerKey;
	float         blend = (time - elapsedKeys * keyLength) / timePerKey;
	unsigned long next = key + 1;
	if (next > NumKeys)
	{
		next = key;
	}
	LHPoint position = Keys[key].Position;
	position *= 1.0f - blend;
	LHPoint delta = Keys[next].Position;
	delta *= blend;
	position += delta;
	LHPoint focus = Keys[key].Focus;
	focus *= 1.0f - blend;
	delta.Set(Keys[next].Focus);
	delta *= blend;
	focus += delta;
	object->matrix.TransformPoint(position);
	object->matrix.TransformPoint(focus);
	LH3DTech::UpdateCamera(position, focus);
}
#endif
