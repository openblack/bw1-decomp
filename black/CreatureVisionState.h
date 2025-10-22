#ifndef BW1_DECOMP_CREATURE_VISION_STATE_INCLUDED_H
#define BW1_DECOMP_CREATURE_VISION_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

struct CreatureInterestingThingToLookAt
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  uint32_t field_0x8;
  struct MapCoords coords;
  uint32_t field_0x18;
  uint32_t field_0x1c;
};
static_assert(sizeof(struct CreatureInterestingThingToLookAt) == 0x20, "Data type is of wrong size");

// Constructors

// win1.41 004d1b90 mac 10242e40 CreatureInterestingThingToLookAt::CreatureInterestingThingToLookAt(void)
struct CreatureInterestingThingToLookAt* __fastcall __ct__32CreatureInterestingThingToLookAtFv(struct CreatureInterestingThingToLookAt* this) asm("??0CreatureInterestingThingToLookAt@@QAE@XZ");

struct CreatureVisionState
{
  struct Base super;  /* 0x0 */
  struct CreatureInterestingThingToLookAt thing_to_look_at;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  uint32_t field_0x38;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  uint32_t field_0x44;
};
static_assert(sizeof(struct CreatureVisionState) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd7e8 mac inlined CreatureVisionState::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19CreatureVisionState asm("??_R0?AVCreatureVisionState@@@8");
// win1.41 009aa270 mac inlined CreatureVisionState::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19CreatureVisionState asm("??_R1A@?0A@A@CreatureVisionState@@8");
// win1.41 009aa288 mac inlined CreatureVisionState::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19CreatureVisionState asm("??_R2CreatureVisionState@@8");
// win1.41 009aa298 mac inlined CreatureVisionState::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19CreatureVisionState asm("??_R3CreatureVisionState@@8");
// win1.41 008cf87c mac 107873fc CreatureVisionState::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__19CreatureVisionState asm("??_R4CreatureVisionState@@6B@");
// win1.41 008cf880 mac 10787404 CreatureVisionState::`vftable'
extern const struct BaseVftable __vt__19CreatureVisionState asm("??_7CreatureVisionState@@6B@");

// Override methods

// win1.41 004d0370 mac 10245880 CreatureVisionState::_dt(void)
void __fastcall __dt__19CreatureVisionStateFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureVisionState@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_VISION_STATE_INCLUDED_H */
