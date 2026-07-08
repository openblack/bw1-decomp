#ifndef BW1_DECOMP_BOOKMARK_INCLUDED_H
#define BW1_DECOMP_BOOKMARK_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_TYPE */

// Forward Declares

struct LH3DSprite;

struct BookmarkGraphic
{
	LH3DSprite*   sprite; /* 0x0 */
	CREATURE_TYPE type;

	// Static methods

	// BW1W120 0043a7d0 BW1M100 100b5760 BookmarkGraphic::Create(long, CREATURE_TYPE)
	static BookmarkGraphic* Create(int param_1, CREATURE_TYPE type);
};

#endif /* BW1_DECOMP_BOOKMARK_INCLUDED_H */
