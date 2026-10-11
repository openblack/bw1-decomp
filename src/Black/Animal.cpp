#include "GameTimeConstants.h"
#include "Animal.h"

#include "ColourConstants.h" /* For White */
#include "Flock.h"
#include "PuzzleGame.h"
#include "Utils.h"

void Animal::SetStateSpeed() {}

uint32_t Animal::KeepFlockMemberWithinFlockArea()
{
	MapCoords& flockPos = *flock->GetFlockPos();

	if (PosWithinDomain(coords, 1.0f) != 0)
	{
		float distToFlock = GUtils::GetDistanceInMetres(flockPos, coords);
		if (distToFlock <= (float)GetFlockDistance())
		{
			return 1;
		}
	}

	float     flockDistance = (float)GetFlockDistance();
	MapCoords randomPos = CalcRandomPos(flockPos, 0.0f, flockDistance);
	int       flockPosInDomain = PosWithinDomain(flockPos, 1.0f);
	int       randomPosInDomain = PosWithinDomain(randomPos, 1.0f);
	if (randomPosInDomain != 0 || flockPosInDomain == 0)
	{
		SetupMoveToPos(randomPos, ANIMAL_STATE_DECIDE_WHAT_TO_DO);
	}
	return 0x23;
}

RESOURCE_TYPE Animal::GetResourceType()
{
	return RESOURCE_TYPE_FOOD;
}

HOLD_TYPE Animal::GetHoldType()
{
	return HOLD_TYPE_VILLAGER;
}

SCRIPT_OBJECT_TYPE Animal::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_ANIMAL;
}

bool32_t Animal::IsAnimal()
{
	return true;
}

bool32_t Living::CanBeFrighteningToCreature(Creature* creature)
{
	return false;
}

uint32_t PieceVillager::GetSaveType()
{
	return GAME_THING_TYPE_PIECE_VILLAGER;
}

bool32_t PieceVillager::DecideWhatToDo()
{
	return true;
}

uint32_t PieceVillager::ProcessNeeds()
{
	return 0;
}

uint32_t PieceVillager::CheckNeeds()
{
	return 0;
}

bool32_t PieceVillager::CanBeFrighteningToCreature(Creature* creature)
{
	return false;
}

Town* Object::GetTown()
{
	return NULL;
}

uint32_t Animal::IsOkToBeShepherd()
{
	return 0;
}

uint32_t Animal::IAmABird()
{
	return 0;
}

uint32_t Animal::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_ANIMAL;
}

uint32_t Animal::CheckSuitableEnvironment(const MapCoords& param_1)
{
	return 100;
}

uint32_t Animal::GetTastiness()
{
	return OBJECT_TASTINESS_LIVING;
}

bool32_t Animal::MoveToPosAndLookAround()
{
	return true;
}

uint32_t Animal::ProcessFadeOut()
{
	return 0;
}

bool32_t Animal::FollowFlock()
{
	return false;
}

bool32_t Animal::SpecialMoveToPos()
{
	return false;
}

bool32_t Animal::LandOnObject()
{
	return false;
}

bool32_t Animal::LandAtPos()
{
	return false;
}

void Animal::DebugShowText() {}

bool32_t Animal::HideInLair()
{
	return true;
}

bool32_t Animal::EnterWandering(uint8_t param_1, uint8_t param_2)
{
	return true;
}

bool32_t Animal::EnterSleep(uint8_t param_1, uint8_t param_2)
{
	return true;
}

bool32_t Animal::EnterHideInLair(uint8_t param_1, uint8_t param_2)
{
	return true;
}

bool32_t Animal::EnterSeekFood(uint8_t param_1, uint8_t param_2)
{
	return true;
}

uint32_t Animal::DecideAnimation()
{
	return StandAnimation();
}

DEATH_REASON Animal::GetDeathReason()
{
	return (DEATH_REASON)DeathReason;
}
