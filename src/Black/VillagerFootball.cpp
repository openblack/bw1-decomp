#include "Villager.h"

#include <math.h> /* For sqrt */

#include "Ball.h"
#include "ColourConstants.h" /* For White */
#include "Football.h"
#include "Object.h"
#include "Rand.h"

// Metres-per-cell scale used by the kick-target fixed-point<->metres conversions below.
const float villager_football_float10p0_0x0099a980 = 10.0f;

// BW1W120 0075d130 BW1M119 0158c600
void Villager::AssignFootballSubState()
{
	switch ((uint8_t)GetFinalState())
	{
	case VILLAGER_STATE_FOOTBALL_ATTACKER:
		AssignFootballAttackerSubState();
		break;
	case VILLAGER_STATE_FOOTBALL_GOALIE:
		AssignFootballGoalieSubState();
		break;
	case VILLAGER_STATE_FOOTBALL_DEFENDER:
		AssignFootballDefenderSubState();
		break;
	}
}

// BW1W120 0075d2d0 BW1M119 0158a890
void Villager::FootballAttackerShootProcess(Football* football)
{
	Ball* ball = (Ball*)football->GetBall();
	if (IsTouching(ball, GetHeight()))
	{
		float ballAltitude = ball->Pos.altitude;
		if (GetHeight() > ballAltitude)
		{
			MapCoords goalPos = football->GetGoalPosition(football->IsPlayerOnHomeTeam(this));
			football->PerturbTarget(&goalPos, this);
			ball->KickBallAtDestination(goalPos, GRand::GameFloatRand(4.0f, __FILE__, __LINE__) + 12.0f, 1);
			TurnsUntilNextStateChange = 0;
			// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
			*(uint8_t*)&TargetThing = 1;
			return;
		}
	}
	FootballAttackerGoToBallProcess(football);
}

// BW1W120 0075d500 BW1M119 0158a420
void Villager::FootballAttackerLobNearGoalProcess(Football* football)
{
	Ball* ball = (Ball*)football->GetBall();
	if (IsTouching(ball, GetHeight()))
	{
		float ballAltitude = ball->Pos.altitude;
		if (GetHeight() > ballAltitude)
		{
			MapCoords goalPos = football->GetGoalPosition(football->IsPlayerOnHomeTeam(this));
			float     jitterX = GRand::GameFloatRand(4.0f, __FILE__, __LINE__) - 2.0f;
			goalPos.x = (int)(((float)goalPos.x * villager_football_float10p0_0x0099a980 / 65536.0f + jitterX) *
			                  65536.0f / villager_football_float10p0_0x0099a980);
			// TODO: fstp-discard placement — target pops the dead jitter right after __ftol,
			// ours 2 slots later (scheduler tie).
			float jitterZ = GRand::GameFloatRand(4.0f, __FILE__, __LINE__) - 2.0f;
			goalPos.z = (int)(((float)goalPos.z * villager_football_float10p0_0x0099a980 / 65536.0f + jitterZ) *
			                  65536.0f / villager_football_float10p0_0x0099a980);
			MapCoords kickPos = goalPos;
			football->PerturbTarget(&kickPos, this);
			ball->KickBallAtDestination(kickPos, GRand::GameFloatRand(1.0f, __FILE__, __LINE__) + 3.0f, 1);
			TurnsUntilNextStateChange = 0;
			// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
			*(uint8_t*)&TargetThing = 1;
			return;
		}
	}
	FootballAttackerGoToBallProcess(football);
}

// BW1W120 0075da90 BW1M119 01589ce0
void Villager::FootballAttackerGoToBallProcess(Football* football)
{
	Ball* ball = (Ball*)football->GetBall();
	if (IsTouching(ball, GetHeight()))
	{
		float ballAltitude = ball->Pos.altitude;
		if (GetHeight() > ballAltitude)
		{
			// TODO: byte flag @0x118 — the football states write a byte reassign-substate flag
			// into the TargetThing slot; needs a proper union member in Villager.h.
			*(uint8_t*)&TargetThing = 1;
			return;
		}
	}
	if ((((Ball*)football->GetBall())->Flags & 0x40) && GRand::GameRand(3, __FILE__, __LINE__) != 0)
	{
		MapCoords destination = ball->Destination;
		SetupMoveToPos(destination, VILLAGER_STATE_FOOTBALL_ATTACKER);
		action.SetState(LIVING_ACTION_INDEX_TOP, VILLAGER_STATE_FOOTBALL_MOVE_TO_BALL);
		return;
	}
	StartMoveToObject((Object*)football->GetBall(), VILLAGER_STATE_FOOTBALL_ATTACKER);
}

