#include "Villager.h"

#include <stdlib.h> /* For max */

#include "chlasm/GStates.h"

#include "Rand.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"
#include "Abode.h"
#include "Town.h"
#include "Game.h"

extern GVillagerStateTableInfo g_GVillagerStateTableInfos[VILLAGER_STATE_LAST_STATE];
// TODO: Villager.cpp defines this `static const`, but this TU reads it — the original
// must have had external linkage; reconcile with Villager.cpp.
extern "C" const DiscipleInfo g_DiscipleInfos[VILLAGER_DISCIPLE_LAST];

// BW1W120 0075bb60 POWER(float)
float __stdcall POWER(float base);

// BW1W120 0075fea0 BW1M100 10097120 Villager::HomeDecideWhatToDo(void)
bool32_t Villager::HomeDecideWhatToDo()
{
	if (GetAbode() != NULL && GetTown() != NULL && GetTown()->IsInStateOfEmergency() != 0)
	{
		SetTopState(VILLAGER_STATE_GOTO_BED_AT_HOME);
		return true;
	}
	if (CheckNeedsAtHome() == 1)
	{
		return true;
	}
	// TODO: target zero-extends Flags (`xor ecx,ecx` before `mov cx`); ours drops the dead xor
	uint32_t flags = Flags;
	uint8_t  disciple_flags = flags >> 9;
	if (disciple_flags & 1)
	{
		uint32_t disciple = DiscipleType;
		if (g_DiscipleInfos[(uint8_t)disciple].field_0xc == 1)
		{
			if ((uint8_t)disciple == VILLAGER_DISCIPLE_BREEDER)
			{
				if (GetTown()->desire.GetSortedDesire(0)->field_0x8 == TOWN_DESIRE_INFO_FOR_SLEEP)
				{
					if (CheckSatisfySleep() != 0)
					{
						return true;
					}
				}
			}
			return DecideWhatToDo();
		}
	}
	if (CheckNeededForSomething() == 1)
	{
		return true;
	}
	HomeNothingToDo();
	return 0;
}

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

