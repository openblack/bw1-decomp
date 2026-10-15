#include "GameTimeConstants.h"
#include "ScriptTimer.h"
#include "Game.h"
#include "GameInfo.h"
#include "GameOSFile.h" /* For class GameOSFile */

#if defined(VERSION_BW1W100)
#define SCRIPT_TIMER_FILE "C:\\dev\\black\\ScriptTimer.cpp"
#elif defined(VERSION_BW1W110)
#define SCRIPT_TIMER_FILE "C:\\dev\\Black\\ScriptTimer.cpp"
#else
#define SCRIPT_TIMER_FILE "C:\\dev\\MP\\Black\\ScriptTimer.cpp"
#endif

ScriptTimer* ScriptTimer::Create(float seconds)
{
	ScriptTimer* timer = new (SCRIPT_TIMER_FILE, 13) ScriptTimer();
	if (timer != NULL)
	{
		timer->SetTime(seconds);
	}
	return timer;
}

// BW1W120 00711600 BW1M119 0150e230
SCRIPT_OBJECT_TYPE ScriptTimer::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_TIMER;
}

void ScriptTimer::SetTime(unsigned long time)
{
	field_0x28 = GGame::g_game->data.GameTurn;
	field_0x2c = time;
}

void ScriptTimer::SetTime(float seconds)
{
	SetTime((unsigned long)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(seconds));
}

float ScriptTimer::GetTimeInSecondsRemaining()
{
	int   turns = (int)(field_0x2c - GetTurnsSinceSet()) < 0 ? 0 : field_0x2c - GetTurnsSinceSet();
	float time = (float)turns;
	return time * GGameInfo::Info.MillisecondsPerGameTurn * 0.001f;
}

int ScriptTimer::GetTurnsSinceSet()
{
	return GGame::g_game->data.GameTurn - field_0x28;
}

float ScriptTimer::GetTimeInSecondsSinceSet()
{
	return (float)GetTurnsSinceSet() * GGameInfo::Info.MillisecondsPerGameTurn * 0.001f;
}

bool32_t ScriptTimer::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadIt(field_0x28);
		file.ReadIt(field_0x2c);
		return true;
	}
	return false;
}

bool32_t ScriptTimer::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		file.WriteIt(field_0x28);
		file.WriteIt(field_0x2c);
		return true;
	}
	return false;
}
