#ifndef BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SkirmishGameBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x22c];
};
static_assert(sizeof(struct SkirmishGameBox) == 0x23c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea3e8 mac inlined SkirmishGameBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15SkirmishGameBox asm("??_R0?AVSkirmishGameBox@@@8");
// win1.41 009acab0 mac inlined SkirmishGameBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15SkirmishGameBox asm("??_R1A@?0A@A@SkirmishGameBox@@8");
// win1.41 009acac8 mac inlined SkirmishGameBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15SkirmishGameBox asm("??_R2SkirmishGameBox@@8");
// win1.41 009acad8 mac inlined SkirmishGameBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15SkirmishGameBox asm("??_R3SkirmishGameBox@@8");
// win1.41 008de948 mac 109ed654 SkirmishGameBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15SkirmishGameBox asm("??_R4SkirmishGameBox@@6B@");
// win1.41 008de94c mac 109ed65c SkirmishGameBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__15SkirmishGameBox asm("??_7SkirmishGameBox@@6B@");

// Override methods

// win1.41 00544820 mac 105baab0 SkirmishGameBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__15SkirmishGameBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@SkirmishGameBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00544b90 mac 105ba740 SkirmishGameBox::Destroy(void)
void __fastcall Destroy__15SkirmishGameBoxFv(struct DialogBoxBase* this) asm("?Destroy@SkirmishGameBox@@UAEXXZ");
// win1.41 00544bd0 mac 105ba3e0 SkirmishGameBox::InitControls(void)
void __fastcall InitControls__15SkirmishGameBoxFv(struct DialogBoxBase* this) asm("?InitControls@SkirmishGameBox@@UAEXXZ");

#endif /* BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H */
