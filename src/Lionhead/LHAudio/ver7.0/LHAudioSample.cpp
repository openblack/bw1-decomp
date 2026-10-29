#include <limits.h> /* For ULONG_MAX */
#include <math.h>   /* For fabs, sqrt, atan */
#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For abs, malloc, free, rand, srand */
#include <string.h> /* For memset, strrchr, _stricmp, _strupr */
#include <time.h>   /* For time */

#include <mmreg.h> /* For WAVE_FORMAT_MPEG */
#include <msacm.h> /* For acmStreamOpen */

#include "LHAudioLog.h"
#include "LH_AudioBank.h"
#include "LH_BankSample.h"
#include "LH_SamplePlayOptions.h"
#include "MPGAudioDecoder.h"

#define FILEPATH LH_AUDIO_SOURCE_DIRECTORY "LHAudioSample.cpp"

#define LH_SAMPLE_NO_FILE_NAME            "NONE"
#define LH_SAMPLE_NAME_LENGTH             0x80
#define LH_SAMPLE_EMPTY_WAVE_SIZE         0x2c
#define LH_SAMPLE_PAN_MAX                 180
#define LH_SAMPLE_PAN_CENTRE              90
#define LH_SAMPLE_PAN_RANGE               1.0f
#define LH_SAMPLE_PITCH_NORMAL            100
#define LH_SAMPLE_QMIXER_VOLUME_SCALE     258
#define LH_SAMPLE_DEFAULT_MIN_DISTANCE    1.0f
#define LH_SAMPLE_DEFAULT_MAX_DISTANCE    9999.0f
#define LH_SAMPLE_DEFAULT_DISTANCE_SCALE  0.3f
#define LH_SAMPLE_PCM_BITS_PER_SAMPLE     16
#define LH_SAMPLE_BITS_PER_BYTE           8
#define LH_SAMPLE_ACM_OUTPUT_FACTOR       5
#define LH_SAMPLE_ACM_OUTPUT_DIVISOR      4
#define LH_SAMPLE_LOOP_NONE               (-1)
#define LH_SAMPLE_AZIMUTH_FRONT           0
#define LH_SAMPLE_AZIMUTH_RIGHT           90
#define LH_SAMPLE_AZIMUTH_BACK            180
#define LH_SAMPLE_AZIMUTH_LEFT            270
#define LH_SAMPLE_ELEVATION_UP            90
#define LH_SAMPLE_ELEVATION_DOWN          (-90)
#define LH_SAMPLE_DEGREES_PER_PI          180.0
#define LH_SAMPLE_PI                      3.14
#define LH_SAMPLE_STOP_PAN_RATE           20
#define LH_SAMPLE_STOP_SLEEP              20
#define LH_SAMPLE_PAN_RATE                100
#define LH_SAMPLE_USER_PARAM_INVALID      (-1)
#define LH_SAMPLE_PLAY_POSITION_INVALID   (-1)
#define LH_SAMPLE_DISTANCE_INVALID        (-1.0f)
#define LH_SAMPLE_PERCENTAGE_FINISHED     1.0f
#define LH_SAMPLE_MILLISECONDS_PER_SECOND 1000
#define LH_SAMPLE_ADPCM_COMPRESSION_RATIO 4
#define LH_SAMPLE_BYTES_PER_SAMPLE        2
#define LH_SAMPLE_DECOMPRESSED_FACTOR     8
#define LH_ANIM_ATTRIB_ANY                0x0fff0000

#define LH_SAMPLE_RADIANS_TO_DEGREES(angle) (((angle) * LH_SAMPLE_DEGREES_PER_PI) / LH_SAMPLE_PI)

enum LH_SAMPLE_ANIM_EFFECT
{
	LH_SAMPLE_ANIM_EFFECT_PLAY = 0,
	LH_SAMPLE_ANIM_EFFECT_STOP = 1,
	LH_SAMPLE_ANIM_EFFECT_RELEASE_LOOP = 2,
};

struct ACM_decompression_info
{
	unsigned long  length;   /* 0x0 */
	unsigned char* raw_data; /* 0x4 */
	WAVEFORMATEX   format;   /* 0x8 */
};
static_assert(sizeof(ACM_decompression_info) == 0x1c, "Data type is of wrong size");

// BW1W120 100108c0 BW1M119 0103f800 (LHCombined Release)
void CALLBACK qmixer_done_callback(int channel, MIXWAVE* wave, unsigned long user);
// BW1W120 10010910 BW1M119 0112f5e0 (LHCombined Release)
bool32_t decompress_if_it_needs_it(MMIOINFO* info, ACM_decompression_info* decompressed);
// BW1W120 10014610 BW1M119 inlined
static long* LHBestAttribRow(long* key, long* first, long* second, long width);
// BW1W120 10014d80 BW1M119 0112ab50 (LHCombined Release)
static bool32_t decompress_mpeg(MPGAudioDecoder* decoder, char* input, int input_length,
                                ACM_decompression_info* decompressed);

inline void LHSampleCalcPolar(float pos_x, float pos_y, float pos_z, QSPOLAR* polar)
{
	double x = pos_x;
	double y = pos_y;
	double z = pos_z;

	polar->range = sqrt(x * x + y * y + z * z);
	if (z == 0.0)
	{
		polar->elevation = 0.0f;
	}
	else if (y == 0.0 && x == 0.0)
	{
		if (z < 0.0)
		{
			polar->elevation = LH_SAMPLE_ELEVATION_DOWN;
		}
		else
		{
			polar->elevation = LH_SAMPLE_ELEVATION_UP;
		}
	}
	else
	{
		polar->elevation = LH_SAMPLE_RADIANS_TO_DEGREES(atan(z / sqrt(x * x + y * y)));
	}

	if (x == 0.0 && y >= 0.0)
	{
		polar->azimuth = LH_SAMPLE_AZIMUTH_FRONT;
	}
	else if (x == 0.0 && y < 0.0)
	{
		polar->azimuth = LH_SAMPLE_AZIMUTH_BACK;
	}
	else if (y == 0.0 && x > 0.0)
	{
		polar->azimuth = LH_SAMPLE_AZIMUTH_RIGHT;
	}
	else if (y == 0.0 && x < 0.0)
	{
		polar->azimuth = LH_SAMPLE_AZIMUTH_LEFT;
	}
	else if (x > 0.0 && y > 0.0)
	{
		polar->azimuth = LH_SAMPLE_AZIMUTH_RIGHT - LH_SAMPLE_RADIANS_TO_DEGREES(atan(y / x));
	}
	else if (x > 0.0 && y < 0.0)
	{
		polar->azimuth = LH_SAMPLE_AZIMUTH_RIGHT + LH_SAMPLE_RADIANS_TO_DEGREES(atan(abs(y) / x));
	}
	else if (x < 0.0 && y < 0.0)
	{
		polar->azimuth = LH_SAMPLE_AZIMUTH_LEFT - LH_SAMPLE_RADIANS_TO_DEGREES(atan((double)abs(y) / abs(x)));
	}
	else if (x < 0.0 && y > 0.0)
	{
		polar->azimuth = LH_SAMPLE_AZIMUTH_LEFT + LH_SAMPLE_RADIANS_TO_DEGREES(atan(y / abs(x)));
	}
}

void CALLBACK qmixer_done_callback(int channel, MIXWAVE* wave, unsigned long user)
{
	LH_SampleInfo* info = (LH_SampleInfo*)user;
	if (info != NULL)
	{
		if (info->Data != NULL && !info->KeepData)
		{
			info->SampleNumber = 0;
			free(info->Data);
			info->Data = NULL;
			info->DataSize = 0;
		}
		info->Playing = false;
	}
}

