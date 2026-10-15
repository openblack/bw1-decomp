#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreaturePlan.h"

#include "ColourConstants.h" /* For White */
// The BW1W100/BW1W110 build of this unit has no std::basic_string initializers.
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string> /* For the std::basic_string instantiations */
#endif

void CreaturePlan::SetToZero()
{
	ObjectToUse = NULL;
	ObjectToActOn = NULL;
	ActivityObject = NULL;
	creature_action = CREATURE_ERROR;
	field_0x2c = 0.0f;
	ActionPriority = 0.0f;
	field_0x24 = 0.0f;
	field_0x20 = 0.0f;
	ActivityPriority = 0.0f;
}

CreaturePlan::~CreaturePlan() {}
