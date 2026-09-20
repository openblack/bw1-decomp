#ifndef BW1_DECOMP_HAIR_GROUP_INCLUDED_H
#define BW1_DECOMP_HAIR_GROUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct LH3DHair;
class LHFile;

struct HairGroup
{
	bool      field_0x0;
	int       HairCount;
	uint32_t  field_0x8[0x3];
	uint32_t  field_0x14[0x3];
	uint32_t  field_0x20[0x3];
	float     field_0x2c[0x3];
	float     field_0x38[0x3];
	float     field_0x44[0x3];
	float     field_0x50[0x3];
	uint32_t  Count0x5c;
	uint32_t  field_0x60;
	uint32_t  field_0x64;
	uint32_t  field_0x68;
	uint32_t  field_0x6c;
	uint32_t  field_0x70;
	LH3DHair* hairs;
	uint32_t  field_0x78;

	// Non-virtual methods

	// BW1W120 00847b50 BW1M100 10041060 HairGroup::DeleteHair(long)
	void DeleteHair(int param_1);
	// BW1W120 008479e0 BW1M100 10041400 HairGroup::Init(long)
	void Init(long param_1);
	// BW1W120 00848180 BW1M100 101376f0 HairGroup::ReadBinary(LHFile *)
	void ReadBinary(LHFile* param_1);
};

#endif /* BW1_DECOMP_HAIR_GROUP_INCLUDED_H */
