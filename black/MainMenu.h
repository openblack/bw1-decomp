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

static struct DialogBoxBaseVftable* const __vt__8MainMenu = (struct DialogBoxBaseVftable* const)0x008dec44;

#endif /* BW1_DECOMP_MAIN_MENU_INCLUDED_H */
