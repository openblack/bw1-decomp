#include "Villager.h"

#include "Abode.h"
#include "Town.h"
#include "VillagerInfo.h"

// BW1W120 0075b940
// TODO: 46% — blocked on a cross-unit Rule 2 (hidden-retbuf) signature fix I can't make.
// The true structure (from the target asm) is:
//     if (Flags & 4) {
//         MapCoords pos = FindPosOutsideAbode(NULL);           // hidden retbuf + Abode*=NULL
//         SetupMoveToWithHug(pos, VILLAGER_STATE_SHOW_POISONED);
//     }
//     PlayAnimThenSetState(0xa3, 1);   // runs on BOTH paths (if-block FALLS THROUGH, no return)
//     return true;
// FindPosOutsideAbode's call site pushes TWO stack args — a NULL Abode* and the address of a
// 12-byte MapCoords local (the retbuf `lea eax,[esp+8]; push eax`) — so per AGENTS.md Rule 2 its
// real signature is `MapCoords FindPosOutsideAbode(Abode*)` (returns MapCoords by value), NOT the
// current `void FindPosOutsideAbode(Abode*)`. Fixing that needs edits to Villager.h AND the stub
// definition in Villager.cpp:678 (`void Villager::FindPosOutsideAbode(Abode*) {}`), which is
// ANOTHER unit — dispatcher-owned. Once FindPosOutsideAbode returns MapCoords, the body above
// should match. Left as-is (early-return in the if-block) until then to keep it compiling.
bool Villager::ShowPoisoned()
{
	if (Flags & 4)
	{
		FindPosOutsideAbode(NULL);
		return true; // placeholder - real target falls through to PlayAnimThenSetState
	}
	PlayAnimThenSetState(0xa3, 1);
	return true;
}

// TODO: 86.7% — the real symbol is ?POWER@@YGMM@Z (float __stdcall POWER(float)); it returns
// its float result in ST0 (no leak issue here). The loop trip count is a hardcoded immediate 2,
// modelled via the POWER<2> explicit specialization. Only residual diff: the loop body emits
// `fmul st,[esp+4]` (long-latency) BEFORE `dec eax` in our build but AFTER it in the target,
// even though the source order is `--i; result *= clamped;` (matches Ghidra). Scheduler
// tie-break: the independent fmul is hoisted ahead of the counter decrement. No source shape
// found to force dec-before-fmul without adding a fake dependency.
template <int T> float __stdcall POWER(float base);
template <> float __stdcall POWER<2>(float base);

// BW1W120 0075bae0
float Villager::CalculateLifeDesire()
{
	return 1.0 - GetLife();
}

// BW1W120 0075baf0
bool32_t Villager::CheckHungryAtHome()
{
	return true;
}

// BW1W120 0075bb00
// TODO: 51% — RETURN-TYPE CONTRADICTION (needs human/dispatcher). symbols.txt records this as
// ?GetDesireToPickupFood@Villager@@QAEIXZ (unsigned int, `I`), so the header keeps bool32_t to
// match. But the target body returns a FLOAT via ST0 on BOTH paths and never touches EAX:
//   - held >= required : `fld [0.0f]; add esp,8; ret`   (returns 0.0f on ST0)
//   - else             : `1.0 - held/required` left on ST0, NO __ftol
// A faithful uint body can't reproduce this: the early-out becomes `xor eax,eax` (int 0) and the
// compute path adds `call __ftol`. To byte-match, the function would have to be DECLARED float
// (mangled `M`), which contradicts the recorded `I` symbol — either symbols.txt is wrong or the
// original is UB (float returned from an unsigned-int-declared function). Deferred for a human to
// decide the true signature; can't touch symbols.txt. Same fpu-leak family as POWER/EatFoodHeld.
bool32_t Villager::GetDesireToPickupFood()
{
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	if (ResourceHeld[RESOURCE_TYPE_FOOD] >= (int16_t)villagerInfo->FoodReqiredForDinner)
		return 0;
	return (uint32_t)(1.0f - (float)ResourceHeld[RESOURCE_TYPE_FOOD] / (float)villagerInfo->FoodReqiredForDinner);
}

// BW1W120 0075bb50
float Villager::GetDesireForFood()
{
	return POWER<2>(food);
}

template <> float __stdcall POWER<2>(float base)
{
	float clamped = (base < 1.0f) ? base : 1.0f;
	float result = clamped;
	int   i = 2;
	do
	{
		--i;
		result *= clamped;
	} while (i != 0);
	return 1.0f - result;
}