// BW1W120 0075d670 BW1M119 0158a120
void Villager::FootballAttackerDribbleProcess(Football* football)
{
	Ball* ball = (Ball*)football->GetBall();
	if (IsTouching(ball, GetHeight()))
	{
		float ballAltitude = ball->Pos.altitude;
		if (GetHeight() > ballAltitude)
		{
			LHPoint myPoint = Pos.GetLHPoint();
			LHPoint goalPoint = football->GetGoalPosition(football->IsPlayerOnHomeTeam(this)).GetLHPoint();
			float   dx = goalPoint.x - myPoint.x;
			float   dy = goalPoint.y - myPoint.y;
			float   dz = goalPoint.z - myPoint.z;
			float   dist = (float)sqrt(dy * dy + dx * dx + dz * dz);
			if (dx != 0.0f || dy != 0.0f || dz != 0.0f)
			{
				float invLen = 1.0f / (float)sqrt(dy * dy + dx * dx + dz * dz);
				dx *= invLen;
				dy *= invLen;
				dz *= invLen;
			}
			dist *= 0.2f;
			LHPoint kickPoint;
			kickPoint.x = myPoint.x + dx * dist;
			kickPoint.y = myPoint.y + dy * dist;
			kickPoint.z = myPoint.z + dz * dist;
			MapCoords kickPos(kickPoint);
			football->PerturbTarget(&kickPos, this);
			ball->KickBallAtDestination(kickPos, GRand::GameFloatRand(1.0f, __FILE__, __LINE__) + 6.0f, 1);
			TurnsUntilNextStateChange = 0;
			// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
			*(uint8_t*)&TargetThing = 1;
			return;
		}
	}
	FootballAttackerGoToBallProcess(football);
}

// BW1W120 0075dbd0 BW1M119 01589b00
void Villager::FootballAttackerIdleProcess(Football* football)
{
	LookAtObject((GameThingWithPos*)football->GetBall(), 1);
	football->IsPlayerOnHomeTeam(this);
	if (TurnsUntilNextStateChange >= 600 || (uint32_t)football->GetHowCloseToBallIndex(this) < 2)
	{
		// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
		*(uint8_t*)&TargetThing = 1;
	}
}

// BW1W120 0075dd80 BW1M119 01589820
float Villager::FootballAttackerPassPriority(Football* football)
{
	if (football->GetHowCloseToGoalIndex(this) - 1 >= 0)
	{
		return GRand::GameFloatRand(0.2f, __FILE__, __LINE__) + 0.8f;
	}
	return 0.0;
}

// BW1W120 0075ddc0 BW1M119 015897c0
float Villager::FootballAttackerLobNearGoalPriority(Football* param_1)
{
	return 0.0;
}

// BW1W120 0075def0 BW1M119 01589530
float Villager::FootballAttackerGoToBallPriority(Football* param_1)
{
	return 0.0;
}

// BW1W120 0075e210 BW1M119 01587450
void Villager::FootballDefenderSaveProcess(Football* football)
{
	Ball* ball = (Ball*)football->GetBall();
	if (IsTouching(ball, GetHeight()))
	{
		float ballAltitude = ball->Pos.altitude;
		if (GetHeight() > ballAltitude)
		{
			MapCoords goalPos = football->GetGoalPosition(football->IsPlayerOnHomeTeam(this));
			float     jitterX = GRand::GameFloatRand(10.0f, __FILE__, __LINE__) - 5.0f;
			goalPos.x = (int)(((float)goalPos.x * villager_football_float10p0_0x0099a980 / 65536.0f + jitterX) *
			                  65536.0f / villager_football_float10p0_0x0099a980);
			// TODO: fstp-discard placement — target pops the dead jitter right after __ftol,
			// ours 2 slots later (scheduler tie).
			float jitterZ = GRand::GameFloatRand(10.0f, __FILE__, __LINE__) - 5.0f;
			goalPos.z = (int)(((float)goalPos.z * villager_football_float10p0_0x0099a980 / 65536.0f + jitterZ) *
			                  65536.0f / villager_football_float10p0_0x0099a980);
			MapCoords kickPos = goalPos;
			ball->KickBallAtDestination(kickPos, GRand::GameFloatRand(3.0f, __FILE__, __LINE__) + 8.0f, 1);
			TurnsUntilNextStateChange = 0;
			// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
			*(uint8_t*)&TargetThing = 1;
			return;
		}
	}
	FootballDefenderGoToBallProcess(football);
}

