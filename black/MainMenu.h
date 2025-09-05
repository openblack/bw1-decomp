#ifndef BW1_DECOMP_MAIN_MENU_INCLUDED_H
#define BW1_DECOMP_MAIN_MENU_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

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

#endif /* BW1_DECOMP_MAIN_MENU_INCLUDED_H */
