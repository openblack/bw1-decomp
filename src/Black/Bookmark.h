#ifndef BW1_DECOMP_BOOKMARK_INCLUDED_H
#define BW1_DECOMP_BOOKMARK_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_TYPE */

// Forward Declares

struct LH3DSprite;
class GameOSFile;

class Bookmark
{
public:
	// BW1W120 00439d60 BW1M119 010b9ea0
	static void ClearAll();
	// BW1W120 00439dd0 BW1M119 01085110
	static void ProcessAll();
	// TODO: Instance layout is not recovered; only the static serialization interface is declared.
	// BW1W120 0043a3f0 BW1M119 010b8990
	static unsigned int SaveAll(GameOSFile& file);
	// BW1W120 0043a5e0 BW1M119 010b8600
	static unsigned int LoadAll(GameOSFile& file);
};

struct BookmarkGraphic
{
	LH3DSprite*   sprite; /* 0x0 */
	CREATURE_TYPE type;

	// Static methods

	// BW1W120 0043a7d0 BW1M119 010b8360
	static BookmarkGraphic* Create(int param_1, CREATURE_TYPE type);
};

#endif /* BW1_DECOMP_BOOKMARK_INCLUDED_H */
