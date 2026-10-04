#ifndef BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE, enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GSpellSeedInfo : public GObjectInfo
{
public:
	GESTURE_TYPE Gesture;
	uint8_t      field_0x104[0x20];
	MAGIC_TYPE   MagicTypes[0x4];
	uint8_t      field_0x134[0x5c];

	// Override methods

	// BW1W120 0072aee0 BW1M119 01535870
	virtual ~GSpellSeedInfo();
	// BW1W120 0072ae70 BW1M119 015367e0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 0072ae60 BW1M119 015367a0
	virtual MESH_LIST GetMesh() const;

	// Static methods

	// BW1W120 0072b090 BW1M119 01535e30
	static SPELL_SEED_TYPE GetFirstSpellSeedForMagicType(MAGIC_TYPE magic_type);

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

	// Static data

	// BW1W120 00d9d678
	static GSpellSeedInfo Infos[];
};

#endif /* BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H */
