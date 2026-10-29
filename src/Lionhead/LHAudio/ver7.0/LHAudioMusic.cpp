#include <ctype.h>   /* For isdigit */
#include <process.h> /* For _endthread */
#include <stdlib.h>  /* For atol, malloc, free */
#include <string.h>  /* For memset, strcpy */

#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h> /* For LHReleasedFile */

#include "LHAudioLog.h"
#include "LH_AudioBank.h"
#include "LH_BankSample.h"
#include "LH_MusicPlayOptions.h"
#include "MPGAudioDecoder.h"

#define FILEPATH LH_AUDIO_SOURCE_DIRECTORY "LHAudioMusic.cpp"

#define LH_MUSIC_MARKER_START            '!'
#define LH_MUSIC_MARKER_NAME_LENGTH      0x20
#define LH_MUSIC_CHUNK_SAMPLES           24192
#define LH_MUSIC_POSITION_CHUNK_SHIFT    32
#define LH_MUSIC_SECONDS_PER_MILLISECOND 0.001f
#define LH_MUSIC_QMIXER_VOLUME_SCALE     258
#define LH_MUSIC_PITCH_MIN               50
#define LH_MUSIC_PITCH_MAX               250
#define LH_MUSIC_MAX_QUEUED              4
#define LH_MUSIC_FADE_IN_STEP            4
#define LH_MUSIC_FADE_OUT_STEP           3
#define LH_MUSIC_UPDATE_SLEEP            120
#define LH_MUSIC_ERROR_SLEEP             5000
#define LH_MUSIC_DECOMPRESSED_FACTOR     8
#define LH_MUSIC_BITS_PER_BYTE           8

enum LH_MUSIC_EVENT
{
	LH_MUSIC_EVENT_START = 0,
	LH_MUSIC_EVENT_QUIT = 1,
	LH_MUSIC_EVENT_FINISHED = 2,
	LH_MUSIC_EVENT_COUNT = 3,
};

struct marker_info
{
	marker_info*  Next;                              /* 0x0 */
	LARGE_INTEGER Position;                          /* 0x8 */
	char          Name[LH_MUSIC_MARKER_NAME_LENGTH]; /* 0x10 */
};
static_assert(sizeof(marker_info) == 0x30, "Data type is of wrong size");

struct marker_search_info
{
	marker_info*  First;        /* 0x0 */
	marker_info*  Current;      /* 0x4 */
	LARGE_INTEGER LastPosition; /* 0x8 */
	unsigned long StartTime;    /* 0x10 */
	long          StartChunk;   /* 0x14 */

	// BW1W120 1000db30 BW1M119 01129b30 (LHCombined Release)
	static marker_search_info* Create(LH_AudioSystem* system, LH_AudioBank* bank);
	// BW1W120 1000db60 BW1M119 01129a80 (LHCombined Release)
	static void Destroy(marker_search_info* info);
	// BW1W120 1000db90 BW1M119 01006d50 (LHCombined Release)
	void Update(LH_AudioSystem* system, LH_MusicInfo* info);
};
static_assert(sizeof(marker_search_info) == 0x18, "Data type is of wrong size");

struct music_buffer
{
	unsigned char* Data; /* 0x0 */
	bool32_t       Last; /* 0x4 */
};
static_assert(sizeof(music_buffer) == 0x8, "Data type is of wrong size");

struct decompression_info
{
	unsigned long  length;   /* 0x0 */
	unsigned char* raw_data; /* 0x4 */
	WAVEFORMATEX   format;   /* 0x8 */
};
static_assert(sizeof(decompression_info) == 0x1c, "Data type is of wrong size");

// BW1W120 1000dc80 BW1M119 0103f8b0 (LHCombined Release)
void CALLBACK qmixer_done_music_callback(int channel, MIXWAVE* wave, unsigned long user);
// BW1W120 1000eb40 BW1M119 01008a40 (LHCombined Release)
static void music_thread(void* param);
// BW1W120 1000f740 BW1M119 01002240 (LHCombined Release)
static bool32_t decompress_it(MPGAudioDecoder* decoder, char* input, int input_length,
                              decompression_info* decompressed);

static bool32_t music_thread_stopped = true;
static bool32_t music_timer_enabled = true;

CRITICAL_SECTION       LHMusicCriticalSection;
static HANDLE          music_events[LH_MUSIC_EVENT_COUNT];
static long            music_buffers_queued[LH_MUSIC_INFO_COUNT];
static LH_AudioSystem* music_system;
long                   LH_MusicInfo::master;
unsigned long          LH_MusicInfo::master_volume;
static unsigned long   alloc_count = 0;

LH_MusicPlayOptions::LH_MusicPlayOptions()
{
	StartInSecondHalf = false;
	Bank = NULL;
	Reserved1 = 0;
	Reserved2 = 0;
	Reserved3 = 0;
	Volume = LH_MUSIC_VOLUME_MAX;
	StartChunk = LH_MUSIC_FIRST_CHUNK;
	Loop = false;
	FadeIn = false;
	Positional = false;
	MinDistance = LH_MUSIC_DEFAULT_MIN_DISTANCE;
	MaxDistance = LH_MUSIC_DEFAULT_MAX_DISTANCE;
	DistanceScale = LH_MUSIC_DEFAULT_DISTANCE_SCALE;
	Pitch = LH_MUSIC_PITCH_NORMAL;
	X = 0.0f;
	Y = 0.0f;
	Z = 0.0f;
	FinishedCallback = NULL;
	MarkerCallback = NULL;
	CallbackParam = 0;
}

