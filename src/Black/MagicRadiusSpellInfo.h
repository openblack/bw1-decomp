#ifndef BW1_DECOMP_MAGIC_RADIUS_SPELL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_RADIUS_SPELL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;

class GMagicRadiusSpellInfo : public GMagicInfo
{
public:
	uint8_t field_0x58[0xc];

	// Override methods

	// Non-virtual methods

	// TODO(#377): The original declared this class in MagicShieldInfo.h.
	INFO_DATA_BLOCK(field_0x58, field_0x58)
	INFO_DERIVED_LOADERS(GMagicInfo, "MagicShieldInfo.h", 10)
};
static_assert(sizeof(GMagicRadiusSpellInfo) == 0x64, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_RADIUS_SPELL_INFO_INCLUDED_H */
