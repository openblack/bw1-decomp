#ifndef BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H
#define BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SetupMultiplayerMain
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct SetupMultiplayerMain) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea448 mac inlined SetupMultiplayerMain::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20SetupMultiplayerMain asm("??_R0?AVSetupMultiplayerMain@@@8");
// win1.41 009acba0 mac inlined SetupMultiplayerMain::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20SetupMultiplayerMain asm("??_R1A@?0A@A@SetupMultiplayerMain@@8");
// win1.41 009acbb8 mac inlined SetupMultiplayerMain::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20SetupMultiplayerMain asm("??_R2SetupMultiplayerMain@@8");
// win1.41 009acbc8 mac inlined SetupMultiplayerMain::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20SetupMultiplayerMain asm("??_R3SetupMultiplayerMain@@8");

// Override methods

// win1.41 00549b60 mac 105ce270 SetupMultiplayerMain::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__20SetupMultiplayerMainFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@SetupMultiplayerMain@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00549f80 mac 105ce210 SetupMultiplayerMain::Destroy(void)
void __fastcall Destroy__20SetupMultiplayerMainFv(struct DialogBoxBase* this) asm("?Destroy@SetupMultiplayerMain@@UAEXXZ");
// win1.41 0054a180 mac 105cde40 SetupMultiplayerMain::InitSubDialogs(void)
void __fastcall InitSubDialogs__20SetupMultiplayerMainFv(struct DialogBoxBase* this) asm("?InitSubDialogs@SetupMultiplayerMain@@UAEXXZ");
// win1.41 00549f90 mac 105ce110 SetupMultiplayerMain::InitControls(void)
void __fastcall InitControls__20SetupMultiplayerMainFv(struct DialogBoxBase* this) asm("?InitControls@SetupMultiplayerMain@@UAEXXZ");

#endif /* BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H */
