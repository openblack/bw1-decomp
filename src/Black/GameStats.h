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
	// BW1W120 00564b40 BW1M119 01323d20
	void Init(GPlayer& player);
	// BW1W120 00564d90 BW1M119 01323ab0
	static void ClearAll();
	// Original static names unrecovered; shared by EndTurn and the stats subsystem.
	// BW1W120 008ffdb8
	static const uint32_t UpdateInterval;
	// BW1W120 00d06040
	static float MaxFrameRate;
	// BW1W120 00d06044
	static float MinFrameRate;
	// BW1W120 00565110 BW1M119 01099f40
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

	// BW1W120 00564b00 BW1M119 01323e00
	virtual ~GameStats();
	// BW1W120 00564ac0 BW1M119 01318e50
	virtual GPlayer* GetPlayer();
	// BW1W120 00564ad0 BW1M119 01318e90
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 00564af0 BW1M119 01318f10
	virtual char* GetDebugText();

	// Non-virtual methods

	// BW1W120 0056a3f0 BW1M119 01319480
	void IncrementAllBuildingsBuilt(Abode* abode);

	// Constructors

	// BW1W120 00564a40 BW1M119 01323e90
	GameStats();
};

#endif /* BW1_DECOMP_GAME_STATS_INCLUDED_H */
