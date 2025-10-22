#ifndef BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupList;

struct DialogBoxKeyBinding
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10;
  uint8_t field_0x11;
  uint8_t field_0x12;
  uint8_t field_0x13;
  uint8_t field_0x14;
  uint8_t field_0x15;
  uint8_t field_0x16;
  uint8_t field_0x17;
  struct SetupList* list;
};
static_assert(sizeof(struct DialogBoxKeyBinding) == 0x1c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8c00 mac inlined DialogBoxKeyBinding::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19DialogBoxKeyBinding asm("??_R0?AVDialogBoxKeyBinding@@@8");
// win1.41 009ab8e0 mac inlined DialogBoxKeyBinding::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19DialogBoxKeyBinding asm("??_R1A@?0A@A@DialogBoxKeyBinding@@8");
// win1.41 009ab8f8 mac inlined DialogBoxKeyBinding::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19DialogBoxKeyBinding asm("??_R2DialogBoxKeyBinding@@8");
// win1.41 009ab908 mac inlined DialogBoxKeyBinding::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19DialogBoxKeyBinding asm("??_R3DialogBoxKeyBinding@@8");
// win1.41 008d859c mac 10998f98 DialogBoxKeyBinding::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__19DialogBoxKeyBinding asm("??_R4DialogBoxKeyBinding@@6B@");
// win1.41 008d85a0 mac 10998fa0 DialogBoxKeyBinding::`vftable'
extern const struct DialogBoxBaseVftable __vt__19DialogBoxKeyBinding asm("??_7DialogBoxKeyBinding@@6B@");

// Constructors

// win1.41 005127b0 mac 102b1e90 DialogBoxKeyBinding::DialogBoxKeyBinding(void)
struct DialogBoxKeyBinding* __fastcall __ct__19DialogBoxKeyBindingFv(struct DialogBoxKeyBinding* this) asm("??0DialogBoxKeyBinding@@QAE@XZ");

// Override methods

// win1.41 005129d0 mac 102b18f0 DialogBoxKeyBinding::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__19DialogBoxKeyBindingFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@DialogBoxKeyBinding@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00512bc0 mac 102b1890 DialogBoxKeyBinding::Destroy(void)
void __fastcall Destroy__19DialogBoxKeyBindingFv(struct DialogBoxBase* this) asm("?Destroy@DialogBoxKeyBinding@@UAEXXZ");
// win1.41 00512bd0 mac 102b1750 DialogBoxKeyBinding::InitControls(void)
void __fastcall InitControls__19DialogBoxKeyBindingFv(struct DialogBoxBase* this) asm("?InitControls@DialogBoxKeyBinding@@UAEXXZ");

#endif /* BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H */
