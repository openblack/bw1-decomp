#ifndef BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H
#define BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum DETECTED_PLAYER_ACTION */
#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct GameThingWithPos;

struct CreatureMimicState
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  enum DETECTED_PLAYER_ACTION detected_player_action;  /* 0x10 */
  enum MAGIC_TYPE magic_type;
  struct GameThingWithPos* game_thing;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  struct MapCoords coords;  /* 0x30 */
};
static_assert(sizeof(struct CreatureMimicState) == 0x3c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be0028 mac inlined CreatureMimicState::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18CreatureMimicState asm("??_R0?AVCreatureMimicState@@@8");
// win1.41 009ab178 mac inlined CreatureMimicState::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18CreatureMimicState asm("??_R1A@?0A@A@CreatureMimicState@@8");
// win1.41 009ab190 mac inlined CreatureMimicState::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18CreatureMimicState asm("??_R2CreatureMimicState@@8");
// win1.41 009ab1a0 mac inlined CreatureMimicState::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18CreatureMimicState asm("??_R3CreatureMimicState@@8");
// win1.41 008d05ec mac 1078751c CreatureMimicState::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__18CreatureMimicState asm("??_R4CreatureMimicState@@6B@");
// win1.41 008d05f0 mac 10787524 CreatureMimicState::`vftable'
extern const struct BaseVftable __vt__18CreatureMimicState asm("??_7CreatureMimicState@@6B@");

// Constructors

// win1.41 004e9d20 mac 1026fe50 CreatureMimicState::CreatureMimicState(void)
void __fastcall __ct__18CreatureMimicStateFv(struct CreatureMimicState* this) asm("??0CreatureMimicState@@QAE@XZ");

// Override methods

// win1.41 004e9d40 mac 10245ef0 CreatureMimicState::_dt(void)
void __fastcall __dt__18CreatureMimicStateFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureMimicState@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H */