LH_MusicPlayOptions::~LH_MusicPlayOptions() {}

marker_info* LH_AudioSystem::CompileMarkerList(LH_AudioBank* bank)
{
	char         text[LH_MUSIC_MARKER_NAME_LENGTH];
	marker_info* list = NULL;

	LH_BankSample* samples = bank->LHGetFirstBankSample();
	for (long i = LHBankGetNumberOfSamples(bank) - 1; i >= 0; i--)
	{
		char* markers = samples[i].Markers;
		while (*markers == LH_MUSIC_MARKER_START)
		{
			markers++;
			char* end = markers;
			while (isdigit(*end))
			{
				end++;
			}
			memcpy(text, markers, end - markers);
			text[end - markers] = '\0';

			marker_info* marker = new marker_info;
			marker->Position.HighPart = i + 1;
			marker->Position.LowPart = atol(text);

			markers = end + 1;
			end = markers;
			while (*end != '\0' && *end != LH_MUSIC_MARKER_START)
			{
				end++;
			}
			memcpy(text, markers, end - markers);
			text[end - markers] = '\0';
			strcpy(marker->Name, text);

			marker->Next = list;
			list = marker;
			markers = end;
		}
	}
	return list;
}

marker_search_info* marker_search_info::Create(LH_AudioSystem* system, LH_AudioBank* bank)
{
	marker_search_info* info = new marker_search_info;
	info->First = system->CompileMarkerList(bank);
	info->Current = info->First;
	info->LastPosition.QuadPart = 0;
	return info;
}

void marker_search_info::Destroy(marker_search_info* info)
{
	if (info != NULL)
	{
		while (info->First != NULL)
		{
			marker_info* marker = info->First;
			info->First = marker->Next;
			delete marker;
		}
		delete info;
	}
}

void marker_search_info::Update(LH_AudioSystem* system, LH_MusicInfo* info)
{
	if (Current == NULL)
	{
		return;
	}

	long     samples = (long)((float)(GetTickCount() - StartTime) * info->Frequency * LH_MUSIC_SECONDS_PER_MILLISECOND);
	long     chunk = samples / LH_MUSIC_CHUNK_SAMPLES + StartChunk;
	LONGLONG position = ((LONGLONG)chunk << LH_MUSIC_POSITION_CHUNK_SHIFT) + samples % LH_MUSIC_CHUNK_SAMPLES;

	for (marker_info* marker = Current; marker != NULL; marker = marker->Next)
	{
		if (marker->Position.HighPart < chunk)
		{
			Current = marker;
		}
		if (marker->Position.HighPart > chunk)
		{
			break;
		}
		if (marker->Position.QuadPart <= position && marker->Position.QuadPart > LastPosition.QuadPart &&
		    info->MarkerCallback != NULL)
		{
			info->MarkerCallback((unsigned long)marker->Name);
		}
	}
	LastPosition.QuadPart = position;
}

void CALLBACK qmixer_done_music_callback(int channel, MIXWAVE* wave, unsigned long user)
{
	music_buffer* buffer = (music_buffer*)user;

	QSWaveMixFreeWave(music_system->QMixer, wave);
	for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
	{
		if (music_system->MusicInfos[i].Channel == channel)
		{
			free(buffer->Data);
			music_buffers_queued[i]--;
			if (buffer->Last == true)
			{
				music_system->MusicInfos[i].Status = LH_MUSIC_STATUS_FINISHED;
				delete buffer;
				return;
			}
			delete buffer;
			if (music_system->MusicInfos[i].CurrentChunk == music_system->MusicInfos[i].NumberOfChunks)
			{
				music_system->MusicInfos[i].CurrentChunk = LH_MUSIC_FIRST_CHUNK;
			}
			else
			{
				music_system->MusicInfos[i].CurrentChunk++;
			}
		}
	}
}

bool32_t LH_AudioSystem::LHMusicOpen()
{
	QMIX_CHANNEL_PARAMS params;

	music_system = this;
	if (MusicInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_MUSIC_OPEN_ALREADY_INSTALLED, 233);
		return false;
	}

	for (unsigned long event = 0; event < LH_MUSIC_EVENT_COUNT; event++)
	{
		music_events[event] = CreateEvent(NULL, false, false, NULL);
	}

	MusicInfos = new LH_MusicInfo[LH_MUSIC_INFO_COUNT];
	for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
	{
		LH_MusicInfo::master = LH_MUSIC_NO_INFO;
		LH_MusicInfo::master_volume = LH_MUSIC_VOLUME_MAX;
		music_buffers_queued[i] = 0;
		MusicInfos[i].Channel = MaxSamples + i;
		MusicInfos[i].CurrentVolume = 0;
		MusicInfos[i].Volume = 0;
		MusicInfos[i].GroupId = 0;
		MusicInfos[i].SampleVolume = LH_MUSIC_VOLUME_MAX;
		MusicInfos[i].Bank = NULL;
		MusicInfos[i].Status = LH_MUSIC_STATUS_STOPPED;
		MusicInfos[i].Loop = false;
		MusicInfos[i].Markers = NULL;

		memset(&params, 0, sizeof(params));
		params.dwSize = sizeof(params);
		QSWaveMixGetChannelParams(QMixer, MusicInfos[i].Channel, &params);
		if ((params.dwChannelType & QMIX_CHANNELTYPE_STREAMING) && (params.dwChannelType & QMIX_CHANNELTYPE_3D))
		{
			QSWaveMixConfigureChannel(QMixer, MusicInfos[i].Channel, QMIX_CHANNELTYPE_STREAMING | QMIX_CHANNELTYPE_2D,
			                          NULL, NULL);
		}
		QSWaveMixEnableChannel(QMixer, MusicInfos[i].Channel, QMIX_IMMEDIATE,
		                       QMIX_CHANNEL_PITCH_LINEAR | QMIX_CHANNEL_NODOPPLERPITCH);
	}

	_lhbeginthread("music", music_thread, 0, this, THREAD_PRIORITY_TIME_CRITICAL);
	SetEvent(music_events[LH_MUSIC_EVENT_START]);
	MusicInstalled = true;
	MusicActive = true;
	return true;
}

