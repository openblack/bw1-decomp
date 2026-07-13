#include "Villager.h"

#include "chlasm/GStates.h"

#include "Rand.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"
#include "Abode.h"
#include "StoragePit.h"
#include "Town.h"
#include "Game.h"

extern GVillagerStateTableInfo g_GVillagerStateTableInfos[VILLAGER_STATE_LAST_STATE];

// BW1W120 00761c00 BW1M100 1058ad30 Villager::HousewifeLookForWork(void)
bool32_t Villager::HousewifeLookForWork()
{
	return GetAbode() != NULL;
}

// BW1W120 00761c10 BW1M100 1058ac90 Villager::HousewifeAtHome(void)
bool32_t Villager::HousewifeAtHome()
{
	if (Flags & 4)
	{
		if (CheckNeededToMakeDinner() == 1)
		{
			return true;
		}
		if (CheckNeededForHouseWork() == 1)
		{
			return true;
		}
	}
	return false;
}

// BW1W120 00761c40 BW1M100 1058abc0 Villager::CheckNeededForHouseWork(void)
bool32_t Villager::CheckNeededForHouseWork()
{
	if (GetAbode()->IsEnoughFoodForDinner() != 1)
	{
		SetTopState(VILLAGER_STATE_HOUSEWIFE_GOTO_STORAGE_PIT);
		return true;
	}
	if (Flags & 4)
	{
		TurnsUntilNextStateChange = 5;
		SetTopState(VILLAGER_STATE_HOUSEWIFE_DOES_HOUSEWORK);
		return true;
	}
	return false;
}

// BW1W120 00761c90 BW1M100 1058aac0 Villager::CheckNeededToMakeDinner(void)
bool32_t Villager::CheckNeededToMakeDinner()
{
	Villager* villager = GetAbode()->villagers.head;
	while (villager != NULL)
	{
		if (villager->IsHungry())
		{
			if (villager->Flags & 4)
			{
				return HousewifeMakeDinner();
			}
			return GoHome();
		}
		villager = villager->next;
	}
	return false;
}

// BW1W120 00761ce0 BW1M100 1058a9d0 Villager::HousewifeGotoStoragePit(void)
bool32_t Villager::HousewifeGotoStoragePit()
{
	if (GetStoragePit() != NULL && GetStoragePit()->IsFunctional() && GetAbode()->IsEnoughFoodForDinner() != 1)
	{
		SetupMoveToOnFootpath(*GetStoragePit(), GetStoragePit()->GetArrivePos(),
		                      VILLAGER_STATE_HOUSEWIFE_ARRIVES_AT_STORAGE_PIT);
		return true;
	}
	GoHome();
	return true;
}

