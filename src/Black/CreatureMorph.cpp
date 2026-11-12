#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureMorph.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */

#include <math.h>    /* For fabs, sqrt */
#include <stdio.h>   /* For sprintf */
#include <string.h>  /* For memcpy, strcmp, strcpy */
#include <windows.h> /* For min, max, MAX_PATH */

#include <chlasm/CreatureSpec.h>                            /* For CREATURE_ANIMATIONS */
#include <Lionhead/LH3DLib/development/CAnim.h>             /* For struct CAnim, CAnim::FillBuffer */
#include <Lionhead/LH3DLib/development/CollideBox.h>        /* For CollideBox::CreateCollideBoxes */
#include <Lionhead/LH3DLib/development/LH3DAnim.h>          /* For LH3DAnim::FinishTransform */
#include <Lionhead/LH3DLib/development/LH3DAtmos.h>         /* For LH3DAtmos::scv */
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h> /* For LH3DComplexObject */
#include <Lionhead/LH3DLib/development/LH3DMath.h>          /* For angle_correct, HALF_PI_F, PI_F, SquareRoot */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>          /* For LH3DMesh, LH3DMesh::g_current_list_matrix */
#include <Lionhead/LH3DLib/development/LH3DObjectHair.h>    /* For LH3DObjectHair */
#include <Lionhead/LH3DLib/development/LH3DSky.h>           /* For LH3DSky::topcol */
#include <Lionhead/LH3DLib/development/LH3DSubMesh.h>       /* For LH3D_BONE_NONE */
#include <Lionhead/LH3DLib/development/LH3DTech.h>          /* For LH3DTech::g_delta_time */
#include <Lionhead/LH3DLib/development/LHMatrix.h>          /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/MeshIntersect.h>     /* For MeshIntersect::ReadBinary */
#include <Lionhead/LH3DLib/development/SnowCover.h>         /* For SnowCover */
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h>          /* For LHReleasedFile */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                    /* For NEW */

#include "Audio.h"            /* For GAudio */
#include "Creature.h"         /* For Creature::Flags */
#include "CreatureAnimInfo.h" /* For AnimInfo */
#include "Game.h"             /* For GGame */
#include "Global.h"           /* For GGlobal::Global */
#include "HairGroup.h"        /* For struct HairGroup */
#include "LiquidParticle.h"   /* For AddLiquidParticle */
#include "Rand.h"             /* For GRand::LocalRand */
#include "alexmfc.h"          /* For SetupBox */

#ifdef VERSION_BW1WCI
#include "AutoVoiceParams.h"      /* For struct AutoVoiceParams, struct VoiceKey */
#include "CreatureReceiveSpell.h" /* For struct CreatureReceiveSpell */
#include "HelpDude.h"             /* For HelpDude::CalcLipSync */

#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + ((line) < 100 ? 1 : 9))
#endif

// BW1W120 00d3f008
extern LH3DMaterial* HairMaterial;

// BW1W120 00f05620 BW1M119 011e3b58 (LHCombined Release)
extern bool32_t canim_bodge_for_bear;

// BW1W120 004eecd0
static void CombineFloats(float* dst, const float* src, float weight, int count, bool32_t overwrite);

static bool32_t ApplyYoungOld = true;

uint32_t LH3DCreature::LoadBase(char* path)
{
	if (!Morphable::LoadBase(path))
	{
		return 0;
	}
	if (PreviousBuffer)
	{
		delete PreviousBuffer;
	}
	PreviousBuffer = NEW(41) LHMatrix[NumBoneMatrices];
	if (SafeBuffer0)
	{
		delete SafeBuffer0;
	}
	SafeBuffer0 = NEW(43) LHMatrix[NumBoneMatrices];
	if (WorkBuffer)
	{
		delete WorkBuffer;
	}
	WorkBuffer = NEW(45) LHMatrix[NumBoneMatrices];
	if (SafeBuffer1)
	{
		delete SafeBuffer1;
	}
	SafeBuffer1 = NEW(47) LHMatrix[NumBoneMatrices];
	if (MirrorBones == NULL)
	{
		MirrorBones = NEW(50) long[NumBoneMatrices];
		for (int i = 0; i < NumBoneMatrices; i++)
		{
			MirrorBones[i] = -1;
		}
	}
	return 1;
}

bool32_t LH3DCreature::LoadSkin(char* name)
{
	int  i;
	char path[64];
	sprintf(path, "data\\ctr\\%s.skn", name);
	LHReleasedFile file;
	file.SetName(path);
	if (file.Open(LH_FILE_MODE_READ_ONLY) != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't open skin : ", path);
		return false;
	}
	if (file.OpenSegment(LH3D_CREATURE_SEGMENT_NAME) != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't open segment Creature : ", path);
		file.Close();
		return false;
	}
	long version = file.ReadLong();
	if (version > LH3D_CREATURE_SKIN_VERSION)
	{
		morphable_error("Unknown skin version : ", path);
		file.Close();
		return false;
	}
#ifdef VERSION_BW1WCI
	long tattooCount = LH3D_CREATURE_LEGACY_NUM_TATTOOS;
	memset(TattooSlotUsed, 0, sizeof(TattooSlotUsed));
	if (version > 3)
		tattooCount = file.ReadLong();
	for (i = 0; i < tattooCount; i++)
#else
	for (i = 0; i < ARRAY_SIZE(TattooSlotUsed); i++)
#endif
	{
		TattooSlotUsed[i] = file.ReadLong();
		if (TattooSlotUsed[i])
		{
			*(long*)&TattooPositions[i] = file.ReadLong();
			TattooScale[i] = file.ReadFloat();
			if (version > 1)
			{
				TattooFlip[i] = file.ReadLong();
				TattooRotate[i] = file.ReadLong();
			}
		}
	}
	HasLipIntersect = file.ReadLong();
	if (HasLipIntersect)
		LipIntersect.ReadBinary(&file);
	if (version > 2)
	{
		HasVomIntersect = file.ReadLong();
		if (HasVomIntersect)
			VomIntersect.ReadBinary(&file);
	}
	else
	{
		HasVomIntersect = false;
	}
	EyeScale = file.ReadFloat();
	for (i = 0; i < ARRAY_SIZE(EyeIntersects); i++)
	{
		EyeIntersects[i].ReadBinary(&file);
		HasEyeIntersect[i] = file.ReadLong();
		EyeNormalOffset[i] = file.ReadFloat();
	}
	for (i = 0; i < ARRAY_SIZE(EyeLidWideAngle); i++)
	{
		EyeLidWideAngle[i] = file.ReadFloat();
		EyeLidClosedAngle[i] = file.ReadFloat();
		EyeLidOpenAngle[i] = file.ReadFloat();
	}
	long hairGroupCount = file.ReadLong();
	for (i = 0; i < hairGroupCount; i++)
	{
		AddHairGroup();
		HairGroups[i]->ReadBinary(&file);
	}
	file.CloseSegment();
	file.Close();
	LoadExtraTexture();
	return true;
}