LH_MusicInfo* LH_AudioSystem::LHMusicPlay(LH_MusicPlayOptions* options)
{
	QMIX_CHANNEL_PARAMS params;
	unsigned long       i;

	if (!MusicInstalled || !SystemInstalled)
	{
		return NULL;
	}
	if (options->Bank == NULL)
	{
		LHMusicStop(true);
		return NULL;
	}
	if (!options->Bank->LHIsMusicBank())
	{
		LHMusicStop(true);
		return NULL;
	}

	EnterCriticalSection(&LHMusicCriticalSection);
	for (i = 0; i < LH_MUSIC_INFO_COUNT; i++)
	{
		if (MusicInfos[i].Bank == options->Bank)
		{
			if (LH_MusicInfo::master == i)
			{
				MusicInfos[i].FadeIn = options->FadeIn;
				MusicInfos[i].Volume = options->Volume;
				MusicInfos[i].Loop = options->Loop;
				MusicInfos[i].Status = LH_MUSIC_STATUS_PLAYING;
				LeaveCriticalSection(&LHMusicCriticalSection);
				return &MusicInfos[i];
			}
			if (!MusicInfos[i].Starting)
			{
				MusicInfos[i].FadeIn = options->FadeIn;
				MusicInfos[i].Volume = options->Volume;
				MusicInfos[i].Loop = options->Loop;
				LH_MusicInfo::master = i;
			}
			LeaveCriticalSection(&LHMusicCriticalSection);
			return &MusicInfos[i];
		}
	}

	for (i = 0; i < LH_MUSIC_INFO_COUNT; i++)
	{
		if (MusicInfos[i].Bank == NULL)
		{
			MusicInfos[i].Volume = options->Volume;
			MusicInfos[i].SampleVolume = LH_MUSIC_VOLUME_MAX;
			MusicInfos[i].FadeIn = options->FadeIn;
			if (!options->FadeIn)
			{
				MusicInfos[i].CurrentVolume = options->Volume;
			}
			else
			{
				MusicInfos[i].CurrentVolume = 0;
			}
			MusicInfos[i].Pitch = options->Pitch;
			MusicInfos[i].Bank = options->Bank;
			MusicInfos[i].GroupId = options->Bank->LHBankGetMusicGroupId();
			MusicInfos[i].PlayPosition = 0;
			MusicInfos[i].LoopCount = options->StartInSecondHalf;
			MusicInfos[i].Starting = true;
			MusicInfos[i].Positional = options->Positional;
			MusicInfos[i].Reserved1 = options->Reserved1;
			MusicInfos[i].Reserved2 = options->Reserved2;
			MusicInfos[i].Reserved3 = options->Reserved3;
			MusicInfos[i].NumberOfChunks = LHBankGetNumberOfSamples(MusicInfos[i].Bank);
			MusicInfos[i].PausedStatus = LH_MUSIC_STATUS_STOPPED;
			MusicInfos[i].NextChunk = LH_MUSIC_FIRST_CHUNK;
			MusicInfos[i].CurrentChunk = LH_MUSIC_FIRST_CHUNK;

			LH_BankSample* sample = MusicInfos[i].Bank->LHGetFirstBankSample();
			if (sample->OverrideFlags & LH_SAMPLE_OVERRIDE_VOLUME)
			{
				MusicInfos[i].SampleVolume = LH_AUDIO_LOW_WORD(sample->Volume);
			}
			if (sample->OverrideFlags & LH_SAMPLE_OVERRIDE_LOOP_COUNT)
			{
				MusicInfos[i].LoopCount = sample->LoopCount;
			}
			MusicInfos[i].Frequency = sample->Format.nSamplesPerSec;

			memset(&params, 0, sizeof(params));
			params.dwSize = sizeof(params);
			QSWaveMixGetChannelParams(QMixer, MusicInfos[i].Channel, &params);
			if (options->Positional == true)
			{
				DWORD mode = QMIX_CHANNEL_NODOPPLERPITCH;
				if (!Disable3DSpatialisation)
				{
					mode = QMIX_CHANNEL_NODOPPLERPITCH | QMIX_CHANNEL_QSOUND;
				}
				if ((params.dwChannelType & QMIX_CHANNELTYPE_STREAMING) && (params.dwChannelType & QMIX_CHANNELTYPE_2D))
				{
					QSWaveMixConfigureChannel(QMixer, MusicInfos[i].Channel,
					                          QMIX_CHANNELTYPE_STREAMING | QMIX_CHANNELTYPE_3D, NULL, NULL);
				}
				else if ((params.dwChannelType & QMIX_CHANNELTYPE_QSOUND) &&
				         (params.dwChannelType & QMIX_CHANNELTYPE_2D))
				{
					QSWaveMixConfigureChannel(QMixer, MusicInfos[i].Channel,
					                          QMIX_CHANNELTYPE_QSOUND | QMIX_CHANNELTYPE_3D, NULL, NULL);
				}
				QSWaveMixEnableChannel(QMixer, MusicInfos[i].Channel, QMIX_IMMEDIATE, mode | QMIX_CHANNEL_PITCH_LINEAR);

				QMIX_DISTANCES distances;
				memset(&distances, 0, sizeof(distances));
				distances.cbSize = sizeof(QMIX_DISTANCES);
				distances.minDistance = options->MinDistance;
				distances.maxDistance = options->MaxDistance;
				distances.scale = options->DistanceScale;
				if (sample->OverrideFlags & LH_SAMPLE_OVERRIDE_MAX_DISTANCE)
				{
					distances.maxDistance = sample->MaxDistance;
				}
				if (sample->OverrideFlags & LH_SAMPLE_OVERRIDE_MIN_DISTANCE)
				{
					distances.minDistance = sample->MinDistance;
				}
				if (sample->OverrideFlags & LH_SAMPLE_OVERRIDE_DISTANCE_SCALE)
				{
					distances.scale = sample->DistanceScale;
				}
				QSWaveMixSetDistanceMapping(QMixer, MusicInfos[i].Channel, QMIX_IMMEDIATE, &distances);

				QSVECTOR position = {options->X, options->Y, options->Z};
				QSWaveMixSetSourcePosition(QMixer, MusicInfos[i].Channel, 0, &position);
			}
			else
			{
				if ((params.dwChannelType & QMIX_CHANNELTYPE_STREAMING) && (params.dwChannelType & QMIX_CHANNELTYPE_3D))
				{
					QSWaveMixConfigureChannel(QMixer, MusicInfos[i].Channel,
					                          QMIX_CHANNELTYPE_STREAMING | QMIX_CHANNELTYPE_2D, NULL, NULL);
				}
				else if ((params.dwChannelType & QMIX_CHANNELTYPE_QSOUND) &&
				         (params.dwChannelType & QMIX_CHANNELTYPE_3D))
				{
					QSWaveMixConfigureChannel(QMixer, MusicInfos[i].Channel,
					                          QMIX_CHANNELTYPE_QSOUND | QMIX_CHANNELTYPE_2D, NULL, NULL);
				}
				QSWaveMixEnableChannel(QMixer, MusicInfos[i].Channel, QMIX_IMMEDIATE, QMIX_CHANNEL_PITCH_LINEAR);
			}

			if (options->Loop)
			{
				MusicInfos[i].Loop = true;
			}
			else
			{
				MusicInfos[i].Loop = false;
			}
			MusicInfos[i].StartChunk = options->StartChunk;
			MusicInfos[i].Status = LH_MUSIC_STATUS_PLAYING;
			if (options->Bank->Decoder != NULL)
			{
				options->Bank->Decoder->needs_reinit = true;
			}
			MusicInfos[i].FinishedCallback = options->FinishedCallback;
			MusicInfos[i].MarkerCallback = options->MarkerCallback;
			MusicInfos[i].CallbackParam = options->CallbackParam;
			if (options->MarkerCallback != NULL)
			{
				if (MusicInfos[i].Markers != NULL)
				{
					marker_search_info::Destroy(MusicInfos[i].Markers);
				}
				MusicInfos[i].Markers = NULL;
				MusicInfos[i].Markers = marker_search_info::Create(this, options->Bank);
				if (MusicInfos[i].Markers != NULL)
				{
					MusicInfos[i].Markers->StartTime = 0;
					if (options->StartChunk > LH_MUSIC_FIRST_CHUNK)
					{
						MusicInfos[i].Markers->StartChunk = options->StartChunk;
					}
					else
					{
						MusicInfos[i].Markers->StartChunk = LH_MUSIC_FIRST_CHUNK;
					}
				}
			}
			LeaveCriticalSection(&LHMusicCriticalSection);
			return &MusicInfos[i];
		}
	}

	LeaveCriticalSection(&LHMusicCriticalSection);
	return NULL;
}

