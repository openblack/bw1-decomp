#include "GameTimeConstants.h"
#include "Villager.h"

#include <windows.h> /* For min */

#include "Abode.h"
#include "StoragePit.h"
#include "Town.h"
#include "Utils.h"
#include "VillagerInfo.h"

// BW1W120 0075b940 BW1M119 01583810
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
bool32_t Villager::ShowPoisoned()
{
	if (Flags & 4)
	{
		FindPosOutsideAbode(NULL);
		return true; // placeholder - real target falls through to PlayAnimThenSetState
	}
	PlayAnimThenSetState(0xa3, 1);
	return true;
}

bool32_t Villager::ChangeStateToFindFoodToEat()
{
	uint32_t        foodRequired = GetAmountOfFoodRequiredForMeal();
	VILLAGER_STATES eatState =
		(Flags & VILLAGER_FLAG_AT_HOME) ? VILLAGER_STATE_EAT_FOOD_AT_HOME : VILLAGER_STATE_EAT_FOOD;
	if (foodRequired == 0)
	{
		SetTopState(eatState);
		return true;
	}
	if (GetAbode() != NULL && GetAbode()->IsFunctional() &&
	    GetAbode()->GetResource(RESOURCE_TYPE_FOOD) + ResourceHeld[RESOURCE_TYPE_FOOD] >= foodRequired)
	{
		SetTopState((Flags & VILLAGER_FLAG_AT_HOME) ? VILLAGER_STATE_EAT_FOOD_AT_HOME : VILLAGER_STATE_GO_HOME);
		return true;
	}
	if (GetStoragePit() != NULL && GetStoragePit()->IsFunctional())
	{
		if (GetStoragePit()->GetResource(RESOURCE_TYPE_FOOD) >= foodRequired)
		{
			SetTopState(VILLAGER_STATE_GOTO_STORAGE_PIT_FOR_FOOD);
			return true;
		}
	}
	else
	{
		MapCoords dropoffPos = GetResourceDropoffPos(RESOURCE_TYPE_FOOD);
		if (!dropoffPos.IsCloseToEqual(Pos, 0.0f))
		{
			SetupMoveToWithHug(dropoffPos, VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_FOOD);
			return true;
		}
	}
	if (ResourceHeld[RESOURCE_TYPE_FOOD] != 0)
	{
		SetTopState(eatState);
		return true;
	}
	return false;
}

// BW1W120 0075bae0 BW1M119 01583630
float Villager::CalculateLifeDesire()
{
	return 1.0 - GetLife();
}

// BW1W120 0075baf0 BW1M119 015835f0
bool32_t Villager::CheckHungryAtHome()
{
	return true;
}

// BW1W120 0075bb00 BW1M119 01583500
float Villager::GetDesireToPickupFood()
{
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	if (ResourceHeld[RESOURCE_TYPE_FOOD] < (int16_t)villagerInfo->FoodReqiredForDinner)
		return 1.0f - (float)ResourceHeld[RESOURCE_TYPE_FOOD] / (float)villagerInfo->FoodReqiredForDinner;
	return 0.0f;
}

// BW1W120 0075bb50 BW1M119 01089d20
float Villager::GetDesireForFood()
{
	return GetFoodDesireFromFood(food);
}

float Villager::GetFoodDesireFromFood(float food_amount)
{
	return 1.0f - POWER(min(food_amount, 1.0f), 3);
}

// BW1W120 0075bba0 BW1M119 01024060
float Villager::GetDesireForLife()
{
	return GetLifeDesireFromLife(GetLife());
}

// BW1W120 0075bbc0 BW1M119 0102b110
float Villager::GetLifeDesireFromLife(float life)
{
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	float minLife = (villagerInfo->DamageThresholdToGoHome < life) ? villagerInfo->DamageThresholdToGoHome : life;
	float t = (life - minLife) / (1.0f - villagerInfo->DamageThresholdToGoHome);
	return 1.0f - t * t;
}

// BW1W120 0075bc00 BW1M119 010035e0
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

// BW1W120 0075bc20 BW1M119 0109cc60
uint32_t Villager::GetAmountOfFoodToEat()
{
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	float                foodWanted = GetDesireForFood() * villagerInfo->FoodReqiredForDinner;
	if (GetTown())
	{
		float scarcity = GetTown()->desire.Desire[TOWN_DESIRE_INFO_FOR_FOOD];
		CLAMP(scarcity, 0.0f, 1.0f);
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

// BW1W120 0075bf00 BW1M119 01098ca0
bool32_t Villager::CheckSatisfyOwnFoodDesire()
{
	if (IsHungry())
		return ChangeStateToFindFoodToEat();
	return 0;
}

// BW1W120 0075bf20 BW1M119 01582d50
float Villager::EatFoodHeld()
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
	CLAMP(food, 0.0f, 1.0f);
	if (GetTown())
		GetTown()->UseFood((uint32_t)amountToEat);
	return food;
}

// BW1W120 0075c000 BW1M119 01582cc0
bool32_t Villager::EatFood()
{
	// TODO: two residual diffs, none cleanly fixable from source:
	//  (1) branchless ternary width: target does `neg al` (byte condition) then `sbb eax,eax;
	//      and eax,0x31; add eax,0xa3` (dword result) — a width change mid-expression. Every
	//      source phrasing tried keeps a single width (all-byte with the cond cast, all the
	//      other way with a result cast); the byte-cond+dword-result mix wasn't reproduced.
	//  (2) scheduler: target pushes the `1` arg and loads `this` (mov ecx,esi) AFTER the
	//      IsPoisoned call; ours hoists `push 1` before it.
	//  NAMING: 0xa3/0xd4 are VILLAGER_STATE_DECIDE_WHAT_TO_DO / VILLAGER_STATE_SHOW_POISONED
	//  (PlayAnimThenSetState's uchar param is the state to enter, per matched neighbours in
	//  VillagerHome.cpp and Villager.cpp's state table). Left as literals pending human sign-off
	//  on the anim-vs-state naming of this parameter.
	EatFoodHeld();
	PlayAnimThenSetState((uint8_t)IsPoisoned() ? 0xd4 : 0xa3, 1);
	return 1;
}

// BW1W120 0075c040 BW1M119 01582be0
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

// BW1W120 0075c090 BW1M119 01582b20
bool32_t Villager::EatFoodAtHome()
{
	int16_t held = ResourceHeld[RESOURCE_TYPE_FOOD];
	int     required = GetAmountOfFoodToEat() - held;
	if (required > 0)
		GetFoodFromHome(required);
	EatFoodHeld();
	// TODO: residual diffs are the same deferred families as EatFood: the branchless ternary
	// below uses a byte condition (neg al) with a dword result (sbb/and/add eax) that no source
	// phrasing reproduces. 0xd4/0x26 =
	// VILLAGER_STATE_SHOW_POISONED / VILLAGER_STATE_AT_HOME (SetTopState arg) — literal pending
	// human sign-off on the naming.
	SetTopState(IsPoisoned() ? 0xd4 : 0x26);
	return 1;
}

// BW1W120 0075c0f0 BW1M119 01582ae0
bool32_t Villager::HomelessEatDinner()
{
	return true;
}
