#include "Villager.h"

#include "MapCoords.h"

// TODO: crt static-init cluster (dispatcher-owned, mirrors VillagerTrader.cpp):
// crt_xc_fn_atexitCleanupReg_VillagerScript_007685B0 (44B header boilerplate, identical
// binary-wide), crt_xc_fn_secsPerYear_VillagerScript_007685E0 + FUN_007685f0 (the
// NumDaysInYear*SecondsInDay product below), and crt_xc_fn_sentinelNegOne_VillagerScript_00768610
// + FUN_00768620 (sets a private .bss dword @0xdb9e48 to -1). Values confirmed from raw .rdata:
// 365.25f (@0x99a9f8), 86400.0f (@0x99a9fc), 0.7f (@0x99aa00, UNREFERENCED). As in VillagerTrader,
// the real init symbols are `?FUN_...@Villager@@QAEXXZ` thiscall members => these are almost
// certainly static DATA MEMBERS of Villager (a Villager.h change with cross-TU naming
// implications); left as file-scope approximations for the dispatcher.
const float  VillagerScriptNumDaysInYear = 365.25f;
const float  VillagerScriptSecondsInDay = 86400.0f;
const float  VillagerScriptFloat0p7 = 0.7f;
static float VillagerScriptSecondsPerYear = VillagerScriptNumDaysInYear * VillagerScriptSecondsInDay;

// BW1W120 00768630 BW1M100 10597660 Villager::IsReadyForNewScriptAction(void)
uint32_t Villager::IsReadyForNewScriptAction()
{
	// == IN_SCRIPT, written as a byte subtraction so MSVC6 emits the original's
	// sub al,4 / neg al / sbb / inc arithmetic form (a plain == on constant 4 emits sete;
	// only == 1 gets the arithmetic form for free, via dec).
	return (unsigned char)((uint8_t)GetTopState() - VILLAGER_STATE_IN_SCRIPT) == 0;
}

// BW1W120 00768640 BW1M100 105975c0 Living::CannotExitState(unsigned char)
// TODO: 93.9% — blocked on a shared-header return-type decision (dispatcher). The target treats
// IsStateExitFunctionSameAs (Living vtable slot 0x96c) as INT-returning at the call site
// (`test eax,eax`, then reuses the clean eax=0 for the false `return 0`), but Living.h declares it
// `virtual bool` (`_N`), so our build emits `test al,al` + an extra `xor eax,eax`. Confirmed with a
// wibo toy: a bool virtual gives `test al`+`xor`, an int virtual gives `test eax`+reuse (byte-exact
// to target). The fix is declaring the state-predicate virtuals (0x964/0x968/0x96c:
// IsScriptInterruptableState/IsStateForInterface/IsStateExitFunctionSameAs) as bool32_t in Living.h,
// but their definitions are `_N` in symbols.txt and Villager overrides them as bool — a coordinated
// cross-hierarchy change out of a single unit's scope.
bool32_t Living::CannotExitState(unsigned char state)
{
	return IsStateExitFunctionSameAs((VILLAGER_STATES)state) || state == VILLAGER_STATE_IN_HAND ||
	       state == VILLAGER_STATE_FLYING;
}

// BW1W120 00768680 BW1M100 105974b0 Villager::SetupScriptWanderToPos(MapCoords const &, float, unsigned short, unsigned short)
// TODO: 90.9% — one-instruction scheduler tie-break. Semantics + regalloc all match; the only diff
// is the `and eax,0xffff` (max_turns 16-bit mask) floats one slot: target does `and ecx (min); lea
// edx,[ecx+1]; and eax (max); cmp`, ours does `and ecx; and eax; lea edx; cmp`. max_turns is loaded
// early but the target defers its mask to just before the cmp; no source form (ternary, if-max,
// min+1-first local) reproduces the deferral (all mask both operands before the lea). Field
// reinterpretation of the script-wander sub-state (field_0x10c wander-centre JustWholeMapXZ via the
// established VillagerFireman idiom, TargetThing@0x118 reused as the radius float, WanderArea union
// counters) is intentional; a dispatcher union/named members would remove the casts.
bool32_t Villager::SetupScriptWanderToPos(const MapCoords& pos, float radius, unsigned short min_turns,
                                          unsigned short max_turns)
{
	((JustWholeMapXZ*)&field_0x10c)->Init(pos);
	*(float*)&TargetThing = radius;
	unsigned int max_wander_turns = (min_turns + 1 > max_turns) ? (min_turns + 1) : max_turns;
	WanderArea.x = min_turns;
	WanderArea.z = max_wander_turns;
	return SetupNewScriptWander();
}

