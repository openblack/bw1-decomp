#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For rand, srand */
#include <time.h>   /* For time */

#include "LH_ListenerInfo.h"
#include "LHAudioLog.h"

#define FILEPATH LH_AUDIO_SOURCE_DIRECTORY "LHAudioSystem.cpp"

#define LH_AUDIO_OVERRIDE_REGISTRY_KEY "Software\\Lionhead Studios Ltd\\Audio\\Override"

#define LH_AUDIO_DEFAULT_MAX_SAMPLES 16
#define LH_AUDIO_DEFAULT_HEAP_SIZE   (16 * 1024 * 1024)
#define LH_AUDIO_RAND_HALF_RANGE     0x3fff

static bool32_t RandSeeded;
static bool32_t RandUpperHalf = true;

bool32_t LH_AudioSystem::LHSystemAlreadyInstalled;

LH_AudioSystem::LH_AudioSystem()
{
	Reserved1 = 0;
	WaveInstalled = false;
	WaveActive = false;
	MidiInstalled = false;
	MidiActive = false;
	RedbookInstalled = false;
	RedbookActive = false;
	HeapInstalled = false;
	AtmosInstalled = false;
	AtmosClosing = false;
	MusicInstalled = false;
	MusicActive = false;
	SystemInstalled = false;
#ifdef VERSION_BW1WCI
	RedirectFileAccess = false;
#endif
	FirstSampleInfo = NULL;
	LastSampleInfo = NULL;
	SampleMasterVolume = LH_SAMPLE_VOLUME_MAX;
	Reserved2 = 1;
	EnableWave = true;
	EnableAtmos = true;
	EnableMidi = false;
	EnableRedbook = false;
	UseHeap = false;
	EnableMusic = false;
	SpeakerConfig = LH_AUDIO_SPEAKER_CONFIG_STEREO;
	QMixerOption8 = false;
	QMixerOption2 = true;
	QMixerOption1 = true;
	QMixerOption4 = false;
	UsePrimaryBuffer = false;
	PlaySilence = false;
	UseHardware = false;
	DisableSfx = false;
	Disable3DSpatialisation = false;
	MaxSamples = LH_AUDIO_DEFAULT_MAX_SAMPLES;
	Output = LH_AUDIO_OUTPUT_DIRECTSOUND;
	HeapSize = LH_AUDIO_DEFAULT_HEAP_SIZE;
	HWRate = LH_AUDIO_HW_RATE_22K;
	Latency = 0;
	DirectSound = NULL;
	DirectSoundGuid = NULL;
	Window = NULL;
	PlayRequestCount = 0;
	MusicTotalGroups = 0;
	sprintf(OverrideKey, LH_AUDIO_OVERRIDE_REGISTRY_KEY);
}

LH_AudioSystem::~LH_AudioSystem()
{
	if (SystemInstalled)
	{
		LHMidiStopAll();
		LHSampleStopAll();
		LHMusicStop(false);
		LHAtmosClose();
		LHMusicClose();
		LHHeapClose();
		LHWaveClose();
		LHMidiClose();
		LHRedbookClose();
		delete ListenerInfo;
		SystemInstalled = false;
	}
}

void LH_AudioSystem::Create()
{
	if (LHSystemAlreadyInstalled)
	{
#ifdef VERSION_BW1WCI
		LH_ASSERT_FORCED(0, "NO, NO, NO!! - one-time audio object only - SEE RUSS", 94);
#else
		LH_ASSERT_FORCED(0, "NO, NO, NO!! - one-time audio object only - SEE RUSS", 92);
#endif
	}

#ifdef VERSION_BW1WCI
	if (RedirectFileAccess)
	{
		LHRedirectFileAccess();
	}
#endif
	if (!SystemInstalled)
	{
		LHRegistrySetOverrides();
	}
	if (SystemInstalled)
	{
#ifdef VERSION_BW1WCI
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_CREATE_ALREADY_INSTALLED, 113);
#else
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_CREATE_ALREADY_INSTALLED, 106);
#endif
		return;
	}

	ListenerInfo = new LH_ListenerInfo;
	if (EnableWave == true)
	{
		if (UseHeap == true)
		{
			if (LHHeapOpen())
			{
				if (!LHWaveOpen())
				{
					LHHeapClose();
				}
				else if (EnableMusic == true)
				{
					LHMusicOpen();
				}
			}
		}
		else if (LHWaveOpen() && EnableMusic == true)
		{
			LHMusicOpen();
		}
	}
	if (EnableMidi == true)
	{
		LHMidiOpen();
	}
	if (EnableRedbook == true)
	{
		LHRedbookOpen();
	}

	if (!WaveInstalled && !MidiInstalled && !RedbookInstalled)
	{
#ifdef VERSION_BW1WCI
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_CREATE_NO_COMPONENTS, 161);
#else
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_CREATE_NO_COMPONENTS, 154);
#endif
		SystemInstalled = false;
	}
	else
	{
		SystemInstalled = true;
		LHSystemAlreadyInstalled = true;
	}
}

void LH_AudioSystem::Shutdown()
{
	if (SystemInstalled)
	{
		LHMidiStopAll();
		LHSampleStopAll();
		LHMusicStop(false);
		LHAtmosClose();
		LHMusicClose();
		LHWaveClose();
		LHMidiClose();
		LHRedbookClose();
		LHHeapClose();
		delete ListenerInfo;
		SystemInstalled = false;
	}
}

unsigned long LH_AudioSystem::Rand(unsigned long range)
{
	return Rand() * range / RAND_MAX;
}

unsigned long LH_AudioSystem::Rand()
{
	if (!RandSeeded)
	{
		srand(time(NULL));
		RandSeeded = true;
	}
	unsigned long value = rand() / 2;
	if (RandUpperHalf)
	{
		value += LH_AUDIO_RAND_HALF_RANGE;
	}
	RandUpperHalf = !RandUpperHalf;
	return value;
}

void LH_AudioSystem::LHGlobalSwitch(unsigned long on)
{
	if (!SystemInstalled)
	{
		return;
	}
	if (on == false)
	{
		LHWaveSwitch(false);
		LHMidiSwitch(false);
		LHMusicSwitch(false);
		LHRedbookSwitch(false);
	}
	else if (on == true)
	{
		LHWaveSwitch(on);
		LHMidiSwitch(true);
		LHMusicSwitch(true);
		LHRedbookSwitch(true);
	}
}
