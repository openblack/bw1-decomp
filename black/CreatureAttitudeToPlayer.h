#ifndef BW1_DECOMP_CREATURE_ATTITUDE_TO_PLAYER_INCLUDED_H
#define BW1_DECOMP_CREATURE_ATTITUDE_TO_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/CreatureEnum.h> /* For enum DETECTED_PLAYER_ACTION */
#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

// Forward Declares

struct GameThingWithPos;

struct CreaturePerceivedPlayerDesires_field_0x15c
{
  uint8_t field_0x0[0x20];
};
static_assert(sizeof(struct CreaturePerceivedPlayerDesires_field_0x15c) == 0x20, "Data type is of wrong size");

struct CreaturePerceivedPlayerDesires
{
  uint32_t field_0x0[0x28];
  uint32_t field_0xa0[0x11];
  uint8_t field_0xe4[0x78];
  struct CreaturePerceivedPlayerDesires_field_0x15c field_0x15c[0x28];
  uint8_t field_0x65c[0xf00];
  struct CreaturePerceivedPlayerDesires_field_0x15c field_0x155c[0x11];
};
static_assert(sizeof(struct CreaturePerceivedPlayerDesires) == 0x177c, "Data type is of wrong size");

struct CreatureAttitudeToPlayer_field_0x1da4
{
  enum DETECTED_PLAYER_ACTION detected_action;  /* 0x0 */
  struct GameThingWithPos* game_thing;
  uint32_t field_0x8;
  enum MAGIC_TYPE magic_type;
};
static_assert(sizeof(struct CreatureAttitudeToPlayer_field_0x1da4) == 0x10, "Data type is of wrong size");

struct CreatureAttitudeToPlayer
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  float field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  uint32_t field_0x38;
  uint32_t field_0x3c;
  struct CreaturePerceivedPlayerDesires field_0x40;
  uint8_t field_0x17bc[0x5e8];
  struct CreatureAttitudeToPlayer_field_0x1da4 field_0x1da4;
};
static_assert(sizeof(struct CreatureAttitudeToPlayer) == 0x1db4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009d9b58 mac inlined CreatureAttitudeToPlayer::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24CreatureAttitudeToPlayer asm("??_R0?AVCreatureAttitudeToPlayer@@@8");
// win1.41 009a9c30 mac inlined CreatureAttitudeToPlayer::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24CreatureAttitudeToPlayer asm("??_R1A@?0A@A@CreatureAttitudeToPlayer@@8");
// win1.41 009a9c48 mac inlined CreatureAttitudeToPlayer::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24CreatureAttitudeToPlayer asm("??_R2CreatureAttitudeToPlayer@@8");
// win1.41 009a9c58 mac inlined CreatureAttitudeToPlayer::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24CreatureAttitudeToPlayer asm("??_R3CreatureAttitudeToPlayer@@8");
// win1.41 008cf3d8 mac 10783e38 CreatureAttitudeToPlayer::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__24CreatureAttitudeToPlayer asm("??_R4CreatureAttitudeToPlayer@@6B@");
// win1.41 008cf3dc mac 10783e40 CreatureAttitudeToPlayer::`vftable'
extern const struct BaseVftable __vt__24CreatureAttitudeToPlayer asm("??_7CreatureAttitudeToPlayer@@6B@");

// Override methods

// win1.41 004c81a0 mac 10235cc0 CreatureAttitudeToPlayer::_dt(void)
void __fastcall __dt__24CreatureAttitudeToPlayerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureAttitudeToPlayer@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_ATTITUDE_TO_PLAYER_INCLUDED_H */
