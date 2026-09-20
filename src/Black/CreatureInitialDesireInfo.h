#ifndef BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_DESIRE_SOURCE */
#include <chlasm/Enum.h>         /* For NUM_CREATURE_DESIRES */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CreatureInitialDesireInfo : public GBaseInfo
{
public:
	CREATURE_DESIRE_SOURCE Sources[8]; /* 0x10 */
	uint32_t               field_0x30[0x7];
	float                  DesireDecay;      /* 0x4c, fabricated name */
	float                  InitialValueMin;  /* 0x50, fabricated name */
	float                  InitialValueMax;  /* 0x54 */
	uint32_t               field_0x58[0x8];  /* 0x58 */
	float                  DesireGrowthRate; /* 0x78, fabricated name */
	uint32_t               field_0x7c[0x51]; /* 0x7c */

	// Override methods

	// BW1W120 004918a0 BW1M100 1022e850 CreatureInitialDesireInfo::~CreatureInitialDesireInfo(void)
	virtual ~CreatureInitialDesireInfo() {}
	// BW1W120 00491830 BW1M100 1022ec70 CreatureInitialDesireInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);

	// BW1W120 0x00c67e90 BW1M100 0x10a856b8
	static CreatureInitialDesireInfo g_CreatureInitialDesireInfos[NUM_CREATURE_DESIRES];
};
static_assert(sizeof(CreatureInitialDesireInfo) == 0x1c0, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H */
