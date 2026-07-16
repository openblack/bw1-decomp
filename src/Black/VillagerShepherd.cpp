#include "Villager.h"

#include "Abode.h"
#include "Flock.h"
#include "JobInfo.h"
#include "StoragePit.h"
#include "Town.h"
#include "TownDesireInfo.h"
#include "Utils.h"
#include "chlasm/GStates.h"

// TODO: static-init cluster — the 44-byte atexit-registration fragment at 0x768b80 needs the
// original compiler frontend, and the initializer below is emitted under a compiler-generated
// name; not fully matchable from source.
const float VillagerShepherdNumDaysInYear = 365.25f;
const float VillagerShepherdSecondsInDay = 86400.0f;

// BW1W120 00768bc0 Villager::FUN_00768bc0(void)
static float VillagerShepherdSecondsPerYear = VillagerShepherdSecondsInDay * VillagerShepherdNumDaysInYear;

// TODO: the shepherd states reuse the TargetThing slot (0x118) as two uint16 fields
// { int16 turns-countdown @0x118, uint16 pending-state @0x11a }, hence the casts below;
// needs proper union members in Villager.h.

// BW1W120 00768be0 BW1M100 10598820 Villager::VillagerBecomesShepherd(Flock *)
// TODO: early-out block ordering differs from the target; Town::GetFlock's recorded symbol
// still returns bool, so the call reloc cannot bind
bool32_t Villager::VillagerBecomesShepherd(Flock* new_flock)
{
	if (new_flock == NULL)
	{
		Town* town = GetTown();
		if (town != NULL)
			new_flock = town->GetFlock(LIVING_TYPE_ANY, 0);
		if (new_flock == NULL)
			return 0;
	}
	if (new_flock->Shepherd != NULL && new_flock->Shepherd != this)
		return 0;
	SetFlock(new_flock);
	flock->Shepherd = this;
	return ShepherdGotoFlock();
}

// BW1W120 00768c30 BW1M100 105986f0 Villager::ShepherdLookForFlock(void)
// TODO: Town::GetFlock's recorded symbol still returns bool, so the call reloc cannot bind
bool32_t Villager::ShepherdLookForFlock()
{
	if (GetTown() != NULL)
	{
		Flock* new_flock = GetTown()->GetFlock(LIVING_TYPE_ANY, 0);
		if (new_flock != NULL)
		{
			if (flock != NULL)
				flock->RemoveLivingFromFlock(this, 1);
			SetFlock(new_flock);
			flock->Shepherd = this;
			return true;
		}
	}
	return false;
}

// BW1W120 00768c90 BW1M100 10598650 Villager::FindClosestFlockAnimal(void)
// TODO: needs the nearest-flock helper at 0x52ffd0 and the nearest-flock-member helper at
// 0x530050 named
bool32_t Villager::FindClosestFlockAnimal()
{
	return 0;
}

// BW1W120 00768cc0 BW1M100 105984c0 Villager::ShepherdMoveFlockToWater(void)
// TODO: Abode::FindNearestDrinkingWater is declared void but the target tests its eax result;
// the original was surely `|| (FindNearestDrinkingWater(400.0f) && GetNearestWaterPos(waterPos))`
// and the comma form below is the closest legal shape until the return type is fixed.
bool Villager::ShepherdMoveFlockToWater()
{
	GetJobInfo(10); // result discarded
	Flock*    my_flock = flock;
	Abode*    abode = GetAbode();
	MapCoords waterPos;
	if (abode != NULL && my_flock != NULL)
	{
		if (abode->GetNearestWaterPos(waterPos) ||
		    (abode->FindNearestDrinkingWater(400.0f), abode->GetNearestWaterPos(waterPos)))
		{
			my_flock->SavedDomainCentre = my_flock->Pos;
			my_flock->SetDomainCentrePos(waterPos);
			((int16_t*)&TargetThing)[0] = 900;
			((uint16_t*)&TargetThing)[1] = VILLAGER_STATE_SHEPHERD_MOVE_FLOCK_BACK;
			SetupMoveToWithHug(waterPos, VILLAGER_STATE_SHEPHERD_WAIT_FOR_FLOCK);
			Living* animal;
			if (my_flock->members != NULL)
				animal = my_flock->members->payload;
			else
				animal = NULL;
			SetSpeed(animal->speed, 0);
			SetStateAnim();
			return true;
		}
	}
	SetTopState(VILLAGER_STATE_SHEPHERD_RELEASES_CONTROL_OF_FLOCK);
	return false;
}

