#include "Debug.h"

#include <stdio.h>   /* For vsprintf */
#include <windows.h> /* For LHSystem.h's HINSTANCE, LRESULT */

#include <Lionhead/LHLib/ver5.0/LHSystem.h>  /* For LHSys */
#include <Lionhead/LHLib/ver5.0/LHTimer.inl> /* For LHTimer */

#include "ColourConstants.h" /* For White */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"

static const float GDebugInitialValue2d284 = 1000.0f;

GDebug::GDebug()
{
	field_0x0.Start();
	field_0x2d294 = 1;
	field_0x13c = 1;
	field_0x12c = 0;
	ShowVillagerDebugText = false;
	field_0x124 = 0;
	field_0x120 = 0;
	ShowReactions = false;
	field_0x118 = 0;
	field_0x128 = 0;
	field_0x130 = 0;
	ShowHowImpressed = false;
	field_0x2d29c = false;
	field_0x138 = 0;
	field_0x2d290 = false;
	field_0x2d28c = 0;
	ShowIndirectFeedbackLessons = false;
	ShowCreatureStatistics = false;
	field_0x2d298 = 0;
	LogRand = false;
	LogAllocations = false;
	LogCollide = false;
	LogCreatures = false;
	LogTownDesire = false;
	LogVillagers = false;
	for (int category = 0; category < GDEBUG_NUM_CATEGORIES; category++)
	{
		CategoryEnabled[category] = false;
	}
	field_0x2d284 = (int)GDebugInitialValue2d284;
	field_0x2d288 = 0;
}

GDebug::~GDebug() {}

void GDebug::SetMessage(char* fmt, ...)
{
	if (CategoryEnabled[0])
	{
		va_list args;
		va_start(args, fmt);
		AddMessage(0, fmt, args);
	}
}

void GDebug::SetMessage(uint16_t category, char* fmt, ...)
{
	if (CategoryEnabled[category])
	{
		va_list args;
		va_start(args, fmt);
		AddMessage(category, fmt, args);
	}
}

void GDebug::AddMessage(uint16_t category, char* fmt, va_list args)
{
	int slot = -1;
	for (int i = 0; i < GDEBUG_MESSAGES_PER_CATEGORY; i++)
	{
		if (Messages[category][i][0] == '\0')
		{
			slot = i;
			break;
		}
	}
	if (slot >= 0)
	{
		vsprintf(Messages[category][slot], fmt, args);
	}
}

void GDebug::DrawMessages(long x, long y)
{
	int locked = LHSys::GetScreen().isLocked;
	int wasLocked = locked;
	for (int i = 0; i < GDEBUG_MESSAGES_PER_CATEGORY; i++)
	{
		char* message = Messages[GDEBUG_FIRST_DRAWN_CATEGORY][i];
		if (message[0] != '\0')
		{
			if (!locked)
			{
				if (LHSys::GetScreen().Lock(0))
				{
					continue;
				}
				locked = true;
			}
			LHSys::GetText().Draw(x, y, message, 1);
			y += LHSys::GetText().LineHeight;
		}
	}
	for (int category = 0; category < GDEBUG_NUM_CATEGORIES; category++)
	{
		if (CategoryEnabled[category] && category != GDEBUG_FIRST_DRAWN_CATEGORY)
		{
			for (int i = 0; i < GDEBUG_MESSAGES_PER_CATEGORY; i++)
			{
				char* message = Messages[category][i];
				if (message[0] != '\0')
				{
					if (!locked)
					{
						if (LHSys::GetScreen().Lock(0))
						{
							continue;
						}
						locked = true;
					}
					LHSys::GetText().Draw(x, y, message, 1);
					y += LHSys::GetText().LineHeight;
				}
			}
		}
	}
	if (locked && !wasLocked)
	{
		LHSys::GetScreen().Unlock();
	}
}

void GDebug::ClearMessages(long index)
{
	if (index == -1)
	{
		for (int i = 0; i < GDEBUG_MESSAGES_PER_CATEGORY; i++)
		{
			for (int category = 0; category < GDEBUG_NUM_CATEGORIES; category++)
			{
				Messages[category][i][0] = '\0';
			}
		}
	}
	else if (index < GDEBUG_MESSAGES_PER_CATEGORY)
	{
		Messages[0][index][0] = '\0';
	}
}
