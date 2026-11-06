#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include "AnimalInfo.h"
#include "AnimalStateTableInfo.h"
#include "Animal.h"

#include <limits.h> /* For LONG_MAX */
#include <stdio.h>  /* For sprintf */

#include <Lionhead/LH3DLib/development/LH3DAnim.h> /* For struct LH3DAnim */

#include "ColourConstants.h" /* For White */
#include "Alignment.h"
#include "AnimalBat.h"
#include "AnimalCow.h"
#include "AnimalCrow.h"
#include "AnimalDove.h"
#include "AnimalHorse.h"
#include "AnimalLeopard.h"
#include "AnimalLion.h"
#include "AnimalPig.h"
#include "AnimalPigeon.h"
#include "AnimalSeagull.h"
#include "AnimalSheep.h"
#include "AnimalSwallow.h"
#include "AnimalTiger.h"
#include "AnimalTortoise.h"
#include "AnimalWolf.h"
#include "Debug.h"
#include "Flock.h"
#include "Game.h"
#include "Game3DObject.h" /* For Game3DObject */
#include "GameInfo.h"
#include "GameOSFile.h"
#include "GameStats.h"
#include "Global.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "ObjectMovementConstants.h"
#include "Pot.h"
#include "PhysicsObject.h"
#include "Player.h"
#include "PuzzleGame.h"
#include "Rand.h"
#include "Script.h"
#include "Setup.h"
#include "StoragePit.h"
#include "Town.h"
#include "Utils.h"
#include "WorshipTotem.h"

GAnimalInfo GAnimalInfo::Infos[ANIMAL_INFO_LAST];

GAnimalStateTableInfo GAnimalStateTableInfo::Infos[ANIMAL_STATE_LAST_STATE];

inline uint16_t Animal::GetTurnAngle() const
{
	return GetInfo()->TurnAngle;
}

Animal::Animal(const MapCoords& coords, const GAnimalInfo* info, unsigned long age) : Living(coords, info)
{
	SetToZero();
	SetSpeed(GetDefaultSpeed());
	SetState(LIVING_ACTION_INDEX_TOP, ANIMAL_STATE_DECIDE_WHAT_TO_DO);
	SetAge(age);
}

void Animal::SetToZero()
{
	HuntStartTurn = 0;
	EnvironmentSuitability = 0;
	BreedingUrge = 0;
	Tiredness = 0;
	Thirst = 0;
	Hunger = 0;
	PhysObPos.Init(0, 0);
	FoodPos.Init();
	SleepPos.Init(0, 0);
	EnvironmentPos.Init(0, 0);
	FoodObject = NULL;
	AngleZoomer.SetPosition(0.0f);
	town = NULL;
}

void Animal::SetAge(uint32_t age)
{
	InitialiseScale(age);
	SetScaleForAge(age);
	Living::SetAge(age);
}

void Animal::CheckGrownUp()
{
	if (GetAge() < GetInfo()->TeenAge && GGame::g_game->data.GameTurn % (GGameInfo::Info.TimeScale / 4) == 0)
	{
		SetScaleForAge(GetAge());
	}
}

void Animal::SetScaleForAge(uint32_t age)
{
	const GAnimalInfo* animalInfo = GetInfo();
	if (age < animalInfo->TeenAge)
	{
		float scaleDiff = animalInfo->ageToScale.values[age + 2] - GetScale();
		SetScale(GRand::GameFloatRand(scaleDiff * 0.75, FILEPATH, 115) + GetScale());
	}
	else
	{
		SetScale(max(1.0f + (0.05f - (GRand::GameFloatRand(0.1f, FILEPATH, 119))), GetScale()));
	}
}

void Animal::InitialiseScale(uint32_t age)
{
	if (age < GetInfo()->TeenAge)
	{
		SetScale(GetInfo()->ageToScale.values[age]);
	}
	else
	{
		SetScale(ANIMAL_ADULT_INITIAL_SCALE);
	}
}

void Animal::ToBeDeleted(bool32_t delete_now)
{
	DeleteDependancys();
	Living::ToBeDeleted(delete_now);
}

Animal::~Animal()
{
	DeleteDependancys();
}

void Animal::DeleteDependancys()
{
	if (town != NULL)
	{
		town->AnimalList.Remove(this);
		town = NULL;
	}
	if (flock.Get() != NULL)
	{
		flock->RemoveLivingFromFlock(this, true);
		SetFlock(NULL);
	}
}

void Animal::SetTownIfNearby(float radius)
{
	SetTown(Town::GetNearestTownToPos(Pos, TRIBE_TYPE_NONE, ABODE_TYPE_ANY, radius));
}

void Animal::SetTown(Town* new_town)
{
	town = new_town;
	if (new_town != NULL)
	{
		new_town->AnimalList.Add(this);
	}
}

bool32_t Animal::StartWander()
{
	SetMoveState(MOVE_TO_STATES_WANDER);
	InitStepsXZ(GameAngle);
	SetSpeed(GetDefaultSpeed());
	SetTopState(ANIMAL_STATE_WANDER);
	SetNewWander(GetFlockPos(), GetInfo()->WanderMinDistance, GetDomainRadius());
	return true;
}

bool32_t Animal::MoveToPosAndLookAround()
{
	return true;
}

bool32_t Animal::Landed()
{
	if (flock.Get() != NULL)
	{
		CalculeLairPos();
	}
	PlayAnimThenSetState(ANIMAL_STATE_INTERACT_DECIDE_WHAT_TO_DO, 1);
	return true;
}

bool32_t Animal::InteractDecideWhatToDo()
{
	if (flock.Get() != NULL)
	{
		LookForFlocksInSpiral(Pos, GetInfo(), GetInfo()->FlockSearchRadius * ANIMAL_FLOCK_SEARCH_RADIUS_MULTIPLIER,
		                      true);
	}
	return StartWander();
}

uint32_t Animal::ProcessNeeds()
{
	const GAnimalInfo* animalInfo = GetInfo();
	bool32_t           needs = false;
	if (animalInfo->BreedingThreshold != ANIMAL_NEED_THRESHOLD_DISABLED && flock.Get() != NULL &&
	    flock->Members.GetSize() >= ANIMAL_MIN_FLOCK_SIZE_TO_BREED && flock->Members.GetSize() < flock->MaxMembers)
	{
		if (BreedingUrge < animalInfo->BreedingThreshold)
		{
			if (GetAge() >= animalInfo->TeenAge)
			{
				IncreaseBreed();
			}
		}
		else
		{
			needs = true;
		}
	}
	if (animalInfo->HungerThreshold != ANIMAL_NEED_THRESHOLD_DISABLED)
	{
		if (Hunger < animalInfo->HungerThreshold)
		{
			Hunger++;
		}
		else
		{
			needs = true;
		}
	}
	if (animalInfo->TirednessThreshold != ANIMAL_NEED_THRESHOLD_DISABLED)
	{
		if (Tiredness < animalInfo->TirednessThreshold)
		{
			Tiredness++;
		}
		else
		{
			needs = true;
		}
	}
	if (IAmFlockLeader() && flock->Shepherd == NULL)
	{
		flock->TurnsSinceLeaderReturned++;
	}
	return needs;
}

void Animal::Validate()
{
	if (target.Get() != NULL && !target->IsAvailable())
	{
		target = NULL;
	}
	if (flock.Get() != NULL && flock->SavedThing != NULL && !flock->SavedThing->IsAvailable())
	{
		flock->SavedThing = NULL;
	}
}

