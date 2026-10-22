#include "GameTimeConstants.h"
#include "Villager.h"

#include <stdlib.h> /* For max */

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For TWO_PI, HALF_PI_F, QUARTER_PI_F, EIGHTH_PI_F */
#include <Lionhead/LH3DLib/development/LH3DMesh.h> /* For LH3DMesh::GetPackedMesh */
#include <chlasm/GStates.h>                        /* For enum VILLAGER_STATES */

#include "Abode.h"
#include "Alignment.h"
#include "Dance.h"
#include "DanceGroup.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameStats.h"
#include "InterfaceStatus.h"
#include "Map.h"
#include "Player.h"
#include "Rand.h"
#include "Reaction.h"
#include "Town.h"
#include "Tree.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"

#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define FILEPATH "C:\\dev\\black\\VillagerHome.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\VillagerHome.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\VillagerHome.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\VillagerHome.cpp"
#endif

bool32_t Villager::HomeDecideWhatToDo()
{
	if (GetAbode() != NULL && GetTown() != NULL && GetTown()->IsInStateOfEmergency())
	{
		SetTopState(VILLAGER_STATE_GOTO_BED_AT_HOME);
		return true;
	}
	if (CheckNeedsAtHome() == true)
	{
		return true;
	}
#if !defined(VERSION_BW1W100)
	if (IsDisciple())
#endif
	{
		uint32_t disciple = DiscipleType;
		if (GVillagerInfo::GetDiscipleInfo()[(uint8_t)disciple].UsesNothingToDoState == true)
		{
			if ((uint8_t)disciple == VILLAGER_DISCIPLE_BREEDER)
			{
				if (GetTown()->desire.GetSortedDesire(0)->Type == TOWN_DESIRE_INFO_FOR_SLEEP)
				{
					if (CheckSatisfySleep())
					{
						return true;
					}
				}
			}
			return DecideWhatToDo();
		}
	}
	if (CheckNeededForSomething() == true)
	{
		return true;
	}
	HomeNothingToDo();
	return false;
}

bool32_t Villager::CheckNeededForSomething()
{
	if (GetAbode() == NULL)
	{
		if (CheckHomelessMoveIntoAbode())
		{
			return true;
		}
	}
	return CheckNeededForSpecial() == true;
}

bool32_t Villager::HomeNothingToDo()
{
	if (Flags & VILLAGER_FLAG_AT_HOME)
	{
		if (GRand::GameRand(VILLAGER_GO_TO_BED_CHANCE, FILEPATH, 75) == 0)
		{
			TurnsUntilNextStateChange = 0;
			SetTopState(VILLAGER_STATE_GOTO_BED_AT_HOME);
			return true;
		}
	}
	SetupNothingToDo();
	return true;
}

bool32_t Villager::NothingToDo()
{
	return true;
}

bool32_t Villager::CheckNeededForSpecial()
{
	if (CheckNeededForWorship() == true)
	{
		return true;
	}
	if (CheckNeededForCivic() == true)
	{
		return true;
	}
	return CheckSatisfyOwnDesire(GetInfo()->OwnDesireThreshold) == true;
}

bool32_t Villager::CheckSatisfyOwnDesire(float threshold)
{
	float foodDesire = GetDesireForFood() - threshold;
	float lifeDesire = GetDesireForLife() - threshold;
	if (foodDesire > lifeDesire && foodDesire > 0.0f)
	{
		if (CheckSatisfyOwnFoodDesire())
			return true;
		if (lifeDesire > 0.0f)
			return CheckSatisfySleep();
	}
	else if (lifeDesire > 0.0f)
	{
		if (CheckSatisfySleep())
			return true;
		if (foodDesire > 0.0f)
			return CheckSatisfyOwnFoodDesire();
	}
	return false;
}

