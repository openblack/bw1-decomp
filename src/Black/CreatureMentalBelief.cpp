#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureMentalBelief.h"

#include "ColourConstants.h" /* For White */

uint32_t CreatureBelief::GetNumAttributes()
{
	return 0;
}

Attribute* CreatureBelief::GetNthAttribute(unsigned long index)
{
	return NULL;
}

Attribute** CreatureBelief::GetNthAttributePtr(unsigned long index)
{
	return NULL;
}

CreatureBelief* CreatureBelief::Copy()
{
	return NULL;
}

CreatureBelief* CreatureBelief::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                      CREATURE_ACTION action, float* usefulness)
{
	return NULL;
}
