#include "Ball.h"
#include "BallInfo.h"
#include "Balance.h"
#include "GameTimeConstants.h"
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */
#include "Football.h"
#include "Game3DObject.h"
#include "Game.h"
#include "GameOSFile.h"
#include "Landscape.h"
#include "PhysicsObject.h"
#include "Reaction.h"
#include "RoutePlan.h"
#include "Town.h"
#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */
#include <math.h>                        /* For sqrt */

GBallInfo       GBallInfo::Info;
static uint32_t UnusedStatic = 0;

Ball::Ball(const MapCoords& coords, const GBallInfo* info) : MobileObject(coords, info, NULL, 0.0f, 1.0f)
{
	GGame::g_game->GameLists.balls.AddToFirst(this);
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, LandscapePos);
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, PrevLandscapePos);
	Reaction::CreateReaction(this, REACTION_REACT_TO_BALL, GetPlayer(), false);
	SetToZero();
}

Ball::~Ball()
{
	GGame::g_game->GameLists.balls.Remove(this);
	Reaction::RemoveAllReactionsInitiatedByObject(this);
	if (State == BALL_STATE_FOOTBALL)
	{
		football->StopGame();
	}
	RemoveFromTown();
}

Ball* Ball::Create(const MapCoords& coords, const GBallInfo* info, unsigned short y_angle, float radius, float height)
{
	Ball* ball = NEW(61) Ball(coords, info);
	if (ball != NULL)
	{
		ball->SetScale(1.0f);
		ball->CallVirtualFunctionsForCreation(coords);
		ball->Game3dObject->SetDisappear(false);
	}
	return ball;
}

void Ball::SetToZero()
{
	Owner = NULL;
	town = NULL;
	football = NULL;
	State = BALL_STATE_FREE;
	ExtraValue = 0;
	KickFlag = 0;
}

uint32_t Ball::Process()
{
	return 1;
}

bool32_t Ball::KickBallAtDestination(const MapCoords& destination, float speed, int flag)
{
	LHPoint from = Pos.GetLHPoint();
	LHPoint to = destination.GetLHPoint();
	float   time = (float)((float)(to.GetDistance(from)) / speed);
	LHPoint velocity = (LHPoint(to.x - from.x, to.y - from.y, to.z - from.z) -
	                    LHPoint(0.0f, -OBJECT_GRAVITY, 0.0f) * ((float)(time * time * 0.5f))) *
	                   ((float)(1.0f / time));
	if (InPhysics && !(GameThing::Flags & GAME_THING_FLAG_PSYS_FLYING))
	{
		PhysicsObject::RemoveObject(this, true, true);
	}
	if (IsObjectInMap())
	{
		PhysicsObject* physicsObject = InitialisePhysics(velocity, LHPoint(0.0f, 0.0f, 0.0f), NULL, true, NULL).Physics;
		if (physicsObject != NULL)
		{
			physicsObject->Flags |= PHYSICS_OBJECT_FLAG_PUSHED;
			physicsObject->Physics.AdjustToGroundLevel(false, true);
			KickFlag = flag;
			Destination = destination;
			return true;
		}
	}
	return false;
}

#ifndef VERSION_BW1W100
bool32_t Ball::KickBall(const MapCoords& destination, float speed, float lift)
{
	if (InPhysics && !(GameThing::Flags & GAME_THING_FLAG_PSYS_FLYING))
	{
		PhysicsObject::RemoveObject(this, true, true);
	}
	if (IsObjectInMap())
	{
		LHPoint from;
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, from);
		LHPoint to;
		GLandscape::ConvertMapCoordToLandscapePoint(destination, to);
		LHPoint velocity(to.x - from.x, 0.0f, to.z - from.z);
		velocity *= range_2d(velocity) * speed;
		velocity.y = lift;
		PhysicsObject* physicsObject = InitialisePhysics(velocity, LHPoint(0.0f, 0.0f, 0.0f), NULL, true, NULL).Physics;
		if (physicsObject != NULL)
		{
			physicsObject->Flags |= PHYSICS_OBJECT_FLAG_PUSHED;
			physicsObject->Physics.AdjustToGroundLevel(false, true);
			return true;
		}
	}
	return false;
}
#endif

