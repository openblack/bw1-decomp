#include "CAnim.h"

#include <math.h>   /* For fabs */
#include <string.h> /* For memcpy */

#include <Lionhead/LHFile/ver3.0/LHFile.h> /* For LHFile */

#include "LH3DAnim.h"    /* For LH3DAnim */
#include "LH3DMath.h"    /* For HALF_PI_F, LH3D_BLEND, PI_F, SquareRoot */
#include "LH3DMem.h"     /* For LH3DMem */
#include "LH3DMesh.h"    /* For LH3DMesh */
#include "LH3DSubMesh.h" /* For LH3DSubMesh */
#include "LHMatrix.h"    /* For LHMatrix */

#define CANIM_ANGLE_TOLERANCE    (PI_F / 180.0)
#define CANIM_POSITION_TOLERANCE 0.005f

#define CANIM_TURN_DURATION    1000
#define CANIM_TURN_FRAME_COUNT 4

long     temp_pos[CANIM_MAX_BONES] = {0};
long     temp_ang[CANIM_MAX_BONES] = {0};
bool32_t canim_bodge_for_bear = false;

static inline void SetLength(LHPoint& point, float length)
{
	float x = point.x;
	float y = point.y;
	float z = point.z;
	if (x != 0.0f || y != 0.0f || z != 0.0f)
	{
		float scale = length / SquareRoot(x * x + y * y + z * z);
		point.x = scale * x;
		point.y = scale * y;
		point.z = scale * z;
	}
}

CAnim::CAnim() {}

CAnim::~CAnim()
{
	Release();
}

void CAnim::Release()
{
	if (AngleCount != 0 || PositionCount != 0)
	{
		LH3DMem::Free(AngleBones);
	}
}

CAnim::CAnim(CAnim* anim)
{
	Duration = anim->Duration;
	Cyclic = anim->Cyclic;
	field_0x8 = anim->field_0x8;
	Distance = anim->Distance;
	Movement = anim->Movement;
	FrameCount = anim->FrameCount;
	NumBones = anim->NumBones;
	AngleCount = anim->AngleCount;
	PositionCount = anim->PositionCount;

	long  frameSize = sizeof(CFrame) + (AngleCount + PositionCount) * sizeof(LHPoint);
	long  size = (AngleCount + PositionCount + FrameCount) * sizeof(long) + FrameCount * frameSize;
	char* buffer = (char*)LH3DMem::Alloc(size);
	long  offset = 0;
	AngleBones = (long*)(buffer + offset);
	offset += AngleCount * sizeof(long);
	PositionBones = (long*)(buffer + offset);
	offset += PositionCount * sizeof(long);
	int i;
	for (i = 0; i < AngleCount; i++)
	{
		AngleBones[i] = anim->AngleBones[i];
	}
	for (i = 0; i < PositionCount; i++)
	{
		PositionBones[i] = anim->PositionBones[i];
	}
	frames = (CFrame**)(buffer + offset);
	offset += FrameCount * sizeof(CFrame*);
	for (i = 0; i < FrameCount; i++)
	{
		frames[i] = (CFrame*)(buffer + offset);
		offset += frameSize;
		frames[i]->Angles = (LHPoint*)((char*)frames[i] + sizeof(CFrame));
		frames[i]->Positions = (LHPoint*)((char*)frames[i] + sizeof(CFrame) + AngleCount * sizeof(LHPoint));
		memcpy(frames[i]->Angles, anim->frames[i]->Angles, AngleCount * sizeof(LHPoint));
		memcpy(frames[i]->Positions, anim->frames[i]->Positions, PositionCount * sizeof(LHPoint));
	}
}

CAnim::CAnim(CAnim* anim, long frame, bool32_t insert)
{
	bool32_t remove = !insert;
	Duration = anim->Duration;
	Cyclic = anim->Cyclic;
	field_0x8 = anim->field_0x8;
	Distance = anim->Distance;
	Movement = anim->Movement;
	FrameCount = anim->FrameCount + (insert ? 1 : -1);
	NumBones = anim->NumBones;
	AngleCount = anim->AngleCount;
	PositionCount = anim->PositionCount;

	long  frameSize = sizeof(CFrame) + (AngleCount + PositionCount) * sizeof(LHPoint);
	long  size = (AngleCount + PositionCount + FrameCount) * sizeof(long) + FrameCount * frameSize;
	char* buffer = (char*)LH3DMem::Alloc(size);
	long  offset = 0;
	AngleBones = (long*)(buffer + offset);
	offset += AngleCount * sizeof(long);
	PositionBones = (long*)(buffer + offset);
	offset += PositionCount * sizeof(long);
	int i;
	for (i = 0; i < AngleCount; i++)
	{
		AngleBones[i] = anim->AngleBones[i];
	}
	for (i = 0; i < PositionCount; i++)
	{
		PositionBones[i] = anim->PositionBones[i];
	}
	frames = (CFrame**)(buffer + offset);
	offset += FrameCount * sizeof(CFrame*);
	int source = 0;
	for (i = 0; i < FrameCount; i++)
	{
		if (remove && source == frame)
		{
			source++;
		}
		frames[i] = (CFrame*)(buffer + offset);
		offset += frameSize;
		frames[i]->Angles = (LHPoint*)((char*)frames[i] + sizeof(CFrame));
		frames[i]->Positions = (LHPoint*)((char*)frames[i] + sizeof(CFrame) + AngleCount * sizeof(LHPoint));
		memcpy(frames[i]->Angles, anim->frames[source]->Angles, AngleCount * sizeof(LHPoint));
		memcpy(frames[i]->Positions, anim->frames[source]->Positions, PositionCount * sizeof(LHPoint));
		if (!insert || i != frame)
		{
			source++;
		}
	}
}

