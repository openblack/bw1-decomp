#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include "AnimalDove.h"

#include "AnimalBat.h"
#include "AnimalCrow.h"
#include "AnimalInfo.h"
#include "AnimalPigeon.h"
#include "AnimalSeagull.h"
#include "AnimalSwallow.h"
#include "AnimalVulture.h"
#include "Creature.h"
#include "Flock.h"
#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LandCell::g_darkness_to_color */
#include <Lionhead/LH3DLib/development/LH3DTech.h>   /* For LH3DTech::GetGameTimeInc */
#include "MapCoordsMeters.h"
#include "GameOSFile.h"
#include "Rand.h"
#include "GameInfo.h"
#include "Utils.h"
#include "Map.h"
#include "Landscape.h"
#include "ObjectInfo.h"
#include <d3dtypes.h>        /* For RGBA_MAKE */
#include "Game3DObject.h"    /* For Game3DObject */
#include "ColourConstants.h" /* For White */

const float DoveTimeToBank = 2.0f;
const float SpellDoveTimeToBank = 0.5f;
const float SpellDoveBankAngle = 0.5f;

Dove::Dove(const MapCoords& coords, const GAnimalInfo* info, unsigned long age) : Animal(coords, info, age)
{
	Animal::SetToZero();
	Pos.SetAltitude(info->ageToScale.values[0]);
	Animal* self = this;
	self->SetSpeed(GetDefaultSpeed());
}

Dove* Dove::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Dove* dove = NEW(37) Dove(coords, info, age);
	if (dove != NULL)
	{
		dove->CallVirtualFunctionsForCreation(coords);
	}
	dove->Game3dObject->SetDisappear(false);
	dove->Game3dObject->SetDynamicLighting(false);
	return dove;
}

bool32_t Dove::DecideWhatToDo()
{
	Flock* myFlock = flock.Get();
	if (myFlock != NULL)
	{
		if (IAmFlockLeader())
		{
			if (ReactToAnimalNeeds() == ANIMAL_BEHAVIOUR_RESULT_HANDLED)
			{
				return true;
			}
			SetTopState(ANIMAL_STATE_START_WANDER);
			StartWander();
			return true;
		}
		if (myFlock->GetFlockPos() != NULL)
		{
			GUtils::ConvertGameAngleTo3D((uint16_t)GetInfo()->TurnAngle);
			GetSpeed();
			MapCoords pos = CalcRandomPos(*myFlock->GetFlockPos(), 0.0f, GetFlockDistance());
			SetupMoveToPos(pos, ANIMAL_STATE_DECIDE_WHAT_TO_DO);
			SetSpeed(GetDefaultSpeed());
			uint32_t state = myFlock->FormationState;
			SetState(LIVING_ACTION_INDEX_TOP, state);
		}
	}
	return true;
}

float Dove::GetAltitudeNormal()
{
	float altitude = flock->FlyingHeight;
	if (altitude == 0.0f)
	{
		altitude = GetInfo()->ageToScale.values[0];
	}
	return altitude;
}

bool32_t Dove::StartWander()
{
	Flock* myFlock = flock.Get();
	if (myFlock == NULL)
	{
		return true;
	}
	SetSpeed(GetDefaultSpeed());
	MapCoords pos = CalcRandomPos(*GetDomainCentrePos(), (float)GetInfo()->WanderMinDistance, (float)GetDomainRadius());
	float     variation = GetInfo()->FlyingAltitudeVariation;
	float     altitude = variation + GetDestPos()->Altitude() - (GAME_FLOAT_RAND(125, variation * 2.0f));
	if (altitude > GetAltitudeNormal() + GetInfo()->MinFlyingAltitudeOffset &&
	    altitude < GetAltitudeNormal() + GetInfo()->MaxFlyingAltitudeOffset)
	{
		pos.altitude = altitude;
	}
	else
	{
		pos.altitude = GetAltitudeNormal();
	}
	SetupMoveToPos(pos, ANIMAL_STATE_DECIDE_WHAT_TO_DO);
	SetState(LIVING_ACTION_INDEX_TOP, ANIMAL_STATE_SPECIAL_MOVE_TO_POS);
	myFlock->FormationState = ANIMAL_STATE_FOLLOW_FLOCK;
	myFlock->Formation = FLOCK_FORMATION_TRIANGLE;
	myFlock->DestinationState = ANIMAL_STATE_DECIDE_WHAT_TO_DO;
	SpecialMoveToPos();
	return true;
}

