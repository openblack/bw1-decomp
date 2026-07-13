#include "Villager.h"

#include "FishFarm.h"
#include "Rand.h"

// TODO: deferred cluster (crt_xc_fn_atexitCleanupReg_VillagerFisherman_0075B460 [44B],
// crt_xc_fn_secsPerYear_VillagerFisherman_0075B490 [5B jmp-stub], and the FUN_0075b4a0 body below),
// plus the 2 .rdata float consts and .bss pad range -- see vsm ledger "deferred" note for full writeup.
// Summary of what's confirmed vs. still open (mirrors the VillagerTrader/VillagerScript/VillagerChild
// precedent for this exact cluster shape):
//  - VALUES confirmed from raw .rdata bytes: 365.25f (num_days_in_year @0x99a970), 86400.0f
//    (seconds_in_day @0x99a974). Unlike VillagerTrader/VillagerScript, there is NO third (0.7f)
//    float here -- the next TU's rdata symbol (_villager_food_num_days_in_year) begins immediately
//    at 0x99a978, confirmed via raw byte dump.
//  - FUN_0075b4a0's operand order confirmed: fld seconds_in_day; fmul num_days_in_year; fstp -> a
//    private .bss float (0xdb9e04, owned by this TU per splits.txt).
//  - BLOCKED: target's real symbol for the init function is `?FUN_0075b4a0@Villager@@QAEXXZ` --
//    a genuine __thiscall Villager:: member mangling (public, non-virtual, void, no args), NOT the
//    anonymous `_$E9`/`_$S11`-style compiler-synthesized initializer a plain file-scope (or even
//    non-member `const`) global produces (confirmed empirically across the whole campaign: this
//    exact source shape below compiles to `_$E9`/`_$E10`/`_$S11`, never a Villager:: mangled symbol).
//    This strongly implies NumDaysInYear/SecondsInDay are actually `static` DATA MEMBERS of Villager
//    (MSVC6 mangles a static member's dynamic-initializer helper as a class-scoped thiscall
//    function) -- static members don't affect Villager's instance layout/sizeof, but adding one is
//    a Villager.h change with naming implications shared by other TUs; deferring rather than
//    guessing.
//  - crt_xc_fn_atexitCleanupReg (44B) is IDENTICAL byte-for-byte (same guard flag
//    `_Stz@?$fpos@H@std@@0HA+4`, same target `nullsub`-style callee at 0x407870) across >500 unrelated
//    TUs binary-wide (per VillagerTrader precedent) -- clearly common CRT/header boilerplate, not
//    VillagerFisherman-specific logic. Out of scope for a single-unit pass.
const float VillagerFishermanNumDaysInYear = 365.25f;
const float VillagerFishermanSecondsInDay = 86400.0f;

// BW1W120 0075b4a0 Villager::FUN_0075b4a0(void) -- see TODO above; kept as a fabricated file-scope
// approximation (correct values/operand order, wrong symbol identity) for the next pass.
static float VillagerFishermanSecondsPerYear = VillagerFishermanNumDaysInYear * VillagerFishermanSecondsInDay;

// BW1W120 0075b4c0 BW1M100 1057a800 Villager::FishermanLookForWater(void)
// TODO: deferred -- blocked on the UNNAMED global fn_0073E750 (systemic blocker #4: no symbols.txt
// name). Reverse-engineered structure (from raw target disasm, confirmed via manual byte-level
// re-derivation -- Ghidra's own auto-decompile mis-read the two GetTown() calls as one call with a
// mismatched arg count):
//     if (GetTown() != NULL)
//     {
//         float distance;
//         Villager* fisherman = GetTown()->fn_0073E750(this, &distance);  // walks Town's field_0x788
//             // linked list (fish farms?), scoring each by GetDistanceInMetres(Pos, candidate->Pos)
//             // and an unnamed GUtils modifier fn_0052D2F0, keeping the best-scoring node; returns
//             // the winning node's payload (a FishFarm*, cast from int) or 0 if the list is empty.
//         if (fisherman != NULL)
//         {
//             VillagerBecomesFisherman((FishFarm*)fisherman);
//             return true;
//         }
//     }
//     return false;
// fn_0073E750 (0x0073E750, 0xA0B) is owned by another unit (Town.cpp, per its list-walk shape and
// GetTown() callers) -- not mine to name. Logged for the dispatcher.
bool32_t Villager::FishermanLookForWater()
{
	if (GetTown() != NULL)
	{
		// TODO: GetTown()->fn_0073E750(this, &distance) -- see TODO above.
	}
	return false;
}