CAnim::CAnim(CAnim* anim, float angle)
{
	Duration = CANIM_TURN_DURATION;
	Cyclic = true;
	field_0x8 = 0.0f;
	Distance = angle;
	Movement.Set(0.0f, -angle, 0.0f);
	FrameCount = CANIM_TURN_FRAME_COUNT;
	NumBones = anim->NumBones;
	AngleCount = anim->AngleCount;
	PositionCount = anim->PositionCount;

	long  frameSize = sizeof(CFrame) + (AngleCount + PositionCount) * sizeof(LHPoint);
	long  size = (AngleCount + PositionCount + FrameCount) * sizeof(long) + FrameCount * frameSize;
	char* buffer = (char*)LH3DMem::Alloc(size);
	long  offset = 0;
	AngleBones = (long*)(buffer + offset);
	offset += AngleCount * sizeof(long);
	PositionBones = (long*)(buffer + offset);
	offset += PositionCount * sizeof(long);
	int i;
	for (i = 0; i < AngleCount; i++)
	{
		AngleBones[i] = anim->AngleBones[i];
	}
	for (i = 0; i < PositionCount; i++)
	{
		PositionBones[i] = anim->PositionBones[i];
	}
	frames = (CFrame**)(buffer + offset);
	offset += FrameCount * sizeof(CFrame*);
	float turn = 0.0f;
	for (i = 0; i < FrameCount; i++)
	{
		frames[i] = (CFrame*)(buffer + offset);
		offset += frameSize;
		frames[i]->Angles = (LHPoint*)((char*)frames[i] + sizeof(CFrame));
		frames[i]->Positions = (LHPoint*)((char*)frames[i] + sizeof(CFrame) + AngleCount * sizeof(LHPoint));
		memcpy(frames[i]->Angles, anim->frames[0]->Angles, AngleCount * sizeof(LHPoint));
		memcpy(frames[i]->Positions, anim->frames[0]->Positions, PositionCount * sizeof(LHPoint));
		frames[i]->Angles[0].z += turn;
		turn += HALF_PI_F;
	}
}

CAnim::CAnim(CAnim* anim1, CFrame* stand1, CAnim* anim2, CFrame* stand2, float blend)
{
	Duration = FloatToInt(LH3D_BLEND(anim1->Duration, anim2->Duration, blend));
	Cyclic = anim1->Cyclic;
	field_0x8 = LH3D_BLEND(anim1->field_0x8, anim2->field_0x8, blend);
	Distance = LH3D_BLEND(anim1->Distance, anim2->Distance, blend);
	Movement.x = LH3D_BLEND(anim1->Movement.x, anim2->Movement.x, blend);
	Movement.y = LH3D_BLEND(anim1->Movement.y, anim2->Movement.y, blend);
	Movement.z = LH3D_BLEND(anim1->Movement.z, anim2->Movement.z, blend);
	SetLength(Movement, Distance);
	FrameCount = anim1->FrameCount;
	NumBones = anim1->NumBones;
	AngleCount = 0;
	PositionCount = 0;

	int angle1 = 0;
	int angle2 = 0;
	int position1 = 0;
	int position2 = 0;
	int bone;
	for (bone = 0; bone < NumBones; bone++)
	{
		bool32_t found = false;
		if (angle1 < anim1->AngleCount && bone == anim1->AngleBones[angle1])
		{
			angle1++;
			found = true;
		}
		if (angle2 < anim2->AngleCount && bone == anim2->AngleBones[angle2])
		{
			angle2++;
			found = true;
		}
		if (found)
		{
			temp_ang[AngleCount++] = bone;
		}
		found = false;
		if (position1 < anim1->PositionCount && bone == anim1->PositionBones[position1])
		{
			position1++;
			found = true;
		}
		if (position2 < anim2->PositionCount && bone == anim2->PositionBones[position2])
		{
			position2++;
			found = true;
		}
		if (found)
		{
			temp_pos[PositionCount++] = bone;
		}
	}

	long  frameSize = sizeof(CFrame) + (AngleCount + PositionCount) * sizeof(LHPoint);
	long  size = (AngleCount + PositionCount + FrameCount) * sizeof(long) + FrameCount * frameSize;
	char* buffer = (char*)LH3DMem::Alloc(size);
	long  offset = 0;
	AngleBones = (long*)(buffer + offset);
	offset += AngleCount * sizeof(long);
	PositionBones = (long*)(buffer + offset);
	offset += PositionCount * sizeof(long);
	memcpy(AngleBones, temp_ang, AngleCount * sizeof(long));
	memcpy(PositionBones, temp_pos, PositionCount * sizeof(long));
	frames = (CFrame**)(buffer + offset);
	offset += FrameCount * sizeof(CFrame*);
	for (int i = 0; i < FrameCount; i++)
	{
		frames[i] = (CFrame*)(buffer + offset);
		offset += frameSize;
		frames[i]->Angles = (LHPoint*)((char*)frames[i] + sizeof(CFrame));
		frames[i]->Positions = (LHPoint*)((char*)frames[i] + sizeof(CFrame) + AngleCount * sizeof(LHPoint));
		CFrame* frame = frames[i];

		angle1 = angle2 = position1 = position2 = 0;
		int j;
		for (j = 0; j < AngleCount; j++)
		{
			LHPoint* a1;
			LHPoint* a2;
			if (angle1 < anim1->AngleCount && AngleBones[j] == anim1->AngleBones[angle1])
			{
				a1 = &anim1->frames[i]->Angles[angle1];
				angle1++;
			}
			else
			{
				a1 = &stand1->Angles[AngleBones[j]];
			}
			if (angle2 < anim2->AngleCount && AngleBones[j] == anim2->AngleBones[angle2])
			{
				a2 = &anim2->frames[i]->Angles[angle2];
				angle2++;
			}
			else
			{
				a2 = &stand2->Angles[AngleBones[j]];
			}
			LHMatrix m1;
			LHMatrix m2;
			LHMatrix m;
			m1.SetYXZMatrixOnly(a1->y, a1->x, a1->z);
			m2.SetYXZMatrixOnly(a2->y, a2->x, a2->z);
			m.m[0] = (m2.m[0] - m1.m[0]) * blend + m1.m[0];
			m.m[1] = (m2.m[1] - m1.m[1]) * blend + m1.m[1];
			m.m[2] = (m2.m[2] - m1.m[2]) * blend + m1.m[2];
			m.m[3] = (m2.m[3] - m1.m[3]) * blend + m1.m[3];
			m.m[4] = (m2.m[4] - m1.m[4]) * blend + m1.m[4];
			m.m[5] = (m2.m[5] - m1.m[5]) * blend + m1.m[5];
			m.m[6] = (m2.m[6] - m1.m[6]) * blend + m1.m[6];
			m.m[7] = (m2.m[7] - m1.m[7]) * blend + m1.m[7];
			m.m[8] = (m2.m[8] - m1.m[8]) * blend + m1.m[8];
			m.GetYXZ(&frame->Angles[j].y, &frame->Angles[j].x, &frame->Angles[j].z);
		}

		for (j = 0; j < PositionCount; j++)
		{
			LHPoint* p1;
			LHPoint* p2;
			if (position1 < anim1->PositionCount && PositionBones[j] == anim1->PositionBones[position1])
			{
				p1 = &anim1->frames[i]->Positions[position1];
				position1++;
			}
			else
			{
				p1 = &stand1->Positions[PositionBones[j]];
			}
			if (position2 < anim2->PositionCount && PositionBones[j] == anim2->PositionBones[position2])
			{
				p2 = &anim2->frames[i]->Positions[position2];
				position2++;
			}
			else
			{
				p2 = &stand2->Positions[PositionBones[j]];
			}
			frame->Positions[j].x = LH3D_BLEND(p1->x, p2->x, blend);
			frame->Positions[j].y = LH3D_BLEND(p1->y, p2->y, blend);
			frame->Positions[j].z = LH3D_BLEND(p1->z, p2->z, blend);
		}
	}
}

