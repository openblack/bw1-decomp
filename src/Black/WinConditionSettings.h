#ifndef BW1_DECOMP_WIN_CONDITION_SETTINGS_INCLUDED_H
#define BW1_DECOMP_WIN_CONDITION_SETTINGS_INCLUDED_H

#include <string>  /* For std::string */
#include <utility> /* For std::pair */

#include "WinCondition.h" /* For WC_LAST */

#define WIN_CONDITION_DEFAULT_MIN_TARGET 1
#define WIN_CONDITION_DEFAULT_MAX_TARGET 101
#define WIN_CONDITION_TARGET_UNAVAILABLE -1

struct WinConditionSettings
{
	long Target;
	long Min;
	long Max;
	long SmallStep;
	long LargeStep;
	long Type;

	// BW1W120 00dcb988
	static int LargeSteps[WC_LAST];
	// BW1W120 00dcb9c4
	static int SmallSteps[WC_LAST];
	// BW1W120 00dcba00
	static int MinTargets[WC_LAST];
	// BW1W120 00dcba3c
	static int MaxTargets[WC_LAST];
	// BW1W120 00dcba78
	static int MapMinTargets[WC_LAST];
	// BW1W120 00dcbab4
	static int MapMaxTargets[WC_LAST];
	// BW1W120 00dcbaf0
	static int DefaultTargets[WC_LAST];

	// BW1W120 00dcbb40
	static std::pair<std::string, WIN_CONDITION_TYPE> TypeNames[WC_LAST];

	// BW1W120 007753f0 BW1M119 null
	static void ResetLimits();
	// BW1W120 00775e90 BW1M119 null
	void Parse(std::string text);
};

static_assert(sizeof(WinConditionSettings) == 0x18, "WinConditionSettings size is incorrect");

#endif /* BW1_DECOMP_WIN_CONDITION_SETTINGS_INCLUDED_H */
