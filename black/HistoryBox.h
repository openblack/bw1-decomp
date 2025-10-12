#ifndef BW1_DECOMP_HISTORY_BOX_INCLUDED_H
#define BW1_DECOMP_HISTORY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct HistoryBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0xc];
};
static_assert(sizeof(struct HistoryBox) == 0x1c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea3a8 mac inlined HistoryBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10HistoryBox asm("??_R0?AVHistoryBox@@@8");
// win1.41 009aca10 mac inlined HistoryBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10HistoryBox asm("??_R1A@?0A@A@HistoryBox@@8");
// win1.41 009aca28 mac inlined HistoryBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10HistoryBox asm("??_R2HistoryBox@@8");
// win1.41 009aca38 mac inlined HistoryBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10HistoryBox asm("??_R3HistoryBox@@8");
// win1.41 008de970 mac 109ed4ac HistoryBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10HistoryBox asm("??_R4HistoryBox@@6B@");
// win1.41 008de974 mac 109ed4b4 HistoryBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__10HistoryBox asm("??_7HistoryBox@@6B@");

// Override methods

// win1.41 00545230 mac 105b9ac0 HistoryBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__10HistoryBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@HistoryBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 005453b0 mac 105b9a60 HistoryBox::Destroy(void)
void __fastcall Destroy__10HistoryBoxFv(struct DialogBoxBase* this) asm("?Destroy@HistoryBox@@UAEXXZ");
// win1.41 00545460 mac 105b98b0 HistoryBox::WantsKeyControl(void)
bool __fastcall WantsKeyControl__10HistoryBoxFv(struct DialogBoxBase* this) asm("?WantsKeyControl@HistoryBox@@UAE_NXZ");
// win1.41 00545470 mac 105b97c0 HistoryBox::WantsMouseControl(void)
bool __fastcall WantsMouseControl__10HistoryBoxFv(struct DialogBoxBase* this) asm("?WantsMouseControl@HistoryBox@@UAE_NXZ");
// win1.41 005454f0 mac 105b9780 HistoryBox::CanESCOut(void)
bool __fastcall CanESCOut__10HistoryBoxFv(struct DialogBoxBase* this) asm("?CanESCOut@HistoryBox@@UAE_NXZ");
// win1.41 005453c0 mac 105b9a20 HistoryBox::InitControls(void)
void __fastcall InitControls__10HistoryBoxFv(struct DialogBoxBase* this) asm("?InitControls@HistoryBox@@UAEXXZ");

#endif /* BW1_DECOMP_HISTORY_BOX_INCLUDED_H */