CAnim::CAnim(CAnim* anim1, CFrame* stand1, CAnim* anim2, CFrame* stand2, float blend2, CAnim* anim3, CFrame* stand3,
             float blend3)
{
	Duration = anim1->Duration;
	Cyclic = anim1->Cyclic;
	field_0x8 = anim1->field_0x8;
	Distance = anim1->Distance;
	Movement = anim1->Movement;
	FrameCount = anim1->FrameCount;
	NumBones = anim1->NumBones;
	AngleCount = 0;
	PositionCount = 0;

	int angle1 = 0;
	int angle2 = 0;
	int angle3 = 0;
	int position1 = 0;
	int position2 = 0;
	int position3 = 0;
	int bone;
	for (bone = 0; bone < NumBones; bone++)
	{
		bool32_t found = false;
		if (angle1 < anim1->AngleCount && bone == anim1->AngleBones[angle1])
		{
			angle1++;
			found = true;
		}
		if (angle2 < anim2->AngleCount && bone == anim2->AngleBones[angle2])
		{
			angle2++;
			found = true;
		}
		if (angle3 < anim3->AngleCount && bone == anim3->AngleBones[angle3])
		{
			angle3++;
			found = true;
		}
		if (found)
		{
			temp_ang[AngleCount++] = bone;
		}
		found = false;
		if (position1 < anim1->PositionCount && bone == anim1->PositionBones[position1])
		{
			position1++;
			found = true;
		}
		if (position2 < anim2->PositionCount && bone == anim2->PositionBones[position2])
		{
			position2++;
			found = true;
		}
		if (position3 < anim3->PositionCount && bone == anim3->PositionBones[position3])
		{
			position3++;
			found = true;
		}
		if (found)
		{
			temp_pos[PositionCount++] = bone;
		}
	}

	long  frameSize = sizeof(CFrame) + (AngleCount + PositionCount) * sizeof(LHPoint);
	long  size = (AngleCount + PositionCount + FrameCount) * sizeof(long) + FrameCount * frameSize;
	char* buffer = (char*)LH3DMem::Alloc(size);
	long  offset = 0;
	AngleBones = (long*)(buffer + offset);
	offset += AngleCount * sizeof(long);
	PositionBones = (long*)(buffer + offset);
	offset += PositionCount * sizeof(long);
	memcpy(AngleBones, temp_ang, AngleCount * sizeof(long));
	memcpy(PositionBones, temp_pos, PositionCount * sizeof(long));
	frames = (CFrame**)(buffer + offset);
	offset += FrameCount * sizeof(CFrame*);
	for (int i = 0; i < FrameCount; i++)
	{
		frames[i] = (CFrame*)(buffer + offset);
		offset += frameSize;
		frames[i]->Angles = (LHPoint*)((char*)frames[i] + sizeof(CFrame));
		frames[i]->Positions = (LHPoint*)((char*)frames[i] + sizeof(CFrame) + AngleCount * sizeof(LHPoint));
		CFrame* frame = frames[i];

		angle1 = angle2 = angle3 = position1 = position2 = position3 = 0;
		int j;
		for (j = 0; j < AngleCount; j++)
		{
			LHPoint* a1;
			LHPoint* a2;
			LHPoint* a3;
			if (angle1 < anim1->AngleCount && AngleBones[j] == anim1->AngleBones[angle1])
			{
				a1 = &anim1->frames[i]->Angles[angle1];
				angle1++;
			}
			else
			{
				a1 = &stand1->Angles[AngleBones[j]];
			}
			if (angle2 < anim2->AngleCount && AngleBones[j] == anim2->AngleBones[angle2])
			{
				a2 = &anim2->frames[i]->Angles[angle2];
				angle2++;
			}
			else
			{
				a2 = &stand2->Angles[AngleBones[j]];
			}
			if (angle3 < anim3->AngleCount && AngleBones[j] == anim3->AngleBones[angle3])
			{
				a3 = &anim3->frames[i]->Angles[angle3];
				angle3++;
			}
			else
			{
				a3 = &stand3->Angles[AngleBones[j]];
			}
			LHMatrix m1;
			LHMatrix m2;
			LHMatrix m3;
			LHMatrix m;
			m1.SetYXZMatrixOnly(a1->y, a1->x, a1->z);
			m2.SetYXZMatrixOnly(a2->y, a2->x, a2->z);
			m3.SetYXZMatrixOnly(a3->y, a3->x, a3->z);
			m.m[0] = LH3D_BLEND2(m1.m[0], m2.m[0], m3.m[0], blend2, blend3);
			m.m[1] = LH3D_BLEND2(m1.m[1], m2.m[1], m3.m[1], blend2, blend3);
			m.m[2] = LH3D_BLEND2(m1.m[2], m2.m[2], m3.m[2], blend2, blend3);
			m.m[3] = LH3D_BLEND2(m1.m[3], m2.m[3], m3.m[3], blend2, blend3);
			m.m[4] = LH3D_BLEND2(m1.m[4], m2.m[4], m3.m[4], blend2, blend3);
			m.m[5] = LH3D_BLEND2(m1.m[5], m2.m[5], m3.m[5], blend2, blend3);
			m.m[6] = LH3D_BLEND2(m1.m[6], m2.m[6], m3.m[6], blend2, blend3);
			m.m[7] = LH3D_BLEND2(m1.m[7], m2.m[7], m3.m[7], blend2, blend3);
			m.m[8] = LH3D_BLEND2(m1.m[8], m2.m[8], m3.m[8], blend2, blend3);
			m.GetYXZ(&frame->Angles[j].y, &frame->Angles[j].x, &frame->Angles[j].z);
		}

		for (j = 0; j < PositionCount; j++)
		{
			LHPoint* p1;
			LHPoint* p2;
			LHPoint* p3;
			if (position1 < anim1->PositionCount && PositionBones[j] == anim1->PositionBones[position1])
			{
				p1 = &anim1->frames[i]->Positions[position1];
				position1++;
			}
			else
			{
				p1 = &stand1->Positions[PositionBones[j]];
			}
			if (position2 < anim2->PositionCount && PositionBones[j] == anim2->PositionBones[position2])
			{
				p2 = &anim2->frames[i]->Positions[position2];
				position2++;
			}
			else
			{
				p2 = &stand2->Positions[PositionBones[j]];
			}
			if (position3 < anim3->PositionCount && PositionBones[j] == anim3->PositionBones[position3])
			{
				p3 = &anim3->frames[i]->Positions[position3];
				position3++;
			}
			else
			{
				p3 = &stand3->Positions[PositionBones[j]];
			}
			frame->Positions[j].x = LH3D_BLEND2(p1->x, p2->x, p3->x, blend2, blend3);
			frame->Positions[j].y = LH3D_BLEND2(p1->y, p2->y, p3->y, blend2, blend3);
			frame->Positions[j].z = LH3D_BLEND2(p1->z, p2->z, p3->z, blend2, blend3);
		}
	}
}

