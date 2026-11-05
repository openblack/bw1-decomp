#include "GameTimeConstants.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"

#include "GameOSFile.h" /* For class GameOSFile */
#include "Player.h"     /* For class GPlayer */

uint32_t GInterfaceStatus::GetSaveType()
{
	return GAME_THING_TYPE_GPLAYER_INTERFACE_STATUS;
}

char* GInterfaceStatus::GetDebugText()
{
	return "InterfaceStatus:";
}

const char* GInterfaceStatus::GetText()
{
	return "Interface Status";
}

GInterface* GInterfaceStatus::GetInterface()
{
	return iface;
}

SPELL_SEED_TYPE GInterfaceStatus::GetLastSpellGained()
{
	return LastSpellGained;
}

void GInterfaceStatus::SaveExtraData(GameOSFile& file)
{
	uint32_t playerNumber = GetPlayer()->GetPlayerNumber();
	file.WriteIt(playerNumber);
}

uint32_t GLeashStatus::GetSaveType()
{
	return GAME_THING_TYPE_GLEASH_STATUS;
}
