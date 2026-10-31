#include "LH3DAnim.h"

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>       /* For LHFileLength, LHLoadData */
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h> /* For LHReleasedFile */
#include <Lionhead/LHFile/ver3.0/LHSegment.h>      /* For LHSegment */

#include "LH3DMem.h"     /* For LH3DMem */
#include "LH3DMesh.h"    /* For LH3DMesh */
#include "LH3DSubMesh.h" /* For LH3DSubMesh, LH3DBone */
#include "LH3DTech.h"    /* For LH3DTech, Report3D__FPCce */
#include "LHMatrix.h"    /* For LHMatrix */

#define LH3D_ANIM_CACHE_FILE_NAME   "Data\\AllAnims.anm"
#define LH3D_ANIM_PACK_SEGMENT_NAME "Body"
#define LH3D_ANIM_SEGMENT_NAME      "Julien%d"

#define LH3D_ANIM_SEGMENT_INDEX(anim) (((uint16_t*)&(anim)->Flags)[1])

struct LH3DAnim::PackHeader
{
	struct Entry
	{
		uint32_t Offset; /* 0x0 */
		long     Size;
	};

	uint32_t field_0x0;
	long     Count;
	Entry    Entries[1]; /* 0x8 */

	// BW1W120 inlined BW1M119 01128120 (LHCombined Release)
	long GetCount() { return Count; }
};

// BW1W120 0083a140 BW1M119 0111ca90 (LHCombined Release)
static void AddUpRecursive(LHMatrix* matrices, LH3DSubMesh* sub_mesh, long bone, LHPoint& point, long* count);

LH3DAnimPack*  LH3DAnim::g_pack;
long           LH3DAnim::g_total_cached_memories;
LHReleasedFile g_cached_anim_file(LH3D_ANIM_CACHE_FILE_NAME);

LH3DAnim* LH3DAnim::Load(char* filename)
{
	uint32_t length;
	if (LHFileLength(filename, &length) != LH_FILE_RESULT_OK)
	{
		return NULL;
	}
	LH3DAnim* anim = (LH3DAnim*)LH3DMem::Alloc(length);
	if (anim == NULL)
	{
		return NULL;
	}
	if (LHLoadData(filename, anim, length, NULL) != LH_FILE_RESULT_OK)
	{
		LH3DMem::Free(anim);
		return NULL;
	}
	anim->SetPtrs();
	return anim;
}

void LH3DAnim::Release()
{
	LH3DMem::Free(this);
}

float LH3DAnim::SetTransform(LHMatrix* bones, LH3DMesh* mesh, long time, LHMatrix& transform)
{
	float    maxHeight = 0.0f;
	uint32_t cyclic = IsCyclic();
	long     duration;
	if (cyclic)
	{
		duration = Duration;
	}
	else
	{
		duration = Duration * NumFrames / (NumFrames - 1);
	}
	long frame = NumFrames * time / duration;
	if (frame >= NumFrames)
	{
		frame = 0;
		time = 0;
	}
	long nextFrame = frame + 1;
	if (nextFrame == NumFrames)
	{
		if (cyclic)
		{
			nextFrame = 0;
		}
		else
		{
			nextFrame = NumFrames - 1;
		}
	}
	float     blend = time * ((float)NumFrames / duration) - frame;
	LHMatrix* matrix = bones;
	for (int i = 0; i < SubMeshCount; i++)
	{
		LHMatrix*             subMeshBones = matrix;
		LH3DAnimSubMeshFrame* from = GetListPtrFrames()[frame]->SubMeshes[i];
		long                  count = from->NumMatrices;
		LHMatrix*             fromMatrices = from->Matrices;
		LHMatrix*             toMatrices = GetListPtrFrames()[nextFrame]->SubMeshes[i]->Matrices;
		LH3DBone*             bone = mesh->submeshes[i]->Bones;
		for (long j = 0; j < count; j++)
		{
			matrix->SetBlend(*fromMatrices, *toMatrices, blend);
			if (bone->Parent != LH3D_BONE_NO_PARENT)
			{
				matrix->PostMultiply(subMeshBones[bone->Parent]);
			}
			else
			{
				matrix->PostMultiply(transform);
			}
			if (matrix->m[10] > maxHeight)
			{
				maxHeight = matrix->m[10];
			}
			matrix++;
			fromMatrices++;
			toMatrices++;
			bone++;
		}
	}
	return maxHeight;
}

