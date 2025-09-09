#ifndef BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H
#define BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SetupMultiplayerMain
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct SetupMultiplayerMain) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 00549b60 mac 105ce270 SetupMultiplayerMain::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__20SetupMultiplayerMainFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__cdecl* param_3)(int32_t param_1, struct SetupBox * param_2, struct SetupControl * param_3, int32_t param_4, int32_t param_5)) asm("?Init@SetupMultiplayerMain@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00549f80 mac 105ce210 SetupMultiplayerMain::Destroy(void)
void __fastcall Destroy__20SetupMultiplayerMainFv(struct DialogBoxBase* this) asm("?Destroy@SetupMultiplayerMain@@UAEXXZ");
// win1.41 0054a180 mac 105cde40 SetupMultiplayerMain::InitSubDialogs(void)
void __fastcall InitSubDialogs__20SetupMultiplayerMainFv(struct DialogBoxBase* this) asm("?InitSubDialogs@SetupMultiplayerMain@@UAEXXZ");
// win1.41 00549f90 mac 105ce110 SetupMultiplayerMain::InitControls(void)
void __fastcall InitControls__20SetupMultiplayerMainFv(struct DialogBoxBase* this) asm("?InitControls@SetupMultiplayerMain@@UAEXXZ");

#endif /* BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H */
