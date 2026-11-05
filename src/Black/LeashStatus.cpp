#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "LeashStatus.h"

#include "ColourConstants.h" /* For White */
#include "GameOSFile.h"      /* For class GameOSFile */
#include "Player.h"          /* For class GPlayer */

void GLeashStatus::SaveExtraData(GameOSFile& file)
{
	uint32_t playerNumber = GetPlayer()->GetPlayerNumber();
	file.WriteIt(playerNumber);
}

void GLeashStatus::ResolveLoad() {}