void LH_AudioSystem::LHMusicStop(bool32_t fade)
{
	if (!MusicInstalled || !MusicActive || !SystemInstalled)
	{
		return;
	}

	EnterCriticalSection(&LHMusicCriticalSection);
	for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
	{
		if (MusicInfos[i].Status != LH_MUSIC_STATUS_STOPPED)
		{
			if (fade == true)
			{
				MusicInfos[i].Volume = 0;
			}
			else
			{
				MusicInfos[i].Bank = NULL;
				MusicInfos[i].Status = LH_MUSIC_STATUS_STOPPED;
				QSWaveMixSetVolume(QMixer, MusicInfos[i].Channel, QMIX_IMMEDIATE, 0);
				if (!QSWaveMixIsChannelDone(QMixer, MusicInfos[i].Channel))
				{
					QSWaveMixFlushChannel(QMixer, MusicInfos[i].Channel, 0);
				}
				MusicInfos[i].Volume = 0;
				if (LH_MusicInfo::master == i)
				{
					LH_MusicInfo::master = LH_MUSIC_NO_INFO;
				}
			}
		}
	}
	LeaveCriticalSection(&LHMusicCriticalSection);
}

void LH_AudioSystem::LHMusicStop(LH_MusicInfo* info, bool32_t fade)
{
	if (!MusicInstalled || !MusicActive || !SystemInstalled || info == NULL)
	{
		return;
	}

	EnterCriticalSection(&LHMusicCriticalSection);
	for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
	{
		if (&MusicInfos[i] == info)
		{
			if (MusicInfos[i].Status != LH_MUSIC_STATUS_STOPPED)
			{
				if (LH_MusicInfo::master == i)
				{
					LeaveCriticalSection(&LHMusicCriticalSection);
					LHMusicStop(fade);
					return;
				}
				if (fade != true)
				{
					MusicInfos[i].Bank = NULL;
					MusicInfos[i].Status = LH_MUSIC_STATUS_STOPPED;
					QSWaveMixSetVolume(QMixer, MusicInfos[i].Channel, QMIX_IMMEDIATE, 0);
					if (!QSWaveMixIsChannelDone(QMixer, MusicInfos[i].Channel))
					{
						QSWaveMixFlushChannel(QMixer, MusicInfos[i].Channel, 0);
					}
					MusicInfos[i].Volume = 0;
				}
			}
			LeaveCriticalSection(&LHMusicCriticalSection);
			return;
		}
	}
	LeaveCriticalSection(&LHMusicCriticalSection);
}

