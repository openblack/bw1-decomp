#include "MapCoords.h"
#include "GameTimeConstants.h"
#include "Villager.h"

#include "chlasm/GStates.h"

#include "Rand.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"
#include "Abode.h"
#include "StoragePit.h"
#include "Town.h"
#include "Game.h"
#include "SafeDisc.h" /* For SafeDiscMarker, SafeDiscRecord */

#if defined(VERSION_BW1W100)
static SafeDiscRecord Record = {
	/* Seed */ {{0x59, 0x53, 0x7b, 0x47, 0x69, 0x20, 0x0f, 0x47, 0xb2, 0x32, 0x87, 0x8e,
                 0xeb, 0xf6, 0x1e, 0xd6, 0x65, 0x4d, 0xed, 0x1d, 0xbd, 0xa0, 0x68, 0x65}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x6a, // runtime value
	/* Unk1 */ {0x47, 0x5f, 0xf4, 0xc9, 0x9a, 0xda, 0x3b, 0x20, 0xfe, 0x45, 0x83, 0x7b, 0x41, 0xd1, 0xca, 0xd2,
                0x94, 0x4c, 0x12, 0xcc, 0xe4, 0xe8, 0x59, 0xf3, 0x3a, 0x43, 0xa1, 0xba, 0xde, 0xf1, 0xe8},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x60, 0x97, 0x24, 0xf3, 0x04, 0xb4, 0xd4, 0x60, 0x89, 0xf4, 0x0b, 0xad, 0x53, 0xfd, 0x62, 0x65},
	/* ANext */ 0xddac424d,    // runtime value
	/* BWrapVA */ 0x24f62546,  // runtime value
	/* CDesc */ 0x6c9b2c9b,    // runtime value
	/* DRuntime */ 0xb2f4bf08, // runtime value
	/* EStatic */ 0xfb0b23b1,
	/* FStatic */ 0x4286770a,
	/* Cookie */ {0x0d, 0xa2, 0xf5, 0xc2, 0x6c}, // runtime value
	/* Pad3 */ 0x00,
};
#elif defined(VERSION_BW1W110)
static SafeDiscRecord Record = {
	/* Seed */ {{0x85, 0x11, 0xe0, 0x59, 0x85, 0x24, 0x61, 0x59, 0x5a, 0x94, 0xbd, 0xb3,
                 0x1f, 0x54, 0xd5, 0x0d, 0x15, 0x46, 0x80, 0x67, 0x99, 0x57, 0x60, 0xc1}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xa6, // runtime value
	/* Unk1 */ {0x7a, 0x20, 0x75, 0x29, 0x8c, 0x00, 0xcf, 0xac, 0x8d, 0xf0, 0x28, 0x33, 0xaf, 0xc0, 0x82, 0xb6,
                0xc0, 0xa0, 0xdc, 0xac, 0xb2, 0xb5, 0x36, 0xb7, 0xe2, 0x60, 0x90, 0x78, 0xa5, 0x1b, 0xea},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0xc3, 0xce, 0x81, 0x64, 0x57, 0xfd, 0x98, 0x0d, 0x17, 0xff, 0x70, 0x00, 0x92, 0x49, 0x46, 0xaf},
	/* ANext */ 0xdcd65a89,    // runtime value
	/* BWrapVA */ 0xb9fc363e,  // runtime value
	/* CDesc */ 0x1354f263,    // runtime value
	/* DRuntime */ 0x6d9af446, // runtime value
	/* EStatic */ 0x00000000,
	/* FStatic */ 0x22394e82,
	/* Cookie */ {0x07, 0xd9, 0xa1, 0x7a, 0x8c}, // runtime value
	/* Unk3 */ {0xea, 0x81, 0xd4, 0x5f, 0x07, 0x41, 0x53, 0xca},
};
#endif

// BW1W120 00761c00 BW1M119 01592550
bool32_t Villager::HousewifeLookForWork()
{
	return GetAbode() != NULL;
}

// BW1W120 00761c10 BW1M119 015924b0
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

// BW1W120 00761c40 BW1M119 015923e0
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

// BW1W120 00761c90 BW1M119 015922e0
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

// BW1W120 00761ce0 BW1M119 015921f0
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

// BW1W120 00761d60 BW1M119 01592000
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

// BW1W120 00761ea0 BW1M119 01591f20
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

// BW1W120 00761f10 BW1M119 01591e50
bool32_t Villager::HousewifeReturnHomeWithFood()
{
	if (ArrivesHome() == 1)
	{
		GetAbode()->AddResource(RESOURCE_TYPE_FOOD, (short)DropFood(0), NULL, false, NULL, 0);
	}
	return true;
}

// BW1W120 00761f60 BW1M119 01591da0
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

// BW1W120 00761fa0 BW1M119 01591d10
bool32_t Villager::HousewifeServesDinner()
{
	TurnsUntilNextStateChange = (int16_t)((const GVillagerInfo*)info)->HousewifeWaits;
	SetTopState(VILLAGER_STATE_HOUSEWIFE_CLEARS_AWAY_DINNER);
	return true;
}

// BW1W120 00761fc0 BW1M119 01591c70
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

// BW1W120 00761ff0 BW1M119 01591bd0
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

// BW1W120 00762020 BW1M119 015918f0
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

// BW1W120 007621a0 BW1M119 01591780
bool32_t Villager::HousewifeStartsGivingBirth()
{
	// TODO: deferred — float global (0x00d01a0c) * constant, GameRand __FILE__/__LINE__ split-TU
	// pushes, __ftol conversions. Blocked on gamerand-file-line-split-tu family.
	is_pregnant = 0;
	SetTopState(VILLAGER_STATE_HOUSEWIFE_GIVING_BIRTH);
	return HousewifeGivingBirth();
}

// BW1W120 00762430 BW1M119 01591410
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

// BW1W120 007624a0 BW1M119 015913b0
bool32_t Villager::HousewifeGivenBirth()
{
	is_pregnant = 0;
	return GoHome();
}

// BW1W120 007624c0 BW1M119 01591200
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

// BW1W120 00762570 BW1M119 01591170
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

// BW1W120 007625a0 BW1M119 01591090
bool32_t Villager::HousewifeCalledToMakeDinner()
{
	uint32_t result = GVillagerStateTableInfo::Infos[(uint8_t)GetFinalState()].field_0xc4;
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

// BW1W120 00762600 BW1M119 01590fa0
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

// BW1W120 00762670 BW1M119 01590f60
bool32_t Villager::CheckSatisfyForChildren()
{
	return 0;
}