bool32_t decompress_if_it_needs_it(MMIOINFO* info, ACM_decompression_info* decompressed)
{
	MMCKINFO        riff;
	MMCKINFO        chunk;
	WAVEFORMATEX    format;
	WAVEFORMATEX    pcmFormat;
	unsigned long   factSamples;
	HACMSTREAM      stream;
	ACMSTREAMHEADER header;
	bool32_t        mpeg = false;

	HMMIO mmio = mmioOpen(NULL, info, 0);
	if (mmio == NULL)
	{
		return false;
	}

	riff.fccType = mmioFOURCC('W', 'A', 'V', 'E');
	if (mmioDescend(mmio, &riff, NULL, MMIO_FINDRIFF))
	{
		mmioClose(mmio, 0);
		return false;
	}

	chunk.ckid = mmioFOURCC('f', 'm', 't', ' ');
	if (mmioDescend(mmio, &chunk, &riff, MMIO_FINDCHUNK))
	{
		mmioClose(mmio, 0);
		return false;
	}

	memset(&format, 0, sizeof(format));
	memset(&pcmFormat, 0, sizeof(pcmFormat));
	mmioRead(mmio, (HPSTR)&format, sizeof(format));
	if (format.wFormatTag == WAVE_FORMAT_PCM)
	{
		mmioClose(mmio, 0);
		return false;
	}
	if (format.wFormatTag == WAVE_FORMAT_MPEG || format.wFormatTag == WAVE_FORMAT_MPEGLAYER3)
	{
		mpeg = true;
	}

	WAVEFORMATEX* source = (WAVEFORMATEX*)malloc(format.cbSize + sizeof(WAVEFORMATEX));
	*source = format;
	mmioRead(mmio, (HPSTR)(source + 1), source->cbSize);

	pcmFormat = *source;
	pcmFormat.wBitsPerSample = LH_SAMPLE_PCM_BITS_PER_SAMPLE;
	pcmFormat.nBlockAlign = pcmFormat.nChannels * (pcmFormat.wBitsPerSample / LH_SAMPLE_BITS_PER_BYTE);
	pcmFormat.wFormatTag = WAVE_FORMAT_PCM;
	pcmFormat.nAvgBytesPerSec = pcmFormat.nBlockAlign * pcmFormat.nSamplesPerSec;
	pcmFormat.cbSize = 0;
	mmioAscend(mmio, &chunk, 0);

	chunk.ckid = mmioFOURCC('f', 'a', 'c', 't');
	if (mmioDescend(mmio, &chunk, &riff, MMIO_FINDCHUNK))
	{
		factSamples = 0;
	}
	else
	{
		mmioRead(mmio, (HPSTR)&factSamples, sizeof(factSamples));
		mmioAscend(mmio, &chunk, 0);
	}

	chunk.ckid = mmioFOURCC('d', 'a', 't', 'a');
	if (mmioDescend(mmio, &chunk, &riff, MMIO_FINDCHUNK))
	{
		mmioClose(mmio, 0);
		free(source);
		return false;
	}

	if (mpeg)
	{
		MPGAudioDecoder* decoder = new MPGAudioDecoder;
		decoder->init(*(unsigned long*)(info->pchBuffer + chunk.dwDataOffset));
		decompress_mpeg(decoder, info->pchBuffer + chunk.dwDataOffset, chunk.cksize, decompressed);
		if (factSamples)
		{
			decompressed->length = min(decompressed->format.nBlockAlign * factSamples, decompressed->length);
		}
		if (decoder != NULL)
		{
			decoder->close();
			delete decoder;
		}
		return true;
	}

	stream = NULL;
	if (acmStreamOpen(&stream, NULL, source, &pcmFormat, NULL, 0, 0, ACM_STREAMOPENF_NONREALTIME))
	{
		mmioClose(mmio, 0);
		free(source);
		return false;
	}

	unsigned long  length = info->cchBuffer * pcmFormat.nAvgBytesPerSec / source->nAvgBytesPerSec *
	                        LH_SAMPLE_ACM_OUTPUT_FACTOR / LH_SAMPLE_ACM_OUTPUT_DIVISOR;
	unsigned char* output = (unsigned char*)malloc(length);
	memset(&header, 0, sizeof(header));
	header.cbStruct = sizeof(header);
	header.pbSrc = (LPBYTE)info->pchBuffer + chunk.dwDataOffset;
	header.cbSrcLength = chunk.cksize;
	header.pbDst = output;
	header.cbDstLength = length;
	acmStreamPrepareHeader(stream, &header, 0);
	if (acmStreamConvert(stream, &header, 0))
	{
		mmioClose(mmio, 0);
		free(source);
		return false;
	}

	free(source);
	decompressed->raw_data = output;
	decompressed->length = header.cbDstLengthUsed;
	if (factSamples)
	{
		decompressed->length = pcmFormat.nBlockAlign * factSamples;
	}
	decompressed->format = pcmFormat;
	acmStreamClose(stream, 0);
	mmioClose(mmio, 0);
	return true;
}

LH_SamplePlayOptions::LH_SamplePlayOptions()
{
	Bank = NULL;
	AtmosInfo = NULL;
	Positional = false;
	Follow = true;
	Doppler = false;
	Polar = false;
	Stream = false;
	OverrideFlags = 0;
	AttachedObject = NULL;
	SampleNumber = 0;
	Volume = LH_SAMPLE_VOLUME_MAX;
	Pan = LH_SAMPLE_PAN_CENTRE;
	XPos = 0.0f;
	YPos = 0.0f;
	ZPos = 0.0f;
	XOffset = 0.0f;
	YOffset = 0.0f;
	ZOffset = 0.0f;
	Pitch = LH_SAMPLE_PITCH_NORMAL;
	LoopCount = 0;
	PlayType = LH_SAMPLE_PLAY_TYPE_RESTART;
	MinDistance = LH_SAMPLE_DEFAULT_MIN_DISTANCE;
	MaxDistance = LH_SAMPLE_DEFAULT_MAX_DISTANCE;
	DistanceScale = LH_SAMPLE_DEFAULT_DISTANCE_SCALE;
	sprintf(FileName, LH_SAMPLE_NO_FILE_NAME);
	Flags = 0;
}

bool32_t LH_AudioSystem::LHSampleIsValid(LH_SamplePlayOptions* options)
{
	if (options->Bank == NULL && _stricmp(options->FileName, LH_SAMPLE_NO_FILE_NAME) == 0)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_BANK_RELEASE_INVALID_BANK, 292);
		return false;
	}
	if (options->SampleNumber <= 0 && _stricmp(options->FileName, LH_SAMPLE_NO_FILE_NAME) == 0)
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_SAMPLE_PLAY_INVALID_SAMPLE_NUMBER, 298, options->SampleNumber);
		return false;
	}
	if (options->Bank != NULL && options->SampleNumber > options->Bank->NumberOfSamples)
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_SAMPLE_PLAY_TOO_FEW_SAMPLES, 306, options->Bank->NumberOfSamples);
		return false;
	}
	return true;
}

LH_SamplePlayOptions::~LH_SamplePlayOptions() {}

LH_SampleInfo* LH_AudioSystem::LHSampleGetFreeSlot(LH_SamplePlayOptions* options, bool32_t* play, bool32_t* restart)
{
	LH_SampleInfo*       info = NULL;
	LH_SamplePlayOptions tsample_opts = *options;
	LH_SampleInfo*       lowestInfo;
	unsigned long        lowestPriority = ULONG_MAX;
	LH_SampleInfo*       slot;

	if (!WaveInstalled || !SystemInstalled || tsample_opts.Bank == NULL)
	{
		*play = false;
		return NULL;
	}
	if (!LHSampleIsValid(&tsample_opts))
	{
		*play = false;
		return NULL;
	}

	LH_BankSample* sample = &tsample_opts.Bank->LHGetFirstBankSample()[tsample_opts.SampleNumber - 1];
	if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_PLAY_TYPE) &&
	    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_PLAY_TYPE))
	{
		tsample_opts.PlayType = sample->PlayType;
	}

	*restart = false;
	switch (tsample_opts.PlayType)
	{
	case LH_SAMPLE_PLAY_TYPE_OVERLAP:
		for (slot = FirstSampleInfo; slot <= LastSampleInfo; slot++)
		{
			if (!slot->Playing)
			{
				info = slot;
				info->AttachedObject = options->AttachedObject;
				info->Z = 0.0f;
				info->Y = 0.0f;
				info->X = 0.0f;
				break;
			}
		}
		break;
	case LH_SAMPLE_PLAY_TYPE_ONCE:
		for (slot = FirstSampleInfo; slot <= LastSampleInfo; slot++)
		{
			if (slot->Bank == tsample_opts.Bank && slot->AttachedObject == tsample_opts.AttachedObject &&
			    (slot->SampleNumber == tsample_opts.SampleNumber ||
			     (slot->Group == LH_AUDIO_LOW_WORD(sample->Group) && LH_AUDIO_LOW_WORD(sample->Group) > 0)) &&
			    slot->Playing == true)
			{
				*play = false;
				return slot;
			}
		}
		for (slot = FirstSampleInfo; slot <= LastSampleInfo; slot++)
		{
			if (!slot->Playing)
			{
				info = slot;
				info->AttachedObject = options->AttachedObject;
				info->Z = 0.0f;
				info->Y = 0.0f;
				info->X = 0.0f;
				break;
			}
		}
		break;
	case LH_SAMPLE_PLAY_TYPE_RESTART:
		for (slot = FirstSampleInfo; slot <= LastSampleInfo; slot++)
		{
			if (slot->Bank == tsample_opts.Bank && slot->AttachedObject == tsample_opts.AttachedObject &&
			    slot->SampleNumber == tsample_opts.SampleNumber)
			{
				info = slot;
				*restart = true;
				break;
			}
		}
		if (!*restart)
		{
			if (_stricmp(tsample_opts.FileName, LH_SAMPLE_NO_FILE_NAME) == 0 && LH_AUDIO_LOW_WORD(sample->Group) > 0)
			{
				info = NULL;
				for (slot = FirstSampleInfo; slot <= LastSampleInfo; slot++)
				{
					if (slot->Bank == tsample_opts.Bank && slot->AttachedObject == tsample_opts.AttachedObject &&
					    slot->Group == LH_AUDIO_LOW_WORD(sample->Group))
					{
						info = slot;
						info->AttachedObject = options->AttachedObject;
						info->Z = 0.0f;
						info->Y = 0.0f;
						info->X = 0.0f;
						break;
					}
				}
			}
			if (info == NULL)
			{
				for (slot = FirstSampleInfo; slot <= LastSampleInfo; slot++)
				{
					if (!slot->Playing)
					{
						info = slot;
						info->AttachedObject = options->AttachedObject;
						info->Z = 0.0f;
						info->Y = 0.0f;
						info->X = 0.0f;
						break;
					}
				}
			}
		}
		break;
	}

	if (info == NULL && _stricmp(tsample_opts.FileName, LH_SAMPLE_NO_FILE_NAME) == 0 && sample->Priority)
	{
		for (slot = FirstSampleInfo; slot <= LastSampleInfo; slot++)
		{
			if (slot->Priority == 0)
			{
				lowestInfo = slot;
				lowestPriority = 0;
				break;
			}
			if (slot->Priority < lowestPriority)
			{
				lowestInfo = slot;
				lowestPriority = slot->Priority;
			}
		}
		if (lowestPriority < sample->Priority)
		{
			info = lowestInfo;
			info->AttachedObject = options->AttachedObject;
			info->Z = 0.0f;
			info->Y = 0.0f;
			info->X = 0.0f;
		}
	}

	if (info != NULL)
	{
		*play = true;
		return info;
	}
	*play = false;
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSamplePlay(LH_SamplePlayOptions* options)
{
	bool32_t play;
	bool32_t restart = false;

	if (!WaveInstalled || !SystemInstalled)
	{
		return NULL;
	}
	PlayRequestCount++;
	LH_SampleInfo* info = LHSampleGetFreeSlot(options, &play, &restart);
	if (info == NULL)
	{
		return NULL;
	}
	if (play && !LHSamplePlay(options, info, restart))
	{
		return NULL;
	}
	return info;
}

