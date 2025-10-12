#ifndef BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEStartGameReadyMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEStartGameReadyMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfd990 mac inlined MPFEStartGameReadyMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25MPFEStartGameReadyMessage asm("??_R0?AVMPFEStartGameReadyMessage@@@8");
// win1.41 009b2960 mac inlined MPFEStartGameReadyMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25MPFEStartGameReadyMessage asm("??_R1A@?0A@A@MPFEStartGameReadyMessage@@8");
// win1.41 009b2978 mac inlined MPFEStartGameReadyMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25MPFEStartGameReadyMessage asm("??_R2MPFEStartGameReadyMessage@@8");
// win1.41 009b2988 mac inlined MPFEStartGameReadyMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25MPFEStartGameReadyMessage asm("??_R3MPFEStartGameReadyMessage@@8");

// Override methods

// win1.41 0062fd00 mac 103a7130 MPFEStartGameReadyMessage::_dt(void)
void __fastcall __dt__25MPFEStartGameReadyMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEStartGameReadyMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H */
