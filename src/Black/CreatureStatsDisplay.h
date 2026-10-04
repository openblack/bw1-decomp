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

#endif /* BW1_DECOMP_CREATURE_STATS_DISPLAY_INCLUDED_H */