// BW1W120 0075e370 BW1M119 015873e0
void Villager::FootballDefenderClearProcess(Football* football)
{
	FootballDefenderSaveProcess(football);
}

// BW1W120 0075e380 BW1M119 015870e0
void Villager::FootballDefenderDribbleProcess(Football* football)
{
	Ball* ball = (Ball*)football->GetBall();
	if (IsTouching(ball, GetHeight()))
	{
		float ballAltitude = ball->Pos.altitude;
		if (GetHeight() > ballAltitude)
		{
			LHPoint myPoint = Pos.GetLHPoint();
			LHPoint goalPoint = football->GetGoalPosition(football->IsPlayerOnHomeTeam(this)).GetLHPoint();
			float   dx = goalPoint.x - myPoint.x;
			float   dy = goalPoint.y - myPoint.y;
			float   dz = goalPoint.z - myPoint.z;
			float   dist = (float)sqrt(dy * dy + dx * dx + dz * dz);
			if (dx != 0.0f || dy != 0.0f || dz != 0.0f)
			{
				float invLen = 1.0f / (float)sqrt(dy * dy + dx * dx + dz * dz);
				dx *= invLen;
				dy *= invLen;
				dz *= invLen;
			}
			dist *= 0.2f;
			LHPoint kickPoint;
			kickPoint.x = myPoint.x + dx * dist;
			kickPoint.y = myPoint.y + dy * dist;
			kickPoint.z = myPoint.z + dz * dist;
			MapCoords kickPos(kickPoint);
			football->PerturbTarget(&kickPos, this);
			ball->KickBallAtDestination(kickPos, GRand::GameFloatRand(1.0f, __FILE__, __LINE__) + 6.0f, 1);
			TurnsUntilNextStateChange = 0;
			// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
			*(uint8_t*)&TargetThing = 1;
			return;
		}
	}
	FootballDefenderGoToBallProcess(football);
}

// BW1W120 0075e560 BW1M119 01587020
void Villager::FootballDefenderMarkProcess(Football* football)
{
	Object* mark_target = football->MarkTargets[football->IsPlayerOnHomeTeam(this)];
	if (mark_target != NULL)
	{
		StartMoveToObject(mark_target, VILLAGER_STATE_FOOTBALL_DEFENDER);
	}
	// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
	*(uint8_t*)&TargetThing = 1;
}

// BW1W120 0075e5a0 BW1M119 01586e70
void Villager::FootballDefenderGoToBallProcess(Football* football)
{
	Ball* ball = (Ball*)football->GetBall();
	if (IsTouching(ball, GetHeight()))
	{
		float ballAltitude = ball->Pos.altitude;
		if (GetHeight() > ballAltitude)
		{
			// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
			*(uint8_t*)&TargetThing = 1;
			return;
		}
	}
	if ((((Ball*)football->GetBall())->Flags & 0x40) && GRand::GameRand(3, __FILE__, __LINE__) != 0)
	{
		MapCoords destination = ball->Destination;
		SetupMoveToPos(destination, VILLAGER_STATE_FOOTBALL_DEFENDER);
		action.SetState(LIVING_ACTION_INDEX_TOP, VILLAGER_STATE_FOOTBALL_MOVE_TO_BALL);
		return;
	}
	StartMoveToObject((Object*)football->GetBall(), VILLAGER_STATE_FOOTBALL_DEFENDER);
}

// BW1W120 0075e6e0 BW1M119 01586c90
void Villager::FootballDefenderIdleProcess(Football* football)
{
	LookAtObject((GameThingWithPos*)football->GetBall(), 1);
	football->IsPlayerOnHomeTeam(this);
	if (TurnsUntilNextStateChange >= 600 || (uint32_t)football->GetHowCloseToBallIndex(this) < 2)
	{
		// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
		*(uint8_t*)&TargetThing = 1;
	}
}

// BW1W120 0075e890 BW1M119 015869f0
float Villager::FootballDefenderSavePriority(Football* football)
{
	return GRand::GameFloatRand(0.3f, __FILE__, __LINE__) + 0.7f;
}

