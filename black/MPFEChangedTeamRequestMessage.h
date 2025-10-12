#ifndef BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEChangedTeamRequestMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEChangedTeamRequestMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfdca0 mac inlined MPFEChangedTeamRequestMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__29MPFEChangedTeamRequestMessage asm("??_R0?AVMPFEChangedTeamRequestMessage@@@8");
// win1.41 009b2c30 mac inlined MPFEChangedTeamRequestMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__29MPFEChangedTeamRequestMessage asm("??_R1A@?0A@A@MPFEChangedTeamRequestMessage@@8");
// win1.41 009b2c48 mac inlined MPFEChangedTeamRequestMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__29MPFEChangedTeamRequestMessage asm("??_R2MPFEChangedTeamRequestMessage@@8");
// win1.41 009b2c58 mac inlined MPFEChangedTeamRequestMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__29MPFEChangedTeamRequestMessage asm("??_R3MPFEChangedTeamRequestMessage@@8");

// Override methods

// win1.41 00632d20 mac 10397440 MPFEChangedTeamRequestMessage::_dt(void)
void __fastcall __dt__29MPFEChangedTeamRequestMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEChangedTeamRequestMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H */
