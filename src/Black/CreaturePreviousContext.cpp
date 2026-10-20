#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureContext.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"

PreviousContextStack::PreviousContextStack(Creature* creature, void (Creature::*process_oldest_context)())
{
	Size = 0;
	NextSlot = 0;
	this->creature = creature;
	ProcessOldestContext = process_oldest_context;
}

PreviousContextStack::~PreviousContextStack()
{
	for (unsigned long i = 0; i < NUM_PREVIOUS_CONTEXTS; i++)
	{
		contexts[i].CleanUp();
	}
}

bool32_t PreviousContextStack::HasContexts()
{
	return Size > 0;
}

void PreviousContextStack::Push(const CreatureContext& context)
{
	if (Size > 0)
	{
		long top = NextSlot - 1;
		if (top < 0)
		{
			top += NUM_PREVIOUS_CONTEXTS;
		}
		if (contexts[top].FinishedSuccessfully == false)
		{
			contexts[top].CleanUp();
			contexts[top] = context;
			return;
		}
	}

	if (Size == NUM_PREVIOUS_CONTEXTS)
	{
		(creature->*ProcessOldestContext)();
	}
	contexts[NextSlot].CleanUp();
	contexts[NextSlot] = context;

	NextSlot++;
	if (NextSlot >= NUM_PREVIOUS_CONTEXTS)
	{
		NextSlot = 0;
	}
	Size++;
	if (Size > NUM_PREVIOUS_CONTEXTS)
	{
		Size = NUM_PREVIOUS_CONTEXTS;
	}
}

CreatureContext* PreviousContextStack::GetTop()
{
	return GetNth(0);
}

CreatureContext* PreviousContextStack::GetNth(unsigned long n)
{
	long index = NextSlot - 1 - n;
	if (index < 0)
	{
		index += NUM_PREVIOUS_CONTEXTS;
	}
	return &contexts[index];
}

unsigned long PreviousContextStack::GetSize()
{
	return Size;
}
