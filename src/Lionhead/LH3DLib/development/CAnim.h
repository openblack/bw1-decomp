#ifndef BW1_DECOMP_CANIM_INCLUDED_H
#define BW1_DECOMP_CANIM_INCLUDED_H

#include "LHPoint.h" /* For struct LHPoint */

#include <re_common.h> /* For bool32_t */

// Forward Declares

struct LH3DAnim;
struct LH3DMesh;
class LHFile;
struct LHMatrix;

#define CANIM_MAX_BONES 0x80

struct RemapInfo
{
	long  field_0x0;
	long  NumBones;
	long* Remap;
};

struct CFrame
{
	LHPoint* Angles;
	LHPoint* Positions;

	// Non-virtual methods

	// BW1W120 00860c30 BW1M119 010dbac0 (LHCombined Release)
	void ReadBinary(LHFile* file, long angle_count, long position_count);
	// BW1W120 00860d00 BW1M119 011076a0 (LHCombined Release)
	void WriteBinary(LHFile* file, long angle_count, long position_count);
	// BW1W120 00860dd0 BW1M119 01101610 (LHCombined Release)
	int GetWriteSize(long angle_count, long position_count);
};

struct CAnim
{
	int      Duration;
	bool32_t Cyclic;
	float    field_0x8;
	float    Distance;
	LHPoint  Movement;
	int      FrameCount;
	int      NumBones;
	int      AngleCount;
	int      PositionCount;
	long*    AngleBones;
	long*    PositionBones;
	CFrame** frames;

	// Constructors

	// BW1W120 0085e480 BW1M119 0112c100 (LHCombined Release)
	CAnim();
	// BW1W120 0085e4c0 BW1M119 0112eff0 (LHCombined Release)
	CAnim(CAnim* anim);
	// BW1W120 0085e650 BW1M119 011284e0 (LHCombined Release)
	CAnim(CAnim* anim, long frame, bool32_t insert);
	// BW1W120 0085e830 BW1M119 010d9690 (LHCombined Release)
	CAnim(CAnim* anim, float angle);
	// BW1W120 0085e9d0 BW1M119 01096f70 (LHCombined Release)
	CAnim(CAnim* anim1, CFrame* stand1, CAnim* anim2, CFrame* stand2, float blend);
	// BW1W120 0085ef40 BW1M119 010b9180 (LHCombined Release)
	CAnim(CAnim* anim1, CFrame* stand1, CAnim* anim2, CFrame* stand2, float blend2, CAnim* anim3, CFrame* stand3,
	      float blend3);
	// BW1W120 0085f690 BW1M119 010d98f0 (LHCombined Release)
	CAnim(CAnim* anim, CFrame* stand);
	// BW1W120 0085fa90 BW1M119 0113e3c0 (LHCombined Release)
	CAnim(CFrame* stand, CAnim* anim);
	// BW1W120 0085fd00 BW1M119 0113df70 (LHCombined Release)
	CAnim(LH3DMesh* mesh, LHMatrix* base, LHMatrix* inverse_base, LH3DAnim* anim);
	// BW1W120 0085fff0 BW1M119 01080ca0 (LHCombined Release)
	CAnim(CAnim* anim, RemapInfo* remap, CFrame* stand, CFrame* mirror, float blend);

	// Non-virtual methods

	// BW1W120 0085e490 BW1M119 011299e0 (LHCombined Release)
	~CAnim();
	// BW1W120 0085e4a0 BW1M119 0112ef90 (LHCombined Release)
	void Release();
	// BW1W120 00860860 BW1M119 010950e0 (LHCombined Release)
	void ReadBinary(LHFile* file);
	// BW1W120 00860a70 BW1M119 01078820 (LHCombined Release)
	void WriteBinary(LHFile* file);
	// BW1W120 00860be0 BW1M119 0110eaf0 (LHCombined Release)
	int GetWriteSize();
	// BW1W120 00860e00 BW1M119 01031bd0 (LHCombined Release)
	void FillBuffer(LHMatrix* buffer, LH3DMesh* mesh, LHMatrix* base, LHMatrix* inverse_base, long time, CFrame* stand,
	                long* mirror_bones, bool32_t fill_all);
	// BW1W120 00861a00 BW1M119 010fbf90 (LHCombined Release)
	void AdjustForNewBasedOnStand(CAnim* old_stand, CAnim* new_stand);
	// BW1W120 00861ee0 BW1M119 010328b0 (LHCombined Release)
	void ModifyBufferByDifferenceFromFrame(LHMatrix* buffer, CFrame* base_frame, LH3DMesh* mesh, LHMatrix* base,
	                                       LHMatrix* inverse_base, long time, CFrame* stand, long* mirror_bones);
};

#endif /* BW1_DECOMP_CANIM_INCLUDED_H */
