#include "MaxFloat.h"
#include "GameTimeConstants.h"
#include "WhiteColour.h"
#include "Script.h"

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For PI_F */
#include <Lionhead/LH3DLib/development/LH3DSky.h>

#include "Game.h"
#include "GameInfo.h"
#ifdef VERSION_BW1WCI
#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech::g_info_transform */
#include <Lionhead/LH3DLib/development/LH3DText.h> /* For CHAR2WCHAR, struct GatheringText */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>        /* For LHSys::TheSystem */

#include "HelpSystem.h"
#endif
#include "ScriptTimer.h"
#include "SpellDispenser.h"

#define SCRIPT_SECONDS_PER_MINUTE 60
#define SCRIPT_SECONDS_PER_HOUR   3600.0f
#define SCRIPT_TM_YEAR_BASE       1900.0f
#ifdef VERSION_BW1WCI
#define SCRIPT_STOP_WATCH_REFERENCE_WIDTH    800.0f
#define SCRIPT_STOP_WATCH_HUNDREDTHS         100
#define SCRIPT_STOP_WATCH_WIDTH_IN_DIGITS    6.5f
#define SCRIPT_STOP_WATCH_MARGIN             2
#define SCRIPT_STOP_WATCH_DEPTH_SCALE        1.5f
#define SCRIPT_STOP_WATCH_SHADOW_ALPHA       0x7F000000
#define SCRIPT_STOP_WATCH_SHADOW_OFFSET      1.0f
#define SCRIPT_STOP_WATCH_SEPARATOR_INDEX    2
#define SCRIPT_STOP_WATCH_LAST_SECONDS_INDEX 4
#define SCRIPT_STOP_WATCH_GAP_INDEX          5
#define SCRIPT_STOP_WATCH_HUNDREDTHS_SCALE   0.66f
#define SCRIPT_STOP_WATCH_HUNDREDTHS_DROP    0.35f
#define SCRIPT_STOP_WATCH_FADE               4096.0f
#define SCRIPT_COUNTDOWN_TIMER_SIZE          40.0f
#define SCRIPT_COUNTDOWN_TIMER_RED_TIME      10.0f
#define SCRIPT_COUNTDOWN_TIMER_YELLOW_TIME   15.0f
#define SCRIPT_COUNTDOWN_TIMER_GREEN_TIME    20.0f
#endif

void GScript::SetGameTime()
{
	float time = g_scriptDLL->FLOAT_POP();
	GGameInfo::Info.ForceVisualTime(LH3DSky::OldSkoolTime2Time(time));
}

void GScript::GetGameTime()
{
	g_scriptDLL->FLOAT_PUSH(LH3DSky::Time2OldSkoolTime(GGameInfo::Info.GetVisualTime()));
}

void GScript::GameTimeOnOff()
{
	bool32_t on = g_scriptDLL->ULONG_POP();
	GGameInfo::Info.SetVisualTimeScale(on != false);
}

void GScript::MoveGameTime()
{
	float duration = g_scriptDLL->FLOAT_POP();
	float time = g_scriptDLL->FLOAT_POP();
	GGameInfo::Info.SetVisualTime(LH3DSky::OldSkoolTime2Time(time), duration);
}

void GScript::GetRealTime()
{
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame(), "This is not multiplayer friendly yet!");
	time_t now;
	time(&now);
	tm*   local = localtime(&now);
	float seconds = local->tm_sec + (float)(local->tm_min * SCRIPT_SECONDS_PER_MINUTE);
	float hours = local->tm_hour + (seconds / SCRIPT_SECONDS_PER_HOUR);
	g_scriptDLL->FLOAT_PUSH(hours);
}

void GScript::GetRealDay()
{
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame(), "This is not multiplayer friendly yet!");
	time_t now;
	time(&now);
	tm*   local = localtime(&now);
	float day = local->tm_mday;
	g_scriptDLL->FLOAT_PUSH(day);
}

void GScript::GetRealWeekDay()
{
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame(), "This is not multiplayer friendly yet!");
	time_t now;
	time(&now);
	tm* local = localtime(&now);
	g_scriptDLL->FLOAT_PUSH(local->tm_wday + 1.0f);
}

