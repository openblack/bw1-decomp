#ifndef BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "InfoLoaders.h"       /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GSpellIconInfo : public GMultiMapFixedInfo
{
public:
	uint32_t field_0x120;
	uint32_t field_0x124;
	uint32_t field_0x128;

	// Override methods

	// BW1W120 00725fb0 BW1M119 0152e340
	virtual ~GSpellIconInfo();
	// BW1W120 00725f40 BW1M119 0152e450
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 00725f30 BW1M119 0152c180
	virtual MESH_LIST GetMesh() const;

	// Static data

	// BW1W120 00d9d3e8
	static GSpellIconInfo Infos[SPELL_ICON_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0152e240
	static GSpellIconInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in SpellIcon.h.
	// Out of line: LoadBinary at 0042f4e0, Load at 0042f440.
	INFO_DATA_BLOCK(field_0x120, field_0x128)
	INFO_DERIVED_LOADERS(GMultiMapFixedInfo, "SpellIcon.h", 26)
};

#endif /* BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H */