void LH3DAnim::CombineTransform(LHMatrix* bones, long time, float weight, bool32_t first)
{
	long duration;
	if (IsCyclic())
	{
		duration = Duration;
	}
	else
	{
		duration = Duration * NumFrames / (NumFrames - 1);
	}
	long frame = NumFrames * time / duration;
	if (frame >= NumFrames)
	{
		frame = 0;
		time = 0;
	}
	long nextFrame = frame + 1;
	if (nextFrame == NumFrames)
	{
		nextFrame = 0;
	}
	float     blend = time * ((float)NumFrames / duration) - frame;
	LHMatrix* matrix = bones;
	for (int i = 0; i < SubMeshCount; i++)
	{
		LH3DAnimSubMeshFrame* from = GetListPtrFrames()[frame]->SubMeshes[i];
		LHMatrix*             fromMatrices = from->Matrices;
		long                  count = from->NumMatrices;
		LHMatrix*             toMatrices = GetListPtrFrames()[nextFrame]->SubMeshes[i]->Matrices;
		for (long j = 0; j < count; j++)
		{
			if (first)
			{
				matrix->m[0] = ((toMatrices->m[0] - fromMatrices->m[0]) * blend + fromMatrices->m[0]) * weight;
				matrix->m[1] = ((toMatrices->m[1] - fromMatrices->m[1]) * blend + fromMatrices->m[1]) * weight;
				matrix->m[2] = ((toMatrices->m[2] - fromMatrices->m[2]) * blend + fromMatrices->m[2]) * weight;
				matrix->m[3] = ((toMatrices->m[3] - fromMatrices->m[3]) * blend + fromMatrices->m[3]) * weight;
				matrix->m[4] = ((toMatrices->m[4] - fromMatrices->m[4]) * blend + fromMatrices->m[4]) * weight;
				matrix->m[5] = ((toMatrices->m[5] - fromMatrices->m[5]) * blend + fromMatrices->m[5]) * weight;
				matrix->m[6] = ((toMatrices->m[6] - fromMatrices->m[6]) * blend + fromMatrices->m[6]) * weight;
				matrix->m[7] = ((toMatrices->m[7] - fromMatrices->m[7]) * blend + fromMatrices->m[7]) * weight;
				matrix->m[8] = ((toMatrices->m[8] - fromMatrices->m[8]) * blend + fromMatrices->m[8]) * weight;
				matrix->m[9] = ((toMatrices->m[9] - fromMatrices->m[9]) * blend + fromMatrices->m[9]) * weight;
				matrix->m[10] = ((toMatrices->m[10] - fromMatrices->m[10]) * blend + fromMatrices->m[10]) * weight;
				matrix->m[11] = ((toMatrices->m[11] - fromMatrices->m[11]) * blend + fromMatrices->m[11]) * weight;
			}
			else
			{
				LHMatrix m;
				m.m[0] = ((toMatrices->m[0] - fromMatrices->m[0]) * blend + fromMatrices->m[0]) * weight;
				m.m[1] = ((toMatrices->m[1] - fromMatrices->m[1]) * blend + fromMatrices->m[1]) * weight;
				m.m[2] = ((toMatrices->m[2] - fromMatrices->m[2]) * blend + fromMatrices->m[2]) * weight;
				m.m[3] = ((toMatrices->m[3] - fromMatrices->m[3]) * blend + fromMatrices->m[3]) * weight;
				m.m[4] = ((toMatrices->m[4] - fromMatrices->m[4]) * blend + fromMatrices->m[4]) * weight;
				m.m[5] = ((toMatrices->m[5] - fromMatrices->m[5]) * blend + fromMatrices->m[5]) * weight;
				m.m[6] = ((toMatrices->m[6] - fromMatrices->m[6]) * blend + fromMatrices->m[6]) * weight;
				m.m[7] = ((toMatrices->m[7] - fromMatrices->m[7]) * blend + fromMatrices->m[7]) * weight;
				m.m[8] = ((toMatrices->m[8] - fromMatrices->m[8]) * blend + fromMatrices->m[8]) * weight;
				m.m[9] = ((toMatrices->m[9] - fromMatrices->m[9]) * blend + fromMatrices->m[9]) * weight;
				m.m[10] = ((toMatrices->m[10] - fromMatrices->m[10]) * blend + fromMatrices->m[10]) * weight;
				m.m[11] = ((toMatrices->m[11] - fromMatrices->m[11]) * blend + fromMatrices->m[11]) * weight;
				matrix->m[0] += m.m[0];
				matrix->m[1] += m.m[1];
				matrix->m[2] += m.m[2];
				matrix->m[3] += m.m[3];
				matrix->m[4] += m.m[4];
				matrix->m[5] += m.m[5];
				matrix->m[6] += m.m[6];
				matrix->m[7] += m.m[7];
				matrix->m[8] += m.m[8];
				matrix->m[9] += m.m[9];
				matrix->m[10] += m.m[10];
				matrix->m[11] += m.m[11];
			}
			fromMatrices++;
			toMatrices++;
			matrix++;
		}
	}
}