// BW1W120 0075b510 BW1M100 1057a710 Villager::VillagerBecomesFisherman(void)
// TODO: deferred -- blocked on the UNNAMED helper fn_0052C870 (systemic blocker #4). Confirmed
// structure (from raw target disasm; the `FishermanLookForWater() == 1` prefix and the final
// return/false path are believed correct, the middle is not):
//     if (FishermanLookForWater() == 1)
//     {
//         FishFarm* fish_farm = (FishFarm*)TargetThing;
//         MapCoords pos = fish_farm->fn_0052C870(&pos);   // randomised in-farm fishing spot: reads a
//             // field (fish_farm+0x1c), 2x GRand::GameFloatRand, 2x round_down -> fills a MapCoords
//             // by value (hidden retbuf), analogous to FishFarm::GetArrivePos() but for a specific
//             // fishing tile rather than the building's arrive point.
//         SetupMoveToOnFootpath(*fish_farm, pos, VILLAGER_STATE_FISHERMAN_ARRIVES_AT_FISHING);
//         return true;   // target normalises via neg/sbb/neg after the (void) SetupMoveToOnFootpath
//             // call -- unclear what value is being normalised (possibly a leftover from
//             // fn_0052C870, or SetupMoveToOnFootpath is not truly void); open question, moot until
//             // fn_0052C870 is named.
//     }
//     return false;
// fn_0052C870 (0x0052C870, 0xD0B) is owned by another unit (FishFarm.cpp) -- not mine to name.
// Same helper also blocks FishermanArrivesAtFishing's "exact arrival" branch below.
bool32_t Villager::VillagerBecomesFisherman()
{
	if (FishermanLookForWater() == 1)
	{
		// TODO: FishFarm* fish_farm = (FishFarm*)TargetThing;
		// TODO: MapCoords pos = fish_farm->fn_0052C870(&pos); -- see TODO above.
		// TODO: SetupMoveToOnFootpath(*fish_farm, pos, VILLAGER_STATE_FISHERMAN_ARRIVES_AT_FISHING);
		return true;
	}
	return false;
}

// BW1W120 0075b560 BW1M100 1057a5b0 Villager::VillagerBecomesFisherman(FishFarm *)
// TODO: 54.8% -- confirmed instance of the cheat-sheet's retbuf-arg-order OPEN idiom (don't chase):
// target materialises fish_farm->GetArrivePos()'s by-value MapCoords into a SEPARATE zero-inited,
// piecewise-copied stack temp (xor+3 stores, then an int/int/float field copy) positioned around the
// constant VILLAGER_STATES push, matching the documented "target pushes the CONST first, then
// materialises the retbuf temp" shape exactly. Tried: direct fish_farm->GetArrivePos() inline (44.1%
// -> reload via TargetThing instead of the raw param, 53.9%), named MapCoords local (54.8%, kept).
// Semantics are correct; residual is a whole-function register-pressure/scheduler tie-break per the
// existing idiom writeup, not a logic bug. Revisit only if a neighbour with the same shape matches.
bool32_t Villager::VillagerBecomesFisherman(FishFarm* fish_farm)
{
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	TargetThing = fish_farm;
	MapCoords pos = ((FishFarm*)TargetThing)->GetArrivePos();
	SetupMoveToOnFootpath(*(FishFarm*)TargetThing, pos, VILLAGER_STATE_FISHERMAN_ARRIVES_AT_FISHING);
	return true;
}

// BW1W120 0075b5d0 BW1M100 1057a410 Villager::FishermanArrivesAtFishing(void)
// TODO: 77.5% -- two stacked issues:
//  1) the "exactly at the arrive pos" branch is deferred -- blocked on the UNNAMED helper
//     fn_0052C870 (see VillagerBecomesFisherman(void) above for its reverse-engineered shape). The
//     other two branches (not-yet-valid-fishing-pos, and close-but-not-exact) are believed correct.
//  2) whole-function register-pressure tie-break (save-across-call-spill family): target caches
//     `this` in esi and TargetThing (fish_farm) in edi; our build swaps them (this->edi,
//     fish_farm->esi), rippling into a `~` on nearly every remaining instruction (same opcodes/args,
//     just esi<->edi swapped) with everything else -- offsets, vtable slots, branch targets --
//     otherwise identical. Tried: dropping the named `fish_farm` local entirely (regressed to 70.4%,
//     loses the edi cache altogether). Not chased further; matches the documented scheduler-tie-break
//     family (regalloc order, not a semantic bug).
bool32_t Villager::FishermanArrivesAtFishing()
{
	FishFarm* fish_farm = (FishFarm*)TargetThing;
	if (!IsAtValidFishingPos())
	{
		SetupMoveToOnFootpath(*fish_farm, fish_farm->GetArrivePos(), VILLAGER_STATE_FISHERMAN_ARRIVES_AT_FISHING);
		return true;
	}
	if (Pos == fish_farm->GetArrivePos())
	{
		// TODO: fish_farm->fn_0052C870(&pos) -- see VillagerBecomesFisherman(void) TODO above.
		MapCoords pos = fish_farm->GetArrivePos();
		SetupMoveToPos(pos, VILLAGER_STATE_FISHERMAN_ARRIVES_AT_FISHING);
		return true;
	}
	PlayAnimThenSetState(VILLAGER_STATE_FISHING, 1);
	return true;
}

