#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "CreatureScript.h"

#include "ColourConstants.h" /* For White */
#include "Creature.h"        /* For Creature */
#include "CreatureMental.h"  /* For CreatureMental */

void Creature::ScriptReleaseFromScript()
{
	mind->LookState.ScriptFocus = false;
	FinishActionUnsuccessfully("finishing script", 1, 1);
}