// BW1W120 00768dd0 BW1M100 10006020 Villager::ShepherdWaitForFlock(void)
bool32_t Villager::ShepherdWaitForFlock()
{
	((int16_t*)&TargetThing)[0]--;
	if (((int16_t*)&TargetThing)[0] == 0)
	{
		unsigned int pending_state = ((uint16_t*)&TargetThing)[1];
		if ((unsigned short)pending_state != 0)
		{
			SetTopState((VILLAGER_STATES)pending_state);
			((uint16_t*)&TargetThing)[1] = 0;
			return 1;
		}
		((int16_t*)&TargetThing)[0] = 20;
		SetTopState(VILLAGER_STATE_SHEPHERD_DECIDE_WHAT_TO_DO_WITH_FLOCK);
	}
	return 1;
}

// BW1W120 00768e30 BW1M100 105981b0 Villager::ShepherdGotoFlock(void)
// TODO: Flock::GetFlockPos really returns MapCoords*, not MapCoords by value (see Flock.h)
bool Villager::ShepherdGotoFlock()
{
	MapCoords flockPos;
	Flock*    my_flock = flock;
	if (my_flock == NULL || my_flock->leader == NULL || my_flock->leader->payload == NULL)
	{
		ShepherdLookForFlock();
		return false;
	}
	if (GetJobInfo(10)->GetJobActivity() != 0)
	{
		flockPos = my_flock->GetFlockPos();
		SetupMoveToWithHug(flockPos, VILLAGER_STATE_SHEPHERD_TAKES_CONTROL_OF_FLOCK);
		return true;
	}
	return false;
}

// BW1W120 00768ec0 BW1M100 105980a0 Villager::ShepherdTakesControlOfFlock(void)
// TODO: after picking the leader the target also calls the add-living-to-flock helper at
// 0x52fa50 on the flock; needs that helper named
bool32_t Villager::ShepherdTakesControlOfFlock()
{
	Flock* my_flock = flock;
	if (GetJobInfo(10)->GetJobActivity() != 0 && my_flock != NULL)
	{
		my_flock->GetFlockPos(); // result unused
		Living* leader;
		if (my_flock->leader != NULL)
			leader = my_flock->leader->payload;
		else
			leader = NULL;
		((int16_t*)&TargetThing)[0] = 50;
		SetupMoveToObject(leader, VILLAGER_STATE_SHEPHERD_DECIDE_WHAT_TO_DO_WITH_FLOCK);
		return 1;
	}
	return 0;
}

// BW1W120 00768f20 BW1M100 10597fd0 Villager::ShepherdReleasesControlOfFlock(void)
bool32_t Villager::ShepherdReleasesControlOfFlock()
{
	if (flock != NULL)
	{
		((int16_t*)&TargetThing)[0] = 20;
		((uint16_t*)&TargetThing)[1] = VILLAGER_STATE_GO_HOME;
		SetTopState(VILLAGER_STATE_SHEPHERD_WAIT_FOR_FLOCK);
		return 1;
	}
	return 0;
}

// BW1W120 00768f50 BW1M100 10597f10 Villager::ExitShepherding(unsigned char)
bool32_t Villager::ExitShepherding(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state))
	{
		Flock* my_flock = flock;
		if (my_flock != NULL)
		{
			my_flock->SetDomainCentrePos(my_flock->SavedDomainCentre);
			my_flock->RemoveLivingFromFlock(this, 1);
			my_flock->Shepherd = NULL;
		}
		flock = NULL;
	}
	return 1;
}

