#ifndef BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPrivateChatMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEPrivateChatMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf47c0 mac inlined MPFEPrivateChatMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__22MPFEPrivateChatMessage asm("??_R0?AVMPFEPrivateChatMessage@@@8");
// win1.41 009b2138 mac inlined MPFEPrivateChatMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__22MPFEPrivateChatMessage asm("??_R1A@?0A@A@MPFEPrivateChatMessage@@8");
// win1.41 009b2150 mac inlined MPFEPrivateChatMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__22MPFEPrivateChatMessage asm("??_R2MPFEPrivateChatMessage@@8");
// win1.41 009b2160 mac inlined MPFEPrivateChatMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__22MPFEPrivateChatMessage asm("??_R3MPFEPrivateChatMessage@@8");

// Override methods

// win1.41 00626ed0 mac 10398140 MPFEPrivateChatMessage::_dt(void)
void __fastcall __dt__22MPFEPrivateChatMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEPrivateChatMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H */
