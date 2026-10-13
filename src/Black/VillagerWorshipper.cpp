#include "GameTimeConstants.h"
#include "Villager.h"

#include "Citadel.h"
#include "ColourConstants.h" /* For White */
#include "Creature.h"
#include "Dance.h"
#include "DanceGroup.h"
#include "GameThingWithPos.h"
#include "MagicTeleport.h"
#include "MapCoords.h"
#include "Player.h"
#include "Reaction.h"
#include "StoragePit.h"
#include "Town.h"
#include "TownCentre.h"
#include "TownInfo.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"
#include "WorshipSite.h"
#include "WorshipSiteInfo.h"
#include "chlasm/GStates.h"

bool32_t Villager::CheckNeededForWorship()
{
	GetTown();
	if (Flags & VILLAGER_FLAG_AT_WORSHIP_SITE)
	{
		bool32_t result = StartWorshippingAtWorshipSite();
		if (result != 1)
			RemoveVillagerFromWorshipSite();
		return result;
	}
	Town* town = GetTown();
	if (town != NULL && town->worship_percentage != 0.0f)
	{
		int worshippersNeeded = 1;
		if (town->GetWorshipersNeeded(true, true, &worshippersNeeded) > 0)
			return CheckWorshipActivity(worshippersNeeded);
	}
	return 0;
}

bool32_t Villager::CheckWorshipActivity(int num_needed)
{
	bool32_t       result = false;
	MagicTeleport* teleport = NULL;
	Town*          town = GetTown();
	if (GetWorshipSite() != NULL && town != NULL && town->town_centre != NULL &&
	    town->town_centre->IsAvailable() == 1 && town->town_centre->IsBuilt() == 1)
	{
		WorshipSite* worshipSite = GetWorshipSite();
		GPlayer*     townPlayer = town->GetPlayer();
		if (worshipSite->GetPlayer() == townPlayer && (CanIGetToTheWorshipSite(teleport) || num_needed == 0) &&
		    (CheckNeededForWorshipSiteBuilding() == 1 || GotoWorshipSiteForWorship() == 1))
		{
			result = true;
			if (teleport != NULL)
			{
				SetReactionDoneWhen(REACTION_REACT_TO_TELEPORT);
				if (reaction.Get() != NULL)
					reaction->ReactingLivings.Remove(this);
				StartReacting(REACTION_REACT_TO_TELEPORT, teleport, teleport->TeleportReaction);
			}
		}
	}
	return result;
}

bool32_t Villager::CanIGetToTheWorshipSite(MagicTeleport*& teleport)
{
	bool32_t canGetThere = true;
	Town*    town = GetTown();
	if (town != NULL)
	{
		WorshipSite* worshipSite = GetWorshipSite();
		if (worshipSite != NULL &&
		    Pos.GetDistance(worshipSite->Pos) > town->GetInfo()->MaxDistanceThatVillagersWillGoToWorship)
		{
			GPlayer* player = GetPlayer();
			if (player != NULL)
			{
				MagicTeleport* found = player->FindTeleportBetween(
					Pos, worshipSite->Pos, town->GetInfo()->MaxDistanceThatVillagersWillGoToWorship);
				if (found != NULL)
					teleport = found;
				else
					canGetThere = false;
			}
		}
	}
	return canGetThere;
}

bool32_t Villager::GotoWorshipSiteForWorship()
{
	WorshipSite* worshipSite = GetWorshipSite();
	Town*        town = GetTown();
	bool32_t     result = false;
	if (worshipSite != NULL && worshipSite->IsBuilt())
	{
		worshipSite->dance->NumDancersExpected++;
		Flags |= VILLAGER_FLAG_ON_WAY_TO_WORSHIP_SITE;
		if (worshipSite->GetDistanceFromObject(this) > 0.0f)
		{
			MapCoords pos;
			worshipSite->GetGatePos(&pos);
			SetupMoveToOnFootpath(*worshipSite, pos, VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_FOR_WORSHIP);
		}
		else
		{
			SetTopState(VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_FOR_WORSHIP);
		}
		if (town != NULL)
			town->AddVillagerOnWayToWorshipSite(this);
		result = true;
	}
	if (DiscipleType == VILLAGER_DISCIPLE_WORSHIP)
	{
		SetVillagerDisciple(NULL, VILLAGER_DISCIPLE_NONE, 0);
		if (town != NULL && result == true)
			town->IncrementWorshipPercentage();
	}
	return result;
}

