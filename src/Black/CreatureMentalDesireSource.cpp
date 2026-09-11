#include "CreatureMentalDesireSource.h"

#include "ColourConstants.h"           /* For White */
#include "CreatureInitialDesireInfo.h" /* For struct CreatureInitialDesireInfo */
#include "CreatureMentalDesire.h"      /* For struct CreatureDesires */

// BW1W120 004de270 BW1M100 1025d410 CreatureDesires::InitialiseSources(void)
void CreatureDesires::InitialiseSources()
{
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		for (;;)
		{
			LHLinkedNode<CreatureDesireSource>* node = SourceLists[i].head;
			if (node == NULL)
			{
				break;
			}
			CreatureDesireSource* payload = node->payload;
			SourceLists[i].Remove(payload);
			delete payload;
		}

		for (int j = 0; j < 8; j++)
		{
			if (CreatureInitialDesireInfo::g_CreatureInitialDesireInfos[i].Sources[j] != INVALID_CREATURE_DESIRE_SOURCE)
			{
				CreatureDesireSource* source = new ("C:\\dev\\MP\\Black\\CreatureMentalDesireSource.cpp", 117)
					CreatureDesireSource(CreatureInitialDesireInfo::g_CreatureInitialDesireInfos[i].Sources[j],
				                         creature);
				if (source)
					SourceLists[i].AddToEnd(source);
			}
		}
	}
}