bool32_t LH3DCreature::SaveSkin(char* name)
{
	int            i;
	LHReleasedFile file;
	file.SetName(name);
	LoadAllAndClose();
	if (file.Open(LH_FILE_MODE_READ_WRITE) != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't create file : ", name);
		return false;
	}
	if (file.OpenSegment(LH3D_CREATURE_SEGMENT_NAME) != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't open segment Creature : ", name);
		file.Close();
		return false;
	}
	file.WriteLong(LH3D_CREATURE_SKIN_VERSION);
#ifdef VERSION_BW1WCI
	file.WriteLong(LH3D_CREATURE_NUM_TATTOOS);
#endif
	for (i = 0; i < ARRAY_SIZE(TattooSlotUsed); i++)
	{
		file.WriteLong(TattooSlotUsed[i]);
		if (TattooSlotUsed[i])
		{
			file.WriteLong(*(long*)&TattooPositions[i]);
			file.WriteFloat(TattooScale[i]);
			file.WriteLong(TattooFlip[i]);
			file.WriteLong(TattooRotate[i]);
		}
	}
	file.WriteLong(HasLipIntersect);
	if (HasLipIntersect)
	{
		LipIntersect.WriteBinary(&file);
	}
	file.WriteLong(HasVomIntersect);
	if (HasVomIntersect)
	{
		VomIntersect.WriteBinary(&file);
	}
	file.WriteFloat(EyeScale);
	for (i = 0; i < ARRAY_SIZE(EyeIntersects); i++)
	{
		EyeIntersects[i].WriteBinary(&file);
		file.WriteLong(HasEyeIntersect[i]);
		file.WriteFloat(EyeNormalOffset[i]);
	}
	for (i = 0; i < ARRAY_SIZE(EyeLidWideAngle); i++)
	{
		file.WriteFloat(EyeLidWideAngle[i]);
		file.WriteFloat(EyeLidClosedAngle[i]);
		file.WriteFloat(EyeLidOpenAngle[i]);
	}
	file.WriteLong(HairGroupCount);
	for (i = 0; i < HairGroupCount; i++)
	{
		HairGroups[i]->WriteBinary(&file);
	}
	file.CloseSegment();
	file.Close();
	return true;
}

uint32_t LH3DCreature::LoadBinary(char* filename, bool32_t start_creation)
{
	char specPath[64];
	char path[64];
	char soundPath[MAX_PATH];
	long version;
	int  i;

	AnimInfo* oldInfo = NULL;
	sprintf(path, "data\\ctr\\%s.cbn", filename);
	file.SetName(path);
	if (file.Open(LH_FILE_MODE_READ_ONLY) != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't open creature : ", path);
		return 0;
	}
	if (file.OpenSegment("Creature") != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't open segment Creature : ", path);
		file.Close();
		return 0;
	}
	version = file.ReadLong();
	if (version > LH3D_CREATURE_FILE_VERSION)
	{
		morphable_error("Unknown creature version : ", path);
		file.Close();
		return 0;
	}
	{
		long specVersion = file.ReadLong();
		if (specVersion > LH3D_CREATURE_SPEC_VERSION)
		{
			morphable_error("Unknown data version : ", path);
			file.Close();
			return 0;
		}
		if (specVersion < LH3D_CREATURE_SPEC_VERSION)
		{
			sprintf(specPath, "data\\ctrspec%d.txt", specVersion);
			oldInfo = NEW(311) AnimInfo;
			if (!oldInfo->Read(specPath))
			{
				morphable_error("Can't read : ", specPath);
				delete oldInfo;
				file.Close();
				return 0;
			}
		}
	}
	sprintf(specPath, "data\\ctrspec%d.txt", LH3D_CREATURE_SPEC_VERSION);
	AnimInfo* info = NEW(322) AnimInfo;
	if (!info->Read(specPath))
	{
		morphable_error("Can't read : ", specPath);
		delete oldInfo;
		delete info;
		file.Close();
		return 0;
	}
	if (!ReadBinary(&file, oldInfo ? oldInfo : info, info))
	{
		delete oldInfo;
		delete info;
		file.Close();
		return 0;
	}
	RightHand = file.ReadLong();
	RightFoot = file.ReadLong();
	if (version > 2)
	{
		RightArmpit = file.ReadLong();
		BellyBone = file.ReadLong();
	}
	HeadBone = file.ReadLong();
	if (version > 11)
	{
		field_0x51bc = file.ReadLong();
	}
	Anus = file.ReadLong();
	if (version > 4)
	{
		HeadGrowBone = file.ReadLong();
		GrowBone = file.ReadLong();
	}
	PickUpTime = file.ReadLong();
	if (version > 8)
	{
		PickUpFromHandTime = file.ReadLong();
		CatchTime = file.ReadLong();
	}
	if (version > 9)
	{
		PointTime = file.ReadLong();
	}
	DestroyTime = file.ReadLong();
	DiscardTime = file.ReadLong();
	EatTime = file.ReadLong();
	ThrowTime = file.ReadLong();
#ifdef VERSION_BW1WCI
	if (version > 22)
	{
		BowlTime = file.ReadLong();
	}
#endif
	PutDownTime = file.ReadLong();
	if (version > 15)
	{
		KickTime = file.ReadLong();
	}
	if (version > 7)
	{
		KissTime = file.ReadLong();
		HasLipIntersect = file.ReadLong();
		if (HasLipIntersect)
		{
			LipIntersect.ReadBinary(&file);
		}
	}
	if (version > 17)
	{
		HasVomIntersect = file.ReadLong();
		if (HasVomIntersect)
		{
			VomIntersect.ReadBinary(&file);
		}
	}
	if (version > 13)
	{
		EyeScale = file.ReadFloat();
		for (i = 0; i < ARRAY_SIZE(EyeIntersects); i++)
		{
			EyeIntersects[i].ReadBinary(&file);
			HasEyeIntersect[i] = file.ReadLong();
			EyeNormalOffset[i] = file.ReadFloat();
		}
		for (i = 0; i < ARRAY_SIZE(EyeLidWideAngle); i++)
		{
			EyeLidWideAngle[i] = file.ReadFloat();
			EyeLidClosedAngle[i] = file.ReadFloat();
			EyeLidOpenAngle[i] = file.ReadFloat();
		}
	}
	if (version > 18)
	{
		file.GetSegmentData(SoundBankName, sizeof(SoundBankName), -1);
	}
	else
	{
		memcpy(SoundBankName, filename, sizeof(SoundBankName));
	}
	if (version > 1)
	{
		if (version < 11)
		{
			long speed = file.ReadLong();
			for (i = 0; i < ARRAY_SIZE(DanceAnimSpeeds); i++)
			{
				DanceAnimSpeeds[i] = speed;
			}
		}
		else
		{
			for (i = 0; i < ARRAY_SIZE(DanceAnimSpeeds); i++)
			{
				DanceAnimSpeeds[i] = file.ReadLong();
			}
		}
	}
	for (i = 0; i < ARRAY_SIZE(AttackHitTimes); i++)
	{
		AttackHitTimes[i] = file.ReadLong();
		AttackBones[i] = file.ReadLong();
		if (version > 12)
		{
			AttackCutTypes[i] = file.ReadLong();
		}
	}
	if (version > 14)
	{
#ifdef VERSION_BW1WCI
		long tattooCount = LH3D_CREATURE_LEGACY_NUM_TATTOOS;
		memset(TattooSlotUsed, 0, sizeof(TattooSlotUsed));
		if (version >= 22)
		{
			tattooCount = file.ReadLong();
		}
		for (i = 0; i < tattooCount; i++)
#else
		for (i = 0; i < ARRAY_SIZE(TattooSlotUsed); i++)
#endif
		{
			TattooSlotUsed[i] = file.ReadLong();
			if (TattooSlotUsed[i])
			{
				*(long*)&TattooPositions[i] = file.ReadLong();
				TattooScale[i] = file.ReadFloat();
				if (version > 16)
				{
					TattooFlip[i] = file.ReadLong();
					TattooRotate[i] = file.ReadLong();
				}
			}
		}
	}
	if (version < 21)
	{
		IsBear = strcmp(filename, "bbear") == 0 || strcmp(filename, "bpolarbear") == 0;
	}
	else
	{
		IsBear = file.ReadLong();
	}
	for (i = 0; i < NumBoneMatrices; i++)
	{
		MirrorBones[i] = file.ReadLong();
		if (version == 20 && i == 0 && MirrorBones[0] != 0)
		{
			long first = MirrorBones[0];
			MirrorBones[0] = 0;
			i = 1;
			MirrorBones[1] = first;
		}
	}
	SelectMesh(0);
	GetSetAnim(0, 1, 0);
	GetSetAnim(0, 2, 0);
	GetSetAnim(0, 3, 0);
	GetSetAnim(0, 4, 0);
	GetSetAnim(0, 5, 0);
	for (i = C_FACE_SMILE; i < C_STATIC_START_SLEEP; i++)
	{
		SetAnimTime(i, LH3D_CREATURE_FACIAL_ANIM_TIME);
	}
	delete oldInfo;
	delete info;
	Radius2D = CalculateRadius2D();
	SetSize(1.0f);
	Inactive = false;
	if (start_creation)
	{
		GetAnim(C_FIGHT_EXTRA_CREATION, 1);
		StateSet(LH3D_CREATURE_STATE_CREATION);
	}
	sprintf(soundPath, "audio\\sfx\\creature\\%s.sad", SoundBankName);
	strcpy(FileName, filename);
	SoundBank = GGlobal::Global.audio->BankRegister(soundPath, 0);
	Boite = CollideBox::CreateCollideBoxes(meshes[CurrentMesh]);
	InitialiseDestructionBones();
	return 1;
}

