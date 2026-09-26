#ifndef BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H
#define BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <string.h> /* For memcpy */

#include <re_common.h> /* For bool32_t */

#include <chlasm/GStates.h> /* For VILLAGER_STATE_LAST_STATE */

#include <Lionhead/LHFile/ver3.0/LHFile.h> /* For struct LHFile */
#include <Lionhead/LHLib/ver5.0/LHWin.h>   /* For operator new(size_t, const char*, uint32_t) */

#include "BaseInfo.h" /* For struct GBaseInfo */

class GVillagerStateTableInfo : public GBaseInfo
{
public:
	// Static data

	// BW1W120 00db9e68 BW1M119 01b9a988
	static GVillagerStateTableInfo Infos[VILLAGER_STATE_LAST_STATE];

	// BW1W120 inlined BW1M119 inlined
	void LoadBinary(LHFile* file)
	{
		uint8_t* temp = new ("C:\\dev\\MP\\Black\\VillagerStates.h", 23) uint8_t[get_size()];
		file->GetSegmentData(temp, get_size(), -1);
		memcpy(get_start(), temp, get_size());
		delete[] temp;
		SetInfoID();
	}

	// BW1W120 inlined BW1M119 inlined
	uint32_t LoadTextAndCache(char** cursor, LHFile* file)
	{
		file->WriteSegmentData(*cursor, get_size());
		memcpy(get_start(), *cursor, get_size());
		*cursor += get_size();
		SetInfoID();
		return get_size();
	}

	// BW1W120 inlined BW1M119 0119fbb0
	char* get_start() { return (char*)&field_0x10; }
	// BW1W120 inlined BW1M119 0119fc00
	unsigned long get_size() { return sizeof(GVillagerStateTableInfo) - sizeof(GBaseInfo); }

	uint32_t field_0x10;
	int      field_0x14;
	float    field_0x18;
	bool32_t isFinalState;
	int      field_0x20;
	uint32_t field_0x24;
	uint32_t isScriptState;
	uint32_t isScriptInterruptableState;
	int      field_0x30;
	uint32_t field_0x34;
	char     name[0x80];
	int      field_0xb8;
	uint32_t field_0xbc;
	uint32_t field_0xc0;
	uint32_t field_0xc4;
	int      field_0xc8;
	uint32_t field_0xcc;
	int      field_0xd0;
	int      field_0xd4;
	float    field_0xd8;
	float    field_0xdc;
	uint32_t field_0xe0;
	uint32_t field_0xe4;
	uint32_t field_0xe8;
	int      field_0xec;
	uint32_t field_0xf0;
	uint32_t field_0xf4;
	uint32_t field_0xf8;
	uint32_t field_0xfc;
	uint32_t field_0x100;
	uint32_t field_0x104;
	float    field_0x108;
	uint32_t field_0x10c;
	uint32_t field_0x110;

	// Override methods

	// BW1W120 007695f0 BW1M119 015a3490
	virtual ~GVillagerStateTableInfo();
	// BW1W120 00769580 BW1M119 015a35b0
	virtual GBaseInfo* GetBaseInfo(uint32_t& count);

	// Static methods

	// BW1W120 inlined BW1M119 0104d9a0
	static GVillagerStateTableInfo* GetInfo() { return Infos; }
};

#endif /* BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H */