void Villager::SetGotoWorshipSpeed()
{
	float speed = ((const GVillagerInfo*)info)->RunningSpeed;
	if (GetWorshipSite() != NULL)
	{
		float worshipSpeedMultiplier = GetWorshipSite()->GetWorshipSpeed() + 1.0f;
		SetSpeed((int)(worshipSpeedMultiplier * speed), 1);
	}
	else
	{
		SetSpeed((int)speed, 1);
	}
}

bool32_t Villager::ArrivesAtWorshipSiteForWorship()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite == NULL)
		return DecideWhatToDo();
	MapCoords pos;
	worshipSite->GetGatePos(&pos);
	if (GUtils::GetDistanceInMetres_0074cd50(Pos, pos) < VILLAGER_WORSHIP_SITE_ARRIVE_DISTANCE)
	{
		if (worshipSite->dance->NumDancers < ((const GWorshipSiteInfo*)worshipSite->info)->MaxDancersVisible)
			StartWorshippingAtWorshipSite();
		else
			StartHidingAtWorshipSite();
		return 1;
	}
	SetupMoveToOnFootpath(*worshipSite, pos, VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_FOR_WORSHIP);
	return 1;
}

bool32_t Villager::CheckVillagerGoBackToTownFromWorship()
{
	Town* town = GetTown();
	if (town != NULL)
	{
		if (GetWorshipSite() != NULL && town->town_centre != NULL && town->town_centre->IsAvailable() == 1 &&
		    town->town_centre->IsBuilt() == 1)
		{
			WorshipSite* worshipSite = GetWorshipSite();
			GPlayer*     townPlayer = town->GetPlayer();
			if (worshipSite->GetPlayer() == townPlayer)
			{
				if (town->GetWorshipersNeeded(false, false, NULL) < 0 && GetWorshipSite()->CanIGoHome(this) &&
				    SetTopState(VILLAGER_STATE_GO_HOME_FROM_WORSHIP) == 1)
					return 1;
				return 0;
			}
		}
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		return 1;
	}
	return 0;
}

bool32_t Villager::CheckNeededForSupplyWorship()
{
	GetWorshipSite();
	return 0;
}

bool32_t Villager::GotoStoragePitForWorshipSupplies()
{
	if (GetStoragePit() != NULL && GetStoragePit()->IsFunctional())
	{
		if (GetWorshipSite() != NULL)
		{
			int      foodHeld = ResourceHeld[RESOURCE_TYPE_FOOD];
			uint32_t foodNeeded = GetTown()->GetFoodForWorshipSiteIfEnough();
			uint32_t pitFood = GetStoragePit()->GetResource(RESOURCE_TYPE_FOOD);
			if (foodNeeded != 0)
			{
				if ((uint32_t)foodHeld > foodNeeded || foodHeld == (int)((const GVillagerInfo*)info)->MaxFoodCarried)
					return GotoWorshipSiteWithSupplies();
				if (pitFood != 0)
				{
					SetupMoveToOnFootpath(*GetStoragePit(),
					                      GetStoragePit()->GetResourceNearestEdge(RESOURCE_TYPE_FOOD, this, 0),
					                      VILLAGER_STATE_ARRIVES_AT_STORAGE_PIT_FOR_WORSHIP_SUPPLIES);
					return 1;
				}
			}
		}
	}
	return 0;
}

bool32_t Villager::ArrivesAtStoragePitForWorshipSupplies()
{
	if (GetWorshipSite() != NULL)
	{
		int foodNeeded = GetTown()->GetFoodForWorshipSiteIfEnough();
		if (foodNeeded != 0)
		{
			if (ResourceHeld[RESOURCE_TYPE_FOOD] >= foodNeeded)
				return GotoWorshipSiteWithSupplies();
			if (GetFoodCapacity() < foodNeeded)
				foodNeeded = GetFoodCapacity();
			if (foodNeeded > 0)
				return ArrivesAtStoragePitForResource(RESOURCE_TYPE_FOOD, foodNeeded, VILLAGER_STATE_INVALID_STATE,
				                                      VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		}
	}
	return DecideWhatToDo();
}

bool32_t Villager::GotoWorshipSiteWithSupplies()
{
	return 0;
}

bool32_t Villager::MoveToWorshipSiteWithSupplies()
{
	return 1;
}

bool32_t Villager::ExitMoveToWorshipSiteWithSupplies(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state))
	{
		if (GetWorshipSite() != NULL)
			GetWorshipSite()->RemoveFromFoodOnTheWay(ResourceHeld[RESOURCE_TYPE_FOOD]);
	}
	return 1;
}