bool32_t Dove::FollowFlock()
{
	if (!IAmFlockLeader() && GetTopState() == GetFlockFormationState())
	{
		bool32_t result;
		switch (flock->Formation)
		{
		case FLOCK_FORMATION_CHAIN:
			result = ChainMovement();
			break;
		case FLOCK_FORMATION_TRIANGLE:
			result = TriangleMovement();
			break;
		default:
			return false;
		}
		UpdateFlockAnimation(false);
		return result;
	}
	DecideWhatToDo();
	return true;
}

bool32_t Dove::UpdateFlockAnimation(bool32_t force)
{
	if (IsReadyForNewAnimation(1) || force)
	{
		SetStateAnim();
		return true;
	}
	return false;
}

bool32_t Dove::SpecialMoveToPos()
{
	if (this == flock->Members.GetLast() && flock->FormationState == ANIMAL_STATE_FOLLOW_FLOCK &&
	    ReactToAnimalNeeds() == ANIMAL_BEHAVIOUR_RESULT_HANDLED)
	{
		return true;
	}
	int result = MoveToPos3D();
	if (result != MOVE_TO_STATES_REACHED_DESTINATION)
	{
		if (MoveState == MOVE_TO_STATES_MOVING && GUtils::GetDistanceInMetres(&Pos, GetDestPos()) <= 6.0f)
		{
			SetSpeed((int)(float)GetDefaultSpeed());
		}
	}
	else
	{
		SetState(LIVING_ACTION_INDEX_TOP, GetFlockDestinationState());
	}
	return result;
}

bool32_t Dove::IsWithinStep(const MapCoords& coords)
{
	int speed = GetSpeed();
	return abs(Pos.x - coords.x) < speed && abs(Pos.z - coords.z) < speed;
}

bool32_t Dove::LandAtPos()
{
	MapCoords landPos = flock->LandingPos;
	uint8_t   position = flock->Members.GetSize() - GetFlockIndex() - 1;
	uint8_t   searchCount = DOVE_LAND_SEARCH_COUNT;
	uint16_t  landingPoints = 0;
	if (this == flock->Members.GetLast())
	{
		searchCount = DOVE_LEADER_LAND_SEARCH_COUNT;
	}
	int  i = searchCount;
	long spiralX;
	long spiralZ;
	spiralZ = spiralX = 1;
	while (i != 0)
	{
		if (landPos.InBounds() == true)
		{
			for (Object* object = landPos.ToMap()->FindTypeOnMap((OBJECT_TYPE)-1, NULL); object != NULL;
			     object = landPos.ToMap()->FindTypeOnMap((OBJECT_TYPE)-1, object))
			{
				OBJECT_TYPE type = object->info->type;
				if (type == OBJECT_TYPE_POT || type == OBJECT_TYPE_CITADEL || type == OBJECT_TYPE_FOREST_TREE ||
				    type == OBJECT_TYPE_ABODE)
				{
					uint8_t count = object->GetLandingPointCount();
					landingPoints += count;
					if (position < landingPoints)
					{
						if (this == flock->Members.GetLast())
						{
							flock->LandingPos = object->Pos;
						}
						LandedOn = object;
						LandingPointIndex = landingPoints - position - 1;
						LHPoint point;
						object->GetLandingPoint(LandingPointIndex, &point);
						GLandscape::ConvertLandscapePointToMapCoord(point, landPos);
						landPos.altitude = point.y - LH3DIsland::GetAltitude(point);
						SetupMoveToPos(landPos, GetFlockDestinationState());
						SetState(LIVING_ACTION_INDEX_TOP, ANIMAL_STATE_SPECIAL_MOVE_TO_POS);
						return true;
					}
				}
			}
		}
		i--;
		landPos += *GUtils::Spiral(spiralX, spiralZ);
	}
	LandedOn = NULL;
	landPos = CalcRandomPos(flock->LandingPos, 0.0f, DOVE_LAND_RANDOM_RADIUS);
	SetupMoveToPos(landPos, GetFlockDestinationState());
	SetState(LIVING_ACTION_INDEX_TOP, ANIMAL_STATE_SPECIAL_MOVE_TO_POS);
	return true;
}

bool32_t Dove::Sleeps()
{
	Object* landedOn = LandedOn.Get();
	GetFlockIndex();
	if (landedOn != NULL)
	{
		LHPoint point;
		landedOn->GetLandingPoint(LandingPointIndex, &point);
		GLandscape::ConvertLandscapePointToMapCoord(point, Pos);
		Pos.altitude = point.y - LH3DIsland::GetAltitude(point);
	}
	else
	{
		Pos.altitude = 0.0f;
	}
	if (this == flock->Members.GetLast())
	{
		flock->FormationState = ANIMAL_STATE_SLEEPS;
		if (--TurnsUntilNextStateChange == 0)
		{
			SetTopState(ANIMAL_STATE_DECIDE_WHAT_TO_DO);
			Tiredness = 0;
			return true;
		}
	}
	else
	{
		SetTopState(GetFlockFormationState());
	}
	return true;
}