uint32_t Animal::ProcessState()
{
	action.TurnsSinceStateChange++;
	Validate();
	if (GAnimalStateTableInfo::GetInfo()[action.states[LIVING_ACTION_INDEX_TOP]].PerformsLivingChecks)
	{
		ProcessNeeds();
		CheckGrownUp();
	}
	if (FoodObject != NULL &&
	    (!FoodObject->IsAvailable() || (FoodObject->Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE)))
	{
		FoodObject = NULL;
		TurnsUntilNextStateChange = 0;
		SetTopState(ANIMAL_STATE_DECIDE_WHAT_TO_DO);
		return true;
	}
	Validate();
	int (Animal::*state)() = StateTable[action.states[LIVING_ACTION_INDEX_TOP]].State;
	return (this->*state)();
}

ANIM_LIST Animal::GetAnimId()
{
	uint32_t (Animal::*animation)() = StateTable[action.states[LIVING_ACTION_INDEX_TOP]].Animation;
	return (ANIM_LIST)(this->*animation)();
}

void Animal::SetSpeed(int new_speed)
{
	MobileWallHug::SetSpeed(new_speed);
	if (Game3dObject != NULL)
	{
		SetAnim(0);
	}
}

bool32_t Animal::Wander()
{
	if (ReactToAnimalNeeds() == ANIMAL_BEHAVIOUR_RESULT_HANDLED)
	{
		return true;
	}

	if (!PosWithinDomain(Pos, LIVING_DOMAIN_FULL_RADIUS_SCALE))
	{
		SetTopState(ANIMAL_STATE_DECIDE_WHAT_TO_DO);
		return true;
	}

	if (MoveToWander(GetFlockPos(), 0, GetFlockDistance()) == OBJECT_MOVE_RESULT_CHANGED_CELL)
	{
		const GAnimalInfo* animalInfo = GetInfo();
		LookForFlocksInSpiral(Pos, animalInfo, GetDomainRadius() * ANIMAL_FLOCK_SEARCH_RADIUS_MULTIPLIER,
		                      animalInfo->CanFlock);
	}
	return true;
}

bool32_t Animal::SeekFood()
{
	ReactToAnimalFoodNeeds();
	if (AreWeThere(0.0f))
	{
		SetTopState(ANIMAL_STATE_DECIDE_WHAT_TO_DO);
	}
	return true;
}

bool32_t Animal::SeekSleep()
{
	if (SleepPos.IsSet())
	{
		MapCoords coords;
		LHPoint   point;
		GLandscape::ConvertJustMapXZToLandscapePoint(SleepPos, point);
		GLandscape::ConvertLandscapePointToMapCoord(point, coords);
		SetupMoveToPos(GUtils::GetRandomPos(coords, flock->Members.GetSize() * 2), ANIMAL_STATE_SLEEPS);
	}
	else
	{
		SetTopState(ANIMAL_STATE_START_WANDER);
	}
	return true;
}

bool32_t Animal::SeekDrink()
{
	SetTopState(ANIMAL_STATE_START_WANDER);
	return true;
}

bool32_t Animal::SeekEnvironment()
{
	if (EnvironmentPos.IsSet())
	{
		SetupMoveToPos(MapCoords(&EnvironmentPos), ANIMAL_STATE_STANDARD_ACTION);
		EnvironmentPos.Init(0, 0);
	}
	else
	{
		SetTopState(ANIMAL_STATE_START_WANDER);
	}
	return true;
}

bool32_t Animal::SeekBreed()
{
	SetTopState(ANIMAL_STATE_START_WANDER);
	return true;
}

void Animal::IncreaseBreed()
{
	BreedingUrge++;
}

bool32_t Animal::GivesBirth()
{
	Animal* child = CreateFromType(Pos, GetInfo(), GetTown(), flock.Get(), 1);
	if (child != NULL)
	{
		child->DecideWhatToDo();
	}
	SetTopState(ANIMAL_STATE_START_WANDER);
	return true;
}

bool32_t Animal::StartToEat()
{
	TurnsUntilNextStateChange = GRand::GameRand(10, FILEPATH, 558) + 15;
	SetSpeed(GetDefaultSpeed());
	PlayAnimThenSetState(ANIMAL_STATE_EAT, 1);
	return true;
}

bool32_t Animal::Eat()
{
	if (--TurnsUntilNextStateChange == 0)
	{
		PlayAnimThenSetState(ANIMAL_STATE_FINISH_EATING, 1);
		Hunger = 0;
		FoodObject = NULL;
		return true;
	}
	PlayAnimThenSetState(ANIMAL_STATE_EAT, 1);
	return true;
}

bool32_t Animal::FinishEating()
{
	PlayAnimThenSetState(ANIMAL_STATE_DECIDE_WHAT_TO_DO, 1);
	return true;
}

bool32_t Animal::Sleeps()
{
	Tiredness -= ANIMAL_SLEEP_TIREDNESS_RECOVERY;
	if (Tiredness <= 0)
	{
		SetTopState(ANIMAL_STATE_START_WANDER);
		Tiredness = 0;
	}
	return true;
}

bool32_t Animal::StandardAction()
{
	if (ReactToAnimalNeeds() != ANIMAL_BEHAVIOUR_RESULT_HANDLED &&
	    GGame::g_game->data.GameTurn % ANIMAL_NEEDS_SEARCH_INTERVAL == 0)
	{
		CheckForNeedsInSpiral(Pos, GetInfo()->NeedsSearchDistance);
	}
	return true;
}

ANIMAL_BEHAVIOUR_RESULT Animal::ReactToAnimalNeeds()
{
	const GAnimalInfo* animalInfo = GetInfo();
	if (animalInfo->HungerThreshold != ANIMAL_NEED_THRESHOLD_DISABLED && Hunger >= animalInfo->HungerThreshold &&
	    ReactToAnimalFoodNeeds() == ANIMAL_BEHAVIOUR_RESULT_HANDLED)
	{
		return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
	}
	if (animalInfo->TirednessThreshold != ANIMAL_NEED_THRESHOLD_DISABLED &&
	    Tiredness >= animalInfo->TirednessThreshold && SleepPos.IsSet())
	{
		SetTopState(ANIMAL_STATE_SEEK_SLEEP);
		return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
	}
	if (animalInfo->BreedingThreshold != ANIMAL_NEED_THRESHOLD_DISABLED &&
	    BreedingUrge >= animalInfo->BreedingThreshold)
	{
		return ANIMAL_BEHAVIOUR_RESULT_UNHANDLED;
	}
	return ANIMAL_BEHAVIOUR_RESULT_UNHANDLED;
}

uint32_t Animal::CheckNeeds()
{
	const GAnimalInfo* animalInfo = GetInfo();
	if (animalInfo->BreedingThreshold != ANIMAL_NEED_THRESHOLD_DISABLED &&
	    BreedingUrge >= animalInfo->BreedingThreshold)
	{
		if (flock.Get() != NULL && flock->MaxMembers > flock->Members.GetSize())
		{
			return ANIMAL_NEEDS_BREED;
		}
		BreedingUrge = ANIMAL_BREEDING_URGE_NONE;
	}
	if (animalInfo->HungerThreshold != ANIMAL_NEED_THRESHOLD_DISABLED && Hunger >= animalInfo->HungerThreshold)
	{
		return ANIMAL_NEEDS_FOOD;
	}
	if (animalInfo->TirednessThreshold != ANIMAL_NEED_THRESHOLD_DISABLED && Tiredness >= animalInfo->TirednessThreshold)
	{
		return ANIMAL_NEEDS_SLEEP;
	}
	return ANIMAL_NEEDS_NONE;
}

