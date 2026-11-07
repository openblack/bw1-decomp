#include "GameTimeConstants.h"
#include "GameInfo.h"

#include "LandAlignement.h"

#ifdef VERSION_BW1WCI
const float GGameInfo::DefaultVisualTimeCycle[3] = {1700.0f, 0.083f, 0.07f};
#endif

// BW1W120 005575a0 BW1M119 010695d0
float GGameInfo::GetVisualTime()
{
	return GLandAlignement::VisualTime;
}

// BW1W120 00557ba0 BW1M119 01090ca0
void GGameInfo::Debug() {}
