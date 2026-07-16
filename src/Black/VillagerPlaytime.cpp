#include "Villager.h"

#include "Football.h"

// TODO: static-init cluster — the 44-byte atexit-registration fragment at 0x763080 and the
// 5-byte initializer jmp-thunk at 0x7630b0 are compiler-generated and cannot be authored
// from source.
extern "C" const float villager_playtime_float10p0_0x0099a9c0 = 10.0f;
extern "C" const float villager_playtime_num_days_in_year_0x0099a9c4 = 365.25f;
extern "C" const float villager_playtime_seconds_in_day_0x0099a9c8 = 86400.0f;

// Seconds per game year (365.25 * 86400); written only by FUN_007630c0 below, never read.
static float VillagerPlaytimeSecondsPerYear;

// BW1W120 007630c0 Villager::FUN_007630c0(void)
void Villager::FUN_007630c0()
{
	VillagerPlaytimeSecondsPerYear =
		villager_playtime_num_days_in_year_0x0099a9c4 * villager_playtime_seconds_in_day_0x0099a9c8;
}

// BW1W120 007630e0 BW1M100 1058c1c0 Villager::IsPlaytime(void)
bool Villager::IsPlaytime()
{
	return GetTown() != NULL;
}

// BW1W120 007630f0 BW1M100 1058c170 Villager::CheckPlaytimeAvailableToPlayPFootball(void)
bool32_t Villager::CheckPlaytimeAvailableToPlayPFootball()
{
	return 1;
}

// BW1W120 00763100 BW1M100 1058c120 Villager::CheckPlaytimeSettingUpPlayPFootball(void)
bool32_t Villager::CheckPlaytimeSettingUpPlayPFootball()
{
	return 1;
}

// BW1W120 00763110 BW1M100 1058c0d0 Villager::MoveToFootballPitchConstruction(void)
bool32_t Villager::MoveToFootballPitchConstruction()
{
	return 1;
}

// BW1W120 00763120 BW1M100 1058c070 Villager::FootballWalkToPosition(void)
bool32_t Villager::FootballWalkToPosition()
{
	MoveTo();
	return 1;
}

// BW1W120 00763130 BW1M100 100a0100 Villager::CheckSatisfyPlaytimeDesire(void)
bool32_t Villager::CheckSatisfyPlaytimeDesire()
{
	return 0;
}

// BW1W120 00763140 BW1M100 1058bf80 Villager::WaitForKickOff(void)
bool32_t Villager::WaitForKickOff()
{
	// TODO: +0x200 is a match-phase field on the opaque Football blob (field_0xc4); compared for
	// equality with 1 (kickoff ready?) here -- keep the raw offset until Football.h is fleshed out.
	if (*(int*)((char*)GetFootball() + 0x200) == 1)
		SetTopState(VILLAGER_STATE_FOOTBALL_ATTACKER);
	return 1;
}

// BW1W120 00763170 BW1M100 1058bee0 Villager::FootballMatchPaused(void)
bool32_t Villager::FootballMatchPaused()
{
	if (GetFootball() != NULL && GetFootball()->GetBall() != NULL)
		LookAtObject((GameThingWithPos*)GetFootball()->GetBall(), 1);
	return 1;
}

// BW1W120 007631b0 BW1M100 1058be20 Villager::FootballMexicanWave(void)
bool32_t Villager::FootballMexicanWave()
{
	if (GetTown() == NULL)
		return DecideWhatToDo();
	Football* football = GetFootball();
	LookAtObject(football, 2);
	PlayAnimThenSetState(VILLAGER_STATE_FOOTBALL_WATCH_MATCH, 1);
	return 1;
}

// BW1W120 007631f0 BW1M100 1058bce0 Villager::FootballWatchMatch(void)
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

// BW1W120 00763280 BW1M100 1058bbe0 Villager::ExitFootball(unsigned char)
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