CAnim::CAnim(CAnim* anim, CFrame* stand)
{
	Duration = anim->Duration;
	Cyclic = anim->Cyclic;
	field_0x8 = anim->field_0x8;
	Distance = anim->Distance;
	Movement = anim->Movement;
	FrameCount = anim->FrameCount;
	NumBones = anim->NumBones;
	AngleCount = 0;
	PositionCount = 0;

	int i;
	int j;
	for (j = 0; j < anim->AngleCount; j++)
	{
		bool32_t moves = false;
		for (i = 0; i < FrameCount && !moves; i++)
		{
			LHPoint* angle = &anim->frames[i]->Angles[j];
			LHPoint* standAngle = &stand->Angles[anim->AngleBones[j]];
			if (fabs(angle->x - standAngle->x) > CANIM_ANGLE_TOLERANCE)
			{
				moves = true;
			}
			if (fabs(angle->y - standAngle->y) > CANIM_ANGLE_TOLERANCE)
			{
				moves = true;
			}
			if (fabs(angle->z - standAngle->z) > CANIM_ANGLE_TOLERANCE)
			{
				moves = true;
			}
		}
		if (moves)
		{
			temp_ang[AngleCount++] = anim->AngleBones[j];
		}
	}
	for (j = 0; j < anim->PositionCount; j++)
	{
		bool32_t moves = false;
		for (i = 0; i < FrameCount && !moves; i++)
		{
			LHPoint* position = &anim->frames[i]->Positions[j];
			LHPoint* standPosition = &stand->Positions[anim->PositionBones[j]];
			if (fabs(position->x - standPosition->x) > CANIM_POSITION_TOLERANCE)
			{
				moves = true;
			}
			if (fabs(position->y - standPosition->y) > CANIM_POSITION_TOLERANCE)
			{
				moves = true;
			}
			if (fabs(position->z - standPosition->z) > CANIM_POSITION_TOLERANCE)
			{
				moves = true;
			}
		}
		if (moves)
		{
			temp_pos[PositionCount++] = anim->PositionBones[j];
		}
	}

	long  frameSize = sizeof(CFrame) + (AngleCount + PositionCount) * sizeof(LHPoint);
	long  size = (AngleCount + PositionCount + FrameCount) * sizeof(long) + FrameCount * frameSize;
	char* buffer = (char*)LH3DMem::Alloc(size);
	long  offset = 0;
	AngleBones = (long*)(buffer + offset);
	offset += AngleCount * sizeof(long);
	PositionBones = (long*)(buffer + offset);
	offset += PositionCount * sizeof(long);
	memcpy(AngleBones, temp_ang, AngleCount * sizeof(long));
	memcpy(PositionBones, temp_pos, PositionCount * sizeof(long));
	frames = (CFrame**)(buffer + offset);
	offset += FrameCount * sizeof(CFrame*);
	for (i = 0; i < FrameCount; i++)
	{
		int angle = 0;
		int position = 0;
		frames[i] = (CFrame*)(buffer + offset);
		offset += frameSize;
		frames[i]->Angles = (LHPoint*)((char*)frames[i] + sizeof(CFrame));
		frames[i]->Positions = (LHPoint*)((char*)frames[i] + sizeof(CFrame) + AngleCount * sizeof(LHPoint));
		for (j = 0; j < anim->AngleCount; j++)
		{
			if (angle < AngleCount && anim->AngleBones[j] == AngleBones[angle])
			{
				frames[i]->Angles[angle] = anim->frames[i]->Angles[j];
				angle++;
			}
		}
		for (j = 0; j < anim->PositionCount; j++)
		{
			if (position < PositionCount && anim->PositionBones[j] == PositionBones[position])
			{
				frames[i]->Positions[position] = anim->frames[i]->Positions[j];
				position++;
			}
		}
	}
}

