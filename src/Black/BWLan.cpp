#include "BWLan.h"

#include "ColourConstants.h" /* For White */

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
