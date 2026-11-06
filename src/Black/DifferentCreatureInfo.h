#ifndef BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H
#define BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For CREATURE_TYPE_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class DifferentCreatureInfo : public GBaseInfo
{
public:
	float    field_0x10;
	float    field_0x14;
	float    field_0x18;
	float    field_0x1c;
	float    field_0x20;
	float    field_0x24;
	float    Strength;
	float    field_0x2c;
	float    field_0x30;
	float    field_0x34;
	float    WalkSpeed;
	float    RunSpeed;
	float    field_0x40;
	float    field_0x44;
	float    field_0x48;
	float    BurnDefenceMultiplier;
	float    CrushDefenceMultiplier;
	float    HitDefenceMultiplier;
	float    field_0x58;
	uint32_t field_0x5c;
	float    field_0x60;
	float    field_0x64;
	float    AlignmentChangeScale;

	// Override methods

	// BW1W120 00472d50 BW1M119 011d9c40
	virtual ~DifferentCreatureInfo();
	// BW1W120 00472cf0 BW1M119 011ea060
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00c5fd30
	static DifferentCreatureInfo Infos[CREATURE_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 011e9db0
	static DifferentCreatureInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Creature.h.
	// Out of line: LoadBinary at 0042e7e0, Load at 0042e7a0.
	INFO_DATA_BLOCK(field_0x10, AlignmentChangeScale)
	INFO_ROOT_LOADERS("Creature.h", 169)
};

#endif /* BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H */
