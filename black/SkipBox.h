#ifndef BW1_DECOMP_SKIP_BOX_INCLUDED_H
#define BW1_DECOMP_SKIP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SkipBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x14];
};
static_assert(sizeof(struct SkipBox) == 0x24, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea538 mac inlined SkipBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7SkipBox asm("??_R0?AVSkipBox@@@8");
// win1.41 009acdd0 mac inlined SkipBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7SkipBox asm("??_R1A@?0A@A@SkipBox@@8");
// win1.41 009acde8 mac inlined SkipBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7SkipBox asm("??_R2SkipBox@@8");
// win1.41 009acdf8 mac inlined SkipBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7SkipBox asm("??_R3SkipBox@@8");
// win1.41 008dead8 mac 109ed6d4 SkipBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__7SkipBox asm("??_R4SkipBox@@6B@");
// win1.41 008deadc mac 109ed6dc SkipBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__7SkipBox asm("??_7SkipBox@@6B@");

// Override methods

// win1.41 005441c0 mac 105bb390 SkipBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__7SkipBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@SkipBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00544430 mac 105bb330 SkipBox::Destroy(void)
void __fastcall Destroy__7SkipBoxFv(struct DialogBoxBase* this) asm("?Destroy@SkipBox@@UAEXXZ");
// win1.41 0053bd60 mac 105c5e80 SkipBox::CanESCOut(void)
bool __fastcall CanESCOut__7SkipBoxFv(struct DialogBoxBase* this) asm("?CanESCOut@SkipBox@@UAE_NXZ");
// win1.41 00544440 mac 105bb270 SkipBox::InitControls(void)
void __fastcall InitControls__7SkipBoxFv(struct DialogBoxBase* this) asm("?InitControls@SkipBox@@UAEXXZ");

#endif /* BW1_DECOMP_SKIP_BOX_INCLUDED_H */
