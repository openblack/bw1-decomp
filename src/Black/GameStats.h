#ifndef BW1_DECOMP_GAME_STATS_INCLUDED_H
#define BW1_DECOMP_GAME_STATS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GPlayer;

class GameStats : public GameThing
{
public:
	uint8_t  field_0x14[0x94];
	uint32_t wood_used; /* 0xa8 */
	uint8_t  graph_0[0x1f4];
	uint8_t  field_0x2a0[0x5e8];
	uint8_t  graph_1[0x1f4]; /* 0x888 */
	uint8_t  field_0xa7c[0x6ac];

	// Override methods

	// BW1W120 00564b00 BW1M100 1031b740 GameStats::_dt(void)
	virtual ~GameStats();
	// BW1W120 00564ac0 BW1M100 103109d0 GameStats::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 00564ad0 BW1M100 10310a10 GameStats::SetPlayer(GPlayer *)
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 00564af0 BW1M100 10310a90 GameStats::GetDebugText(void)
	virtual char* GetDebugText();

	// Constructors

	// BW1W120 00564a40 BW1M100 1031b7d0 GameStats::GameStats(void)
	GameStats();
};

#endif /* BW1_DECOMP_GAME_STATS_INCLUDED_H */
