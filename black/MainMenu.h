#ifndef BW1_DECOMP_MAIN_MENU_INCLUDED_H
#define BW1_DECOMP_MAIN_MENU_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct MainMenu
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x28];
};
static_assert(sizeof(struct MainMenu) == 0x38, "Data type is of wrong size");

// win1.41 008dec40 mac 109ed7d4 MainMenu::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8MainMenu asm("??_R4MainMenu@@6B@");

// win1.41 008dec44 mac 109ed7dc MainMenu::`vftable'
extern const struct DialogBoxBaseVftable __vt__8MainMenu asm("??_7MainMenu@@6B@");

// Override methods

// win1.41 0053f910 mac 105c0610 MainMenu::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__8MainMenuFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@MainMenu@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0053fb50 mac 105c05a0 MainMenu::Destroy(void)
void __fastcall Destroy__8MainMenuFv(struct DialogBoxBase* this) asm("?Destroy@MainMenu@@UAEXXZ");
// win1.41 0053bd50 mac 105c5ef0 MainMenu::CanESCOut(void)
bool __fastcall CanESCOut__8MainMenuFv(struct DialogBoxBase* this) asm("?CanESCOut@MainMenu@@UAE_NXZ");
// win1.41 0053fba0 mac 105bff40 MainMenu::InitControls(void)
void __fastcall InitControls__8MainMenuFv(struct DialogBoxBase* this) asm("?InitControls@MainMenu@@UAEXXZ");

#endif /* BW1_DECOMP_MAIN_MENU_INCLUDED_H */