CAnim::CAnim(CFrame* stand, CAnim* anim)
{
	Duration = anim->Duration;
	Cyclic = anim->Cyclic;
	field_0x8 = anim->field_0x8;
	Distance = anim->Distance;
	Movement = anim->Movement;
	FrameCount = anim->FrameCount;
	NumBones = anim->NumBones;
	AngleCount = anim->NumBones;
	PositionCount = anim->NumBones;

	long  frameSize = sizeof(CFrame) + (AngleCount + PositionCount) * sizeof(LHPoint);
	long  size = (AngleCount + PositionCount + FrameCount) * sizeof(long) + FrameCount * frameSize;
	char* buffer = (char*)LH3DMem::Alloc(size);
	long  offset = 0;
	AngleBones = (long*)(buffer + offset);
	offset += AngleCount * sizeof(long);
	PositionBones = (long*)(buffer + offset);
	offset += PositionCount * sizeof(long);
	int i;
	for (i = 0; i < NumBones; i++)
	{
		PositionBones[i] = i;
		AngleBones[i] = i;
	}
	frames = (CFrame**)(buffer + offset);
	offset += FrameCount * sizeof(CFrame*);
	for (i = 0; i < FrameCount; i++)
	{
		int angle = 0;
		int position = 0;
		int j;
		frames[i] = (CFrame*)(buffer + offset);
		offset += frameSize;
		frames[i]->Angles = (LHPoint*)((char*)frames[i] + sizeof(CFrame));
		frames[i]->Positions = (LHPoint*)((char*)frames[i] + sizeof(CFrame) + AngleCount * sizeof(LHPoint));
		for (j = 0; j < AngleCount; j++)
		{
			if (angle < anim->AngleCount && AngleBones[j] == anim->AngleBones[angle])
			{
				frames[i]->Angles[j] = anim->frames[i]->Angles[angle];
				angle++;
			}
			else
			{
				frames[i]->Angles[j] = stand->Angles[j];
			}
		}
		for (j = 0; j < PositionCount; j++)
		{
			if (position < anim->PositionCount && AngleBones[j] == anim->PositionBones[position])
			{
				frames[i]->Positions[j] = anim->frames[i]->Positions[position];
				position++;
			}
			else
			{
				frames[i]->Positions[j] = stand->Positions[j];
			}
		}
	}
}

CAnim::CAnim(LH3DMesh* mesh, LHMatrix* base, LHMatrix* inverse_base, LH3DAnim* anim)
{
	Duration = anim->Duration;
	Cyclic = anim->IsCyclic() != 0;
	field_0x8 = anim->field_0x24;
	Distance = anim->Distance;
	Movement.Set(anim->Movement);
	FrameCount = anim->NumFrames;
	AngleCount = PositionCount = NumBones = mesh->submeshes[0]->NumBones;

	long  frameSize = sizeof(CFrame) + (AngleCount + PositionCount) * sizeof(LHPoint);
	long  size = (AngleCount + PositionCount + FrameCount) * sizeof(long) + FrameCount * frameSize;
	char* buffer = (char*)LH3DMem::Alloc(size);
	long  offset = 0;
	AngleBones = (long*)(buffer + offset);
	offset += AngleCount * sizeof(long);
	PositionBones = (long*)(buffer + offset);
	offset += PositionCount * sizeof(long);
	int i;
	for (i = 0; i < AngleCount; i++)
	{
		PositionBones[i] = i;
		AngleBones[i] = i;
	}
	frames = (CFrame**)(buffer + offset);
	offset += FrameCount * sizeof(CFrame*);
	for (i = 0; i < FrameCount; i++)
	{
		frames[i] = (CFrame*)(buffer + offset);
		offset += frameSize;
		frames[i]->Angles = (LHPoint*)((char*)frames[i] + sizeof(CFrame));
		frames[i]->Positions = (LHPoint*)((char*)frames[i] + sizeof(CFrame) + AngleCount * sizeof(LHPoint));
		for (int j = 0; j < AngleCount; j++)
		{
			LHMatrix* matrices = anim->GetListPtrFrames()[i]->SubMeshes[0]->Matrices;
			long      bone = AngleBones[j];
			LH3DBone* boneInfo = &mesh->submeshes[0]->Bones[bone];
			LHPoint*  angle = &frames[i]->Angles[j];
			LHPoint*  position = &frames[i]->Positions[j];
			LHMatrix  m;
			m.Set(matrices[j]);
			if (bone != 0)
			{
				m.PostMultiply(base[boneInfo->Parent]);
			}
			m.PreMultiply(inverse_base[bone]);
			m.GetYXZ(&angle->y, &angle->x, &angle->z);
			position->Set(matrices[j].GetPos());
		}
	}
}

void SortCopy(long* dst, long* src, long count)
{
	for (long i = 0; i < count; i++)
	{
		long value = src[i];
		if (i == 0)
		{
			dst[0] = value;
		}
		else
		{
			long     j = 0;
			bool32_t done = false;
			long*    p = dst;
			while (!done)
			{
				if (value > *p)
				{
					j++;
					p++;
				}
				else
				{
					done = true;
				}
				if (j == i)
				{
					done = true;
				}
			}
			if (j == i)
			{
				dst[j] = value;
			}
			else
			{
				for (long k = i; k > j; k--)
				{
					dst[k] = dst[k - 1];
				}
				dst[j] = value;
			}
		}
	}
}