bool32_t Villager::ExitMoveToWorshipSite(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state) &&
	    GetStateTable((VILLAGER_STATES)state).ExitState.function !=
	        reinterpret_cast<bool (Living::*)()>(&Villager::ExitReactToTeleport))
	{
		if (GetTown() != NULL)
			GetTown()->RemoveVillagerOnWayToWorshipSite(this);
		Flags &= ~VILLAGER_FLAG_ON_WAY_TO_WORSHIP_SITE;
	}
	return 1;
}

bool32_t Villager::ExitAtWorshipSite(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state))
	{
		WorshipSite* worshipSite = GetWorshipSite();
		if (worshipSite != NULL)
			worshipSite->RemoveVillagerRequestingToGoHome(this);
		if (!IsReactiveState(state) && state != VILLAGER_STATE_GET_FOOD_AT_WORSHIP_SITE)
		{
			RemoveVillagerFromWorshipSite();
		}
		else
		{
			if (worshipSite != NULL)
				worshipSite->RemoveVillagerFromWorshipCount(this);
			if (IsDancing())
				RemoveFromDance(true);
		}
	}
	return true;
}

bool32_t Villager::ExitGetFoodAtWorship(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state) && GVillagerStateTableInfo::Infos[state].field_0xe8 == 0)
		RemoveVillagerFromWorshipSite();
	return 1;
}

bool32_t Villager::ArrivesAtWorshipSiteWithSupplies()
{
	if (GetWorshipSite() != NULL)
	{
		unsigned long amount = ResourceHeld[RESOURCE_TYPE_FOOD];
		if (amount != 0)
		{
			uint32_t result = AtStructureAddResource(GetWorshipSite(), RESOURCE_TYPE_FOOD, amount, false);
			GetWorshipSite()->RemoveFromFoodOnTheWay(amount);
			if (result == VILLAGER_STATE_GO_HOME)
				return 1;
		}
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

WorshipSite* Villager::GetWorshipSite()
{
	if (GetTown() != NULL)
		return GetTown()->GetWorshipSite();
	if (GetCitadel() != NULL)
		return GetCitadel()->FindTribeWorshipSite(GetTribe());
	return NULL;
}

bool32_t Villager::RestartWorshippingAtWorshipSite()
{
	if (StartWorshippingAtWorshipSite() != 1)
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

bool32_t Villager::RestartWorshippingCreature()
{
	if (dance_group.Get() != NULL)
	{
		PerformDance(dance_group->Dancer->Pos, VILLAGER_STATE_WORSHIPPING_CREATURE,
		             DANCE_GROUP_MOVEMENT_KIND_ROTATE_SHAPE);
		return 1;
	}
	GoHome();
	return 1;
}

bool32_t Villager::AddVillagerToWorshipSite()
{
	if (!(Flags & VILLAGER_FLAG_AT_WORSHIP_SITE))
	{
		GetTown()->AddVillagerToWorshipCount();
		Flags |= VILLAGER_FLAG_AT_WORSHIP_SITE;
		RequestingToGoHome = false;
	}
	GetWorshipSite()->AddVillagerToWorshipCount(this);
	return true;
}

bool32_t Villager::RemoveVillagerFromWorshipSite()
{
	if (GetTown() != NULL)
	{
		if (Flags & VILLAGER_FLAG_AT_WORSHIP_SITE)
			GetTown()->RemoveVillagerFromWorshipCount();
		WorshipSite* worshipSite = GetWorshipSite();
		if (worshipSite != NULL && worshipSite->IsVillagerInWorshipList(this))
			worshipSite->RemoveVillagerFromWorshipCount(this);
		if (IsDancing())
			RemoveFromDance(true);
	}
	Flags &= ~VILLAGER_FLAG_AT_WORSHIP_SITE;
	RequestingToGoHome = false;
	return true;
}

bool32_t Villager::StartWorshippingAtWorshipSite()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite != NULL && worshipSite->IsAvailable() && worshipSite->dance.Get() != NULL)
	{
		if (worshipSite->dance->FindDanceGroup(this) == 1)
		{
			MapCoords pos;
			CalculateDancePosition(worshipSite->dance->Pos, &pos);
			if (SetupMoveToPos(pos, VILLAGER_STATE_WORSHIPPING_AT_WORSHIP_SITE))
			{
				AddVillagerToWorshipSite();
				return 1;
			}
		}
	}
	return 0;
}

bool32_t Villager::StartHidingAtWorshipSite()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite == NULL)
		return DecideWhatToDo();
	MapCoords pos;
	pos = worshipSite->GetDoorPos();
	if (SetupMoveToOnFootpath(*worshipSite, pos, VILLAGER_STATE_HIDING_AT_WORSHIP_SITE))
	{
		AddVillagerToWorshipSite();
		return 1;
	}
	return 0;
}

