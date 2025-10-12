#ifndef BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPublicChatMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEPublicChatMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4768 mac inlined MPFEPublicChatMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21MPFEPublicChatMessage asm("??_R0?AVMPFEPublicChatMessage@@@8");
// win1.41 009b20e8 mac inlined MPFEPublicChatMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21MPFEPublicChatMessage asm("??_R1A@?0A@A@MPFEPublicChatMessage@@8");
// win1.41 009b2100 mac inlined MPFEPublicChatMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21MPFEPublicChatMessage asm("??_R2MPFEPublicChatMessage@@8");
// win1.41 009b2110 mac inlined MPFEPublicChatMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21MPFEPublicChatMessage asm("??_R3MPFEPublicChatMessage@@8");

// Override methods

// win1.41 00626e00 mac 10398090 MPFEPublicChatMessage::_dt(void)
void __fastcall __dt__21MPFEPublicChatMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEPublicChatMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H */
