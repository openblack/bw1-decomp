#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "CreatureRoom.h"

#include "ColourConstants.h" /* For White */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

// TODO: The original storage is currently extracted in ScriptGFX's BSS range.
int CreatureRoom::CreatureInTemple;
