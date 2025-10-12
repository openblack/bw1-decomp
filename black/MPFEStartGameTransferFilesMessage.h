#ifndef BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEStartGameTransferFilesMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEStartGameTransferFilesMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfd9d8 mac inlined MPFEStartGameTransferFilesMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__33MPFEStartGameTransferFilesMessage asm("??_R0?AVMPFEStartGameTransferFilesMessage@@@8");
// win1.41 009b29b0 mac inlined MPFEStartGameTransferFilesMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__33MPFEStartGameTransferFilesMessage asm("??_R1A@?0A@A@MPFEStartGameTransferFilesMessage@@8");
// win1.41 009b29c8 mac inlined MPFEStartGameTransferFilesMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__33MPFEStartGameTransferFilesMessage asm("??_R2MPFEStartGameTransferFilesMessage@@8");
// win1.41 009b29d8 mac inlined MPFEStartGameTransferFilesMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__33MPFEStartGameTransferFilesMessage asm("??_R3MPFEStartGameTransferFilesMessage@@8");

// Override methods

// win1.41 00630050 mac 103a6e30 MPFEStartGameTransferFilesMessage::_dt(void)
void __fastcall __dt__33MPFEStartGameTransferFilesMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEStartGameTransferFilesMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H */