// BW1W120 007686d0 BW1M100 10597370 Villager::SetupNewScriptWander(void)
// TODO: deferred (multiple blockers). Reverse-engineered structure (from 0x7686d0 asm):
//     MapCoords coords(*(JustWholeMapXZ*)&field_0x10c);              // wander centre @0x10c/0x110
//     float angle = GRand::GameFloatRand(6.2831855f, __FILE__, __LINE__);   // 0x40c90fdb = 2*pi
//     float dist  = GRand::GameFloatRand(*(float*)&TargetThing, __FILE__, __LINE__); // radius @0x118
//     GUtils::AddDistanceFromAngle(&coords, angle, dist);
//     SetupMoveToWithHug(coords, VILLAGER_STATE_SCRIPT_WANDER /*0xc7=199*/);
//     TurnsUntilNextStateChange =
//         WanderArea.x + GRand::GameRand(WanderArea.z - WanderArea.x, __FILE__, __LINE__);  // min + rand(max-min)
//     // NOTE: no explicit return in the target — EAX is left holding (min + rand), so a plain
//     // `return true` would add an extra `mov eax,1` (the mangled return is `I`/unsigned int).
// Blockers, all beyond a single-unit fix:
//  (1) gamerand-file-line-split-tu: 3x GameFloatRand/GameRand bake __FILE__ (a .data label
//      "C:\dev\MP\Black\VillagerScript.c" @0xc245e0) and __LINE__ (60/61/65) as constant pushes that
//      can't match a split TU (our path is a COMDAT string, our line numbers differ).
//  (2) GUtils::AddDistanceFromAngle @0x74d510 is mangled thiscall (`QAE`) yet its body reads ALL
//      three args (MapCoords*, float, float) off the STACK with caller-cleanup (`ret`, no imm) and
//      never touches ECX as `this` — a calling-convention contradiction: declaring it thiscall
//      (to match the QAE symbol) would pass the MapCoords* in ECX, not on the stack. Needs a
//      dispatcher call-convention decision + a header decl (all other GUtils methods are static/SA).
//  (3) MapCoords(JustWholeMapXZ&) ctor (??0MapCoords@@QAE@AAVJustWholeMapXZ@@@Z @0x603070) is not
//      declared in MapCoords.h.
bool32_t Villager::SetupNewScriptWander()
{
	return true;
}

// BW1W120 00768780 BW1M100 inlined Living::ExitNoChangeState(VILLAGER_STATES)
// TODO: 88.6% — same shared-header bool-return-width blocker as CannotExitState: the three state
// predicates at vtable 0x964/0x968/0x96c are declared `bool` (`_N`) so we emit `test al,al` + a
// trailing `xor eax,eax`, but the target uses `test eax,eax` and reuses eax=0 (int-returning form).
// Also a minor vtable-load schedule diff (target does `mov eax,[esi]` before `and edi,0xff`, ours
// after). Both are dispatcher-owned (return-type + scheduler tie-break).
int Living::ExitNoChangeState(VILLAGER_STATES state)
{
	if (!IsScriptInterruptableState((VILLAGER_STATES)(state & VILLAGER_STATE_LAST_STATE)) &&
	    !IsStateForInterface((VILLAGER_STATES)(state & VILLAGER_STATE_LAST_STATE)) &&
	    !IsStateExitFunctionSameAs((VILLAGER_STATES)(state & VILLAGER_STATE_LAST_STATE)))
	{
		return 0;
	}
	return 1;
}

// BW1W120 007687d0 BW1M100 inlined Living::EnterScriptWander(VILLAGER_STATES, VILLAGER_STATES)
uint32_t Living::EnterScriptWander(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
	return EnterInScript(param_1, param_2);
}

// BW1W120 007687f0 BW1M100 105971a0 Villager::ScriptWanderAroundPos(void)
bool32_t Villager::ScriptWanderAroundPos()
{
	if (data_for_script_remind == NULL)
	{
		data_for_script_remind = DataForScriptRemind::Create();
	}
	int turns = (uint16_t)TurnsUntilNextStateChange;
	TurnsUntilNextStateChange = turns - 1;
	if ((int16_t)turns <= 0)
	{
		SetupNewScriptWander();
	}
	return 1;
}

// BW1W120 00768830 BW1M100 inlined Living::ExitScriptWander(VILLAGER_STATES)
int Living::ExitScriptWander(VILLAGER_STATES state)
{
	return ExitInScript(state);
}

// BW1W120 00768840 BW1M100 inlined Living::EnterPlayAnim(VILLAGER_STATES, VILLAGER_STATES)
// TODO: deferred (300B, complex). Reverse-engineered structure (from 0x768840 decompile):
//     Villager* v = dynamic_cast<Villager*>(this);   // ___RTDynamicCast to Villager::RTTI
//     if (v != NULL &&
//         !v->IsStateEntryFunctionSameAs(param_1 & 0xff, param_2 & 0xff) &&
//         data_for_script_remind != NULL &&
//         (VILLAGER_STATES)data_for_script_remind->field_0x44 == (param_2 & 0xff)) {
//         // build a MapCoords (goal), compare via MapCoords::operator!=, AreWeThere(0);
//         // if not there: data_for_script_remind->field_0x24 = 0; ->field_0x44 = 0;
//         //               SetupMoveToPos(goal, <retaddr state>); return 0x23;
//         // else: ->field_0x44 = 0; look up anim index in DAT_00edd508[...] table;
//         //       if current anim != wanted: game3dobject->SetCurrentAnim / SetCurrentCycleTime
//     }
//     return 1;
// Blockers: (1) IsStateEntryFunctionSameAs is `nonmatching` in Villager.cpp (callee mismatch
// propagates); (2) references the unnamed global DAT_00edd508 (an animation-index table) — needs a
// name in symbols.txt; (3) data_for_script_remind->field_0x24/0x44 are placeholder fields;
// (4) dynamic_cast/RTDynamicCast + MapCoords operator!= + AreWeThere + SetupMoveToPos scheduling.
uint32_t Living::EnterPlayAnim(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
	return 1;
}

