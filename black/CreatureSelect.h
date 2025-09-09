#ifndef BW1_DECOMP_CREATURE_SELECT_INCLUDED_H
#define BW1_DECOMP_CREATURE_SELECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <lionhead/lh3dlib/development/Prss.h> /* For struct Prss */

struct CreatureSelect
{
  struct Prss super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureSelect) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 004f7210 mac inlined CreatureSelect::ProcessTurn(void)
int __fastcall ProcessTurn__14CreatureSelectFv(struct Prss* this) asm("?ProcessTurn@CreatureSelect@@UAEHXZ");
// win1.41 004f7250 mac inlined CreatureSelect::Display(void)
void __fastcall Display__14CreatureSelectFv(struct Prss* this) asm("?Display@CreatureSelect@@UAEXXZ");
// win1.41 004f74d0 mac inlined CreatureSelect::ClickFunction(int, int, int)
void __fastcall ClickFunction__14CreatureSelectFiii(struct Prss* this, const void* edx, int param_1, int param_2, int param_3) asm("?ClickFunction@CreatureSelect@@UAEXHHH@Z");

#endif /* BW1_DECOMP_CREATURE_SELECT_INCLUDED_H */