void GScript::GetRealMonth()
{
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame(), "This is not multiplayer friendly yet!");
	time_t now;
	time(&now);
	tm* local = localtime(&now);
	g_scriptDLL->FLOAT_PUSH(local->tm_mon + 1.0f);
}

void GScript::GetRealYear()
{
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame(), "This is not multiplayer friendly yet!");
	time_t now;
	time(&now);
	tm* local = localtime(&now);
	g_scriptDLL->FLOAT_PUSH(local->tm_year + SCRIPT_TM_YEAR_BASE);
}

void GScript::StartCountDownTimer()
{
	float seconds = g_scriptDLL->FLOAT_POP();
#ifdef VERSION_BW1WCI
	bool32_t countsUp = g_scriptDLL->ULONG_POP();
	GGame::g_game->script->InitialiseCountDownTimer(seconds, countsUp);
#else
	GGame::g_game->script->InitialiseCountDownTimer(seconds);
#endif
}

void GScript::RemoveCountDownTimer()
{
	GGame::g_game->script->CountDownTimerEnabled = false;
}

void GScript::GetCountDownTimer()
{
	g_scriptDLL->FLOAT_PUSH(GGame::g_game->script->GetCountDownTimerRemainingTime());
}

void GScript::CountDownTimerExists()
{
	g_scriptDLL->PUSH((void*)GGame::g_game->script->CountDownTimerEnabled, VMType_BOOLEAN);
}

#ifndef VERSION_BW1WCI
void GScript::HideCountDownTimer()
{
	GGame::g_game->script->CountDownTimerVisible = false;
}

void GScript::RevealCountDownTimer()
{
	GGame::g_game->script->CountDownTimerVisible = true;
}
#endif

void GScript::GetMoonPercentage()
{
	float percentage;
	if (LH3DSky::moonphase < PI_F)
	{
		percentage = 1.0f - LH3DSky::moonphase / PI_F;
	}
	else
	{
		percentage = (LH3DSky::moonphase - PI_F) / PI_F;
	}
	g_scriptDLL->FLOAT_PUSH(percentage);
}

void GScript::SetTimerTime()
{
	float             seconds = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsScriptTimer() || thing->IsSpellDispenser(), "Invalid script thing");
		if (thing->IsScriptTimer())
		{
			((ScriptTimer*)thing)->SetTime(seconds);
		}
		else if (thing->IsSpellDispenser())
		{
			uint32_t ticks = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(seconds);
			if (ticks > 0)
			{
				((SpellDispenser*)thing)->SetProduceEvery(ticks);
			}
		}
	}
}

void GScript::GetTimeRemaining()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsScriptTimer(), "Invalid script thing");
		if (thing->IsScriptTimer())
		{
			g_scriptDLL->FLOAT_PUSH(((ScriptTimer*)thing)->GetTimeInSecondsRemaining());
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::GetTimeSinceSet()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsScriptTimer(), "Invalid script thing");
		if (thing->IsScriptTimer())
		{
			g_scriptDLL->FLOAT_PUSH(((ScriptTimer*)thing)->GetTimeInSecondsSinceSet());
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(MaxFloat);
}

void GScript::SetGameTimeProperties()
{
	float percentageDusk = g_scriptDLL->FLOAT_POP();
	float percentageNight = g_scriptDLL->FLOAT_POP();
	float duration = g_scriptDLL->FLOAT_POP();
	GGameInfo::Info.SetVisualTimeCycle(duration, percentageNight, percentageDusk);
}

void GScript::ResetGameTimeProperties()
{
	GGameInfo::Info.SetVisualTimeCycle(GGameInfo::DefaultVisualTimeCycle[0], GGameInfo::DefaultVisualTimeCycle[1],
	                                   GGameInfo::DefaultVisualTimeCycle[2]);
}

#ifdef VERSION_BW1WCI
void GScript::InitialiseCountDownTimer(float seconds, bool32_t counts_up)
{
	CountDownTimerCountsUp = counts_up;
	CountDownTimerEnabled = true;
	CountDownTimerRemaining = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(seconds);
}

