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
	// BW1W120 00439dd0 BW1M100 10082d20 Bookmark::ProcessAll(void)
	static void ProcessAll();
	// TODO: Instance layout is not recovered; only the static serialization interface is declared.
	// BW1W120 0043a3f0 BW1M100 100b5d90 Bookmark::SaveAll(GameOSFile &)
	static unsigned int SaveAll(GameOSFile& file);
	// BW1W120 0043a5e0 BW1M100 100b5a00 Bookmark::LoadAll(GameOSFile &)
	static unsigned int LoadAll(GameOSFile& file);
};

struct BookmarkGraphic
{
	LH3DSprite*   sprite; /* 0x0 */
	CREATURE_TYPE type;

	// Static methods

	// BW1W120 0043a7d0 BW1M100 100b5760 BookmarkGraphic::Create(long, CREATURE_TYPE)
	static BookmarkGraphic* Create(int param_1, CREATURE_TYPE type);
};

#endif /* BW1_DECOMP_BOOKMARK_INCLUDED_H */
