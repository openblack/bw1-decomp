#ifndef BW1_DECOMP_CREATURE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LivingInfo.h" /* For struct GLivingInfo */

struct CreatureInfo
{
  struct GLivingInfo super;  /* 0x0 */
  uint32_t creature_type;  /* 0x1f4 */
  float field_0x1f8[0x4];
  uint32_t field_0x208;
  float field_0x20c;
  uint32_t field_0x210;
  float field_0x214[0x15];
  uint32_t field_0x268;
  uint32_t field_0x26c;
  uint32_t field_0x270;
  uint32_t field_0x274;
  float field_0x278[0x3];
  uint32_t field_0x284;
  float field_0x288[0x8];
  uint32_t field_0x2a8;
  float field_0x2ac[0x26];
  uint32_t field_0x344;
  float field_0x348[0x13];
};
static_assert(sizeof(struct CreatureInfo) == 0x394, "Data type is of wrong size");

// win1.41 008cc754 mac 1077e340 CreatureInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12CreatureInfo asm("??_R4CreatureInfo@@6B@");

// win1.41 008cc758 mac 1077e348 CreatureInfo::`vftable'
extern const struct GObjectInfoVftable __vt__12CreatureInfo asm("??_7CreatureInfo@@6B@");

#endif /* BW1_DECOMP_CREATURE_INFO_INCLUDED_H */
