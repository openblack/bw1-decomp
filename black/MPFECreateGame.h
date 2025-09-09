#ifndef BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H
#define BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct MPFECreateGame
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct MPFECreateGame) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 0062a630 mac 1039bd40 MPFECreateGame::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__14MPFECreateGameFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__cdecl* param_3)(int32_t param_1, struct SetupBox * param_2, struct SetupControl * param_3, int32_t param_4, int32_t param_5)) asm("?Init@MPFECreateGame@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0062ab00 mac 1039bd00 MPFECreateGame::Destroy(void)
void __fastcall Destroy__14MPFECreateGameFv(struct DialogBoxBase* this) asm("?Destroy@MPFECreateGame@@UAEXXZ");

#endif /* BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H */
