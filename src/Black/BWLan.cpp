#include "BWLan.h"

#include <uchar.h> /* For char16_t */

#include "ColourConstants.h" /* For White */
#include "LHNetBase.h"       /* For class LHNetBase */

bool BWLan::InitialiseLobbyState()
{
	return true;
}

void BWLan::StartGame() {}

void BWLan::Process()
{
	Think();
}

void BWLan::LeaveMainRoom()
{
	Disconnect();
}

void BWLan::Disconnect()
{
	LHNetBase::Instance.Shutdown();
	Connected = false;
}

void BWLan::KickPlayerFromChannel(MPFEPlayerDetails* player) {}

void BWLan::BanPlayerInChannel(MPFEPlayerDetails* player) {}

#ifndef VERSION_BW1W100
void BWLan::LockChannel(bool lock) {}

void BWLan::SetInvite(bool invite) {}
#endif