void GScript::ProcessTimer()
{
	if (CountDownTimerEnabled)
	{
		if (CountDownTimerCountsUp)
		{
			CountDownTimerRemaining++;
		}
		else
		{
			CountDownTimerRemaining--;
		}
	}
}

float GScript::GetCountDownTimerRemainingTime()
{
	float remaining = (int)CountDownTimerRemaining;
	return remaining * GGameInfo::Info.MillisecondsPerGameTurn * SCRIPT_SECONDS_PER_MILLISECOND;
}

bool32_t GScript::IsCountDownTimerDrawn()
{
	return CountDownTimerEnabled && CountDownTimerDraw != SCRIPT_COUNTDOWN_DRAW_NONE;
}

void GScript::DrawStopWatch(SCRIPT_COUNTDOWN_DRAW draw, float time, unsigned long colour, float size)
{
	static float   digitWidth = 0.0f;
	GatheringText* font = GatheringText::gamefont[GAME_FONT_DEFAULT];
	size = LHSys::TheSystem.screen.width * size * (1.0f / SCRIPT_STOP_WATCH_REFERENCE_WIDTH);
	if (size < 1.0f || font == NULL || draw == SCRIPT_COUNTDOWN_DRAW_NONE || draw >= SCRIPT_COUNTDOWN_DRAW_LAST)
	{
		return;
	}
	if (digitWidth == 0.0f)
	{
		for (int digit = '0'; digit <= '9'; digit++)
		{
			float charWidth = font->GetStringWidth(CHAR2WCHAR((char*)&digit), 1, size);
			if (charWidth > digitWidth)
			{
				digitWidth = charWidth;
			}
		}
		digitWidth /= size;
	}
	int     hundredths = abs((int)(time * SCRIPT_STOP_WATCH_HUNDREDTHS + 0.5f));
	wchar_t text[32];
	swprintf(text, L"%02d%c%02d %02d", hundredths / (SCRIPT_STOP_WATCH_HUNDREDTHS * SCRIPT_SECONDS_PER_MINUTE),
	         hundredths % SCRIPT_STOP_WATCH_HUNDREDTHS < SCRIPT_STOP_WATCH_HUNDREDTHS / 2 ? L':' : L' ',
	         hundredths / SCRIPT_STOP_WATCH_HUNDREDTHS % SCRIPT_SECONDS_PER_MINUTE,
	         hundredths % SCRIPT_STOP_WATCH_HUNDREDTHS);
	float textWidth = digitWidth * size * SCRIPT_STOP_WATCH_WIDTH_IN_DIGITS;
	float x = 0.0f;
	float y = 0.0f;
	int   border = 0;
	if (GGame::g_game->help_system->WideScreen)
	{
		border =
			(int)(LH3DTech::g_info_transform.resolution.y - LH3DTech::g_info_transform.resolution.x * (9.0f / 16.0f)) /
			2;
	}
	switch (draw)
	{
	case SCRIPT_COUNTDOWN_DRAW_TOP_LEFT:
	case SCRIPT_COUNTDOWN_DRAW_TOP_RIGHT:
	case SCRIPT_COUNTDOWN_DRAW_TOP_CENTRE:
		y = border + SCRIPT_STOP_WATCH_MARGIN;
		break;
	case SCRIPT_COUNTDOWN_DRAW_CENTRE:
		y = LHSys::TheSystem.screen.height * 0.5f - size * 0.5f;
		break;
	case SCRIPT_COUNTDOWN_DRAW_BOTTOM_LEFT:
	case SCRIPT_COUNTDOWN_DRAW_BOTTOM_RIGHT:
	case SCRIPT_COUNTDOWN_DRAW_BOTTOM_CENTRE:
		y = LHSys::TheSystem.screen.height - size - SCRIPT_STOP_WATCH_MARGIN - border;
		break;
	}
	switch (draw)
	{
	case SCRIPT_COUNTDOWN_DRAW_TOP_LEFT:
	case SCRIPT_COUNTDOWN_DRAW_BOTTOM_LEFT:
		x = SCRIPT_STOP_WATCH_MARGIN;
		break;
	case SCRIPT_COUNTDOWN_DRAW_CENTRE:
	case SCRIPT_COUNTDOWN_DRAW_TOP_CENTRE:
	case SCRIPT_COUNTDOWN_DRAW_BOTTOM_CENTRE:
		x = LHSys::TheSystem.screen.width * 0.5f - textWidth * 0.5f;
		break;
	case SCRIPT_COUNTDOWN_DRAW_TOP_RIGHT:
	case SCRIPT_COUNTDOWN_DRAW_BOTTOM_RIGHT:
		x = LHSys::TheSystem.screen.width - textWidth - SCRIPT_STOP_WATCH_MARGIN;
		break;
	}
	int           length = wcslen(text);
	float         z = LH3DTech::g_info_transform.NearClip * SCRIPT_STOP_WATCH_DEPTH_SCALE;
	unsigned long shadow = (colour >> 1) & SCRIPT_STOP_WATCH_SHADOW_ALPHA;
	for (int i = 0; i < length; i++)
	{
		float charSize = size;
		if (i > SCRIPT_STOP_WATCH_LAST_SECONDS_INDEX)
		{
			charSize = size * SCRIPT_STOP_WATCH_HUNDREDTHS_SCALE;
			if (i == SCRIPT_STOP_WATCH_GAP_INDEX)
			{
				y += charSize * SCRIPT_STOP_WATCH_HUNDREDTHS_DROP;
			}
		}
		float advance = digitWidth * charSize;
		if (i == SCRIPT_STOP_WATCH_SEPARATOR_INDEX || i == SCRIPT_STOP_WATCH_GAP_INDEX)
		{
			advance *= 0.5f;
		}
		float charWidth = font->GetStringWidth(&text[i], 1, charSize);
		float charX = (advance - charWidth) * 0.5f + x;
		font->DrawTextRaw(&text[i], 1, charX + SCRIPT_STOP_WATCH_SHADOW_OFFSET, y + SCRIPT_STOP_WATCH_SHADOW_OFFSET, z,
		                  charSize, &LH3DColor(shadow), 0, NULL, 0.0f, SCRIPT_STOP_WATCH_FADE);
		font->DrawTextRaw(&text[i], 1, charX, y, z, charSize, &LH3DColor(colour), 0, NULL, 0.0f,
		                  SCRIPT_STOP_WATCH_FADE);
		x += advance;
	}
}

