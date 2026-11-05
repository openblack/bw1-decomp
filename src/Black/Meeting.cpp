#include "GameTimeConstants.h"
#include "Meeting.h"
#include "Town.h"

Town* Meeting::GetTown()
{
	return town;
}

void Meeting::RemoveDance()
{
	dance = NULL;
}

GPlayer* Meeting::GetPlayer()
{
	return town->GetPlayer();
}
