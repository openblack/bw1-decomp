#ifndef BW1_DECOMP_LH3D_ANIM_INCLUDED_H
#define BW1_DECOMP_LH3D_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For MAX_COUNT_3D_ANIMS */

#include "LHPoint.h" /* For struct LHPoint */

enum AnimInfoType
{
	AnimInfoType_Minus = 0x0,
	AnimInfoType_C = 0x1,
	AnimInfoType_N = 0x2,
	AnimInfoType_L = 0x6,
	AnimInfoType_W = 0x9,
	AnimInfoType_D = 0x10,
	_AnimInfoType_COUNT = 0x11
};

// Forward Declares

struct AnimInfo;
struct LH3DAnim;
struct LH3DMesh;
class LHFile;
struct LHFilePath;
struct LHMatrix;

typedef char ANM_Name[0x20];

struct CFrame
{
	LHPoint* field_0x0;
	LHPoint* Positions;

	// Non-virtual methods

	// BW1W120 00860c30 BW1M119 010dbac0 (LHCombined Release)
	void ReadBinary(LHFile* file, long param_3, long param_4);
};

struct CAnim
{
	int      Duration;
	uint32_t field_0x4;
	float    field_0x8[0x2];
	LHPoint  Movement;
	int      FrameCount;
	uint32_t field_0x20;
	int      FrameField0x0Count;
	int      FrameField0x4Count;
	int*     FrameField0x0Indices;
	int*     FrameField0x4Indices; /* 0x30 */
	CFrame** frames;

	// Constructors

	// BW1W120 0085e480 BW1M119 011c2c38 (LHCombined Release)
	CAnim();
	// BW1W120 0085e4c0 BW1M119 0112eff0 (LHCombined Release)
	CAnim(CAnim* param_2);
	// BW1W120 0085e9d0 BW1M119 01096f70 (LHCombined Release)
	CAnim(CAnim* param_2, CFrame* param_3, CAnim* param_4, CFrame* param_5, float param_6);
	// BW1W120 0085ef40 BW1M119 010b9180 (LHCombined Release)
	CAnim(CAnim* param_2, CFrame* param_3, CAnim* param_4, CFrame* param_5, float param_6, CAnim* param_7,
	      CFrame* param_8, float param_9);
	// BW1W120 0085f690 BW1M119 inlined
	CAnim(CAnim* anim, CFrame* frame);
	// BW1W120 0085fd00 BW1M119 inlined
	CAnim(LH3DMesh* mesh, LHMatrix* base, LHMatrix* inverse_base, LH3DAnim* anim);

	// Non-virtual methods

	// BW1W120 0085e490 BW1M119 011299e0 (LHCombined Release)
	~CAnim();
	// BW1W120 0085e4a0 BW1M119 0112ef90 (LHCombined Release)
	void Release();
	// BW1W120 00860be0 BW1M119 0110eaf0 (LHCombined Release)
	int GetWriteSize();
	// BW1W120 00860a70 BW1M119 01078820 (LHCombined Release)
	void WriteBinary(LHFile* file);
	// BW1W120 00861a00 BW1M119 010fbf90 (LHCombined Release)
	void AdjustForNewBasedOnStand(CAnim* param_2, CAnim* param_3);
	// BW1W120 00860e00 BW1M119 01031bd0 (LHCombined Release)
	void FillBuffer(LHMatrix* buffer, LH3DMesh* mesh, LHMatrix* param_3, LHMatrix* param_4, long frame, CFrame* param_6,
	                long* param_7, int param_8);
	// BW1W120 00861ee0 BW1M119 010328b0 (LHCombined Release)
	void ModifyBufferByDifferenceFromFrame(LHMatrix* buffer, CFrame* base_frame, LH3DMesh* mesh, LHMatrix* param_4,
	                                       LHMatrix* param_5, long frame, CFrame* param_7, long* param_8);
	// BW1W120 00860860 BW1M119 010950e0 (LHCombined Release)
	void ReadBinary(LHFile* file);
};

struct LH3DAnimSet
{
	CAnim* anims[0xe8];  /* 0x0 */
	int    loaded[0xe8]; /* 0x3a0 */
	int    offset[0xe8]; /* 0x740 */

	// Constructors

	// BW1W120 006170e0 BW1M119 01112980
	LH3DAnimSet();

	// Non-virtual methods

	// BW1W120 00619b80 BW1M119 0110f440
	uint32_t ReadBinaryNew(LHFile* param_2, AnimInfo* param_3, AnimInfo* param_4);
};