void LH3DAnim::FinishTransform(LHMatrix* bones, LH3DMesh* mesh, LHMatrix& transform)
{
	LHMatrix* matrix = bones;
	for (int i = 0; i < mesh->SubmeshCount; i++)
	{
		LH3DSubMesh* subMesh = mesh->submeshes[i];
		LHMatrix*    subMeshBones = matrix;
		LH3DBone*    bone = subMesh->Bones;
		long         count = subMesh->NumBones;
		for (long j = 0; j < count; j++)
		{
			if (bone->Parent != LH3D_BONE_NO_PARENT)
			{
				matrix->PostMultiply(subMeshBones[subMesh->Bones[j].Parent]);
			}
			else
			{
				matrix->PostMultiply(transform);
			}
			matrix++;
			bone++;
		}
	}
}

LHMatrix LH3DAnim::FinishTransformForBone(LHMatrix* bones, LH3DMesh* mesh, LHMatrix& transform, int bone)
{
	LHMatrix  result = bones[bone];
	LH3DBone* boneData = mesh->submeshes[0]->Bones;
	do
	{
		bone = boneData[bone].Parent;
		if (bone != LH3D_BONE_NO_PARENT)
		{
			result.PostMultiply(bones[bone]);
		}
		else
		{
			result.PostMultiply(transform);
		}
	} while (bone != LH3D_BONE_NO_PARENT);
	return result;
}

void LH3DAnim::UnFinishTransform(LHMatrix* bones, LH3DMesh* mesh, LHMatrix& transform)
{
	LHMatrix* subMeshBones = bones;
	for (int i = 0; i < mesh->SubmeshCount; i++)
	{
		LH3DSubMesh* subMesh = mesh->submeshes[i];
		long         count = subMesh->NumBones;
		for (long j = count - 1; j >= 0; j--)
		{
			LHMatrix  inverse;
			LHMatrix* matrix = &bones[j];
			if (subMesh->Bones[j].Parent != LH3D_BONE_NO_PARENT)
			{
				inverse.SetInverse(subMeshBones[subMesh->Bones[j].Parent]);
				matrix->PostMultiply(inverse);
			}
			else
			{
				inverse.SetInverse(transform);
				matrix->PostMultiply(inverse);
			}
		}
		subMeshBones += count;
	}
}

static void AddUpRecursive(LHMatrix* matrices, LH3DSubMesh* sub_mesh, long bone, LHPoint& point, long* count)
{
	LH3DBone* boneData = &sub_mesh->Bones[bone];
	if (boneData->FirstChild == LH3D_BONE_NONE)
	{
		LHMatrix matrix;
		matrix.Set(matrices[bone]);
		float x = matrix.GetPos().x;
		float y = matrix.GetPos().y;
		float z = matrix.GetPos().z;
		point.x += x;
		point.y += y;
		point.z += z;
		(*count)++;
	}
	else
	{
		AddUpRecursive(matrices, sub_mesh, boneData->FirstChild, point, count);
	}
	if (boneData->NextSibling != LH3D_BONE_NONE)
	{
		AddUpRecursive(matrices, sub_mesh, boneData->NextSibling, point, count);
	}
}

void LH3DAnim::GetGraspPoint(LHMatrix* matrices, LH3DMesh* mesh, LHPoint& point, long bone)
{
	LH3DSubMesh* subMesh = mesh->submeshes[0];
	point.SetNull();
	long count = 0;
	AddUpRecursive(matrices, subMesh, bone, point, &count);
	point *= 1.0f / count;
}

