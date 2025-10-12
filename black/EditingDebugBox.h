#ifndef BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H
#define BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct EditingDebugBox
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct EditingDebugBox) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea4f8 mac inlined EditingDebugBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15EditingDebugBox asm("??_R0?AVEditingDebugBox@@@8");
// win1.41 009acd30 mac inlined EditingDebugBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15EditingDebugBox asm("??_R1A@?0A@A@EditingDebugBox@@8");
// win1.41 009acd48 mac inlined EditingDebugBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15EditingDebugBox asm("??_R2EditingDebugBox@@8");
// win1.41 009acd58 mac inlined EditingDebugBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15EditingDebugBox asm("??_R3EditingDebugBox@@8");

// Override methods

// win1.41 0053d520 mac 105c3250 EditingDebugBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__15EditingDebugBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@EditingDebugBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0053d6f0 mac 105c31f0 EditingDebugBox::Destroy(void)
void __fastcall Destroy__15EditingDebugBoxFv(struct DialogBoxBase* this) asm("?Destroy@EditingDebugBox@@UAEXXZ");
// win1.41 0053d700 mac 105c3130 EditingDebugBox::InitControls(void)
void __fastcall InitControls__15EditingDebugBoxFv(struct DialogBoxBase* this) asm("?InitControls@EditingDebugBox@@UAEXXZ");

#endif /* BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H */
