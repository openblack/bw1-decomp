#include "GameTimeConstants.h"
#include "Audio.h"
#include "GameThingWithPos.h"
#include "Global.h"
#include "Rand.h"
#include "SoundTag.h"

LH_AudioBank* SoundTag::GetBank() const
{
	if (IsAtmospheric)
	{
		return GGlobal::Global.audio->AtmosBanks[BankIndex];
	}
	return GGlobal::Global.audio->GetBank((AUDIO_SFX_BANK_TYPE)BankIndex);
}

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