float LH3DAnim::SetTransform(LHMatrix* bones, LH3DMesh* mesh, LHMatrix& transform)
{
	float     minHeight = 0.0f;
	float     maxHeight = 0.0f;
	LHMatrix* matrix = bones;
	for (int i = 0; i < mesh->SubmeshCount; i++)
	{
		LH3DSubMesh* subMesh = mesh->submeshes[i];
		LHMatrix*    subMeshBones = matrix;
		LH3DBone*    bone = subMesh->Bones;
		long         count = subMesh->NumBones;
		for (long j = 0; j < count; j++)
		{
			*matrix = bone->Matrix;
			if (bone->Parent != LH3D_BONE_NO_PARENT)
			{
				matrix->PostMultiply(subMeshBones[subMesh->Bones[j].Parent]);
			}
			else
			{
				matrix->PostMultiply(transform);
			}
			if (matrix->m[10] > maxHeight)
			{
				maxHeight = matrix->m[10];
			}
			if (matrix->m[10] < minHeight)
			{
				minHeight = matrix->m[10];
			}
			matrix++;
			bone++;
		}
	}
	return maxHeight - minHeight;
}

void LH3DAnim::UnScale(LH3DMesh* mesh)
{
	if (!(mesh->flags & LH3D_MESH_FLAGS_HAS_BONES))
	{
		return;
	}
	for (int i = 0; i < NumFrames; i++)
	{
		LH3DBone*             bones = mesh->submeshes[0]->Bones;
		LH3DAnimSubMeshFrame* subMesh = GetListPtrFrames()[i]->SubMeshes[0];
		int                   j;
		for (j = 0; j < subMesh->NumMatrices; j++)
		{
			LHMatrix* matrix = &LH3DMesh::g_current_list_matrix[j];
			*matrix = subMesh->Matrices[j];
			if (bones[j].Parent != LH3D_BONE_NO_PARENT)
			{
				matrix->PostMultiply(LH3DMesh::g_current_list_matrix[bones[j].Parent]);
			}
		}
		for (j = 0; j < subMesh->NumMatrices; j++)
		{
			LH3DMesh::g_current_list_matrix[j].NormaliseMatrixOnly();
		}
		for (j = 0; j < subMesh->NumMatrices; j++)
		{
			LHMatrix* matrix = &subMesh->Matrices[j];
			*matrix = LH3DMesh::g_current_list_matrix[j];
			if (bones[j].Parent != LH3D_BONE_NO_PARENT)
			{
				LHMatrix parent = LH3DMesh::g_current_list_matrix[bones[j].Parent];
				LHMatrix inverse;
				inverse.SetInverse(parent);
				matrix->PostMultiply(inverse);
			}
		}
	}
}

void LH3DAnim::UnScale(long* parents, long count)
{
	for (int i = 0; i < NumFrames; i++)
	{
		LH3DAnimSubMeshFrame* subMesh = GetListPtrFrames()[i]->SubMeshes[0];
		int                   j;
		for (j = 0; j < subMesh->NumMatrices; j++)
		{
			LHMatrix* matrix = &LH3DMesh::g_current_list_matrix[j];
			*matrix = subMesh->Matrices[j];
			if (parents[j] != LH3D_BONE_NO_PARENT)
			{
				matrix->PostMultiply(LH3DMesh::g_current_list_matrix[parents[j]]);
			}
		}
		for (j = 0; j < subMesh->NumMatrices; j++)
		{
			LH3DMesh::g_current_list_matrix[j].NormaliseMatrixOnly();
		}
		for (j = 0; j < subMesh->NumMatrices; j++)
		{
			LHMatrix* matrix = &subMesh->Matrices[j];
			*matrix = LH3DMesh::g_current_list_matrix[j];
			if (parents[j] != LH3D_BONE_NO_PARENT)
			{
				LHMatrix parent = LH3DMesh::g_current_list_matrix[parents[j]];
				LHMatrix inverse;
				inverse.SetInverse(parent);
				matrix->PostMultiply(inverse);
			}
		}
	}
}