bool32_t LH_AudioSystem::LHSamplePlay(LH_SamplePlayOptions* options, LH_SampleInfo* info, bool32_t restart)
{
	unsigned long          mode = 0;
	unsigned long          overrides = 0;
	LH_SamplePlayOptions   tsample_opts;
	unsigned long          waveNumber = 0;
	LH_BankSample*         sample;
	QMIX_CHANNEL_PARAMS    params;
	char                   sampleName[LH_SAMPLE_NAME_LENGTH];
	QMIXWAVEPARAMS         waveParams;
	MMIOINFO               mmioInfo;
	ACM_decompression_info decompressed;
	ACM_decompression_info loadedDecompressed;
	QMIX_DISTANCES         distances;
	QSVECTOR               position;
	QSPOLAR                polar;
	QMIXPLAYPARAMS         playParams;
	static bool32_t        seeded = false;

	if (!WaveInstalled || !SystemInstalled)
	{
		return false;
	}

	memset(&params, 0, sizeof(params));
	params.dwSize = sizeof(params);
	if (!seeded)
	{
		srand(time(NULL));
		seeded = true;
	}

	tsample_opts = *options;
	// clang-format off
	LH_ASSERT_CORRECTIVE(fabs(tsample_opts.XPos)<=5000.f, "sample xpos is too big!", tsample_opts.XPos=0;, 555);
	LH_ASSERT_CORRECTIVE(fabs(tsample_opts.YPos)<=5000.f, "sample ypos is too big!", tsample_opts.YPos=0;, 556);
	LH_ASSERT_CORRECTIVE(fabs(tsample_opts.ZPos)<=5000.f, "sample zpos is too big!", tsample_opts.ZPos=0;, 557);
	// clang-format on

	if (DisableSfx == true && tsample_opts.AtmosInfo == NULL)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_SFX_DISABLED, 562);
		return false;
	}
	if (!LHSampleIsValid(&tsample_opts))
	{
		return false;
	}

	sprintf(sampleName, LH_SAMPLE_NO_FILE_NAME);
	if (tsample_opts.Bank != NULL)
	{
		sample = &tsample_opts.Bank->Samples[tsample_opts.SampleNumber - 1];
		if (sample->Size == LH_SAMPLE_EMPTY_WAVE_SIZE)
		{
			return false;
		}
		waveNumber = sample->WaveNumber;
		if (!sample->Enabled)
		{
			LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_SAMPLE_PLAY_SAMPLE_DISABLED, 589, tsample_opts.SampleNumber);
			return false;
		}
		if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_POS_X) || (sample->OverrideFlags & LH_SAMPLE_OVERRIDE_POS_Y))
		{
			tsample_opts.Positional = true;
		}
		if (sample->Format.wFormatTag == WAVE_FORMAT_MPEG)
		{
			tsample_opts.Flags = LH_SAMPLE_FLAG_KEEP_DATA;
		}
		sprintf(sampleName, "%s", strrchr(sample->FileName, '\\') + 1);
		_strupr(sampleName);
	}

	if (WaveInstalled && (WaveActive || tsample_opts.AtmosInfo != NULL))
	{
		if (_stricmp(tsample_opts.FileName, LH_SAMPLE_NO_FILE_NAME) == 0)
		{
			if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_POS_X) &&
			    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_POS_X))
			{
				tsample_opts.XPos = sample->XPos;
				overrides |= LH_SAMPLE_OVERRIDE_POS_X;
			}
			if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_POS_Y) &&
			    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_POS_Y))
			{
				tsample_opts.YPos = sample->YPos;
				overrides |= LH_SAMPLE_OVERRIDE_POS_Y;
			}
			if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_POS_Z) &&
			    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_POS_Z))
			{
				tsample_opts.ZPos = sample->ZPos;
				overrides |= LH_SAMPLE_OVERRIDE_POS_Z;
			}
			if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_VOLUME) &&
			    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_VOLUME))
			{
				tsample_opts.Volume = LH_AUDIO_LOW_WORD(sample->Volume);
				overrides |= LH_SAMPLE_OVERRIDE_VOLUME;
			}
			if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_PAN) &&
			    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_PAN))
			{
				tsample_opts.Pan = sample->Pan;
				overrides |= LH_SAMPLE_OVERRIDE_PAN;
			}
			if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_PITCH) &&
			    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_PITCH))
			{
				tsample_opts.Pitch = sample->Pitch;
				overrides |= LH_SAMPLE_OVERRIDE_PITCH;
			}
			if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_MIN_DISTANCE) &&
			    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_MIN_DISTANCE))
			{
				tsample_opts.MinDistance = sample->MinDistance;
				overrides |= LH_SAMPLE_OVERRIDE_MIN_DISTANCE;
			}
			if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_MAX_DISTANCE) &&
			    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_MAX_DISTANCE))
			{
				tsample_opts.MaxDistance = sample->MaxDistance;
				overrides |= LH_SAMPLE_OVERRIDE_MAX_DISTANCE;
			}
			if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_DISTANCE_SCALE) &&
			    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_DISTANCE_SCALE))
			{
				tsample_opts.DistanceScale = sample->DistanceScale;
				overrides |= LH_SAMPLE_OVERRIDE_DISTANCE_SCALE;
			}
			if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_LOOP_COUNT) &&
			    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_LOOP_COUNT))
			{
				tsample_opts.LoopCount = sample->LoopCount;
				overrides |= LH_SAMPLE_OVERRIDE_LOOP_COUNT;
			}
			if ((sample->OverrideFlags & LH_SAMPLE_OVERRIDE_PLAY_TYPE) &&
			    !(tsample_opts.OverrideFlags & LH_SAMPLE_OVERRIDE_PLAY_TYPE))
			{
				tsample_opts.PlayType = sample->PlayType;
				overrides |= LH_SAMPLE_OVERRIDE_PLAY_TYPE;
			}
		}

		if (info != NULL)
		{
			if (!restart)
			{
				memset(&waveParams, 0, sizeof(waveParams));
				if (_stricmp(tsample_opts.FileName, LH_SAMPLE_NO_FILE_NAME) != 0)
				{
					QSWaveMixFreeWave(QMixer, info->Wave);
					waveParams.FileName = tsample_opts.FileName;
					if (tsample_opts.Stream)
					{
						info->Wave = QSWaveMixOpenWaveEx(QMixer, &waveParams, QMIX_FILESTREAM);
					}
					else
					{
						info->Wave = QSWaveMixOpenWaveEx(QMixer, &waveParams, QMIX_FILE);
					}
					if (info->Wave == NULL)
					{
						LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_QMIXER_OPEN_WAVE_EX, 712, LHDebugGetLastQMixerError());
						info->SampleNumber = 0;
						return false;
					}
					info->Frequency = info->Wave->pcm.wf.nSamplesPerSec;
				}
				else if (tsample_opts.Bank->UsingHeap)
				{
					if (sample->Loaded == true)
					{
						QSWaveMixFreeWave(QMixer, info->Wave);
						memset(&mmioInfo, 0, sizeof(mmioInfo));
						mmioInfo.pchBuffer = (HPSTR)sample->Data;
						mmioInfo.cchBuffer = sample->Size;
						mmioInfo.fccIOProc = FOURCC_MEM;
						info->TagData = mmioInfo.pchBuffer;
						info->TagDataSize = sample->Size;
						info->Data = NULL;
						info->DataSize = 0;
						if ((tsample_opts.Flags & LH_SAMPLE_FLAG_KEEP_DATA) &&
						    decompress_if_it_needs_it(&mmioInfo, &decompressed))
						{
							waveParams.Resident.Format = &decompressed.format;
							waveParams.Resident.Data = (HPSTR)decompressed.raw_data;
							waveParams.Resident.Bytes = decompressed.length;
							waveParams.Resident.Samples =
								decompressed.length / decompressed.format.nChannels /
								(decompressed.format.wBitsPerSample / LH_SAMPLE_BITS_PER_BYTE);
							waveParams.Resident.Tag = 0;
							info->Wave = QSWaveMixOpenWaveEx(QMixer, &waveParams, QMIX_RESIDENT);
							info->Data = decompressed.raw_data;
							info->DataSize = decompressed.length;
						}
						else
						{
							waveParams.FileName = (LPCSTR)&mmioInfo;
							info->Wave = QSWaveMixOpenWaveEx(QMixer, &waveParams, QMIX_MEMORY);
						}
						if (info->Wave == NULL)
						{
							LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_QMIXER_OPEN_WAVE_EX, 784, LHDebugGetLastQMixerError());
							info->SampleNumber = 0;
							return false;
						}
						info->Frequency = info->Wave->pcm.wf.nSamplesPerSec;
					}
					else if (LHHeapLoadWavFile(options, sample))
					{
						QSWaveMixFreeWave(QMixer, info->Wave);
						memset(&mmioInfo, 0, sizeof(mmioInfo));
						mmioInfo.pchBuffer = (HPSTR)sample->Data;
						mmioInfo.cchBuffer = sample->Size;
						mmioInfo.fccIOProc = FOURCC_MEM;
						info->TagData = mmioInfo.pchBuffer;
						info->TagDataSize = sample->Size;
						info->Data = NULL;
						info->DataSize = 0;
						if ((tsample_opts.Flags & LH_SAMPLE_FLAG_KEEP_DATA) &&
						    decompress_if_it_needs_it(&mmioInfo, &loadedDecompressed))
						{
							waveParams.Resident.Format = &loadedDecompressed.format;
							waveParams.Resident.Data = (HPSTR)loadedDecompressed.raw_data;
							waveParams.Resident.Bytes = loadedDecompressed.length;
							waveParams.Resident.Samples =
								loadedDecompressed.length / loadedDecompressed.format.nChannels /
								(loadedDecompressed.format.wBitsPerSample / LH_SAMPLE_BITS_PER_BYTE);
							waveParams.Resident.Tag = 0;
							info->Wave = QSWaveMixOpenWaveEx(QMixer, &waveParams, QMIX_RESIDENT);
							info->Data = loadedDecompressed.raw_data;
							info->DataSize = loadedDecompressed.length;
						}
						else
						{
							waveParams.FileName = (LPCSTR)&mmioInfo;
							info->Wave = QSWaveMixOpenWaveEx(QMixer, &waveParams, QMIX_MEMORY);
						}
						if (info->Wave == NULL)
						{
							LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_QMIXER_OPEN_WAVE_EX, 839, LHDebugGetLastQMixerError());
							info->SampleNumber = 0;
							return false;
						}
						info->Frequency = info->Wave->pcm.wf.nSamplesPerSec;
					}
					else
					{
						LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_HEAP_LOAD_NO_FREE_MEMORY, 848);
						info->SampleNumber = 0;
						return false;
					}
				}
				else
				{
					QSWaveMixFreeWave(QMixer, info->Wave);
					memset(&mmioInfo, 0, sizeof(mmioInfo));
					mmioInfo.pchBuffer = (HPSTR)tsample_opts.Bank->DataStart + sample->Offset;
					mmioInfo.cchBuffer = sample->Size;
					mmioInfo.fccIOProc = FOURCC_MEM;
					waveParams.FileName = (LPCSTR)&mmioInfo;
					info->Wave = QSWaveMixOpenWaveEx(QMixer, &waveParams, QMIX_MEMORY);
					info->TagData = mmioInfo.pchBuffer;
					info->TagDataSize = sample->Size;
					info->Data = NULL;
					info->DataSize = 0;
					if (info->Wave == NULL)
					{
						LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_QMIXER_OPEN_WAVE_EX, 878, LHDebugGetLastQMixerError());
						info->SampleNumber = 0;
						return false;
					}
					info->Frequency = info->Wave->pcm.wf.nSamplesPerSec;
				}
			}
			else if (info->Data != NULL)
			{
				info->KeepData = true;
			}

			if (tsample_opts.Positional == true)
			{
				if (!Disable3DSpatialisation)
				{
					if (tsample_opts.Doppler == true)
					{
						mode = QMIX_CHANNEL_QSOUND | QMIX_CHANNEL_DOPPLER;
					}
					else
					{
						mode = QMIX_CHANNEL_QSOUND | QMIX_CHANNEL_NODOPPLERPITCH;
					}
				}
				QSWaveMixGetChannelParams(QMixer, info->Channel, &params);
				if ((params.dwChannelType & QMIX_CHANNELTYPE_STREAMING) && (params.dwChannelType & QMIX_CHANNELTYPE_2D))
				{
					QSWaveMixConfigureChannel(QMixer, info->Channel, QMIX_CHANNELTYPE_STREAMING | QMIX_CHANNELTYPE_3D,
					                          NULL, NULL);
				}
				else if ((params.dwChannelType & QMIX_CHANNELTYPE_QSOUND) &&
				         (params.dwChannelType & QMIX_CHANNELTYPE_2D))
				{
					QSWaveMixConfigureChannel(QMixer, info->Channel, QMIX_CHANNELTYPE_QSOUND | QMIX_CHANNELTYPE_3D,
					                          NULL, NULL);
				}
				QSWaveMixEnableChannel(QMixer, info->Channel, QMIX_IMMEDIATE, mode | QMIX_CHANNEL_PITCH_LINEAR);
				if (!tsample_opts.Polar)
				{
					memset(&distances, 0, sizeof(distances));
					distances.cbSize = sizeof(QMIX_DISTANCES);
					distances.minDistance = tsample_opts.MinDistance;
					distances.maxDistance = tsample_opts.MaxDistance;
					distances.scale = tsample_opts.DistanceScale;
					QSWaveMixSetDistanceMapping(QMixer, info->Channel, QMIX_IMMEDIATE, &distances);

					position.x = tsample_opts.XPos + tsample_opts.XOffset;
					position.y = tsample_opts.YPos + tsample_opts.YOffset;
					position.z = tsample_opts.ZPos + tsample_opts.ZOffset;
					QSWaveMixSetSourcePosition(QMixer, info->Channel, 0, &position);
				}
				else
				{
					memset(&distances, 0, sizeof(distances));
					distances.cbSize = sizeof(QMIX_DISTANCES);
					distances.minDistance = tsample_opts.MinDistance;
					distances.maxDistance = tsample_opts.MaxDistance;
					distances.scale = tsample_opts.DistanceScale;
					QSWaveMixSetDistanceMapping(QMixer, info->Channel, QMIX_IMMEDIATE, &distances);

					LHSampleCalcPolar(tsample_opts.XPos, tsample_opts.YPos, tsample_opts.ZPos, &polar);
					if (QSWaveMixSetPolarPosition(QMixer, info->Channel, QMIX_IMMEDIATE, &polar))
					{
						LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_QMIXER_SET_POLAR_POSITION, 1038, LHDebugGetLastQMixerError());
						info->SampleNumber = 0;
						QSWaveMixFreeWave(QMixer, info->Wave);
						return false;
					}
				}
			}
			else
			{
				QSWaveMixGetChannelParams(QMixer, info->Channel, &params);
				if ((params.dwChannelType & QMIX_CHANNELTYPE_STREAMING) && (params.dwChannelType & QMIX_CHANNELTYPE_3D))
				{
					QSWaveMixConfigureChannel(QMixer, info->Channel, QMIX_CHANNELTYPE_STREAMING | QMIX_CHANNELTYPE_2D,
					                          NULL, NULL);
				}
				else if ((params.dwChannelType & QMIX_CHANNELTYPE_QSOUND) &&
				         (params.dwChannelType & QMIX_CHANNELTYPE_3D))
				{
					QSWaveMixConfigureChannel(QMixer, info->Channel, QMIX_CHANNELTYPE_QSOUND | QMIX_CHANNELTYPE_2D,
					                          NULL, NULL);
				}
				QSWaveMixEnableChannel(QMixer, info->Channel, QMIX_IMMEDIATE, QMIX_CHANNEL_PITCH_LINEAR);

				if (tsample_opts.Pan > LH_SAMPLE_PAN_MAX)
				{
					tsample_opts.Pan = LH_SAMPLE_PAN_MAX;
				}
				if (tsample_opts.Pan >= LH_SAMPLE_PAN_CENTRE)
				{
					polar.azimuth = tsample_opts.Pan - LH_SAMPLE_PAN_CENTRE;
					polar.range = LH_SAMPLE_PAN_RANGE;
					polar.elevation = 0.0f;
					if (QSWaveMixSetPolarPosition(QMixer, info->Channel, QMIX_IMMEDIATE, &polar))
					{
						LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_QMIXER_SET_POLAR_POSITION, 1076, LHDebugGetLastQMixerError());
						info->SampleNumber = 0;
						QSWaveMixFreeWave(QMixer, info->Wave);
						return false;
					}
				}
				else
				{
					polar.azimuth = tsample_opts.Pan + LH_SAMPLE_AZIMUTH_LEFT;
					polar.range = LH_SAMPLE_PAN_RANGE;
					polar.elevation = 0.0f;
					if (QSWaveMixSetPolarPosition(QMixer, info->Channel, QMIX_IMMEDIATE, &polar))
					{
						LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_QMIXER_SET_POLAR_POSITION, 1095, LHDebugGetLastQMixerError());
						info->SampleNumber = 0;
						QSWaveMixFreeWave(QMixer, info->Wave);
						return false;
					}
				}
			}

			if (tsample_opts.Volume > LH_SAMPLE_VOLUME_MAX)
			{
				tsample_opts.Volume = LH_SAMPLE_VOLUME_MAX;
			}
			if (QSWaveMixSetVolume(QMixer, info->Channel, QMIX_IMMEDIATE,
			                       SampleMasterVolume * tsample_opts.Volume / LH_SAMPLE_VOLUME_MAX *
			                           LH_SAMPLE_QMIXER_VOLUME_SCALE))
			{
				LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_QMIXER_SET_VOLUME, 1114, LHDebugGetLastQMixerError());
				info->SampleNumber = 0;
				QSWaveMixFreeWave(QMixer, info->Wave);
				return false;
			}

			if (tsample_opts.Pitch == 0)
			{
				tsample_opts.Pitch = LH_SAMPLE_PITCH_NORMAL;
			}
			if (_stricmp(tsample_opts.FileName, LH_SAMPLE_NO_FILE_NAME) == 0)
			{
				unsigned long variance = sample->PitchVariance * tsample_opts.Pitch / LH_SAMPLE_PITCH_NORMAL;
				tsample_opts.Pitch -= variance;
				tsample_opts.Pitch += rand() * variance * 2 / RAND_MAX;
				if (tsample_opts.Pitch == 0)
				{
					tsample_opts.Pitch = LH_SAMPLE_PITCH_NORMAL;
				}
			}
			if (QSWaveMixSetFrequency(QMixer, info->Channel, QMIX_IMMEDIATE,
			                          info->Frequency * tsample_opts.Pitch / LH_SAMPLE_PITCH_NORMAL))
			{
				LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_QMIXER_SET_FREQUENCY, 1138, LHDebugGetLastQMixerError());
				info->SampleNumber = 0;
				QSWaveMixFreeWave(QMixer, info->Wave);
				return false;
			}

			memset(&playParams, 0, sizeof(playParams));
			playParams.dwSize = sizeof(playParams);
			if (_stricmp(tsample_opts.FileName, LH_SAMPLE_NO_FILE_NAME) == 0 &&
			    sample->LoopStart != LH_SAMPLE_LOOP_NONE && sample->LoopEnd != LH_SAMPLE_LOOP_NONE &&
			    sample->LoopStart != sample->LoopEnd && sample->LoopStart < sample->LoopEnd)
			{
				playParams.lStartLoop = sample->LoopStart;
				playParams.lEndLoop = sample->LoopEnd;
			}
			playParams.callback = qmixer_done_callback;
			playParams.dwUser = (DWORD)info;
			if (QSWaveMixPlayEx(QMixer, info->Channel, QMIX_CLEARQUEUE | QMIX_IMMEDIATE | QMIX_PLAY_NOTIFYSTOP,
			                    info->Wave, tsample_opts.LoopCount, &playParams))
			{
				LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_QMIXER_PLAY_EX, 1171, LHDebugGetLastQMixerError());
				info->SampleNumber = 0;
				QSWaveMixFreeWave(QMixer, info->Wave);
				return false;
			}

			info->Bank = tsample_opts.Bank;
			info->AtmosInfo = tsample_opts.AtmosInfo;
			info->OverrideFlags = overrides;
			info->AttachedObject = tsample_opts.AttachedObject;
			info->SampleNumber = tsample_opts.SampleNumber;
			info->WaveNumber = waveNumber;
			info->PlayType = tsample_opts.PlayType;
			info->Pitch = tsample_opts.Pitch;
			info->Volume = tsample_opts.Volume;
			info->Reserved4 = 0;
			info->LoopCount = tsample_opts.LoopCount;
			info->Pan = tsample_opts.Pan;
			info->Positional = tsample_opts.Positional;
			info->Follow = tsample_opts.Follow;
			info->X = tsample_opts.XPos;
			info->Y = tsample_opts.YPos;
			info->Z = tsample_opts.ZPos;
			info->OffsetX = tsample_opts.XOffset;
			info->OffsetY = tsample_opts.YOffset;
			info->OffsetZ = tsample_opts.ZOffset;
			info->MinDistance = tsample_opts.MinDistance;
			info->MaxDistance = tsample_opts.MaxDistance;
			info->KeepData = false;
			info->Playing = true;
			if (_stricmp(tsample_opts.FileName, LH_SAMPLE_NO_FILE_NAME) == 0)
			{
				info->Priority = sample->Priority;
				info->Group = LH_AUDIO_LOW_WORD(sample->Group);
			}
			else
			{
				info->Priority = 0;
				info->Group = 0;
			}
			return true;
		}
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_NO_SLOT, 1220);
		return false;
	}

	if (!WaveInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_WAVE_OUT_NOT_INSTALLED, 1224);
	}
	if (!WaveActive)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_DIGITAL_AUDIO_OFF, 1227);
	}
	return false;
}