bool32_t Villager::CheckNeedsAtHome()
{
	if (IsWoman())
	{
		if (WomanSpecial() == true)
		{
			return true;
		}
		if (IsPregnant())
		{
			return true;
		}
	}
	float desire;
#if defined(VERSION_BW1W100)
	if (GVillagerInfo::GetDiscipleInfo()[DiscipleType].UsesNothingToDoState == true)
#else
	if (IsDisciple() && GVillagerInfo::GetDiscipleInfo()[DiscipleType].UsesNothingToDoState == true)
#endif
	{
		desire = max(GetLifeDesireFromLife(GetInfo()->DamageThresholdToGoHome),
		             GetFoodDesireFromFood(GetInfo()->StarvingForFood));
	}
	else
	{
		desire = max(GetLifeDesireFromLife(GetInfo()->DamageThresholdToSleepUntil),
		             GetFoodDesireFromFood(GetInfo()->HungryForFood));
	}
	if (CheckSatisfyOwnDesire(desire * VILLAGER_HOME_DESIRE_SCALE) == true)
	{
		return true;
	}
	if (IsChild())
	{
		if (CheckChildActivity() == true)
		{
			return true;
		}
	}
	return false;
}

bool32_t Villager::CheckIllAtHome()
{
	return false;
}

bool32_t Villager::GoHomeDropResource()
{
	bool32_t holding = IsHoldingFood() || IsHoldingWood();
	if (holding)
	{
		return GotoStoragePitForDropOff();
	}
	return GoHome();
}

bool32_t Villager::GoHome()
{
	return DoGoingHome(VILLAGER_STATE_ARRIVES_HOME, VILLAGER_STATE_SLEEP_IN_TENT);
}

bool32_t Villager::DoGoingHome(VILLAGER_STATES arrive_state, VILLAGER_STATES tent_state)
{
	if (IsDancing())
	{
		RemoveFromDance((Flags & VILLAGER_FLAG_AT_WORSHIP_SITE) != 0);
	}
	Abode* abode = GetAbode();
	if (abode != NULL)
	{
		if (Flags & VILLAGER_FLAG_AT_HOME)
		{
			SetTopState(VILLAGER_STATE_AT_HOME);
			return true;
		}
		uint32_t finalState = GetFinalState();
		if (finalState != arrive_state)
		{
			SetupMoveToOnFootpath(*abode, abode->GetArrivePos(), (uint8_t)arrive_state);
		}
		return true;
	}
	Town* town = GetTown();
	if (town != NULL)
	{
		MapCoords pos = Pos;
		uint32_t  endState;
		if (GUtils::GetDistanceInMetres(&Pos, &GetTown()->Pos) > TOWN_FAR_DISTANCE)
		{
			endState = action.states[LIVING_ACTION_INDEX_TOP];
			float angle = GRand::GameFloatRand(HALF_PI_F, FILEPATH, 295) - QUARTER_PI_F +
			              GUtils::Get3DAngleFromXZ(town->Pos, Pos);
			pos = town->Pos +
			      GUtils::GetPosFromAngle(angle, (GRand::GameFloatRand(TOWN_FAR_APPROACH_DISTANCE, FILEPATH, 296)) +
			                                         TOWN_FAR_MIN_DISTANCE);
		}
		else
		{
			pos += GUtils::GetPosFromAngle((GRand::GameFloatRand(TWO_PI, FILEPATH, 300)),
			                               GRand::GameFloatRand(TOWN_NEAR_WANDER_DISTANCE, FILEPATH, 300) +
			                                   TOWN_NEAR_MIN_DISTANCE);
			if (!GetTentPos(pos))
			{
				endState = action.states[LIVING_ACTION_INDEX_TOP];
				pos += GUtils::GetPosFromAngle((GRand::GameFloatRand(TWO_PI, FILEPATH, 304)),
				                               GRand::GameFloatRand(TOWN_TENTLESS_WANDER_DISTANCE, FILEPATH, 304) +
				                                   TOWN_TENTLESS_MIN_DISTANCE);
			}
			else
			{
				endState = tent_state;
			}
		}
		SetupMoveToWithHug(pos, (VILLAGER_STATES)endState);
		return true;
	}
	SetTopState(VILLAGER_STATE_VAGRANT_START);
	return true;
}