void LH3DCreature::GetPositionMatrix(LHMatrix* matrix)
{
	LHPoint plusX(BodyRadius, 0.0f, 0.0f);
	LHPoint plusZ(0.0f, 0.0f, BodyRadius);
	LHPoint minusX(-BodyRadius, 0.0f, 0.0f);
	LHPoint minusZ(0.0f, 0.0f, -BodyRadius);
	plusX += position;
	plusZ += position;
	minusX += position;
	minusZ += position;
	float plusXAltitude;
	float plusZAltitude;
	float minusXAltitude;
	float minusZAltitude;
	if (InHand)
	{
		plusXAltitude = plusZAltitude = minusXAltitude = minusZAltitude = position.y;
	}
	else
	{
		plusXAltitude = GetAltitude(plusX);
		plusZAltitude = GetAltitude(plusZ);
		minusXAltitude = GetAltitude(minusX);
		minusZAltitude = GetAltitude(minusZ);
	}
	matrix->SetRotationY(Heading);
	float slopeX = LH3D_CREATURE_SLOPE_SCALE * (plusXAltitude - minusXAltitude) / (2.0f * BodyRadius);
	float slopeZ = LH3D_CREATURE_SLOPE_SCALE * (plusZAltitude - minusZAltitude) / (2.0f * BodyRadius);
	slopeX = min(slopeX, LH3D_CREATURE_MAX_SLOPE);
	slopeZ = min(slopeZ, LH3D_CREATURE_MAX_SLOPE);
	slopeX = max(slopeX, -LH3D_CREATURE_MAX_SLOPE);
	slopeZ = max(slopeZ, -LH3D_CREATURE_MAX_SLOPE);
	LHMatrix slope;
	slope.SetIdentity();
	slope._12 = slopeX;
	slope._32 = slopeZ;
	matrix->PostMultiply(slope);
	matrix->PostScale(Size2);
	matrix->PostTranslation(position);
}

void LH3DCreature::ApplyYoungOldToBuffer(LHMatrix* buffer, float head_scale, float feet_scale, float grow_scale)
{
	if (ApplyYoungOld)
	{
		if (HeadGrowBone != -1)
		{
			buffer[HeadGrowBone].ScaleMatrixOnly(head_scale);
		}
		if (RightHand != -1)
		{
			buffer[RightHand].ScaleMatrixOnly(feet_scale);
		}
		long mirror = GetMirrorBone(RightHand);
		if (mirror != -1)
		{
			buffer[mirror].ScaleMatrixOnly(feet_scale);
		}
		if (RightFoot != -1)
		{
			buffer[RightFoot].ScaleMatrixOnly(feet_scale);
		}
		mirror = GetMirrorBone(RightFoot);
		if (mirror != -1)
		{
			buffer[mirror].ScaleMatrixOnly(feet_scale);
		}
		if (GrowBone != -1)
		{
			buffer[GrowBone].ScaleMatrixOnly(grow_scale);
		}
		mirror = GetMirrorBone(GrowBone);
		if (mirror != -1)
		{
			buffer[mirror].ScaleMatrixOnly(grow_scale);
		}
	}
}

