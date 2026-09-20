#ifndef BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H
#define BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHFile/ver3.0/LHFile.h> /* For struct LHFile */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CreatureDevelopmentDurationEntry : public GBaseInfo
{
public:
	uint32_t field_0x10[0xe];

	// Override methods

	// BW1W120 004db5c0 BW1M100 1025bfd0 CreatureDevelopmentDurationEntry::CreatureDevelopmentDurationEntry(void)
	virtual ~CreatureDevelopmentDurationEntry() {}
	// BW1W120 004db560 BW1M100 1025c590 CreatureDevelopmentDurationEntry::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Non-virtual methods

	// BW1W120 0042e0c0 BW1M100 inlined CreatureDevelopmentDurationEntry::LoadBinary(LHFile *)
	void LoadBinary(LHFile* file)
	{
		uint32_t* temp = new uint32_t[0xe];
		file->GetSegmentData(temp, sizeof(field_0x10), -1);
		for (int i = 0; i < 0xe; i++)
			field_0x10[i] = temp[i];
		delete[] temp;
		SetInfoID();
	}
};

class CreatureDevelopmentPhaseEntry : public GBaseInfo
{
public:
	uint32_t field_0x10[0x1d];

	// Override methods

	// BW1W120 004db4f0 BW1M100 1025c220 CreatureDevelopmentPhaseEntry::_dt(void)
	virtual ~CreatureDevelopmentPhaseEntry() {}
	// BW1W120 004db480 BW1M100 1025c4d0 CreatureDevelopmentPhaseEntry::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Non-virtual methods

	// BW1W120 0042e030 BW1M100 inlined CreatureDevelopmentPhaseEntry::LoadBinary(LHFile *)
	void LoadBinary(LHFile* file)
	{
		uint32_t* temp = new uint32_t[0x1d];
		file->GetSegmentData(temp, sizeof(field_0x10), -1);
		for (int i = 0; i < 0x1d; i++)
			field_0x10[i] = temp[i];
		delete[] temp;
		SetInfoID();
	}
};

#endif /* BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H */