// BW1W120 0075b670 BW1M100 1057a390 Villager::IsAtValidFishingPos(void)
// Compares only the high halfword of each MapCoords int field (Pos.x/Pos.z are fixed-point: the top
// 16 bits are the whole/cell part) -- proven via a wibo/cl.exe toy: a `>> 16` shift compiles to an
// actual `sar` (does not match), while a raw `((short*)&Pos.x)[1]` pointer-cast reproduces the
// target's direct `mov dx,[mem+2]` word load byte-for-byte. No MapCoords layout change needed.
bool32_t Villager::IsAtValidFishingPos()
{
	FishFarm* fish_farm = (FishFarm*)TargetThing;
	if (((short*)&Pos.x)[1] == ((short*)&fish_farm->Pos.x)[1] && ((short*)&Pos.z)[1] == ((short*)&fish_farm->Pos.z)[1])
	{
		return true;
	}
	return false;
}

// BW1W120 0075b6a0 BW1M100 1001b120 Villager::Fishing(void)
// TODO: deferred (376B, largest/most complex function in this unit; lowest ranked-queue score).
// Reverse-engineered structure, fully traced from raw target disasm + relocations/vtable dumps:
//     if (!IsReadyForNewAnimation(1)) return true;
//         // NOTE for dispatcher: this call site's target signature demangles as `void
//         // __thiscall Living::IsReadyForNewAnimation(unsigned int)`, but Living.h declares it
//         // `bool IsReadyForNewAnimation(uint32_t)` -- a mangled-return-mislabel-vs-codegen-style
//         // contradiction (shared header, out of this unit's scope to change/verify further).
//     field_0x90 = 0;   // BLOCKED: offset 0x90 (a uint16_t) is not covered by ANY currently-declared
//         // field across Villager/Living/Object/GameThingWithPos/GameThing -- a genuine struct-layout
//         // gap, not mine to fill (dispatcher-owned; AGENTS.md/skill rules exclude layout changes).
//     FishFarm* fish_farm = (FishFarm*)TargetThing;
//     if (GRand::GameRand(fish_farm->villagers.count, __FILE__, __LINE__) != 0) return true;
//         // "lucky roll" gate: only 1-in-N(fisherman count at this farm) ticks do real work.
//         // gamerand-file-line-split-tu idiom: line/file operands can never match in a split TU.
//     const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
//     float desiredCatch = (float)(uint32_t)villagerInfo->field_0x264 * CONST_AT_addr_0x34;
//         // CONST_AT_addr_0x34: the relocation dtk emits here is `??_7SetupEdit@@6B@` (a SetupEdit
//         // vtable!) which is almost certainly a phantom-abs32-reloc misattribution (idiom) for a
//         // small numeric literal at absolute address 0x34 -- not yet independently confirmed via
//         // raw .rdata (address 0x34 is implausibly low for a real .rdata float; needs the actual
//         // byte value read from the ORIGINAL binary at whatever true address this resolves to).
//     uint32_t season = GGameInfo_at_0xD019F8->GetSeason();  // BLOCKED: 0xd019f8 has NO symbols.txt
//         // entry anywhere (nearest named symbol is GGame::g_game @0xd0195c, a POINTER -- this is a
//         // separate, statically-addressed GGameInfo instance, likely a `static` data member of
//         // GGame or a file-scope static in GGame.cpp; systemic blocker #4, unnamed global).
//     float capacity = (float)GetFoodCapacity();
//     if (desiredCatch * kSeasonMultiplier[season] <= capacity)  // kSeasonMultiplier: {1.0f, 0.9f,
//         // 0.7f, 0.6f} built on the stack right before this compare -- 4 entries, indexed by season
//         // (0..3), most likely spring/summer/autumn/winter yield scaling.
//     {
//         season = GGameInfo_at_0xD019F8->GetSeason();  // re-queried (redundant double-call, same
//             // family as the GetTown()-called-twice pattern already seen in FishermanLookForWater).
//         desiredCatch *= kSeasonMultiplier[season];
//     }
//     else
//     {
//         desiredCatch = capacity;  // clamp to capacity
//     }
//     desiredCatch *= GetTribalPower(TRIBE_TYPE_NORSE);  // Object::GetTribalPower, vtable+0x6c8,
//         // verified via raw vtable dump (not Ghidra); TRIBE_TYPE_NORSE=7 confirmed from the enum.
//     int desiredCatchInt = (int)desiredCatch;
//     if ((float)(uint32_t)desiredCatchInt == 0.0f)
//     {
//         PickupFood((short)desiredCatchInt);
//     }
//     if ((float)GetFoodCapacity() < (float)desiredCatchInt) { }  // TODO: branch direction/exact
//         // semantics of this final capacity-vs-desiredCatch comparison not yet fully verified.
//     else if (GetFoodCapacity() != 0)
//     {
//         return true;
//     }
//     return GotoStoragePitForDropOff();
// Three independent blockers (struct-layout gap @0x90, unnamed global @0xd019f8, and an unverified
// float-constant relocation) make this unattemptable as real source right now. Left as a placeholder
// returning true (matches the common "nothing happened, stay in state" early-return path) pending a
// follow-up pass once the struct-layout gap and the global are named by the dispatcher.
bool32_t Villager::Fishing()
{
	if (!IsReadyForNewAnimation(1))
	{
		return true;
	}
	// TODO: field_0x90 = 0; -- see TODO above (struct-layout gap, not mine to fill).
	FishFarm* fish_farm = (FishFarm*)TargetThing;
	if (GRand::GameRand(fish_farm->villagers.count, __FILE__, __LINE__) != 0)
	{
		return true;
	}
	// TODO: the desired-catch float formula (season/capacity/tribal-power scaled) is blocked on the
	// unnamed global @0xD019F8 -- see TODO above.
	return true;
}

