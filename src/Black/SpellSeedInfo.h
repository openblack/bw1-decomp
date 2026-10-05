#ifndef BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE, enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */

#include "ObjectInfo.h"  /* For struct GObjectInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GSpellSeedInfo : public GObjectInfo
{
public:
	GESTURE_TYPE Gesture;
	uint8_t      field_0x104[0x20];
	MAGIC_TYPE   MagicTypes[POWER_UP_TYPE_LAST + 1];
	uint8_t      field_0x134[0x5c];

	// Static data

	// BW1W120 00d9d678
	static GSpellSeedInfo Infos[SPELL_SEED_TYPE_LAST];

	// Override methods

	// BW1W120 0072aee0 BW1M119 01535870
	virtual ~GSpellSeedInfo();
	// BW1W120 0072ae70 BW1M119 015367e0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 0072ae60 BW1M119 015367a0
	virtual MESH_LIST GetMesh() const;

	// Static methods

	// BW1W120 inlined BW1M119 01536400
	static GSpellSeedInfo* GetInfo() { return Infos; }
	// BW1W120 0072b090 BW1M119 01535e30
	static SPELL_SEED_TYPE GetFirstSpellSeedForMagicType(MAGIC_TYPE magic_type);
	// BW1W120 0072b1c0 BW1M119 01535980
	static SPELL_SEED_TYPE GetInfoFromMagicType(MAGIC_TYPE magic_type);
	// BW1W120 0072b100 BW1M119 01535bf0
	static GESTURE_TYPE GetFirstGestureForMagicType(MAGIC_TYPE magic_type, POWER_UP_TYPE* power_up);

	// Non-virtual methods

	// BW1W120 0072af70 BW1M119 01536200
	POWER_UP_TYPE GetPowerUpFromMagicType(MAGIC_TYPE magic_type) const;
	// BW1W120 0072afc0 BW1M119 01536110
	MAGIC_TYPE GetMagicTypeFromPULevel(POWER_UP_TYPE power_type) const;
	// BW1W120 0072b060 BW1M119 inlined
	bool SpellSeedIsOfMagicType(MAGIC_TYPE type) const;
	// BW1W120 0072b230 BW1M119 01535610
	MAGIC_TYPE GetFirstMagicType() const;
	// BW1W120 0072af10 BW1M119 01536360
	MAGIC_TYPE GetMagicType(GESTURE_TYPE gesture) const;

	// Out of line: LoadBinary at 0042f620, Load at 0042f5b0.
	INFO_DATA_BLOCK(Gesture, field_0x134)
	INFO_DERIVED_LOADERS(GObjectInfo, "SpellSeedInfo.h", 43)
};

#endif /* BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H */
