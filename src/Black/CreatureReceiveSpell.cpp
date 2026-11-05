#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "CreatureReceiveSpell.h"

#include "ColourConstants.h" /* For White */

CreatureReceiveSpell::QueueData::QueueData()
{
	SpellType = 0;
	Intensity = 0;
	Caster = NULL;
}
