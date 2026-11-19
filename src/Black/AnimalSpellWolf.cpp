#include "MapCoordsMeters.h" /* For MetresPerMapCell, ahead of the unit's own constants in .rdata */
#include "GameTimeConstants.h"
#include <math.h> /* For fabs */

#include "AnimalWolf.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Player.h"
#include "AnimalInfo.h"   /* For class GAnimalInfo */
#include "Game3DObject.h" /* For Game3DObject */
#include "GameInfo.h"     /* For GGameInfo */
#include "Utils.h"        /* For GUtils */

const float SpellWolfTimeToBank = 1.0f;
const float SpellWolfMaxBankAngle = 0.5f;
const float SpellWolfBankAngleSpeedScale = 20000.0f;

SpellWolf* SpellWolf::Create(const MapCoords& coords, const GAnimalInfo* info)
{
	SpellWolf* wolf = NEW(15) SpellWolf(coords, info, info->TeenAge + 1);
	if (wolf != NULL)
	{
		wolf->CallVirtualFunctionsForCreation(coords);
		wolf->Game3dObject->SetHumanShadowed(true);
		wolf->Hunger = wolf->GetInfo()->HungerThreshold;
	}
	return wolf;
}

void SpellWolf::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	Animal::CallVirtualFunctionsForCreation(coords);
	if (Game3dObject != NULL)
	{
		Game3dObject->SetNeedSorting(false);
	}
}

void SpellWolf::SetToZero()
{
	FadeAlpha.SetPosition(SPELL_WOLF_FULL_ALPHA);
	Player = NULL;
	FinalDestPos.Clear();
	CorridorWidth = 0.0f;
}

uint32_t SpellWolf::FinishPouncing(Living* prey)
{
	return Animal::FinishPouncing(prey);
}

void SpellWolf::SetSpeed(int speed) {}

bool32_t SpellWolf::SetRunToFinalDest()
{
	Animal::SetSpeed((int)(GetScale() * GetInfo()->ApproachSpeed * SPELL_WOLF_RUN_SPEED_SCALE));
	SetupMoveToPos(FinalDestPos, ANIMAL_STATE_SET_DYING);
	return true;
}

bool32_t SpellWolf::DecideWhatToDo()
{
	SetRunToFinalDest();
	return true;
}

bool32_t SpellWolf::Wander()
{
	SetRunToFinalDest();
	return true;
}

void SpellWolf::StartFadeOut(float time)
{
	if (FadeAlpha.GetDestination() != 0.0f)
	{
		FadeAlpha.SetDestination(0.0f, time);
	}
}

uint32_t SpellWolf::ProcessFadeOut()
{
	FadeAlpha.Update(GGameInfo::Info.MillisecondsPerGameTurn * SPELL_WOLF_SECONDS_PER_MILLISECOND);
	if (FadeAlpha.GetCurrentValue() == 0.0f)
	{
		ToBeDeleted(false);
	}
	return true;
}

bool32_t SpellWolf::SetDying()
{
	if (FadeAlpha.GetDestination() != 0.0f)
	{
		double turns = (int)GetNumTurnsToDieOver();
		float  milliseconds = turns * (float)GGameInfo::Info.MillisecondsPerGameTurn;
		StartFadeOut(milliseconds * SPELL_WOLF_SECONDS_PER_MILLISECOND);
	}
	return true;
}

uint32_t SpellWolf::GetNumTurnsToDieOver()
{
	return SPELL_WOLF_NUM_TURNS_TO_DIE_OVER;
}

uint32_t SpellWolf::IsHuntingTargetValid(Object* target)
{
	if (FadeAlpha.GetDestination() != 0.0f)
	{
		Living* living = dynamic_cast<Living*>(target);
		if (living != NULL && living->GetFinalState() != ANIMAL_STATE_DEAD &&
		    living->GetFinalState() != ANIMAL_STATE_DOWNED && living->GetFinalState() != ANIMAL_STATE_BEING_EATEN &&
		    living->GetFinalState() != ANIMAL_STATE_DYING && !living->StatusDowned && IsPosOnCorridor(target->Pos))
		{
			return IsPosValidForTurnAngle(living->Pos) != false;
		}
	}
	return false;
}

bool SpellWolf::IsPosOnCorridor(const MapCoords& coords)
{
	LHPoint point(coords.MetersX(), 0.0f, coords.MetersZ());
	if ((float)fabs(FinalDestPlane.Normal.DotProduct(point) + FinalDestPlane.Distance) > CorridorWidth)
	{
		return false;
	}
	LHPoint pos(Pos.MapMetersX(), 0.0f, Pos.MapMetersZ());
	LHPoint perp(-FinalDestPlane.Normal.z, 0.0f, FinalDestPlane.Normal.x);
	LHPlane plane(perp, -perp.DotProduct(LHPoint(&pos)));
	if (plane.Normal.DotProduct(point) + plane.Distance < -CorridorWidth)
	{
		return false;
	}
	return true;
}

float SpellWolf::GetTimeToBank()
{
	return SpellWolfTimeToBank;
}

float SpellWolf::GetBankAngle(float speed, float turn)
{
	float angle = SpellWolfMaxBankAngle * (float)fabs(speed * turn) / SpellWolfBankAngleSpeedScale;
	return angle < SpellWolfMaxBankAngle ? angle : SpellWolfMaxBankAngle;
}

uint32_t SpellWolf::HuntingMoveToPosAbaondon()
{
	target = NULL;
	FoodPos.Init();
	SetRunToFinalDest();
	return true;
}

void SpellWolf::SetFinalDestPos(const MapCoords& from, const MapCoords& to, float width)
{
	LHPoint start(from.MetersX(), 0.0f, from.MetersZ());
	LHPoint normal(to.MetersZ() - from.MetersZ(), 0.0f, -(to.MetersX() - from.MetersX()));
	if (normal.GetNormeSq() < SPELL_WOLF_CORRIDOR_EPSILON)
	{
		normal.Set(1.0f, 0.0f, 0.0f);
	}
	normal.Normalise();
	LHPlane& plane = FinalDestPlane;
	plane.Normal.Set(normal);
	plane.Distance = -normal.DotProduct(LHPoint(&start));
	CorridorWidth = width;
	FinalDestPos = goal = to;
	SetRunToFinalDest();
}

bool32_t SpellWolf::MoveToPosAndLookAround()
{
	return true;
}

bool32_t SpellWolf::Load(GameOSFile& file)
{
	if (Animal::Load(file))
	{
		file.ReadIt(FinalDestPos);
		file.ReadIt(FinalDestPlane);
		file.ReadIt(CorridorWidth);
		file.ReadIt(FadeAlpha);
		file.ReadPtr((GameThing**)&Player);
		return true;
	}
	return false;
}

bool32_t SpellWolf::Save(GameOSFile& file)
{
	if (Animal::Save(file))
	{
		file.WriteIt(FinalDestPos);
		file.WriteIt(FinalDestPlane);
		file.WriteIt(CorridorWidth);
		file.WriteIt(FadeAlpha);
		file.WritePtr(Player);
		return true;
	}
	return false;
}

bool32_t SpellWolf::MoveToPos()
{
	Living::MoveToPos();
	if (Hunger >= GetInfo()->HungerThreshold)
	{
		ReactToAnimalFoodNeeds();
	}
	if (GUtils::GetDistanceInMetres(Pos, FinalDestPos) < SPELL_WOLF_ARRIVE_DISTANCE)
	{
		SetDying();
	}
	return true;
}
