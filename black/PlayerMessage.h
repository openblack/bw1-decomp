#ifndef BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H
#define BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <lionhead/lh3dlib/development/Prss.h> /* For struct Prss */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

struct PlayerMessage
{
  struct Prss super;  /* 0x0 */
};
static_assert(sizeof(struct PlayerMessage) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c01ec8 mac inlined PlayerMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13PlayerMessage asm("??_R0?AVPlayerMessage@@@8");
// win1.41 009b32a8 mac inlined PlayerMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13PlayerMessage asm("??_R1A@?0A@A@PlayerMessage@@8");
// win1.41 009b32c0 mac inlined PlayerMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13PlayerMessage asm("??_R2PlayerMessage@@8");
// win1.41 009b32d0 mac inlined PlayerMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13PlayerMessage asm("??_R3PlayerMessage@@8");

// Override methods

// win1.41 0066b5e0 mac inlined PlayerMessage::ProcessTurn(void)
int __fastcall ProcessTurn__13PlayerMessageFv(struct Prss* this) asm("?ProcessTurn@PlayerMessage@@UAEHXZ");
// win1.41 0066b610 mac inlined PlayerMessage::Display(void)
void __fastcall Display__13PlayerMessageFv(struct Prss* this) asm("?Display@PlayerMessage@@UAEXXZ");

#endif /* BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H */
