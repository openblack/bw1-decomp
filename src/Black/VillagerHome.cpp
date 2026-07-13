#include "Villager.h"

#include "chlasm/GStates.h"

#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"
#include "Abode.h"
#include "Town.h"

extern GVillagerStateTableInfo g_GVillagerStateTableInfos[VILLAGER_STATE_LAST_STATE];

// BW1W120 0075ff80 BW1M100 1000a8c0 Villager::CheckNeededForSomething(void)
bool32_t Villager::CheckNeededForSomething()
{
	if (GetAbode() == NULL)
	{
		if (CheckHomelessMoveIntoAbode() != 0)
		{
			return true;
		}
	}
	return CheckNeededForSpecial() == 1;
}

// BW1W120 00760000 BW1M100 10589480 Villager::NothingToDo(void)
bool32_t Villager::NothingToDo()
{
	return true;
}

// BW1W120 00760010 BW1M100 10096ee0 Villager::CheckNeededForSpecial(void)
bool32_t Villager::CheckNeededForSpecial()
{
	if (CheckNeededForWorship() == 1)
	{
		return true;
	}
	if (CheckNeededForCivic() == 1)
	{
		return true;
	}
	return CheckSatisfyOwnDesire(((const GVillagerInfo*)info)->OwnDesireThreshold) == 1;
}

// BW1W120 00760240 BW1M100 105892c0 Villager::CheckIllAtHome(void)
bool32_t Villager::CheckIllAtHome()
{
	return false;
}

// BW1W120 00760250 BW1M100 10589160 Villager::GoHomeDropResource(void)
bool32_t Villager::GoHomeDropResource()
{
	// TODO: 87.5% - target lays out the GotoStoragePit tail-jmp block before the
	// GoHome one; our build orders them the other way (semantics identical).
	// Block-ordering tie-break, unaffected by if/else vs &&/|| phrasing.
	if (ResourceHeld[RESOURCE_TYPE_FOOD] != 0 || ResourceHeld[RESOURCE_TYPE_WOOD] != 0)
	{
		return GotoStoragePitForDropOff();
	}
	return GoHome();
}

// BW1W120 00760270 BW1M100 1009edb0 Villager::GoHome(void)
bool32_t Villager::GoHome()
{
	return DoGoingHome(VILLAGER_STATE_ARRIVES_HOME, VILLAGER_STATE_SLEEP_IN_TENT);
}

// BW1W120 00760b10 BW1M100 10004a80 Villager::AtHome(void)
bool32_t Villager::AtHome()
{
	HomeDecideWhatToDo();
	return true;
}

// BW1W120 00760b20 BW1M100 10588720 Villager::SitsDownToDinner(void)
bool32_t Villager::SitsDownToDinner()
{
	return true;
}

// BW1W120 00760b30 BW1M100 10003aa0 Villager::GotoBedAtHome(void)
bool32_t Villager::GotoBedAtHome()
{
	SetTopState(VILLAGER_STATE_SLEEPING_AT_HOME);
	TurnsUntilNextStateChange = (int16_t)((const GVillagerInfo*)info)->RestAtHomeTime;
	return true;
}

// BW1W120 00760c80 BW1M100 10588200 Villager::CheckGetPregnantAtHome(void)
bool32_t Villager::CheckGetPregnantAtHome()
{
	bool32_t r = WillHousewifeGetPregnant(NULL);
	if (r != 0)
	{
		r = HousewifeGetsPregnant(NULL);
	}
	return r;
}

// BW1W120 00760d70 BW1M100 10023200 Villager::SleepingAtHome(void)
bool32_t Villager::SleepingAtHome()
{
	if (GetTown() != NULL)
	{
		TurnsUntilNextStateChange--;
		if (TurnsUntilNextStateChange == 0)
		{
			if (DoSleeping(1.0f) == 0)
			{
				SetTopState(VILLAGER_STATE_AT_HOME);
			}
		}
	}
	return true;
}

