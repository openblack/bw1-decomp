#include "GameTimeConstants.h"
#include "Rand.h"
#include "SoundTag.h"

LH_SAMPLE SoundTag::GetRandomSample(LH_SAMPLE first, unsigned long count)
{
	return (LH_SAMPLE)(first + GRand::LocalRand(count));
}