void LH3DAnim::SetPtrs()
{
	SetListPtrFrame((LH3DAnimFrame**)((uint8_t*)this + (uint32_t)ListPtrFrames));
	for (int i = 0; i < NumFrames; i++)
	{
		GetListPtrFrames()[i] = (LH3DAnimFrame*)((uint8_t*)this + (uint32_t)GetListPtrFrames()[i]);
		LH3DAnimFrame* frame = GetListPtrFrames()[i];
		frame->SubMeshes = (LH3DAnimSubMeshFrame**)((uint8_t*)this + (uint32_t)frame->SubMeshes);
		for (int j = 0; j < SubMeshCount; j++)
		{
			frame->SubMeshes[j] = (LH3DAnimSubMeshFrame*)((uint8_t*)this + (uint32_t)frame->SubMeshes[j]);
			frame->SubMeshes[j]->Matrices = (LHMatrix*)((uint8_t*)this + (uint32_t)frame->SubMeshes[j]->Matrices);
		}
	}
	float distance = Distance;
	if (fabs(distance) < LH3D_ANIM_MIN_DISTANCE)
	{
		Flags |= LH3D_ANIM_FLAG_TIME_BASED;
	}
}

LH3DAnimFrame** LH3DAnim::GetListPtrFrames()
{
	if (Flags & LH3D_ANIM_FLAG_CACHED)
	{
		if (ListPtrFrames == NULL)
		{
			LoadFromCache();
		}
		LastUsedTime = LH3DTech::g_current_time;
	}
	return ListPtrFrames;
}

void LH3DAnim::CreateCachedFile(void* data, char* filename)
{
	LHReleasedFile file(filename);
	file.Open(LH_FILE_MODE_READ_WRITE);
	PackHeader* header = (PackHeader*)data;
	long        size =
		header->GetCount() * (sizeof(PackHeader::Entry) + LH3D_ANIM_CACHED_HEADER_SIZE) + offsetof(PackHeader, Entries);
	uint8_t* buffer = (uint8_t*)malloc(size);
	memset(buffer, 0, size);
	memcpy(buffer, data, header->GetCount() * sizeof(PackHeader::Entry) + offsetof(PackHeader, Entries));
	PackHeader* cachedHeader = (PackHeader*)buffer;
	uint8_t*    cachedAnim = buffer + header->GetCount() * sizeof(PackHeader::Entry) + offsetof(PackHeader, Entries);
	LHSegment   segment;
	for (int i = 0; i < header->GetCount(); i++)
	{
		uint8_t* anim = (uint8_t*)data + header->Entries[i].Offset;
		memcpy(cachedAnim, anim, LH3D_ANIM_CACHED_HEADER_SIZE);
		cachedHeader->Entries[i].Offset = cachedAnim - buffer;
		cachedAnim += LH3D_ANIM_CACHED_HEADER_SIZE;
		anim += LH3D_ANIM_CACHED_HEADER_SIZE;
		char name[32];
		sprintf(name, LH3D_ANIM_SEGMENT_NAME, i);
		strcpy((char*)segment.name, name);
		segment.size = header->Entries[i].Size - LH3D_ANIM_CACHED_HEADER_SIZE;
		segment.buffer = anim;
		Report3D__FPCce("> %s\n", name);
		file.WriteSegment(&segment);
	}
	strcpy((char*)segment.name, LH3D_ANIM_PACK_SEGMENT_NAME);
	segment.size = size;
	segment.buffer = buffer;
	file.WriteSegment(&segment);
	file.Close();
	free(buffer);
}

