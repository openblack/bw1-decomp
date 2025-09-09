#ifndef BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H
#define BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <lionhead/lh3dlib/development/Prss.h> /* For struct Prss */

struct PlayerMessage
{
  struct Prss super;  /* 0x0 */
};
static_assert(sizeof(struct PlayerMessage) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 0066b5e0 mac inlined PlayerMessage::ProcessTurn(void)
int __fastcall ProcessTurn__13PlayerMessageFv(struct Prss* this) asm("?ProcessTurn@PlayerMessage@@UAEHXZ");
// win1.41 0066b610 mac inlined PlayerMessage::Display(void)
void __fastcall Display__13PlayerMessageFv(struct Prss* this) asm("?Display@PlayerMessage@@UAEXXZ");

#endif /* BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H */
