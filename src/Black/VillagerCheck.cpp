#include "Villager.h"

#include "chlasm/GStates.h"

#include "Abode.h"
#include "Field.h"
#include "FishFarm.h"
#include "MultiMapFixed.h"
#include "Object.h"
#include "Player.h"
#include "Town.h"
#include "TownCentre.h"
#include "Tree.h"
#include "VillagerInfo.h"

// BW1W120 00756d30 BW1M100 10573250 Villager::InteractDecideWhatToDoForOtherVillager(void)
void Villager::InteractDecideWhatToDoForOtherVillager() {}

// BW1W120 00756e10 BW1M100 105731e0 Villager::InteractDecideWhatToDo(void)
void Villager::InteractDecideWhatToDo()
{
	DecideWhatToDo();
}

// BW1W120 00757180 BW1M100 10572de0 Villager::CheckMoveHouse(Object *)
bool32_t Villager::CheckMoveHouse(Object* object)
{
	Abode* abode = dynamic_cast<Abode*>(object);
	if (abode != NULL)
	{
		float fullness;
		if (IsChild())
			fullness = abode->GetPercentAbodeFullWithChildren();
		else
			fullness = abode->GetPercentAbodeFullWithAdults();
		if (fullness < 1.0f)
		{
			ForceMoveVillagerToAbode(abode);
			return true;
		}
		Town* town = abode->GetTown();
		if (town != NULL)
			return CheckMoveIntoTown(*town);
	}
	return false;
}

// BW1W120 00757210 BW1M100 10572cf0 Villager::CheckMoveIntoTown(Town &)
bool32_t Villager::CheckMoveIntoTown(Town& target_town)
{
	// TODO: ~6% (diff-alignment artifact) — tail-duplication-asymmetry (OPEN). Logic verified
	// identical to target: FindAbodeWithSpaceInTown, else IsSpaceForNewVillager, else town_centre
	// (0x9a4), else AbodeList.head (0x754), then ForceMoveVillagerToAbode + return true. The only
	// difference is block layout: the target shares ONE `xor eax,eax` return-false tail reached by
	// two `je`s (from !space and head==NULL); our build duplicates it (a no-xor fall-through return
	// on the head==NULL path). Both this nested form and an early-return-for-success form compile to
	// byte-identical output (6.1%), so it is compiler-controlled, not source-fixable here.
	Abode* abode = target_town.FindAbodeWithSpaceInTown(this, 0.0f);
	if (abode == NULL)
	{
		if (!target_town.IsSpaceForNewVillager())
			return false;
		abode = target_town.town_centre;
		if (abode == NULL)
		{
			abode = target_town.AbodeList.head;
			if (abode == NULL)
				return false;
		}
	}
	ForceMoveVillagerToAbode(abode);
	return true;
}

// BW1W120 00757260 BW1M100 10572cb0 Villager::CheckInteractWithAnimal(void)
bool32_t Villager::CheckInteractWithAnimal()
{
	return false;
}

// BW1W120 00757270 BW1M100 105729e0 Villager::CheckInteractWithWorshipSite(void)
bool32_t Villager::CheckInteractWithWorshipSite()
{
	return false;
}

// BW1W120 00757420 BW1M100 10572700 Villager::CheckInteractWithAbode(void)
bool32_t Villager::CheckInteractWithAbode()
{
	MultiMapFixed* mmf = dynamic_cast<MultiMapFixed*>((Object*)TargetThing);
	if (mmf != NULL && mmf->IsAvailable())
	{
		if ((!mmf->IsBuilt() || mmf->GetDesireToBeRepaired() > 0.0f) && mmf->GetPlayer() == GetPlayer() &&
		    (mmf->GetTown() == GetTown() || mmf->IsTownCentre()))
		{
			if (mmf->GetTown() != GetTown())
				ForceMoveVillagerToAbode((Abode*)mmf);
			if (SetupBuildingObject(mmf) == 1)
			{
				GetPlayer()->MakeCreatureEmpathiseWithPlayerTownDesire(TOWN_DESIRE_INFO_FOR_ABODES, 0.5f, Pos);
				return true;
			}
			return DecideWhatToDo();
		}
		if (CheckMoveHouse(mmf) == 1)
			return true;
		if (mmf->GetPlayer() != GetPlayer())
		{
			TradeTown = mmf->GetTown();
			SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
			return true;
		}
		if (mmf->IsWorkshop())
		{
			SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
			return true;
		}
		if (GetAbode() == mmf)
			return GoHome();
	}
	return false;
}

