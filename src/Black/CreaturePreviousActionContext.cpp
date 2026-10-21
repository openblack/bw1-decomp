#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureAction.h"

#include "ColourConstants.h" /* For White */

#ifndef VERSION_BW1WCI
PreviousActionContextStack::PreviousActionContextStack()
{
	for (int i = 0; i < NUM_CREATURE_ACTIONS; i++)
	{
		Size[i] = 0;
		NextSlot[i] = 0;
	}
}

bool32_t PreviousActionContextStack::HasContexts(CREATURE_ACTION action)
{
	return Size[action] > 0;
}

void PreviousActionContextStack::Push(CREATURE_ACTION action, const CreatureActionContext& context)
{
	contexts[action][NextSlot[action]] = context;

	NextSlot[action]++;
	if (NextSlot[action] >= NUM_PREVIOUS_ACTION_CONTEXTS)
	{
		NextSlot[action] = 0;
	}
	Size[action]++;
	if (Size[action] > NUM_PREVIOUS_ACTION_CONTEXTS)
	{
		Size[action] = NUM_PREVIOUS_ACTION_CONTEXTS;
	}
}

CreatureActionContext* PreviousActionContextStack::GetTop(CREATURE_ACTION action)
{
	return GetNth(action, 0);
}

CreatureActionContext* PreviousActionContextStack::GetNth(CREATURE_ACTION action, unsigned long n)
{
	long index = NextSlot[action] - 1 - n;
	if (index < 0)
	{
		index += NUM_PREVIOUS_ACTION_CONTEXTS;
	}
	return &contexts[action][index];
}

unsigned long PreviousActionContextStack::GetSize(CREATURE_ACTION action)
{
	return Size[action];
}
#endif // VERSION_BW1WCI
