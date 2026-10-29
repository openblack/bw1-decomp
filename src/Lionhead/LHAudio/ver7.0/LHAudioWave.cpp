#include "LHAudioLog.h"
#define FILEPATH LH_AUDIO_SOURCE_DIRECTORY "LHAudioWave.cpp"

#define LH_WAVE_VOLUME_MAX         127
#define LH_WAVE_DEVICE_VOLUME_MAX  0xffff
#define LH_WAVE_VOLUME_SCALE       (LH_WAVE_DEVICE_VOLUME_MAX / LH_WAVE_VOLUME_MAX)
#define LH_WAVE_VOLUME_SHIFT       9
#define LH_WAVE_RIGHT_VOLUME_SHIFT 16
#define LH_WAVE_VOLUME_UNKNOWN     (-1)
#define LH_WAVE_TIMER_DELAY        20
#define LH_WAVE_TIMER_RESOLUTION   10
#define LH_WAVE_MUSIC_CHANNELS     6
#define LH_WAVE_PAN_RATE           100
#define LH_WAVE_ROLLOFF            4.0f

static long     WaveVolumeControl = LH_WAVE_VOLUME_UNKNOWN;
static long     WaveVolume = LH_WAVE_VOLUME_UNKNOWN;
static MMRESULT pump_timer;
static DWORD    OriginalWaveVolume;

void CALLBACK LHWavePumpCallback(UINT id, UINT message, DWORD user, DWORD param1, DWORD param2)
{
	if (id == pump_timer)
	{
		QSWaveMixPump();
	}
}

bool32_t LH_AudioSystem::LHWaveOpen()
{
	DWORD               options = 0;
	QMIX_CHANNEL_PARAMS params;
	memset(&params, 0, sizeof(params));
	params.dwSize = sizeof(params);

	if (WaveInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_WAVE_OPEN_ALREADY_INSTALLED, 46);
		return false;
	}

	QMIXCONFIG config;
	memset(&config, 0, sizeof(config));
	config.dwSize = sizeof(config);
	config.dwSamplingRate = HWRate;
	config.iChannels = EnableMusic ? MaxSamples + LH_WAVE_MUSIC_CHANNELS : MaxSamples;
	config.lpIDirectSound = DirectSound;
	config.lpGuid = DirectSoundGuid;
	config.iLatency = Latency;
	config.hwnd = Window;
	config.iMath = 0;
	config.dwFlags = QMIX_CONFIG_LEFTCOORDS;
	if (!UseHardware)
	{
		config.iChannels3dQS = EnableMusic ? MaxSamples + LH_WAVE_MUSIC_CHANNELS : MaxSamples;
	}
	if (UsePrimaryBuffer == true)
	{
		config.dwFlags = QMIX_CONFIG_LEFTCOORDS | QMIX_CONFIG_USEPRIMARY;
	}
	if (PlaySilence == true)
	{
		config.dwFlags |= QMIX_CONFIG_PLAYSILENCE;
	}
	if (Output == LH_AUDIO_OUTPUT_DIRECTSOUND)
	{
		config.iOutput = QMIX_CONFIG_OUTPUT_DIRECTSOUND;
	}
	else if (Output == LH_AUDIO_OUTPUT_WAVEOUT)
	{
		config.iOutput = QMIX_CONFIG_OUTPUT_WAVEOUT;
	}
	else if (Output == LH_AUDIO_OUTPUT_DETECT)
	{
		config.iOutput = QMIX_CONFIG_OUTPUT_DETECT;
	}
	if (UseHardware)
	{
		config.dwFlags |= QMIX_CONFIG_GLOBALROLLOFF;
	}

	QMixer = QSWaveMixInitEx(&config);
	if (QMixer == NULL)
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_QMIXER_OPEN_WAVE, 107, LHDebugGetLastQMixerError());
		WaveInstalled = false;
		WaveActive = false;
		return false;
	}

	QSWaveMixActivate(QMixer, true);
	if (QMixerOption2 == true)
	{
		options = QMIX_OPTIONS_CROSSOVER;
	}
	if (QMixerOption1 == true)
	{
		options |= QMIX_OPTIONS_REAR;
	}
	if (QMixerOption4 == true)
	{
		options |= QMIX_OPTIONS_FLIPOUTPUT;
	}
	if (QMixerOption8 == true)
	{
		options |= QMIX_OPTIONS_DOPPLER;
	}
	QSWaveMixSetOptions(QMixer, options, NULL);
	QSWaveMixOpenChannel(QMixer, 0, QMIX_OPENALL);
	if (SpeakerConfig == LH_AUDIO_SPEAKER_CONFIG_STEREO)
	{
		QSWaveMixSetSpeakerPlacement(QMixer, QMIX_SPEAKERS_STEREO);
	}
	else if (SpeakerConfig == LH_AUDIO_SPEAKER_CONFIG_QUAD)
	{
		QSWaveMixSetSpeakerPlacement(QMixer, QMIX_SPEAKERS_QUAD);
	}
	else
	{
		QSWaveMixSetSpeakerPlacement(QMixer, QMIX_SPEAKERS_MONO);
	}

	if ((SampleInfos = new LH_SampleInfo[MaxSamples]) == NULL)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_WAVE_OPEN_SAMPLE_INFO_ALLOCATION, 138);
		QSWaveMixCloseSession(QMixer);
		WaveInstalled = false;
		WaveActive = false;
		return false;
	}

	FirstSampleInfo = SampleInfos;
	LastSampleInfo = &SampleInfos[MaxSamples - 1];
	int channel = 0;
	for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++, channel++)
	{
		info->AtmosInfo = NULL;
		info->Bank = NULL;
		info->AttachedObject = NULL;
		info->SampleNumber = 0;
		info->Channel = channel;
		info->PlayType = LH_SAMPLE_PLAY_TYPE_RESTART;
		info->Frequency = LH_AUDIO_HW_RATE_22K;
		info->Priority = 0;
		info->Wave = NULL;
		info->TagData = NULL;
		info->TagDataSize = 0;
		info->Reserved3 = 0;
		info->Reserved1 = 0;
		info->Reserved2 = 0;
		info->KeepData = false;
		info->Playing = false;
		info->OffsetX = 0.0f;
		info->OffsetY = 0.0f;
		info->OffsetZ = 0.0f;
		QSWaveMixGetChannelParams(QMixer, channel, &params);
	}
	QSWaveMixSetPanRate(QMixer, channel, QMIX_ALL, LH_WAVE_PAN_RATE);

	WAVEOUTCAPS caps;
	waveOutGetDevCaps(WAVE_MAPPER, &caps, sizeof(caps));
	if (caps.dwSupport & WAVECAPS_VOLUME)
	{
		WaveVolumeControl = true;
		waveOutGetVolume((HWAVEOUT)WAVE_MAPPER, &OriginalWaveVolume);
		WaveVolume = (OriginalWaveVolume >> LH_WAVE_VOLUME_SHIFT) & LH_WAVE_VOLUME_MAX;
	}

	if (EnableAtmos == true)
	{
		LHAtmosOpen();
	}
	if (EnableMusic)
	{
		InitializeCriticalSection(&LHMusicCriticalSection);
	}

	QSVECTOR velocity;
	velocity.x = 0.0f;
	velocity.y = 0.0f;
	velocity.z = 0.0f;
	QSWaveMixSetListenerVelocity(QMixer, &velocity, 0);
	if (UseHardware)
	{
		QSWaveMixSetListenerRolloff(QMixer, LH_WAVE_ROLLOFF, 0);
	}
	pump_timer = timeSetEvent(LH_WAVE_TIMER_DELAY, LH_WAVE_TIMER_RESOLUTION, LHWavePumpCallback, 0, TIME_PERIODIC);
	WaveInstalled = true;
	WaveActive = true;
	return true;
}

