#ifndef BW1_DECOMP_SCRIPT_MANAGE_INCLUDED_H
#define BW1_DECOMP_SCRIPT_MANAGE_INCLUDED_H

#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include "BaseInfo.h" /* For class BaseInfo */

#ifdef VERSION_BW1WCI
#define SCRIPT_MANAGE_TABLE_SIZE 1024
#else
#define SCRIPT_MANAGE_TABLE_SIZE 512
#endif
#define SCRIPT_MANAGE_FIRST_SLOT 1

class GameOSFile;

class ScriptManage : public BaseInfo
{
public:
	// BW1W120 00d967f8
	static ScriptManage Table[SCRIPT_MANAGE_TABLE_SIZE];
	// BW1W120 00d99000
	static uint32_t TotalReferences;
	// BW1W120 00d95c04
	static uint32_t NextFreeSlot;

	uint32_t field_0xc;
	uint8_t  field_0x10;

	// Non-virtual methods

	// BW1W120 0070d690 BW1M119 01506930
	bool32_t Save(GameOSFile& file);
	// BW1W120 0070d740 BW1M119 015067d0
	bool32_t Load(GameOSFile& file);
};

#endif /* BW1_DECOMP_SCRIPT_MANAGE_INCLUDED_H */
