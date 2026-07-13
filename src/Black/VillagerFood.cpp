#include "Villager.h"

#include "Abode.h"
#include "Town.h"
#include "VillagerInfo.h"

// BW1W120 0075b940
bool Villager::ShowPoisoned()
{
	if (Flags & 4)
	{
		// TODO: FindPosOutsideAbode's declared signature (void(Abode*)) doesn't match the
		// call site here - the target pushes TWO stack args (a NULL Abode* plus the address of
		// a 12-byte local reserved on ShowPoisoned's own stack frame) suggesting a hidden
		// MapCoords out-param that the header/symbols.txt doesn't currently show. Cross-unit
		// (FindPosOutsideAbode lives in another TU) - not mine to fix. Deferred.
		FindPosOutsideAbode(NULL);
		return true; // placeholder - real target also calls SetupMoveToWithHug with the found pos
	}
	PlayAnimThenSetState(0xa3, 1);
	return true;
}

// TODO: void return per mangled name (?POWER_f_@@YAXMI@Z) is suspicious for a free cdecl
// function - the compiled target leaves its result on the FPU stack (ST0) without popping,
// and its only caller (GetDesireForFood) relies on that value as if POWER_f_ returned float.
// Also the second (unsigned int) parameter is never read from the stack in the target; the
// loop trip count is a hardcoded immediate 2. See idiom fpu-leak-void-return in CHEATSHEET.md.
void POWER_f_(float param_1, unsigned int param_2);

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
// TODO: mangled return is unsigned int (?GetDesireToPickupFood@Villager@@QAEIXZ) but the target
// body computes and returns a FLOAT via the FPU (ST0) on both paths, never touching EAX - same
// fpu-leak family as POWER_f_/EatFoodHeld/GetFoodFromHome. Declared bool32_t to keep the mangled
// name matching symbols.txt; body below is semantically faithful but won't byte-match.
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
	// TODO: best-effort reconstruction; doesn't reproduce the target's exact "call, ret" shape
	// (no stack cleanup, no reload) - see idiom fpu-leak-void-return.
	float result;
	POWER_f_(food, 2);
	return result;
}

// BW1W120 0075bb60
void POWER_f_(float param_1, unsigned int param_2)
{
	float        clamped = (param_1 < 1.0f) ? param_1 : 1.0f;
	float        result = clamped;
	unsigned int n = 2;
	do
	{
		--n;
		result *= clamped;
	} while (n != 0);
	1.0f - result;
}

// BW1W120 0075bba0
void Villager::GetDesireForLife()
{
	// TODO: target has no fstp cleanup after the call (leaks GetLifeDesireFromLife's return on
	// the FPU stack); ours emits fstp st(0). See idiom fpu-leak-void-return in CHEATSHEET.md.
	GetLifeDesireFromLife(GetLife());
}

// BW1W120 0075bbc0
float Villager::GetLifeDesireFromLife(float param_1)
{
	const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
	float minLife = (villagerInfo->DamageThresholdToGoHome < param_1) ? villagerInfo->DamageThresholdToGoHome : param_1;
	float t = (param_1 - minLife) / (1.0f - villagerInfo->DamageThresholdToGoHome);
	return 1.0f - t * t;
}

// BW1W120 0075bc00
uint32_t Villager::GetAmountOfFoodRequiredForMeal()
{
	int required = GetAmountOfFoodToEat() - ResourceHeld[RESOURCE_TYPE_FOOD];
	return required > 0 ? required : 0;
}

// BW1W120 0075bc20
uint32_t Villager::GetAmountOfFoodToEat()
{
	float foodWanted = GetDesireForFood() * ((const GVillagerInfo*)info)->FoodReqiredForDinner;
	if (GetTown())
	{
		float scarcity = GetTown()->desire.field_0x118[TOWN_DESIRE_INFO_FOR_FOOD];
		if (scarcity < 0.0f)
			scarcity = 0.0f;
		else if (scarcity > 1.0f)
			scarcity = 1.0f;
		return (uint32_t)((1.0f - scarcity * 0.3f) * foodWanted);
	}
	return (uint32_t)foodWanted;
}

// BW1W120 0075bf00
uint32_t Villager::CheckSatisfyOwnFoodDesire()
{
	if (IsHungry())
		return ChangeStateToFindFoodToEat();
	return 0;
}

// BW1W120 0075bf20
// TODO: mangled return is unsigned int (?EatFoodHeld@Villager@@QAEIXZ) but the target falls
// through to "fld [this->food]" with no int conversion (no call to __ftol) before ret - same
// fpu-leak family as GetDesireToPickupFood/POWER_f_. Declared uint32_t to keep the mangled name
// matching symbols.txt; body below is semantically faithful but won't byte-match the epilogue.
uint32_t Villager::EatFoodHeld()
{
	float amountToEat = GetAmountOfFoodToEat();
	if (amountToEat > (float)ResourceHeld[RESOURCE_TYPE_FOOD])
		amountToEat = (float)ResourceHeld[RESOURCE_TYPE_FOOD];
	DropFood((uint16_t)amountToEat);
	food += amountToEat / (float)GetAmountOfFoodToEat() * ((const GVillagerInfo*)info)->FoodNurishmentMultiplier;
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
	// TODO: target discards EatFoodHeld's result via 'fstp st(0)' (fpu-leak-void-return family);
	// ours computes a real int so there's nothing to discard. Also target computes the ternary
	// below starting from a byte (neg al) then widens to eax (sbb/and/add eax) - exact source
	// shape not found within budget.
	EatFoodHeld();
	PlayAnimThenSetState((uint8_t)IsPoisoned() ? 0xd4 : 0xa3, 1);
	return 1;
}

// BW1W120 0075c040
// TODO: mangled return is unsigned int (?GetFoodFromHome@Villager@@QAEIK@Z) but the target
// never sets EAX on either path (early-out or fallthrough after PickupFood) - relies on
// whatever PickupFood happens to leave in EAX (UB in the original source). Same fpu-leak /
// no-explicit-return family; see CHEATSHEET.md.
bool32_t Villager::GetFoodFromHome(unsigned long param_1)
{
	Abode* abode = GetAbode();
	if (abode != NULL)
	{
		uint32_t available = abode->GetResource(RESOURCE_TYPE_FOOD);
		uint32_t amount = (param_1 < available) ? param_1 : available;
		PickupFood((int16_t)GetResourceFrom(abode, RESOURCE_TYPE_FOOD, (int16_t)amount));
	}
	return 0;
}

// BW1W120 0075c090
uint32_t Villager::EatFoodAtHome()
{
	int required = GetAmountOfFoodToEat() - ResourceHeld[RESOURCE_TYPE_FOOD];
	if (required > 0)
		GetFoodFromHome(required);
	EatFoodHeld();
	SetTopState(IsPoisoned() ? 0xd4 : 0x26);
	return 1;
}

// BW1W120 0075c0f0
bool32_t Villager::HomelessEatDinner()
{
	return true;
}
