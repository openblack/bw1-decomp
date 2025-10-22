#ifndef BW1_DECOMP_DIALOG_BOX_SAVE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_SAVE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct DialogBoxSaveMessage
{
  struct DialogBoxBase super;  /* 0x0 */
  uint32_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
};
static_assert(sizeof(struct DialogBoxSaveMessage) == 0x24, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8df0 mac inlined DialogBoxSaveMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20DialogBoxSaveMessage asm("??_R0?AVDialogBoxSaveMessage@@@8");
// win1.41 009aba98 mac inlined DialogBoxSaveMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20DialogBoxSaveMessage asm("??_R1A@?0A@A@DialogBoxSaveMessage@@8");
// win1.41 009abab0 mac inlined DialogBoxSaveMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20DialogBoxSaveMessage asm("??_R2DialogBoxSaveMessage@@8");
// win1.41 009abac0 mac inlined DialogBoxSaveMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20DialogBoxSaveMessage asm("??_R3DialogBoxSaveMessage@@8");
// win1.41 008d8694 mac 10999130 DialogBoxSaveMessage::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__20DialogBoxSaveMessage asm("??_R4DialogBoxSaveMessage@@6B@");
// win1.41 008d8698 mac 10999138 DialogBoxSaveMessage::`vftable'
extern const struct DialogBoxBaseVftable __vt__20DialogBoxSaveMessage asm("??_7DialogBoxSaveMessage@@6B@");

// Constructors

// win1.41 00515990 mac 102b6020 DialogBoxSaveMessage::DialogBoxSaveMessage(void)
struct DialogBoxSaveMessage* __fastcall __ct__20DialogBoxSaveMessageFv(struct DialogBoxSaveMessage* this) asm("??0DialogBoxSaveMessage@@QAE@XZ");

// Override methods

// win1.41 005159d0 mac 102b5db0 DialogBoxSaveMessage::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__20DialogBoxSaveMessageFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@DialogBoxSaveMessage@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00515b80 mac 102b5d50 DialogBoxSaveMessage::Destroy(void)
void __fastcall Destroy__20DialogBoxSaveMessageFv(struct DialogBoxBase* this) asm("?Destroy@DialogBoxSaveMessage@@UAEXXZ");

#endif /* BW1_DECOMP_DIALOG_BOX_SAVE_MESSAGE_INCLUDED_H */
