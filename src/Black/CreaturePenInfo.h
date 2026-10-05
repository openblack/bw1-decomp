#ifndef BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */
#include "InfoLoaders.h"     /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GCreaturePenInfo : public GCitadelPartInfo
{
public:
	uint8_t field_0x134[0x10];

	// Override methods

	// BW1W120 004eee30 BW1M119 01278a30
	virtual ~GCreaturePenInfo();
	// BW1W120 004eedc0 BW1M119 012793a0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00cad428
	static GCreaturePenInfo Infos[5];

	// Static methods

	// BW1W120 inlined BW1M119 01279300
	static GCreaturePenInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in CreaturePen.h.
	// Out of line: LoadBinary at 0042eff0, Load at 0042ef40.
	INFO_DATA_BLOCK(field_0x134, field_0x134)
	INFO_DERIVED_LOADERS(GCitadelPartInfo, "CreaturePen.h", 17)
};

#endif /* BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H */
