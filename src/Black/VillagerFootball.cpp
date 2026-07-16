#include "Villager.h"

#include <math.h> /* For sqrt */

#include "Ball.h"
#include "Football.h"
#include "Object.h"
#include "Rand.h"

// Metres-per-cell scale used by the kick-target fixed-point<->metres conversions below.
const float villager_football_float10p0_0x0099a980 = 10.0f;

// BW1W120 0075d130 Villager::AssignFootballSubState(void)
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

// BW1W120 0075d2d0 BW1M100 10582d90 Villager::FootballAttackerShootProcess(Football *)
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

// BW1W120 0075d500 BW1M100 10582920 Villager::FootballAttackerLobNearGoalProcess(Football *)
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

// BW1W120 0075da90 BW1M100 105821f0 Villager::FootballAttackerGoToBallProcess(Football *)
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

// BW1W120 0075d670 BW1M100 10582630 Villager::FootballAttackerDribbleProcess(Football *)
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

// BW1W120 0075dbd0 BW1M100 10582010 Villager::FootballAttackerIdleProcess(Football *)
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

// BW1W120 0075dd80 BW1M100 10581d30 Villager::FootballAttackerPassPriority(Football *)
float Villager::FootballAttackerPassPriority(Football* football)
{
	if (football->GetHowCloseToGoalIndex(this) - 1 >= 0)
	{
		return GRand::GameFloatRand(0.2f, __FILE__, __LINE__) + 0.8f;
	}
	return 0.0;
}

// BW1W120 0075ddc0 Villager::FootballAttackerLobNearGoalPriority(Football *)
float Villager::FootballAttackerLobNearGoalPriority(Football* param_1)
{
	return 0.0;
}

// BW1W120 0075def0 Villager::FootballAttackerGoToBallPriority(Football *)
float Villager::FootballAttackerGoToBallPriority(Football* param_1)
{
	return 0.0;
}

// BW1W120 0075e210 BW1M100 1057f760 Villager::FootballDefenderSaveProcess(Football *)
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

// BW1W120 0075e370 Villager::FootballDefenderClearProcess(Football *)
void Villager::FootballDefenderClearProcess(Football* football)
{
	FootballDefenderSaveProcess(football);
}

// BW1W120 0075e380 BW1M100 1057f400 Villager::FootballDefenderDribbleProcess(Football *)
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

// BW1W120 0075e560 BW1M100 1057f340 Villager::FootballDefenderMarkProcess(Football *)
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

// BW1W120 0075e5a0 BW1M100 1057f190 Villager::FootballDefenderGoToBallProcess(Football *)
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

// BW1W120 0075e6e0 BW1M100 1057efb0 Villager::FootballDefenderIdleProcess(Football *)
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

// BW1W120 0075e890 BW1M100 1057ed10 Villager::FootballDefenderSavePriority(Football *)
float Villager::FootballDefenderSavePriority(Football* football)
{
	return GRand::GameFloatRand(0.3f, __FILE__, __LINE__) + 0.7f;
}

// BW1W120 0075e8b0 BW1M100 1057ec90 Villager::FootballDefenderClearPriority(Football *)
float Villager::FootballDefenderClearPriority(Football* football)
{
	return GRand::GameFloatRand(0.4f, __FILE__, __LINE__) + 0.6f;
}

// BW1W120 0075e970 BW1M100 1057eae0 Villager::FootballDefenderMarkPriority(Football *)
float Villager::FootballDefenderMarkPriority(Football* football)
{
	return GRand::GameFloatRand(1.0f, __FILE__, __LINE__);
}

// BW1W120 0075e990 Villager::FootballDefenderGoToBallPriority(Football *)
float Villager::FootballDefenderGoToBallPriority(Football* param_1)
{
	return 0.0;
}

// BW1W120 0075e9a0 Villager::FootballDefenderGoHomePriority(Football *)
float Villager::FootballDefenderGoHomePriority(Football* param_1)
{
	return FootballAttackerGoHomePriority(param_1);
}

// BW1W120 0075e9b0 Villager::FootballDefenderIdlePriority(Football *)
float Villager::FootballDefenderIdlePriority(Football* param_1)
{
	return 1.0f - FootballDefenderGoHomePriority(param_1);
}

// BW1W120 0075e9d0 BW1M100 1057e8f0 Villager::FootballDefenderPassPriority(Football *)
float Villager::FootballDefenderPassPriority(Football* football)
{
	if (football->GetHowCloseToGoalIndex(this) - 1 >= 0)
	{
		return GRand::GameFloatRand(0.2f, __FILE__, __LINE__) + 0.8f;
	}
	return 0.0;
}

// BW1W120 0075eb70 BW1M100 1057cc00 Villager::FootballGoalieSaveProcess(Football *)
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

// BW1W120 0075ec50 Villager::FootballGoalieClearProcess(Football *)
void Villager::FootballGoalieClearProcess(Football* football)
{
	FootballGoalieSaveProcess(football);
}