#define PROPORTION_SIZE                                                                                                \
	(Size1 > 0.0f ? (Size1 < LH3D_CREATURE_PROPORTION_MAX_SIZE ? Size1 : LH3D_CREATURE_PROPORTION_MAX_SIZE) : 0.0f)

float LH3DCreature::GetExtraEyesScale()
{
	float size = PROPORTION_SIZE;
	return (LH3D_CREATURE_EYES_SCALE_BASE - size * LH3D_CREATURE_EYES_SCALE_PER_SIZE) *
	       (EvilGood * LH3D_CREATURE_EYES_SCALE_PER_EVIL_GOOD + 1.0f);
}

float LH3DCreature::GetExtraHeadScale()
{
	float size = PROPORTION_SIZE;
	return LH3D_CREATURE_HEAD_SCALE_BASE - size * LH3D_CREATURE_HEAD_SCALE_PER_SIZE;
}

float LH3DCreature::GetExtraFeetScale()
{
	float size = PROPORTION_SIZE;
	return LH3D_CREATURE_FEET_SCALE_BASE - size * LH3D_CREATURE_FEET_SCALE_PER_SIZE;
}

float LH3DCreature::GetExtraGrowScale()
{
	float size = PROPORTION_SIZE;
	return LH3D_CREATURE_GROW_SCALE_BASE - size / LH3D_CREATURE_GROW_SCALE_SIZE_DIVISOR;
}

#undef PROPORTION_SIZE

void LogCFrame(CFrame* frame) {}

void LogCAnim(CAnim* anim) {}

#define LOG_CURRENT_BUFFER_MATRIXES(buffer)                                                                            \
	if (!creature || !(creature->Flags & GAME_THING_WITH_POS_FLAG_INTERACTING))                                        \
	{                                                                                                                  \
		LogCurrentBufferMatrixes(buffer, NumBoneMatrices, MoveState);                                                  \
	}

