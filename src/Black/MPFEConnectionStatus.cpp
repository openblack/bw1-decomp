#include "MPFEConnectionStatus.h"

bool MPFEConnectionStatus::IsInternetLobby()
{
	return type == LOBBY_TYPE_INTERNET;
}
