#include "Villager.h"

#include "Football.h"
#include "Object.h"

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

// BW1W120 0075e370 Villager::FootballDefenderClearProcess(Football *)
void Villager::FootballDefenderClearProcess(Football* football)
{
	FootballDefenderSaveProcess(football);
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

// BW1W120 0075ec50 Villager::FootballGoalieClearProcess(Football *)
void Villager::FootballGoalieClearProcess(Football* football)
{
	FootballGoalieSaveProcess(football);
}

// BW1W120 0075ee00 Villager::FootballGoalieIdleProcess(Football *)
void Villager::FootballGoalieIdleProcess(Football* football)
{
	FootballGoalieLookProcess(football);
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

// BW1W120 0075f270 Villager::StartMoveToPickUpBallForDeadBall(void)
bool32_t Villager::StartMoveToPickUpBallForDeadBall()
{
	// TODO: block-ordering tie-break. Semantics correct but MSVC6 lays out
	// [cond][body][ret0] while target is [cond][ret0][body] (target jumps to the
	// body via `jne`, ret0 is fallthrough). Tried &&, ||-early-return and nested-if
	// forms — all produce identical [body][ret0] layout. ~9.6% (pure reorder).
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
