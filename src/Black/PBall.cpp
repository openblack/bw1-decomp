#include "PBall.h"
#include "BallInfo.h"

uint32_t PBall::Process()
{
	return 1;
}

PBall::~PBall() {}

GBaseInfo* GPBallInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = ARRAY_SIZE(Infos);
	return Infos;
}