CAnim::CAnim(CAnim* anim, RemapInfo* remap, CFrame* old_stand, CFrame* new_stand, float blend)
{
	Duration = anim->Duration;
	Cyclic = anim->Cyclic;
	field_0x8 = anim->field_0x8;
	Distance = anim->Distance;
	Movement = anim->Movement;
	FrameCount = anim->FrameCount;
	NumBones = remap->NumBones;
	if (new_stand == NULL)
	{
		Movement.x = -Movement.x;
	}
	AngleCount = 0;
	PositionCount = 0;

	int i;
	int j;
	for (j = 0; j < anim->AngleCount; j++)
	{
		long bone = remap->Remap[anim->AngleBones[j]];
		if (bone != -1)
		{
			temp_ang[AngleCount++] = bone;
		}
	}
	for (j = 0; j < anim->PositionCount; j++)
	{
		long bone = remap->Remap[anim->PositionBones[j]];
		if (bone != -1)
		{
			temp_pos[PositionCount++] = bone;
		}
	}
	if (PositionCount == 0 && AngleCount == 0)
	{
		FrameCount = 0;
		return;
	}

	long  frameSize = sizeof(CFrame) + (AngleCount + PositionCount) * sizeof(LHPoint);
	long  size = (AngleCount + PositionCount + FrameCount) * sizeof(long) + FrameCount * frameSize;
	char* buffer = (char*)LH3DMem::Alloc(size);
	long  offset = 0;
	AngleBones = (long*)(buffer + offset);
	offset += AngleCount * sizeof(long);
	PositionBones = (long*)(buffer + offset);
	offset += PositionCount * sizeof(long);
	SortCopy(AngleBones, temp_ang, AngleCount);
	SortCopy(PositionBones, temp_pos, PositionCount);
	frames = (CFrame**)(buffer + offset);
	offset += FrameCount * sizeof(CFrame*);
	for (i = 0; i < FrameCount; i++)
	{
		frames[i] = (CFrame*)(buffer + offset);
		offset += frameSize;
		frames[i]->Angles = (LHPoint*)((char*)frames[i] + sizeof(CFrame));
		frames[i]->Positions = (LHPoint*)((char*)frames[i] + sizeof(CFrame) + AngleCount * sizeof(LHPoint));
		for (j = 0; j < anim->AngleCount; j++)
		{
			long oldBone = anim->AngleBones[j];
			long newBone = remap->Remap[oldBone];
			if (newBone != -1)
			{
				int k = 0;
				while (AngleBones[k] != newBone)
				{
					k++;
				}
				if (new_stand != NULL)
				{
					LHMatrix standMatrix;
					LHMatrix inverseOldStand;
					LHMatrix m;
					standMatrix.SetYXZMatrixOnly(new_stand->Angles[newBone].y, new_stand->Angles[newBone].x,
					                             new_stand->Angles[newBone].z);
					inverseOldStand.SetZXYMatrixOnly(-old_stand->Angles[oldBone].z, -old_stand->Angles[oldBone].x,
					                                 -old_stand->Angles[oldBone].y);
					m.SetYXZMatrixOnly(anim->frames[i]->Angles[j].y, anim->frames[i]->Angles[j].x,
					                   anim->frames[i]->Angles[j].z);
					m.PostMultiplyMatrixOnly(inverseOldStand);
					m.PostMultiplyMatrixOnly(standMatrix);
					m.GetYXZ(&frames[i]->Angles[k].y, &frames[i]->Angles[k].x, &frames[i]->Angles[k].z);
				}
				else
				{
					frames[i]->Angles[k].x = anim->frames[i]->Angles[j].x;
					frames[i]->Angles[k].y = -anim->frames[i]->Angles[j].y;
					frames[i]->Angles[k].z = -anim->frames[i]->Angles[j].z;
				}
			}
		}
		for (j = 0; j < anim->PositionCount; j++)
		{
			long oldBone = anim->PositionBones[j];
			long newBone = remap->Remap[oldBone];
			if (newBone != -1)
			{
				int k = 0;
				while (PositionBones[k] != newBone)
				{
					k++;
				}
				if (new_stand != NULL)
				{
					LHPoint offset = new_stand->Positions[newBone] - old_stand->Positions[oldBone] * blend;
					frames[i]->Positions[k] = anim->frames[i]->Positions[j] * blend + offset;
				}
				else
				{
					LHPoint position = anim->frames[i]->Positions[j] - old_stand->Positions[oldBone];
					position.x = -position.x;
					frames[i]->Positions[k] = position + old_stand->Positions[newBone];
				}
			}
		}
	}
}

void CAnim::ReadBinary(LHFile* file)
{
	Duration = file->ReadLong();
	Cyclic = file->ReadLong() & 1;
	field_0x8 = file->ReadFloat();
	Distance = file->ReadFloat();
	Movement.x = file->ReadFloat();
	Movement.y = file->ReadFloat();
	Movement.z = file->ReadFloat();
	FrameCount = file->ReadLong();
	NumBones = file->ReadLong();
	AngleCount = file->ReadLong();
	PositionCount = file->ReadLong();

	long  frameSize = sizeof(CFrame) + (AngleCount + PositionCount) * sizeof(LHPoint);
	long  size = (AngleCount + PositionCount + FrameCount) * sizeof(long) + FrameCount * frameSize;
	char* buffer = (char*)LH3DMem::Alloc(size);
	long  offset = 0;
	AngleBones = (long*)(buffer + offset);
	offset += AngleCount * sizeof(long);
	PositionBones = (long*)(buffer + offset);
	offset += PositionCount * sizeof(long);
	int i;
	for (i = 0; i < AngleCount; i++)
	{
		AngleBones[i] = file->ReadLong();
	}
	for (i = 0; i < PositionCount; i++)
	{
		PositionBones[i] = file->ReadLong();
	}
	frames = (CFrame**)(buffer + offset);
	offset += FrameCount * sizeof(CFrame*);
	for (i = 0; i < FrameCount; i++)
	{
		frames[i] = (CFrame*)(buffer + offset);
		offset += frameSize;
		frames[i]->Angles = (LHPoint*)((char*)frames[i] + sizeof(CFrame));
		frames[i]->Positions = (LHPoint*)((char*)frames[i] + sizeof(CFrame) + AngleCount * sizeof(LHPoint));
		frames[i]->ReadBinary(file, AngleCount, PositionCount);
	}
}

void CAnim::WriteBinary(LHFile* file)
{
	file->WriteLong(Duration);
	file->WriteLong(Cyclic);
	file->WriteFloat(field_0x8);
	file->WriteFloat(Distance);
	file->WriteFloat(Movement.x);
	file->WriteFloat(Movement.y);
	file->WriteFloat(Movement.z);
	file->WriteLong(FrameCount);
	file->WriteLong(NumBones);
	file->WriteLong(AngleCount);
	file->WriteLong(PositionCount);
	int i;
	for (i = 0; i < AngleCount; i++)
	{
		file->WriteLong(AngleBones[i]);
	}
	for (i = 0; i < PositionCount; i++)
	{
		file->WriteLong(PositionBones[i]);
	}
	for (i = 0; i < FrameCount; i++)
	{
		frames[i]->WriteBinary(file, AngleCount, PositionCount);
	}
}