// BW1W120 00760e50 BW1M100 10587ee0 Villager::WakeUpAtHome(void)
bool32_t Villager::WakeUpAtHome()
{
	return GoHome();
}

// BW1W120 00760f50 BW1M100 10587c50 Villager::StopHavingSex(void)
bool32_t Villager::StopHavingSex()
{
	if (Flags & 4)
	{
		return GoHome();
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

// BW1W120 00760f80 BW1M100 10587c10 Villager::StartHavingSexAtHome(void)
bool32_t Villager::StartHavingSexAtHome()
{
	return true;
}

// BW1W120 00761010 BW1M100 10587a80 Villager::HavingSexAtHome(void)
bool32_t Villager::HavingSexAtHome()
{
	return true;
}

// BW1W120 00761020 BW1M100 10587a40 Villager::StopHavingSexAtHome(void)
bool32_t Villager::StopHavingSexAtHome()
{
	return true;
}

// BW1W120 00761030 BW1M100 10587a00 Villager::WaitForDinner(void)
bool32_t Villager::WaitForDinner()
{
	return true;
}

// BW1W120 00761070 BW1M100 105878e0 Villager::IsAvailableForSex(void)
bool32_t Villager::IsAvailableForSex()
{
	if (GetVillagerAvailableState() & 1)
	{
		return IsSexuallyActive();
	}
	return 0;
}

// BW1W120 00761090 BW1M100 10587810 Villager::IsSexuallyActive(void)
bool32_t Villager::IsSexuallyActive()
{
	const GVillagerInfo* vi = (const GVillagerInfo*)info;
	if (GetAge() >= vi->StartHavingSexAge)
	{
		// TODO: 90.9% - only the prologue `push edi` placement differs (target
		// schedules it after the first vtable load); scheduler tie-break.
		const GVillagerInfo* vi2 = (const GVillagerInfo*)info;
		if (GetAge() < vi2->StopHavingSexAge)
		{
			return true;
		}
	}
	return false;
}

// BW1W120 00761180 BW1M100 10587620 Villager::CheckForSexAtHome(void)
bool32_t Villager::CheckForSexAtHome()
{
	if ((Flags & 4) && IsSexuallyActive() != 0)
	{
		return StartHavingSexAtHome();
	}
	return 0;
}

// BW1W120 007611b0 BW1M100 10587570 Villager::ShallIWaitForDinner(void)
bool32_t Villager::ShallIWaitForDinner()
{
	if (IsHungry() != 0 && HousewifeAskForMeal() == 0)
	{
		return 0;
	}
	TurnsUntilNextStateChange = (int16_t)((const GVillagerInfo*)info)->WaitAtHome;
	SetTopState(VILLAGER_STATE_WAIT_FOR_DINNER);
	return true;
}

// BW1W120 007611f0 BW1M100 105874c0 Villager::HomeDeleted(void)
void Villager::HomeDeleted()
{
	if (target == GetAbode())
	{
		target = NULL;
	}
	if (GetAbode() != NULL)
	{
		MakeHomeless();
	}
	else
	{
		TownDeleted();
	}
}

// BW1W120 00761220 BW1M100 10587440 Villager::MakeHomeless(void)
bool Villager::MakeHomeless()
{
	// TODO: 96.9% - target saves the result full-width in edi; we store it
	// byte-width in ebx. Register-allocation tie-break, semantics correct.
	bool result = MakeHomelessNoStateChange();
	SetTopState(VILLAGER_STATE_HOMELESS_START);
	return result;
}

// BW1W120 00761320 BW1M100 10587160 Villager::HomelessStart(void)
bool32_t Villager::HomelessStart()
{
	GetTown();
	// TODO: 99.8% - target compares CheckHungry()'s bool result full-width
	// (`cmp eax,1`); our build emits `cmp al,1`. bool-return width tie-break.
	if (CheckHungry() != 1 && CheckNeededForSomething() != 1 && CheckHomelessMoveIntoAbode() == 0)
	{
		SetupNothingToDo();
	}
	return true;
}

// BW1W120 00761360 BW1M100 10586fd0 Villager::CheckHomelessMoveIntoAbode(void)
bool32_t Villager::CheckHomelessMoveIntoAbode()
{
	Town*  town = GetTown();
	Abode* abode;
	if (town == NULL || (abode = town->FindAbodeWithSpaceInTown(this, 0.0f)) == NULL)
	{
		return 0;
	}
	town->HomelessList.Remove(this);
	abode->AddVillagerToAbode(this);
	SetTopState(VILLAGER_STATE_GO_HOME);
	return 1;
}

// BW1W120 007613f0 BW1M100 10586f90 Villager::VillagerGossips(void)
bool32_t Villager::VillagerGossips()
{
	return true;
}

// BW1W120 00761400 BW1M100 10586ed0 Villager::SetupAfterTapOnAbode(MapCoords &, VILLAGER_STATES)
void Villager::SetupAfterTapOnAbode(MapCoords& pos, VILLAGER_STATES previous_state)
{
	action.SetState(LIVING_ACTION_INDEX_PREVIOUS, previous_state);
	SetupMoveToPos(pos, VILLAGER_STATE_AFTER_TAP_ON_ABODE);
	Flags |= 1;
}

// BW1W120 00761440 BW1M100 10586e70 Villager::AfterTapOnAbode(void)
bool32_t Villager::AfterTapOnAbode()
{
	// TODO: 85.7% - target zero-extends the byte arg (`xor eax,eax; mov al,[..]`);
	// our build emits only `mov al,[..]`. Codegen tie-break, semantics correct.
	PlayAnimThenSetState(action.states[LIVING_ACTION_INDEX_PREVIOUS], 1);
	return true;
}

// BW1W120 00761460 BW1M100 100955e0 Villager::CheckSatisfyRelaxation(void)
bool32_t Villager::CheckSatisfyRelaxation()
{
	if (GetTown() != NULL && GetTown()->SetVillagerActivity(this) != 0)
	{
		return true;
	}
	return false;
}

// BW1W120 00761800 BW1M100 10586960 Villager::EnterWaitForArtifactDance(unsigned char, unsigned char)
bool32_t Villager::EnterWaitForArtifactDance(unsigned char param_1, unsigned char param_2)
{
	TurnsUntilNextStateChange = 0;
	return true;
}

// BW1W120 00761ae0 BW1M100 10586240 Villager::SleepInTent(void)
bool32_t Villager::SleepInTent()
{
	if (TurnsUntilNextStateChange == 0)
	{
		if (DoSleeping(1.0f) != 0)
		{
			return true;
		}
		if (GetAbode() == NULL)
		{
			if (CheckHomelessMoveIntoAbode() != 0)
			{
				return true;
			}
		}
		if (HomeDecideWhatToDo() != 0 && action.states[LIVING_ACTION_INDEX_TOP] != VILLAGER_STATE_SLEEP_IN_TENT)
		{
			return true;
		}
		TurnsUntilNextStateChange = (int16_t)((const GVillagerInfo*)info)->RestAtHomeTime;
	}
	TurnsUntilNextStateChange--;
	return true;
}

// BW1W120 00761b40 BW1M100 100957f0 Villager::ExitAtHome(unsigned char)
bool32_t Villager::ExitAtHome(unsigned char state)
{
	if (g_GVillagerStateTableInfos[state].field_0xd0 == 0)
	{
		LeaveHome();
	}
	return true;
}

// BW1W120 00761b70 BW1M100 10586150 Villager::GoHomeFromWorship(void)
bool32_t Villager::GoHomeFromWorship()
{
	return DoGoingHome(VILLAGER_STATE_ARRIVES_HOME_FROM_WORSHIP, VILLAGER_STATE_SLEEP_IN_TENT_FROM_WORSHIP);
}