LH_MusicInfo* LH_AudioSystem::LHMusicGetInfo(LH_AudioBank* bank)
{
	if (MusicInstalled && MusicActive && SystemInstalled)
	{
		for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
		{
			if (MusicInfos[i].Bank == bank)
			{
				return &MusicInfos[i];
			}
		}
	}
	return NULL;
}

void LH_AudioSystem::LHMusicClose()
{
	if (!MusicInstalled || !SystemInstalled)
	{
		return;
	}

	music_thread_stopped = true;
	SetEvent(music_events[LH_MUSIC_EVENT_QUIT]);
	WaitForSingleObject(music_events[LH_MUSIC_EVENT_FINISHED], INFINITE);
	EnterCriticalSection(&LHMusicCriticalSection);
	for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
	{
		MusicInfos[i].Volume = 0;
		QSWaveMixSetVolume(QMixer, MusicInfos[i].Channel, QMIX_IMMEDIATE, 0);
		if (!QSWaveMixIsChannelDone(QMixer, MusicInfos[i].Channel))
		{
			QSWaveMixFlushChannel(QMixer, MusicInfos[i].Channel, 0);
		}
		while (music_buffers_queued[i] != 0)
		{
		}
	}
	MusicInstalled = false;
	LeaveCriticalSection(&LHMusicCriticalSection);
}

inline unsigned long LHMusicGetQMixerVolume(LH_MusicInfo* info)
{
	return ((info->CurrentVolume * info->SampleVolume * LH_MUSIC_QMIXER_VOLUME_SCALE) / LH_MUSIC_VOLUME_MAX *
	        LH_MusicInfo::master_volume) /
	       LH_MUSIC_VOLUME_MAX;
}

void LH_AudioSystem::LHMusicSetMasterVolume(unsigned long volume)
{
	if (!MusicInstalled || !MusicActive || !SystemInstalled || volume == LH_MusicInfo::master_volume)
	{
		return;
	}

	if (volume > LH_MUSIC_VOLUME_MAX)
	{
		volume = LH_MUSIC_VOLUME_MAX;
	}
	LH_MusicInfo::master_volume = volume;
	for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
	{
		if (MusicInfos[i].Status == LH_MUSIC_STATUS_PLAYING || MusicInfos[i].Status == LH_MUSIC_STATUS_FINISHING)
		{
			QSWaveMixSetVolume(QMixer, MusicInfos[i].Channel, 0, LHMusicGetQMixerVolume(&MusicInfos[i]));
		}
	}
}

long LH_AudioSystem::LHMusicGetMasterVolume()
{
	if (!MusicInstalled || !MusicActive || !SystemInstalled)
	{
		return LH_MUSIC_VOLUME_INVALID;
	}
	return LH_MusicInfo::master_volume;
}

void LH_AudioSystem::LHMusicSetPitch(LH_MusicInfo* info, unsigned long pitch)
{
	if (!MusicInstalled || !MusicActive || !SystemInstalled)
	{
		return;
	}

	for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
	{
		if (&MusicInfos[i] == info)
		{
			if (pitch == MusicInfos[i].Pitch)
			{
				return;
			}
			if (pitch > LH_MUSIC_PITCH_MAX)
			{
				pitch = LH_MUSIC_PITCH_MAX;
			}
			else if (pitch < LH_MUSIC_PITCH_MIN)
			{
				pitch = LH_MUSIC_PITCH_MIN;
			}
			MusicInfos[i].Pitch = pitch;
			QSWaveMixSetFrequency(QMixer, MusicInfos[i].Channel, 0,
			                      MusicInfos[i].Frequency * MusicInfos[i].Pitch / LH_MUSIC_PITCH_NORMAL);
		}
	}
}

void LH_AudioSystem::LHMusicPause()
{
	if (!MusicInstalled || !MusicActive || !SystemInstalled)
	{
		return;
	}

	for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
	{
		QSWaveMixPauseChannel(QMixer, MusicInfos[i].Channel, 0);
		MusicInfos[i].PausedStatus = MusicInfos[i].Status;
		MusicInfos[i].Status = LH_MUSIC_STATUS_PAUSED;
	}
}

