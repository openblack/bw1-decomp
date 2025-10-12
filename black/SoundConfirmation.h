#ifndef BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H
#define BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct GConfirmation
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct GConfirmation) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22188 mac inlined GConfirmation::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13GConfirmation asm("??_R0?AVGConfirmation@@@8");
// win1.41 009b90b8 mac inlined GConfirmation::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13GConfirmation asm("??_R1A@?0A@A@GConfirmation@@8");
// win1.41 009b90d0 mac inlined GConfirmation::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13GConfirmation asm("??_R2GConfirmation@@8");
// win1.41 009b90e0 mac inlined GConfirmation::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13GConfirmation asm("??_R3GConfirmation@@8");

// Override methods

// win1.41 0071a4e0 mac 1050d010 GConfirmation::_dt(void)
void __fastcall __dt__13GConfirmationFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGConfirmation@@UAEPAXI@Z");

#endif /* BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H */
