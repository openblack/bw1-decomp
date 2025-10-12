#ifndef BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEInviteToTeamMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEInviteToTeamMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4860 mac inlined MPFEInviteToTeamMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23MPFEInviteToTeamMessage asm("??_R0?AVMPFEInviteToTeamMessage@@@8");
// win1.41 009b2228 mac inlined MPFEInviteToTeamMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23MPFEInviteToTeamMessage asm("??_R1A@?0A@A@MPFEInviteToTeamMessage@@8");
// win1.41 009b2240 mac inlined MPFEInviteToTeamMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23MPFEInviteToTeamMessage asm("??_R2MPFEInviteToTeamMessage@@8");
// win1.41 009b2250 mac inlined MPFEInviteToTeamMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23MPFEInviteToTeamMessage asm("??_R3MPFEInviteToTeamMessage@@8");

// Override methods

// win1.41 00627410 mac 103977c0 MPFEInviteToTeamMessage::_dt(void)
void __fastcall __dt__23MPFEInviteToTeamMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEInviteToTeamMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H */
