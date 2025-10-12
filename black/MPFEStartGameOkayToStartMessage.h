#ifndef BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEStartGameOkayToStartMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEStartGameOkayToStartMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfd930 mac inlined MPFEStartGameOkayToStartMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__31MPFEStartGameOkayToStartMessage asm("??_R0?AVMPFEStartGameOkayToStartMessage@@@8");
// win1.41 009b2910 mac inlined MPFEStartGameOkayToStartMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__31MPFEStartGameOkayToStartMessage asm("??_R1A@?0A@A@MPFEStartGameOkayToStartMessage@@8");
// win1.41 009b2928 mac inlined MPFEStartGameOkayToStartMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__31MPFEStartGameOkayToStartMessage asm("??_R2MPFEStartGameOkayToStartMessage@@8");
// win1.41 009b2938 mac inlined MPFEStartGameOkayToStartMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__31MPFEStartGameOkayToStartMessage asm("??_R3MPFEStartGameOkayToStartMessage@@8");

// Override methods

// win1.41 0062fb90 mac 10393eb0 MPFEStartGameOkayToStartMessage::_dt(void)
void __fastcall __dt__31MPFEStartGameOkayToStartMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEStartGameOkayToStartMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H */