void LH_AudioSystem::LHSampleStopAll()
{
	if (WaveInstalled && SystemInstalled)
	{
		for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
		{
			if (info->AtmosInfo == NULL && info->Playing == true)
			{
				QSWaveMixFlushChannel(QMixer, info->Channel, 0);
			}
		}
	}
}

LH_SampleInfo* LH_AudioSystem::LHSampleStop(LH_AudioBank* bank, unsigned long object, unsigned long sample)
{
	LH_SampleInfo* info;

	if (WaveInstalled && SystemInstalled)
	{
		if (sample == 0)
		{
			for (info = FirstSampleInfo; info <= LastSampleInfo; info++)
			{
				if (info->Bank == bank && info->AttachedObject == (Base*)object)
				{
					if (!WaveActive && info->AtmosInfo == NULL)
					{
						return NULL;
					}
					if (info->Playing == true)
					{
						QSWaveMixSetPanRate(QMixer, info->Channel, 0, LH_SAMPLE_STOP_PAN_RATE);
						QSWaveMixSetVolume(QMixer, info->Channel, 0, 0);
						Sleep(LH_SAMPLE_STOP_SLEEP);
						QSWaveMixSetPanRate(QMixer, info->Channel, 0, LH_SAMPLE_PAN_RATE);
						QSWaveMixFlushChannel(QMixer, info->Channel, 0);
					}
				}
			}
		}
		else
		{
			for (info = FirstSampleInfo; info <= LastSampleInfo; info++)
			{
				if (info->Bank == bank && info->AttachedObject == (Base*)object && info->SampleNumber == sample)
				{
					if (!WaveActive && info->AtmosInfo == NULL)
					{
						return NULL;
					}
					if (info->Playing == true)
					{
						QSWaveMixSetPanRate(QMixer, info->Channel, 0, LH_SAMPLE_STOP_PAN_RATE);
						QSWaveMixSetVolume(QMixer, info->Channel, 0, 0);
						Sleep(LH_SAMPLE_STOP_SLEEP);
						QSWaveMixSetPanRate(QMixer, info->Channel, 0, LH_SAMPLE_PAN_RATE);
						QSWaveMixFlushChannel(QMixer, info->Channel, 0);
					}
					return info;
				}
			}
		}
	}
	return info;
}

