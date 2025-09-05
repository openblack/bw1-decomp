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

// win1.41 008de998 mac 109ed694 StartGameBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12StartGameBox asm("??_R4StartGameBox@@6B@");

// win1.41 008de99c mac 109ed69c StartGameBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__12StartGameBox asm("??_7StartGameBox@@6B@");

#endif /* BW1_DECOMP_START_GAME_BOX_INCLUDED_H */
