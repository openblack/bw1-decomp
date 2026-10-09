#ifndef BW1_DECOMP_MORPHABLE_INCLUDED_H
#define BW1_DECOMP_MORPHABLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t, uintptr_t */

#include <Lionhead/LH3DLib/development/LH3DAnim.h> /* For struct LH3DAnimSet */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint */
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h> /* For struct LHReleasedFile */

#include "DrawingObject.h" /* For struct DrawingObject */
#include "Name.h"          /* For struct Name */

// Forward Declares

struct AnimInfo;
struct CAnim;
struct CFrame;
struct HairGroup;
class LH3DComplexObject;
struct LH3DMesh;
struct LH3DObjectHair;
class LHFile;
struct LHMatrix;
struct Morphable_field_0x4314_t;

struct MorphableSoundEffect
{
	long field_0x0;
	long Sound;
	long Param;
	bool Flag;
};

class Morphable : public DrawingObject
{
public:
	uintptr_t                 field_0x4;
	uint8_t                   field_0x8;
	uint8_t                   field_0x9;
	uint8_t                   field_0xa;
	uint8_t                   field_0xb;
	LHReleasedFile            file;
	LHPoint                   position;
	float                     Heading;
	uint8_t                   field_0x88;
	uint8_t                   field_0x89;
	uint8_t                   field_0x8a;
	uint8_t                   field_0x8b;
	float                     field_0x8c;
	float                     Size1;
	float                     Size2;
	int                       CurrentMesh;
	float                     EvilGood;
	float                     field_0xa0;
	float                     ThinFat;
	float                     field_0xa8;
	float                     WeakStrong;
	uint8_t                   field_0xb0;
	uint8_t                   field_0xb1;
	uint8_t                   field_0xb2;
	uint8_t                   field_0xb3;
	LH3DMesh*                 meshes[0x8];
	Name                      names[0x8];
	LH3DAnimSet               AnimSets[0x6];
	Morphable_field_0x4314_t* field_0x4314[0xe8];
	MorphableSoundEffect      SoundEffects[16];
	int                       NumSoundEffects;
	int                       field_0x47b8;
	int                       field_0x47bc;
	CAnim*                    CycleAnim[4];
	long                      CycleTime[4];
	float                     CycleWeight[4];
	LHMatrix*                 TransformedMatrices;
	LHMatrix*                 field_0x47f4;
	LHMatrix*                 field_0x47f8;
	CFrame*                   frame;
	int32_t                   HairGroupCount;
	HairGroup*                HairGroups[0x8];
	uint32_t                  field_0x4824;
	LH3DObjectHair*           L3dHairGroup;
	LH3DComplexObject*        DynamicShadow;
	uint32_t                  field_0x4830;

	// Override methods

	// BW1W120 00617eb0 BW1M119 01111500
	virtual void SetAnimTime(int param_1, int param_2);
	// BW1W120 00618360 BW1M119 01110b70
	virtual uint32_t LoadBase(char* param_1);
	virtual void     SetSize(float size) = 0;
	// BW1W120 00619100 BW1M119 0110fba0
	virtual void MorphAnims();
	// BW1W120 00619500 BW1M119 0110f960
	virtual void     MorphTexture();
	virtual void     UpdateTime(int time) = 0;
	virtual void     PrepareForDrawing() = 0;
	virtual uint32_t AddForDrawing() = 0;
	virtual uint32_t LoadBinary(char* filename, int param_1) = 0;
	virtual uint32_t SaveBinary(char* filename) = 0;

	// Destructor

	// BW1W120 006171a0 BW1M119 01112650
	~Morphable();

	// Static methods

	// BW1W120 006186b0 BW1M119 011109f0
	static uint32_t LoadExtraTexture();

	// Non-virtual methods

	// BW1W120 00617310 BW1M119 01112440
	void MorphInit(LHPoint& point, long param_3, void* param_4);
	// BW1W120 00617470 BW1M119 01112360
	uint32_t AddHairGroup();
	// BW1W120 00617620 BW1M119 01112090
	void SelectMesh(int param_1);
	// BW1W120 00617ae0 BW1M119 011116d0
	uint32_t ReadBinary(LHFile* file, AnimInfo* info_1, AnimInfo* info_2);
	// BW1W120 00617ee0 BW1M119 01111220
	void ReadExtraDataBinary(LHFile* param_1, AnimInfo* param_2, AnimInfo* param_3, long param_4);
	// BW1W120 00618720 BW1M119 01110510
	uint32_t LoadMesh(char* param_2, int param_3);
	// BW1W120 006182f0 BW1M119 01110f20
	void SetPos(const LHPoint& pos);
	// BW1W120 00617970 BW1M119 01111d40
	void CheckSounds(long anim, long old_time, long new_time);
	// BW1W120 00617a10 BW1M119 01111c30
	long AdvanceCyclic(long anim, long time, long delta);
	// BW1W120 00617a80 BW1M119 01111b50
	long AdvanceSimple(long anim, long time, long delta);
	// BW1W120 00618c40 BW1M119 0107bcd0
	void UpdateMorphing();
	// BW1W120 00619650 BW1M119 01086c40
	CAnim* GetAnim(long anim_index, long param_3);
	// BW1W120 00619690 BW1M119 01086830
	CAnim* GetSetAnim(long param_1, long param_2, long param_3);
	// BW1W120 inlined BW1M119 01095450
	LHPoint& GetPos() { return position; }
	// BW1W120 inlined BW1M119 010898e0
	LH3DComplexObject* Get3DObject() { return DynamicShadow; }
	// BW1W120 inlined BW1M119 010cddf0
	LHMatrix* GetMatrixBuffer() { return TransformedMatrices; }
	// BW1W120 inlined BW1M119 013e2420
	float GetHeading() { return Heading; }
	// BW1W120 inlined BW1M119 01231c70
	float GetSize() { return Size1; }
	// BW1W120 inlined BW1M119 012031e0
	float GetEvilGood() { return EvilGood; }
	// BW1W120 inlined BW1M119 01203220
	float GetWeakStrong() { return WeakStrong; }
	// BW1W120 inlined BW1M119 01203260
	float GetThinFat() { return ThinFat; }
	// BW1W120 inlined BW1M119 011effa0
	LH3DMesh* GetMesh() { return meshes[CurrentMesh]; }
};

#endif /* BW1_DECOMP_MORPHABLE_INCLUDED_H */