ANIMAL_BEHAVIOUR_RESULT Animal::ReactToAnimalFoodNeeds()
{
	if (FoodPos.IsSet())
	{
		SetSpeed(GetInfo()->ApproachSpeed);
		SetupMoveToPos(MapCoords(&FoodPos), ANIMAL_STATE_START_TO_EAT);
		FoodPos.Init();
		return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
	}
	CheckForNeedsInSpiral(Pos, GetInfo()->FoodSearchRadius);
	return ANIMAL_BEHAVIOUR_RESULT_UNHANDLED;
}

void Animal::SetTowardsAngle(uint16_t angle)
{
	uint16_t currentAngle = GetGameAngle();
	long     turn = GetTurnAngle();
	long     difference = GUtils::GetAngleDifference(currentAngle, angle);
	if (difference == 0)
	{
		SetGameAngle(angle);
		AngleZoomer.SetDestination(0.0f, GetTimeToBank());
		return;
	}
	long sign = GUtils::GetAngleSign(currentAngle, angle);
	if (difference > turn)
	{
		MapCoords targetPos;
		if (target.Get() != NULL)
		{
			targetPos = target->Pos;
		}
		else
		{
			targetPos = goal;
		}
		float distance = GUtils::GetDistanceInMetres(Pos, targetPos);
		float turnAngle3D = GUtils::ConvertGameAngleTo3D(GetTurnAngle());
		float radius = 2.0f * GetSpeedInMetres() / turnAngle3D;
		if (distance < radius)
		{
			turn = max(GetTurnAngle(), (uint32_t)GUtils::GetAngleDifference(currentAngle, angle)) -
			       GetTurnAngle() * distance / radius;
		}
	}
	turn = min(turn, difference);
	if (sign < 0)
	{
		turn = -turn;
		float time = GetTimeToBank();
		float bank = GetBankAngle(speed, turn);
		AngleZoomer.SetDestination(-bank, time);
	}
	else if (sign > 0)
	{
		float time = GetTimeToBank();
		float bank = GetBankAngle(speed, turn);
		AngleZoomer.SetDestination(bank, time);
	}
	SetGameAngle((currentAngle + turn) & GAME_ANGLE_MASK);
}

int Animal::MoveTo3D()
{
	int   result;
	float verticalSpeed;
	float destAltitude = GetDestPos()->altitude;
	if (destAltitude < ANIMAL_MIN_FLYING_ALTITUDE)
	{
		float altitude = Pos.altitude;
		verticalSpeed = GetInfo()->VerticalSpeed;
		if (altitude > destAltitude + verticalSpeed)
		{
			Pos.altitude -= verticalSpeed;
		}
		else if (altitude < destAltitude - verticalSpeed)
		{
			Pos.altitude += verticalSpeed;
		}
		result = MoveTo();
		if (MoveState == MOVE_TO_STATES_FINAL_STEP)
		{
			result = MOVE_TO_STATES_REACHED_DESTINATION;
		}
	}
	else
	{
		LHPoint start;
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, start);
		LHPoint dest;
		GLandscape::ConvertMapCoordToLandscapePoint(*GetDestPos(), dest);
		result = MoveTo();
		if (MoveState == MOVE_TO_STATES_FINAL_STEP)
		{
			result = MOVE_TO_STATES_REACHED_DESTINATION;
		}
		LHPoint point;
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, point);
		point.y = start.y;
		verticalSpeed = GetInfo()->VerticalSpeed;
		if (point.y > dest.y + verticalSpeed)
		{
			point.y -= verticalSpeed;
		}
		else if (point.y < dest.y - verticalSpeed)
		{
			point.y += verticalSpeed;
		}
		MapCoords coords;
		GLandscape::ConvertLHPointToMapCoord(point, coords);
		if (coords.altitude < ANIMAL_MIN_FLYING_ALTITUDE)
		{
			coords.altitude = ANIMAL_MIN_FLYING_ALTITUDE;
		}
		MoveMapObject(coords);
	}
	return result;
}

bool32_t Animal::InFieldOfView(const MapCoords& pos, long field_of_view)
{
	long angle = GUtils::GetAngleFromXZ(Pos, pos);
	if (field_of_view == 0)
	{
		field_of_view = GetInfo()->FieldOfView;
	}
	uint32_t difference = GUtils::GetAngleDifference(GetGameAngle(), angle);
	return difference <= field_of_view / 2;
}

void Animal::SetupMoveToTarget(Object* target)
{
	SetupMobileMoveToObject(target);
	Living* living = dynamic_cast<Living*>(target);
	if (living != NULL && living->StatusDowned)
	{
		FinishPouncing(living);
		SetSpeed(GetInfo()->ApproachSpeed);
		SetAnim(0);
	}
	else
	{
		SetState(LIVING_ACTION_INDEX_TOP, ANIMAL_STATE_HUNTING_MOVE_TO_POS);
	}
}

uint32_t Animal::IsHuntingTargetValid(Object* target)
{
	return target != NULL;
}

bool32_t Animal::HuntingMoveToPos()
{
	if (target.Get() != NULL && target->IsReachable() &&
	    ((IsInScript() && (GetDestObject()->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)) ||
	     !(target->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)))
	{
		int result = MoveToObjectPos();
		if (result != OBJECT_MOVE_RESULT_TARGET_UNAVAILABLE)
		{
			const GAnimalInfo* info = GetInfo();
			if (GGame::g_game->data.GameTurn - HuntStartTurn < info->MaxHuntTurns && IsHuntingTargetValid(target.Get()))
			{
				float pounceDistance = ANIMAL_DEFAULT_POUNCE_DISTANCE;
				float distance = GUtils::GetDistanceInMetres(&Pos, &target->Pos);
				if (distance < GetInfo()->StalkDistance)
				{
					pounceDistance = LH3DAnim::GetPackedAnim(PounceAnimation())->Distance * GetScale() *
					                 ANIMAL_POUNCE_ANIM_DISTANCE_FRACTION;
				}
				if (distance <= pounceDistance)
				{
					if (InFieldOfView(target->Pos, ANIMAL_POUNCE_FIELD_OF_VIEW))
					{
						Object* prey = target.Get();
						SetTopState(ANIMAL_STATE_TARGET_POUNCE);
						target = prey;
						return result;
					}
					HuntingMoveToPosAbaondon();
				}
				if (distance < GetInfo()->StalkDistance)
				{
					SetSpeed(GetInfo()->WalkingSpeed);
					SetAnim(0);
				}
				else if (distance < GetInfo()->ChaseDistance)
				{
					SetSpeed(GetInfo()->FastSpeedThreshold);
					SetAnim(0);
				}
				else if (distance < GetInfo()->MaxHuntDistance)
				{
					if (GGame::g_game->data.GameTurn % ANIMAL_HUNT_SPRINT_CYCLE_TURNS < ANIMAL_HUNT_SPRINT_TURNS)
					{
						SetSpeed(GetInfo()->FastSpeedThreshold);
					}
					else
					{
						SetSpeed(GetInfo()->ApproachSpeed);
					}
					SetAnim(0);
				}
				if (distance < GetInfo()->MaxHuntDistance)
				{
					return result;
				}
			}
		}
	}
	HuntingMoveToPosAbaondon();
	return false;
}

uint32_t Animal::HuntingMoveToPosAbaondon()
{
	target = NULL;
	FoodPos.Init();
	SetSpeed(GetDefaultSpeed());
	SetTopState(ANIMAL_STATE_START_WANDER);
	return true;
}