LH_SampleInfo* LH_AudioSystem::LHSampleStop(LH_SampleInfo* info)
{
	if (info == NULL || !SystemInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_INVALID_SAMPLE_INFO, 1326);
		return NULL;
	}
	if (!WaveInstalled)
	{
		return NULL;
	}
	if (!WaveActive && info->AtmosInfo == NULL)
	{
		return NULL;
	}

	for (LH_SampleInfo* current = FirstSampleInfo; current <= LastSampleInfo; current++)
	{
		if (current->Bank == info->Bank && current->AttachedObject == info->AttachedObject &&
		    current->SampleNumber == info->SampleNumber)
		{
			if (current->Playing == true)
			{
				QSWaveMixSetPanRate(QMixer, current->Channel, 0, LH_SAMPLE_STOP_PAN_RATE);
				QSWaveMixSetVolume(QMixer, current->Channel, 0, 0);
				Sleep(LH_SAMPLE_STOP_SLEEP);
				QSWaveMixSetPanRate(QMixer, current->Channel, 0, LH_SAMPLE_PAN_RATE);
				QSWaveMixFlushChannel(QMixer, current->Channel, 0);
			}
			return current;
		}
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSampleReleaseLoop(LH_AudioBank* bank, unsigned long object, unsigned long sample)
{
	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
		{
			if (info->Bank == bank && info->AttachedObject == (Base*)object && info->SampleNumber == sample)
			{
				if (!info->Playing)
				{
					return NULL;
				}
				QSWaveMixStopChannel(QMixer, info->Channel, QMIX_STOP_FINISHLASTLOOP);
				return info;
			}
		}
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSampleReleaseLoop(LH_SampleInfo* info)
{
	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		if (info == NULL)
		{
			LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_INVALID_SAMPLE_INFO, 1394);
			return NULL;
		}
		for (LH_SampleInfo* current = FirstSampleInfo; current <= LastSampleInfo; current++)
		{
			if (current->Bank == info->Bank && current->AttachedObject == info->AttachedObject &&
			    current->SampleNumber == info->SampleNumber)
			{
				if (!current->Playing)
				{
					return NULL;
				}
				QSWaveMixStopChannel(QMixer, current->Channel, QMIX_STOP_FINISHLASTLOOP);
				return current;
			}
		}
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSampleSetPan(LH_AudioBank* bank, unsigned long object, unsigned long sample,
                                              unsigned long pan)
{
	QSPOLAR polar;

	if (WaveInstalled && WaveActive && pan <= LH_SAMPLE_PAN_MAX && SystemInstalled)
	{
		for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
		{
			if (info->Bank == bank && info->AttachedObject == (Base*)object && info->SampleNumber == sample)
			{
				if (!info->Playing)
				{
					return NULL;
				}
				if (info->Positional == true)
				{
					LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PAN_WITH_3D_COORDINATES, 1435);
					return NULL;
				}
				if (info->Pan == pan || (info->OverrideFlags & LH_SAMPLE_OVERRIDE_PAN))
				{
					return NULL;
				}
				if (pan >= LH_SAMPLE_PAN_CENTRE)
				{
					polar.azimuth = (float)pan - LH_SAMPLE_PAN_CENTRE;
				}
				else
				{
					polar.azimuth = (float)pan + LH_SAMPLE_AZIMUTH_LEFT;
				}
				polar.range = LH_SAMPLE_PAN_RANGE;
				polar.elevation = 0.0f;
				QSWaveMixSetPolarPosition(QMixer, info->Channel, 0, &polar);
				info->Pan = pan;
				return info;
			}
		}
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSampleSetPan(LH_SampleInfo* info, unsigned long pan)
{
	QSPOLAR polar;

	if (WaveInstalled && pan <= LH_SAMPLE_PAN_MAX && SystemInstalled)
	{
		if (info == NULL)
		{
			LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_INVALID_SAMPLE_INFO, 1475);
			return NULL;
		}
		for (LH_SampleInfo* current = FirstSampleInfo; current <= LastSampleInfo; current++)
		{
			if (current->Bank == info->Bank && current->AttachedObject == info->AttachedObject &&
			    current->SampleNumber == info->SampleNumber)
			{
				if (!current->Playing)
				{
					return NULL;
				}
				if (current->Positional == true)
				{
					LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PAN_WITH_3D_COORDINATES, 1489);
					return NULL;
				}
				if (current->Pan == pan || (current->OverrideFlags & LH_SAMPLE_OVERRIDE_PAN))
				{
					return NULL;
				}
				if (pan >= LH_SAMPLE_PAN_CENTRE)
				{
					polar.azimuth = (float)pan - LH_SAMPLE_PAN_CENTRE;
				}
				else
				{
					polar.azimuth = (float)pan + LH_SAMPLE_AZIMUTH_LEFT;
				}
				polar.range = 0.0f;
				polar.elevation = 0.0f;
				QSWaveMixSetPolarPosition(QMixer, current->Channel, 0, &polar);
				current->Pan = pan;
				return current;
			}
		}
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSampleSetVolume(LH_AudioBank* bank, unsigned long object, unsigned long sample,
                                                 long volume)
{
	if (WaveInstalled && SystemInstalled)
	{
		if (volume > LH_SAMPLE_VOLUME_MAX)
		{
			volume = LH_SAMPLE_VOLUME_MAX;
		}
		else if (volume < 0)
		{
			volume = 0;
		}
		for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
		{
			if (info->Bank == bank && info->AttachedObject == (Base*)object && info->SampleNumber == sample)
			{
				if (!WaveActive && info->AtmosInfo == NULL)
				{
					return NULL;
				}
				if (!info->Playing)
				{
					return NULL;
				}
				if (info->Volume == volume || (info->OverrideFlags & LH_SAMPLE_OVERRIDE_VOLUME))
				{
					return NULL;
				}
				QSWaveMixSetVolume(QMixer, info->Channel, QMIX_IMMEDIATE,
				                   volume * SampleMasterVolume / LH_SAMPLE_VOLUME_MAX * LH_SAMPLE_QMIXER_VOLUME_SCALE);
				info->Volume = volume;
				return info;
			}
		}
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSampleSetVolume(LH_SampleInfo* info, long volume)
{
	if (SystemInstalled && WaveInstalled && (WaveActive || info->AtmosInfo != NULL))
	{
		if (info == NULL)
		{
			LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_INVALID_SAMPLE_INFO, 1571);
			return NULL;
		}
		if (volume > LH_SAMPLE_VOLUME_MAX)
		{
			volume = LH_SAMPLE_VOLUME_MAX;
		}
		else if (volume < 0)
		{
			volume = 0;
		}
		for (LH_SampleInfo* current = FirstSampleInfo; current <= LastSampleInfo; current++)
		{
			if (current->Bank == info->Bank && current->AttachedObject == info->AttachedObject &&
			    current->SampleNumber == info->SampleNumber)
			{
				if (!current->Playing)
				{
					return NULL;
				}
				if (current->Volume == volume || (current->OverrideFlags & LH_SAMPLE_OVERRIDE_VOLUME))
				{
					return NULL;
				}
				QSWaveMixSetVolume(QMixer, current->Channel, QMIX_IMMEDIATE,
				                   volume * SampleMasterVolume / LH_SAMPLE_VOLUME_MAX * LH_SAMPLE_QMIXER_VOLUME_SCALE);
				current->Volume = volume;
				return current;
			}
		}
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSampleSetPitch(LH_AudioBank* bank, unsigned long object, unsigned long sample,
                                                unsigned long pitch)
{
	if (WaveInstalled && pitch > 0 && SystemInstalled)
	{
		for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
		{
			if (info->Bank == bank && info->AttachedObject == (Base*)object && info->SampleNumber == sample)
			{
				if (!WaveActive && info->AtmosInfo == NULL)
				{
					return NULL;
				}
				if (!info->Playing)
				{
					return NULL;
				}
				if (info->Pitch == pitch || (info->OverrideFlags & LH_SAMPLE_OVERRIDE_PITCH))
				{
					return NULL;
				}
				QSWaveMixSetFrequency(QMixer, info->Channel, 0, info->Frequency * pitch / LH_SAMPLE_PITCH_NORMAL);
				info->Pitch = pitch;
				return info;
			}
		}
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSampleSetPitch(LH_SampleInfo* info, unsigned long pitch)
{
	if (WaveInstalled && pitch > 0 && SystemInstalled && (WaveActive || info->AtmosInfo != NULL))
	{
		if (info == NULL)
		{
			LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_INVALID_SAMPLE_INFO, 1652);
			return NULL;
		}
		for (LH_SampleInfo* current = FirstSampleInfo; current <= LastSampleInfo; current++)
		{
			if (current->Bank == info->Bank && current->AttachedObject == info->AttachedObject &&
			    current->SampleNumber == info->SampleNumber)
			{
				if (!current->Playing)
				{
					return NULL;
				}
				if (current->Pitch == pitch || (current->OverrideFlags & LH_SAMPLE_OVERRIDE_PITCH))
				{
					return NULL;
				}
				QSWaveMixSetFrequency(QMixer, current->Channel, 0, current->Frequency * pitch / LH_SAMPLE_PITCH_NORMAL);
				current->Pitch = pitch;
				return current;
			}
		}
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSampleSet3DPosition(LH_AudioBank* bank, unsigned long object, unsigned long sample,
                                                     float x, float y, float z, bool32_t relative)
{
	QSPOLAR  polar;
	QSVECTOR position;

	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
		{
			if (info->Bank == bank && info->AttachedObject == (Base*)object && info->SampleNumber == sample)
			{
				if (!info->Playing)
				{
					return NULL;
				}
				if (!info->Positional)
				{
					LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_NOT_USING_3D_COORDINATES, 1697);
					return NULL;
				}
				if (info->X == x && info->Y == y && info->Z == z)
				{
					return NULL;
				}
				if (info->OverrideFlags & LH_SAMPLE_OVERRIDE_POS_X)
				{
					x = info->X;
				}
				if (info->OverrideFlags & LH_SAMPLE_OVERRIDE_POS_Y)
				{
					y = info->Y;
				}
				if (info->OverrideFlags & LH_SAMPLE_OVERRIDE_POS_Z)
				{
					z = info->Z;
				}
				if (relative == true)
				{
					LHSampleCalcPolar(x, y, z, &polar);
					QSWaveMixSetPolarPosition(QMixer, info->Channel, 0, &polar);
				}
				else
				{
					position.x = x + info->OffsetX;
					position.y = y + info->OffsetY;
					position.z = z + info->OffsetZ;
					QSWaveMixSetSourcePosition(QMixer, info->Channel, 0, &position);
				}
				info->X = x;
				info->Y = y;
				info->Z = z;
				return info;
			}
		}
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSampleSet3DPosition(LH_SampleInfo* info, float x, float y, float z, bool32_t relative)
{
	QSPOLAR  polar;
	QSVECTOR position;

	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		if (info == NULL)
		{
			LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_INVALID_SAMPLE_INFO, 1821);
			return NULL;
		}
		for (LH_SampleInfo* current = FirstSampleInfo; current <= LastSampleInfo; current++)
		{
			if (current->Bank == info->Bank && current->AttachedObject == info->AttachedObject &&
			    current->SampleNumber == info->SampleNumber)
			{
				if (!current->Playing)
				{
					return NULL;
				}
				if (!current->Positional)
				{
					LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_NOT_USING_3D_COORDINATES, 1835);
					return NULL;
				}
				if (current->X == x && current->Y == y && current->Z == z)
				{
					return NULL;
				}
				if (current->OverrideFlags & LH_SAMPLE_OVERRIDE_POS_X)
				{
					x = current->X;
				}
				if (current->OverrideFlags & LH_SAMPLE_OVERRIDE_POS_Y)
				{
					y = current->Y;
				}
				if (current->OverrideFlags & LH_SAMPLE_OVERRIDE_POS_Z)
				{
					z = current->Z;
				}
				if (relative == true)
				{
					LHSampleCalcPolar(x, y, z, &polar);
					QSWaveMixSetPolarPosition(QMixer, current->Channel, 0, &polar);
				}
				else
				{
					position.x = x + current->OffsetX;
					position.y = y + current->OffsetY;
					position.z = z + current->OffsetZ;
					QSWaveMixSetSourcePosition(QMixer, current->Channel, 0, &position);
				}
				current->X = x;
				current->Y = y;
				current->Z = z;
				return current;
			}
		}
	}
	return NULL;
}

bool32_t LH_AudioSystem::LHSampleIsPlaying(LH_AudioBank* bank, unsigned long object, unsigned long sample)
{
	if (WaveInstalled && SystemInstalled)
	{
		LH_SampleInfo* info = LHSampleGetInfo(bank, object, sample);
		if (info != NULL && info->Playing == true)
		{
			return true;
		}
	}
	return false;
}

bool32_t LH_AudioSystem::LHSampleIsPlaying(LH_AudioBank* bank, unsigned long object, unsigned long sample,
                                           LH_SampleInfo** info)
{
	if (WaveInstalled && SystemInstalled)
	{
		LH_SampleInfo* found = LHSampleGetInfo(bank, object, sample);
		if (found != NULL && found->Playing == true)
		{
			*info = found;
			return true;
		}
	}
	return false;
}

LH_SampleInfo* LH_AudioSystem::LHSampleGetInfo(LH_AudioBank* bank, unsigned long object, unsigned long sample)
{
	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
		{
			if (info->Bank == bank && info->AttachedObject == (Base*)object && info->SampleNumber == sample)
			{
				return info;
			}
		}
	}
	return NULL;
}

bool32_t LH_AudioSystem::LHSampleIsPlaying(LH_AudioBank* bank, unsigned long object)
{
	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
		{
			if (info->Bank == bank && info->AttachedObject == (Base*)object)
			{
				return info->Playing == true;
			}
		}
	}
	return false;
}

bool32_t LH_AudioSystem::LHSampleIsPlaying(LH_AudioBank* bank, unsigned long object, LH_SampleInfo** info)
{
	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		for (LH_SampleInfo* current = FirstSampleInfo; current <= LastSampleInfo; current++)
		{
			if (current->Bank == bank && current->AttachedObject == (Base*)object)
			{
				if (current->Playing == true)
				{
					*info = current;
					return true;
				}
				return false;
			}
		}
	}
	return false;
}

bool32_t LH_AudioSystem::LHSampleIsPlaying(LH_SampleInfo* info)
{
	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		if (info == NULL)
		{
			LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_INVALID_SAMPLE_INFO, 2062);
			return false;
		}
		for (LH_SampleInfo* current = FirstSampleInfo; current <= LastSampleInfo; current++)
		{
			if (current->Bank == info->Bank && current->AttachedObject == info->AttachedObject &&
			    current->SampleNumber == info->SampleNumber)
			{
				return current->Playing == true;
			}
		}
	}
	return false;
}

LH_SampleInfo* LH_AudioSystem::LHSampleGetFirstInfoStruct()
{
	if (WaveInstalled && SystemInstalled)
	{
		return FirstSampleInfo;
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSampleGetLastInfoStruct()
{
	if (WaveInstalled && SystemInstalled)
	{
		return LastSampleInfo;
	}
	return NULL;
}

float LH_AudioSystem::LHSampleGetMaxDistance(LH_AudioBank* bank, unsigned long sample)
{
	if (!WaveInstalled || !SystemInstalled)
	{
		return 0.0f;
	}
	if (bank != NULL && LHBankGetNumberOfSamples(bank) >= sample)
	{
		LH_BankSample* samples = bank->LHGetFirstBankSample();
		return samples[sample - 1].MaxDistance;
	}
	return LH_SAMPLE_DISTANCE_INVALID;
}

float LH_AudioSystem::LHSampleGetMinDistance(LH_AudioBank* bank, unsigned long sample)
{
	if (!WaveInstalled || !SystemInstalled)
	{
		return 0.0f;
	}
	if (bank != NULL && LHBankGetNumberOfSamples(bank) >= sample)
	{
		LH_BankSample* samples = bank->LHGetFirstBankSample();
		return samples[sample - 1].MinDistance;
	}
	return LH_SAMPLE_DISTANCE_INVALID;
}

long LH_AudioSystem::LHSampleGetUserParam(LH_AudioBank* bank, unsigned long sample)
{
	if (!WaveInstalled || !SystemInstalled)
	{
		return 0;
	}
	if (bank != NULL && LHBankGetNumberOfSamples(bank) >= sample)
	{
		LH_BankSample* samples = bank->LHGetFirstBankSample();
		return LH_AUDIO_HIGH_WORD(samples[sample - 1].Volume);
	}
	return LH_SAMPLE_USER_PARAM_INVALID;
}

unsigned long LH_AudioSystem::LHSampleGetNumberPlaying()
{
	unsigned long count = 0;
	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
		{
			if (info->Playing == true)
			{
				count++;
			}
		}
	}
	return count;
}

void LH_AudioSystem::LHSampleClearInfoList()
{
	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		LH_SampleInfo* first = LHSampleGetFirstInfoStruct();
		LH_SampleInfo* last = LHSampleGetLastInfoStruct();
		for (LH_SampleInfo* info = first; info <= last; info++)
		{
			info->SampleNumber = 0;
			info->AttachedObject = NULL;
			info->Bank = NULL;
		}
	}
}

void LH_AudioSystem::LHSampleUpdate3DChannels()
{
	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		LH_SampleInfo* first = LHSampleGetFirstInfoStruct();
		LH_SampleInfo* last = LHSampleGetLastInfoStruct();
		for (LH_SampleInfo* info = first; info <= last; info++)
		{
			if (info->AtmosInfo == NULL && info->Positional == true && LHSampleIsPlaying(info) && info->Follow == true)
			{
				float    x;
				float    y;
				float    z;
				float    distance;
				bool32_t valid;
				Sample3DObjectFunction(info, &x, &y, &z, &distance, &valid);
				if (!valid)
				{
					LHSampleStop(info);
					info->AttachedObject = NULL;
				}
				else if (distance >= info->MaxDistance)
				{
					LHSampleStop(info);
				}
				else
				{
					LHSampleSet3DPosition(info, x, y, z, false);
				}
			}
		}
	}
}

