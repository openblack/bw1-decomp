#ifndef BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEReadyMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEReadyMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf49d8 mac inlined MPFEReadyMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16MPFEReadyMessage asm("??_R0?AVMPFEReadyMessage@@@8");
// win1.41 009b2408 mac inlined MPFEReadyMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16MPFEReadyMessage asm("??_R1A@?0A@A@MPFEReadyMessage@@8");
// win1.41 009b2420 mac inlined MPFEReadyMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16MPFEReadyMessage asm("??_R2MPFEReadyMessage@@8");
// win1.41 009b2430 mac inlined MPFEReadyMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16MPFEReadyMessage asm("??_R3MPFEReadyMessage@@8");

// Override methods

// win1.41 00627d80 mac inlined MPFEReadyMessage::_dt(void)
void __fastcall __dt__16MPFEReadyMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEReadyMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H */
