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
	// Mac GameOSFile::ReadSafe (10301420) exposes these as separate float arrays.
	float      field_0x8[TOWN_DESIRE_INFO_LAST];
	float      field_0x4c[TOWN_DESIRE_INFO_LAST];
	float      field_0x90[TOWN_DESIRE_INFO_LAST];
	float      field_0xd4[TOWN_DESIRE_INFO_LAST];
	float      field_0x118[TOWN_DESIRE_INFO_LAST];
	uint32_t   field_0x15fc; /* 0x15c */
	Town*      town;         /* 0x160 */
	float      field_0x164;
	float      field_0x168[TOWN_DESIRE_INFO_LAST];
	float      field_0x1ac[TOWN_DESIRE_INFO_LAST];
	float      field_0x1f0[TOWN_DESIRE_INFO_LAST];
	float      field_0x234[TOWN_DESIRE_INFO_LAST];
	DesireSort sorts[TOWN_DESIRE_INFO_LAST];  /* 0x278 */
	DesireSort sorts2[TOWN_DESIRE_INFO_LAST]; /* 0x344 */
	long       field_0x410[TOWN_DESIRE_INFO_LAST];
	float      field_0x454[TOWN_DESIRE_INFO_LAST];
	float      field_0x498[TOWN_DESIRE_INFO_LAST];
	float      field_0x4dc[TOWN_DESIRE_INFO_LAST];
	float      field_0x520[TOWN_DESIRE_INFO_LAST];

	// Override methods

	// BW1W120 00745730 BW1M119 01567d80
	virtual ~TownDesire();

	// Constructors

	// BW1W120 00745710 BW1M119 01567e10
	TownDesire();

	// Non-virtual methods

	// BW1W120 00745ae0 BW1M119 0105f590
	void Process();
	// BW1W120 00745d80 BW1M119 0105fde0
	void CallDesireFunction(uint32_t param_1);
	// BW1W120 00745ff0 BW1M119 010789f0
	// TODO: incorrect return type
	void CheckVillagerNeededForTownDesire(Villager* villager, float trigger);
	// BW1W120 00745f80 BW1M119 0105ff30
	GTownDesireInfo* GetInfo(unsigned long desire) const;
	// BW1W120 007465d0 BW1M119 01566d00
	DesireSort* GetSortedDesire(uint32_t index);
};

#endif /* BW1_DECOMP_TOWN_DESIRE_INCLUDED_H */
