#include <string.h>

#include "Audio.h"
#include "AtmosTypeInfo.h"
#include "Global.h"

#include <Lionhead/LHAudio/ver7.0/LH_AudioBank.h>
#include <Lionhead/LHAudio/ver7.0/LH_AudioSystem.h>

AtmosTypeInfo AtmosTypeInfo::Types[NUM_ATMOS_TYPES] = {
	{"ATMOS_TYPE_NONE", NULL, false},                                    //
	{"ATMOS_TYPE_SEA", "audio/sfx/atmos/ocean.sad", false},              //
	{"ATMOS_TYPE_STILL_FRESH_WATER", "audio/sfx/atmos/lake.sad", false}, //
	{"ATMOS_TYPE_COASTAL", "audio/sfx/atmos/shore.sad", false},          //
	{"ATMOS_TYPE_JUNGLE", "audio/sfx/atmos/jungle.sad", true},           //
	{"ATMOS_TYPE_ARCTIC", "audio/sfx/atmos/arctic.sad", false},          //
	{"ATMOS_TYPE_DESERT", "audio/sfx/atmos/desert.sad", true},           //
	{"ATMOS_TYPE_COUNTRYSIDE", "audio/sfx/atmos/country.sad", true},     //
	{"ATMOS_TYPE_SWAMP", "audio/sfx/atmos/swamp.sad", true},             //
	{"ATMOS_TYPE_RUNNING_WATER", "audio/sfx/atmos/stream.sad", false},   //
	{"ATMOS_TYPE_STRATOSPHERE", "audio/sfx/atmos/high.sad", false},      //
	{"ATMOS_TYPE_NIGHT", "audio/sfx/atmos/night.sad", true},             //
	{"ATMOS_TYPE_RAIN", "audio/sfx/atmos/rain.sad", false},              //
	{"ATMOS_TYPE_WIND", "audio/sfx/atmos/wind.sad", false},              //
};

void GAudio::InitAtmos()
{
	AtmosBanksLoaded = false;
	LoadAtmosSoundBanks();
	memset(AtmosTargetVolumes, 0, sizeof(AtmosTargetVolumes));
	memset(AtmosVolumes, 0, sizeof(AtmosVolumes));
}

void GAudio::LoadAtmosSoundBanks()
{
	if (!AtmosBanksLoaded)
	{
		for (unsigned int i = 0; i < NUM_ATMOS_TYPES; i++)
		{
			if (AtmosTypeInfo::Types[i].Filename != NULL)
			{
				AtmosBanks[i] = AudioSystem->LHBankRegister(AtmosTypeInfo::Types[i].Filename, LH_BANK_MODE_HEAP);
			}
			else
			{
				AtmosBanks[i] = NULL;
			}
		}
		AtmosBanksLoaded = true;
	}
}

void GAudio::ReleaseAtmosSoundBanks()
{
	if (AtmosBanksLoaded == true)
	{
		for (int i = 0; i < NUM_ATMOS_TYPES; i++)
		{
			if (AtmosBanks[i] != NULL)
			{
				AudioSystem->LHBankRelease(AtmosBanks[i]);
				AtmosBanks[i] = NULL;
			}
		}
		AtmosBanksLoaded = false;
	}
}

void GAudio::ProcessAtmosBanks()
{
	for (int i = 0; i < NUM_ATMOS_TYPES; i++)
	{
		if (Alignment > ATMOS_ALIGNMENT_GROUP_THRESHOLD)
		{
			AudioSystem->LHAtmosSetGroup(AtmosBanks[i], ATMOS_ALIGNMENT_GROUP_ABOVE_THRESHOLD);
		}
		else
		{
			AudioSystem->LHAtmosSetGroup(AtmosBanks[i], ATMOS_ALIGNMENT_GROUP_AT_OR_BELOW_THRESHOLD);
		}
		float step;
		if (AtmosVolumes[i] > ATMOS_VOLUME_FAST_MAX || AtmosVolumes[i] <= ATMOS_VOLUME_FAST_MIN)
		{
			step = ATMOS_VOLUME_STEP_SLOW;
		}
		else
		{
			step = ATMOS_VOLUME_STEP_FAST;
		}
		const float currentVolume = AtmosVolumes[i];
		AtmosVolumes[i] = AtmosTargetVolumes[i] > AtmosVolumes[i] ? min(AtmosTargetVolumes[i], currentVolume + step)
		                                                          : max(AtmosTargetVolumes[i], currentVolume - step);
		float volume = AtmosVolumes[i];
		long  sentVolume = (long)(volume * LH_SAMPLE_VOLUME_MAX);
		AudioSystem->LHAtmosSetBankVolume(AtmosBanks[i], sentVolume);
		GGlobal::Global.debug.SetMessage(ATMOS_DEBUG_CATEGORY, "%s Vol=%3.3f Sent=%d Step=%d",
		                                 AtmosTypeInfo::Types[i].Name, volume, sentVolume,
		                                 (int)(step * ATMOS_DEBUG_STEP_PERCENT));
	}
}
