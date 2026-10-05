#ifndef BW1_DECOMP_TOWN_DESIRE_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For TOWN_DESIRE_INFO_LAST, enum TOWN_DESIRE_INFO */

#include "Base.h" /* For struct Base */

// Forward Declares

class GTownDesireInfo;
class LHOSFile;
struct MapCoords;
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
	float      field_0x8[TOWN_DESIRE_INFO_LAST];
	float      field_0x4c[TOWN_DESIRE_INFO_LAST];
	float      DesireCheat[TOWN_DESIRE_INFO_LAST];
	float      DesireBoost[TOWN_DESIRE_INFO_LAST];
	float      Desire[TOWN_DESIRE_INFO_LAST];
	uint32_t   field_0x15c;
	Town*      town;
	float      field_0x164;
	float      RawDesire[TOWN_DESIRE_INFO_LAST];
	float      field_0x1ac[TOWN_DESIRE_INFO_LAST];
	float      field_0x1f0[TOWN_DESIRE_INFO_LAST];
	float      field_0x234[TOWN_DESIRE_INFO_LAST];
	DesireSort sorts[TOWN_DESIRE_INFO_LAST];
	DesireSort sorts2[TOWN_DESIRE_INFO_LAST];
	long       field_0x410[TOWN_DESIRE_INFO_LAST];
	float      PreviousVillagerStateAmount[TOWN_DESIRE_INFO_LAST];
	float      PreviousVillagerStateCount[TOWN_DESIRE_INFO_LAST];
	float      VillagerStateAmount[TOWN_DESIRE_INFO_LAST];
	float      VillagerStateCount[TOWN_DESIRE_INFO_LAST];

	// Override methods

	// BW1W120 00745730 BW1M119 01567d80
	virtual ~TownDesire();

	// Constructors

	// BW1W120 00745710 BW1M119 01567e10
	TownDesire();

	// Non-virtual methods

	// BW1W120 00745770 BW1M119 01567d40
	void Init(Town* town);
	// BW1W120 00745ae0 BW1M119 0105f590
	void Process();
	// BW1W120 00745d80 BW1M119 0105fde0
	float CallDesireFunction(uint32_t desire);
	// BW1W120 00745ff0 BW1M119 010789f0
	// TODO: incorrect return type
	void CheckVillagerNeededForTownDesire(Villager* villager, float trigger);
	// BW1W120 00745f80 BW1M119 0105ff30
	GTownDesireInfo* GetInfo(unsigned long desire) const;
	// BW1W120 007465d0 BW1M119 01566d00
	DesireSort* GetSortedDesire(uint32_t index);
	// BW1W120 007471c0 BW1M119 015659b0
	void SaveObject(LHOSFile& file, const MapCoords& offset);
};

#endif /* BW1_DECOMP_TOWN_DESIRE_INCLUDED_H */