void LH3DCreature::UpdateBuffers()
{
	canim_bodge_for_bear = IsBear;
	LHMatrix transform;
	GetPositionMatrix(&transform);
	int       bufferSize = NumBoneMatrices * sizeof(LHMatrix);
	LHMatrix* previous = PreviousBuffer;
	PreviousBuffer = SafeBuffer0;
	SafeBuffer0 = previous;
	CAnim* anim = GetAnim(C_MOVE_STAND, 0);
	if (!anim || (Inactive && !CycleAnim[0]))
	{
		if (CurrentMesh == -1)
		{
			CurrentMesh = 0;
		}
		LH3DAnim::SetTransform(WorkBuffer, GetMesh(), transform);
	}
	else
	{
		bool32_t finished = false;
		float    headScale = GetExtraHeadScale();
		float    feetScale = GetExtraFeetScale();
		float    growScale = GetExtraGrowScale();
		long*    mirrorBones = ReverseAnim ? MirrorBones : NULL;
		if (CycleAnim[0])
		{
			if (!CycleAnim[1] || SafeBufferSelector)
			{
				if (!creature || !(creature->Flags & GAME_THING_WITH_POS_FLAG_INTERACTING))
				{
					LogCurrentBufferMatrixes(BaseMatrices, NumBoneMatrices, MoveState);
					LogCurrentBufferMatrixes(BaseMatrices, NumBoneMatrices, MoveState);
					LogCAnim(CycleAnim[0]);
				}
				CycleAnim[0]->FillBuffer(WorkBuffer, GetMesh(), BaseMatrices, InverseBaseMatrices, CycleTime[0], frame,
				                         mirrorBones, true);
				LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
				ApplyYoungOldToBuffer(WorkBuffer, headScale, feetScale, growScale);
				LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
			}
			else
			{
				bool32_t first = true;
				for (int i = 0; i < ARRAY_SIZE(CycleAnim); i++)
				{
					if (CycleWeight[i] != 0.0f)
					{
						CycleAnim[i]->FillBuffer(SafeBuffer1, GetMesh(), BaseMatrices, InverseBaseMatrices,
						                         CycleTime[i], frame, mirrorBones, true);
						ApplyYoungOldToBuffer(SafeBuffer1, headScale, feetScale, growScale);
						LH3DAnim::FinishTransform(SafeBuffer1, GetMesh(), transform);
						CombineFloats(WorkBuffer->m, SafeBuffer1->m, CycleWeight[i], bufferSize / (int)sizeof(float),
						              first);
						first = false;
						LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
					}
				}
				finished = true;
			}
			if (HeldObject)
			{
				switch (MoveState)
				{
				case LH3D_CREATURE_STATE_OBJECT_KEEP:
				case LH3D_CREATURE_STATE_OBJECT_REMOVE:
				case LH3D_CREATURE_STATE_PICKING_UP:
				case LH3D_CREATURE_STATE_PICK_UP_FROM_HAND:
				case LH3D_CREATURE_STATE_CATCH_ACTION:
					break;
				case LH3D_CREATURE_STATE_THROWING:
					if (TurningCompleted)
					{
						break;
					}
				default:
					if (finished)
					{
						LH3DAnim::UnFinishTransform(WorkBuffer, GetMesh(), transform);
						LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
						finished = false;
					}
					CAnim* holdAnim = GetAnim(C_PICKUP_HOLD, 0);
					holdAnim->FillBuffer(WorkBuffer, GetMesh(), BaseMatrices, InverseBaseMatrices,
					                     holdAnim->Duration - 1, frame, UseLeftHand ? MirrorBones : NULL, false);
					LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
					long hand = UseLeftHand ? GetMirrorBone(RightHand) : RightHand;
					if (hand != LH3D_BONE_NONE)
					{
						WorkBuffer[hand].ScaleMatrixOnly(feetScale);
					}
					LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
					break;
				}
			}
		}
		else
		{
			GetAnim(C_MOVE_STAND, 0)
				->FillBuffer(WorkBuffer, GetMesh(), BaseMatrices, InverseBaseMatrices, 0, NULL, NULL, true);
			LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
		}
		if (!Inactive)
		{
			if (finished)
			{
				LH3DAnim::UnFinishTransform(WorkBuffer, GetMesh(), transform);
				LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
				finished = false;
			}
			CAnim* lookPitchAnim = GetAnim(CurrentAnim == C_STATIC_SIT ? C_LOOK_SIT_D_U : C_LOOK_DOWN_UP, 0);
			if (lookPitchAnim && (fabs(LookRelativePitch) > LH3D_CREATURE_BLEND_EPSILON || HasLookPoint()))
			{
				float pitchFraction = (LookRelativePitch + HALF_PI_F) / PI_F;
				lookPitchAnim->ModifyBufferByDifferenceFromFrame(
					WorkBuffer, lookPitchAnim->frames[(lookPitchAnim->FrameCount - 1) / 2], GetMesh(), BaseMatrices,
					InverseBaseMatrices, pitchFraction * lookPitchAnim->Duration, frame, mirrorBones);
				LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
			}
			CAnim* lookHeadingAnim;
			if (CurrentAnim == C_STATIC_SIT)
			{
				lookHeadingAnim = GetAnim(C_LOOK_SIT_R_L, 0);
			}
			else
			{
				lookHeadingAnim = GetAnim(C_LOOK_RIGHT_LEFT, 0);
			}
			float lookHeading = mirrorBones ? -LookRelativeHeading : LookRelativeHeading;
			if (lookHeadingAnim && (fabs(LookRelativeHeading) > LH3D_CREATURE_BLEND_EPSILON || HasLookPoint()))
			{
				float headingFraction = (lookHeading + PI_F) / TWO_PI;
				lookHeadingAnim->ModifyBufferByDifferenceFromFrame(
					WorkBuffer, lookHeadingAnim->frames[(lookHeadingAnim->FrameCount - 1) / 2], GetMesh(), BaseMatrices,
					InverseBaseMatrices, headingFraction * lookHeadingAnim->Duration, frame, mirrorBones);
				LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
			}
			if (ForceApplied)
			{
				float heading = Heading;
				if (TurnAnim)
				{
					heading += angle_correct(RequiredHeading - Heading) * CycleTime[0] / TurnAnim->Duration;
				}
				LHMatrix rotation;
				for (int i = 0; i < LH3D_CREATURE_NUM_FORCES; i++)
				{
					rotation.SetRotationY(-heading);
					LHPoint& forceOffset = ForceOffsets[i];
					LHPoint  rotated;
					LHMATRIX_TRANSFORM_POINT(rotated, forceOffset, rotation);
					CAnim* sideAnim = GetAnim(i == 0 ? C_RECOIL_LO_R_L : C_RECOIL_HI_R_L, 0);
					if (sideAnim && fabs(rotated.x) > LH3D_CREATURE_BLEND_EPSILON)
					{
						float amount = boundf(-1.0f, rotated.x, 1.0f);
						float fraction = (amount + 1.0f) * 0.5f;
						sideAnim->ModifyBufferByDifferenceFromFrame(
							WorkBuffer, sideAnim->frames[(sideAnim->FrameCount - 1) / 2], GetMesh(), BaseMatrices,
							InverseBaseMatrices, fraction * sideAnim->Duration, frame, NULL);
						LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
					}
					CAnim* frontAnim = GetAnim(i == 0 ? C_RECOIL_LO_F_B : C_RECOIL_HI_F_B, 0);
					if (frontAnim && fabs(rotated.z) > LH3D_CREATURE_BLEND_EPSILON)
					{
						float amount = boundf(-1.0f, rotated.z, 1.0f);
						float fraction = (amount + 1.0f) * 0.5f;
						frontAnim->ModifyBufferByDifferenceFromFrame(
							WorkBuffer, frontAnim->frames[(frontAnim->FrameCount - 1) / 2], GetMesh(), BaseMatrices,
							InverseBaseMatrices, fraction * frontAnim->Duration, frame, NULL);
						LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
					}
				}
			}
#ifdef VERSION_BW1WCI
			if (HelpDude::s_TalkingDude == creature && HelpDude::s_PlayingSample)
			{
				CAnim* lipSyncAnim = GetAnim(C_FACE_AMAZED, 0);
				if (lipSyncAnim)
				{
					static float           lipSyncScale = 0.5f;
					static AutoVoiceParams voiceParams;
					VoiceKey               voiceKey;
					LH_AudioSystem*        audioSystem = GGlobal::Global.audio->AudioSystem;
					float                  lipOpening = 0.0f;
					if (HelpDude::CalcLipSync(audioSystem, (int)LH3DTech::g_game_time_inc * 0.001f, voiceParams,
					                          voiceKey) < 0)
					{
						HelpDude::s_PlayingSample = 0;
					}
					else
					{
						lipOpening = lipSyncScale * (voiceKey.Weight[0] + 0.5f * voiceKey.Weight[1]);
					}
					float fraction = boundf(0.0f, lipOpening, 1.0f);
					lipSyncAnim->ModifyBufferByDifferenceFromFrame(WorkBuffer, lipSyncAnim->frames[0], GetMesh(),
					                                               BaseMatrices, InverseBaseMatrices,
					                                               (lipSyncAnim->Duration - 1) * fraction, NULL, NULL);
					LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
				}
			}
			else if (CurrentFacialAction)
#else
			if (CurrentFacialAction)
#endif
			{
				CAnim* facialAnim = GetAnim(CurrentFacialAction, 0);
				if (facialAnim)
				{
					facialAnim->ModifyBufferByDifferenceFromFrame(WorkBuffer, facialAnim->frames[0], GetMesh(),
					                                              BaseMatrices, InverseBaseMatrices, FacialAnimTime,
					                                              NULL, NULL);
					LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
				}
			}
			if (ConcurrentAction)
			{
				CAnim* concurrentAnim = GetAnim(ConcurrentAction, 0);
				concurrentAnim->ModifyBufferByDifferenceFromFrame(WorkBuffer, concurrentAnim->frames[0], GetMesh(),
				                                                  BaseMatrices, InverseBaseMatrices,
				                                                  ConcurrentActionTime, NULL, NULL);
				LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
			}
		}
		if (!finished)
		{
			LH3DAnim::FinishTransform(WorkBuffer, GetMesh(), transform);
			LOG_CURRENT_BUFFER_MATRIXES(WorkBuffer);
		}
	}
	if (!SafeBufferLocked)
	{
		LHMatrix* temp = SafeBuffer0;
		SafeBuffer0 = WorkBuffer;
		WorkBuffer = temp;
	}
	if (!BuffersInitialised)
	{
		BuffersInitialised = true;
		memcpy(PreviousBuffer, SafeBuffer0, bufferSize);
	}
	canim_bodge_for_bear = false;
}

#undef LOG_CURRENT_BUFFER_MATRIXES

unsigned long MixWithSnowColour(unsigned long colour, LHPoint& pos)
{
	if (LH3DAtmos::scv != NULL)
	{
		int depth = (int)LH3DAtmos::scv->GetDepth(pos);
		depth = depth > 0 ? (depth < LH3D_COLOR_CHANNEL_MAX ? depth : LH3D_COLOR_CHANNEL_MAX) : 0;
		unsigned long snow = (LH3DSky::topcol.GetColor() & LH3D_COLOR_RGB_MASK) | (colour & LH3D_COLOR_ALPHA_MASK);
		return LH3D_BLEND_COLOR(colour, snow, depth);
	}
	return colour;
}

