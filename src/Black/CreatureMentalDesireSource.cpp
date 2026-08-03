#include "CreatureMentalDesireSource.h"

#include "ColourConstants.h"           /* For White */
#include "CreatureInitialDesireInfo.h" /* For struct CreatureInitialDesireInfo */
#include "CreatureMentalDesire.h"      /* For struct CreatureDesires */

// BW1W120 004de270 BW1M100 1025d410 CreatureDesires::InitialiseSources(void)
void CreatureDesires::InitialiseSources()
{
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		while (SourceLists[i].head != NULL)
		{
			CreatureDesireSource* payload = SourceLists[i].head->payload;
			SourceLists[i].Remove(payload);
			delete payload;
		}

		for (int j = 0; j < 8; j++)
		{
			CREATURE_DESIRE_SOURCE sourceType = CreatureInitialDesireInfo::g_CreatureInitialDesireInfos[i].Sources[j];
			if (sourceType != INVALID_CREATURE_DESIRE_SOURCE)
			{
				CreatureDesireSource* source = new CreatureDesireSource(sourceType, creature);
				if (source)
					SourceLists[i].AddToEnd(source);
			}
		}
	}
}