void LH_AudioSystem::LHSampleRegister3DObjectFunction(LH_SAMPLE_3D_OBJECT_FUNCTION function, float max_distance)
{
	Sample3DObjectFunction = function;
	Sample3DObjectMaxDistance = max_distance;
}

static long* LHBestAttribRow(long* key, long* first, long* second, long width)
{
	long firstMatches = 0;
	long i;
	for (i = 0; i < width; i++)
	{
		if (key[i] == first[i])
		{
			firstMatches++;
		}
	}
	long secondMatches = 0;
	for (i = 0; i < width; i++)
	{
		if (key[i] == second[i])
		{
			secondMatches++;
		}
	}
	if (firstMatches > secondMatches)
	{
		return first;
	}
	return second;
}

long* LHFindAttribRow(long* key, long* base, long width, long depth)
{
	LH_ASSERT(width && depth && base, "Tim: bad search", 2324);

	long* found = NULL;
	for (long i = 0; i < depth; i++)
	{
		long* row = &base[i * width];
		long  j;
		for (j = 0; j < width - 1; j++)
		{
			if (row[j] != LH_ANIM_ATTRIB_ANY && key[j] != row[j])
			{
				break;
			}
		}
		if (j == width - 1)
		{
			if (found != NULL)
			{
				found = LHBestAttribRow(key, found, row, width - 1);
			}
			else
			{
				found = row;
			}
		}
	}
	return found;
}

