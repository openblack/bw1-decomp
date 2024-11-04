#ifndef BW1_DECOMP_START_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_START_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupList;
struct SetupStaticText;

struct StartGameBox
{
  struct DialogBoxBase super;  /* 0x0 */
  struct SetupStaticText* text;  /* 0x10 */
  struct SetupList* list;
  struct SetupButton* button;
  struct SetupBigButton* big_button;
};
static_assert(sizeof(struct StartGameBox) == 0x20, "Data type is of wrong size");

static struct DialogBoxBaseVftable* __vt__12StartGameBox = (struct DialogBoxBaseVftable*)0x008de99c;

#endif /* BW1_DECOMP_START_GAME_BOX_INCLUDED_H */