int CAnim::GetWriteSize()
{
	int size = sizeof(Duration) + sizeof(Cyclic) + sizeof(field_0x8) + sizeof(Distance) + sizeof(Movement) +
	           sizeof(FrameCount) + sizeof(NumBones) + sizeof(AngleCount) + sizeof(PositionCount);
	int i;
	for (i = 0; i < AngleCount; i++)
	{
		size += sizeof(long);
	}
	for (i = 0; i < PositionCount; i++)
	{
		size += sizeof(long);
	}
	for (i = 0; i < FrameCount; i++)
	{
		size += frames[i]->GetWriteSize(AngleCount, PositionCount);
	}
	return size;
}

void CFrame::ReadBinary(LHFile* file, long angle_count, long position_count)
{
	int i;
	for (i = 0; i < angle_count; i++)
	{
		Angles[i].x = file->ReadFloat();
		Angles[i].y = file->ReadFloat();
		Angles[i].z = file->ReadFloat();
	}
	for (i = 0; i < position_count; i++)
	{
		Positions[i].x = file->ReadFloat();
		Positions[i].y = file->ReadFloat();
		Positions[i].z = file->ReadFloat();
	}
}

void CFrame::WriteBinary(LHFile* file, long angle_count, long position_count)
{
	int i;
	for (i = 0; i < angle_count; i++)
	{
		file->WriteFloat(Angles[i].x);
		file->WriteFloat(Angles[i].y);
		file->WriteFloat(Angles[i].z);
	}
	for (i = 0; i < position_count; i++)
	{
		file->WriteFloat(Positions[i].x);
		file->WriteFloat(Positions[i].y);
		file->WriteFloat(Positions[i].z);
	}
}

int CFrame::GetWriteSize(long angle_count, long position_count)
{
	int size = 0;
	int i;
	for (i = 0; i < angle_count; i++)
	{
		size += sizeof(LHPoint);
	}
	for (i = 0; i < position_count; i++)
	{
		size += sizeof(LHPoint);
	}
	return size;
}

void CAnim::FillBuffer(LHMatrix* buffer, LH3DMesh* mesh, LHMatrix* base, LHMatrix* inverse_base, long time,
                       CFrame* stand, long* mirror_bones, bool32_t fill_all)
{
	int duration;
	if (Cyclic)
	{
		duration = Duration;
	}
	else
	{
		duration = Duration * FrameCount / (FrameCount - 1);
	}
	int frame = FrameCount * time / duration;
	if (frame < 0)
	{
		frame = 0;
	}
	if (frame >= FrameCount)
	{
		frame = FrameCount - 1;
	}
	int next = frame + 1;
	if (next == FrameCount)
	{
		next = 0;
	}
	float blend = ((float)FrameCount / duration) * time - frame;

	int angle = 0;
	int position = 0;
	for (int i = 0; i < NumBones; i++)
	{
		long bone;
		if (mirror_bones != NULL)
		{
			bone = mirror_bones[i];
		}
		else
		{
			bone = i;
		}
		LHMatrix* matrix = &buffer[bone];
		LH3DBone* boneInfo = &mesh->submeshes[0]->Bones[bone];
		if (angle < AngleCount && i == AngleBones[angle])
		{
			LHPoint* angle0 = &frames[frame]->Angles[angle];
			LHPoint* angle1 = &frames[next]->Angles[angle];
			LHMatrix m0;
			LHMatrix m1;
			if (mirror_bones != NULL)
			{
				m0.SetYXZMatrixOnly(-angle0->y, angle0->x, -angle0->z);
				m1.SetYXZMatrixOnly(-angle1->y, angle1->x, -angle1->z);
			}
			else
			{
				m0.SetYXZMatrixOnly(angle0->y, angle0->x, angle0->z);
				m1.SetYXZMatrixOnly(angle1->y, angle1->x, angle1->z);
			}
			LHMatrix m;
			m._11 = (m1._11 - m0._11) * blend + m0._11;
			m._12 = (m1._12 - m0._12) * blend + m0._12;
			m._13 = (m1._13 - m0._13) * blend + m0._13;
			m._21 = (m1._21 - m0._21) * blend + m0._21;
			m._22 = (m1._22 - m0._22) * blend + m0._22;
			m._23 = (m1._23 - m0._23) * blend + m0._23;
			m._31 = (m1._31 - m0._31) * blend + m0._31;
			m._32 = (m1._32 - m0._32) * blend + m0._32;
			m._33 = (m1._33 - m0._33) * blend + m0._33;
			m.NormaliseMatrixOnly();
			matrix->SetMatrixOnly(base[bone]);
			matrix->PostMultiplyMatrixOnly(m);
			if (i != 0)
			{
				long parent = boneInfo->Parent;
				matrix->PostMultiplyMatrixOnly(inverse_base[parent]);
			}
			angle++;
		}
		else if (fill_all)
		{
			LHPoint* standAngle = &stand->Angles[bone];
			LHMatrix m;
			m.SetYXZMatrixOnly(standAngle->y, standAngle->x, standAngle->z);
			matrix->SetMatrixOnly(base[bone]);
			matrix->PostMultiplyMatrixOnly(m);
			if (i != 0)
			{
				long parent = boneInfo->Parent;
				matrix->PostMultiplyMatrixOnly(inverse_base[parent]);
			}
		}
		if (position < PositionCount && i == PositionBones[position])
		{
			LHPoint* position0 = &frames[frame]->Positions[position];
			LHPoint* position1 = &frames[next]->Positions[position];
			if (mirror_bones != NULL)
			{
				LHPoint pos;
				pos.x = (position1->x - position0->x) * blend + position0->x;
				pos.y = (position1->y - position0->y) * blend + position0->y;
				pos.z = (position1->z - position0->z) * blend + position0->z;
				if (i != 0)
				{
					pos -= stand->Positions[i];
					if (canim_bodge_for_bear && i == 1)
					{
						pos.y = -pos.y;
					}
					else
					{
						pos.z = -pos.z;
					}
					pos += stand->Positions[bone];
				}
				else
				{
					pos -= stand->Positions[i];
					pos.x = -pos.x;
					pos += stand->Positions[bone];
				}
				matrix->_41 = pos.x;
				matrix->_42 = pos.y;
				matrix->_43 = pos.z;
			}
			else
			{
				matrix->GetPos().Set((position1->x - position0->x) * blend + position0->x,
				                     (position1->y - position0->y) * blend + position0->y,
				                     (position1->z - position0->z) * blend + position0->z);
			}
			position++;
		}
		else if (fill_all)
		{
			matrix->GetPos().Set(stand->Positions[bone]);
		}
	}
}