void LH_AudioSystem::LHMusicRestart()
{
	if (!MusicInstalled || !MusicActive || !SystemInstalled)
	{
		return;
	}

	for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
	{
		QSWaveMixRestartChannel(QMixer, MusicInfos[i].Channel, 0);
		MusicInfos[i].Status = MusicInfos[i].PausedStatus;
	}
}

bool32_t LH_AudioSystem::LHMusicIsInstalled()
{
	return MusicInstalled;
}

bool32_t LH_AudioSystem::LHMusicIsActive()
{
	return MusicActive;
}

void LH_AudioSystem::LHMusicSwitch(unsigned long on)
{
	if (MusicInstalled && SystemInstalled)
	{
		if (on == false)
		{
			LHMusicStop(false);
			MusicActive = false;
		}
		else if (on == true)
		{
			MusicActive = on;
		}
	}
}

static void music_thread(void* param)
{
	LH_AudioSystem* system = (LH_AudioSystem*)param;
	long            other = LH_MUSIC_NO_INFO;
	bool32_t        error = false;

	for (;;)
	{
		switch (WaitForMultipleObjects(LH_MUSIC_EVENT_COUNT, music_events, false, INFINITE))
		{
		case WAIT_OBJECT_0 + LH_MUSIC_EVENT_START:
			music_thread_stopped = false;
			while (!music_thread_stopped)
			{
				EnterCriticalSection(&LHMusicCriticalSection);
				for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
				{
					LH_MUSIC_STATUS status = system->MusicInfos[i].Status;
					if ((status == LH_MUSIC_STATUS_PLAYING || status == LH_MUSIC_STATUS_FINISHING) &&
					    LH_MusicInfo::master == i && system->LHMusicIsActive() && system->MusicInfos[i].Markers != NULL)
					{
						system->MusicInfos[i].Markers->Update(system, &system->MusicInfos[i]);
					}

					if (system->MusicInfos[i].Status == LH_MUSIC_STATUS_FINISHED)
					{
						system->MusicInfos[i].Bank = NULL;
						system->MusicInfos[i].Status = LH_MUSIC_STATUS_STOPPED;
						if (system->MusicInfos[i].FinishedCallback != NULL)
						{
							system->MusicInfos[i].FinishedCallback(system->MusicInfos[i].CallbackParam);
						}
						QSWaveMixSetVolume(system->QMixer, system->MusicInfos[i].Channel, 0, 0);
						if (!QSWaveMixIsChannelDone(system->QMixer, system->MusicInfos[i].Channel))
						{
							QSWaveMixFlushChannel(system->QMixer, system->MusicInfos[i].Channel, 0);
						}
						system->MusicInfos[i].Volume = 0;
						if (LH_MusicInfo::master == i)
						{
							LH_MusicInfo::master = LH_MUSIC_NO_INFO;
						}
					}

					if (system->MusicInfos[i].Status == LH_MUSIC_STATUS_PLAYING && system->LHMusicIsActive())
					{
						while (music_buffers_queued[i] != LH_MUSIC_MAX_QUEUED && system->LHMusicIsActive())
						{
							if (system->MusicInfos[i].Starting)
							{
								other = LH_MUSIC_NO_INFO;
								if (system->MusicInfos[i].Loop == true)
								{
									for (unsigned long j = 0; j < LH_MUSIC_INFO_COUNT; j++)
									{
										if (j != i && system->MusicInfos[j].Status == LH_MUSIC_STATUS_PLAYING &&
										    system->MusicInfos[j].GroupId == system->MusicInfos[i].GroupId &&
										    system->MusicInfos[j].GroupId != LH_BANK_MUSIC_GROUP_NONE)
										{
											system->MusicInfos[i].NextChunk = system->MusicInfos[j].CurrentChunk;
											if (system->MusicInfos[i].Markers != NULL)
											{
												system->MusicInfos[i].Markers->StartChunk =
													system->MusicInfos[j].CurrentChunk;
											}
											other = j;
											break;
										}
									}
								}
								if (other == LH_MUSIC_NO_INFO)
								{
									if (system->MusicInfos[i].StartChunk <= system->MusicInfos[i].NumberOfChunks &&
									    system->MusicInfos[i].StartChunk != 0)
									{
										system->MusicInfos[i].NextChunk = system->MusicInfos[i].StartChunk;
									}
									else
									{
										system->MusicInfos[i].NextChunk = LH_MUSIC_FIRST_CHUNK;
									}
								}
								system->MusicInfos[i].CurrentChunk = system->MusicInfos[i].NextChunk;
							}

							QMIXWAVEPARAMS waveParams;
							QMIXPLAYPARAMS playParams;
							memset(&waveParams, 0, sizeof(waveParams));
							memset(&playParams, 0, sizeof(playParams));
							LH_BankSample* sample = system->MusicInfos[i].Bank->LHGetFirstBankSample();
							bool32_t       last = false;
							sample += system->MusicInfos[i].NextChunk++ - 1;
							if (system->MusicInfos[i].NextChunk > system->MusicInfos[i].NumberOfChunks)
							{
								if (system->MusicInfos[i].LoopCount == 0)
								{
									last = true;
									system->MusicInfos[i].Status = LH_MUSIC_STATUS_FINISHING;
								}
								else
								{
									system->MusicInfos[i].LoopCount--;
									system->MusicInfos[i].NextChunk = LH_MUSIC_FIRST_CHUNK;
								}
							}

							char* data = (char*)malloc(sample->Size + sizeof(unsigned long));
							alloc_count++;
							if (system->MusicInfos[i].Bank->File->GetSegmentData(LHFileSegmentWaveData, data,
							                                                     sample->Size, sample->Offset))
							{
								free(data);
								error = true;
								goto leave;
							}
							error = false;

							MPGAudioDecoder* decoder = system->MusicInfos[i].Bank->Decoder;
							if (decoder != NULL && !decoder->initialised)
							{
								system->MusicInfos[i].Bank->Decoder->close();
								if (decoder != NULL)
								{
									delete decoder;
								}
								system->MusicInfos[i].Bank->Decoder = NULL;
							}
							if (system->MusicInfos[i].Bank->Decoder == NULL)
							{
								system->MusicInfos[i].Bank->Decoder = new MPGAudioDecoder;
								system->MusicInfos[i].Bank->Decoder->init(*(unsigned long*)data);
							}
							else if (decoder->needs_reinit)
							{
								decoder->reinit(*(unsigned long*)data);
							}

							decompression_info decompressed;
							decompress_it(system->MusicInfos[i].Bank->Decoder, data, sample->Size, &decompressed);
							decoder = system->MusicInfos[i].Bank->Decoder;
							if (decoder != NULL && !decoder->initialised)
							{
								system->MusicInfos[i].Bank->Decoder->close();
								if (decoder != NULL)
								{
									delete decoder;
								}
								system->MusicInfos[i].Bank->Decoder = NULL;
							}
							free(data);

							waveParams.Resident.Format = &decompressed.format;
							waveParams.Resident.Data = (HPSTR)decompressed.raw_data;
							waveParams.Resident.Bytes = decompressed.length;
							waveParams.Resident.Samples = decompressed.length / decompressed.format.nChannels /
							                              (decompressed.format.wBitsPerSample / LH_MUSIC_BITS_PER_BYTE);
							waveParams.Resident.Tag = 0;
							MIXWAVE* wave = QSWaveMixOpenWaveEx(music_system->QMixer, &waveParams, QMIX_RESIDENT);

							playParams.dwSize = sizeof(playParams);
							playParams.callback = qmixer_done_music_callback;
							music_buffer* buffer = new music_buffer;
							buffer->Last = last;
							buffer->Data = decompressed.raw_data;
							playParams.dwUser = (DWORD)buffer;
							if (system->MusicInfos[i].Starting)
							{
								system->MusicInfos[i].Starting = false;
								if (system->MusicInfos[i].Loop == true && other != LH_MUSIC_NO_INFO &&
								    system->MusicInfos[other].Status == LH_MUSIC_STATUS_PLAYING)
								{
									MIXWAVE* otherWave;
									QSWaveMixGetPlayPosition(system->QMixer, system->MusicInfos[other].Channel,
									                         &otherWave, &system->MusicInfos[i].PlayPosition,
									                         QMIX_POSITION_SAMPLES);
									playParams.lStart = system->MusicInfos[i].PlayPosition;
								}
								LH_MusicInfo::master = i;
							}
							else
							{
								system->MusicInfos[i].PlayPosition = 0;
								playParams.lStart = 0;
							}
							music_buffers_queued[i]++;

							QSPOLAR polar = {0.0f, 0.0f, 0.0f};
							if (!system->MusicInfos[i].Positional)
							{
								QSWaveMixSetPolarPosition(system->QMixer, system->MusicInfos[i].Channel, QMIX_IMMEDIATE,
								                          &polar);
							}
							QSWaveMixSetFrequency(system->QMixer, system->MusicInfos[i].Channel, QMIX_IMMEDIATE,
							                      system->MusicInfos[i].Frequency * system->MusicInfos[i].Pitch /
							                          LH_MUSIC_PITCH_NORMAL);
							QSWaveMixSetVolume(system->QMixer, system->MusicInfos[i].Channel, 0,
							                   LHMusicGetQMixerVolume(&system->MusicInfos[i]));
							if (system->MusicInfos[i].Markers != NULL && system->MusicInfos[i].Markers->StartTime == 0)
							{
								system->MusicInfos[i].Markers->StartTime = GetTickCount();
							}
							QSWaveMixPlayEx(system->QMixer, system->MusicInfos[i].Channel, QMIX_PLAY_NOTIFYSTOP, wave,
							                0, &playParams);
						}
					}

					status = system->MusicInfos[i].Status;
					if ((status == LH_MUSIC_STATUS_PLAYING || status == LH_MUSIC_STATUS_FINISHING) &&
					    system->LHMusicIsActive())
					{
						if (system->MusicInfos[i].CurrentVolume < system->MusicInfos[i].Volume &&
						    LH_MusicInfo::master == i)
						{
							if (!system->MusicInfos[i].FadeIn)
							{
								system->MusicInfos[i].CurrentVolume = system->MusicInfos[i].Volume;
								QSWaveMixSetVolume(system->QMixer, system->MusicInfos[i].Channel, 0,
								                   LHMusicGetQMixerVolume(&system->MusicInfos[i]));
								system->MusicInfos[i].FadeIn = true;
							}
							else
							{
								if (system->MusicInfos[i].CurrentVolume + LH_MUSIC_FADE_IN_STEP >
								    system->MusicInfos[i].Volume)
								{
									system->MusicInfos[i].CurrentVolume = system->MusicInfos[i].Volume;
								}
								else
								{
									system->MusicInfos[i].CurrentVolume += LH_MUSIC_FADE_IN_STEP;
								}
								QSWaveMixSetVolume(system->QMixer, system->MusicInfos[i].Channel, 0,
								                   LHMusicGetQMixerVolume(&system->MusicInfos[i]));
							}
						}
						else if (system->MusicInfos[i].CurrentVolume > system->MusicInfos[i].Volume ||
						         LH_MusicInfo::master != i)
						{
							long volume = system->MusicInfos[i].CurrentVolume - LH_MUSIC_FADE_OUT_STEP;
							system->MusicInfos[i].CurrentVolume = max(0, volume);
							QSWaveMixSetVolume(system->QMixer, system->MusicInfos[i].Channel, 0,
							                   LHMusicGetQMixerVolume(&system->MusicInfos[i]));
							if (system->MusicInfos[i].CurrentVolume == 0)
							{
								if (LH_MusicInfo::master == i)
								{
									LH_MusicInfo::master = LH_MUSIC_NO_INFO;
								}
								system->MusicInfos[i].Status = LH_MUSIC_STATUS_STOPPED;
								system->MusicInfos[i].Bank = NULL;
								if (!QSWaveMixIsChannelDone(system->QMixer, system->MusicInfos[i].Channel))
								{
									QSWaveMixFlushChannel(system->QMixer, system->MusicInfos[i].Channel, 0);
								}
							}
						}
					}
				}
			leave:
				LeaveCriticalSection(&LHMusicCriticalSection);
				if (error)
				{
					Sleep(LH_MUSIC_ERROR_SLEEP);
				}
				else
				{
					Sleep(LH_MUSIC_UPDATE_SLEEP);
				}
			}
			break;
		case WAIT_OBJECT_0 + LH_MUSIC_EVENT_QUIT:
			SetEvent(music_events[LH_MUSIC_EVENT_FINISHED]);
			_endthread();
			break;
		}
	}
}

