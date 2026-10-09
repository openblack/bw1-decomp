#ifndef BW1_DECOMP_CREATURE_STATS_DISPLAY_INCLUDED_H
#define BW1_DECOMP_CREATURE_STATS_DISPLAY_INCLUDED_H

#include <re_common.h> /* For bool32_t */

class CreatureStatsDisplay
{
public:
	// BW1W120 00cc62e0 BW1M119 01a0adb4
	static float HandValue;
	// BW1W120 00cc62e4 BW1M119 01a0adb8
	static float Exhaustion;
	// BW1W120 00cc62e8 BW1M119 01a0adbc
	static float EnergyLoss;
	// BW1W120 00cc62ec BW1M119 01a0adc0
	static float LifeLoss;
	// BW1W120 00cc630c BW1M119 01a0adb0
	static int Alpha;
	// BW1W120 00cc6310 BW1M119 01a0adac
	static bool32_t Interacting;
};

// BW1W120 005178d0 BW1M119 01019d30
void DrawCreatureStats();
// BW1W120 00517080 BW1M119 010cdf70
void DrawCreatureStats(float life_loss, float energy_loss, float exhaustion, float hand_value, int alpha);
// BW1W120 00516cb0 BW1M119 010ce9e0
void DrawCreatureFightStats(float life1, float energy1, wchar_t* name1, float life2, float energy2, wchar_t* name2,
                            int alpha);

#endif /* BW1_DECOMP_CREATURE_STATS_DISPLAY_INCLUDED_H */