// BW1W120 0075b820 BW1M100 1057a240 Villager::EnterFishing(unsigned char, unsigned char)
// TODO: 79.8% -- deferred, several stacked issues:
//  1) the "add self to the fish farm's villager list" call is blocked on the UNNAMED helper
//     fn_0052D250 (systemic blocker #4; likely FishFarm::AddFisherman(Villager*), a sibling of the
//     already-declared FishFarm::RemoveFisherman). The membership check itself
//     (fish_farm->villagers.Contains(this)) is the existing LHLinkedList<Villager>::Contains()
//     inline template method -- confirmed field-for-field identical to the target's open-coded list
//     walk (head@0x80, node->next@0x0, node->payload@0x4).
//  2) IsStateEntryFunctionSameAs's bool result: target `test eax,eax`, ours `test al,al` -- same
//     bool-return-mask-needs-callee-defined family as ExitFishing (callee defined in another TU).
//  3) minor arg-masking/push scheduling tie-break on the two byte params (tried explicit uint32_t
//     casts, no change) and an ecx/eax register choice reloading TargetThing -- register-pressure
//     ties, not chased further per the 12-cycle guidance.
bool32_t Villager::EnterFishing(unsigned char new_state, unsigned char old_state)
{
	if (!IsStateEntryFunctionSameAs(new_state, old_state) && GetTown() != NULL)
	{
		FishFarm* fish_farm = (FishFarm*)TargetThing;
		if (!fish_farm->villagers.Contains(this))
		{
			// TODO: fish_farm->fn_0052D250(this) -- see TODO above.
		}
	}
	return true;
}

// BW1W120 0075b880 BW1M100 1009acc0 Villager::ExitFishing(unsigned char)
// TODO: 99.6% -- one-instruction cross-TU codegen quirk (bool-return-mask-needs-callee-defined
// family, "caller-side mirror" per the getbestworkshop-getarrivepos-sched idiom writeup): target
// does `test eax,eax` on the IsStateExitFunctionSameAs (a virtual, `_N`/bool-mangled) vtable-call
// result, ours does `test al,al`. IsStateExitFunctionSameAs is defined in a different TU (not this
// one), so this build can't know its return is a clean 0/1; not fixable from this unit.
bool32_t Villager::ExitFishing(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state))
	{
		if (TargetThing != NULL && ((FishFarm*)TargetThing)->IsAvailable())
		{
			GetTown();
			((FishFarm*)TargetThing)->RemoveFisherman(this);
		}
		TargetThing = NULL;
	}
	return true;
}
