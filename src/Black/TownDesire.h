#ifndef BW1_DECOMP_TOWN_DESIRE_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For TOWN_DESIRE_INFO_LAST, enum TOWN_DESIRE_INFO */

#include "Base.h" /* For struct Base */

// Forward Declares

class GTownDesireInfo;
class Town;
class Villager;

struct DesireSort
{
	uint32_t              field_0x0;
	float                 field_0x4;
	enum TOWN_DESIRE_INFO field_0x8;
};

class TownDesire : public Base
{
public:
	struct field_0x8_t
	{
		uint8_t field_0x0[0x8];
	};

	field_0x8_t field_0x8[TOWN_DESIRE_INFO_LAST];
	float       field_0x90[TOWN_DESIRE_INFO_LAST];
	float       field_0xd4[TOWN_DESIRE_INFO_LAST];
	float       field_0x118[TOWN_DESIRE_INFO_LAST];
	uint32_t    field_0x15fc; /* 0x15c */
	Town*       town;         /* 0x160 */
	float       field_0x164;
	float       field_0x168[TOWN_DESIRE_INFO_LAST];
	uint32_t    field_0x1ac[TOWN_DESIRE_INFO_LAST];
	uint32_t    field_0x1f0[TOWN_DESIRE_INFO_LAST];
	uint32_t    field_0x234[TOWN_DESIRE_INFO_LAST];
	DesireSort  sorts[TOWN_DESIRE_INFO_LAST];  /* 0x278 */
	DesireSort  sorts2[TOWN_DESIRE_INFO_LAST]; /* 0x344 */
	uint32_t    field_0x410[TOWN_DESIRE_INFO_LAST];
	float       field_0x454[TOWN_DESIRE_INFO_LAST];
	uint32_t    field_0x498[TOWN_DESIRE_INFO_LAST];
	float       field_0x4dc[TOWN_DESIRE_INFO_LAST];
	uint32_t    field_0x520[TOWN_DESIRE_INFO_LAST];

	// Override methods

	// BW1W120 00745730 BW1M100 1055ea40 TownDesire::_dt(void)
	virtual ~TownDesire();

	// Constructors

	// BW1W120 00745710 BW1M100 1055ead0 TownDesire::TownDesire(void)
	TownDesire();

	// Non-virtual methods

	// BW1W120 00745ae0 BW1M100 1005c8d0 TownDesire::Process(void)
	void Process();
	// BW1W120 00745ff0 TownDesire::CheckVillagerNeededForTownDesire(Villager *, float)
	// TODO: incorrect return type
	void CheckVillagerNeededForTownDesire(Villager* villager, float trigger);
	// BW1W120 00745f80 BW1M100 1005d280 TownDesire::GetInfo(unsigned long) const
	GTownDesireInfo* GetInfo(unsigned long desire) const;
	// BW1W120 007465d0 BW1M100 1055dee0 TownDesire::GetSortedDesire(unsigned long)
	DesireSort* GetSortedDesire(uint32_t index);
};

#endif /* BW1_DECOMP_TOWN_DESIRE_INCLUDED_H */