// BW1W120 00757590 BW1M100 105725c0 Villager::CheckInteractWithField(void)
bool32_t Villager::CheckInteractWithField()
{
	Field* field = dynamic_cast<Field*>((Object*)TargetThing);
	if (field->GetPlayer() == GetPlayer())
	{
		if (SetFarmerGotoField(field, 1) == 1)
		{
			if (GetPlayer() != NULL)
				GetPlayer()->MakeCreatureEmpathiseWithPlayerTownDesire(TOWN_DESIRE_INFO_FOR_FOOD, 0.5f, Pos);
			return true;
		}
	}
	return false;
}

// BW1W120 00757610 BW1M100 10572480 Villager::CheckInteractWithFishFarm(void)
bool32_t Villager::CheckInteractWithFishFarm()
{
	FishFarm* fishFarm = dynamic_cast<FishFarm*>((Object*)TargetThing);
	if (fishFarm->GetPlayer() == GetPlayer())
	{
		if (VillagerBecomesFisherman(fishFarm) == 1)
		{
			if (GetPlayer() != NULL)
				GetPlayer()->MakeCreatureEmpathiseWithPlayerTownDesire(TOWN_DESIRE_INFO_FOR_FOOD, 0.5f, Pos);
			return true;
		}
	}
	return false;
}

// BW1W120 00757690 BW1M100 10572350 Villager::CheckInteractWithTree(void)
bool32_t Villager::CheckInteractWithTree()
{
	Tree* tree = dynamic_cast<Tree*>((Object*)TargetThing);
	if (tree != NULL && FindTreeNearVillager(&tree))
	{
		if (GetPlayer() != NULL)
			GetPlayer()->MakeCreatureEmpathiseWithPlayerTownDesire(TOWN_DESIRE_INFO_FOR_WOOD, 0.5f, Pos);
		SetTopState(VILLAGER_STATE_FORESTER_ARRIVES_AT_FOREST);
		return ForesterArrivesAtForest();
	}
	SetTopState(VILLAGER_STATE_INTERACT_DECIDE_WHAT_TO_DO);
	return true;
}

// BW1W120 00757720 BW1M100 10572310 Villager::CheckInteractWithBall(void)
bool32_t Villager::CheckInteractWithBall()
{
	return false;
}

// BW1W120 00757730 BW1M100 105722d0 Villager::CheckInteractWithPot(void)
bool32_t Villager::CheckInteractWithPot()
{
	return true;
}

// BW1W120 00757740 BW1M100 10572290 Villager::CheckInteractWithRock(void)
bool32_t Villager::CheckInteractWithRock()
{
	return true;
}

// BW1W120 00757750 BW1M100 10572240 Villager::CheckInteractWithFootBall(void)
bool32_t Villager::CheckInteractWithFootBall()
{
	return false;
}

// BW1W120 00757760 BW1M100 105720a0 Villager::CheckInteractWithVillager(void)
bool32_t Villager::CheckInteractWithVillager()
{
	Villager* other = dynamic_cast<Villager*>((Object*)TargetThing);
	if (other != NULL && other->IsFunctional())
	{
		if (other->GetPlayer() == GetPlayer() && IsSexuallyActive() && other->IsSexuallyActive() &&
		    ((const GVillagerInfo*)info)->sex != ((const GVillagerInfo*)other->info)->sex)
		{
			MakeVillagesMeet(other, VILLAGER_STATE_START_HAVING_SEX, 0.562f);
			TargetThing = other;
			other->TargetThing = this;
			return true;
		}
		MakeVillagesMeet(other, VILLAGER_STATE_VILLAGER_GOSSIPS, 3.0f);
		return true;
	}
	return false;
}

// BW1W120 00757820 BW1M100 10572010 Villager::SetDiscipleFollower(VILLAGER_DISCIPLE)
void Villager::SetDiscipleFollower(VILLAGER_DISCIPLE disciple_type)
{
	Flags |= 0x400;
	DiscipleType = disciple_type;
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
}

// BW1W120 00757850 BW1M100 10571fc0 Villager::CheckInteractWithMagicLiving(void)
bool32_t Villager::CheckInteractWithMagicLiving()
{
	return false;
}