// BW1W120 00768970 BW1M100 10005f50 Villager::ScriptPlayAnim(void)
// TODO: 84.3% — scheduler tie-break (save-across-call-spill family). Semantics correct: decrement
// the SCRIPT_PLAY_ANIM frame counter at WanderArea.z (0x120), pick SCRIPT_PLAY_ANIM (0xc8) while
// >0 else IN_SCRIPT (4), lazily create data_for_script_remind. The two-call if/else below is
// tail-merged by MSVC into one call with immediate-push branches (matching the target's push
// 0xc8/push 4). Residual diff: the target emits a redundant `test eax,eax` after `dec eax` and
// branches with `jbe` (CF-based) with push-1-after-store; our build reuses the dec's ZF (`je`) and
// puts push-1 before the store. No source shape found (tried ternary-arg [branchless select],
// state-local-one-call [branchless push eax], inverted <=0, and != vs > vs <= boundaries) to force
// the redundant test / jbe / store-then-push ordering — it's a regalloc/scheduling artifact.
bool32_t Villager::ScriptPlayAnim()
{
	uint32_t counter = WanderArea.z;
	if (counter > 0)
	{
		WanderArea.z = --counter;
		if (counter > 0)
		{
			PlayAnimThenSetState(VILLAGER_STATE_SCRIPT_PLAY_ANIM, 1);
		}
		else
		{
			PlayAnimThenSetState(VILLAGER_STATE_IN_SCRIPT, 1);
		}
		if (data_for_script_remind == NULL)
		{
			data_for_script_remind = DataForScriptRemind::Create();
		}
	}
	return 1;
}

// BW1W120 007689c0 BW1M100 inlined Living::ExitPlayAnim(VILLAGER_STATES)
int Living::ExitPlayAnim(VILLAGER_STATES state)
{
	return ExitInScript(state);
}

// BW1W120 007689d0 BW1M100 1000afa0 Villager::IsScriptAnimationComplete(void)
bool32_t Villager::IsScriptAnimationComplete()
{
	VILLAGER_STATES state = GetTopState();
	if ((uint8_t)state == VILLAGER_STATE_WAIT_FOR_ANIMATION)
	{
		return false;
	}
	if ((uint8_t)state == VILLAGER_STATE_SCRIPT_PLAY_ANIM)
	{
		return WanderArea.z == 0;
	}
	return true;
}

// BW1W120 00768a00 BW1M100 10596c60 Villager::ScriptAnimation(void)
// TODO: returns the raw dword at the WanderArea union (0x11c); the semantic union member is a guess.
bool32_t Villager::ScriptAnimation()
{
	return WanderArea.x;
}

// BW1W120 00768a10 BW1M100 10596c20 Villager::WeakOnGround(void)
bool32_t Villager::WeakOnGround()
{
	return true;
}

// BW1W120 00768a20 BW1M100 105969d0 Villager::ScriptGoAndMoveAlongPath(void)
// TODO: deferred (346B, complex). Reverse-engineered structure (from 0x768a20 decompile):
//     if (AreWeThere(0.0f)) {                       // MobileWallHug::AreWeThere @ 0x5ee520-ish
//         // path finished: notify the DataPath's track (data_path->track_no) and return
//         return 1;
//     }
//     DataPath* dp = data_path;                     // base.super.data_path
//     ScriptedCamera* cam = dp->scripted_camera;
//     // two branches on dp->field_0x20; both compute a target via round_down() of camera params
//     // then advance the camera (calls into 0x844280 / 0x8439c0);
//     MapCoordsFull target; target.x = round_down(...); target.z = round_down(...);
//     SetupMoveToPos(target, VILLAGER_STATE_SCRIPT_GO_AND_MOVE_ALONG_PATH);   // matched callee
//     return 1;
// Blockers: (1) DataPath / ScriptedCamera struct fields (field_0x20, scripted_camera, track_no,
// field_0x4->field_0x0) are placeholders/unknown layout; (2) `round_down` and the camera-advance
// helpers at 0x844280/0x8439c0/0x8439c0 are unnamed/unclear; (3) __ftol + float consts + MapCoordsFull.
// Needs the DataPath/ScriptedCamera layout (dispatcher) before it can be attempted.
bool32_t Villager::ScriptGoAndMoveAlongPath()
{
	return true;
}
