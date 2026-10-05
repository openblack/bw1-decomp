#ifndef BW1_DECOMP_MAGIC_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum GESTURE_TYPE, enum MAGIC_TYPE, enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK, INFO_ROOT_LOADERS */

// Forward Declares

class Base;
class GameThing;
class GMagicCreatureSpellInfo;
class GMagicEffectInfo;
class Object;
class Spell;
struct MapCoords;

class GMagicInfo : public GBaseInfo
{
public:
	int             field_0x10;
	uint8_t         field_0x14[0x14];
	SPELL_SEED_TYPE SpellSeedType;
	GESTURE_TYPE    GestureType;
	POWER_UP_TYPE   PowerUpType;
	uint8_t         field_0x34[0x24];

	// Override methods

	// BW1W120 0042d700 BW1M119 011a1280
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = MAGIC_TYPE_LAST;
		return Infos[0];
	}

	// Virtual methods

	// BW1W120 005fb420 BW1M119 013b6200
	virtual uint32_t CanCast(const MapCoords& coords, GameThing* caster) const;
	// BW1W120 005fb430 BW1M119 013b6190
	virtual uint32_t CanCast(Object* object, GameThing* caster) const;
	// BW1W120 005fb450 BW1M119 013b60c0
	virtual Spell* AllocSpell(GameThing* caster) const;
	// BW1W120 005fb780 BW1M119 013b5990
	virtual const GMagicCreatureSpellInfo* AsMagicCreatureSpellInfo() const;
	// BW1W120 005fb790 BW1M119 013b59e0
	virtual GMagicCreatureSpellInfo* AsMagicCreatureSpellInfo();

	// Static methods

	// BW1W120 005fb3b0 BW1M119 013b6320
	static MAGIC_TYPE GetInfoFromText(const char* text);

	// Static members

	// BW1W120 00d37d10
	static GMagicInfo* Infos[MAGIC_TYPE_LAST];

	// Non-virtual methods

	// BW1W120 005fb3f0 BW1M119 013b62c0
	const char* GetMagicInfoText() const;
	// BW1W120 005fb680 BW1M119 013b5c30
	GMagicEffectInfo* GetMagicEffectInfo() const;

	// Out of line: LoadBinary at 0042d6b0, Load at 0042d670.
	INFO_DATA_BLOCK(field_0x10, field_0x34)
	INFO_ROOT_LOADERS("MagicInfo.h", 37)
};
static_assert(sizeof(GMagicInfo) == 0x58, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_INFO_INCLUDED_H */
