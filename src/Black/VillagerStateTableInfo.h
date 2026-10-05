#ifndef BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H
#define BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <string.h> /* For memcpy */

#include <re_common.h> /* For bool32_t */

#include <chlasm/GStates.h> /* For VILLAGER_STATE_LAST_STATE */

#include <Lionhead/LHFile/ver3.0/LHFile.h> /* For struct LHFile */
#include <Lionhead/LHLib/ver5.0/LHWin.h>   /* For operator new(size_t, const char*, uint32_t) */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

class GVillagerStateTableInfo : public GBaseInfo
{
public:
	// Static data

	// BW1W120 00db9e68 BW1M119 01b9a988
	static GVillagerStateTableInfo Infos[VILLAGER_STATE_LAST_STATE];

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

	// TODO(#377): The original declared this class in VillagerStates.h.
	INFO_DATA_BLOCK(field_0x10, field_0x110)
	INFO_ROOT_LOADERS("VillagerStates.h", 23)
};

#endif /* BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H */