unsigned long LH_AudioSystem::LHSampleGetAnimEffectNumber(long* sound, LH_AudioBank* bank)
{
	if (!WaveInstalled || !WaveActive || !SystemInstalled || bank == NULL)
	{
		return 0;
	}
	long* row = LHFindAttribRow(sound, bank->AnimArray, bank->AnimArrayTableWidth, bank->AnimArrayTableHeight);
	if (row == NULL)
	{
		return 0;
	}
	unsigned long* waves = (unsigned long*)row[bank->AnimArrayTableWidth - 1];
	if (waves[0] > 0)
	{
		if (waves[0] > 1)
		{
			return waves[Rand(waves[0]) + 1];
		}
		return waves[1];
	}
	return 0;
}

LH_SampleInfo* LH_AudioSystem::LHSamplePlayAnimEffect(void* object, float distance, long* sound, int action,
                                                      bool32_t follow, LH_AudioBank* bank, float min_distance,
                                                      float max_distance)
{
	LH_SamplePlayOptions options;
	float                x;
	float                y;
	float                z;
	float                objectDistance;
	bool32_t             valid;

	if (!WaveInstalled || !WaveActive || !SystemInstalled || bank == NULL)
	{
		return NULL;
	}
	if (distance > Sample3DObjectMaxDistance)
	{
		return NULL;
	}

	LH_SampleInfo* first = LHSampleGetFirstInfoStruct();
	LH_SampleInfo* last = LHSampleGetLastInfoStruct();
	long*          row = LHFindAttribRow(sound, bank->AnimArray, bank->AnimArrayTableWidth, bank->AnimArrayTableHeight);
	if (row == NULL)
	{
		return NULL;
	}
	unsigned long* waves = (unsigned long*)row[bank->AnimArrayTableWidth - 1];
	if (waves[0] > 0)
	{
		if (action == LH_SAMPLE_ANIM_EFFECT_PLAY)
		{
			unsigned long wave;
			if (waves[0] > 1)
			{
				wave = waves[Rand(waves[0]) + 1];
			}
			else
			{
				wave = waves[1];
			}
			if (distance <= bank->Samples[wave - 1].MaxDistance)
			{
				options.SampleNumber = wave;
				options.AttachedObject = (Base*)object;
				options.Follow = follow;
				options.Bank = bank;
				options.Positional = true;
				options.Doppler = false;

				bool32_t       play;
				bool32_t       restart;
				LH_SampleInfo* info = LHSampleGetFreeSlot(&options, &play, &restart);
				if (info != NULL && play)
				{
					Sample3DObjectFunction(info, &x, &y, &z, &objectDistance, &valid);
					if (!valid)
					{
						return NULL;
					}
					options.XPos = x;
					options.YPos = y;
					options.ZPos = z;
					options.OverrideFlags = 0;
					if (min_distance > 0.0f)
					{
						options.OverrideFlags = LH_SAMPLE_OVERRIDE_MIN_DISTANCE;
						options.MinDistance = min_distance;
					}
					if (max_distance > 0.0f)
					{
						options.OverrideFlags |= LH_SAMPLE_OVERRIDE_MAX_DISTANCE;
						options.MaxDistance = max_distance;
					}
					LHSamplePlay(&options);
					return info;
				}
			}
			return NULL;
		}
		else if (action == LH_SAMPLE_ANIM_EFFECT_STOP)
		{
			if (waves[0] > 1)
			{
				for (unsigned long i = 1; i <= waves[0]; i++)
				{
					for (LH_SampleInfo* info = first; info <= last; info++)
					{
						if (info->AttachedObject == object && info->Bank == bank && info->SampleNumber == waves[i])
						{
							LHSampleStop(info);
							break;
						}
					}
				}
			}
			else
			{
				LHSampleStop(bank, (unsigned long)object, waves[1]);
			}
		}
		else
		{
			if (waves[0] > 1)
			{
				for (unsigned long i = 1; i <= waves[0]; i++)
				{
					for (LH_SampleInfo* info = first; info <= last; info++)
					{
						if (info->AttachedObject == object && info->Bank == bank && info->SampleNumber == waves[i])
						{
							LHSampleReleaseLoop(info);
							break;
						}
					}
				}
			}
			else
			{
				LHSampleReleaseLoop(bank, (unsigned long)object, waves[1]);
			}
		}
	}
	return NULL;
}