// BW1W120 0075bba0
void Villager::GetDesireForLife()
{
	// TODO: target has no fstp cleanup after the call (leaks GetLifeDesireFromLife's return on
	// the FPU stack); ours emits fstp st(0). See idiom fpu-leak-void-return in CHEATSHEET.md.
	GetLifeDesireFromLife(GetLife());
}

// BW1W120 0075bbc0
float Villager::GetLifeDesireFromLife(float life)
{
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	float minLife = (villagerInfo->DamageThresholdToGoHome < life) ? villagerInfo->DamageThresholdToGoHome : life;
	float t = (life - minLife) / (1.0f - villagerInfo->DamageThresholdToGoHome);
	return 1.0f - t * t;
}

// BW1W120 0075bc00
uint32_t Villager::GetAmountOfFoodRequiredForMeal()
{
	// TODO: 83.3% — pure scheduler tie-break. Target emits
	//   test eax,eax; setle dl; pop esi; dec edx; and eax,edx
	// i.e. `pop esi` is scheduled between setle and dec. Our build with the
	// correct compare (test/setle, from `<= 0` / `> 0`) always schedules
	// `dec edx` before `pop esi`; the only source shape that moves pop earlier
	// (`< 1`) changes the compare to `cmp eax,1; setl` (wrong). Not a source
	// shape issue — c2.dll scheduler tie-break (save-across-call-spill family).
	int required = GetAmountOfFoodToEat() - ResourceHeld[RESOURCE_TYPE_FOOD];
	return required > 0 ? required : 0;
}

// BW1W120 0075bc20
uint32_t Villager::GetAmountOfFoodToEat()
{
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	float                foodWanted = GetDesireForFood() * villagerInfo->FoodReqiredForDinner;
	if (GetTown())
	{
		float scarcity = GetTown()->desire.field_0x118[TOWN_DESIRE_INFO_FOR_FOOD];
		if (scarcity < 0.0f)
			scarcity = 0.0f;
		else if (scarcity > 1.0f)
			scarcity = 1.0f;
		// TODO: 97.3% — two residual diffs:
		//  (1) target's 0.3 constant is __real@3e999999 (one ULP BELOW 0.3f, whose
		//      bits are 3e99999a). No evidence-based literal reproduces 3e999999;
		//      likely a truncated double->float in the original source.
		//  (2) scheduler tie-break: target emits `mov edx,[esi]` (GetTown vtable
		//      load) before `mov [esp+0xc],0`; ours emits it after.
		return (uint32_t)((1.0f - scarcity * 0.3f) * foodWanted);
	}
	return (uint32_t)foodWanted;
}

// BW1W120 0075bf00
// TODO: 91.7% — only diff is a `> and eax,0xff` after the ChangeStateToFindFoodToEat call.
// ChangeStateToFindFoodToEat is `_N` (real C++ bool); returning it as unsigned int widens the
// byte. In the original TU ChangeStateToFindFoodToEat is DEFINED (0x0075b990, same unit), so
// MSVC6 sees the clean 0/1 bool and elides the mask. Our build only has an extern decl (callee
// still `missing`) so it masks conservatively. This will match automatically once
// ChangeStateToFindFoodToEat is implemented in this unit. See bool-return-mask-needs-callee-defined.
uint32_t Villager::CheckSatisfyOwnFoodDesire()
{
	if (IsHungry())
		return ChangeStateToFindFoodToEat();
	return 0;
}

// BW1W120 0075bf20
// TODO: 87.5% — three residual diffs, all scheduler/fpu-leak, not source-shape:
//  (1) trailing `fld [this->food]` returns food as a leaked float; ours adds `call __ftol`
//      to honor the `unsigned int` (?EatFoodHeld@Villager@@QAEIXZ) return. fpu-leak-void-return
//      family (see CHEATSHEET.md) — can't leak from a uint-returning body.
//  (2) the (float)foodToEat conversion block (fild qword/fstp [esp+8]) schedules early in ours,
//      after the ResourceHeld int setup in target — scheduler tie-break.
//  (3) DropFood arg: target emits `mov ecx,esi; push eax`, ours `push eax; mov ecx,esi`.
uint32_t Villager::EatFoodHeld()
{
	uint32_t foodToEat = GetAmountOfFoodToEat();
	float    foodToEatF = (float)foodToEat;
	float    amountToEat;
	if (foodToEatF < (float)ResourceHeld[RESOURCE_TYPE_FOOD])
		amountToEat = foodToEatF;
	else
		amountToEat = (float)ResourceHeld[RESOURCE_TYPE_FOOD];
	DropFood((uint16_t)amountToEat);
	food += amountToEat / foodToEatF * ((const GVillagerInfo*)info)->FoodNurishmentMultiplier;
	if (food < 0.0f)
		food = 0.0f;
	else if (food > 1.0f)
		food = 1.0f;
	if (GetTown())
		GetTown()->UseFood((uint32_t)amountToEat);
	return (uint32_t)food;
}