// BW1W120 00761d60 BW1M100 1058a7e0 Villager::HousewifeArrivesAtStoragePit(void)
bool32_t Villager::HousewifeArrivesAtStoragePit()
{
	// TODO: deferred — best-effort structure; food-required/CalculateFoodNeededForDinner clamp,
	// GetResource compare, ArrivesAtStoragePitForResource + GetArrivePos retbuf scheduling.
	StoragePit* storagePit = GetStoragePit();
	if (storagePit == NULL || storagePit->IsFunctional() != 1)
	{
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		return true;
	}
	if (!IsEnoughFoodInStoragePitForDinner())
	{
		SetTopState(VILLAGER_STATE_HOUSEWIFE_GOSSIPS_AROUND_STORAGE_PIT);
		TurnsUntilNextStateChange = 1;
		return HousewifeGossipsAroundStoragePit();
	}
	unsigned long amount = GetAmountOfFoodRequiredForMeal();
	if (GetAbode() != NULL)
	{
		amount = (unsigned short)GetAbode()->CalculateFoodNeededForDinner();
	}
	if (amount > storagePit->GetResource(RESOURCE_TYPE_FOOD))
	{
		SetTopState(VILLAGER_STATE_HOUSEWIFE_GOSSIPS_AROUND_STORAGE_PIT);
		TurnsUntilNextStateChange = 1;
		return HousewifeGossipsAroundStoragePit();
	}
	if (amount > 0)
	{
		return ArrivesAtStoragePitForResource(RESOURCE_TYPE_FOOD, amount,
		                                      VILLAGER_STATE_HOUSEWIFE_PICKUP_FROM_STORAGE_PIT,
		                                      VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	}
	if (ResourceHeld[RESOURCE_TYPE_FOOD] != 0)
	{
		SetupMoveToOnFootpath(*storagePit, storagePit->GetArrivePos(),
		                      VILLAGER_STATE_HOUSEWIFE_PICKUP_FROM_STORAGE_PIT);
		return true;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

// BW1W120 00761ea0 BW1M100 1058a700 Villager::HousewifePickupFromStoragePit(void)
bool32_t Villager::HousewifePickupFromStoragePit()
{
	if (ResourceHeld[RESOURCE_TYPE_FOOD] != 0 && GetAbode() != NULL)
	{
		SetupMoveToOnFootpath(*GetAbode(), GetAbode()->GetArrivePos(), VILLAGER_STATE_HOUSEWIFE_RETURN_HOME_WITH_FOOD);
		return true;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

// BW1W120 00761f10 BW1M100 1058a630 Villager::HousewifeReturnHomeWithFood(void)
bool32_t Villager::HousewifeReturnHomeWithFood()
{
	if (ArrivesHome() == 1)
	{
		GetAbode()->AddResource(RESOURCE_TYPE_FOOD, (short)DropFood(0), NULL, false, NULL, 0);
	}
	return true;
}

// BW1W120 00761f60 BW1M100 1058a580 Villager::HousewifeMakeDinner(void)
bool32_t Villager::HousewifeMakeDinner()
{
	if (GetAbode()->IsEnoughFoodForDinner() == 1)
	{
		SetTopState(VILLAGER_STATE_HOUSEWIFE_SERVES_DINNER);
		return true;
	}
	SetTopState(VILLAGER_STATE_HOUSEWIFE_GOTO_STORAGE_PIT);
	return true;
}

// BW1W120 00761fa0 BW1M100 1058a4f0 Villager::HousewifeServesDinner(void)
bool32_t Villager::HousewifeServesDinner()
{
	TurnsUntilNextStateChange = (int16_t)((const GVillagerInfo*)info)->HousewifeWaits;
	SetTopState(VILLAGER_STATE_HOUSEWIFE_CLEARS_AWAY_DINNER);
	return true;
}

// BW1W120 00761fc0 BW1M100 1058a450 Villager::HousewifeClearsAwayDinner(void)
bool32_t Villager::HousewifeClearsAwayDinner()
{
	TurnsUntilNextStateChange--;
	if (TurnsUntilNextStateChange == 0)
	{
		EatFoodHeld();
		SetTopState(VILLAGER_STATE_GO_HOME);
	}
	return true;
}

// BW1W120 00761ff0 BW1M100 1058a3b0 Villager::HousewifeDoesHousework(void)
bool32_t Villager::HousewifeDoesHousework()
{
	if (CheckNeededForSpecial() != 1)
	{
		TurnsUntilNextStateChange--;
		if (TurnsUntilNextStateChange == 0)
		{
			GoHome();
		}
	}
	return true;
}

// BW1W120 00762020 BW1M100 1058a0d0 Villager::HousewifeGossipsAroundStoragePit(void)
bool32_t Villager::HousewifeGossipsAroundStoragePit()
{
	// TODO: deferred — float math (HousewifeGossipTime), GameFloatRand __FILE__/__LINE__
	// split-TU line/file pushes, GetPosFromAngle + MapCoords::operator+= + Collide. Best-effort
	// structure below; full match blocked on gamerand-file-line-split-tu family.
	TurnsUntilNextStateChange--;
	if (TurnsUntilNextStateChange > 0)
	{
		return true;
	}
	if (GetStoragePit() == NULL || GetStoragePit()->IsFunctional() != 1)
	{
		GoHome();
	}
	if (GetAmountOfFoodRequiredForMeal() < GetStoragePit()->GetResource(RESOURCE_TYPE_FOOD))
	{
		SetTopState(VILLAGER_STATE_HOUSEWIFE_GOTO_STORAGE_PIT);
		return HousewifeGotoStoragePit();
	}
	if (CheckNeededForSpecial() == 1)
	{
		return true;
	}
	return true;
}

// BW1W120 007621a0 BW1M100 10589f60 Villager::HousewifeStartsGivingBirth(void)
bool32_t Villager::HousewifeStartsGivingBirth()
{
	// TODO: deferred — float global (0x00d01a0c) * constant, GameRand __FILE__/__LINE__ split-TU
	// pushes, __ftol conversions. Blocked on gamerand-file-line-split-tu family.
	is_pregnant = 0;
	SetTopState(VILLAGER_STATE_HOUSEWIFE_GIVING_BIRTH);
	return HousewifeGivingBirth();
}

// BW1W120 00762430 BW1M100 10589bf0 Villager::HousewifeGivingBirth(void)
bool32_t Villager::HousewifeGivingBirth()
{
	// TODO: deferred — calls free function ChildBorn (mangled ?ChildBorn@@YE... — the ONLY @@YE
	// symbol in the binary; a __cdecl body that mangles as __thiscall, unreproducible by a normal
	// declaration). SoundTag::Create + GetRandomSample. Blocked on ChildBorn naming (dispatcher).
	TurnsUntilNextStateChange--;
	if (TurnsUntilNextStateChange == 0)
	{
		SetTopState(VILLAGER_STATE_HOUSEWIFE_GIVEN_BIRTH);
	}
	return true;
}

// BW1W120 007624a0 BW1M100 10589b90 Villager::HousewifeGivenBirth(void)
bool32_t Villager::HousewifeGivenBirth()
{
	is_pregnant = 0;
	return GoHome();
}

// BW1W120 007624c0 BW1M100 105899e0 Villager::WillHousewifeGetPregnant(Villager *)
bool32_t Villager::WillHousewifeGetPregnant(Villager* param_1)
{
	// TODO: deferred — TownDesire::GetDesireSignificanceToVillager leaks a float on ST0 (void
	// mangled), abode->info->field_0x178 count compare. Best-effort structure.
	Abode* abode = GetAbode();
	if (IsPregnant())
	{
		return 0;
	}
	if (GetTown() == NULL || abode == NULL || !IsSexuallyActive())
	{
		return 0;
	}
	return 0;
}

// BW1W120 00762570 BW1M100 10589950 Villager::HousewifeGetsPregnant(Villager *)
bool32_t Villager::HousewifeGetsPregnant(Villager* param_1)
{
	// void-call-eax-probed: on the (Flags & 4) path the original falls off the end leaving the
	// `info` load in eax (no explicit return value); its caller CheckGetPregnantAtHome reads that
	// as the result. Faithful reproduction of the QAEI/void-leftover shape.
	is_pregnant = (int16_t)((const GVillagerInfo*)info)->TimePregnantFor;
	if (!(Flags & 4))
	{
		return GoHome();
	}
}

// BW1W120 007625a0 BW1M100 10589870 Villager::HousewifeCalledToMakeDinner(void)
bool32_t Villager::HousewifeCalledToMakeDinner()
{
	uint32_t result = g_GVillagerStateTableInfos[(uint8_t)GetFinalState()].field_0xc4;
	if (result == 0)
	{
		if ((Flags & 4) == 4)
		{
			SetTopState(VILLAGER_STATE_HOUSEWIFE_MAKE_DINNER);
		}
		else
		{
			GoHome();
		}
	}
	return result;
}

// BW1W120 00762600 BW1M100 10589780 Villager::HousewifeAskForMeal(void)
bool32_t Villager::HousewifeAskForMeal()
{
	Villager* villager = GetAbode()->villagers.head;
	while (villager != NULL)
	{
		if (villager == this)
		{
			SetTopState(VILLAGER_STATE_HOUSEWIFE_MAKE_DINNER);
		}
		else if (villager->HousewifeCalledToMakeDinner() != 2)
		{
			TurnsUntilNextStateChange = (int16_t)((const GVillagerInfo*)info)->waitForDinner;
			SetTopState(VILLAGER_STATE_WAIT_FOR_DINNER);
			return true;
		}
		villager = villager->next;
	}
	return false;
}

// BW1W120 00762670 BW1M100 10589740 Villager::CheckSatisfyForChildren(void)
bool32_t Villager::CheckSatisfyForChildren()
{
	return 0;
}
