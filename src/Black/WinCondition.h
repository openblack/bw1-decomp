#ifndef BW1_DECOMP_WIN_CONDITION_INCLUDED_H
#define BW1_DECOMP_WIN_CONDITION_INCLUDED_H
#include <assert.h>

enum WIN_CONDITION_TYPE
{
	WC_KILL_NUM_VILLAGERS = 0,
	WC_CREATURE_KILL_VILLAGERS = 1,
	WC_VILLAGERS_BORN_IN_TOWN = 2,
	WC_HOUSES_BUILT = 3,
	WC_WONDERS_BUILT = 4,
	WC_FOOD_IN_PITS = 5,
	WC_WOOD_IN_PITS = 6,
	WC_TAKEOVER_NUM_TOWNS = 7,
	WC_PRAYER_POWER_GENERATED = 8,
	WC_BUILDINGS_PLAYER_SMASHED = 9,
	WC_BUILDINGS_CREATURE_SMASHED = 10,
	WC_BELIEF_IN_WORLD = 11,
	WC_BUILD_COMPLETE_NEW_TOWN = 12,
	WC_VILLAGERS_CONVERTED = 13,
	WC_GROW_TREES = 14,
	WC_LAST = 15,
};

// TODO: Original Windows-only class name is unrecovered. Fields are
// established by initialization, target adjustment and GPlayer's victory checks.
class WinCondition
{
public:
	int  Type;
	int  Current;
	int  Target;
	bool Completed;
	// BW1W120 00775370
	WinCondition();
	// Real emitted RET destructor; preserves insertion temporaries.
	// BW1W120 00775380
	~WinCondition();
	// BW1W120 00775720
	void Add(int amount);
	// BW1W120 00775740
	void Set(int value);
};
static_assert(sizeof(WinCondition) == 0x10, "WinCondition size is incorrect");
#endif