bool32_t Villager::GetTentPos(MapCoords& coords)
{
	MapCoords pos;
	pos.SetWholeX(Pos.WholeX());
	pos.SetWholeZ(Pos.WholeZ());
	pos.SetAltitude(Pos.Altitude());
	Object* tree = pos.FindObject(&Object::IsTree, TENT_TREE_SEARCH_RADIUS, NULL);
	if (tree != NULL && ((Tree*)tree)->GetPosForVillagerToSleepUnder(this, pos))
	{
		coords.Set(pos);
		return true;
	}
	pos.Set(coords);
	for (uint8_t attempt = 0; attempt < TENT_POS_ATTEMPTS; attempt++)
	{
		if (pos.Collide((COLLIDE_TYPE)(COLLIDE_TYPE_WATER | COLLIDE_TYPE_FIXED | COLLIDE_TYPE_OFF_MAP)) == 0)
		{
			bool32_t clear = true;
			long     spiralX = 1;
			long     spiralZ = 1;
			for (int count = TENT_SPACING_SPIRAL_SIZE; count != 0; count--)
			{
				for (MapCellIterator it = pos.GetFirstIterator(); it.object != NULL;)
				{
					if (it.object->IsVillager(NULL) && pos.GetDistance(it.object->Pos) < TENT_SPACING &&
					    ((Villager*)it.object)->action.GetState(LIVING_ACTION_INDEX_TOP) ==
					        VILLAGER_STATE_SLEEP_IN_TENT)
					{
						clear = false;
						break;
					}
					it.object = it.object->GetMapChild(*it.cell);
					it.MoveToMobileObsIfNeededAndPoss();
				}
				pos += *GUtils::Spiral(spiralX, spiralZ);
			}
			if (clear)
			{
				coords.Set(pos);
				return true;
			}
		}
		pos +=
			GUtils::GetPosFromAngle((GRand::GameFloatRand(TWO_PI, FILEPATH, 365)),
		                            GRand::GameFloatRand(TENT_RETRY_DISTANCE, FILEPATH, 365) + TENT_RETRY_MIN_DISTANCE);
	}
	return false;
}

bool32_t Villager::Landed()
{
	if ((Flags & VILLAGER_FLAG_BEEN_PICKED_UP) && IsDisciple())
	{
		uint32_t disciple = DiscipleType;
		if (action.TurnsSinceStateChange == 1)
		{
			GInterfaceStatus*      status = GetInterfaceStatusWhoLastDroppedMe();
			GPlayer*               player = status != NULL ? status->GetPlayer() : NULL;
			DETECTED_PLAYER_ACTION playerAction =
				(DETECTED_PLAYER_ACTION)(DETECTED_PLAYER_ACTION_THROW_IN_THE_SEA + disciple);
			if (player != NULL)
			{
				if (playerAction < DETECTED_PLAYER_ACTION_LAST)
				{
					player->ConsiderMakingCreatureMimicPlayer(status, playerAction, this, MAGIC_TYPE_NONE);
				}
				if (DiscipleOnPickUp != disciple)
				{
					player->GetAlignment()->UpdateFromDisciple(player, this);
				}
			}
		}
		if (!IsReadyForNewAnimation(1))
		{
			return true;
		}
		Reaction::RemoveAllReactionsOfTypeInitiatedByObject(this, REACTION_REACT_TO_VILLAGER_IN_HAND);
		Flags &= ~VILLAGER_FLAG_BEEN_PICKED_UP;
		if (disciple != VILLAGER_DISCIPLE_NONE)
		{
			LHOrderedLinkedList<SortedObject> objects;
			if (FindCloseObjectsForInteract(&objects, Pos) && objects.GetHead() != NULL)
			{
				SortedObject* object = objects.GetHead()->GetData();
				Town*         town = GetTown();
				if (town != NULL && DiscipleOnPickUp != disciple)
				{
					town->GetPlayer()->GetStats()->IncrementCorrectDisciple((VILLAGER_DISCIPLE)disciple);
				}
				if (GVillagerInfo::GetDiscipleInfo()[disciple].MovesToTownOfObject)
				{
					Town* objectTown = object->GetTown();
					if (objectTown != NULL && objectTown != town && CheckMoveIntoTown(*objectTown))
					{
						ChangeTribeIfRequired(objectTown->tribe_type, true);
					}
				}
				if (GVillagerInfo::GetDiscipleInfo()[disciple].begin_state == VILLAGER_STATE_INVALID_STATE)
				{
					SetupInspectObject(object);
				}
				else
				{
					SetTopState(GVillagerInfo::GetDiscipleInfo()[disciple].begin_state);
				}
				return true;
			}
		}
	}
	Reaction::RemoveAllReactionsOfTypeInitiatedByObject(this, REACTION_REACT_TO_VILLAGER_IN_HAND);
	PlayAnimThenSetState(VILLAGER_STATE_DECIDE_WHAT_TO_DO, 1);
	return true;
}

