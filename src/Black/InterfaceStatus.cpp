#include "GameTimeConstants.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"

uint32_t GInterfaceStatus::GetSaveType()
{
	return GAME_THING_TYPE_GPLAYER_INTERFACE_STATUS;
}

uint32_t GLeashStatus::GetSaveType()
{
	return GAME_THING_TYPE_GLEASH_STATUS;
}
