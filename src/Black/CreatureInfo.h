#ifndef BW1_DECOMP_CREATURE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For CREATURE_TYPE_LAST */

#include "LivingInfo.h"  /* For struct GLivingInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class CreatureInfo : public GLivingInfo
{
public:
	uint32_t CreatureType; /* 0x1f4 */
	float    field_0x1f8[0x4];
	uint32_t field_0x208;
	float    field_0x20c;
	uint32_t field_0x210;
	float    field_0x214[0x11];
	float    RunSpeed; /* 0x258 */
	float    field_0x25c[0x3];
	uint32_t field_0x268;
	uint32_t field_0x26c;
	uint32_t field_0x270;
	float    MinDesireLevel;
	float    field_0x278;
	float    MinDesireIncreaseTime;
	float    MaxDesireIncreaseTime;
	uint32_t field_0x284;
	float    field_0x288[0x8];
	uint32_t field_0x2a8;
	float    field_0x2ac[0x9];
	float    MaxDesireLevelFeedbackScale;
	float    field_0x2d4[0x2];
	float    SecondsBeforeReactingToSameCreatureAgain;
	float    field_0x2e0[0x19];
	uint32_t field_0x344;
	float    MaxAlignmentChangePerGameTurn[0xf];
	float    AlignmentChangeScale; /* 0x384 */
	float    field_0x388[0x3];

	// Override methods

	// BW1W120 00472c80 BW1M119 011d9dd0
	virtual ~CreatureInfo();
	// BW1W120 00472c10 BW1M119 011e9f90
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00c60460
	static CreatureInfo Infos[CREATURE_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 011e9e60
	static CreatureInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Creature.h.
	// Out of line: LoadBinary at 0042e6c0, Load at 0042e620.
	INFO_DATA_BLOCK(CreatureType, field_0x388)
	INFO_DERIVED_LOADERS(GLivingInfo, "Creature.h", 160)
};

#endif /* BW1_DECOMP_CREATURE_INFO_INCLUDED_H */