// BW1W120 00768fb0 BW1M100 10597d80 Villager::ShepherdDecideWhatToDoWithFlock(void)
bool32_t Villager::ShepherdDecideWhatToDoWithFlock()
{
	((int16_t*)&TargetThing)[0]--;
	if (((int16_t*)&TargetThing)[0] == 0)
	{
		if (flock->NumMembers < 2)
		{
			SetTopState(VILLAGER_STATE_SHEPHERD_RELEASES_CONTROL_OF_FLOCK);
			return 0;
		}
		GTownDesireInfo* info = GetTown()->desire.GetInfo(TOWN_DESIRE_INFO_FOR_FOOD);
		float            desire = GetTown()->GetDesire(TOWN_DESIRE_INFO_FOR_FOOD);
		if (desire >= info->DesireTriggersVillagerAction && flock != NULL && (flock->NumMembers > 2 || desire > 0.5f))
		{
			SetTopState(VILLAGER_STATE_SHEPHERD_TAKE_ANIMAL_FOR_SLAUGHTER);
			return 1;
		}
		SetTopState(VILLAGER_STATE_SHEPHERD_MOVE_FLOCK_TO_WATER);
	}
	return 1;
}

// BW1W120 00769070 BW1M100 10597cc0 Villager::ShepherdMoveFlockBack(void)
bool32_t Villager::ShepherdMoveFlockBack()
{
	Flock* my_flock = flock;
	if (my_flock != NULL)
	{
		my_flock->SetDomainCentrePos(my_flock->SavedDomainCentre);
		SetupMoveToWithHug(my_flock->SavedDomainCentre, VILLAGER_STATE_SHEPHERD_RELEASES_CONTROL_OF_FLOCK);
		Living* animal;
		if (my_flock->members != NULL)
			animal = my_flock->members->payload;
		else
			animal = NULL;
		SetSpeed(animal->speed, 0);
		SetStateAnim();
		return 1;
	}
	return 0;
}

// BW1W120 007690d0 BW1M100 10597c80 Villager::ShepherdMoveFlockToFood(void)
bool32_t Villager::ShepherdMoveFlockToFood()
{
	return 1;
}

// BW1W120 007690e0 BW1M100 10597ae0 Villager::ShepherdTakeAnimalForSlaughter(void)
// TODO: needs the helpers at 0x530050 (nearest flock member) and 0x52fa50 (add living to
// flock) named, and Flock::SeperateLivingIntoNewFlock should return the new Flock* which
// the target continues to set up (see Flock.h)
bool32_t Villager::ShepherdTakeAnimalForSlaughter()
{
	Flock* my_flock = flock;
	if (my_flock != NULL)
	{
		Living* animal = NULL; // fabricated -- stands in for the unnamed helper above
		if (animal != NULL)
		{
			if (GetStoragePit() != NULL && GetStoragePit()->IsFunctional())
			{
				my_flock->RemoveLivingFromFlock(this, 1);
				my_flock->Shepherd = NULL;
				my_flock->SeperateLivingIntoNewFlock(animal, 1);
				((int16_t*)&TargetThing)[0] = 20;
				SetTopState(VILLAGER_STATE_SHEPHERD_CHECK_ANIMAL_FOR_SLAUGHTER);
				return 1;
			}
		}
	}
	((int16_t*)&TargetThing)[0] = 20;
	SetTopState(VILLAGER_STATE_SHEPHERD_DECIDE_WHAT_TO_DO_WITH_FLOCK);
	return 0;
}