ANIMAL_BEHAVIOUR_RESULT Dove::ReactToAnimalNeeds()
{
	MapCoords          sleepPos;
	const GAnimalInfo* animalInfo = GetInfo();
	sleepPos.Clear();
	if (animalInfo->TirednessThreshold != ANIMAL_NEED_THRESHOLD_DISABLED && Tiredness >= animalInfo->TirednessThreshold)
	{
		if (LookForSleepPos(&sleepPos))
		{
			SetLandingPos(sleepPos);
			flock->DestinationState = ANIMAL_STATE_SLEEPS;
			Tiredness = 0;
			TurnsUntilNextStateChange = DOVE_SLEEP_TURNS;
			return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
		}
	}
	if (flock->TurnsSinceLeaderReturned >= animalInfo->LeaderReturnTurns)
	{
		flock->TurnsSinceLeaderReturned = 0;
		SetTopState(ANIMAL_STATE_START_WANDER);
		return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
	}
	return ANIMAL_BEHAVIOUR_RESULT_UNHANDLED;
}

ANIMAL_BEHAVIOUR_RESULT SpellDove::ReactToAnimalNeeds()
{
	return ANIMAL_BEHAVIOUR_RESULT_UNHANDLED;
}

bool32_t Dove::LookForFoodPos(MapCoords* pos)
{
	MapCoords grazePos;
	grazePos.Clear();
	if (LookForGrazePos(Pos, GetDomainRadius(), &grazePos))
	{
		*pos = grazePos;
		return true;
	}
	return false;
}

uint32_t Dove::LookForSleepPos(MapCoords* pos)
{
	*pos = CalcRandomPos(Pos, GetFlockDistance() / 2, GetFlockDistance());
	return true;
}

bool32_t Dove::SetLandingPos(const MapCoords& coords)
{
	flock->LandingPos = coords;
	flock->FormationState = ANIMAL_STATE_LAND_AT_POS;
	flock->Formation = FLOCK_FORMATION_LANDING;
	SetTopState(ANIMAL_STATE_LAND_AT_POS);
	return true;
}

void Dove::SetAnim(int anim)
{
	Living::SetAnim(0);
}

bool32_t Dove::ChainMovement()
{
	MapCoords target;
	flock->Members.MoveForward();
	Living* leader = flock->Members.GetCurrent();
	int     result = MoveToPos3D();
	if (result != MOVE_TO_STATES_REACHED_DESTINATION)
	{
		target = leader->Pos;
		SetupMoveToPos(target, ANIMAL_STATE_DECIDE_WHAT_TO_DO);
		SetState(LIVING_ACTION_INDEX_TOP, ANIMAL_STATE_FOLLOW_FLOCK);
	}
	return result;
}

bool32_t Dove::TriangleMovement()
{
	Living*       leader = flock->Members.GetLast();
	unsigned long size = flock->Members.GetSize();
	int           index = GetFlockIndex();
	uint8_t       position = size - index;
	MapCoords     target;
	int8_t        row;
	int8_t        side;
	row = side = 1;
	while (position >= row * row)
	{
		row++;
	}
	if (position % 2 == 0)
	{
		position--;
		side = -1;
	}
	int8_t depth = (side * (row * row - position) + 1) / 2;
	int    result = MoveToPos3D();
	if (result == MOVE_TO_STATES_REACHED_DESTINATION)
	{
		row -= 5;
		long  turn = GUtils::GetAngleFromDXDZ(row, depth);
		long  angle = GUtils::GetAngleFromXZ(Pos, leader->Pos) + 0x400;
		float radians = GUtils::ConvertGameAngleTo3D(turn + angle);
		float cosine = cos(radians);
		float sine = sin(radians);
		target = leader->Pos;
		target.SetMetersX(target.MetersX() + cosine * row * 10.0);
		target.SetMetersZ(target.MetersZ() + sine * depth * 10.0);
		SetupMoveToPos(target, ANIMAL_STATE_DECIDE_WHAT_TO_DO);
	}
	return result;
}

int Dove::SetCurrentAndDestinationState(uint8_t current, uint8_t destination)
{
	if (CallExitStateFunction(destination) != 0)
	{
		if (CallEntryStateFunction(current, destination) != 0)
		{
			SetStateSpeed();
			return LIVING_SET_STATE_SUCCESS;
		}
		return LIVING_SET_STATE_ENTRY_REFUSED;
	}
	return LIVING_SET_STATE_EXIT_REFUSED;
}

