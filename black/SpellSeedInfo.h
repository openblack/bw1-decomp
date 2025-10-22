#ifndef BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE, enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GSpellSeedInfo
{
  struct GObjectInfo super;  /* 0x0 */
  uint8_t field_0x100[0x24];
  enum MAGIC_TYPE magic_types[0x4];  /* 0x124 */
  uint8_t field_0x134[0x5c];
};
static_assert(sizeof(struct GSpellSeedInfo) == 0x190, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22758 mac inlined GSpellSeedInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GSpellSeedInfo asm("??_R0?AVGSpellSeedInfo@@@8");
// win1.41 009b94f0 mac inlined GSpellSeedInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GSpellSeedInfo asm("??_R1A@?0A@A@GSpellSeedInfo@@8");
// win1.41 009b9508 mac inlined GSpellSeedInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GSpellSeedInfo asm("??_R2GSpellSeedInfo@@8");
// win1.41 009b9520 mac inlined GSpellSeedInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GSpellSeedInfo asm("??_R3GSpellSeedInfo@@8");

// Static methods

// win1.41 0072b090 mac 1052d6f0 GSpellSeedInfo::GetFirstSpellSeedForMagicType(MAGIC_TYPE)
enum SPELL_SEED_TYPE __cdecl GetFirstSpellSeedForMagicType__14GSpellSeedInfoF10MAGIC_TYPE(enum MAGIC_TYPE magic_type) asm("?GetFirstSpellSeedForMagicType@GSpellSeedInfo@@SA?AW4SPELL_SEED_TYPE@@W4MAGIC_TYPE@@@Z");

// Non-virtual methods

// win1.41 0072af70 mac 1052dac0 GSpellSeedInfo::GetPowerUpFromMagicType(MAGIC_TYPE) const
enum POWER_UP_TYPE __fastcall GetPowerUpFromMagicType__14GSpellSeedInfoCF10MAGIC_TYPE(struct GSpellSeedInfo* this, const void* edx, enum MAGIC_TYPE magic_type) asm("?GetPowerUpFromMagicType@GSpellSeedInfo@@QBE?AW4POWER_UP_TYPE@@W4MAGIC_TYPE@@@Z");
// win1.41 0072afc0 mac 1052d9d0 GSpellSeedInfo::GetMagicTypeFromPULevel(POWER_UP_TYPE) const
enum MAGIC_TYPE __fastcall GetMagicTypeFromPULevel__14GSpellSeedInfoCF13POWER_UP_TYPE(const struct GSpellSeedInfo* this, const void* edx, enum POWER_UP_TYPE power_type) asm("?GetMagicTypeFromPULevel@GSpellSeedInfo@@QBE?AW4MAGIC_TYPE@@W4POWER_UP_TYPE@@@Z");
// win1.41 0072b060 mac inlined GSpellSeedInfo::SpellSeedIsOfMagicType(MAGIC_TYPE) const
bool __fastcall SpellSeedIsOfMagicType__14GSpellSeedInfoCF10MAGIC_TYPE(const struct GSpellSeedInfo* this, const void* edx, enum MAGIC_TYPE type) asm("?SpellSeedIsOfMagicType@GSpellSeedInfo@@QBE_NW4MAGIC_TYPE@@@Z");

// Override methods

// win1.41 0072aee0 mac 1052d120 GSpellSeedInfo::_dt(void)
void __fastcall __dt__14GSpellSeedInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpellSeedInfo@@UAEPAXI@Z");
// win1.41 0072ae70 mac 1052df40 GSpellSeedInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14GSpellSeedInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSpellSeedInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 0072ae60 mac 1052df00 GSpellSeedInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__14GSpellSeedInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GSpellSeedInfo@@UBEIXZ");

#endif /* BW1_DECOMP_SPELL_SEED_INFO_INCLUDED_H */
