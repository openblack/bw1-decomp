#ifndef BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEReplyToJoinMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEReplyToJoinMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4828 mac inlined MPFEReplyToJoinMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__22MPFEReplyToJoinMessage asm("??_R0?AVMPFEReplyToJoinMessage@@@8");
// win1.41 009b21d8 mac inlined MPFEReplyToJoinMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__22MPFEReplyToJoinMessage asm("??_R1A@?0A@A@MPFEReplyToJoinMessage@@8");
// win1.41 009b21f0 mac inlined MPFEReplyToJoinMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__22MPFEReplyToJoinMessage asm("??_R2MPFEReplyToJoinMessage@@8");
// win1.41 009b2200 mac inlined MPFEReplyToJoinMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__22MPFEReplyToJoinMessage asm("??_R3MPFEReplyToJoinMessage@@8");

// Override methods

// win1.41 006270a0 mac 10394150 MPFEReplyToJoinMessage::_dt(void)
void __fastcall __dt__22MPFEReplyToJoinMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEReplyToJoinMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H */
