#ifndef BW1_DECOMP_SCRIPT_MANAGE_INCLUDED_H
#define BW1_DECOMP_SCRIPT_MANAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "BaseInfo.h" /* For class BaseInfo */

#define SCRIPT_MANAGE_MAX_REFERENCES 255

#ifdef VERSION_BW1WCI
#define SCRIPT_MANAGE_TABLE_SIZE 1024
#else
#define SCRIPT_MANAGE_TABLE_SIZE 512
#endif

enum SCRIPT_MANAGE_SLOT
{
	SCRIPT_MANAGE_SLOT_NONE = 0,
	SCRIPT_MANAGE_SLOT_FIRST = 1,
};

// Forward Declares

class Base;
class GameOSFile;

class ScriptManage : public BaseInfo
{
public:
	bool32_t CreatedByScript; /* 0xc */
	uint8_t  NoReferences;

	// Static data

	// BW1W120 00d967f8
	static ScriptManage VariableTable[SCRIPT_MANAGE_TABLE_SIZE];
	// BW1W120 00d95c04
	static uint32_t NextFreeSlot;
	// BW1W120 00d99000
	static uint32_t TotalReferences;

	// Override methods

	// BW1W120 0070ce90 BW1M119 01507d40
	virtual bool32_t IsClear() const { return GetNoReferences() == 0 && BaseInfo::IsClear(); }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 010464e0
	uint8_t GetNoReferences() const { return NoReferences; }
	// BW1W120 0070d5f0 BW1M119 01007970
	void IncreaseReferenceCount();
	// BW1W120 0070d670 BW1M119 inlined
	void DecreaseReferenceCount();
	// BW1W120 0070d690 BW1M119 01506930
	bool32_t Save(GameOSFile& file);
	// BW1W120 0070d740 BW1M119 015067d0
	bool32_t Load(GameOSFile& file);
	// BW1W120 0070d800 BW1M119 01000410
	void Clear();
	// BW1W120 0070d810 BW1M119 01000470
	void ClearThingOnly();
	// BW1W120 0070d820 BW1M119 null
	void SetIds(uint32_t unique_id, uint32_t address_offset);
	// BW1W120 0070d840 BW1M119 inlined
	void SetThing(Base* thing);
	// BW1W120 0070d870 BW1M119 inlined
	void SetThing(Base* thing, bool32_t created_by_script);
};
static_assert(sizeof(ScriptManage) == 0x14, "Data type is of wrong size");

#endif /* BW1_DECOMP_SCRIPT_MANAGE_INCLUDED_H */
