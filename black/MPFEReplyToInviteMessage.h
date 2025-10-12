#ifndef BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEReplyToInviteMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEReplyToInviteMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4888 mac inlined MPFEReplyToInviteMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24MPFEReplyToInviteMessage asm("??_R0?AVMPFEReplyToInviteMessage@@@8");
// win1.41 009b2278 mac inlined MPFEReplyToInviteMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24MPFEReplyToInviteMessage asm("??_R1A@?0A@A@MPFEReplyToInviteMessage@@8");
// win1.41 009b2290 mac inlined MPFEReplyToInviteMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24MPFEReplyToInviteMessage asm("??_R2MPFEReplyToInviteMessage@@8");
// win1.41 009b22a0 mac inlined MPFEReplyToInviteMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24MPFEReplyToInviteMessage asm("??_R3MPFEReplyToInviteMessage@@8");

// Override methods

// win1.41 006274f0 mac 10397500 MPFEReplyToInviteMessage::_dt(void)
void __fastcall __dt__24MPFEReplyToInviteMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEReplyToInviteMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H */
