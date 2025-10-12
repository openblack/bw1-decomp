#ifndef BW1_DECOMP_LOBBY_BOX_INCLUDED_H
#define BW1_DECOMP_LOBBY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct LobbyBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x7c];
};
static_assert(sizeof(struct LobbyBox) == 0x8c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea550 mac inlined LobbyBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8LobbyBox asm("??_R0?AVLobbyBox@@@8");
// win1.41 009ace20 mac inlined LobbyBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8LobbyBox asm("??_R1A@?0A@A@LobbyBox@@8");
// win1.41 009ace38 mac inlined LobbyBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8LobbyBox asm("??_R2LobbyBox@@8");
// win1.41 009ace48 mac inlined LobbyBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8LobbyBox asm("??_R3LobbyBox@@8");
// win1.41 008deba0 mac 109edd54 LobbyBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8LobbyBox asm("??_R4LobbyBox@@6B@");
// win1.41 008deba4 mac 109edd5c LobbyBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__8LobbyBox asm("??_7LobbyBox@@6B@");

// Override methods

// win1.41 005f5250 mac 105d7ac0 LobbyBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__8LobbyBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@LobbyBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 005f5a40 mac 105d7a60 LobbyBox::Destroy(void)
void __fastcall Destroy__8LobbyBoxFv(struct DialogBoxBase* this) asm("?Destroy@LobbyBox@@UAEXXZ");
// win1.41 005f5a50 mac 105d78e0 LobbyBox::InitControls(void)
void __fastcall InitControls__8LobbyBoxFv(struct DialogBoxBase* this) asm("?InitControls@LobbyBox@@UAEXXZ");

#endif /* BW1_DECOMP_LOBBY_BOX_INCLUDED_H */