bool32_t Animal::TargetPounce()
{
	float   travelled = ((speed * ANIMAL_SPEED_TO_METRES_PER_SECOND) / MAP_COORDS_UNITS_PER_CELL) *
	                    (GGameInfo::Info.MillisecondsPerGameTurn / ANIMAL_MILLISECONDS_PER_SECOND) *
	                    action.TurnsSinceStateChange;
	float   pounceDistance = Game3dObject->GetCurrentAnim()->Distance * GetScale();
	Living* prey = (Living*)target.Get();
	if (prey != NULL && !prey->IsAvailable())
	{
		target = NULL;
		prey = NULL;
		FoodPos.Init();
	}
	SimpleMoveTo();
	if (prey != NULL)
	{
		if (Pos.IsCloseToEqual(prey->Pos, ANIMAL_POUNCE_CATCH_DISTANCE))
		{
			prey->SetDowned();
		}
	}
	else
	{
		StartWander();
		return false;
	}
	if (pounceDistance <= travelled)
	{
		if (prey->StatusDowned)
		{
			return FinishPouncing(prey);
		}
		SetupMoveToTarget(prey);
	}
	return true;
}

uint32_t Animal::FinishPouncing(Living* prey)
{
	Hunger = 0;
	target = NULL;
	FoodPos.Init();
	SetSpeed(GetDefaultSpeed());
	LHPoint destination;
	GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(prey->Pos, destination);
	LHPoint pos;
	GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(Pos, pos);
	destination -= pos;
	LHPoint offset = destination;
	offset.SetSize(ANIMAL_EAT_PREY_DISTANCE * GetScale());
	destination -= offset;
	destination += pos;
	SetupMoveToPos(MapCoords(destination), ANIMAL_STATE_START_TO_EAT);
	if (prey->IsAvailable())
	{
		FoodObject = prey;
	}
	return true;
}

void Animal::StartFadeOut(float time) {}

uint32_t Animal::ProcessFadeOut()
{
	return false;
}

HOLD_TYPE Animal::GetHoldType()
{
	return HOLD_TYPE_VILLAGER;
}

float Animal::GetHoldLoweringMultiplier()
{
	return ANIMAL_HOLD_LOWERING_MULTIPLIER;
}

bool32_t Animal::TargetFoodInRange()
{
	if (target.Get() == NULL)
	{
		return false;
	}
	if (target->Pos.Altitude() <= ANIMAL_MAX_FOOD_ALTITUDE && target->IsAvailable() && target->IsReachable() &&
	    ((IsInScript() && (GetDestObject()->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)) ||
	     !(target->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)))
	{
		const GAnimalInfo* info = GetInfo();
		if (GUtils::GetDistanceInMetres(&Pos, &target->Pos) < info->MaxHuntDistance)
		{
			return true;
		}
	}
	target = NULL;
	return false;
}

int Animal::CheckForNeedsInSpiral(const MapCoords& pos, uint16_t max_distance)
{
	MapCoords coords = pos;
	int       occupied = 0;
	int       count = max_distance;
	long      spiralX = 1;
	long      spiralZ = 1;
	while (count != 0)
	{
		if (coords.InBounds() == true)
		{
			if (coords.ToMap()->FirstObjectMobile != NULL || coords.ToMap()->FirstObjectFixed != NULL)
			{
				occupied++;
			}
			CheckForNeedsAt(coords);
		}
		count--;
		coords += *GUtils::Spiral(spiralX, spiralZ);
	}
	return occupied;
}

bool32_t Animal::FindATargetInSpiral(const MapCoords& pos, uint16_t max_distance)
{
	MapCoords coords = pos;
	int       count = max_distance;
	long      spiralX = 1;
	long      spiralZ = 1;
	while (count != 0)
	{
		if (coords.InBounds() == true)
		{
			for (MapCellIterator it = coords.GetFirstIterator(); it.object != NULL;
			     it.object = it.object->GetMapChild(*it.cell), it.MoveToMobileObsIfNeededAndPoss())
			{
				if (RecordBestFood(it.object))
				{
					target = it.object;
					return true;
				}
			}
		}
		count--;
		coords += *GUtils::Spiral(spiralX, spiralZ);
	}
	return false;
}

bool32_t Animal::CheckForNeedsAt(const MapCoords& pos)
{
	const GAnimalInfo* animalInfo = GetInfo();
	bool32_t           onMap =
		pos.MapX() < (long)GGame::g_game->map.CellExtentZx[1] && pos.MapZ() < (long)GGame::g_game->map.CellExtentZx[0];
	if (!onMap)
	{
		return false;
	}
	if (animalInfo->FoodTypeEaten)
	{
		for (MapCellIterator it = pos.ToMap()->GetFirstIterator(); it.object != NULL;
		     it.object = it.object->GetMapChild(*it.cell), it.MoveToMobileObsIfNeededAndPoss())
		{
			if (RecordBestFood(it.object))
			{
				break;
			}
		}
	}
	if ((GetInfo()->FoodTypeEaten & FOOD_TYPE_GRASS) && FoodPos.IsZero())
	{
		FindGrazingPosition(pos);
	}
	LookForFlocksInSpiral(pos, animalInfo, ANIMAL_NEEDS_FLOCK_SEARCH_DISTANCE, animalInfo->CanFlock);
	if (animalInfo->SeeksEnvironment)
	{
		EnvironmentSuitability = CheckSuitableEnvironment(Pos);
		if (EnvironmentSuitability == ANIMAL_ENVIRONMENT_UNSUITABLE &&
		    CheckSuitableEnvironment(pos) == ANIMAL_ENVIRONMENT_FULLY_SUITABLE)
		{
			EnvironmentPos.Init(pos);
		}
	}
	return true;
}

bool32_t Animal::RecordBestFood(Object* food)
{
	bool32_t result = false;
	uint32_t foodDistance = 1;
	uint32_t newDistance = 0;
	if (food != this && !(food->Flags & GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) && food->IsReachable() &&
	    IsHuntingTargetValid(food) && food->Pos.Altitude() <= ANIMAL_MAX_FOOD_ALTITUDE &&
	    ((IsInScript() && (food->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)) ||
	     !(food->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)) &&
	    (food->info->type == OBJECT_TYPE_VILLAGER ||
	     (food->info->type == OBJECT_TYPE_ANIMAL && ((Animal*)food)->GetInfo()->AnimalType != GetInfo()->AnimalType)) &&
	    flock.Get() != NULL && flock->FeedingDisabled == false &&
	    food->GetFoodValue(GetInfo()->FoodTypeEaten) != 0.0f && IsPosValidForTurnAngle(food->Pos))
	{
		Living* living = dynamic_cast<Living*>(food);
		if (living != NULL && !living->IsSkeleton() && (!IsChild() || living->StatusDowned))
		{
			if (FoodPos.IsSet())
			{
				foodDistance = GUtils::VeryFastDistance(Pos.MapX(), Pos.MapZ(), FoodPos.x, FoodPos.z);
				newDistance = GUtils::VeryFastDistance(Pos, food->Pos);
			}
			if (newDistance * ANIMAL_BETTER_FOOD_DISTANCE_SCALE < foodDistance)
			{
				FoodPos.Init(food->Pos);
				result = true;
			}
		}
	}
	return result;
}

bool32_t Animal::FindGrazingPosition(const MapCoords& pos)
{
	bool32_t result = false;
	if (InFieldOfView(pos, 0) && (Pos.MapX() != pos.MapX() || Pos.MapZ() != pos.MapZ()) &&
	    IsOnlyFlockMemberAtPos(pos, GetInfo()->AnimalType) && pos.Collide(GetCollideMask()) == COLLIDE_TYPE_NONE &&
	    !pos.IsFixed())
	{
		uint16_t cellX = pos.MapX();
		uint16_t cellZ = pos.MapZ();
		FoodPos.CellX = cellX;
		FoodPos.CellZ = cellZ;
		FoodPos.FractionX = MAP_COORDS_FRACTION_CENTRE;
		FoodPos.FractionZ = MAP_COORDS_FRACTION_CENTRE;
		result = true;
	}
	return result;
}

