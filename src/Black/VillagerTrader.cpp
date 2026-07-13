#include "Villager.h"

// TODO: deferred cluster (crt_xc_fn_atexitCleanupReg_VillagerTrader_0076B920 [44B],
// crt_xc_fn_secsPerYear_VillagerTrader_0076B950 [5B jmp-stub], and the FUN_0076b960 body below), plus
// the 3 .rdata float consts and 2 .bss/pad ranges -- see vsm ledger "deferred" note for full writeup.
// Summary of what's confirmed vs. still open:
//  - VALUES confirmed from raw .rdata bytes: 365.25f (num_days_in_year @0x99aa50), 86400.0f
//    (seconds_in_day @0x99aa54), 0.7f (float0p7 @0x99aa58, UNREFERENCED anywhere per Ghidra xrefs).
//  - FUN_0076b960's operand order confirmed: fld seconds_in_day; fmul num_days_in_year; fstp -> a
//    private .bss float (0xdcb168, owned by this TU per splits.txt, zero further xrefs -- likely
//    vestigial/dead). Reproduced exactly below EXCEPT for symbol identity (next point).
//  - BLOCKED: target's real symbol for the init function is `?FUN_0076b960@Villager@@QAEXXZ` --
//    a genuine __thiscall Villager:: member mangling (public, non-virtual, void, no args), NOT the
//    anonymous `_$E9`/`_$S11`-style compiler-synthesized initializer a plain file-scope (or even
//    non-member `const`) global produces (confirmed empirically: this exact source shape below
//    compiles to `_$E9`/`_$E10`/`_$S11`, never a Villager:: mangled symbol). This strongly implies
//    NumDaysInYear/SecondsInDay/SecondsPerYear are actually `static` DATA MEMBERS of Villager (MSVC6
//    mangles a static member's dynamic-initializer helper as a class-scoped thiscall function) --
//    static members don't affect Villager's instance layout/sizeof, but adding one is a Villager.h
//    change with naming implications shared by other TUs; deferring rather than guessing.
//  - crt_xc_fn_atexitCleanupReg (44B) is IDENTICAL byte-for-byte (same guard flag
//    `_Stz@?$fpos@H@std@@0HA+4`, same target `nullsub`-style callee at 0x407870) across >500 unrelated
//    TUs binary-wide (verified against AlignmentInfo.o) -- clearly common CRT/header boilerplate
//    (likely a Schwarz-counter-style guard for a widely-included header's static object), not
//    VillagerTrader-specific logic. Out of scope for a single-unit pass.
const float VillagerTraderNumDaysInYear = 365.25f;
const float VillagerTraderSecondsInDay = 86400.0f;
const float VillagerTraderFloat0p7 = 0.7f;

// BW1W120 0076b960 Villager::FUN_0076b960(void) -- see TODO above; kept as a fabricated file-scope
// approximation (correct values/operand order, wrong symbol identity) for the next pass.
static float VillagerTraderSecondsPerYear = VillagerTraderNumDaysInYear * VillagerTraderSecondsInDay;

// BW1W120 0076b980 BW1M100 1059c830 Villager::ArrivesInAbodeToPickUpExcess(void)
bool32_t Villager::ArrivesInAbodeToPickUpExcess()
{
	return true;
}

// BW1W120 0076b990 BW1M100 1059c7f0 Villager::ArrivesInAbodeToTrade(void)
bool32_t Villager::ArrivesInAbodeToTrade()
{
	return true;
}

// BW1W120 0076b9a0 BW1M100 1059c7b0 Villager::SetupFoodForWoodTrade(long)
void Villager::SetupFoodForWoodTrade(long param_1) {}

// BW1W120 0076b9b0 BW1M100 1059c770 Villager::ExcessFood(void)
bool32_t Villager::ExcessFood()
{
	return true;
}

// BW1W120 0076b9c0 BW1M100 1059c730 Villager::SetupWoodForFoodTrade(long)
void Villager::SetupWoodForFoodTrade(long param_1) {}

// BW1W120 0076b9d0 BW1M100 1059c6f0 Villager::ExcessWood(void)
bool32_t Villager::ExcessWood()
{
	return true;
}
