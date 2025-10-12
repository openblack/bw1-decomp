#ifndef BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H
#define BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct ProfileEditor
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x48];
};
static_assert(sizeof(struct ProfileEditor) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea408 mac inlined ProfileEditor::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13ProfileEditor asm("??_R0?AVProfileEditor@@@8");
// win1.41 009acb00 mac inlined ProfileEditor::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13ProfileEditor asm("??_R1A@?0A@A@ProfileEditor@@8");
// win1.41 009acb18 mac inlined ProfileEditor::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13ProfileEditor asm("??_R2ProfileEditor@@8");
// win1.41 009acb28 mac inlined ProfileEditor::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13ProfileEditor asm("??_R3ProfileEditor@@8");
// win1.41 008dec68 mac 109ed814 ProfileEditor::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13ProfileEditor asm("??_R4ProfileEditor@@6B@");
// win1.41 008dec6c mac 109ed81c ProfileEditor::`vftable'
extern const struct DialogBoxBaseVftable __vt__13ProfileEditor asm("??_7ProfileEditor@@6B@");

// Override methods

// win1.41 0053dd30 mac 105c2560 ProfileEditor::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__13ProfileEditorFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@ProfileEditor@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0053e210 mac 105c2500 ProfileEditor::Destroy(void)
void __fastcall Destroy__13ProfileEditorFv(struct DialogBoxBase* this) asm("?Destroy@ProfileEditor@@UAEXXZ");
// win1.41 0053bd30 mac 105c5f30 ProfileEditor::CanESCOut(void)
bool __fastcall CanESCOut__13ProfileEditorFv(struct DialogBoxBase* this) asm("?CanESCOut@ProfileEditor@@UAE_NXZ");
// win1.41 0053e380 mac 105c2140 ProfileEditor::InitControls(void)
void __fastcall InitControls__13ProfileEditorFv(struct DialogBoxBase* this) asm("?InitControls@ProfileEditor@@UAEXXZ");

#endif /* BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H */