Town* Object::GetTown()
{
	return NULL;
}

bool32_t Animal::IsOnlyFlockMemberAtPos(const MapCoords& pos, ANIMAL_INFO type)
{
	if (flock.Get() != NULL)
	{
		for (flock->GetFlockMembers()->Current = flock->GetFlockMembers()->First;
		     flock->GetFlockMembers()->GetCurrent() != NULL; flock->GetFlockMembers()->MoveForward())
		{
			Animal* member = (Animal*)flock->Members.GetCurrent();
			if (member == this)
			{
				continue;
			}
			if (member->FoodPos.x == pos.MapX() && member->FoodPos.z == pos.MapZ())
			{
				return false;
			}
			if (member->Pos.MapX() == pos.MapX() && member->Pos.MapZ() == pos.MapZ())
			{
				return false;
			}
			MapCoords* dest = member->GetDestPos();
			if (dest->MapX() == pos.MapX() && dest->MapZ() == pos.MapZ())
			{
				return false;
			}
		}
	}
	return true;
}

void Animal::DebugText(bool32_t drawing)
{
	if (GGlobal::Global.debug.ShowVillagerDebugText && drawing == false)
	{
		char text[224];
		sprintf(text, "number %f flock pos %d hunger:%d speed:%.2f sleep %d/%d sleeppos %d,%d foodpos %d,%d breed %d",
		        this, GetPositionInFlock(), GetHunger(), speed / SpeedUnitsPerMetrePerSecond, Tiredness,
		        GetInfo()->TirednessThreshold, SleepPos.x, SleepPos.z, FoodPos.x, FoodPos.z, BreedingUrge);
		GGlobal::Global.debug.SetMessage(text);
	}
}

bool32_t Animal::ValidForPlaceInHand(GInterfaceStatus* status)
{
	return GetInfo()->CanBePlacedInHand != false;
}

bool32_t Animal::InterfaceSetInMagicHand(GInterfaceStatus* status)
{
	StorePreviousState();
	if (flock.Get() != NULL)
	{
		if (flock->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
		{
			unsigned long reference = GScript::FindScriptGameThing(this);
			if (reference != 0)
			{
				GScript::DecrementScriptReference(reference);
			}
			flock->SeperateLivingIntoNewFlock(this, false);
		}
		else
		{
			flock->SeperateLivingIntoNewFlock(this, true);
		}
	}
	SetTopState(ANIMAL_STATE_IN_HAND);
	return true;
}

bool Animal::IsInterestedInFoodObject(Object* object)
{
	return object->IsAvailable() && object->IsNotInPhysics() && !object->IsInMagicHand() &&
	       GetInfo()->HungerThreshold != ANIMAL_NEED_THRESHOLD_DISABLED && Hunger >= GetInfo()->HungerThreshold &&
	       (GetInfo()->FoodTypeEaten & object->info->FoodType) != 0;
}

Animal* Animal::CreateFromType(const MapCoords& coords, const GAnimalInfo* info, Town* town, unsigned long age)
{
	if (age == 0)
	{
		age = GRand::GameRand(ANIMAL_RANDOM_AGE_RANGE, FILEPATH, 1431) + ANIMAL_RANDOM_AGE_MIN;
	}
	Animal* animal = CreateNewAnimal(coords, info, age);
	if (animal != NULL)
	{
		Flock* flock = new (FILEPATH, 1439) Flock(animal);
		flock->DomainRadius = info->FlockSearchRadius;
		flock->FlockDistance = info->FlockDistance;
		if (animal->IsOkToBeShepherd())
		{
			animal->SetTown(town);
		}
		else
		{
			animal->SetTown(NULL);
			flock->town = NULL;
		}
		animal->CalculeLairPos();
		animal->SleepPos.Init(animal->flock->Pos);
		if (flock->MaxMembers < flock->Members.GetSize())
		{
			flock->MaxMembers = flock->Members.GetSize();
		}
	}
	return animal;
}

Animal* Animal::CreateFromType(const MapCoords& coords, const GAnimalInfo* info, Town* town, Flock* flock,
                               unsigned long age)
{
	if (flock == NULL)
	{
		return CreateFromType(coords, info, town, age);
	}
	if (age == 0)
	{
		age = GRand::GameRand(ANIMAL_FLOCK_MEMBER_RANDOM_AGE_RANGE, FILEPATH, 1480) + ANIMAL_RANDOM_AGE_MIN;
	}
	Animal* animal = CreateNewAnimal(coords, info, age);
	if (flock != NULL)
	{
		flock->AddLivingToFlock(animal);
		if (!animal->IsOkToBeShepherd() && flock->GetTown() != NULL)
		{
			flock->GetTown()->FlockList.Remove(flock, false);
			flock->town = NULL;
		}
		if (flock->MaxMembers < flock->Members.GetSize())
		{
			flock->MaxMembers = flock->Members.GetSize();
		}
		animal->SleepPos.Init(flock->Pos);
	}
	if (animal->IsOkToBeShepherd())
	{
		animal->SetTown(town);
	}
	else
	{
		animal->SetTown(NULL);
	}
	return animal;
}

Animal* Animal::CreateNewAnimal(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Animal* animal = NULL;
	switch (info->AnimalType)
	{
	case ANIMAL_INFO_PUZZLE_VILLAGER:
		animal = PieceVillager::Create(coords, info, age);
		break;
	case ANIMAL_INFO_PUZZLE_LION:
		animal = PieceLion::Create(coords, info, age);
		break;
	case ANIMAL_INFO_PUZZLE_SHEEP:
		animal = PieceSheep::Create(coords, info, age);
		break;
	case ANIMAL_INFO_PUZZLE_WOLF:
		animal = PieceWolf::Create(coords, info, age);
		break;
	case ANIMAL_INFO_LION:
		animal = Lion::Create(coords, info, age);
		break;
	case ANIMAL_INFO_TIGER:
		animal = Tiger::Create(coords, info, age);
		break;
	case ANIMAL_INFO_WOLF:
		animal = Wolf::Create(coords, info, age);
		break;
	case ANIMAL_INFO_SPELL_WOLF:
		animal = SpellWolf::Create(coords, info);
		break;
	case ANIMAL_INFO_LEOPARD:
		animal = Leopard::Create(coords, info, age);
		break;
	case ANIMAL_INFO_SHEEP:
		animal = Sheep::Create(coords, info, age);
		break;
	case ANIMAL_INFO_TORTOISE:
		animal = Tortoise::Create(coords, info, age);
		break;
	case ANIMAL_INFO_HORSE:
		animal = Horse::Create(coords, info, age);
		break;
	case ANIMAL_INFO_COW:
		animal = Cow::Create(coords, info, age);
		break;
	case ANIMAL_INFO_PIG:
		animal = Pig::Create(coords, info, age);
		break;
	case ANIMAL_INFO_CROW:
		animal = Crow::Create(coords, info, age);
		break;
	case ANIMAL_INFO_DOVE:
		animal = Dove::Create(coords, info, age);
		break;
	case ANIMAL_INFO_SPELL_DOVE:
		animal = SpellDove::Create(coords, info, age);
		break;
	case ANIMAL_INFO_SWALLOW:
		animal = Swallow::Create(coords, info, age);
		break;
	case ANIMAL_INFO_PIGEON:
		animal = Pigeon::Create(coords, info, age);
		break;
	case ANIMAL_INFO_SEAGULL:
		animal = Seagull::Create(coords, info, age);
		break;
	case ANIMAL_INFO_BAT:
		animal = Bat::Create(coords, info, age);
		break;
	case ANIMAL_INFO_SPELL_BAT:
		animal = SpellBat::Create(coords, info, age);
		break;
	}
	return animal;
}

void Animal::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	AngleZoomer.SetPosition(0.0f);
	Living::CallVirtualFunctionsForCreation(coords);
}