void LH_AudioSystem::LHWaveClose()
{
	if (!WaveInstalled)
	{
		return;
	}

	if (pump_timer)
	{
		timeKillEvent(pump_timer);
	}
	pump_timer = 0;
	LHSampleStopAll();
	for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
	{
		QSWaveMixFreeWave(QMixer, info->Wave);
	}
	QSWaveMixCloseSession(QMixer);
	if (SampleInfos != NULL)
	{
		delete SampleInfos;
	}
	if (WaveVolumeControl != LH_WAVE_VOLUME_UNKNOWN)
	{
		waveOutSetVolume((HWAVEOUT)WAVE_MAPPER, OriginalWaveVolume);
	}
	WaveInstalled = false;
	WaveActive = false;
}

bool32_t LH_AudioSystem::LHWaveIsInstalled()
{
	return WaveInstalled;
}

bool32_t LH_AudioSystem::LHWaveIsActive()
{
	return WaveActive;
}

void LH_AudioSystem::LHWaveSwitch(unsigned long on)
{
	if (WaveInstalled && SystemInstalled)
	{
		if (on == false)
		{
			LHSampleStopAll();
			WaveActive = false;
		}
		else if (on == true)
		{
			WaveActive = on;
		}
	}
}

void LH_AudioSystem::LHWaveSetVolume(long volume)
{
	if (!WaveInstalled || WaveVolumeControl == LH_WAVE_VOLUME_UNKNOWN || !SystemInstalled)
	{
		return;
	}
	if (volume > LH_WAVE_VOLUME_MAX)
	{
		volume = LH_WAVE_VOLUME_MAX;
	}
	else if (volume < 0)
	{
		volume = 0;
	}
	if (volume != WaveVolume)
	{
		WaveVolume = volume;
		DWORD channel = volume * LH_WAVE_VOLUME_SCALE;
		waveOutSetVolume((HWAVEOUT)WAVE_MAPPER, (channel << LH_WAVE_RIGHT_VOLUME_SHIFT) | channel);
	}
}

unsigned long LH_AudioSystem::LHWaveGetVolume()
{
	return WaveVolume;
}

void* LH_AudioSystem::LHWaveGetQMixerDirectSoundObject()
{
	LPVOID directSound = NULL;
	if (QMixer != NULL && SystemInstalled)
	{
		QSWaveMixGetDirectSound(QMixer, &directSound);
		return directSound;
	}
	return NULL;
}