// BW1W120 0075e8b0 BW1M119 01586970
float Villager::FootballDefenderClearPriority(Football* football)
{
	return GRand::GameFloatRand(0.4f, __FILE__, __LINE__) + 0.6f;
}

// BW1W120 0075e970 BW1M119 015867c0
float Villager::FootballDefenderMarkPriority(Football* football)
{
	return GRand::GameFloatRand(1.0f, __FILE__, __LINE__);
}

// BW1W120 0075e990 BW1M119 01586760
float Villager::FootballDefenderGoToBallPriority(Football* param_1)
{
	return 0.0;
}

// BW1W120 0075e9a0 BW1M119 015866f0
float Villager::FootballDefenderGoHomePriority(Football* param_1)
{
	return FootballAttackerGoHomePriority(param_1);
}

// BW1W120 0075e9b0 BW1M119 01586670
float Villager::FootballDefenderIdlePriority(Football* param_1)
{
	return 1.0f - FootballDefenderGoHomePriority(param_1);
}

// BW1W120 0075e9d0 BW1M119 015865d0
float Villager::FootballDefenderPassPriority(Football* football)
{
	if (football->GetHowCloseToGoalIndex(this) - 1 >= 0)
	{
		return GRand::GameFloatRand(0.2f, __FILE__, __LINE__) + 0.8f;
	}
	return 0.0;
}

// BW1W120 0075eb70 BW1M119 01584e00
void Villager::FootballGoalieSaveProcess(Football* football)
{
	Ball* ball = (Ball*)football->GetBall();
	if (IsTouching(ball, GetHeight()))
	{
		float ballAltitude = ball->Pos.altitude;
		if (GetHeight() > ballAltitude)
		{
			MapCoords target = football->Pos;
			for (int i = 0; i < 3; i++)
			{
				football->PerturbTarget(&target, this);
			}
			ball->KickBallAtDestination(target, GRand::GameFloatRand(1.0f, __FILE__, __LINE__) + 9.0f, 1);
			TurnsUntilNextStateChange = 0;
			// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
			*(uint8_t*)&TargetThing = 1;
			return;
		}
	}
	FootballGoalieGoToBallProcess(football);
}

// BW1W120 0075ec50 BW1M119 01584d90
void Villager::FootballGoalieClearProcess(Football* football)
{
	FootballGoalieSaveProcess(football);
}

// BW1W120 0075ecd0 BW1M119 01584ae0
void Villager::FootballGoalieGoToBallProcess(Football* football)
{
	Ball* ball = (Ball*)football->GetBall();
	if (IsTouching(ball, GetHeight()))
	{
		float ballAltitude = ball->Pos.altitude;
		if (GetHeight() > ballAltitude)
		{
			// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
			*(uint8_t*)&TargetThing = 1;
			return;
		}
	}
	if ((((Ball*)football->GetBall())->Flags & 0x40) && GRand::GameRand(10, __FILE__, __LINE__) >= 8u)
	{
		MapCoords destination = ball->Destination;
		SetupMoveToPos(destination, VILLAGER_STATE_FOOTBALL_GOALIE);
		action.SetState(LIVING_ACTION_INDEX_TOP, VILLAGER_STATE_FOOTBALL_MOVE_TO_BALL);
		return;
	}
	StartMoveToObject(ball, VILLAGER_STATE_FOOTBALL_GOALIE);
}

// BW1W120 0075edb0 BW1M119 015849e0
void Villager::FootballGoalieGoHomeProcess(Football* football)
{
	// TODO: target pushes the state arg between the GetGoalPosition retbuf call and its lea
	MapCoords goalPos = football->GetGoalPosition(football->IsPlayerOnHomeTeam(this) == 0);
	SetupMoveToPos(goalPos, VILLAGER_STATE_FOOTBALL_GOALIE);
	// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
	*(uint8_t*)&TargetThing = 1;
}

// BW1W120 0075ee00 BW1M119 01584970
void Villager::FootballGoalieIdleProcess(Football* football)
{
	FootballGoalieLookProcess(football);
}

// BW1W120 0075efc0 BW1M119 01584650
float Villager::FootballGoalieSavePriority(Football* football)
{
	return GRand::GameFloatRand(1.0f, __FILE__, __LINE__);
}

// BW1W120 0075efe0 BW1M119 015845e0
float Villager::FootballGoalieClearPriority(Football* football)
{
	return GRand::GameFloatRand(1.0f, __FILE__, __LINE__);
}