bool32_t Animal::ArrivesAtFoodReaction()
{
	Pot* pot = dynamic_cast<Pot*>(ReactionObject.Get());
	if (pot != NULL && pot->GetResourceType() == RESOURCE_TYPE_FOOD)
	{
		Hunger = 0;
		pot->RemoveResource(RESOURCE_TYPE_FOOD, min(pot->GetResource(RESOURCE_TYPE_FOOD), ANIMAL_POT_FOOD_PER_MEAL),
		                    NULL, NULL);
	}
	StopReactingAndSetState();
	return true;
}

uint32_t Animal::SaveObject(LHOSFile& file, const MapCoords* origin)
{
	char text[100];
	char coordText[100];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords relative = (origin != NULL) ? (Pos - *origin) : Pos;
		int       townId = flock.Get() != NULL ? (flock->GetTown() != NULL ? flock->GetTown()->ID : -1) : -1;
		int       flockId = flock.Get() != NULL ? flock->ID : -1;
		sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_NEW_ANIMAL),
		        relative.ConvertToText(coordText), GetInfo()->AnimalType, flockId, townId, GetAge());
		GSetup::WriteToFile(this, file, text, strlen(text));
	}
	return saved;
}

uint8_t Animal::GetFinalState() const
{
	uint8_t state = action.states[LIVING_ACTION_INDEX_TOP];
	if (!GAnimalStateTableInfo::Infos[state].isFinalState)
	{
		state = action.states[LIVING_ACTION_INDEX_FINAL];
	}
	return state;
}

void Animal::ResetStateAfterReacting()
{
	SetTopState(GAnimalStateTableInfo::Infos[action.states[LIVING_ACTION_INDEX_PREVIOUS]].ReturnState);
}

void Animal::SetStateSpeed() {}

uint32_t Animal::CallExitStateFunction(uint8_t state)
{
	uint8_t finalState = GetFinalState();
	if (StateTable[finalState].ExitState)
	{
		return (this->*StateTable[finalState].ExitState)(state);
	}
	return true;
}

uint32_t Animal::CallEntryStateFunction(uint8_t state)
{
	bool32_t result = true;
	if (StateTable[state].EntryState)
	{
		result = (this->*StateTable[state].EntryState)(GetFinalState(), state);
	}
	if (result == true)
	{
		SetState(LIVING_ACTION_INDEX_TOP, state);
		return true;
	}
	return false;
}

uint32_t Animal::CallEntryStateFunction(uint8_t current, uint8_t destination)
{
	bool32_t result = true;
	if (StateTable[destination].EntryState)
	{
		result = (this->*StateTable[destination].EntryState)(GetFinalState(), current);
	}
	if (result == true)
	{
		if (current != action.states[LIVING_ACTION_INDEX_TOP])
		{
			SetState(LIVING_ACTION_INDEX_TOP, current);
		}
		SetState(LIVING_ACTION_INDEX_FINAL, destination);
		return true;
	}
	return result;
}

uint32_t Animal::AddToFlock(Flocking* flocking)
{
	return true;
}

void Animal::SetNewWander(const MapCoords* centre, long min_dist, long max_dist)
{
	JustXZ movement;
	movement.x = 0;
	movement.z = 0;
	if (centre != NULL)
	{
		long dist = (long)GUtils::GetDistanceInMetres(centre, &Pos);
		long angle;
		if (dist > max_dist)
		{
			angle = GUtils::GetAngleFromXZ(Pos, *centre);
		}
		else if (dist < min_dist)
		{
			angle = GUtils::GetAngleFromXZ(*centre, Pos);
		}
		else
		{
			angle = 0;
		}
		if (angle != 0)
		{
			long x = GetXByAngle(angle);
			long z = GetZByAngle(angle);
			x = Fraction(x, speed * 9 / 10, speed);
			z = Fraction(z, speed * 9 / 10, speed);
			JustXZ towards;
			towards.x = x;
			towards.z = z;
			Accumulate(&movement, &towards);
		}
	}
	if (CalculateFlockingMovement(&movement) != true)
	{
		uint16_t angle = GameAngle;
		uint32_t range = (uint16_t)GetInfo()->TurnAngle;
		angle = (angle + GRand::GameRand((uint16_t)range, FILEPATH, 1783) - range / 2) & GAME_ANGLE_MASK;
		JustXZ wander;
		wander.x = GetXByAngle(angle);
		wander.z = GetZByAngle(angle);
		Accumulate(&movement, &wander);
	}
	step.Init(movement.x, movement.z, 0.0f);
	SetAngleOnMoveBy();
}

long Animal::Fraction(long value, long numerator, long denominator)
{
	return (long)((float)value * numerator / denominator);
}

bool32_t Animal::Accumulate(JustXZ* movement, JustXZ* step)
{
	long remaining = GetAccumulateRemaining(movement);
	if (remaining > 0)
	{
		long  largest = max(abs(step->x), abs(step->z));
		long  length = min(largest, remaining);
		float x = (float)step->x * length / speed;
		float z = (float)step->z * length / speed;
		movement->x += (long)x;
		movement->z += (long)z;
		return length == remaining;
	}
	return true;
}

long Animal::GetAccumulateRemaining(JustXZ* movement)
{
	return speed - max(abs(movement->x), abs(movement->z));
}

bool32_t Animal::LookForFlocksInSpiral(const MapCoords& coords, const GAnimalInfo* info, long max_dist,
                                       bool32_t can_flock)
{
	MapCoords pos;
	if (!can_flock)
	{
		return false;
	}
	if (flock.Get() != NULL && (flock->GetTown() != NULL || flock->Shepherd != NULL))
	{
		return false;
	}
	pos = coords;
	float radius = max_dist / MetresPerMapCell;
	long  count = (long)max(radius * radius, 1.0f);
	long  spiralX = 1;
	long  spiralZ = 1;
	while (count != 0)
	{
		if (pos.InBounds() == true && LookForFlocksAtPos(pos, info) == true)
		{
			return true;
		}
		count--;
		pos += *GUtils::Spiral(spiralX, spiralZ);
	}
	return false;
}

bool32_t Animal::LookForFlocksAtPos(const MapCoords& coords, const GAnimalInfo* info)
{
	for (Object* object = coords.ToMap()->FindTypeOnMap(OBJECT_TYPE_ANIMAL, NULL); object != NULL;
	     object = coords.ToMap()->FindTypeOnMap(OBJECT_TYPE_ANIMAL, object))
	{
		if (!object->IsAnimal())
		{
			continue;
		}
		Animal* animal = (Animal*)object;
		if (animal->flock.Get() == NULL || animal->IsDead() || this == animal || animal->flock.Get() == flock.Get() ||
		    animal->GetInfo()->AnimalType != GetInfo()->AnimalType ||
		    animal->flock->GetPlayer() != flock->GetPlayer() || animal->flock->Shepherd != NULL ||
		    ((animal->flock->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) &&
		     (flock->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)) ||
		    flock->Members.GetSize() + animal->flock->Members.GetSize() > info->MaxFlockSize)
		{
			continue;
		}
		Flock::MergeSmallerFlockIntoLarger(flock.Get(), animal->flock.Get());
		return true;
	}
	return false;
}