SCRIPT_OBJECT_TYPE Dove::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_BIRD;
}

bool32_t Dove::CanBeHealedByHealSpell()
{
	return false;
}

SpellDove* SpellDove::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	SpellDove* spelldove = NEW(583) SpellDove(coords, info, age);
	if (spelldove != NULL)
	{
		spelldove->CallVirtualFunctionsForCreation(coords);
	}
	spelldove->Game3dObject->SetDisappear(false);
	spelldove->Game3dObject->SetDynamicLighting(false);
	return spelldove;
}

Crow* Crow::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Crow* crow = NEW(599) Crow(coords, info, age);
	if (crow != NULL)
	{
		crow->CallVirtualFunctionsForCreation(coords);
	}
	crow->Game3dObject->SetDisappear(false);
	crow->Game3dObject->SetDynamicLighting(false);
	return crow;
}

Swallow* Swallow::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Swallow* swallow = NEW(615) Swallow(coords, info, age);
	if (swallow != NULL)
	{
		swallow->CallVirtualFunctionsForCreation(coords);
	}
	swallow->Game3dObject->SetDisappear(false);
	swallow->Game3dObject->SetDynamicLighting(false);
	return swallow;
}

Pigeon* Pigeon::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Pigeon* pigeon = NEW(631) Pigeon(coords, info, age);
	if (pigeon != NULL)
	{
		pigeon->CallVirtualFunctionsForCreation(coords);
	}
	pigeon->Game3dObject->SetDisappear(false);
	pigeon->Game3dObject->SetDynamicLighting(false);
	return pigeon;
}

Seagull* Seagull::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Seagull* seagull = NEW(647) Seagull(coords, info, age);
	if (seagull != NULL)
	{
		seagull->CallVirtualFunctionsForCreation(coords);
	}
	seagull->Game3dObject->SetDisappear(false);
	seagull->Game3dObject->SetDynamicLighting(false);
	return seagull;
}

Bat* Bat::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Bat* bat = NEW(663) Bat(coords, info, age);
	if (bat != NULL)
	{
		bat->CallVirtualFunctionsForCreation(coords);
	}
	bat->Game3dObject->SetDisappear(false);
	bat->Game3dObject->SetDynamicLighting(false);
	return bat;
}

SpellBat* SpellBat::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	SpellBat* spellbat = NEW(679) SpellBat(coords, info, age);
	if (spellbat != NULL)
	{
		spellbat->CallVirtualFunctionsForCreation(coords);
	}
	spellbat->Game3dObject->SetDisappear(false);
	spellbat->Game3dObject->SetDynamicLighting(false);
	return spellbat;
}

Vulture* Vulture::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Vulture* vulture = NEW(695) Vulture(coords, info, age);
	if (vulture != NULL)
	{
		vulture->CallVirtualFunctionsForCreation(coords);
	}
	vulture->Game3dObject->SetDisappear(false);
	vulture->Game3dObject->SetDynamicLighting(false);
	return vulture;
}

bool32_t Dove::Save(GameOSFile& file)
{
	return Animal::Save(file) != false;
}

bool32_t Dove::Load(GameOSFile& file)
{
	return Animal::Load(file) != false;
}

bool32_t Dove::CanBeStompedOnByCreature(Creature* creature)
{
	float altitude = Pos.altitude;
	return creature->GetHeight() * 0.25f > altitude;
}

bool32_t Dove::CanBePickedUpByCreature(Creature* creature)
{
	return Pos.altitude < 1.0f;
}

bool32_t Dove::Dying()
{
	float   angle = GUtils::ConvertGameAngleToScawenAngle(GetGameAngle());
	float   speed = GetSpeedInMetresPerSecond();
	LHPoint velocity(sinf(angle) * speed, 0.0f, -(cosf(angle) * speed));
	LHPoint angularVelocity(5.0f, 0.0f, 0.0f);
	InitialisePhysics(velocity, angularVelocity, NULL, true, NULL);
	return true;
}

void Dove::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	Animal::CallVirtualFunctionsForCreation(coords);
	if (Game3dObject != NULL)
	{
		Game3dObject->SetNeedSorting(false);
	}
}

float Dove::GetTimeToBank()
{
	return DoveTimeToBank;
}

float Dove::GetBankAngle(float param_1, float param_2)
{
	return 0.5f;
}

