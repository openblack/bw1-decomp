#ifndef BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEKickMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEKickMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4928 mac inlined MPFEKickMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15MPFEKickMessage asm("??_R0?AVMPFEKickMessage@@@8");
// win1.41 009b2368 mac inlined MPFEKickMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15MPFEKickMessage asm("??_R1A@?0A@A@MPFEKickMessage@@8");
// win1.41 009b2380 mac inlined MPFEKickMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15MPFEKickMessage asm("??_R2MPFEKickMessage@@8");
// win1.41 009b2390 mac inlined MPFEKickMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15MPFEKickMessage asm("??_R3MPFEKickMessage@@8");

// Override methods

// win1.41 00627980 mac 1039a1a0 MPFEKickMessage::_dt(void)
void __fastcall __dt__15MPFEKickMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEKickMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H */
