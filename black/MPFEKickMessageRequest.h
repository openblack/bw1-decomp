#ifndef BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H
#define BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEKickMessageRequest
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEKickMessageRequest) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4900 mac inlined MPFEKickMessageRequest::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__22MPFEKickMessageRequest asm("??_R0?AVMPFEKickMessageRequest@@@8");
// win1.41 009b2318 mac inlined MPFEKickMessageRequest::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__22MPFEKickMessageRequest asm("??_R1A@?0A@A@MPFEKickMessageRequest@@8");
// win1.41 009b2330 mac inlined MPFEKickMessageRequest::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__22MPFEKickMessageRequest asm("??_R2MPFEKickMessageRequest@@8");
// win1.41 009b2340 mac inlined MPFEKickMessageRequest::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__22MPFEKickMessageRequest asm("??_R3MPFEKickMessageRequest@@8");

// Override methods

// win1.41 00627790 mac 10397a60 MPFEKickMessageRequest::_dt(void)
void __fastcall __dt__22MPFEKickMessageRequestFv(struct MPFEMessageObject* this) asm("??_GMPFEKickMessageRequest@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H */