#define FOOTSTEP_PUFF_RANDOM_OFFSET                                                                                    \
	((long)GRand::LocalRand(2 * LH3D_CREATURE_FOOTSTEP_PUFF_SPREAD + 1) - LH3D_CREATURE_FOOTSTEP_PUFF_SPREAD)

void LH3DCreature::AddFootstepPuffs(long count)
{
	float scale = Size1 * LH3D_CREATURE_FOOTSTEP_PUFF_SPEED_SCALE;
	for (long i = 0; i < count; i++)
	{
		LHPoint velocity((float)FOOTSTEP_PUFF_RANDOM_OFFSET * scale, (float)FOOTSTEP_PUFF_RANDOM_OFFSET * scale,
		                 (float)FOOTSTEP_PUFF_RANDOM_OFFSET * scale);
		AddLiquidParticle(position, velocity, MixWithSnowColour(LH3D_CREATURE_FOOTSTEP_PUFF_COLOUR, position),
		                  Size1 * LH3D_CREATURE_FOOTSTEP_PUFF_SIZE_SCALE, LIQUID_PARTICLE_TYPE_PUFF);
	}
}

#undef FOOTSTEP_PUFF_RANDOM_OFFSET

void LH3DCreature::PrepareForDrawing()
{
	int   floatCount = NumBoneMatrices * (sizeof(LHMatrix) / sizeof(float));
	float weight = min(GGame::g_game->TurnFraction, LH3D_CREATURE_MAX_DRAW_WEIGHT);
	float inverseWeight = 1.0f - weight;
	if (NumSoundEffects != 0)
	{
		int                   played = 0;
		MorphableSoundEffect* effect = SoundEffects;
		float                 fraction = effect->Fraction;
		while (played < NumSoundEffects && weight > fraction)
		{
			PlayASoundEffect(effect->Sound, effect->Param, effect->Flag);
			effect++;
			played++;
			if (played < NumSoundEffects)
			{
				fraction = effect->Fraction;
			}
		}
		if (played == NumSoundEffects)
		{
			NumSoundEffects = 0;
		}
		else
		{
			NumSoundEffects -= played;
			for (int i = 0; i < NumSoundEffects; i++)
			{
				SoundEffects[i] = SoundEffects[played + i];
			}
		}
	}
	CombineFloats((float*)TransformedMatrices, (float*)SafeBuffer0, weight, floatCount, true);
	CombineFloats((float*)TransformedMatrices, (float*)PreviousBuffer, inverseWeight, floatCount, false);
	DynamicShadow->SetColorSpecular(LH3D_COLOR_WHITE, 0);
	DynamicShadow->SetMesh(meshes[CurrentMesh], NULL, NULL);
	DynamicShadow->BoneMatrices = TransformedMatrices;
	LH3DMesh::g_current_list_matrix = TransformedMatrices;
	if (GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL && !SetupBox::Showing)
	{
		float seconds = GGame::g_game->TimeInc / LH3D_CREATURE_MILLISECONDS_PER_SECOND;
		float timeStep = seconds > 0.0f ? (seconds < 1.0f ? seconds : 1.0f) : 0.0f;
		L3dHairGroup->Update(GetMesh(), timeStep, GetStandingHeight() * GetExtraHeadScale(), HairMaterial);
	}
	else
	{
		float seconds = LH3DTech::g_delta_time / LH3D_CREATURE_MILLISECONDS_PER_SECOND;
		float timeStep = seconds > 0.0f ? (seconds < 1.0f ? seconds : 1.0f) : 0.0f;
		L3dHairGroup->Update(GetMesh(), timeStep, GetStandingHeight() * GetExtraHeadScale(), HairMaterial);
	}
	LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
	LH3DMesh::g_current_list_matrix = TransformedMatrices;
	DynamicShadow->SetPosition(position, Heading + HALF_PI_F, Size2);
#ifdef VERSION_BW1WCI
	bool32_t invisible = false;
	if (creature && creature->ReceiveSpell->data[CREATURE_RECEIVE_SPELL_INVISIBLE].State)
	{
		invisible = true;
	}
	LH3DComplexObject* object = Get3DObject();
	if (object->GetShadowInfo())
	{
		if (invisible)
		{
			object->GetShadowInfo()->Enabled = false;
		}
		else
		{
			object->GetShadowInfo()->Enabled = true;
			DynamicShadow->PrepareShadow();
		}
	}
#else
	DynamicShadow->PrepareShadow();
#endif
	LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
}

uint32_t LH3DCreature::SaveBinary(char* filename)
{
	int            i;
	LHReleasedFile file;
	file.SetName(filename);
	LoadAllAndClose();
	if (file.Open(LH_FILE_MODE_READ_WRITE) != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't create file : ", filename);
		return 0;
	}
	if (file.OpenSegment(LH3D_CREATURE_SEGMENT_NAME) != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't open segment Creature : ", filename);
		file.Close();
		return 0;
	}
	file.WriteLong(LH3D_CREATURE_FILE_VERSION);
	file.WriteLong(LH3D_CREATURE_SPEC_VERSION);
	WriteBinary(&file, MORPHABLE_ANIM_COUNT);
	file.WriteLong(RightHand);
	file.WriteLong(RightFoot);
	file.WriteLong(RightArmpit);
	file.WriteLong(BellyBone);
	file.WriteLong(HeadBone);
	file.WriteLong(field_0x51bc);
	file.WriteLong(Anus);
	file.WriteLong(HeadGrowBone);
	file.WriteLong(GrowBone);
	file.WriteLong(PickUpTime);
	file.WriteLong(PickUpFromHandTime);
	file.WriteLong(CatchTime);
	file.WriteLong(PointTime);
	file.WriteLong(DestroyTime);
	file.WriteLong(DiscardTime);
	file.WriteLong(EatTime);
	file.WriteLong(ThrowTime);
#ifdef VERSION_BW1WCI
	file.WriteLong(BowlTime);
#endif
	file.WriteLong(PutDownTime);
	file.WriteLong(KickTime);
	file.WriteLong(KissTime);
	file.WriteLong(HasLipIntersect);
	if (HasLipIntersect)
	{
		LipIntersect.WriteBinary(&file);
	}
	file.WriteLong(HasVomIntersect);
	if (HasVomIntersect)
	{
		VomIntersect.WriteBinary(&file);
	}
	file.WriteFloat(EyeScale);
	for (i = 0; i < ARRAY_SIZE(EyeIntersects); i++)
	{
		EyeIntersects[i].WriteBinary(&file);
		file.WriteLong(HasEyeIntersect[i]);
		file.WriteFloat(EyeNormalOffset[i]);
	}
	for (i = 0; i < ARRAY_SIZE(EyeLidWideAngle); i++)
	{
		file.WriteFloat(EyeLidWideAngle[i]);
		file.WriteFloat(EyeLidClosedAngle[i]);
		file.WriteFloat(EyeLidOpenAngle[i]);
	}
	file.WriteSegmentData(SoundBankName, sizeof(SoundBankName));
	for (i = 0; i < ARRAY_SIZE(DanceAnimSpeeds); i++)
	{
		file.WriteLong(DanceAnimSpeeds[i]);
	}
	for (i = 0; i < ARRAY_SIZE(AttackHitTimes); i++)
	{
		file.WriteLong(AttackHitTimes[i]);
		file.WriteLong(AttackBones[i]);
		file.WriteLong(AttackCutTypes[i]);
	}
#ifdef VERSION_BW1WCI
	file.WriteLong(LH3D_CREATURE_NUM_TATTOOS);
#endif
	for (i = 0; i < ARRAY_SIZE(TattooSlotUsed); i++)
	{
		file.WriteLong(TattooSlotUsed[i]);
		if (TattooSlotUsed[i])
		{
			file.WriteLong(*(long*)&TattooPositions[i]);
			file.WriteFloat(TattooScale[i]);
			file.WriteLong(TattooFlip[i]);
			file.WriteLong(TattooRotate[i]);
		}
	}
	file.WriteLong(IsBear);
	for (i = 0; i < NumBoneMatrices; i++)
	{
		file.WriteLong(MirrorBones[i]);
	}
	file.CloseSegment();
	file.Close();
	return 1;
}

