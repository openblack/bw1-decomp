#ifndef BW1_DECOMP_GAME_STATS_LIST_INCLUDED_H
#define BW1_DECOMP_GAME_STATS_LIST_INCLUDED_H

#include <stddef.h> /* For NULL */

#include <Lionhead/LHLib/ver5.0/LHListHead.h> /* For LHListHeadTail */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For LHListNode */

struct GameStatsListString
{
	char                            String[0x80];
	LHListNode<GameStatsListString> next;

	// BW1W120 0056a190 BW1M119 inlined
	GameStatsListString() { String[0] = '\0'; }
	// BW1W120 0056a1a0 BW1M119 inlined
	char* GetString() { return String; }
};

class GameStatsStringList : public LHListHeadTail<GameStatsListString>
{
public:
	// BW1W120 0056a1b0 BW1M119 inlined
	~GameStatsStringList() {}
};

#endif /* BW1_DECOMP_GAME_STATS_LIST_INCLUDED_H */
