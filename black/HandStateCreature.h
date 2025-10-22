#ifndef BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateCreature
{
  struct HandState super;  /* 0x0 */
  uint8_t field_0x8[0x118];
};
static_assert(sizeof(struct HandStateCreature) == 0x120, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8ed8 mac inlined HandStateCreature::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17HandStateCreature asm("??_R0?AVHandStateCreature@@@8");
// win1.41 009b0f28 mac inlined HandStateCreature::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17HandStateCreature asm("??_R1A@?0A@A@HandStateCreature@@8");
// win1.41 009b0f40 mac inlined HandStateCreature::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17HandStateCreature asm("??_R2HandStateCreature@@8");
// win1.41 009b0f50 mac inlined HandStateCreature::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17HandStateCreature asm("??_R3HandStateCreature@@8");
// win1.41 00900aa8 mac 1073bc10 HandStateCreature::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17HandStateCreature asm("??_R4HandStateCreature@@6B@");
// win1.41 00900aac mac 106f5d68 HandStateCreature::`vftable'
extern const struct HandStateVftable __vt__17HandStateCreature asm("??_7HandStateCreature@@6B@");

// Constructors

// win1.41 005b13d0 mac 10338f00 HandStateCreature::HandStateCreature(CHand*)
struct HandStateCreature* __fastcall __ct__17HandStateCreatureFP5CHand(struct HandStateCreature* this, const void* edx, struct CHand* hand) asm("??0HandStateCreature@@QAE@PAVCHand@@@Z");

// Override methods

// win1.41 005b13f0 mac 10338c40 HandStateCreature::Enter(void)
void __fastcall Enter__17HandStateCreatureFv(struct HandState* this) asm("?Enter@HandStateCreature@@UAEXXZ");

#endif /* BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H */
