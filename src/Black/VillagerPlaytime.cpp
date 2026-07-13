#include "Villager.h"

#include "Football.h"

// TODO: deferred cluster (crt_xc_fn_atexitCleanupReg_VillagerPlaytime_00763080 [44B],
// crt_xc_fn_secsPerYear_VillagerPlaytime_007630B0 [5B jmp-stub], and the FUN_007630c0 body below),
// plus the 3 .rdata float consts and 1 .bss float -- same systemic pattern as
// VillagerTrader.cpp/VillagerScript.cpp (see those files for the full writeup).
// Summary of what's confirmed vs. still open:
//  - VALUES confirmed from raw .rdata bytes: 10.0f (@0x99a9c0, UNREFERENCED per Ghidra xrefs),
//    365.25f (num_days_in_year @0x99a9c4), 86400.0f (seconds_in_day @0x99a9c8).
//  - FUN_007630c0's operand order confirmed: fld seconds_in_day; fmul num_days_in_year; fstp -> a
//    private .bss float (0xdb9e2c, owned by this TU per splits.txt, zero further xrefs -- likely
//    vestigial/dead). Reproduced exactly below EXCEPT for symbol identity (next point).
//  - BLOCKED: target's real symbol for the init function is `?FUN_007630c0@Villager@@QAEXXZ` --
//    a genuine __thiscall Villager:: member mangling (public, non-virtual, void, no args), NOT the
//    anonymous `_$E9`/`_$S11`-style compiler-synthesized initializer a plain file-scope (or even
//    non-member `const`) global produces. This strongly implies NumDaysInYear/SecondsInDay/
//    SecondsPerYear are actually `static` DATA MEMBERS of Villager (MSVC6 mangles a static member's
//    dynamic-initializer helper as a class-scoped thiscall function) -- a Villager.h change with
//    naming implications shared by other TUs; deferring rather than guessing.
const float VillagerPlaytimeUnknown10 = 10.0f;
const float VillagerPlaytimeNumDaysInYear = 365.25f;
const float VillagerPlaytimeSecondsInDay = 86400.0f;

// BW1W120 007630c0 Villager::FUN_007630c0(void) -- see TODO above; kept as a fabricated file-scope
// approximation (correct values/operand order, wrong symbol identity) for the next pass.
static float VillagerPlaytimeSecondsPerYear = VillagerPlaytimeSecondsInDay * VillagerPlaytimeNumDaysInYear;

// BW1W120 007630e0 BW1M100 1058c1c0 Villager::IsPlaytime(void)
bool Villager::IsPlaytime()
{
	return GetTown() != NULL;
}

// BW1W120 007630f0 BW1M100 1058c170 Villager::CheckPlaytimeAvailableToPlayPFootball(void)
bool32_t Villager::CheckPlaytimeAvailableToPlayPFootball()
{
	return 1;
}

// BW1W120 00763100 BW1M100 1058c120 Villager::CheckPlaytimeSettingUpPlayPFootball(void)
bool32_t Villager::CheckPlaytimeSettingUpPlayPFootball()
{
	return 1;
}

// BW1W120 00763110 BW1M100 1058c0d0 Villager::MoveToFootballPitchConstruction(void)
bool32_t Villager::MoveToFootballPitchConstruction()
{
	return 1;
}

// BW1W120 00763120 BW1M100 1058c070 Villager::FootballWalkToPosition(void)
bool32_t Villager::FootballWalkToPosition()
{
	MoveTo();
	return 1;
}

// BW1W120 00763130 BW1M100 100a0100 Villager::CheckSatisfyPlaytimeDesire(void)
bool32_t Villager::CheckSatisfyPlaytimeDesire()
{
	return 0;
}

// BW1W120 00763140 BW1M100 1058bf80 Villager::WaitForKickOff(void)
bool32_t Villager::WaitForKickOff()
{
	// TODO: +0x200 is a match-phase field on the opaque Football blob (field_0xc4); compared for
	// equality with 1 (kickoff ready?) here -- keep the raw offset until Football.h is fleshed out.
	if (*(int*)((char*)GetFootball() + 0x200) == 1)
		SetTopState(VILLAGER_STATE_FOOTBALL_ATTACKER);
	return 1;
}

// BW1W120 00763170 BW1M100 1058bee0 Villager::FootballMatchPaused(void)
bool32_t Villager::FootballMatchPaused()
{
	if (GetFootball() != NULL && GetFootball()->GetBall() != NULL)
		LookAtObject((GameThingWithPos*)GetFootball()->GetBall(), 1);
	return 1;
}

// BW1W120 007631b0 BW1M100 1058be20 Villager::FootballMexicanWave(void)
bool32_t Villager::FootballMexicanWave()
{
	if (GetTown() == NULL)
		return DecideWhatToDo();
	Football* football = GetFootball();
	LookAtObject(football, 2);
	PlayAnimThenSetState(VILLAGER_STATE_FOOTBALL_WATCH_MATCH, 1);
	return 1;
}

// BW1W120 007631f0 BW1M100 1058bce0 Villager::FootballWatchMatch(void)
bool32_t Villager::FootballWatchMatch()
{
	if (GetTown() == NULL)
		return DecideWhatToDo();
	Football*         football = GetFootball();
	GameThingWithPos* ball = (GameThingWithPos*)football->GetBall();
	if (ball == NULL)
		return DecideWhatToDo();
	// TODO: +0x200 is a match-phase field on the opaque Football blob (field_0xc4); values seen: 0
	// (pre-kickoff - look at the football), 1 (in play - look at the ball), 4 (match over).
	int matchPhase = *(int*)((char*)football + 0x200);
	if (matchPhase == 0)
		return LookAtObject(football, 1);
	if (matchPhase == 1)
		return LookAtObject(ball, 1);
	if (matchPhase == 4)
	{
		Flags &= ~0x80;
		if (DecideWhatToDo() != 1)
			GoHome();
	}
	return 1;
}

// BW1W120 00763280 BW1M100 1058bbe0 Villager::ExitFootball(unsigned char)
// TODO: deferred (partial) -- blocked on two UNNAMED Football methods (blocker #4, needs naming):
//   fn_005325D0 (Football+0x224/+0x22c intrusive linked lists, thiscall(Villager*) -> bool32_t;
//     removes this villager from what look like attacker/defender lists, uses operator_delete)
//   fn_005326E0 (Football+0x25c, a 40-entry Villager* array, thiscall(Villager*) -> bool32_t;
//     linear scan removing this villager and decrementing a count at +0x218 -- a spectator list?)
// Full logic once those are named:
//   Football* football = GetFootball();
//   if (football->field_0x254 == this)       // some "current <role>" Villager* slot on Football
//       football->field_0x254 = NULL;
//   if (football->fn_005325D0(this) != 1)
//       football->fn_005326E0(this);
// This TODO block sits between the state-exit bail-out and the Flags clear below.
bool32_t Villager::ExitFootball(unsigned char exit_state)
{
	circle_hug_info.Reset(this);
	if (IsStateExitFunctionSameAs((VILLAGER_STATES)exit_state) || exit_state == 1 || exit_state == 2)
		return true;
	Flags &= ~0x80;
	return true;
}