void Ball::ProcessBalls()
{
	FOREACH_LH_LIST_HEAD_SAFE(Ball, ball, GGame::g_game->GameLists.balls)
	{
		ball->Process();
	}
}

GPlayer* Ball::GetPlayer()
{
	if (Owner.Get() != NULL)
	{
		return Owner->GetPlayer();
	}
	return GGame::g_game->GetNeutralPlayer();
}

#ifndef VERSION_BW1W100
void Ball::SetOwner(Villager* owner)
{
	Owner = owner;
}

Villager* Ball::GetOwner()
{
	return Owner.Get();
}

void Ball::SetLastOwner(Villager* last_owner)
{
	LastOwner = last_owner;
}

Villager* Ball::GetLastOwner()
{
	return LastOwner.Get();
}

void Ball::SetFootball(Football* football)
{
	this->football = football;
	State = BALL_STATE_FOOTBALL;
}

Football* Ball::GetFootball()
{
	return football.Get();
}
#endif

bool32_t Ball::AddToTown(Town* town)
{
	if (this->town.Get() != NULL)
	{
		return true;
	}
	if (town->AddPlaythingIfNoneThere(this) == true)
	{
		this->town = town;
		State = BALL_STATE_TOWN;
		return true;
	}
	return false;
}

void Ball::RemoveFromTown()
{
	if (town.Get() != NULL)
	{
		town->RemovePlaything(this);
		town = NULL;
		State = BALL_STATE_FREE;
	}
}

#ifndef VERSION_BW1W100
Town* Ball::GetBallTown()
{
	return town.Get();
}

void Ball::SetExtraValue(uint32_t value)
{
	ExtraValue = value;
}

uint32_t Ball::GetExtraValue()
{
	return ExtraValue;
}

void Ball::SetOwned()
{
	State = BALL_STATE_OWNED;
}

void Ball::SetPlayingFootball()
{
	State = BALL_STATE_FOOTBALL;
}

bool32_t Ball::IsOwned()
{
	return State == BALL_STATE_OWNED;
}
#endif

bool32_t Ball::IsBallFree()
{
	return State == BALL_STATE_FREE;
}

PHYSICS_CONSTANTS_TYPE Ball::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_FOOTBALL;
}

SCRIPT_OBJECT_TYPE Ball::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_BALL;
}

bool32_t Ball::Save(GameOSFile& file)
{
	if (MobileObject::Save(file))
	{
		file.WriteSafe(LandscapePos);
		file.WriteSafe(PrevLandscapePos);
		file.WritePtr(football.Get());
		file.WritePtr(Owner.Get());
		file.WritePtr(LastOwner.Get());
		file.WritePtr(town.Get());
		file.WriteSafe(KickStart);
		file.WriteSafe(ExtraValue);
		return true;
	}
	return false;
}

bool32_t Ball::Load(GameOSFile& file)
{
	if (MobileObject::Load(file))
	{
		file.ReadSafe(LandscapePos);
		file.ReadSafe(PrevLandscapePos);
		file.ReadPtr((GameThing**)&football);
		file.ReadPtr((GameThing**)&Owner);
		file.ReadPtr((GameThing**)&LastOwner);
		file.ReadPtr((GameThing**)&town);
		file.ReadSafe(KickStart);
		file.ReadSafe(ExtraValue);
		return true;
	}
	return false;
}

#ifndef VERSION_BW1W100
bool32_t Ball::IsToy(Creature* creature)
{
	return true;
}

bool32_t Ball::IsToyBall(Creature* creature)
{
	return true;
}
#endif
