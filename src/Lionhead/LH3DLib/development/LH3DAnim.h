#ifndef BW1_DECOMP_LH3D_ANIM_INCLUDED_H
#define BW1_DECOMP_LH3D_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For MAX_COUNT_3D_ANIMS */

#include "CAnim.h"   /* For struct CAnim */
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

// The bone matrices of one sub-mesh in a frame of an animation.
struct LH3DAnimSubMeshFrame
{
	long      NumMatrices;
	LHMatrix* Matrices;
};

struct LH3DAnimFrame
{
	LH3DAnimSubMeshFrame** SubMeshes;
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
	ANM_Name        name; /* 0x0 */
	int             Duration;
	float           field_0x24;
	float           Distance;
	LHPoint         Movement; /* 0x2c */
	int             NumFrames;
	int             field_0x3c;
	uint8_t         field_0x40;
	uint8_t         field_0x41;
	uint8_t         field_0x42;
	uint8_t         field_0x43;
	int             SoundType;
	LH3DAnimSound*  Sounds; /* 0x48 */
	LH3DAnimFrame** ListPtrFrames;
	uint32_t        Flags; /* 0x50 */
	uint32_t        CurrentTimeMaybe;
	uint32_t        field_0x58;
	uint32_t        PackIndex2;

	// Static data

	// BW1W120 00edd508 BW1M119 011e36d4 (LHCombined Release)
	static LH3DAnimPack* g_pack;

	// Static methods

	// BW1W120 inlined BW1M119 inlined
	static LH3DAnim* GetPackedAnim(int index)
	{
		if (index < g_pack->AnimCount && index >= 0)
		{
			return g_pack->Anims[index];
		}
		return g_pack->Anims[0];
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

	// BW1W120 00839970 BW1M119 011281e0 (LHCombined Release)
	void Release();
	// BW1W120 00839980 BW1M119 010281a0 (LHCombined Release)
	float SetTransform(LHMatrix* bones, LH3DMesh* mesh, long time, LHMatrix& transform);
	// BW1W120 0083a6a0 BW1M119 0101f950 (LHCombined Release)
	LH3DAnimFrame** GetListPtrFrames();
	// BW1W120 0083add0 BW1M119 01033790 (LHCombined Release)
	int GetIndexInCache();
	// BW1W120 inlined BW1M119 01018c60
	uint32_t IsCyclic() const { return Flags & LH3D_ANIM_FLAG_CYCLIC; }
};

#endif /* BW1_DECOMP_LH3D_ANIM_INCLUDED_H */
