#include "GameTimeConstants.h"
#include "GameInfo.h"

#include "LandAlignement.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

// BW1W120 005575a0 BW1M119 010695d0
float GGameInfo::GetVisualTime()
{
	return GLandAlignement::VisualTime;
}

// BW1W120 00557ba0 BW1M119 01090ca0
void GGameInfo::Debug() {}