bool32_t Animal::LookForGrazePos(const MapCoords& coords, long max_dist, MapCoords* pos)
{
	MapCoords searchPos = coords;
	float     cells = max_dist / MetresPerMapCell;
	int       count = (int)(cells * cells);
	long      spiralX = 1;
	long      spiralZ = 1;
	while (count != 0)
	{
		if (PosWithinDomain(searchPos, LIVING_DOMAIN_FULL_RADIUS_SCALE) && searchPos.InBounds() == true &&
		    IsGrazingPos(searchPos))
		{
			*pos = searchPos;
			return true;
		}
		count--;
		searchPos += *GUtils::Spiral(spiralX, spiralZ);
	}
	return false;
}

bool32_t Animal::IsGrazingPos(const MapCoords& pos)
{
	bool32_t result = false;
	if (InFieldOfView(pos, 0) && (Pos.MapX() != pos.MapX() || Pos.MapZ() != pos.MapZ()) &&
	    IsOnlyFlockMemberAtPos(pos, GetInfo()->AnimalType) && pos.Collide(GetCollideMask()) == COLLIDE_TYPE_NONE &&
	    !pos.IsFixed())
	{
		result = true;
	}
	return result;
}

bool32_t Animal::MoveInFlock()
{
	return StartWander();
}

void Animal::ReleaseFromScript()
{
	if ((Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE) ||
	    (Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS))
	{
		return;
	}
	if (GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP)
	{
		return;
	}
	if (flock.Get() == NULL)
	{
		Flock* newFlock = new (FILEPATH, 1973) Flock(this);
		newFlock->DomainRadius = GetInfo()->FlockSearchRadius;
		newFlock->FlockDistance = GetInfo()->FlockDistance;
	}
	if (GetLife() <= 0.0f)
	{
		bool32_t dying = StatusDying == true;
		SetDying();
		if (dying)
		{
			SetTopState(ANIMAL_STATE_DEAD);
		}
	}
	else
	{
		InteractDecideWhatToDo();
	}
}

ANIMAL_BEHAVIOUR_RESULT Animal::KeepLeaderWithinDomain()
{
	MapCoords pos;
	if (IAmFlockLeader() && (!PosWithinDomain(*flock->GetFlockPos(), LIVING_DOMAIN_FULL_RADIUS_SCALE) ||
	                         flock->TurnsSinceLeaderReturned >= GetInfo()->LeaderReturnTurns))
	{
		pos = CalcRandomPos(*GetDomainCentrePos(), (float)GetInfo()->WanderMinDistance, (float)GetDomainRadius());
		SetupMoveToPos(pos, ANIMAL_STATE_DECIDE_WHAT_TO_DO);
		flock->TurnsSinceLeaderReturned = 0;
		return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
	}
	return ANIMAL_BEHAVIOUR_RESULT_NO_ACTION;
}

ANIMAL_BEHAVIOUR_RESULT Animal::KeepFlockMemberWithinFlockArea()
{
	MapCoords randomPos;

	if (PosWithinDomain(Pos, LIVING_DOMAIN_FULL_RADIUS_SCALE))
	{
		float distToFlock = GUtils::GetDistanceInMetres(flock->GetFlockPos(), &Pos);
		if ((float)GetFlockDistance() >= distToFlock)
		{
			return ANIMAL_BEHAVIOUR_RESULT_IN_POSITION;
		}
	}

	randomPos = CalcRandomPos(*flock->GetFlockPos(), LIVING_RANDOM_POS_MIN_DISTANCE, (float)GetFlockDistance());
	bool32_t flockPosInDomain = PosWithinDomain(*flock->GetFlockPos(), LIVING_DOMAIN_FULL_RADIUS_SCALE);
	if (PosWithinDomain(randomPos, LIVING_DOMAIN_FULL_RADIUS_SCALE) || !flockPosInDomain)
	{
		SetupMoveToPos(randomPos, ANIMAL_STATE_DECIDE_WHAT_TO_DO);
	}
	return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
}

int Animal::DecideWhatToDo()
{
	if (CheckNeeds() == ANIMAL_NEEDS_BREED)
	{
		BreedingUrge = ANIMAL_BREEDING_URGE_NONE;
		SetTopState(ANIMAL_STATE_GIVES_BIRTH);
		return true;
	}
	SetTopState(ANIMAL_STATE_START_WANDER);
	return true;
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

bool32_t Animal::LookForFoodPos(MapCoords* pos)
{
	return false;
}

uint32_t Animal::LookForSleepPos(MapCoords* pos)
{
	return false;
}

bool32_t Animal::CalculateFlockingMovement(JustXZ* movement)
{
	long    nearestDistance = LONG_MAX;
	Living* nearest = NULL;
	JustXZ  offset;
	offset.x = 0;
	offset.z = 0;
	JustXZ total;
	total.x = 0;
	total.z = 0;
	long count = 0;
	if (GetAccumulateRemaining(movement) <= 0)
	{
		return true;
	}
	if (flock.Get() != NULL)
	{
		Flock*                            currentFlock = flock.Get();
		SLL<Living, &Living::FlockOrder>* members = currentFlock->GetFlockMembers();
		for (members->Current = members->First; members->GetCurrent() != NULL; members->MoveForward())
		{
			Living* member = currentFlock->Members.GetCurrent();
			if (member != this)
			{
				long distance = GUtils::XZWholeMapDistance(Pos, member->Pos);
				if (distance < nearestDistance)
				{
					nearestDistance = distance;
					nearest = member;
				}
				count++;
				total.x += member->Pos.WholeX();
				total.z += member->Pos.WholeZ();
			}
		}
		if (nearest != NULL)
		{
			total.x /= count;
			total.z /= count;
			long angle = GUtils::GetAngleFromXZ(Pos.WholeX(), Pos.WholeZ(), total.x, total.z);
			long x = GetXByAngle(angle);
			long z = GetZByAngle(angle);
			x = Fraction(x, speed / 5, speed);
			z = Fraction(z, speed / 5, speed);
			offset.x = x;
			offset.z = z;
			if (Accumulate(movement, &offset))
			{
				return true;
			}
			long     dx = nearest->Pos.WholeX() - Pos.WholeX();
			long     dz = nearest->Pos.WholeZ() - Pos.WholeZ();
			uint32_t distanceX = abs(dx);
			uint32_t distanceZ = abs(dz);
			if (distanceX > GetFlockDistance())
			{
				offset.x += (dx >= 0 ? 1 : -1) * (speed / 5 * 8 / 5);
			}
			else if (distanceX < GetFlockDistance())
			{
				offset.x -= (dx >= 0 ? 1 : -1) * (speed / 5 * 2);
			}
			if (distanceZ > GetFlockDistance())
			{
				offset.z += (dz >= 0 ? 1 : -1) * (speed / 5 * 8 / 5);
			}
			else if (distanceZ < GetFlockDistance())
			{
				offset.z -= (dz >= 0 ? 1 : -1) * (speed / 5 * 2);
			}
			if (Accumulate(movement, &offset))
			{
				return true;
			}
			x = nearest->step.x;
			z = nearest->step.z;
			x = Fraction(x, speed * 3 / 5, speed);
			z = Fraction(z, speed * 3 / 5, speed);
			offset.x = x;
			offset.z = z;
			if (Accumulate(movement, &offset))
			{
				return true;
			}
		}
	}
	return false;
}

uint16_t Animal::GetPositionInFlock()
{
	return 0;
}

bool32_t Animal::IsStateExitFunctionSameAs(unsigned long state) const
{
	return StateTable[GetFinalState()].ExitState == StateTable[state].ExitState;
}

bool32_t Animal::ExitReaction(uint8_t state)
{
	circle_hug_info.Reset(this);
	if (!IsStateExitFunctionSameAs(state))
	{
		StopReacting();
	}
	return true;
}

uint32_t Animal::DestroyedByEffect(GPlayer* player, float damage)
{
	SetDying();
	return true;
}

void Animal::DebugShowTime(uint32_t turns, uint8_t state, uint8_t final_state)
{
	GetFinalState();
}

float Animal::GetTimeToBank()
{
	return 0.0f;
}

float Animal::GetBankAngle(float speed, float angle)
{
	return 0.0f;
}

void Animal::DebugShowText() {}

SCRIPT_OBJECT_TYPE Animal::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_ANIMAL;
}

