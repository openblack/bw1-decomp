#include "Villager.h"

#include "Football.h"

// BW1W120 007630e0 BW1M119 01593980
bool Villager::IsPlaytime()
{
	return GetTown() != NULL;
}

// BW1W120 007630f0 BW1M119 01593930
bool32_t Villager::CheckPlaytimeAvailableToPlayPFootball()
{
	return 1;
}

// BW1W120 00763100 BW1M119 015938e0
bool32_t Villager::CheckPlaytimeSettingUpPlayPFootball()
{
	return 1;
}

// BW1W120 00763110 BW1M119 01593890
bool32_t Villager::MoveToFootballPitchConstruction()
{
	return 1;
}

// BW1W120 00763120 BW1M119 01593830
bool32_t Villager::FootballWalkToPosition()
{
	MoveTo();
	return 1;
}

// BW1W120 00763130 BW1M119 010a1e70
bool32_t Villager::CheckSatisfyPlaytimeDesire()
{
	return 0;
}

// BW1W120 00763140 BW1M119 01593750
bool32_t Villager::WaitForKickOff()
{
	// TODO: +0x200 is a match-phase field on the opaque Football blob (field_0xc4); compared for
	// equality with 1 (kickoff ready?) here -- keep the raw offset until Football.h is fleshed out.
	if (*(int*)((char*)GetFootball() + 0x200) == 1)
		SetTopState(VILLAGER_STATE_FOOTBALL_ATTACKER);
	return 1;
}

// BW1W120 00763170 BW1M119 015936b0
bool32_t Villager::FootballMatchPaused()
{
	if (GetFootball() != NULL && GetFootball()->GetBall() != NULL)
		LookAtObject((GameThingWithPos*)GetFootball()->GetBall(), 1);
	return 1;
}

// BW1W120 007631b0 BW1M119 015935f0
bool32_t Villager::FootballMexicanWave()
{
	if (GetTown() == NULL)
		return DecideWhatToDo();
	Football* football = GetFootball();
	LookAtObject(football, 2);
	PlayAnimThenSetState(VILLAGER_STATE_FOOTBALL_WATCH_MATCH, 1);
	return 1;
}

// BW1W120 007631f0 BW1M119 015934b0
bool32_t Villager::FootballWatchMatch()
{
	if (GetTown() == NULL)
		return DecideWhatToDo();
	Football*         football = GetFootball();
	GameThingWithPos* ball = (GameThingWithPos*)football->GetBall();
	if (ball == NULL)
		return DecideWhatToDo();
	// TODO: +0x200 is a match-phase field on the opaque Football blob (field_0xc4); values seen: 0
	// (pre-kickoff - look at the football), 1 (in play - look at the ball), 4 (match over).
	int matchPhase = *(int*)((char*)football + 0x200);
	if (matchPhase == 0)
		return LookAtObject(football, 1);
	if (matchPhase == 1)
		return LookAtObject(ball, 1);
	if (matchPhase == 4)
	{
		Flags &= ~0x80;
		if (DecideWhatToDo() != 1)
			GoHome();
	}
	return 1;
}

// BW1W120 00763280 BW1M119 015933b0
bool32_t Villager::ExitFootball(unsigned char exit_state)
{
	circle_hug_info.Reset(this);
	if (IsStateExitFunctionSameAs((VILLAGER_STATES)exit_state) || exit_state == 1 || exit_state == 2)
		return 1;
	Football* football = GetFootball();
	// TODO: Villager* field at Football+0x254 not yet modelled in Football.h
	if (*(Villager**)((char*)football + 0x254) == this)
		*(Villager**)((char*)football + 0x254) = NULL;
	if (football->RemoveVillagerFromTeam(this) != 1)
		football->RemoveVillagerFromMexicanWave(this);
	Flags &= ~0x80;
	return 1;
}
