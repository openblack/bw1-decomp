#ifndef BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEDisconnectNowMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEDisconnectNowMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfda30 mac inlined MPFEDisconnectNowMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24MPFEDisconnectNowMessage asm("??_R0?AVMPFEDisconnectNowMessage@@@8");
// win1.41 009b2a50 mac inlined MPFEDisconnectNowMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24MPFEDisconnectNowMessage asm("??_R1A@?0A@A@MPFEDisconnectNowMessage@@8");
// win1.41 009b2a68 mac inlined MPFEDisconnectNowMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24MPFEDisconnectNowMessage asm("??_R2MPFEDisconnectNowMessage@@8");
// win1.41 009b2a78 mac inlined MPFEDisconnectNowMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24MPFEDisconnectNowMessage asm("??_R3MPFEDisconnectNowMessage@@8");

// Override methods

// win1.41 006302c0 mac 10393c20 MPFEDisconnectNowMessage::_dt(void)
void __fastcall __dt__24MPFEDisconnectNowMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEDisconnectNowMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H */