// BW1W120 007691a0 BW1M100 10026690 Villager::ShepherdCheckAnimalForSlaughter(void)
// TODO: needs the step-towards-position helpers at 0x74ed60 and 0x74ee20 named (both compute
// the movePos below, which is passed zero-initialized for now); the GetDoorPos virtual also
// dispatches through the wrong vtable slot (extra virtuals declared below MultiMapFixed).
bool32_t Villager::ShepherdCheckAnimalForSlaughter()
{
	((int16_t*)&TargetThing)[0]--;
	Flock* my_flock = flock;
	if (((int16_t*)&TargetThing)[0] > 0)
		return 0;
	if (my_flock != NULL)
	{
		if (my_flock->NumMembers < 2)
		{
			((int16_t*)&TargetThing)[0] = 20;
			SetTopState(VILLAGER_STATE_SHEPHERD_DECIDE_WHAT_TO_DO_WITH_FLOCK);
			return 0;
		}
		Living* animal = (Living*)SlaughterAnimalIsClose(6.0f, this);
		if (animal != NULL)
		{
			if (GetStoragePit() == NULL)
				return 0;
			if (!GetStoragePit()->IsFunctional())
				return 0;
			MapCoords doorPos = GetStoragePit()->GetDoorPos();
			MapCoords movePos;
			float     dist = GUtils::GetDistanceInMetres(Pos, doorPos);
			if (dist > 100.0f)
			{
				// fabricated: movePos should come from the helper at 0x74ed60
				SetupMoveToWithHug(movePos, VILLAGER_STATE_SHEPHERD_CHECK_ANIMAL_FOR_SLAUGHTER);
			}
			else if (dist > 30.0f)
			{
				// fabricated: movePos should come from the helper at 0x74ee20
				SetupMoveToWithHug(movePos, VILLAGER_STATE_SHEPHERD_CHECK_ANIMAL_FOR_SLAUGHTER);
			}
			else
			{
				((int16_t*)&TargetThing)[0] = 5;
				SetupMoveToWithHug(doorPos, VILLAGER_STATE_SHEPHERD_SLAUGHTER_ANIMAL);
			}
			SetSpeed(animal->speed, 0);
			SetStateAnim();
			return 1;
		}
		Living* member;
		if (my_flock->members != NULL)
			member = my_flock->members->payload;
		else
			member = NULL;
		SetGameAngle(GUtils::GetAngleFromXZ(Pos, member->Pos));
		((int16_t*)&TargetThing)[0] = 20;
	}
	else
	{
		SetTopState(VILLAGER_STATE_SHEPHERD_DECIDE_WHAT_TO_DO_WITH_FLOCK);
		((int16_t*)&TargetThing)[0] = 20;
	}
	return 0;
}

// BW1W120 00769390 BW1M100 10597830 Villager::ShepherdSlaughterAnimal(void)
bool32_t Villager::ShepherdSlaughterAnimal()
{
	((int16_t*)&TargetThing)[0]--;
	Flock* my_flock = flock;
	if (((int16_t*)&TargetThing)[0] <= 0 && my_flock != NULL)
	{
		Living* animal = (Living*)SlaughterAnimalIsClose(4.0f, this);
		if (animal != NULL)
		{
			my_flock->RemoveLivingFromFlock(animal, 1);
			PickupFood((short)animal->GetFoodValue((FOOD_TYPE)3));
			animal->TurnsUntilNextStateChange = 0;
			animal->SetupMoveToPos(Pos, ANIMAL_STATE_DEAD);
			((uint16_t*)&TargetThing)[1] = VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_DROP_OFF;
			SetTopState(VILLAGER_STATE_SHEPHERD_WAIT_FOR_FLOCK);
		}
		((int16_t*)&TargetThing)[0] = 20;
	}
	return 1;
}

// BW1W120 00769430 BW1M100 10006770 Villager::SlaughterAnimalIsClose(float, Living *)
// TODO: passthrough of the nearest-flock-member helper at 0x530050; needs it named
bool32_t Villager::SlaughterAnimalIsClose(float max_dist, Living* exclude)
{
	if (flock != NULL)
	{
	}
	return 0;
}

// BW1W120 00769460 BW1M100 105976d0 Villager::ShepherdFetchStray(void)
bool32_t Villager::ShepherdFetchStray()
{
	return 1;
}