// BW1W120 0075ecd0 BW1M100 1057c8e0 Villager::FootballGoalieGoToBallProcess(Football *)
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

// BW1W120 0075edb0 BW1M100 1057c7e0 Villager::FootballGoalieGoHomeProcess(Football *)
void Villager::FootballGoalieGoHomeProcess(Football* football)
{
	// TODO: target pushes the state arg between the GetGoalPosition retbuf call and its lea
	MapCoords goalPos = football->GetGoalPosition(football->IsPlayerOnHomeTeam(this) == 0);
	SetupMoveToPos(goalPos, VILLAGER_STATE_FOOTBALL_GOALIE);
	// TODO: byte flag @0x118 — see FootballAttackerGoToBallProcess.
	*(uint8_t*)&TargetThing = 1;
}

// BW1W120 0075ee00 Villager::FootballGoalieIdleProcess(Football *)
void Villager::FootballGoalieIdleProcess(Football* football)
{
	FootballGoalieLookProcess(football);
}

// BW1W120 0075efc0 BW1M100 1057c450 Villager::FootballGoalieSavePriority(Football *)
float Villager::FootballGoalieSavePriority(Football* football)
{
	return GRand::GameFloatRand(1.0f, __FILE__, __LINE__);
}

// BW1W120 0075efe0 BW1M100 1057c3e0 Villager::FootballGoalieClearPriority(Football *)
float Villager::FootballGoalieClearPriority(Football* football)
{
	return GRand::GameFloatRand(1.0f, __FILE__, __LINE__);
}

// BW1W120 0075f000 BW1M100 1057c370 Villager::FootballGoalieLookPriority(Football *)
float Villager::FootballGoalieLookPriority(Football* football)
{
	return GRand::GameFloatRand(1.0f, __FILE__, __LINE__);
}

// BW1W120 0075f020 Villager::FootballGoalieGoToBallPriority(Football *)
float Villager::FootballGoalieGoToBallPriority(Football* param_1)
{
	return 0.0;
}

// BW1W120 0075f030 Villager::FootballGoalieGoHomePriority(Football *)
float Villager::FootballGoalieGoHomePriority(Football* param_1)
{
	return FootballAttackerGoHomePriority(param_1);
}

// BW1W120 0075f040 Villager::FootballGoalieIdlePriority(Football *)
float Villager::FootballGoalieIdlePriority(Football* param_1)
{
	return 1.0f - FootballGoalieGoHomePriority(param_1);
}

// BW1W120 0075f060 Villager::FootballGoaliePassPriority(Football *)
float Villager::FootballGoaliePassPriority(Football* param_1)
{
	return FootballDefenderPassPriority(param_1);
}

// BW1W120 0075f070 Villager::FootballerIsTouchingBallPrecondition(Football *)
bool Villager::FootballerIsTouchingBallPrecondition(Football* param_1)
{
	return IsTouching((Object*)param_1->GetBall(), GetHeight());
}

// BW1W120 0075f0a0 Villager::FootballerIsNotTouchingBallPrecondition(Football *)
bool Villager::FootballerIsNotTouchingBallPrecondition(Football* param_1)
{
	return !IsTouching((Object*)param_1->GetBall(), GetHeight());
}

// BW1W120 0075f0d0 BW1M100 1057bf50 Villager::FootballerIsNearestBallPrecondition(Football *)
bool Villager::FootballerIsNearestBallPrecondition(Football* football)
{
	football->IsPlayerOnHomeTeam(this);
	return football->GetHowCloseToBallIndex(this) == 0;
}

// BW1W120 0075f100 BW1M100 1057bea0 Villager::FootballerIsNotNearestBallPrecondition(Football *)
bool Villager::FootballerIsNotNearestBallPrecondition(Football* football)
{
	football->IsPlayerOnHomeTeam(this);
	// TODO: our pop edi/pop esi land one slot earlier than the target's
	return 0 < (uint32_t)football->GetHowCloseToBallIndex(this);
}

// BW1W120 0075f270 Villager::StartMoveToPickUpBallForDeadBall(void)
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

// BW1W120 0075f2c0 Villager::ArrivedAtPickUpBallForDeadBall(void)
bool32_t Villager::ArrivedAtPickUpBallForDeadBall()
{
	Football* football = GetFootball();
	LookAtObject(football, 2);
	SetTopState(VILLAGER_STATE_ARRIVED_AT_PUT_DOWN_BALL_FOR_DEAD_BALL_START);
	return 1;
}

// BW1W120 0075f2f0 Villager::ArrivedAtPutDownBallForDeadBallStart(void)
bool32_t Villager::ArrivedAtPutDownBallForDeadBallStart()
{
	PlayAnimThenSetState(VILLAGER_STATE_ARRIVED_AT_PUT_DOWN_BALL_FOR_DEAD_BALL_END, 1);
	return 1;
}

// BW1W120 0075f300 BW1M100 1057b840 Villager::ArrivedAtPutDownBallForDeadBallEnd(void)
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
