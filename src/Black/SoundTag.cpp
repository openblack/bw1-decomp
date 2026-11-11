#include "GameTimeConstants.h"
#include "GameThingWithPos.h"
#include "Rand.h"
#include "SoundTag.h"

bool32_t SoundTag::Get3DSoundPos(LHPoint* pos)
{
	if (AttachedThing != NULL)
	{
		return AttachedThing->Get3DSoundPos(pos);
	}
	return true;
}

LH_SAMPLE SoundTag::GetRandomSample(LH_SAMPLE first, unsigned long count)
{
	return (LH_SAMPLE)(first + GRand::LocalRand(count));
}