bool32_t Villager::HidingAtWorshipSite()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite != NULL)
	{
		MapCoords pos;
		pos = worshipSite->GetDoorPos();
		if (AreWeThere(pos, 1.0f))
			return ProcessInWorship();
		SetupMoveToWithHug(pos, VILLAGER_STATE_HIDING_AT_WORSHIP_SITE);
		return 1;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

bool32_t Villager::WorshippingAtWorshipSite()
{
	if (Flags & VILLAGER_FLAG_ON_WAY_TO_WORSHIP_SITE)
	{
		Flags &= ~VILLAGER_FLAG_ON_WAY_TO_WORSHIP_SITE;
		dance_group->Dancer->NumDancersExpected--;
	}
	int result = ProcessInWorship();
	if (result == 1)
	{
		DANCE_GROUP_MOVEMENT_KIND kind = dance_group->Action.Kind;
		result = PerformDance(dance_group->Dancer->Pos, VILLAGER_STATE_WORSHIPPING_AT_WORSHIP_SITE, kind);
	}
	return result;
}

bool32_t Villager::StartWorshippingCreature(Creature* creature)
{
	MapCoords pos;
	if (creature->dance->FindDanceGroup(this) && dance_group.Get() != NULL)
	{
		if (GetStateTable((VILLAGER_STATES)GetFinalState()).ExitState.function ==
		    reinterpret_cast<bool (Living::*)()>(&Villager::ExitDance))
			action.states[LIVING_ACTION_INDEX_TOP] = VILLAGER_STATE_CONTROLLED_BY_CREATURE;
		SetTopState(VILLAGER_STATE_CONTROLLED_BY_CREATURE);
		if (dance_group.Get() != NULL)
		{
			CalculateDancePosition(creature->Pos, &pos);
			SetSpeed(((const GVillagerInfo*)info)->WalkingSpeed, 1);
			return true;
		}
	}
	return false;
}

bool32_t Villager::WorshippingCreature()
{
	if (dance_group.Get() != NULL)
	{
		Dance* dance = dance_group->Dancer;
		if (dance->State == DANCE_STATE_DANCING)
		{
			PerformDance(dance->Pos, VILLAGER_STATE_WORSHIPPING_CREATURE, dance_group->Action.Kind);
			return 1;
		}
		GoHome();
	}
	return 1;
}

int Villager::ReduceVillagerLifeByChant()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite != NULL)
	{
		float damage = worshipSite->ChantDamage;
		damage *= ((const GVillagerInfo*)info)->ChantLifeRate;
		ReduceLife(damage, NULL);
		if (GetLife() <= 0.0f)
		{
			GPlayer* player;
			if (GetTown() != NULL)
				player = GetTown()->GetPlayer();
			else
				player = NULL;
			VillagerDead(DEATH_REASON_CHANT, player, damage, 1);
			return VILLAGER_STATE_RESULT_DIED;
		}
	}
	return 1;
}

int Villager::ProcessInWorship()
{
	if (CheckVillagerGoBackToTownFromWorship() == 1)
		return VILLAGER_STATE_RESULT_STATE_CHANGED;
	if (ReduceVillagerLifeByChant() == VILLAGER_STATE_RESULT_DIED)
		return VILLAGER_STATE_RESULT_STATE_CHANGED;
	return CheckAllowedToRestAtWorshipSite(true) ? VILLAGER_STATE_RESULT_STATE_CHANGED : 1;
}