static bool32_t decompress_it(MPGAudioDecoder* decoder, char* input, int input_length, decompression_info* decompressed)
{
	LeaveCriticalSection(&LHMusicCriticalSection);
	decompressed->raw_data = (unsigned char*)malloc(input_length * LH_MUSIC_DECOMPRESSED_FACTOR);
	memset(decompressed->raw_data, 0, input_length * LH_MUSIC_DECOMPRESSED_FACTOR);

	unsigned char* output = decompressed->raw_data;
	char*          end = input + input_length;
	char*          in = input;
	int            bytes = 1;
	while (decoder->initialised && in < end && bytes)
	{
		int decoded;
		bytes = 0;
		decoder->pcm_point = 0;
		decoder->inputpointer = (unsigned char*)in;
		decoder->pcm_sample = output;
		if (!decoder->read_frame(&decoder->fr))
		{
			decoder->close();
			decoded = 0;
		}
		else
		{
			decoder->do_layer2(&decoder->fr);
			bytes = decoder->inputpointer - (unsigned char*)in;
			decoded = decoder->pcm_point;
		}
		if (decoder->first_frame_bytes == 0)
		{
			decoder->first_frame_bytes = bytes;
		}
		output += decoded;
		in += bytes;
		if (end - in < decoder->get_first_frame_bytes())
		{
			if (end != in && decoder->initialised)
			{
				decoder->uninit();
			}
			break;
		}
		// clang-format off
		LH_ASSERT(output<decompressed->raw_data+input_length*12, "overrun detected", 1161);
		// clang-format on
	}

	unsigned long length = output - decompressed->raw_data;
	mpg_header_to_wave_format(*(unsigned long*)input, &decompressed->format);
	decompressed->length = length;
	EnterCriticalSection(&LHMusicCriticalSection);
	return true;
}