struct CatInfo
{
	int          AnimationCount; /* 0x0 */
	ANM_Name     AnimationNames[0x18];
	AnimInfoType AnimationType[0x18]; /* 0x304 */

	// Non-virtual methods

	// BW1W120 004c4970 BW1M119 01235db0
	char Read(LHFilePath* path);
};

struct AnimInfo
{
	uint32_t SpecVersion; /* 0x0 */
	int      CategoryCount;
	ANM_Name CategoryNames[0x18];
	CatInfo  categories[0x18]; /* 0x308 */

	// Non-virtual methods

	// BW1W120 004c4ab0 BW1M119 01235c00
	uint32_t Read(char* spec_filename);
};

struct LH3DAnim;

struct LH3DAnimSound
{
	uint32_t       field_0x0;
	long           Frame;
	long           Sound;
	int            Variation;
	LH3DAnimSound* Next;
};

struct LH3DAnimPack
{
	int       AnimCount; /* 0x0 */
	LH3DAnim* Anims[MAX_COUNT_3D_ANIMS];
};

enum LH3D_ANIM_FLAGS
{
	LH3D_ANIM_FLAG_CYCLIC = 0x100,
	LH3D_ANIM_FLAG_TIME_BASED = 0x200,
};

struct LH3DAnim
{
	ANM_Name       name; /* 0x0 */
	int            Duration;
	uint8_t        field_0x24;
	uint8_t        field_0x25;
	uint8_t        field_0x26;
	uint8_t        field_0x27;
	float          Distance;
	uint8_t        field_0x2c;
	uint8_t        field_0x2d;
	uint8_t        field_0x2e;
	uint8_t        field_0x2f;
	uint8_t        field_0x30;
	uint8_t        field_0x31;
	uint8_t        field_0x32;
	uint8_t        field_0x33;
	uint8_t        field_0x34;
	uint8_t        field_0x35;
	uint8_t        field_0x36;
	uint8_t        field_0x37;
	int            NumFrames;
	int            field_0x3c;
	uint8_t        field_0x40;
	uint8_t        field_0x41;
	uint8_t        field_0x42;
	uint8_t        field_0x43;
	int            SoundType;
	LH3DAnimSound* Sounds; /* 0x48 */
	int**          ListPtrFrames;
	uint32_t       Flags; /* 0x50 */
	uint32_t       CurrentTimeMaybe;
	uint32_t       field_0x58;
	uint32_t       PackIndex2;

	// Static data

	// BW1W120 00edd508
	static LH3DAnimPack* AnimPack;

	// Static methods

	// BW1W120 inlined BW1M119 inlined
	static LH3DAnim* GetPackedAnim(int index)
	{
		if (index < AnimPack->AnimCount && index >= 0)
		{
			return AnimPack->Anims[index];
		}
		return AnimPack->Anims[0];
	}
	// BW1W120 0083a0e0 BW1M119 0113e8f0 (LHCombined Release)
	static void GetGraspPoint(LHMatrix* matrices, LH3DMesh* mesh, LHPoint& point, long bone);
	// BW1W120 0083a1d0 BW1M119 01129510 (LHCombined Release)
	static float SetTransform(LHMatrix* bones, LH3DMesh* mesh, LHMatrix& transform);
	// BW1W120 00839f10 BW1M119 0101e440 (LHCombined Release)
	static void FinishTransform(LHMatrix* bones, LH3DMesh* mesh, LHMatrix& transform);
	// The world transform of one bone, as FinishTransform would leave it.
	// BW1W120 00839fa0 BW1M119 0113e250 (LHCombined Release)
	static LHMatrix FinishTransformForBone(LHMatrix* bones, LH3DMesh* mesh, LHMatrix& transform, int bone);
	// BW1W120 00839900 BW1M119 01126380 (LHCombined Release)
	static LH3DAnim* Load(char* filename);
	// BW1W120 0083a020 BW1M119 011437f0 (LHCombined Release)
	static void UnFinishTransform(LHMatrix* bones, LH3DMesh* mesh, LHMatrix& transform);
	// BW1W120 0083aa30 BW1M119 01128810 (LHCombined Release)
	static void CreatePack();

	// Non-virtual methods

	// BW1W120 0083a6a0 BW1M119 0101f950 (LHCombined Release)
	int GetListPtrFrames();
	// BW1W120 0083add0 BW1M119 01033790 (LHCombined Release)
	int GetIndexInCache();
	// BW1W120 inlined BW1M119 01018c60
	uint32_t IsCyclic() const { return Flags & LH3D_ANIM_FLAG_CYCLIC; }
};

#endif /* BW1_DECOMP_LH3D_ANIM_INCLUDED_H */
