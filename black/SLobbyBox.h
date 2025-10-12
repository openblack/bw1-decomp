#ifndef BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H
#define BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct GSLobbyBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x2a4];
};
static_assert(sizeof(struct GSLobbyBox) == 0x2b4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea518 mac inlined GSLobbyBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GSLobbyBox asm("??_R0?AVGSLobbyBox@@@8");
// win1.41 009acd80 mac inlined GSLobbyBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GSLobbyBox asm("??_R1A@?0A@A@GSLobbyBox@@8");
// win1.41 009acd98 mac inlined GSLobbyBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GSLobbyBox asm("??_R2GSLobbyBox@@8");
// win1.41 009acda8 mac inlined GSLobbyBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GSLobbyBox asm("??_R3GSLobbyBox@@8");
// win1.41 008deb78 mac 109edd0c GSLobbyBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10GSLobbyBox asm("??_R4GSLobbyBox@@6B@");
// win1.41 008deb7c mac 109edd14 GSLobbyBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__10GSLobbyBox asm("??_7GSLobbyBox@@6B@");

// Override methods

// win1.41 00599740 mac 105d3580 GSLobbyBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__10GSLobbyBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@GSLobbyBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0059a250 mac 105d3340 GSLobbyBox::Destroy(void)
void __fastcall Destroy__10GSLobbyBoxFv(struct DialogBoxBase* this) asm("?Destroy@GSLobbyBox@@UAEXXZ");
// win1.41 0059a0a0 mac 105d33a0 GSLobbyBox::InitControls(void)
void __fastcall InitControls__10GSLobbyBoxFv(struct DialogBoxBase* this) asm("?InitControls@GSLobbyBox@@UAEXXZ");

#endif /* BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H */
