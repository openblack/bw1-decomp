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
	uint8_t                   field_0x9c;
	uint8_t                   field_0x9d;
	uint8_t                   field_0x9e;
	uint8_t                   field_0x9f;
	float                     field_0xa0;
	uint8_t                   field_0xa4;
	uint8_t                   field_0xa5;
	uint8_t                   field_0xa6;
	uint8_t                   field_0xa7;
	float                     field_0xa8;
	uint8_t                   field_0xac;
	uint8_t                   field_0xad;
	uint8_t                   field_0xae;
	uint8_t                   field_0xaf;
	uint8_t                   field_0xb0;
	uint8_t                   field_0xb1;
	uint8_t                   field_0xb2;
	uint8_t                   field_0xb3;
	LH3DMesh*                 meshes[0x8];
	Name                      names[0x8];    /* 0xd4 */
	LH3DAnimSet               AnimSets[0x6]; /* 0x1d4 */
	Morphable_field_0x4314_t* field_0x4314[0xe8];
	uint8_t                   field_0x46b4[0x104];
	int                       field_0x47b8;
	uint8_t                   field_0x47bc[0x24];
	float                     field_0x47e0;
	uint8_t                   field_0x47e4[0xc];
	LHMatrix*                 TransformedMatrices; /* 0x47f0 */
	LHMatrix*                 field_0x47f4;
	LHMatrix*                 field_0x47f8;
	CFrame*                   frame;
	int32_t                   HairGroupCount; /* 0x4800 */
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
	// BW1W120 00619650 BW1M119 01086c40
	CAnim* GetAnim(long anim_index, long param_3);
	// BW1W120 00619690 BW1M119 01086830
	CAnim* GetSetAnim(long param_1, long param_2, long param_3);
	// BW1W120 inlined BW1M119 01095450
	LHPoint& GetPos() { return position; }
	// BW1W120 inlined BW1M119 013e2420
	float GetHeading() { return Heading; }
};

#endif /* BW1_DECOMP_MORPHABLE_INCLUDED_H */