void LH3DCreature::ValidateThrowPositions()
{
	if (!ThrowPositionsValid)
	{
		LHMatrix identity;
		identity.SetIdentity();
		for (int i = C_THROW_HURL_FLAT; i <= C_THROW_HURL_HIGH; i++)
		{
			CAnim* anim = GetAnim(i, 0);
			if (anim)
			{
				anim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices,
				                 InverseBaseMatrices, ThrowTime, frame, NULL, true);
				LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
				LHPoint releasePosition;
				LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], releasePosition, RightHand);
				anim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices,
				                 InverseBaseMatrices, max(ThrowTime - LH3D_CREATURE_RELEASE_VELOCITY_SAMPLE_TIME, 0),
				                 frame, NULL, true);
				LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
				LHPoint previousPosition;
				LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], previousPosition, RightHand);
				if (i == C_THROW_HURL_HIGH)
				{
					ThrowPosHigh = releasePosition;
				}
				else if (i == C_THROW_HURL_FLAT)
				{
					ThrowPosFlat = releasePosition;
				}
				releasePosition -= previousPosition;
				releasePosition.x = 0.0f;
				float speed = SquareRoot(releasePosition * releasePosition) * LH3D_CREATURE_RELEASE_VELOCITY_SCALE *
				              LH3D_CREATURE_THROW_SPEED_SCALE;
				if (i == C_THROW_HURL_HIGH)
				{
					ThrowYH = ThrowZH = speed;
				}
				else if (i == C_THROW_HURL_FLAT)
				{
					ThrowZL = speed;
					ThrowYL = -speed;
				}
			}
		}
		ThrowPositionsValid = true;
	}
}

void LH3DCreature::ValidateKissPositions()
{
	if (!KissPositionsValid)
	{
		LHMatrix identity;
		identity.SetIdentity();
		LHPoint position;
		LHPoint normal;
		for (int i = C_MISC_KISS_HI; i <= C_MISC_KISS_LO; i++)
		{
			CAnim* anim = GetAnim(i, 0);
			if (anim)
			{
				anim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices,
				                 InverseBaseMatrices, KissTime, frame, NULL, true);
				LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
				if (HasLipIntersect)
				{
					LipIntersect.GetWorldPositionAndInwardNormal(meshes[CurrentMesh], LH3DMesh::g_current_list_matrix,
					                                             &position, &normal);
				}
				else
				{
					LHMatrix* head = &LH3DMesh::g_current_list_matrix[HeadBone];
					position.Set(head->_41, head->_42, head->_43);
				}
				if (i == C_MISC_KISS_HI)
				{
					KissPositionA = position;
				}
				else if (i == C_MISC_KISS_LO)
				{
					KissPositionB = position;
				}
			}
		}
		KissPositionsValid = true;
	}
}

void LH3DCreature::ValidatePickUpFromHandPosition()
{
	if (!PickUpFromHandPositionValid)
	{
		LHMatrix identity;
		identity.SetIdentity();
		CAnim* anim = GetAnim(C_PICKUP_FROM_HAND, 0);
		if (anim)
		{
			anim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices, InverseBaseMatrices,
			                 PickUpFromHandTime, frame, NULL, true);
			LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
			LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], PickUpFromHandPosition, RightHand);
		}
		else
		{
			PickUpFromHandPosition.SetNull();
		}
		PickUpFromHandPositionValid = true;
	}
}

void LH3DCreature::ValidatePickUpPositions()
{
	if (!PickUpPositionsValid)
	{
		LHMatrix identity;
		identity.SetIdentity();
		for (int i = C_PICKUP_FRONT_RIGHT; i <= C_PICKUP_BACK_LEFT; i++)
		{
			CAnim* anim = GetAnim(i, 0);
			if (anim)
			{
				anim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices,
				                 InverseBaseMatrices, PickUpTime, frame, NULL, true);
				LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
				if (i == C_PICKUP_BACK_LEFT)
				{
					LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], PickUpPositions[0], RightHand);
				}
				else if (i == C_PICKUP_BACK_RIGHT)
				{
					LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], PickUpPositions[1], RightHand);
				}
				else if (i == C_PICKUP_FRONT_LEFT)
				{
					LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], PickUpPositions[2], RightHand);
				}
				else if (i == C_PICKUP_FRONT_RIGHT)
				{
					LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], PickUpPositions[3], RightHand);
				}
			}
		}
		PickUpPositionsValid = true;
	}
}