// BW1W120 0075f000 BW1M119 01584570
float Villager::FootballGoalieLookPriority(Football* football)
{
	return GRand::GameFloatRand(1.0f, __FILE__, __LINE__);
}

// BW1W120 0075f020 BW1M119 01584510
float Villager::FootballGoalieGoToBallPriority(Football* param_1)
{
	return 0.0;
}

// BW1W120 0075f030 BW1M119 015844a0
float Villager::FootballGoalieGoHomePriority(Football* param_1)
{
	return FootballAttackerGoHomePriority(param_1);
}

// BW1W120 0075f040 BW1M119 01584430
float Villager::FootballGoalieIdlePriority(Football* param_1)
{
	return 1.0f - FootballGoalieGoHomePriority(param_1);
}

// BW1W120 0075f060 BW1M119 01584390
float Villager::FootballGoaliePassPriority(Football* param_1)
{
	return FootballDefenderPassPriority(param_1);
}

// BW1W120 0075f070 BW1M119 015842c0
bool32_t Villager::FootballerIsTouchingBallPrecondition(Football* param_1)
{
	return IsTouching((Object*)param_1->GetBall(), GetHeight());
}

// BW1W120 0075f0a0 BW1M119 015841f0
bool Villager::FootballerIsNotTouchingBallPrecondition(Football* param_1)
{
	return !IsTouching((Object*)param_1->GetBall(), GetHeight());
}

// BW1W120 0075f0d0 BW1M119 01584150
bool Villager::FootballerIsNearestBallPrecondition(Football* football)
{
	football->IsPlayerOnHomeTeam(this);
	return football->GetHowCloseToBallIndex(this) == 0;
}

// BW1W120 0075f100 BW1M119 015840a0
bool Villager::FootballerIsNotNearestBallPrecondition(Football* football)
{
	football->IsPlayerOnHomeTeam(this);
	// TODO: our pop edi/pop esi land one slot earlier than the target's
	return 0 < (uint32_t)football->GetHowCloseToBallIndex(this);
}

// BW1W120 0075f270 BW1M119 01583c70
bool32_t Villager::StartMoveToPickUpBallForDeadBall()
{
	// TODO: block-ordering tie-break. Semantics correct but MSVC6 lays out
	// [cond][body][ret0] while target is [cond][ret0][body] (target jumps to the
	// body via `jne`, ret0 is fallthrough). Tried &&, ||-early-return, nested-if and
	// explicit `goto`-to-body forms — MSVC6 normalizes all to [body][ret0]. ~9.6%.
	if (GetFootball() != NULL && GetFootball()->GetBall() != NULL)
	{
		StartMoveToObject((Object*)GetFootball()->GetBall(), VILLAGER_STATE_ARRIVED_AT_PICK_UP_BALL_FOR_DEAD_BALL);
		return 1;
	}
	return 0;
}

// BW1W120 0075f2c0 BW1M119 01583bd0
bool32_t Villager::ArrivedAtPickUpBallForDeadBall()
{
	Football* football = GetFootball();
	LookAtObject(football, 2);
	SetTopState(VILLAGER_STATE_ARRIVED_AT_PUT_DOWN_BALL_FOR_DEAD_BALL_START);
	return 1;
}

// BW1W120 0075f2f0 BW1M119 01583b60
bool32_t Villager::ArrivedAtPutDownBallForDeadBallStart()
{
	PlayAnimThenSetState(VILLAGER_STATE_ARRIVED_AT_PUT_DOWN_BALL_FOR_DEAD_BALL_END, 1);
	return 1;
}

// BW1W120 0075f300 BW1M119 01583a30
bool32_t Villager::ArrivedAtPutDownBallForDeadBallEnd()
{
	Football* football = GetFootball();
	Ball*     ball = (Ball*)football->GetBall();
	if (IsTouching(ball, GetHeight()))
	{
		float ballAltitude = ball->Pos.altitude;
		if (GetHeight() > ballAltitude)
		{
			ball->KickBallAtDestination(football->Pos, 10.0f, 0);
		}
	}
	StartMoveToObject(ball, VILLAGER_STATE_ARRIVED_AT_PICK_UP_BALL_FOR_DEAD_BALL);
	football->SetPlayState(Football::FOOTBALL_STATES_1);
	return 1;
}
