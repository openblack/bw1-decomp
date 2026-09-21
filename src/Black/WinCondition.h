#ifndef BW1_DECOMP_WIN_CONDITION_INCLUDED_H
#define BW1_DECOMP_WIN_CONDITION_INCLUDED_H
#include <assert.h>

// TODO: Original Windows-only class/enum names are unrecovered. Fields are
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
};
static_assert(sizeof(WinCondition) == 0x10, "WinCondition size is incorrect");
#endif
