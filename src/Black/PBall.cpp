#include "PBall.h"
#include "BallInfo.h"

uint32_t PBall::Process()
{
	return 1;
}

GBaseInfo* GPBallInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = 1;
	return Infos;
}
