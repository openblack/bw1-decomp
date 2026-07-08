#ifndef BW1_DECOMP_LH3D_ANIM_INCLUDED_H
#define BW1_DECOMP_LH3D_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

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
struct LH3DMesh;
class LHFile;
struct LHFilePath;
struct LHMatrix;
struct CFrameData;

typedef char ANM_Name[0x20];

struct CFrame
{
	CFrameData* field_0x0;
	CFrameData* field_0x4;

	// Non-virtual methods

	// BW1W120 00860c30 BW1M100 100dc860 CFrame::ReadBinary(LHFile *, long, long)
	void ReadBinary(LHFile* file, long param_3, long param_4);
};

struct CAnim
{
	uint32_t frame_offset; /* 0x0 */
	uint32_t field_0x4;
	float    field_0x8[0x5];
	uint32_t frame_count; /* 0x1c */
	uint32_t field_0x20;
	int      frame_field_0x0_count;
	int      frame_field_0x4_count;
	int*     frame_field_0x0_indices;
	int*     frame_field_0x4_indices; /* 0x30 */
	CFrame** frames;

	// Constructors

	// BW1W120 0085e480 BW1M100 1061ff4c CAnim::CAnim(void)
	CAnim();
	// BW1W120 0085e4c0 BW1M100 1061bb54 CAnim::CAnim(CAnim *)
	CAnim(CAnim* param_2);
	// BW1W120 0085ef40 BW1M100 1061e2fc CAnim::CAnim(CAnim *, CFrame *, CAnim *, CFrame *, float, CAnim *, CFrame *, float)
	CAnim(CAnim* param_2, CFrame* param_3, CAnim* param_4, CFrame* param_5, float param_6, CAnim* param_7,
	      CFrame* param_8, float param_9);

	// Non-virtual methods

	// BW1W120 0085e4a0 BW1M100 1061b7c4 CAnim::~CAnim(void)
	~CAnim();
	// BW1W120 00861a00 BW1M100 1061fa9c CAnim::AdjustForNewBasedOnStand(CAnim *, CAnim *)
	void AdjustForNewBasedOnStand(CAnim* param_2, CAnim* param_3);
	// BW1W120 00860860 BW1M100 106200cc CAnim::ReadBinary(LHFile *)
	void ReadBinary(LHFile* file);
};

struct LH3DAnimSet
{
	CAnim* anims[0xe8];  /* 0x0 */
	int    loaded[0xe8]; /* 0x3a0 */
	int    offset[0xe8]; /* 0x740 */

	// Constructors

	// BW1W120 006170e0 BW1M100 10109260 LH3DAnimSet::LH3DAnimSet(void)
	LH3DAnimSet();

	// Non-virtual methods

	// BW1W120 00619b80 BW1M100 101059e0 LH3DAnimSet::ReadBinaryNew
	uint32_t ReadBinaryNew(LHFile* param_2, AnimInfo* param_3, AnimInfo* param_4);
};

struct CatInfo
{
	int          animation_count; /* 0x0 */
	ANM_Name     animation_names[0x18];
	AnimInfoType animation_type[0x18]; /* 0x304 */

	// Non-virtual methods

	// BW1W120 004c4970 BW1M100 10230ed0 CatInfo::Read(std::_FILE *)
	char Read(LHFilePath* path);
};

struct AnimInfo
{
	uint32_t spec_version; /* 0x0 */
	int      category_count;
	ANM_Name category_names[0x18];
	CatInfo  categories[0x18]; /* 0x308 */

	// Non-virtual methods

	// BW1W120 004c4ab0 BW1M100 10230d20 AnimInfo::Read(char *)
	uint32_t Read(char* spec_filename);
};

struct LH3DAnim
{
	ANM_Name name; /* 0x0 */
	int      field_0x20;
	uint8_t  field_0x24;
	uint8_t  field_0x25;
	uint8_t  field_0x26;
	uint8_t  field_0x27;
	float    field_0x28;
	uint8_t  field_0x2c;
	uint8_t  field_0x2d;
	uint8_t  field_0x2e;
	uint8_t  field_0x2f;
	uint8_t  field_0x30;
	uint8_t  field_0x31;
	uint8_t  field_0x32;
	uint8_t  field_0x33;
	uint8_t  field_0x34;
	uint8_t  field_0x35;
	uint8_t  field_0x36;
	uint8_t  field_0x37;
	int      num_frames;
	int      field_0x3c;
	uint8_t  field_0x40;
	uint8_t  field_0x41;
	uint8_t  field_0x42;
	uint8_t  field_0x43;
	uint8_t  field_0x44;
	uint8_t  field_0x45;
	uint8_t  field_0x46;
	uint8_t  field_0x47;
	uint32_t parents;
	int**    list_ptr_frames;
	uint16_t field_0x50;
	uint16_t pack_index_1;
	uint32_t current_time_maybe;
	uint32_t field_0x58;
	uint32_t pack_index_2;

	// Static methods

	// BW1W120 0083a1d0 BW1M100 10129570 LH3DAnim::SetTransform(LH3DMatrix*, LH3DMesh*, LH3DMatrix*)
	static float SetTransform(LHMatrix* param_1, LH3DMesh* param_2, LHMatrix* param_3);
	// BW1W120 0083aa30 BW1M100 1061eac4 LH3DAnim::CreatePack(void)
	static void CreatePack();

	// Non-virtual methods

	// BW1W120 0083a6a0 BW1M100 1001f930 LH3DAnim::GetListPtrFrames
	int GetListPtrFrames();
};

#endif /* BW1_DECOMP_LH3D_ANIM_INCLUDED_H */
