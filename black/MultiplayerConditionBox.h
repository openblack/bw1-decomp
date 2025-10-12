#ifndef BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H
#define BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct MultiplayerConditionBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x2c];
};
static_assert(sizeof(struct MultiplayerConditionBox) == 0x3c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea348 mac inlined MultiplayerConditionBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23MultiplayerConditionBox asm("??_R0?AVMultiplayerConditionBox@@@8");
// win1.41 009ac920 mac inlined MultiplayerConditionBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23MultiplayerConditionBox asm("??_R1A@?0A@A@MultiplayerConditionBox@@8");
// win1.41 009ac938 mac inlined MultiplayerConditionBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23MultiplayerConditionBox asm("??_R2MultiplayerConditionBox@@8");
// win1.41 009ac948 mac inlined MultiplayerConditionBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23MultiplayerConditionBox asm("??_R3MultiplayerConditionBox@@8");
// win1.41 008de9c0 mac inlined MultiplayerConditionBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__23MultiplayerConditionBox asm("??_R4MultiplayerConditionBox@@6B@");
// win1.41 008de9c4 mac inlined MultiplayerConditionBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__23MultiplayerConditionBox asm("??_7MultiplayerConditionBox@@6B@");

// Override methods

// win1.41 0056eef0 mac inlined MultiplayerConditionBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__23MultiplayerConditionBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@MultiplayerConditionBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0056f260 mac inlined MultiplayerConditionBox::Destroy(void)
void __fastcall Destroy__23MultiplayerConditionBoxFv(struct DialogBoxBase* this) asm("?Destroy@MultiplayerConditionBox@@UAEXXZ");
// win1.41 0056f460 mac inlined MultiplayerConditionBox::InitControls(void)
void __fastcall InitControls__23MultiplayerConditionBoxFv(struct DialogBoxBase* this) asm("?InitControls@MultiplayerConditionBox@@UAEXXZ");

#endif /* BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H */
