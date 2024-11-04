#ifndef BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint8_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE, enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */

#include "ObjectInfo.h" /* For struct GObjectInfo */

struct GSpellSeedInfo
{
  struct GObjectInfo super;  /* 0x0 */
  uint8_t field_0x100[0x24];
  enum MAGIC_TYPE magic_types[0x4];  /* 0x124 */
  uint8_t field_0x134[0x5c];
};
static_assert(sizeof(struct GSpellSeedInfo) == 0x190, "Data type is of wrong size");

// Static methods

// win1.41 0072b090 mac 1052d6f0 GSpellSeedInfo::GetFirstSpellSeedForMagicType(MAGIC_TYPE)
enum SPELL_SEED_TYPE __cdecl GetFirstSpellSeedForMagicType__14GSpellSeedInfoF10MAGIC_TYPE(enum MAGIC_TYPE magic_type);

// Non-virtual methods

// win1.41 0072af70 mac 1052dac0 GSpellSeedInfo::GetPowerUpFromMagicType(MAGIC_TYPE) const
enum POWER_UP_TYPE __fastcall GetPowerUpFromMagicType__14GSpellSeedInfoCF10MAGIC_TYPE(struct GSpellSeedInfo* this, const void* edx, enum MAGIC_TYPE magic_type);
// win1.41 0072afc0 mac 1052d9d0 GSpellSeedInfo::GetMagicTypeFromPULevel(POWER_UP_TYPE) const
enum MAGIC_TYPE __fastcall GetMagicTypeFromPULevel__14GSpellSeedInfoCF13POWER_UP_TYPE(const struct GSpellSeedInfo* this, const void* edx, enum POWER_UP_TYPE power_type);
// win1.41 0072b060 mac inlined GSpellSeedInfo::SpellSeedIsOfMagicType(MAGIC_TYPE) const
bool __fastcall SpellSeedIsOfMagicType__14GSpellSeedInfoCF10MAGIC_TYPE(const struct GSpellSeedInfo* this, const void* edx, enum MAGIC_TYPE type);

#endif /* BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H */