// BW1W120 0075c000
uint32_t Villager::EatFood()
{
	// TODO: 71% — three residual diffs, none cleanly fixable from source:
	//  (1) target discards EatFoodHeld's leaked float via `fstp st(0)`; our EatFoodHeld returns a
	//      real int (uint mangling forces __ftol), so there's nothing to discard. Downstream of
	//      the EatFoodHeld fpu-leak — resolves only when EatFoodHeld byte-matches.
	//  (2) branchless ternary width: target does `neg al` (byte condition) then `sbb eax,eax;
	//      and eax,0x31; add eax,0xa3` (dword result) — a width change mid-expression. Every
	//      source phrasing tried keeps a single width (all-byte with the cond cast, all the
	//      other way with a result cast); the byte-cond+dword-result mix wasn't reproduced.
	//  (3) scheduler: target pushes the `1` arg and loads `this` (mov ecx,esi) AFTER the
	//      IsPoisoned call; ours hoists `push 1` before it.
	//  NAMING: 0xa3/0xd4 are VILLAGER_STATE_DECIDE_WHAT_TO_DO / VILLAGER_STATE_SHOW_POISONED
	//  (PlayAnimThenSetState's uchar param is the state to enter, per matched neighbours in
	//  VillagerHome.cpp and Villager.cpp's state table). Left as literals pending human sign-off
	//  on the anim-vs-state naming of this parameter.
	EatFoodHeld();
	PlayAnimThenSetState((uint8_t)IsPoisoned() ? 0xd4 : 0xa3, 1);
	return 1;
}

// BW1W120 0075c040
// TODO: 77.8% — three residual diffs:
//  (1) mangled return is unsigned int (?GetFoodFromHome@Villager@@QAEIK@Z) but the target
//      never sets EAX on either path (null early-out via `je 0x7a4`, or fallthrough after the
//      void PickupFood) — it returns whatever's leaked in EAX (original-source UB). We can't
//      reproduce: MSVC6 rejects a no-return body with C4716 (hard error), so `return 0;` stays,
//      costing one trailing `xor eax,eax`. no-explicit-return family.
//  (2) ternary result register: target keeps `amount` in ECX (param_1 is already loaded to ECX
//      for the compare and reused), emitting `jb` + fallthrough; ours puts it in EAX with an
//      inverted `jae` + `mov eax,ecx; jmp`. Regalloc tie-break — the `amount = param_1; if(...)`
//      if-form is WORSE (62.5%, spills param_1 to a callee-saved reg via ebx).
//  (3) GetResourceFrom result arg to PickupFood: target `mov ecx,edi; push eax`, ours reversed.
bool32_t Villager::GetFoodFromHome(unsigned long food_amount)
{
	Abode* abode = GetAbode();
	if (abode != NULL)
	{
		uint32_t amount = (food_amount < abode->GetResource(RESOURCE_TYPE_FOOD))
		                      ? food_amount
		                      : abode->GetResource(RESOURCE_TYPE_FOOD);
		PickupFood((int16_t)GetResourceFrom(abode, RESOURCE_TYPE_FOOD, (int16_t)amount));
	}
	return 0;
}

// BW1W120 0075c090
uint32_t Villager::EatFoodAtHome()
{
	int16_t held = ResourceHeld[RESOURCE_TYPE_FOOD];
	int     required = GetAmountOfFoodToEat() - held;
	if (required > 0)
		GetFoodFromHome(required);
	EatFoodHeld();
	// TODO: residual diffs are the same deferred families as EatFood: EatFoodHeld leaks a float
	// on ST0 that the target discards with `fstp st(0)` (our uint-returning EatFoodHeld has
	// nothing to discard), and the branchless ternary below uses a byte condition (neg al) with a
	// dword result (sbb/and/add eax) that no source phrasing reproduces. 0xd4/0x26 =
	// VILLAGER_STATE_SHOW_POISONED / VILLAGER_STATE_AT_HOME (SetTopState arg) — literal pending
	// human sign-off on the naming.
	SetTopState(IsPoisoned() ? 0xd4 : 0x26);
	return 1;
}

// BW1W120 0075c0f0
bool32_t Villager::HomelessEatDinner()
{
	return true;
}
