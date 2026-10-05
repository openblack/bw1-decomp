#ifndef BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H
#define BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */
#include "InfoLoaders.h"        /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GMapShieldInfo : public GSingleMapFixedInfo
{
public:
	uint32_t field_0x104;

	// Override methods

	// BW1W120 0072bdf0 BW1M119 0153aa00
	virtual ~GMapShieldInfo();

	// Static data

	// BW1W120 00da05d0
	static GMapShieldInfo Infos[MAP_SHIELD_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0153ab10
	static GMapShieldInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in SpellShield.h.
	// Out of line: LoadBinary at 0042fad0, Load at 0042fa40.
	INFO_DATA_BLOCK(field_0x104, field_0x104)
	INFO_DERIVED_LOADERS(GSingleMapFixedInfo, "SpellShield.h", 125)
};

#endif /* BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H */