bool32_t Animal::IsPosValidForTurnAngle(const MapCoords& pos)
{
	float radius = GUtils::ConvertGameAngleTo3D(GetTurnAngle());
	radius = 2.0f * speed / radius;
	radius = GUtils::ConvertWholeDistanceToMeters(radius);
	MapCoords centre =
		Pos + GUtils::GetPosFromAngle((uint16_t)((GetGameAngle() + GAME_ANGLE_QUARTER_TURN) & GAME_ANGLE_MASK), radius);
	if (GUtils::GetDistanceInMetres(pos, centre) > radius)
	{
		centre = Pos + GUtils::GetPosFromAngle((uint16_t)((GetGameAngle() - GAME_ANGLE_QUARTER_TURN) & GAME_ANGLE_MASK),
		                                       radius);
		if (GUtils::GetDistanceInMetres(pos, centre) > radius)
		{
			return true;
		}
	}
	return false;
}

uint32_t Animal::ValidToApplyThisToObject(GInterfaceStatus* status, Object* object)
{
	if (dynamic_cast<StoragePit*>(object) != NULL)
	{
		return true;
	}
	return Living::ValidToApplyThisToObject(status, object);
}

uint32_t Animal::ApplyThisToObject(GInterfaceStatus* status, Object* object, GestureSystemPacketData* packet)
{
	if (object != NULL && object->IsResourceStore(RESOURCE_TYPE_FOOD))
	{
		if (!(Flags & GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) && object->DeleteObjectAndTakeResource(this, status))
		{
			return GAME_RETURNS_RESOURCE_TAKEN;
		}
		return GAME_RETURNS_NONE;
	}
	if (dynamic_cast<WorshipTotem*>(object) != NULL)
	{
		GPlayer* player = status->GetPlayer();
		if (player != NULL)
		{
			player->ConsiderMakingCreatureMimicPlayer(status, DETECTED_PLAYER_ACTION_SACRIFICE, this, MAGIC_TYPE_NONE);
			player->game_stats->TotalNumSacrifices++;
			player->alignment->Update(player, this, DEATH_REASON_SACRIFICE);
		}
		DeathReason = DEATH_REASON_SACRIFICE;
	}
	return Living::ApplyThisToObject(status, object, packet);
}

void Animal::CalculeLairPos()
{
	flock->SetDomainCentrePos(Pos);
}

bool32_t Animal::IsFinalState(uint8_t state)
{
	return GAnimalStateTableInfo::Infos[state].isFinalState;
}

bool32_t Animal::HideInLair()
{
	return true;
}

bool32_t Animal::Save(GameOSFile& file)
{
	if (Living::Save(file))
	{
		file.WritePtr(town);
		file.WriteIt(Hunger);
		file.WriteIt(Tiredness);
		file.WriteIt(BreedingUrge);
		file.WriteIt(EnvironmentSuitability);
		file.WriteIt(FoodPos);
		file.WritePtr(FoodObject);
		file.WriteIt(PhysObPos);
		file.WriteIt(SleepPos);
		file.WriteIt(EnvironmentPos);
		file.WriteIt(DeathReason);
		file.WriteIt(AngleZoomer);
		SaveStateFunction(file);
		return true;
	}
	return false;
}

bool32_t Animal::Load(GameOSFile& file)
{
	if (Living::Load(file))
	{
		file.ReadPtr((GameThing**)&town);
		file.ReadIt(Hunger);
		file.ReadIt(Tiredness);
		file.ReadIt(BreedingUrge);
		file.ReadIt(EnvironmentSuitability);
		file.ReadIt(FoodPos);
		file.ReadPtr((GameThing**)&FoodObject);
		file.ReadIt(PhysObPos);
		file.ReadIt(SleepPos);
		file.ReadIt(EnvironmentPos);
		file.ReadIt(DeathReason);
		file.ReadIt(AngleZoomer);
		LoadStateFunction(file);
		return true;
	}
	return false;
}

void Animal::ResolveLoad()
{
	Living::ResolveLoad();
}

bool32_t Animal::CallSaveStateFunction(GameOSFile& file, STATE_TYPE type)
{
	bool32_t (Animal::*saveState)(GameOSFile&) = StateTable[action.states[type]].SaveState;
	if (saveState != NULL)
	{
		saveState = StateTable[action.states[type]].SaveState;
		return (this->*saveState)(file);
	}
	return false;
}

bool32_t Animal::CallLoadStateFunction(GameOSFile& file, STATE_TYPE type)
{
	bool32_t (Animal::*loadState)(GameOSFile&) = StateTable[action.states[type]].LoadState;
	if (loadState != NULL)
	{
		loadState = StateTable[action.states[type]].LoadState;
		return (this->*loadState)(file);
	}
	return false;
}

void Animal::SaveStateFunction(GameOSFile& file)
{
	CallSaveStateFunction(file, STATE_TYPE_TOP);
}

void Animal::LoadStateFunction(GameOSFile& file)
{
	CallLoadStateFunction(file, STATE_TYPE_TOP);
}

bool32_t Animal::EnterWandering(uint8_t current, uint8_t destination)
{
	return true;
}

bool32_t Animal::EnterSleep(uint8_t current, uint8_t destination)
{
	return true;
}

bool32_t Animal::EnterHideInLair(uint8_t current, uint8_t destination)
{
	return true;
}

bool32_t Animal::EnterSeekFood(uint8_t current, uint8_t destination)
{
	return true;
}

bool32_t Animal::MoveToPos()
{
	Living::MoveToPos();
	return true;
}

bool32_t Animal::IsChild()
{
	return GetAge() < GetInfo()->TeenAge;
}

PieceVillager* PieceVillager::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	PieceVillager* villager = new (FILEPATH, 2696) PieceVillager(coords, info, age);
	if (villager != NULL)
	{
		villager->CallVirtualFunctionsForCreation(coords);
		villager->Game3dObject->SetHumanShadowed(true);
	}
	return villager;
}

bool32_t PieceVillager::DecideWhatToDo()
{
	return true;
}

void Animal::ReactToPhysicsImpact(PhysicsObject* physics_object, bool hit_ground)
{
	Object* hitter = physics_object->GetGameObjectWhoHitMe();
	if (hitter == NULL || hitter->IsAvailable() != true || IsAvailable() != true ||
	    !hitter->IsResourceStore(GetResourceType()) ||
	    !hitter->DeleteObjectAndTakeResource(this, physics_object->status))
	{
		Living::ReactToPhysicsImpact(physics_object, hit_ground);
	}
}

int Animal::GetDefaultResource()
{
	return (int)GetFoodValue(FOOD_TYPE_RESOURCE);
}
