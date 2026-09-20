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
	uint8_t    field_0x100[0x24];
	MAGIC_TYPE MagicTypes[0x4]; /* 0x124 */
	uint8_t    field_0x134[0x5c];

	// Override methods

	// BW1W120 0072aee0 BW1M100 1052d120 GSpellSeedInfo::_dt(void)
	virtual ~GSpellSeedInfo();
	// BW1W120 0072ae70 BW1M100 1052df40 GSpellSeedInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 0072ae60 BW1M100 1052df00 GSpellSeedInfo::GetMesh( const(void))
	virtual uint32_t GetMesh();

	// Static methods

	// BW1W120 0072b090 BW1M100 1052d6f0 GSpellSeedInfo::GetFirstSpellSeedForMagicType(MAGIC_TYPE)
	static SPELL_SEED_TYPE GetFirstSpellSeedForMagicType(MAGIC_TYPE magic_type);

	// Non-virtual methods

	// BW1W120 0072af70 BW1M100 1052dac0 GSpellSeedInfo::GetPowerUpFromMagicType(MAGIC_TYPE) const
	POWER_UP_TYPE GetPowerUpFromMagicType(MAGIC_TYPE magic_type);
	// BW1W120 0072afc0 BW1M100 1052d9d0 GSpellSeedInfo::GetMagicTypeFromPULevel(POWER_UP_TYPE) const
	MAGIC_TYPE GetMagicTypeFromPULevel(POWER_UP_TYPE power_type);
	// BW1W120 0072b060 BW1M100 inlined GSpellSeedInfo::SpellSeedIsOfMagicType(MAGIC_TYPE) const
	bool SpellSeedIsOfMagicType(MAGIC_TYPE type);
};

#endif /* BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H */