void CAnim::AdjustForNewBasedOnStand(CAnim* old_stand, CAnim* new_stand)
{
	for (int i = 0; i < FrameCount; i++)
	{
		CFrame* frame = frames[i];
		CFrame* oldFrame = old_stand->frames[0];
		CFrame* newFrame = new_stand->frames[0];
		int     j;
		for (j = 0; j < AngleCount; j++)
		{
			long     bone = AngleBones[j];
			LHMatrix newMatrix;
			LHMatrix inverseOld;
			LHMatrix m;
			newMatrix.SetYXZMatrixOnly(newFrame->Angles[bone].y, newFrame->Angles[bone].x, newFrame->Angles[bone].z);
			inverseOld.SetZXYMatrixOnly(-oldFrame->Angles[bone].z, -oldFrame->Angles[bone].x,
			                            -oldFrame->Angles[bone].y);
			m.SetYXZMatrixOnly(frame->Angles[j].y, frame->Angles[j].x, frame->Angles[j].z);
			m.PostMultiplyMatrixOnly(inverseOld);
			m.PostMultiplyMatrixOnly(newMatrix);
			m.GetYXZ(&frame->Angles[j].y, &frame->Angles[j].x, &frame->Angles[j].z);
		}
		for (j = 0; j < PositionCount; j++)
		{
			long bone = PositionBones[j];
			frame->Positions[j].x += newFrame->Positions[bone].x - oldFrame->Positions[bone].x;
			frame->Positions[j].y += newFrame->Positions[bone].y - oldFrame->Positions[bone].y;
			frame->Positions[j].z += newFrame->Positions[bone].z - oldFrame->Positions[bone].z;
		}
	}
}

void CAnim::ModifyBufferByDifferenceFromFrame(LHMatrix* buffer, CFrame* base_frame, LH3DMesh* mesh, LHMatrix* base,
                                              LHMatrix* inverse_base, long time, CFrame* stand, long* mirror_bones)
{
	int duration;
	if (Cyclic)
	{
		duration = Duration;
	}
	else
	{
		duration = Duration * FrameCount / (FrameCount - 1);
	}
	int frame = FrameCount * time / duration;
	if (frame >= FrameCount)
	{
		frame = FrameCount - 1;
	}
	int next = frame + 1;
	if (next == FrameCount)
	{
		next = 0;
	}
	float blend = ((float)FrameCount / duration) * time - frame;

	int angle = 0;
	int position = 0;
	for (int i = 0; i < NumBones; i++)
	{
		long bone;
		if (mirror_bones != NULL)
		{
			bone = mirror_bones[i];
		}
		else
		{
			bone = i;
		}
		LHMatrix* matrix = &buffer[bone];
		LH3DBone* boneInfo = &mesh->submeshes[0]->Bones[bone];
		if (angle < AngleCount && i == AngleBones[angle])
		{
			LHPoint* angle0 = &frames[frame]->Angles[angle];
			LHPoint* angle1 = &frames[next]->Angles[angle];
			LHPoint* baseAngle = &base_frame->Angles[angle];
			LHMatrix m0;
			LHMatrix m1;
			LHMatrix inverseBaseAngle;
			if (mirror_bones != NULL)
			{
				m0.SetYXZMatrixOnly(-angle0->y, angle0->x, -angle0->z);
				m1.SetYXZMatrixOnly(-angle1->y, angle1->x, -angle1->z);
				inverseBaseAngle.SetZXYMatrixOnly(baseAngle->z, -baseAngle->x, baseAngle->y);
			}
			else
			{
				m0.SetYXZMatrixOnly(angle0->y, angle0->x, angle0->z);
				m1.SetYXZMatrixOnly(angle1->y, angle1->x, angle1->z);
				inverseBaseAngle.SetZXYMatrixOnly(-baseAngle->z, -baseAngle->x, -baseAngle->y);
			}
			LHMatrix m;
			m._11 = (m1._11 - m0._11) * blend + m0._11;
			m._12 = (m1._12 - m0._12) * blend + m0._12;
			m._13 = (m1._13 - m0._13) * blend + m0._13;
			m._21 = (m1._21 - m0._21) * blend + m0._21;
			m._22 = (m1._22 - m0._22) * blend + m0._22;
			m._23 = (m1._23 - m0._23) * blend + m0._23;
			m._31 = (m1._31 - m0._31) * blend + m0._31;
			m._32 = (m1._32 - m0._32) * blend + m0._32;
			m._33 = (m1._33 - m0._33) * blend + m0._33;
			m.NormaliseMatrixOnly();
			if (i != 0)
			{
				long parent = boneInfo->Parent;
				matrix->PostMultiplyMatrixOnly(base[parent]);
			}
			matrix->PostMultiplyMatrixOnly(inverseBaseAngle);
			matrix->PostMultiplyMatrixOnly(m);
			if (i != 0)
			{
				long parent = boneInfo->Parent;
				matrix->PostMultiplyMatrixOnly(inverse_base[parent]);
			}
			angle++;
		}
		if (position < PositionCount && i == PositionBones[position])
		{
			LHPoint* position0 = &frames[frame]->Positions[position];
			LHPoint* position1 = &frames[next]->Positions[position];
			LHPoint* basePosition = &base_frame->Positions[position];
			LHPoint  pos;
			pos.x = (position1->x - position0->x) * blend + position0->x - basePosition->x;
			pos.y = (position1->y - position0->y) * blend + position0->y - basePosition->y;
			pos.z = (position1->z - position0->z) * blend + position0->z - basePosition->z;
			if (mirror_bones != NULL)
			{
				if (i != 0)
				{
					if (canim_bodge_for_bear && i == 1)
					{
						pos.y = -pos.y;
					}
					else
					{
						pos.z = -pos.z;
					}
				}
				else
				{
					pos.x = -pos.x;
				}
				matrix->_41 += pos.x;
				matrix->_42 += pos.y;
				matrix->_43 += pos.z;
			}
			else
			{
				matrix->_41 += pos.x;
				matrix->_42 += pos.y;
				matrix->_43 += pos.z;
			}
			position++;
		}
	}
}
