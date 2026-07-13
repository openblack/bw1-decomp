#include "Villager.h"

// TODO: crt static-init cluster (dispatcher-owned, same shape as VillagerTrader.cpp /
// VillagerScript.cpp / VillagerChild.cpp -- see CHEATSHEET.md idiom "secs-per-year-cluster"):
// crt_xc_fn_atexitCleanupReg_VillagerLeader_00762680 (44B header boilerplate, byte-identical
// binary-wide -- same guard flag `_Stz@?$fpos@H@std@@0HA` + nullsub callee at 0x407870, verified
// against other TUs -- not VillagerLeader-specific logic) and
// crt_xc_fn_secsPerYear_VillagerLeader_007626B0 (5B tailcall-jmp-stub -> FUN_007626c0 below).
// Values confirmed from raw .rdata bytes (objdump -s -j .rdata orig/BW1W120/runblack-decrypted.exe):
// 1000.0f (@0x99a9ac, UNREFERENCED by either function in this unit -- the same "extra unused
// float" shape as VillagerTrader's/VillagerScript's 0.7f), 365.25f (num_days_in_year @0x99a9b0),
// 86400.0f (seconds_in_day @0x99a9b4). FUN_007626c0's confirmed body: fld seconds_in_day; fmul
// num_days_in_year; fstp -> a private .bss float (0xdb9e20, owned by this TU per splits.txt, no
// further xrefs found). The real init symbol is `?FUN_007626c0@Villager@@QAEXXZ` -- a genuine
// __thiscall Villager:: member mangling, not the anonymous compiler-synthesized initializer a
// plain namespace-scope global produces. This exact NumDaysInYear/SecondsInDay/SecondsPerYear
// triple recurs with its OWN private per-TU address in ~25 different Villager*.cpp TUs (grep
// symbols.txt for "_num_days_in_year_"), so it cannot be one ordinary global initialized from a
// single TU -- it is most likely a `static` Villager data member (or a widely-included-header
// entity) that every including TU re-instantiates. That is a Villager.h/shared-header change with
// cross-TU naming implications, not something a single unit can fix. Left as a file-scope
// approximation (right values/operand order, unresolved symbol identity) for the dispatcher.
const float VillagerLeaderFloat1000p0 = 1000.0f;
const float VillagerLeaderNumDaysInYear = 365.25f;
const float VillagerLeaderSecondsInDay = 86400.0f;

// BW1W120 007626c0 Villager::FUN_007626c0(void) -- see TODO above; kept as a fabricated file-scope
// approximation (correct values/operand order, wrong symbol identity) for the next pass.
static float VillagerLeaderSecondsPerYear = VillagerLeaderNumDaysInYear * VillagerLeaderSecondsInDay;

// BW1W120 007626e0 BW1M100 1058ad90 Villager::CheckLeaderNeeded(void)
bool32_t Villager::CheckLeaderNeeded()
{
	return false;
}
