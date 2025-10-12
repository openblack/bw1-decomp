#ifndef BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFECondtionUpdateMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFECondtionUpdateMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4c78 mac inlined MPFECondtionUpdateMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25MPFECondtionUpdateMessage asm("??_R0?AVMPFECondtionUpdateMessage@@@8");
// win1.41 009b26d8 mac inlined MPFECondtionUpdateMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25MPFECondtionUpdateMessage asm("??_R1A@?0A@A@MPFECondtionUpdateMessage@@8");
// win1.41 009b26f0 mac inlined MPFECondtionUpdateMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25MPFECondtionUpdateMessage asm("??_R2MPFECondtionUpdateMessage@@8");
// win1.41 009b2700 mac inlined MPFECondtionUpdateMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25MPFECondtionUpdateMessage asm("??_R3MPFECondtionUpdateMessage@@8");

// Override methods

// win1.41 0062c860 mac inlined MPFECondtionUpdateMessage::_dt(void)
void __fastcall __dt__25MPFECondtionUpdateMessageFv(struct MPFEMessageObject* this) asm("??_GMPFECondtionUpdateMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H */
