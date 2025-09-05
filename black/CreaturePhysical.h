#ifndef BW1_DECOMP_CREATURE_PHYSICAL_INCLUDED_H
#define BW1_DECOMP_CREATURE_PHYSICAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

// Forward Declares

struct Creature;
struct CreatureInfo;
struct LH3DCreature;
struct MapCoords;

struct CreatureDamageMap
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
};
static_assert(sizeof(struct CreatureDamageMap) == 0x10, "Data type is of wrong size");

// win1.41 008d14ec mac 1077e114 CreatureDamageMap::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17CreatureDamageMap asm("??_R4CreatureDamageMap@@6B@");

// win1.41 008d14f0 mac 1077e11c CreatureDamageMap::`vftable'
extern const struct BaseVftable __vt__17CreatureDamageMap asm("??_7CreatureDamageMap@@6B@");

struct CreaturePhysical
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  float strength;
  uint32_t field_0x10;
  float field_0x14;
  float field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint16_t field_0x24;
  uint8_t field_0x26;
  uint8_t field_0x27;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  float field_0x30;
  uint32_t field_0x34;
  uint32_t field_0x38;
  float field_0x3c;
  uint32_t field_0x40;
  uint32_t field_0x44;
  float field_0x48;
  uint32_t field_0x4c;
  uint32_t field_0x50;
  struct Creature* creature;
  struct LH3DCreature* creature_3d;
  struct CreatureDamageMap damage_map;
  uint8_t* field_0x6c;
  uint32_t field_0x70;
};
static_assert(sizeof(struct CreaturePhysical) == 0x74, "Data type is of wrong size");

// win1.41 008d14cc mac 1077e14c CreaturePhysical::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__16CreaturePhysical asm("??_R4CreaturePhysical@@6B@");

// win1.41 008d14d0 mac 1077e154 CreaturePhysical::`vftable'
extern const struct BaseVftable __vt__16CreaturePhysical asm("??_7CreaturePhysical@@6B@");

// Constructors

// win1.41 004ef2c0 mac 102767c0 CreaturePhysical::CreaturePhysical(MapCoords const &, unsigned short, CreatureInfo const *, Creature *)
struct CreaturePhysical* __fastcall __ct__16CreaturePhysicalFRC9MapCoordsUsPC12CreatureInfoP8Creature(struct CreaturePhysical* this, const void* edx, const struct MapCoords* coords, uint16_t param_2, const struct CreatureInfo* info, struct Creature* creature);

#endif /* BW1_DECOMP_CREATURE_PHYSICAL_INCLUDED_H */