void Villager::CheckRequestGoHome()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite != NULL)
	{
		const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
		if (GetLife() < villagerInfo->DamageThresholdToGoHome)
		{
			if (!RequestingToGoHome)
				worshipSite->AddVillagerRequestingToGoHome(this);
		}
		else if (RequestingToGoHome == true)
		{
			worshipSite->RemoveVillagerRequestingToGoHome(this);
		}
	}
}

bool32_t Villager::CheckNeededForWorshipSiteBuilding()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite == NULL)
	{
		Citadel* citadel = GetCitadel();
		if (citadel == NULL)
			return 0;
		worshipSite = citadel->FindOrCreateWorshipSite(GetTown());
		if (worshipSite == NULL)
			return 0;
	}
	BuildingSite* buildingSite = GetTown()->GetBuildingSiteInList(worshipSite);
	if (buildingSite != NULL)
	{
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		if (SetupBuildingObject(buildingSite) == 1)
			return 1;
	}
	return 0;
}

bool32_t Villager::CheckAllowedToRestAtWorshipSite(int move_to_food)
{
	WorshipSite* worshipSite = GetWorshipSite();
	float        currentFood = food;
	if (currentFood < ((const GVillagerInfo*)info)->HungryForFood)
	{
		int foodRequired = GetAmountOfFoodRequiredForMeal();
		int foodAvailable = 0;
		if (worshipSite != NULL)
			foodAvailable = worshipSite->GetFood();
		if (foodAvailable >= foodRequired)
		{
			if (move_to_food != 0)
				SetupMoveToWithHug(worshipSite->GetResourceNearestEdge(RESOURCE_TYPE_FOOD, this, 1),
				                   VILLAGER_STATE_GET_FOOD_AT_WORSHIP_SITE);
			return 1;
		}
	}
	return 0;
}

bool32_t Villager::GetFoodAtWorshipSite()
{
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite != NULL)
	{
		if (AreWeThere(worshipSite->GetResourceNearestEdge(RESOURCE_TYPE_FOOD, this, 1), 0.0f))
		{
			int amount = GetAmountOfFoodRequiredForMeal();
			if (amount != 0)
				GetResourceFrom(worshipSite, RESOURCE_TYPE_FOOD, amount);
			EatFoodHeld();
			PlayAnimThenSetState(VILLAGER_STATE_RESTART_WORSHIPPING_AT_WORSHIP_SITE, 1);
			return 1;
		}
		SetupMoveToWithHug(worshipSite->GetResourceNearestEdge(RESOURCE_TYPE_FOOD, this, 1),
		                   VILLAGER_STATE_GET_FOOD_AT_WORSHIP_SITE);
		return 1;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

float Villager::GetFoodDesireAtWorshipSite()
{
	return 1.0f;
}

bool32_t Villager::GotoAltarForRest()
{
	if (GetWorshipSite() != NULL)
	{
		MapCoords pos;
		GetWorshipSite()->GetRestPos(&pos);
		SetupMoveToOnFootpath(*GetWorshipSite(), pos, VILLAGER_STATE_ARRIVES_AT_ALTAR_FOR_REST);
		return 1;
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

bool32_t Villager::ArrivesAtAltarForRest()
{
	if (CheckAllowedToRestAtWorshipSite(false) != 1)
		return AtAltarFinishedRest();
	PlayAnimThenSetState(VILLAGER_STATE_AT_ALTAR_REST, 1);
	return 1;
}

bool32_t Villager::AtAltarRest()
{
	if (CheckAllowedToRestAtWorshipSite(false) != 1)
		return AtAltarFinishedRest();
	PlayAnimThenSetState(VILLAGER_STATE_AT_ALTAR_REST, 1);
	return 1;
}

bool32_t Villager::AtAltarFinishedRest()
{
	bool32_t result = StartWorshippingAtWorshipSite();
	if (result == 1)
		return result;
	return DecideWhatToDo();
}

bool32_t Villager::CheckSatisfySuppyWorship()
{
	return GotoStoragePitForWorshipSupplies() == 1;
}
