#include "GameTimeConstants.h"
#include "Meeting.h"
#include "Town.h"

Town* Meeting::GetTown()
{
	return town;
}

GPlayer* Meeting::GetPlayer()
{
	return town->GetPlayer();
}