LH_SampleInfo* LH_AudioSystem::LHSamplePlayAnimEffect(void* object, float distance, unsigned long sample,
                                                      bool32_t follow, LH_AudioBank* bank, float min_distance,
                                                      float max_distance)
{
	LH_SamplePlayOptions options;
	float                x;
	float                y;
	float                z;
	float                objectDistance;
	bool32_t             valid;

	if (!WaveInstalled || !WaveActive || !SystemInstalled || bank == NULL)
	{
		return NULL;
	}
	if (distance > Sample3DObjectMaxDistance)
	{
		return NULL;
	}

	LHSampleGetFirstInfoStruct();
	LHSampleGetLastInfoStruct();
	if (distance <= bank->Samples[sample - 1].MaxDistance)
	{
		options.SampleNumber = sample;
		options.AttachedObject = (Base*)object;
		options.Bank = bank;
		options.Positional = true;
		options.Doppler = false;
		options.Follow = follow;
		options.OverrideFlags = 0;
		if (min_distance > 0.0f)
		{
			options.OverrideFlags = LH_SAMPLE_OVERRIDE_MIN_DISTANCE;
			options.MinDistance = min_distance;
		}
		if (max_distance > 0.0f)
		{
			options.OverrideFlags |= LH_SAMPLE_OVERRIDE_MAX_DISTANCE;
			options.MaxDistance = max_distance;
		}

		bool32_t       play;
		bool32_t       restart;
		LH_SampleInfo* info = LHSampleGetFreeSlot(&options, &play, &restart);
		if (info != NULL && play)
		{
			Sample3DObjectFunction(info, &x, &y, &z, &objectDistance, &valid);
			if (!valid)
			{
				return NULL;
			}
			options.XPos = x;
			options.YPos = y;
			options.ZPos = z;
			LHSamplePlay(&options);
			return info;
		}
	}
	return NULL;
}

long LH_AudioSystem::LHSampleGetPlayPosition(LH_AudioBank* bank, unsigned long object, unsigned long sample)
{
	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
		{
			if (info->Bank == bank && info->AttachedObject == (Base*)object)
			{
				if (info->Playing == true)
				{
					MIXWAVE*      wave;
					unsigned long position;
					QSWaveMixGetPlayPosition(QMixer, info->Channel, &wave, &position, QMIX_POSITION_MS);
					if (wave != NULL)
					{
						return position;
					}
					return LH_SAMPLE_PLAY_POSITION_INVALID;
				}
				return LH_SAMPLE_PLAY_POSITION_INVALID;
			}
		}
	}
	return LH_SAMPLE_PLAY_POSITION_INVALID;
}

long LH_AudioSystem::LHSampleGetPlayPosition(LH_SampleInfo* info)
{
	if (WaveInstalled && WaveActive && SystemInstalled)
	{
		if (info == NULL)
		{
			LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_SAMPLE_PLAY_INVALID_SAMPLE_INFO, 2647);
			return LH_SAMPLE_PLAY_POSITION_INVALID;
		}
		MIXWAVE*      wave;
		unsigned long position;
		QSWaveMixGetPlayPosition(QMixer, info->Channel, &wave, &position, QMIX_POSITION_MS);
		if (wave != NULL)
		{
			return position;
		}
	}
	return LH_SAMPLE_PLAY_POSITION_INVALID;
}

unsigned long LH_AudioSystem::LHSampleGetAnimArrayTableWidth(LH_AudioBank* bank)
{
	if (bank == NULL)
	{
		return 0;
	}
	return bank->AnimArrayTableWidth;
}

void LH_AudioSystem::LHSampleSetAnimArrayTableWidth(LH_AudioBank* bank, unsigned long width)
{
	if (bank != NULL)
	{
		bank->AnimArrayTableWidth = width;
	}
}

unsigned long LH_AudioSystem::LHSampleGetPlayRequestCount()
{
	return PlayRequestCount;
}

void LH_AudioSystem::LHSampleResetPlayRequestCount()
{
	PlayRequestCount = 0;
}

static bool32_t decompress_mpeg(MPGAudioDecoder* decoder, char* input, int input_length,
                                ACM_decompression_info* decompressed)
{
	decompressed->raw_data = (unsigned char*)malloc(input_length * LH_SAMPLE_DECOMPRESSED_FACTOR);
	memset(decompressed->raw_data, 0, input_length * LH_SAMPLE_DECOMPRESSED_FACTOR);

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
		LH_ASSERT(output<decompressed->raw_data+input_length*12, "overrun detected", 2725);
		// clang-format on
	}

	unsigned long length = output - decompressed->raw_data;
	mpg_header_to_wave_format(*(unsigned long*)input, &decompressed->format);
	decompressed->length = length;
	return true;
}

void LH_AudioSystem::LHSampleSetMasterVolume(unsigned long volume)
{
	if (!WaveInstalled || !SystemInstalled || volume == SampleMasterVolume || volume > LH_SAMPLE_VOLUME_MAX)
	{
		return;
	}
	for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
	{
		if (info->Playing == true)
		{
			QSWaveMixSetVolume(QMixer, info->Channel, QMIX_IMMEDIATE,
			                   info->Volume * volume / LH_SAMPLE_VOLUME_MAX * LH_SAMPLE_QMIXER_VOLUME_SCALE);
		}
	}
	SampleMasterVolume = volume;
}

unsigned long LH_AudioSystem::LHSampleGetMasterVolume()
{
	return SampleMasterVolume;
}

float LH_AudioSystem::LHSampleGetPercentageDone(LH_AudioBank* bank, unsigned long object, unsigned long sample)
{
	if (WaveInstalled && SystemInstalled)
	{
		for (LH_SampleInfo* info = FirstSampleInfo; info <= LastSampleInfo; info++)
		{
			if (info->Bank == bank && info->AttachedObject == (Base*)object && info->SampleNumber == sample)
			{
				if (!WaveActive && info->AtmosInfo == NULL)
				{
					return LH_SAMPLE_PERCENTAGE_FINISHED;
				}
				if (info->Playing == true)
				{
					MIXWAVE*      wave;
					unsigned long position;
					QSWaveMixGetPlayPosition(QMixer, info->Channel, &wave, &position, QMIX_POSITION_MS);
					if (wave != NULL)
					{
						unsigned long size;
						if (info->DataSize != 0)
						{
							size = info->DataSize;
						}
						else if (wave->pcm.wf.wFormatTag == WAVE_FORMAT_PCM)
						{
							size = info->TagDataSize;
						}
						else if (wave->pcm.wf.wFormatTag == WAVE_FORMAT_ADPCM)
						{
							size = info->TagDataSize * LH_SAMPLE_ADPCM_COMPRESSION_RATIO;
						}
						else
						{
							return LH_SAMPLE_PERCENTAGE_FINISHED;
						}
						unsigned long duration =
							size * LH_SAMPLE_MILLISECONDS_PER_SECOND /
							(wave->pcm.wf.nChannels * wave->pcm.wf.nSamplesPerSec * LH_SAMPLE_BYTES_PER_SAMPLE);
						return (float)position / duration;
					}
				}
			}
		}
	}
	return LH_SAMPLE_PERCENTAGE_FINISHED;
}