void GScript::DrawCountDownTimer()
{
	if (CountDownTimerEnabled && IsCountDownTimerDrawn())
	{
		char  text[256];
		float remaining = GetCountDownTimerRemainingTime();
		sprintf(text, "Time: %.1f", remaining);
		unsigned long red = 0;
		unsigned long blue = 0;
		unsigned long green = 0;
		if (remaining < SCRIPT_COUNTDOWN_TIMER_RED_TIME)
		{
			red = LH3D_COLOR_CHANNEL_MAX;
		}
		else if (remaining < SCRIPT_COUNTDOWN_TIMER_YELLOW_TIME)
		{
			green = LH3D_COLOR_CHANNEL_MAX;
			red = LH3D_COLOR_CHANNEL_MAX;
		}
		else if (remaining < SCRIPT_COUNTDOWN_TIMER_GREEN_TIME)
		{
			green = LH3D_COLOR_CHANNEL_MAX;
		}
		else
		{
			blue = LH3D_COLOR_CHANNEL_MAX;
			green = LH3D_COLOR_CHANNEL_MAX;
			red = LH3D_COLOR_CHANNEL_MAX;
		}
		unsigned long colour = (((((LH3D_COLOR_OPAQUE << 8) + red) << 8) + green) << 8) + blue;
		DrawStopWatch(CountDownTimerDraw, remaining, colour, SCRIPT_COUNTDOWN_TIMER_SIZE);
	}
}

void GScript::SetCountDownTimerDraw()
{
	GGame::g_game->script->CountDownTimerDraw = (SCRIPT_COUNTDOWN_DRAW)g_scriptDLL->ULONG_POP();
}

void GScript::GetCountDownTimerTime()
{
	g_scriptDLL->FLOAT_PUSH(GGame::g_game->script->GetCountDownTimerRemainingTime());
}
#endif
