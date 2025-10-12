#ifndef BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFECancelStartMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFECancelStartMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf48d0 mac inlined MPFECancelStartMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__22MPFECancelStartMessage asm("??_R0?AVMPFECancelStartMessage@@@8");
// win1.41 009b22c8 mac inlined MPFECancelStartMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__22MPFECancelStartMessage asm("??_R1A@?0A@A@MPFECancelStartMessage@@8");
// win1.41 009b22e0 mac inlined MPFECancelStartMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__22MPFECancelStartMessage asm("??_R2MPFECancelStartMessage@@8");
// win1.41 009b22f0 mac inlined MPFECancelStartMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__22MPFECancelStartMessage asm("??_R3MPFECancelStartMessage@@8");

// Override methods

// win1.41 00627640 mac 1039ba50 MPFECancelStartMessage::_dt(void)
void __fastcall __dt__22MPFECancelStartMessageFv(struct MPFEMessageObject* this) asm("??_GMPFECancelStartMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H */
