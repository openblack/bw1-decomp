#ifndef BW1_DECOMP_GAME_STATS_INCLUDED_H
#define BW1_DECOMP_GAME_STATS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Abode;
class Base;
class GPlayer;

class GameStats : public GameThing
{
public:
	// Original static names unrecovered; shared by EndTurn and the stats subsystem.
	// BW1W120 008ffdb8
	static const uint32_t UpdateInterval;
	// BW1W120 00d06040 / 00d06044
	static float MaxFrameRate;
	static float MinFrameRate;
	// BW1W120 00565110 BW1M100 10098000 GameStats::AddToTotalLinesOfCodeExecuted(void)
	static void AddToTotalLinesOfCodeExecuted();

	uint8_t  field_0x14[0x94];
	uint32_t WoodUsed; /* 0xa8 */
	uint8_t  Graph0[0x1f4];
	uint8_t  field_0x2a0[0x5e8];
	uint8_t  Graph1[0x1f4]; /* 0x888 */
	uint8_t  field_0xa7c[0x604];
	uint32_t field_0x1080;
	uint8_t  field_0x1084[0x600];

	// Override methods

	// BW1W120 00564b00 BW1M100 1031b740 GameStats::_dt(void)
	virtual ~GameStats();
	// BW1W120 00564ac0 BW1M100 103109d0 GameStats::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 00564ad0 BW1M100 10310a10 GameStats::SetPlayer(GPlayer *)
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 00564af0 BW1M100 10310a90 GameStats::GetDebugText(void)
	virtual char* GetDebugText();

	// Non-virtual methods

	// BW1W120 0056a3f0 BW1M100 10311000 GameStats::IncrementAllBuildingsBuilt(Abode *)
	void IncrementAllBuildingsBuilt(Abode* abode);

	// Constructors

	// BW1W120 00564a40 BW1M100 1031b7d0 GameStats::GameStats(void)
	GameStats();
};

#endif /* BW1_DECOMP_GAME_STATS_INCLUDED_H */