bool32_t Villager::ArrivesHome()
{
	Abode* abode = GetAbode();
	if (abode != NULL)
	{
		if (AreWeThere(abode->GetArrivePos(), 0.0f))
		{
			if (!abode->IsBuilt() || !abode->IsRepaired())
			{
				if (GetLife() < GetInfo()->DamageThresholdToGoHome)
				{
					if (!abode->IsFunctional())
					{
						float     angle = (GUtils::Get3DAngleFromXZ(abode->Pos, Pos) +
						                   (EIGHTH_PI_F - GRand::GameFloatRand(QUARTER_PI_F, FILEPATH, 465)));
						MapCoords spot =
							Pos + GUtils::GetPosFromAngle(
									  angle, (GRand::GameFloatRand(BROKEN_HOME_TENT_DISTANCE, FILEPATH, 466)) +
												 BROKEN_HOME_TENT_MIN_DISTANCE);
						if (GetTentPos(spot))
						{
							SetupMoveToWithHug(spot, VILLAGER_STATE_SLEEP_IN_TENT);
							return true;
						}
						return true;
					}
				}
				else if (food < GetInfo()->HungryForFood)
				{
					if (!abode->IsFunctional())
					{
						SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
					}
				}
				else if (SetupBuildingObject((MultiMapFixed*)abode) == true)
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

bool32_t Villager::AtHome()
{
	HomeDecideWhatToDo();
	return true;
}

bool32_t Villager::SitsDownToDinner()
{
	return true;
}

bool32_t Villager::GotoBedAtHome()
{
	SetTopState(VILLAGER_STATE_SLEEPING_AT_HOME);
	TurnsUntilNextStateChange = (int16_t)GetInfo()->RestAtHomeTime;
	return true;
}

bool32_t Villager::CheckWhenGoingToBed()
{
	if ((Flags & VILLAGER_FLAG_BEEN_TO_BED) == 0)
	{
		Flags |= VILLAGER_FLAG_BEEN_TO_BED;
		if (CheckDeathFromOldAge())
		{
			return false;
		}
		if (GetTown() != NULL)
		{
			if (GetTown()->GetRawDesire(TOWN_DESIRE_INFO_FOR_SLEEP) >= VILLAGER_MATING_SLEEP_DESIRE &&
			    IsSexuallyActive())
			{
				if (IsFemaleVillager())
				{
					FOREACH_LH_LIST_HEAD(Villager, mate, GetAbode()->villagers)
					{
						if (mate->IsMaleVillager() && (mate->Flags & VILLAGER_FLAG_AT_HOME))
						{
							CheckGetPregnantAtHome();
							return true;
						}
					}
					return true;
				}
				if (IsMaleVillager())
				{
					FOREACH_LH_LIST_HEAD(Villager, mate, GetAbode()->villagers)
					{
						if (mate->IsFemaleVillager() && (mate->Flags & VILLAGER_FLAG_AT_HOME))
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

bool32_t Villager::CheckGetPregnantAtHome()
{
	bool32_t pregnant = WillHousewifeGetPregnant(NULL);
	if (pregnant)
	{
		pregnant = HousewifeGetsPregnant(NULL);
	}
	return pregnant;
}

bool32_t Villager::CheckDeathFromOldAge()
{
	if (GetAge() > GetInfo()->MiddleAge)
	{
		uint32_t oldAgeSpan = GetInfo()->OldAge - GetInfo()->MiddleAge;
		float    chance = POWER(GRand::GameFloatRand(1.0f, FILEPATH, 600), 3);
		float    span = oldAgeSpan;
		int      extra = GRand::GameRand((uint32_t)(chance * span), FILEPATH, 602);
		if (GetAge() + extra > GetInfo()->OldAge)
		{
			VillagerDead(DEATH_REASON_OLD_AGE, NULL, GetInfo()->life, true);
			return true;
		}
	}
	return false;
}

bool32_t Villager::SleepingAtHome()
{
	if (GetTown() != NULL)
	{
		TurnsUntilNextStateChange--;
		if (TurnsUntilNextStateChange == 0)
		{
			if (!DoSleeping(1.0f))
			{
				SetTopState(VILLAGER_STATE_AT_HOME);
			}
		}
	}
	return true;
}

bool32_t Villager::DoSleeping(float rest_multiplier)
{
	if (!IsPoisoned())
	{
		if (GetLife() < GetInfo()->life)
		{
			IncreaseLife(rest_multiplier * GetInfo()->RestAtHomeRestoresLifeBy);
		}
		Town* town = GetTown();
		if (town == NULL || town->desire.GetSortedDesire(0)->Type != TOWN_DESIRE_INFO_FOR_SLEEP)
		{
			if (GetLife() >= GetInfo()->DamageThresholdToSleepUntil)
			{
				return false;
			}
		}
		TurnsUntilNextStateChange = (int16_t)GetInfo()->RestAtHomeTime;
		return true;
	}
	return false;
}

bool32_t Villager::WakeUpAtHome()
{
	return GoHome();
}

bool32_t Villager::StartHavingSex()
{
	Villager* mate = (Villager*)TargetThing;
	if (mate != NULL && mate->IsAvailable())
	{
		if (mate->IsTouching(this, VILLAGER_SEX_TOUCH_DISTANCE))
		{
			MakeVillagerFaceObject(mate);
			mate->MakeVillagerFaceObject(this);
			if (StartHavingSex(mate, VILLAGER_STATE_HAVING_SEX) == true)
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

bool32_t Villager::HavingSex()
{
	if (IsReadyForNewAnimation(1))
	{
		if (GetInfo()->sex == SEX_FEMALE && IsSexuallyActive())
		{
			if (GRand::GameFloatRand(1.0f, FILEPATH, 691) < GetInfo()->PregnancyChance)
			{
				HousewifeGetsPregnant(NULL);
			}
		}
		SetTopState(VILLAGER_STATE_STOP_HAVING_SEX);
	}
	return true;
}

bool32_t Villager::StopHavingSex()
{
	if (Flags & VILLAGER_FLAG_AT_HOME)
	{
		return GoHome();
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

bool32_t Villager::StartHavingSexAtHome()
{
	return true;
}

bool32_t Villager::StartHavingSex(Villager* mate, VILLAGER_STATES state)
{
	uint32_t time = GetInfo()->HavingSexTime;
	if (mate != NULL)
	{
		if (!mate->IsAvailable())
		{
			return false;
		}
		time = (mate->GetInfo()->HavingSexTime + GetInfo()->HavingSexTime + time) / 2;
		mate->SetTopState(state);
		mate->TargetThing = this;
		mate->TurnsUntilNextStateChange = (int16_t)(time + 1);
	}
	SetTopState(state);
	TargetThing = mate;
	TurnsUntilNextStateChange = (int16_t)(time + 1);
	return true;
}

bool32_t Villager::HavingSexAtHome()
{
	return true;
}

bool32_t Villager::StopHavingSexAtHome()
{
	return true;
}

bool32_t Villager::WaitForDinner()
{
	return true;
}

float Villager::GetPromiscuity()
{
	if (GetTown() != NULL)
	{
		return GetTown()->Promiscuity;
	}
	return VILLAGER_DEFAULT_PROMISCUITY;
}

bool32_t Villager::IsAvailableForSex()
{
	if (GetVillagerAvailableState() & VILLAGER_AVAILABLE_FREE)
	{
		return IsSexuallyActive();
	}
	return false;
}

bool32_t Villager::IsSexuallyActive()
{
	if (GetAge() >= GetInfo()->StartHavingSexAge)
	{
		if (GetAge() < GetInfo()->StopHavingSexAge)
		{
			return true;
		}
	}
	return false;
}

bool32_t Villager::IsPromiscious()
{
	if (GRand::GameFloatRand(1.0f, FILEPATH, 845) < GetPromiscuity())
	{
		return true;
	}
	return false;
}

Villager* Villager::FindAMateAtHome()
{
	if (IsPromiscious())
	{
		FOREACH_LH_LIST_HEAD(Villager, mate, GetAbode()->villagers)
		{
			if (mate != this && mate->GetInfo()->sex != GetInfo()->sex && (mate->Flags & VILLAGER_FLAG_AT_HOME) &&
			    mate->IsAvailableForSex() && (mate->Flags & VILLAGER_FLAG_AT_HOME))
			{
				return mate;
			}
		}
	}
	return NULL;
}

bool32_t Villager::CheckForSexAtHome()
{
	if ((Flags & VILLAGER_FLAG_AT_HOME) && IsSexuallyActive())
	{
		return StartHavingSexAtHome();
	}
	return false;
}

bool32_t Villager::ShallIWaitForDinner()
{
	if (IsHungry() && !HousewifeAskForMeal())
	{
		return false;
	}
	TurnsUntilNextStateChange = (int16_t)GetInfo()->WaitAtHome;
	SetTopState(VILLAGER_STATE_WAIT_FOR_DINNER);
	return true;
}

void Villager::HomeDeleted()
{
	Abode* abode = GetAbode();
	if (target.Get() == abode)
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

bool32_t Villager::MakeHomeless()
{
	bool32_t result = MakeHomelessNoStateChange();
	SetTopState(VILLAGER_STATE_HOMELESS_START);
	return result;
}

bool32_t Villager::MakeHomelessNoStateChange()
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
	if (GGame::g_game->GameLists.VillagersWithoutTown.Find(this) != NULL)
	{
		GGame::g_game->GameLists.VillagersWithoutTown.Remove(this);
	}
	town->HomelessList.AddToFirst(this);
	return true;
}

bool32_t Villager::HomelessStart()
{
	GetTown();
	if (CheckHungry() != true && CheckNeededForSomething() != true && !CheckHomelessMoveIntoAbode())
	{
		SetupNothingToDo();
	}
	return true;
}

bool32_t Villager::CheckHomelessMoveIntoAbode()
{
	Town*  town = GetTown();
	Abode* abode;
	if (town == NULL || (abode = town->FindAbodeWithSpaceInTown(this, 0.0f)) == NULL)
	{
		return false;
	}
	town->HomelessList.Remove(this);
	abode->AddVillagerToAbode(this);
	SetTopState(VILLAGER_STATE_GO_HOME);
	return true;
}

bool32_t Villager::VillagerGossips()
{
	return true;
}

void Villager::SetupAfterTapOnAbode(MapCoords& pos, VILLAGER_STATES previous_state)
{
	action.SetState(LIVING_ACTION_INDEX_PREVIOUS, previous_state);
	SetupMoveToPos(pos, VILLAGER_STATE_AFTER_TAP_ON_ABODE);
	Flags |= VILLAGER_FLAG_AFTER_TAP_ON_ABODE;
}

bool32_t Villager::AfterTapOnAbode()
{
	PlayAnimThenSetState(action.states[LIVING_ACTION_INDEX_PREVIOUS], 1);
	return true;
}

bool32_t Villager::CheckSatisfyRelaxation()
{
	if (GetTown() != NULL && GetTown()->SetVillagerActivity(this) != 0)
	{
		return true;
	}
	return false;
}

bool32_t Villager::CheckSatisfySleep()
{
	if ((Flags & VILLAGER_FLAG_AFTER_TAP_ON_ABODE) == 0 || GetInfo()->DamageThresholdToGoHome > GetLife())
	{
		if (Flags & VILLAGER_FLAG_AT_HOME)
		{
			if (CheckWhenGoingToBed())
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

bool32_t Villager::ArtifactDance()
{
	MapCoords dancePos;
	CalculateDancePosition(dance_group->Dancer->Pos, &dancePos);
	if (Pos != dancePos)
	{
		if (Pos == dance_group->Dancer->GetArrivePos())
		{
			SetupMoveToPos(dancePos, VILLAGER_STATE_ARTIFACT_DANCE);
			return true;
		}
	}
	PerformDance(dance_group->behaviour->Pos, VILLAGER_STATE_ARTIFACT_DANCE, dance_group->Action.Kind);
	return true;
}

bool32_t Villager::WaitForArtifactDance()
{
	if (dance_group.Get() != NULL && dance_group->Dancer != NULL)
	{
		float radius = Get2DRadius() * ARTIFACT_DANCE_CLEAR_RADIUS_SCALE;
		if (dance_group->Dancer->Pos.GetDistance(Pos) > ARTIFACT_DANCE_WAIT_DISTANCE)
		{
			MapCoords pos = dance_group->Dancer->Pos;
			float     angle =
				(GRand::GameFloatRand(QUARTER_PI_F, FILEPATH, 1107)) + GUtils::Get3DAngleFromXZ(pos, Pos) - EIGHTH_PI_F;
			pos += GUtils::GetPosFromAngle(angle, (GRand::GameFloatRand(ARTIFACT_DANCE_WAIT_DISTANCE, FILEPATH, 1108)));
			if (Town::FindClearArea(pos, pos, ARTIFACT_DANCE_WAIT_DISTANCE, ARTIFACT_DANCE_CLEAR_AREA_STEP, radius,
			                        &Object::IsObject, this))
			{
				SetupMoveToWithHug(pos, VILLAGER_STATE_WAIT_FOR_ARTIFACT_DANCE);
				return true;
			}
		}
		else if (TurnsUntilNextStateChange == 0 && !Town::CheckForClearArea(Pos, radius, &Object::IsObject, this))
		{
			MapCoords pos = Pos;
			if (Town::FindClearArea(pos, pos, ARTIFACT_DANCE_WAIT_DISTANCE, ARTIFACT_DANCE_CLEAR_AREA_STEP, radius,
			                        &Object::IsObject, this))
			{
				SetupMoveToWithHug(pos, VILLAGER_STATE_WAIT_FOR_ARTIFACT_DANCE);
				return true;
			}
		}
		else if (TurnsUntilNextStateChange++ >= GetInfo()->TimeToWaitForArtifactDance)
		{
			dance_group->Dancer->StartDance();
		}
		return true;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

bool32_t Villager::EnterWaitForArtifactDance(uint8_t current, uint8_t destination)
{
	TurnsUntilNextStateChange = 0;
	return true;
}

bool32_t Villager::GoHomeAndChange()
{
	Abode*          abode = GetAbode();
	VILLAGER_STATES state;
	if (abode != NULL)
	{
		const MapCoords* pos = &abode->GetArrivePos();
		if (!AreWeThere(*pos, 0.0f))
		{
			SetupMoveToWithHug(*pos, VILLAGER_STATE_GO_HOME_AND_CHANGE);
			return true;
		}
		state = (Flags & VILLAGER_FLAG_AT_HOME) ? VILLAGER_STATE_AT_HOME : VILLAGER_STATE_ARRIVES_HOME;
	}
	else
	{
		state = VILLAGER_STATE_DECIDE_WHAT_TO_DO;
	}
	SetTopState(state);
	if (GetScale() < VILLAGER_ADULT_SCALE)
	{
		SetScaleForAge(GetAge());
	}
	return true;
}

void Villager::ChangeTribeIfRequired(TRIBE_TYPE tribe, bool32_t show_effect)
{
	const GVillagerInfo* villagerInfo = GetInfo();
	if (!villagerInfo->KeepMeshWhenChangeTown)
	{
		GVillagerInfo* newInfo = GVillagerInfo::Find(tribe, villagerInfo->VillagerNumber);
		if (GetTown() != NULL)
		{
			uint32_t newFood = newInfo->FoodReqiredForDinner;
			uint32_t oldFood = villagerInfo->FoodReqiredForDinner;
			float    diff = ((float)newFood - (float)oldFood);
			GetTown()->stats.FoodReqiredForDinner += diff;
		}
		ChangeInfo(newInfo);
		if (show_effect)
		{
			CreateSmokyStuff(1, 1.0f, VILLAGER_CHANGE_TRIBE_SMOKE_COLOUR);
		}
	}
}

bool32_t Villager::ExitGoHomeAndChange(uint8_t state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state))
	{
		Town*      town = GetTown();
		TRIBE_TYPE tribe = town != NULL ? town->tribe_type : GetInfo()->TribeType;
		ChangeTribeIfRequired(tribe, !GVillagerStateTableInfo::Infos[state].IsHomeState);
	}
	if (DiscipleType == VILLAGER_DISCIPLE_CHANGE_HOUSE)
	{
		SetVillagerDisciple(NULL, VILLAGER_DISCIPLE_NONE, 0);
	}
	return true;
}

void Villager::ChangeInfo(const GVillagerInfo* new_info)
{
	info = new_info;
	if (IsChild())
	{
		Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetInfo()->ChildMeshHigh),
		                      LH3DMesh::GetPackedMesh(GetInfo()->ChildMeshHigh),
		                      LH3DMesh::GetPackedMesh(GetInfo()->ChildMeshHigh));
	}
	else
	{
		Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetDetailMesh(0)), LH3DMesh::GetPackedMesh(GetDetailMesh(1)),
		                      LH3DMesh::GetPackedMesh(GetDetailMesh(2)));
	}
}

bool32_t Villager::SleepInTent()
{
	if (TurnsUntilNextStateChange == 0)
	{
		if (DoSleeping(1.0f))
		{
			return true;
		}
		if (GetAbode() == NULL)
		{
			if (CheckHomelessMoveIntoAbode())
			{
				return true;
			}
		}
		if (HomeDecideWhatToDo() && action.states[LIVING_ACTION_INDEX_TOP] != VILLAGER_STATE_SLEEP_IN_TENT)
		{
			return true;
		}
		TurnsUntilNextStateChange = (int16_t)GetInfo()->RestAtHomeTime;
	}
	TurnsUntilNextStateChange--;
	return true;
}

bool32_t Villager::ExitAtHome(uint8_t state)
{
	if (!GVillagerStateTableInfo::Infos[state].IsHomeState)
	{
		LeaveHome();
	}
	return true;
}

bool32_t Villager::GoHomeFromWorship()
{
	return DoGoingHome(VILLAGER_STATE_ARRIVES_HOME_FROM_WORSHIP, VILLAGER_STATE_SLEEP_IN_TENT_FROM_WORSHIP);
}
