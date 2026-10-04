#ifndef BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H
#define BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For SPECIAL_VILLAGER_INFO_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GSpecialVillagerInfo : public GBaseInfo
{
public:
	// BW1W120 00d9b154
	static GSpecialVillagerInfo* InfoList;
	// BW1W120 0071f930 BW1M119 0114e750
	static void OnClearMap();
	char        name[0x30]; /* 0x10 */
	uint32_t    field_0x40;
	uint32_t    field_0x44;
	uint32_t    field_0x48;
	uint32_t    field_0x4c;
	uint32_t    field_0x50;
	int         field_0x54;
	uint32_t    field_0x58;
	uint32_t    field_0x5c;

	// Override methods

	// BW1W120 0071f880 BW1M119 0114e840
	virtual ~GSpecialVillagerInfo();
	// BW1W120 0071ee80 BW1M119 0114e5b0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00d9b168
	static GSpecialVillagerInfo Infos[SPECIAL_VILLAGER_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0114fb60
	static GSpecialVillagerInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in SpecialVillager.h.
	// Out of line: LoadBinary at 0042f9f0, Load at 0042f9b0.
	INFO_DATA_BLOCK(name, field_0x58)
	INFO_ROOT_LOADERS("SpecialVillager.h", 20)
};

#endif /* BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H */
