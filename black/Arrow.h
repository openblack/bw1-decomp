#ifndef BW1_DECOMP_ARROW_INCLUDED_H
#define BW1_DECOMP_ARROW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct Base;
struct GPlayer;
struct GameThing;

struct Arrow
{
  struct MobileObject super;  /* 0x0 */
};
static_assert(sizeof(struct Arrow) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c96b8 mac inlined Arrow::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5Arrow asm("??_R0?AVArrow@@@8");
// win1.41 009a7b78 mac inlined Arrow::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Arrow asm("??_R1A@?0A@A@Arrow@@8");
// win1.41 009a7b90 mac inlined Arrow::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5Arrow asm("??_R2Arrow@@8");
// win1.41 009a7bb0 mac inlined Arrow::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Arrow asm("??_R3Arrow@@8");

// Override methods

// win1.41 00425c00 mac inlined Arrow::_dt(void)
void __fastcall __dt__5ArrowFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GArrow@@UAEPAXI@Z");
// win1.41 00425bf0 mac inlined Arrow::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__5ArrowFv(struct GameThing* this) asm("?GetPlayer@Arrow@@UAEPAVGPlayer@@XZ");

#endif /* BW1_DECOMP_ARROW_INCLUDED_H */