unsigned long LH_AudioSystem::LHMusicGetCurrentChunk(LH_MusicInfo* info)
{
	if (!MusicInstalled || info == NULL)
	{
		return 0;
	}
	return info->CurrentChunk;
}

unsigned long LH_AudioSystem::LHMusicGetTotalGroups()
{
	if (!MusicInstalled)
	{
		return 0;
	}
	return MusicTotalGroups;
}

LH_MusicInfo* LH_AudioSystem::LHMusicGetMasterInfo()
{
	if (!MusicInstalled || LH_MusicInfo::master == LH_MUSIC_NO_INFO)
	{
		return NULL;
	}
	return &MusicInfos[LH_MusicInfo::master];
}

void LH_AudioSystem::LHMusicSet3DPosition(LH_MusicInfo* info, float x, float y, float z)
{
	if (MusicInstalled && info != NULL && info->Bank != NULL && info->Positional == true)
	{
		QSVECTOR position = {x, y, z};
		QSWaveMixSetSourcePosition(QMixer, info->Channel, 0, &position);
	}
}

unsigned long LH_AudioSystem::LHMusicGetStatus(LH_MusicInfo* info)
{
	if (MusicInstalled && MusicActive && SystemInstalled)
	{
		for (unsigned long i = 0; i < LH_MUSIC_INFO_COUNT; i++)
		{
			if (&MusicInfos[i] == info)
			{
				return MusicInfos[i].Status;
			}
		}
	}
	return LH_MUSIC_STATUS_STOPPED;
}
