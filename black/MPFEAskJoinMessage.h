#ifndef BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEAskJoinMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEAskJoinMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf47f8 mac inlined MPFEAskJoinMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18MPFEAskJoinMessage asm("??_R0?AVMPFEAskJoinMessage@@@8");
// win1.41 009b2188 mac inlined MPFEAskJoinMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18MPFEAskJoinMessage asm("??_R1A@?0A@A@MPFEAskJoinMessage@@8");
// win1.41 009b21a0 mac inlined MPFEAskJoinMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18MPFEAskJoinMessage asm("??_R2MPFEAskJoinMessage@@8");
// win1.41 009b21b0 mac inlined MPFEAskJoinMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18MPFEAskJoinMessage asm("??_R3MPFEAskJoinMessage@@8");

// Override methods

// win1.41 00626f90 mac 10397e50 MPFEAskJoinMessage::_dt(void)
void __fastcall __dt__18MPFEAskJoinMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEAskJoinMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H */
