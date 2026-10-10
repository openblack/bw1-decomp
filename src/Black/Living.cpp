#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "Living.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "DataPath.h"

uint32_t DataForScriptRemind::GetSaveType()
{
	return GAME_THING_TYPE_DATA_FOR_SCRIPT_REMIND;
}

uint32_t DataPath::GetSaveType()
{
	return GAME_THING_TYPE_DATA_PATH;
}

void Living::Birthday() {}
