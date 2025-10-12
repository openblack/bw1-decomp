#ifndef BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H
#define BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct TattooEditor
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x3218];
};
static_assert(sizeof(struct TattooEditor) == 0x3228, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea490 mac inlined TattooEditor::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12TattooEditor asm("??_R0?AVTattooEditor@@@8");
// win1.41 009acc40 mac inlined TattooEditor::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12TattooEditor asm("??_R1A@?0A@A@TattooEditor@@8");
// win1.41 009acc58 mac inlined TattooEditor::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12TattooEditor asm("??_R2TattooEditor@@8");
// win1.41 009acc68 mac inlined TattooEditor::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12TattooEditor asm("??_R3TattooEditor@@8");
// win1.41 008debf0 mac 109ed754 TattooEditor::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12TattooEditor asm("??_R4TattooEditor@@6B@");
// win1.41 008debf4 mac 109ed75c TattooEditor::`vftable'
extern const struct DialogBoxBaseVftable __vt__12TattooEditor asm("??_7TattooEditor@@6B@");

// Override methods

// win1.41 00542510 mac 105bdae0 TattooEditor::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__12TattooEditorFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@TattooEditor@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 005427e0 mac 105bda80 TattooEditor::Destroy(void)
void __fastcall Destroy__12TattooEditorFv(struct DialogBoxBase* this) asm("?Destroy@TattooEditor@@UAEXXZ");
// win1.41 0053bd20 mac 105c5eb0 TattooEditor::CanESCOut(void)
bool __fastcall CanESCOut__12TattooEditorFv(struct DialogBoxBase* this) asm("?CanESCOut@TattooEditor@@UAE_NXZ");
// win1.41 005433e0 mac 105bc900 TattooEditor::InitControls(void)
void __fastcall InitControls__12TattooEditorFv(struct DialogBoxBase* this) asm("?InitControls@TattooEditor@@UAEXXZ");

#endif /* BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H */
