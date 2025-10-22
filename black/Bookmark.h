#ifndef BW1_DECOMP_BOOKMARK_INCLUDED_H
#define BW1_DECOMP_BOOKMARK_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_TYPE */

// Forward Declares

struct LH3DSprite;

struct BookmarkGraphic
{
  struct LH3DSprite* sprite;  /* 0x0 */
  enum CREATURE_TYPE type;
};
static_assert(sizeof(struct BookmarkGraphic) == 0x8, "Data type is of wrong size");

// Static methods

// win1.41 0043a7d0 mac 100b5760 BookmarkGraphic::Create(long, CREATURE_TYPE)
struct BookmarkGraphic* __cdecl Create__15BookmarkGraphicFl13CREATURE_TYPE(int param_1, enum CREATURE_TYPE type) asm("?Create@BookmarkGraphic@@SAPAV1@JW4CREATURE_TYPE@@@Z");

#endif /* BW1_DECOMP_BOOKMARK_INCLUDED_H */