void LH3DCreature::ValidateRemovePositions()
{
	if (!RemovePositionsValid)
	{
		LHMatrix identity;
		identity.SetIdentity();
		CAnim* discardAnim = GetAnim(C_OBJECT_REMOVE_DISCARD, 0);
		if (discardAnim)
		{
			discardAnim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices,
			                        InverseBaseMatrices, DiscardTime, frame, NULL, true);
			LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
			LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], DiscardPosition, RightHand);
			discardAnim->FillBuffer(
				LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices, InverseBaseMatrices,
				max(DiscardTime - LH3D_CREATURE_RELEASE_VELOCITY_SAMPLE_TIME, 0), frame, NULL, true);
			LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
			LHPoint previousPosition;
			LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], previousPosition, RightHand);
			DiscardVelocity = (DiscardPosition - previousPosition) * LH3D_CREATURE_RELEASE_VELOCITY_SCALE;
			CAnim* putDownAnim = GetAnim(C_OBJECT_REMOVE_PUT_DOWN, 0);
			if (putDownAnim)
			{
				putDownAnim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices,
				                        InverseBaseMatrices, PutDownTime, frame, NULL, true);
				LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
				LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], PutDownPosition, RightHand);
				RemovePositionsValid = true;
			}
		}
	}
}

void LH3DCreature::ValidateDestructionPositions()
{
	if (!DestructionPositionsValid)
	{
		LHMatrix identity;
		identity.SetIdentity();
		for (int i = C_DESTROY_FRONT_RIGHT; i <= C_DESTROY_BACK_LEFT; i++)
		{
			CAnim* anim = GetAnim(i, 0);
			if (anim)
			{
				anim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices,
				                 InverseBaseMatrices, DestroyTime, frame, NULL, true);
				LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
				LHMatrix* footMatrix = &LH3DMesh::g_current_list_matrix[RightFoot];
				if (i == C_DESTROY_BACK_LEFT)
				{
					DestructionPositions[0].Set(footMatrix->_41, footMatrix->_42, footMatrix->_43);
				}
				else if (i == C_DESTROY_BACK_RIGHT)
				{
					DestructionPositions[1].Set(footMatrix->_41, footMatrix->_42, footMatrix->_43);
				}
				else if (i == C_DESTROY_FRONT_LEFT)
				{
					DestructionPositions[2].Set(footMatrix->_41, footMatrix->_42, footMatrix->_43);
				}
				else if (i == C_DESTROY_FRONT_RIGHT)
				{
					DestructionPositions[3].Set(footMatrix->_41, footMatrix->_42, footMatrix->_43);
				}
			}
		}
		DestructionPositionsValid = true;
	}
}

void LH3DCreature::ValidateFightPositions()
{
	if (!FightPositionsValid)
	{
		LHMatrix identity;
		identity.SetIdentity();
		for (int i = C_FIGHT_ATTACK_HIGH; i <= C_FIGHT_ATTACK_SPECIAL2; i++)
		{
			int    attack = i - C_FIGHT_ATTACK_HIGH;
			CAnim* anim = GetAnim(i, 0);
			if (anim && AttackHitTimes[attack] >= LH3D_CREATURE_ATTACK_VELOCITY_SAMPLE_TIME)
			{
				anim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices,
				                 InverseBaseMatrices, AttackHitTimes[attack], frame, NULL, true);
				LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
				LHMatrix* bone = &LH3DMesh::g_current_list_matrix[AttackBones[attack]];
				AttackPositions[attack].Set(bone->_41, bone->_42, bone->_43);
				anim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices,
				                 InverseBaseMatrices,
				                 AttackHitTimes[attack] - LH3D_CREATURE_ATTACK_VELOCITY_SAMPLE_TIME, frame, NULL, true);
				LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
				LHPoint previousPosition(bone->_41, bone->_42, bone->_43);
				AttackVelocities[attack] =
					(AttackPositions[attack] - previousPosition) * LH3D_CREATURE_ATTACK_VELOCITY_SCALE;
				AttackPositions[attack].x = 0.0f;
				AttackPositions[attack].z += AttackHitTimes[attack] * anim->Movement.z / anim->Duration;
			}
		}
		FightPositionsValid = true;
	}
}

void LH3DCreature::ValidateCatchPositions()
{
	if (!CatchPositionsValid)
	{
		LHMatrix identity;
		identity.SetIdentity();
		for (int i = C_CATCH_HI_R; i <= C_CATCH_LO_L; i++)
		{
			CAnim* anim = GetAnim(i, 0);
			if (anim)
			{
				anim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices,
				                 InverseBaseMatrices, CatchTime, frame, NULL, true);
				LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
				if (i == C_CATCH_LO_L)
				{
					LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], CatchPositions[0], RightHand);
				}
				else if (i == C_CATCH_LO_R)
				{
					LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], CatchPositions[1], RightHand);
				}
				else if (i == C_CATCH_HI_L)
				{
					LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], CatchPositions[2], RightHand);
				}
				else if (i == C_CATCH_HI_R)
				{
					LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], CatchPositions[3], RightHand);
				}
			}
		}
		CatchPositionsValid = true;
	}
}

void LH3DCreature::ValidateKickPositions()
{
	if (!KickPositionValid)
	{
		LHMatrix identity;
		identity.SetIdentity();
		CAnim* anim = GetAnim(C_DESTROY_KICK_LOW, 0);
		if (anim)
		{
			anim->FillBuffer(LH3DMesh::g_current_list_matrix, meshes[CurrentMesh], BaseMatrices, InverseBaseMatrices,
			                 PickUpFromHandTime, frame, NULL, true);
			LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, meshes[0], identity);
			LH3DAnim::GetGraspPoint(LH3DMesh::g_current_list_matrix, meshes[0], KickPosition, RightFoot);
		}
		else
		{
			KickPosition.SetNull();
		}
		KickPositionValid = true;
	}
}

void RotateSmoothly(float* angle, float target, float* speed, float acceleration, float time, float limit)
{
	if (fabs(*angle - target) < ROTATE_SMOOTHLY_EPSILON)
	{
		*angle = target;
		*speed = 0.0f;
		return;
	}
	float distance = fabs(target - *angle);
	float maxSpeed = sqrt(distance * acceleration * 2.0f);
	float limitSpeed = maxSpeed < distance / time ? maxSpeed : distance / time;
	if (*angle > target)
	{
		*speed = *speed - acceleration * time;
	}
	else if (*angle < target)
	{
		*speed = *speed + acceleration * time;
	}
	*speed = *speed > -limitSpeed ? (*speed < limitSpeed ? *speed : limitSpeed) : -limitSpeed;
	*angle = boundf(-limit, *angle + *speed * time, limit);
}

static void CombineFloats(float* dst, const float* src, float weight, int count, bool32_t overwrite)
{
	for (int i = 0; i < count; i++)
	{
		float value = weight * src[i];
		if (!overwrite)
		{
			value += dst[i];
		}
		dst[i] = value;
	}
}