void SpellDove::SetToZero()
{
	ScaleZoomer.SetPosition(SPELL_DOVE_OPAQUE_ALPHA);
}

float SpellDove::GetTimeToBank()
{
	return SpellDoveTimeToBank;
}

float SpellDove::GetBankAngle(float speed, float angle)
{
	return SpellDoveBankAngle;
}

void SpellDove::StartFadeOut(float time)
{
	if (ScaleZoomer.GetDestination() != 0.0f)
	{
		ScaleZoomer.SetDestination(0.0f, time);
	}
}

uint32_t SpellDove::ProcessFadeOut()
{
	ScaleZoomer.Update(GGameInfo::Info.MillisecondsPerGameTurn * 0.001f);
	if (ScaleZoomer.GetCurrentValue() == 0.0f)
	{
		ToBeDeleted(false);
	}
	return true;
}

bool32_t SpellDove::SetDying()
{
	if (ScaleZoomer.GetDestination() != 0.0f)
	{
		int turns = GetNumTurnsToDieOver();
		StartFadeOut(((float)turns + 0.0f) * GGameInfo::Info.MillisecondsPerGameTurn * 0.001f);
	}
	return true;
}

uint32_t SpellDove::GetNumTurnsToDieOver()
{
	return SPELL_DOVE_NUM_TURNS_TO_DIE_OVER;
}

void SpellDove::SetColor()
{
	if (Game3dObject != NULL)
	{
		int alpha = FloatToInt(ScaleZoomer.GetCurrentValue());
		Game3dObject->color = RGBA_MAKE(0xff, 0xff, 0xff, alpha);
		Game3dObject->SetDrawWithGlobalAlpha(alpha != SPELL_DOVE_OPAQUE_ALPHA);
	}
}

void Dove::Draw()
{
	AngleZoomer.Update(LH3DTech::GetGameTimeInc() * 0.001f);
	Game3dObject->color = LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS];
	PreDrawScale(GetScale());
	LHMatrix savedMatrix = Game3dObject->matrix;
	Game3dObject->matrix.RotateZ(AngleZoomer.CurrentValue);
	Game3dObject->Flags2 |= LH3D_OBJECT_FLAGS2_NOT_AFFECTED_BY_SNOW;
	Game3dObject->AddDrawing();
	Game3dObject->matrix = savedMatrix;
	DebugShowText();
}

uint32_t Dove::IsPosValidForMapCellExistance(const MapCoords& coords)
{
	LHPoint progress(0.0f, 0.0f, 0.0f);
	LHPoint from;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, from);
	from.x = (int)from.x / DOVE_PATH_STEP * DOVE_PATH_STEP + DOVE_PATH_STEP / 2;
	from.z = (int)from.z / DOVE_PATH_STEP * DOVE_PATH_STEP + DOVE_PATH_STEP / 2;
	LHPoint to;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, to);
	to.x = (int)to.x / DOVE_PATH_STEP * DOVE_PATH_STEP + DOVE_PATH_STEP / 2;
	to.z = (int)to.z / DOVE_PATH_STEP * DOVE_PATH_STEP + DOVE_PATH_STEP / 2;
	to.y = from.y = 0.0f;
	to = to - from;
	int signX = to.x > 0.0f ? 1 : -1;
	to.x *= signX;
	int signZ = to.z > 0.0f ? 1 : -1;
	to.z *= signZ;
	while (to.x > progress.x || to.z > progress.z)
	{
		LHPoint cross = progress ^ to;
		if (cross.y == 0.0f)
		{
			if (to.x > to.z)
			{
				progress.x += DOVE_PATH_STEP;
			}
			else
			{
				progress.z += DOVE_PATH_STEP;
			}
		}
		else if (cross.y > 0.0f)
		{
			progress.x += DOVE_PATH_STEP;
		}
		else
		{
			progress.z += DOVE_PATH_STEP;
		}
		LHPoint step = progress;
		step.x *= signX;
		step.z *= signZ;
		LHPoint pos = step + from;
		long    x = pos.x / MAP_COORDS_METRES_PER_CELL;
		long    z = pos.z / MAP_COORDS_METRES_PER_CELL;
		if (LH3DIsland::GetBlock(x, z) == NULL)
		{
			return false;
		}
	}
	return true;
}

bool32_t SpellDove::Load(GameOSFile& file)
{
	if (Dove::Load(file))
	{
		file.ReadIt(ScaleZoomer);
		return true;
	}
	return false;
}

bool32_t SpellDove::Save(GameOSFile& file)
{
	if (Dove::Save(file))
	{
		file.WriteIt(ScaleZoomer);
		return true;
	}
	return false;
}