void LH3DAnim::LoadFromCache()
{
	LHSegment segment;
	char      name[32];
	sprintf(name, LH3D_ANIM_SEGMENT_NAME, LH3D_ANIM_SEGMENT_INDEX(this));
	if (g_cached_anim_file.GetSegment(name, &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		char error[256];
		sprintf(error, "Cannot load segment %s", name);
		return;
	}
	LH3DAnimFrame** frames = (LH3DAnimFrame**)LH3DMem::Alloc(segment.size);
	memcpy(frames, segment.buffer, segment.size);
	CachedSize = segment.size;
	g_total_cached_memories += segment.size;
	ProcessCache();
	SetListPtrFrame(frames);
	UpdatePartialPtr();
	g_cached_anim_file.FreeLastSeg();
}

void LH3DAnim::CreatePack()
{
	if (g_pack != NULL)
	{
		Report3D__FPCce("CreatePack Anim: ERROR already created.\n");
		return;
	}
	g_cached_anim_file.Open(LH_FILE_MODE_READ_ONLY);
	LHSegment segment;
	if (g_cached_anim_file.GetSegment(LH3D_ANIM_PACK_SEGMENT_NAME, &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		return;
	}
	PackHeader* header = (PackHeader*)segment.buffer;
	g_pack = (LH3DAnimPack*)LH3DMem::Alloc(segment.size);
	g_pack->AnimCount = header->GetCount();
	for (int i = 0; i < header->Count; i++)
	{
		uint8_t*  data = segment.buffer + header->Entries[i].Offset;
		LH3DAnim* anim = (LH3DAnim*)LH3DMem::Alloc(sizeof(LH3DAnim));
		g_pack->Anims[i] = anim;
		memcpy(anim, data, LH3D_ANIM_CACHED_HEADER_SIZE);
		anim->SetListPtrFrame(NULL);
		LH3D_ANIM_SEGMENT_INDEX(anim) = i;
		anim->Flags |= LH3D_ANIM_FLAG_CACHED;
		anim->LastUsedTime = 0;
		float distance = anim->Distance;
		if (fabs(distance) < LH3D_ANIM_MIN_DISTANCE)
		{
			anim->Flags |= LH3D_ANIM_FLAG_TIME_BASED;
		}
		anim->CachedSize = 0;
		anim->IndexInCache = i;
	}
}

void LH3DAnim::ProcessCache()
{
	if (g_total_cached_memories > LH3D_ANIM_MAX_CACHED_MEMORIES)
	{
		long oldest = LH3DTech::g_current_time - LH3D_ANIM_CACHE_TIMEOUT;
		for (int i = 0; i < g_pack->AnimCount; i++)
		{
			LH3DAnim* anim = g_pack->Anims[i];
			if (anim->ListPtrFrames != NULL && anim->LastUsedTime < oldest)
			{
				LH3DMem::Free(anim->ListPtrFrames);
				anim->SetListPtrFrame(NULL);
				g_total_cached_memories -= anim->CachedSize;
			}
		}
	}
}

void LH3DAnim::SetListPtrFrame(LH3DAnimFrame** frames)
{
	ListPtrFrames = frames;
}

void LH3DAnim::UpdatePartialPtr()
{
	for (int i = 0; i < NumFrames; i++)
	{
		uint8_t* base = (uint8_t*)GetListPtrFrames() - LH3D_ANIM_CACHED_HEADER_SIZE;
		GetListPtrFrames()[i] = (LH3DAnimFrame*)(base + (uint32_t)GetListPtrFrames()[i]);
		LH3DAnimFrame* frame = GetListPtrFrames()[i];
		frame->SubMeshes = (LH3DAnimSubMeshFrame**)(base + (uint32_t)frame->SubMeshes);
		for (int j = 0; j < SubMeshCount; j++)
		{
			frame->SubMeshes[j] = (LH3DAnimSubMeshFrame*)(base + (uint32_t)frame->SubMeshes[j]);
			frame->SubMeshes[j]->Matrices = (LHMatrix*)(base + (uint32_t)frame->SubMeshes[j]->Matrices);
		}
	}
}

void SetTransformSpecial(LH3DAnim* anim, LHMatrix* bones, long time, LHMatrix& transform)
{
	long duration;
	if (anim->IsCyclic())
	{
		duration = anim->Duration;
	}
	else
	{
		duration = anim->Duration * anim->NumFrames / (anim->NumFrames - 1);
	}
	long frame = anim->NumFrames * time / duration;
	if (frame >= anim->NumFrames)
	{
#ifdef VERSION_BW1WCI
		if (anim->IsCyclic())
		{
			frame = 0;
			time = 0;
		}
		else
		{
			frame = anim->NumFrames - 1;
		}
#else
		frame = 0;
		time = 0;
#endif
	}
	long nextFrame = frame + 1;
	if (nextFrame == anim->NumFrames)
	{
#ifdef VERSION_BW1WCI
		nextFrame = anim->IsCyclic() ? 0 : frame;
#else
		nextFrame = 0;
#endif
	}
	float     blend = time * ((float)anim->NumFrames / duration) - frame;
	LHMatrix* from = anim->GetListPtrFrames()[frame]->SubMeshes[0]->Matrices;
	LHMatrix* to = anim->GetListPtrFrames()[nextFrame]->SubMeshes[0]->Matrices;
	bones->SetBlend(*from, *to, blend);
	bones->PostMultiply(transform);
}

int LH3DAnim::GetIndexInCache()
{
	if (Flags & LH3D_ANIM_FLAG_CACHED)
	{
		return IndexInCache;
	}
	return -1;
}