// BW1W120 0075ffb0 BW1M100 105894c0 Villager::HomeNothingToDo(void)
bool32_t Villager::HomeNothingToDo()
{
	if (Flags & 4)
	{
		if (GRand::GameRand(4, __FILE__, __LINE__) == 0)
		{
			TurnsUntilNextStateChange = 0;
			SetTopState(VILLAGER_STATE_GOTO_BED_AT_HOME);
			return true;
		}
	}
	// TODO: GameRand __FILE__/__LINE__ can't match in a split TU (original line 75,
	// original file path); costs the two arg pushes. Rest matches.
	SetupNothingToDo();
	return true;
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

// BW1W120 00760110 BW1M100 1000c610 Villager::CheckNeedsAtHome(void)
bool32_t Villager::CheckNeedsAtHome()
{
	if (IsWoman())
	{
		if (WomanSpecial() == 1)
		{
			return true;
		}
		if (IsPregnant() != 0)
		{
			return true;
		}
	}
	// TODO: the target reloads `info` fresh in the max() re-evaluation arms; ours either
	// reloads or caches it everywhere
	uint32_t flags = Flags;
	uint8_t  disciple_flags = flags >> 9;
	float    desire;
	if ((disciple_flags & 1) && g_DiscipleInfos[DiscipleType].field_0xc == 1)
	{
		const GVillagerInfo* vi = (const GVillagerInfo*)info;
		desire = max(GetLifeDesireFromLife(vi->DamageThresholdToGoHome), POWER(vi->StarvingForFood));
	}
	else
	{
		const GVillagerInfo* vi = (const GVillagerInfo*)info;
		desire = max(GetLifeDesireFromLife(vi->DamageThresholdToSleepUntil), POWER(vi->HungryForFood));
	}
	if (CheckSatisfyOwnDesire(desire * 0.9f) == 1)
	{
		return true;
	}
	if (IsChild() != 0)
	{
		if (CheckChildActivity() == 1)
		{
			return true;
		}
	}
	return false;
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

// BW1W120 00760280 BW1M100 1009a4b0 Villager::DoGoingHome(VILLAGER_STATES, VILLAGER_STATES)
bool32_t Villager::DoGoingHome(VILLAGER_STATES arrive_state, VILLAGER_STATES tent_state)
{
	if (IsDancing() != 0)
	{
		RemoveFromDance((Flags >> 1) & 1);
	}
	Abode* abode = GetAbode();
	if (abode != NULL)
	{
		if (Flags & 4)
		{
			SetTopState(VILLAGER_STATE_AT_HOME);
			return true;
		}
		uint32_t final_state = (uint8_t)GetFinalState();
		if (final_state != arrive_state)
		{
			SetupMoveToOnFootpath(*abode, abode->GetArrivePos(), (uint8_t)arrive_state);
		}
		return true;
	}
	Town* town = GetTown();
	if (town != NULL)
	{
		// TODO: callee-save register allocation is swapped vs the target; GameFloatRand
		// __FILE__/__LINE__ cannot match in a split TU; the distance callee is the unnamed
		// GetDistanceInMetres twin at 0x74cd50
		MapCoords pos = Pos;
		uint32_t  end_state;
		if (GUtils::GetDistanceInMetres(Pos, GetTown()->Pos) > 100.0f)
		{
			end_state = action.states[LIVING_ACTION_INDEX_TOP];
			float angle = GRand::GameFloatRand(1.5707964f, __FILE__, __LINE__) - 0.78539819f +
			              GUtils::Get3DAngleFromXZ(Pos, town->Pos);
			float dist = GRand::GameFloatRand(25.0f, __FILE__, __LINE__) + 10.0f;
			pos = town->Pos + GUtils::GetPosFromAngle(angle, dist);
		}
		else
		{
			pos += GUtils::GetPosFromAngle(GRand::GameFloatRand(6.2831855f, __FILE__, __LINE__),
			                               GRand::GameFloatRand(8.0f, __FILE__, __LINE__) + 2.0f);
			if (GetTentPos(pos) == NULL)
			{
				end_state = action.states[LIVING_ACTION_INDEX_TOP];
				pos += GUtils::GetPosFromAngle(GRand::GameFloatRand(6.2831855f, __FILE__, __LINE__),
				                               GRand::GameFloatRand(20.0f, __FILE__, __LINE__) + 10.0f);
			}
			else
			{
				end_state = tent_state;
			}
		}
		SetupMoveToWithHug(pos, (VILLAGER_STATES)end_state);
		return true;
	}
	SetTopState(VILLAGER_STATE_VAGRANT_START);
	return true;
}

// BW1W120 00760930 BW1M100 1000c320 Villager::ArrivesHome(void)
uint32_t Villager::ArrivesHome()
{
	// TODO: IsBuilt/IsRepaired dispatch through the wrong Abode vtable slots (the Abode
	// hierarchy headers declare 10 extra virtuals before them); AreWeThere should return
	// bool32_t (target tests full eax)
	Abode* abode = GetAbode();
	if (abode != NULL)
	{
		if (AreWeThere(&abode->GetArrivePos(), 0.0f))
		{
			if (abode->IsBuilt() == 0 || abode->IsRepaired() == 0)
			{
				if (GetLife() < ((const GVillagerInfo*)info)->DamageThresholdToGoHome)
				{
					if (abode->IsFunctional() == 0)
					{
						float angle = 0.39269909f - GRand::GameFloatRand(0.78539819f, __FILE__, __LINE__);
						angle += GUtils::Get3DAngleFromXZ(Pos, abode->Pos);
						float     dist = GRand::GameFloatRand(5.0f, __FILE__, __LINE__) + 5.0f;
						MapCoords spot = Pos + GUtils::GetPosFromAngle(angle, dist);
						if (GetTentPos(spot) != NULL)
						{
							SetupMoveToWithHug(spot, VILLAGER_STATE_SLEEP_IN_TENT);
						}
						return true;
					}
				}
				else if (food < ((const GVillagerInfo*)info)->HungryForFood)
				{
					if (abode->IsFunctional() == 0)
					{
						SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
					}
				}
				else if (SetupBuildingObject((MultiMapFixed*)abode) == 1)
				{
					return true;
				}
			}
			ArriveHome();
			SetTopState(VILLAGER_STATE_AT_HOME);
			return true;
		}
		SetupMoveToOnFootpath(*abode, abode->GetArrivePos(), (uint8_t)VILLAGER_STATE_ARRIVES_HOME);
		return true;
	}
	SetTopState(VILLAGER_STATE_HOMELESS_START);
	return false;
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

// BW1W120 00760b60 BW1M100 1009af60 Villager::CheckWhenGoingToBed(void)
bool32_t Villager::CheckWhenGoingToBed()
{
	uint32_t flags = Flags;
	if ((flags & 0x2000) == 0)
	{
		// TODO: target `or eax,0x2000`; ours narrows to `or ah,0x20`
		Flags = (uint16_t)(flags | 0x2000);
		if (CheckDeathFromOldAge() != 0)
		{
			return false;
		}
		if (GetTown() != NULL)
		{
			if (GetTown()->GetRawDesire(TOWN_DESIRE_INFO_FOR_SLEEP) >= 1.0f && IsSexuallyActive() != 0)
			{
				if (IsFemaleVillager() != 0)
				{
					for (Villager* mate = GetAbode()->villagers.head; mate != NULL; mate = mate->next)
					{
						if (mate->IsMaleVillager() != 0 && (mate->Flags & 4))
						{
							CheckGetPregnantAtHome();
							return true;
						}
					}
					return true;
				}
				if (IsMaleVillager() != 0)
				{
					for (Villager* mate = GetAbode()->villagers.head; mate != NULL; mate = mate->next)
					{
						if (mate->IsFemaleVillager() != 0 && (mate->Flags & 4))
						{
							mate->CheckGetPregnantAtHome();
						}
					}
				}
			}
		}
	}
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

// BW1W120 00760ca0 BW1M100 1000d140 Villager::CheckDeathFromOldAge(void)
bool32_t Villager::CheckDeathFromOldAge()
{
	const GVillagerInfo* vi = (const GVillagerInfo*)info;
	if (GetAge() > vi->MiddleAge)
	{
		// TODO: GameRand __FILE__/__LINE__ cannot match in a split TU; loop-body FPU
		// scheduling also differs
		const GVillagerInfo* vi2 = (const GVillagerInfo*)info;
		uint32_t             range = vi2->OldAge - vi2->MiddleAge;
		float                rnd = GRand::GameFloatRand(1.0f, __FILE__, __LINE__);
		float                acc = rnd;
		for (int i = 0; i < 2; i++)
		{
			acc *= rnd;
		}
		int extra = GRand::GameRand((uint32_t)(acc * range), __FILE__, __LINE__);

		const GVillagerInfo* vi3 = (const GVillagerInfo*)info;
		if (GetAge() + extra > vi3->OldAge)
		{
			VillagerDead(DEATH_REASON_OLD_AGE, NULL, ((const GVillagerInfo*)info)->life, 1);
			return true;
		}
	}
	return false;
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

// BW1W120 00760db0 BW1M100 10587f40 Villager::DoSleeping(float)
bool32_t Villager::DoSleeping(float rest_multiplier)
{
	if ((uint8_t)IsPoisoned() == 0)
	{
		const GVillagerInfo* vi = (const GVillagerInfo*)info;
		if (GetLife() < vi->life)
		{
			// TODO: target emits `fstp st(0)` after this call — IncreaseLife likely
			// returned float originally
			IncreaseLife(rest_multiplier * ((const GVillagerInfo*)info)->RestAtHomeRestoresLifeBy);
		}
		Town* town = GetTown();
		if (town == NULL || town->desire.GetSortedDesire(0)->field_0x8 != TOWN_DESIRE_INFO_FOR_SLEEP)
		{
			const GVillagerInfo* vi2 = (const GVillagerInfo*)info;
			if (GetLife() >= vi2->DamageThresholdToSleepUntil)
			{
				return false;
			}
		}
		TurnsUntilNextStateChange = (int16_t)((const GVillagerInfo*)info)->RestAtHomeTime;
		return true;
	}
	return false;
}

// BW1W120 00760e50 BW1M100 10587ee0 Villager::WakeUpAtHome(void)
bool32_t Villager::WakeUpAtHome()
{
	return GoHome();
}

// BW1W120 00760e60 BW1M100 10587dc0 Villager::StartHavingSex(void)
bool32_t Villager::StartHavingSex()
{
	Villager* mate = (Villager*)TargetThing;
	if (mate != NULL && mate->IsAvailable() != 0)
	{
		if (mate->IsTouching(this, 0.57f))
		{
			MakeVillagerFaceObject(mate);
			mate->MakeVillagerFaceObject(this);
			if (StartHavingSex(mate, VILLAGER_STATE_HAVING_SEX) == 1)
			{
				return true;
			}
		}
		else
		{
			GoAndHaveSexWith(mate);
			return true;
		}
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

// BW1W120 00760ee0 BW1M100 10587cd0 Villager::HavingSex(void)
bool32_t Villager::HavingSex()
{
	if (IsReadyForNewAnimation(1) != 0)
	{
		if (((const GVillagerInfo*)info)->sex == SEX_FEMALE && IsSexuallyActive() != 0)
		{
			const GVillagerInfo* vi = (const GVillagerInfo*)info;
			if (GRand::GameFloatRand(1.0f, __FILE__, __LINE__) < vi->PregnancyChance)
			{
				HousewifeGetsPregnant(NULL);
			}
		}
		SetTopState(VILLAGER_STATE_STOP_HAVING_SEX);
	}
	return true;
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

// BW1W120 00760f90 BW1M100 10587ac0 Villager::StartHavingSex(Villager *, VILLAGER_STATES)
bool32_t Villager::StartHavingSex(Villager* mate, VILLAGER_STATES state)
{
	uint32_t time = ((const GVillagerInfo*)info)->HavingSexTime;
	if (mate != NULL)
	{
		if (mate->IsAvailable() == 0)
		{
			return false;
		}
		// TODO: SetTopState call setup is hoisted into the sum in our build; scheduling
		// differs around the calls
		time =
			(((const GVillagerInfo*)mate->info)->HavingSexTime + ((const GVillagerInfo*)info)->HavingSexTime + time) /
			2;
		mate->SetTopState(state);
		mate->TargetThing = this;
		mate->TurnsUntilNextStateChange = (int16_t)(time + 1);
	}
	SetTopState(state);
	TargetThing = mate;
	TurnsUntilNextStateChange = (int16_t)(time + 1);
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

// BW1W120 00761040 BW1M100 10587960 Villager::GetPromiscuity(void)
float Villager::GetPromiscuity()
{
	if (GetTown() != NULL)
	{
		return GetTown()->Promiscuity;
	}
	return 0.5f;
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

// BW1W120 007610d0 BW1M100 10587790 Villager::IsPromiscious(void)
bool32_t Villager::IsPromiscious()
{
	// TODO: GameFloatRand __FILE__/__LINE__ cannot match in a split TU
	if (GRand::GameFloatRand(1.0f, __FILE__, __LINE__) < GetPromiscuity())
	{
		return true;
	}
	return false;
}

// BW1W120 00761110 BW1M100 105876a0 Villager::FindAMateAtHome(void)
bool32_t Villager::FindAMateAtHome()
{
	if (IsPromiscious() != 0)
	{
		for (Villager* mate = GetAbode()->villagers.head; mate != NULL; mate = mate->next)
		{
			if (mate != this && ((const GVillagerInfo*)mate->info)->sex != ((const GVillagerInfo*)info)->sex &&
			    (mate->Flags & 4) && mate->IsAvailableForSex() != 0 && (mate->Flags & 4))
			{
				// TODO: the target returns the found mate pointer raw — the true return
				// type is likely Villager*
				return (bool32_t)mate;
			}
		}
	}
	return 0;
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
	// TODO: 96.9% - target saves MakeHomelessNoStateChange()'s bool result full-width
	// in edi; we store bl. Likely resolves once MakeHomelessNoStateChange is DEFINED
	// in-TU (bool-return width). `int result` forces edi but adds a return-normalization.
	bool result = MakeHomelessNoStateChange();
	SetTopState(VILLAGER_STATE_HOMELESS_START);
	return result;
}

// BW1W120 00761240 BW1M100 10587220 Villager::MakeHomelessNoStateChange(void)
bool Villager::MakeHomelessNoStateChange()
{
	Town* town = GetTown();
	if (GetAbode() != NULL)
	{
		GetAbode()->RemoveAliveVillagerFromAbode(this);
		SetAbode(NULL);
		SetTown(town);
	}
	if (town == NULL)
	{
		return false;
	}
	if (town->IsVillagerInHomelessList(this))
	{
		return false;
	}
	// TODO: 74% - target's VillagersWithoutTown.Remove(this) inline has a membership
	// pre-scan loop (walk once to confirm `this` is present, bail if not) that
	// LHListHead<T>::Remove lacks; also count-- emits in-place `dec [mem]` there vs
	// our load/dec/store. Both stem from LHListHead::Remove's shape (shared header,
	// dispatcher-owned). Plus bool-width epilogue (xor eax vs xor al, mov eax,1 vs
	// mov al,1) and push edi prologue scheduling.
	GGame::g_game->GameLists.VillagersWithoutTown.Remove(this);
	town->HomelessList.AddToFirst(this);
	return true;
}

// BW1W120 00761320 BW1M100 10587160 Villager::HomelessStart(void)
bool32_t Villager::HomelessStart()
{
	GetTown();
	// TODO: 99.8% - target compares CheckHungry()'s bool result full-width
	// (`cmp eax,1`); our build emits `cmp al,1`. bool-return width tie-break
	// (CheckHungry is _N/bool and extern to this TU). int-local zext trick tried,
	// does not force widening.
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
	// ours emits only `mov al`. states[] is uint8 and PlayAnimThenSetState's first
	// param is unsigned char, so the upper bits are dead and MSVC drops the xor.
	// uint32/enum-cast local tricks do not force it (prototype-visibility tie-break).
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

// BW1W120 00761490 BW1M100 1009cb70 Villager::CheckSatisfySleep(void)
bool32_t Villager::CheckSatisfySleep()
{
	if ((Flags & 1) == 0 || ((const GVillagerInfo*)info)->DamageThresholdToGoHome > GetLife())
	{
		// TODO: target folds this to `test byte ptr [Flags],4`; ours splits the byte load
		if (Flags & 4)
		{
			if (CheckWhenGoingToBed() != 0)
			{
				SetTopState(VILLAGER_STATE_GOTO_BED_AT_HOME);
			}
			return true;
		}
		if (GetAbode() != NULL)
		{
			SetTopState(VILLAGER_STATE_GO_HOME);
			return true;
		}
		if (action.states[LIVING_ACTION_INDEX_TOP] == VILLAGER_STATE_SLEEP_IN_TENT)
		{
			return true;
		}
	}
	return false;
}

// BW1W120 00761510 BW1M100 10586c80 Villager::ArtifactDance(void)
bool32_t Villager::ArtifactDance()
{
	MapCoords dancePos;
	CalculateDancePosition(dance_group->Dancer->Pos, &dancePos);
	// TODO: PerformDance should take const MapCoords& (other callers still use the pointer
	// form); retbuf scheduling around the GetArrivePos compare also differs
	if (Pos != dancePos)
	{
		if (Pos == dance_group->Dancer->GetArrivePos())
		{
			SetupMoveToPos(dancePos, VILLAGER_STATE_ARTIFACT_DANCE);
			return true;
		}
	}
	PerformDance(&dance_group->behaviour->Pos, VILLAGER_STATE_ARTIFACT_DANCE, dance_group->field_0x5c);
	return true;
}

// BW1W120 00761800 BW1M100 10586960 Villager::EnterWaitForArtifactDance(unsigned char, unsigned char)
bool32_t Villager::EnterWaitForArtifactDance(unsigned char param_1, unsigned char param_2)
{
	TurnsUntilNextStateChange = 0;
	return true;
}

// BW1W120 00761810 BW1M100 105867e0 Villager::GoHomeAndChange(void)
bool32_t Villager::GoHomeAndChange()
{
	Abode*          abode = GetAbode();
	VILLAGER_STATES state;
	if (abode != NULL)
	{
		const MapCoords* pos = &abode->GetArrivePos();
		if (AreWeThere(pos, 0.0f) == 0)
		{
			SetupMoveToWithHug(*pos, VILLAGER_STATE_GO_HOME_AND_CHANGE);
			return true;
		}
		state = (Flags & 4) ? VILLAGER_STATE_AT_HOME : VILLAGER_STATE_ARRIVES_HOME;
	}
	else
	{
		state = VILLAGER_STATE_DECIDE_WHAT_TO_DO;
	}
	SetTopState(state);
	if (GetScale() < 0.95f)
	{
		SetScaleForAge(GetAge());
	}
	return true;
}

// BW1W120 007618c0 BW1M100 10586680 Villager::ChangeTribeIfRequired(TRIBE_TYPE, int)
bool32_t Villager::ChangeTribeIfRequired(TRIBE_TYPE tribe, int show_effect)
{
	const GVillagerInfo* vi = (const GVillagerInfo*)info;
	if (vi->KeepMeshWhenChangeTown == 0)
	{
		GVillagerInfo* new_info = GVillagerInfo::Find(tribe, vi->VillagerNumber);
		if (GetTown() != NULL)
		{
			uint32_t newFood = new_info->FoodReqiredForDinner;
			uint32_t oldFood = vi->FoodReqiredForDinner;
			float    diff = (float)newFood - (float)oldFood;
			GetTown()->stats.FoodReqiredForDinner += diff;
		}
		ChangeInfo(new_info);
		if (show_effect != 0)
		{
			return CreateSmokyStuff(1, 1.0f, LH3DColor(0xffffffff));
		}
	}
	// TODO: the other paths deliberately fall off with no return statement (C4715): the
	// target never writes eax on them — the original likely returned void.
}

// BW1W120 00761980 BW1M100 10586570 Villager::ExitGoHomeAndChange(unsigned char)
bool32_t Villager::ExitGoHomeAndChange(unsigned char state)
{
	if (IsStateExitFunctionSameAs((VILLAGER_STATES)state) == 0)
	{
		Town*      town = GetTown();
		TRIBE_TYPE tribe = town != NULL ? town->tribe_type : ((const GVillagerInfo*)info)->TribeType;
		// TODO: only a reloc-form diff remains (raw address vs g_GVillagerStateTableInfos
		// symbol); byte-identical after link
		ChangeTribeIfRequired(tribe, g_GVillagerStateTableInfos[state].field_0xd0 == 0);
	}
	if (DiscipleType == VILLAGER_DISCIPLE_CHANGE_HOUSE)
	{
		SetVillagerDisciple(NULL, VILLAGER_DISCIPLE_NONE, 0);
	}
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
