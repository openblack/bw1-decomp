#include <ctype.h>  /* For toupper */
#include <stdio.h>  /* For fopen, fread, fclose */
#include <stdlib.h> /* For malloc, free */
#include <string.h> /* For memset, strncat, wcscpy */

#include <dmusici.h>  /* For IDirectMusicPerformance, IDirectMusicTool */
#include <dmksctrl.h> /* For IKsControl */

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>  /* For LHFileLength */
#include <Lionhead/LHLog/ver4.0/ErrorCodes.h> /* For LH_DX_Errors */

#include "LH_ListenerInfo.h"
#include "LH_MidiInfo.h"
#include "LH_MidiPlayOptions.h"
#include "LHAudioLog.h"
#include "LHAudioMidi.h"

#define FILEPATH LH_AUDIO_SOURCE_DIRECTORY "LHAudioMidi.cpp"

#define LH_LOG_DX_ERROR(result, line)                                                                                  \
	{                                                                                                                  \
		if (LHLogger::LogErrorCodeS(LHLogLibraryName, FILEPATH, line, LH_DX_Errors, result))                           \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
	}

#ifndef INVALID_FILE_ATTRIBUTES
#define INVALID_FILE_ATTRIBUTES 0xFFFFFFFF
#endif

#define LH_MIDI_BITS_PER_BYTE          8
#define LH_MIDI_CHUNK_ID_LENGTH        4
#define LH_MIDI_CHANNEL_COUNT          16
#define LH_MIDI_VARIABLE_LENGTH_MAX    4
#define LH_MIDI_VARIABLE_LENGTH_BITS   7
#define LH_MIDI_STATUS_BIT             0x80
#define LH_MIDI_DATA_MASK              0x7f
#define LH_MIDI_CHANNEL_MASK           0x0f
#define LH_MIDI_COMMAND_MASK           0xf0
#define LH_MIDI_SEQUENCE_NUMBER_LENGTH 2
#define LH_MIDI_CHANNEL_PREFIX_LENGTH  1
#define LH_MIDI_TEMPO_LENGTH           3
#define LH_MIDI_SMPTE_OFFSET_LENGTH    5
#define LH_MIDI_TIME_SIGNATURE_LENGTH  4
#define LH_MIDI_KEY_SIGNATURE_LENGTH   2
#define LH_MIDI_RESERVED_LENGTH        1
#define LH_MIDI_SYSEX_BYTES_PER_LINE   8
#define LH_MIDI_MUSIC_TIME_PER_TICK    2
#define LH_MIDI_LOOP_REPEATS           0x7fff
#define LH_MIDI_TEMPO_MIN              50
#define LH_MIDI_TEMPO_MAX              200
#define LH_MIDI_TEMPO_SCALE            0.01f
#define LH_MIDI_MASTER_TEMPO_NORMAL    1.0f
#define LH_MIDI_ALL_GROUPS             0xffffffff
#define LH_MIDI_TOOL_MEDIA_TYPE_COUNT  1
#define LH_MIDI_PORT_VOICES            100
#define LH_MIDI_PORT_CHANNEL_GROUPS    1
#define LH_MIDI_PORT_AUDIO_CHANNELS    1
#define LH_MIDI_PCHANNEL_BLOCK         0
#define LH_MIDI_PCHANNEL_GROUP         1
#define LH_MIDI_REVERB_IN_GAIN         0.0f
#define LH_MIDI_REVERB_MIX             -15.0f
#define LH_MIDI_REVERB_TIME            400.0f
#define LH_MIDI_REVERB_HIGH_FREQ_RATIO 0.001f
#define LH_MIDI_REVERB_PROPERTY_ID     0
#define LH_MIDI_BUFFER_CHANNELS        2
#define LH_MIDI_BUFFER_BITS_PER_SAMPLE 16
#define LH_MIDI_BUFFER_FLAGS                                                                                           \
	(DSBCAPS_CTRL3D | DSBCAPS_CTRLFREQUENCY | DSBCAPS_CTRLVOLUME | DSBCAPS_STICKYFOCUS | DSBCAPS_GETCURRENTPOSITION2 | \
	 DSBCAPS_MUTE3DATMAXDISTANCE)

class midi_message_capture : public IDirectMusicTool
{
public:
	// BW1W120 10004530 BW1M119 0111f510 (LHCombined Release)
	midi_message_capture();

	// BW1W120 10004540 BW1M119 0111f4b0 (LHCombined Release)
	STDMETHOD(QueryInterface)(REFIID iid, void** object);
	// BW1W120 100045a0 BW1M119 0111f450 (LHCombined Release)
	STDMETHOD_(ULONG, AddRef)();
	// BW1W120 100045c0 BW1M119 0111f3b0 (LHCombined Release)
	STDMETHOD_(ULONG, Release)();

	// BW1W120 100045f0 BW1M119 0111f350 (LHCombined Release)
	STDMETHOD(Init)(IDirectMusicGraph* graph);
	// BW1W120 10004600 BW1M119 0111f300 (LHCombined Release)
	STDMETHOD(GetMsgDeliveryType)(DWORD* delivery_type);
	// BW1W120 10004610 BW1M119 0111f2a0 (LHCombined Release)
	STDMETHOD(GetMediaTypeArraySize)(DWORD* count);
	// BW1W120 10004620 BW1M119 0111f230 (LHCombined Release)
	STDMETHOD(GetMediaTypes)(DWORD** types, DWORD count);
	// BW1W120 10004650 BW1M119 0111f0e0 (LHCombined Release)
	STDMETHOD(ProcessPMsg)(IDirectMusicPerformance* performance, DMUS_PMSG* message);
	// BW1W120 10004640 BW1M119 0111f1b0 (LHCombined Release)
	STDMETHOD(Flush)(IDirectMusicPerformance* performance, DMUS_PMSG* message, REFERENCE_TIME time);

private:
	long RefCount;
};

#ifndef VERSION_BW1WCI
const char LHMidiMSBText[] = "MSB";
const char LHMidiLSBText[] = "LSB";
const char LHMidiOffText[] = "off";
const char LHMidiOnText[] = "on";
const int  LHMidiTimeSignatureDenominators[] = {0, 2, 4, 8, 16, 32, 64, 128, 256};
#endif

static bool32_t            MidiFileFinished;
static IDirectMusic*       MidiDirectMusic;
static IDirectMusicLoader* MidiLoader;
static unsigned char*      MidiFileStart;
static unsigned char*      MidiFilePos;
static unsigned char*      MidiFileEnd;
static unsigned long       MidiFileOffset;
static unsigned long       MidiChannelTime[LH_MIDI_CHANNEL_COUNT];
static unsigned long       MidiTracksRemaining;

// BW1W120 inlined BW1M119 null
inline void MidiSetPoint(LHAudioPoint* point, float x, float y, float z)
{
	point->x = x;
	point->y = y;
	point->z = z;
}

// BW1W120 100042e0 BW1M119 null
static unsigned char MidiReadByte();
// BW1W120 10004310 BW1M119 null
static unsigned char MidiPeekByte();
// BW1W120 10004320 BW1M119 null
static unsigned long MidiReadVariableLength();
// BW1W120 10004350 BW1M119 null
static unsigned long MidiRead32();
// BW1W120 10004390 BW1M119 null
static unsigned long MidiRead24();
// BW1W120 100043c0 BW1M119 null
static unsigned short MidiRead16();

LH_MidiPlayOptions::LH_MidiPlayOptions()
{
	Positional = false;
	Volume = LH_MIDI_VOLUME_MAX;
	Pan = LH_MIDI_PAN_CENTRE;
	Tempo = LH_MIDI_TEMPO_NORMAL;
	X = 0.0f;
	Y = 0.0f;
	Z = 0.0f;
	MinDistance = LH_MIDI_DEFAULT_MIN_DISTANCE;
	MaxDistance = LH_MIDI_DEFAULT_MAX_DISTANCE;
}

LH_MidiPlayOptions::~LH_MidiPlayOptions() {}

int MidiCompareChunkID(char* id, char* text, int length)
{
	char* idChar = id;
	char* textChar = text;
	for (int i = length; i != 0; i--)
	{
		char a = toupper(*idChar);
		char b = toupper(*textChar);
		if (a < b)
		{
			return -1;
		}
		if (a > b)
		{
			return 1;
		}
		if (a == '\0')
		{
			return 0;
		}
		idChar++;
		textChar++;
	}
	return 0;
}

bool32_t LH_AudioSystem::LHMidiReadChunk(LH_MidiInfo* info)
{
	char          id[LH_MIDI_CHUNK_ID_LENGTH + 1];
	unsigned long i;
	for (i = 0; i < LH_MIDI_CHUNK_ID_LENGTH; i++)
	{
		id[i] = MidiReadByte();
	}
	id[i] = '\0';
	unsigned long length = MidiRead32();
	unsigned long end = MidiFileOffset + length + 1;

	if (MidiCompareChunkID(id, "MThd", LH_MIDI_CHUNK_ID_LENGTH) == 0)
	{
		MidiRead16();
		MidiTracksRemaining = MidiRead16();
		MidiRead16();
	}

	if (MidiCompareChunkID(id, "MTrk", LH_MIDI_CHUNK_ID_LENGTH) != 0)
	{
		MidiFilePos = MidiFileStart + end;
		return MidiFileFinished == false;
	}

	unsigned long status = 0;
	unsigned long channel;
	for (;;)
	{
		unsigned long delta = MidiReadVariableLength();
		if (MidiPeekByte() >= LH_MIDI_STATUS_BIT)
		{
			status = MidiReadByte();
		}
		unsigned long command = status;
		if (status >= LH_MIDI_STATUS_NOTE_OFF && status < LH_MIDI_STATUS_SYSEX)
		{
			channel = status & LH_MIDI_CHANNEL_MASK;
			MidiChannelTime[channel] += delta;
			command = status & LH_MIDI_COMMAND_MASK;
		}

		unsigned long lineCount;
		unsigned long type;
		unsigned long controller;
		switch (command)
		{
		case LH_MIDI_STATUS_NOTE_OFF:
		case LH_MIDI_STATUS_NOTE_ON:
		case LH_MIDI_STATUS_KEY_PRESSURE:
		case LH_MIDI_STATUS_PITCH_BEND:
		case LH_MIDI_STATUS_SONG_POSITION:
			MidiReadByte();
		case LH_MIDI_STATUS_PROGRAM_CHANGE:
		case LH_MIDI_STATUS_CHANNEL_PRESSURE:
		case LH_MIDI_STATUS_TIME_CODE:
		case LH_MIDI_STATUS_SONG_SELECT:
			MidiReadByte();
			break;
		case LH_MIDI_STATUS_CONTROL_CHANGE:
			controller = MidiReadByte();
			MidiReadByte();
			switch (controller)
			{
			case LH_MIDI_CONTROLLER_LOOP_START:
				info->LoopStart = MidiChannelTime[channel] * LH_MIDI_MUSIC_TIME_PER_TICK;
				break;
			case LH_MIDI_CONTROLLER_LOOP_END:
				info->LoopEnd = MidiChannelTime[channel] * LH_MIDI_MUSIC_TIME_PER_TICK;
				break;
			}
			break;
		case LH_MIDI_STATUS_SYSEX:
			for (length = MidiReadVariableLength(); length != 0; length--)
			{
				MidiReadByte();
			}
			break;
		case LH_MIDI_STATUS_SYSEX_END:
			length = MidiReadVariableLength();
			lineCount = 0;
			while (length != 0)
			{
				length--;
				MidiReadByte();
				if (++lineCount == LH_MIDI_SYSEX_BYTES_PER_LINE && length != 0)
				{
					lineCount = 0;
				}
			}
			break;
		case LH_MIDI_STATUS_META:
			type = MidiReadByte();
			length = MidiReadVariableLength();
			switch (type)
			{
			case LH_MIDI_META_SEQUENCE_NUMBER:
				MidiRead16();
				length -= LH_MIDI_SEQUENCE_NUMBER_LENGTH;
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_TEXT:
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_COPYRIGHT:
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_TRACK_NAME:
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_INSTRUMENT_NAME:
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_LYRIC:
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_MARKER:
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_CUE_POINT:
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_CHANNEL_PREFIX:
				MidiReadByte();
				length -= LH_MIDI_CHANNEL_PREFIX_LENGTH;
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_END_OF_TRACK:
				while (length--)
				{
					MidiReadByte();
				}
				if (--MidiTracksRemaining == 0)
				{
					MidiFileFinished = true;
				}
				MidiFilePos = MidiFileStart + end;
				return MidiFileFinished == false;
			case LH_MIDI_META_TEMPO:
				MidiRead24();
				length -= LH_MIDI_TEMPO_LENGTH;
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_SMPTE_OFFSET:
				MidiReadByte();
				MidiReadByte();
				MidiReadByte();
				MidiReadByte();
				MidiReadByte();
				length -= LH_MIDI_SMPTE_OFFSET_LENGTH;
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_TIME_SIGNATURE:
				MidiReadByte();
				MidiReadByte();
				MidiReadByte();
				MidiReadByte();
				length -= LH_MIDI_TIME_SIGNATURE_LENGTH;
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_KEY_SIGNATURE:
				MidiReadByte();
				MidiReadByte();
				length -= LH_MIDI_KEY_SIGNATURE_LENGTH;
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_RESERVED_7C:
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_RESERVED_7D:
				MidiReadByte();
				length -= LH_MIDI_RESERVED_LENGTH;
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_RESERVED_7E:
				MidiReadByte();
				length -= LH_MIDI_RESERVED_LENGTH;
				while (length--)
				{
					MidiReadByte();
				}
				break;
			case LH_MIDI_META_SEQUENCER_SPECIFIC:
				while (length--)
				{
					MidiReadByte();
				}
				break;
			default:
				while (length--)
				{
					MidiReadByte();
				}
				break;
			}
			break;
		}
	}
}

static unsigned char MidiReadByte()
{
	unsigned char c = *MidiFilePos;
	MidiFileOffset = MidiFilePos - MidiFileStart;
	MidiFilePos++;
	return c;
}

static unsigned char MidiPeekByte()
{
	return *MidiFilePos;
}

static unsigned long MidiReadVariableLength()
{
	unsigned long value = 0;
	for (unsigned short count = LH_MIDI_VARIABLE_LENGTH_MAX; count != 0; count--)
	{
		unsigned short c = MidiReadByte();
		value = (value << LH_MIDI_VARIABLE_LENGTH_BITS) | (c & LH_MIDI_DATA_MASK);
		if (!(c & LH_MIDI_STATUS_BIT))
		{
			break;
		}
	}
	return value;
}

static unsigned long MidiRead32()
{
	unsigned long value = MidiReadByte();
	value = (value << LH_MIDI_BITS_PER_BYTE) | MidiReadByte();
	value = (value << LH_MIDI_BITS_PER_BYTE) | MidiReadByte();
	value = (value << LH_MIDI_BITS_PER_BYTE) | MidiReadByte();
	return value;
}

static unsigned long MidiRead24()
{
	unsigned long value = MidiReadByte();
	value = (value << LH_MIDI_BITS_PER_BYTE) | MidiReadByte();
	value = (value << LH_MIDI_BITS_PER_BYTE) | MidiReadByte();
	return value;
}

static unsigned short MidiRead16()
{
	unsigned short high = MidiReadByte();
	unsigned short low = MidiReadByte();
	return MAKEWORD(low, high);
}

void LH_AudioSystem::LHMidiReadLoopPoints(char* filename, LH_MidiInfo* info)
{
	uint32_t size;
	LHFileLength(filename, &size);
	FILE*          file = fopen(filename, "r");
	unsigned char* buffer = (unsigned char*)malloc(size);
	if (buffer == NULL)
	{
		fclose(file);
		return;
	}
	fread(buffer, size, 1, file);
	fclose(file);

	memset(MidiChannelTime, 0, sizeof(MidiChannelTime));
	MidiFilePos = buffer;
	MidiFileStart = buffer;
	MidiFileEnd = buffer + size;
	while (MidiCompareChunkID((char*)MidiFilePos, "MTHD", LH_MIDI_CHUNK_ID_LENGTH) != 0)
	{
		MidiFilePos++;
		if (--size == 0)
		{
			break;
		}
	}
	if (size == 0)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_MIDI_OPEN_NOT_STANDARD_MIDI_FILE, 463);
		free(buffer);
		return;
	}

	MidiFileFinished = false;
	while (LHMidiReadChunk(info))
	{
	}
	free(buffer);
}

midi_message_capture::midi_message_capture() {}

STDMETHODIMP midi_message_capture::QueryInterface(REFIID iid, void** object)
{
	if (iid == IID_IUnknown || iid == IID_IDirectMusicTool)
	{
		*object = static_cast<IDirectMusicTool*>(this);
	}
	else
	{
		*object = NULL;
		return E_NOINTERFACE;
	}
	reinterpret_cast<IUnknown*>(this)->AddRef();
	return S_OK;
}

STDMETHODIMP_(ULONG) midi_message_capture::AddRef()
{
	return InterlockedIncrement(&RefCount);
}

STDMETHODIMP_(ULONG) midi_message_capture::Release()
{
	if (InterlockedDecrement(&RefCount) == 0)
	{
		delete this;
		return 0;
	}
	return RefCount;
}

STDMETHODIMP midi_message_capture::Init(IDirectMusicGraph* graph)
{
	return E_NOTIMPL;
}

STDMETHODIMP midi_message_capture::GetMsgDeliveryType(DWORD* delivery_type)
{
	return E_NOTIMPL;
}

STDMETHODIMP midi_message_capture::GetMediaTypeArraySize(DWORD* count)
{
	*count = LH_MIDI_TOOL_MEDIA_TYPE_COUNT;
	return S_OK;
}

STDMETHODIMP midi_message_capture::GetMediaTypes(DWORD** types, DWORD count)
{
	if (count == LH_MIDI_TOOL_MEDIA_TYPE_COUNT)
	{
		(*types)[0] = DMUS_PMSGT_MIDI;
		return S_OK;
	}
	return E_FAIL;
}

STDMETHODIMP midi_message_capture::Flush(IDirectMusicPerformance* performance, DMUS_PMSG* message, REFERENCE_TIME time)
{
	return E_NOTIMPL;
}

STDMETHODIMP midi_message_capture::ProcessPMsg(IDirectMusicPerformance* performance, DMUS_PMSG* message)
{
	if (message->pGraph == NULL || FAILED(message->pGraph->StampPMsg(message)))
	{
		return DMUS_S_FREE;
	}
	return DMUS_S_REQUEUE;
}

bool32_t LH_AudioSystem::LHMidiInitSoftwareSynth()
{
	IDirectMusicPort* port = NULL;
	LPDIRECTSOUND     directSound;
	bool32_t          autoDownload = true;
	HRESULT           result;
	unsigned long     i;

	if (WaveInstalled)
	{
		QSWaveMixGetDirectSound(QMixer, (LPVOID*)&directSound);
		for (i = 0; i < LH_MIDI_INFO_COUNT; i++)
		{
			result = MidiInfos[i].Performance->Init(&MidiDirectMusic, directSound, NULL);
			if (result != S_OK)
			{
				LH_LOG_DX_ERROR(result, 637);
				return false;
			}
			MidiInfos[i].Performance->SetGlobalParam(GUID_PerfAutoDownload, &autoDownload, sizeof(autoDownload));
		}
	}
	else
	{
		for (i = 0; i < LH_MIDI_INFO_COUNT; i++)
		{
			result = MidiInfos[i].Performance->Init(&MidiDirectMusic, NULL, NULL);
			if (result != S_OK)
			{
				LH_LOG_DX_ERROR(result, 650);
				return false;
			}
			MidiInfos[i].Performance->SetGlobalParam(GUID_PerfAutoDownload, &autoDownload, sizeof(autoDownload));
		}
	}

	DMUS_PORTPARAMS portParams;
	memset(&portParams, 0, sizeof(portParams));
	portParams.dwSize = sizeof(portParams);
	portParams.dwValidParams = DMUS_PORTPARAMS_CHANNELGROUPS | DMUS_PORTPARAMS_AUDIOCHANNELS |
	                           DMUS_PORTPARAMS_SAMPLERATE | DMUS_PORTPARAMS_EFFECTS | DMUS_PORTPARAMS_SHARE;
	portParams.dwVoices = LH_MIDI_PORT_VOICES;
	portParams.dwChannelGroups = LH_MIDI_PORT_CHANNEL_GROUPS;
	portParams.dwEffectFlags = DMUS_EFFECT_REVERB;
	portParams.dwAudioChannels = LH_MIDI_PORT_AUDIO_CHANNELS;
	portParams.dwSampleRate = HWRate;
	portParams.fShare = true;

	for (i = 0; i < LH_MIDI_INFO_COUNT; i++)
	{
		if (FAILED(MidiDirectMusic->CreatePort(CLSID_DirectMusicSynth, &portParams, &port, NULL)))
		{
			return false;
		}

		IKsControl*              control;
		DMUS_WAVES_REVERB_PARAMS reverb;
		reverb.fInGain = LH_MIDI_REVERB_IN_GAIN;
		reverb.fReverbMix = LH_MIDI_REVERB_MIX;
		reverb.fReverbTime = LH_MIDI_REVERB_TIME;
		reverb.fHighFreqRTRatio = LH_MIDI_REVERB_HIGH_FREQ_RATIO;
		if (SUCCEEDED(port->QueryInterface(IID_IKsControl, (void**)&control)))
		{
			KSPROPERTY property;
			ULONG      returned;
			memset(&property, 0, sizeof(property));
			property.Set = GUID_DMUS_PROP_WavesReverb;
			property.Id = LH_MIDI_REVERB_PROPERTY_ID;
			property.Flags = KSPROPERTY_TYPE_SET;
			control->KsProperty(&property, sizeof(property), &reverb, sizeof(reverb), &returned);
			control->Release();
		}

		if (WaveInstalled)
		{
			IDirectSoundBuffer* buffer = NULL;
			DSBUFFERDESC        desc = {0};
			WAVEFORMATEX        format;
			DWORD               formatSize;
			memset(&desc, 0, sizeof(desc));
			memset(&format, 0, sizeof(format));
			desc.dwSize = sizeof(desc);
			if (UseHardware)
			{
				desc.dwFlags = LH_MIDI_BUFFER_FLAGS | DSBCAPS_LOCHARDWARE;
			}
			else
			{
				desc.dwFlags = LH_MIDI_BUFFER_FLAGS | DSBCAPS_LOCSOFTWARE;
			}
			desc.lpwfxFormat = &format;
			formatSize = sizeof(format);
			if (FAILED(port->GetFormat(&format, &formatSize, &desc.dwBufferBytes)))
			{
				format.wFormatTag = WAVE_FORMAT_PCM;
				format.nChannels = LH_MIDI_BUFFER_CHANNELS;
				format.nSamplesPerSec = HWRate;
				format.wBitsPerSample = LH_MIDI_BUFFER_BITS_PER_SAMPLE;
				format.nBlockAlign = format.nChannels * format.wBitsPerSample / LH_MIDI_BITS_PER_BYTE;
				format.nAvgBytesPerSec = format.nSamplesPerSec * format.nBlockAlign;
				format.cbSize = sizeof(format);
				desc.dwBufferBytes = format.nAvgBytesPerSec;
			}
			result = directSound->CreateSoundBuffer(&desc, &buffer, NULL);
			if (result != S_OK)
			{
				LH_LOG_DX_ERROR(result, 762);
				return false;
			}
			result = port->SetDirectSound(directSound, buffer);
			if (result != S_OK)
			{
				LH_LOG_DX_ERROR(result, 768);
				return false;
			}
			MidiInfos[i].Buffer = buffer;
			result = buffer->QueryInterface(IID_IDirectSound3DBuffer, (void**)&MidiInfos[i].Buffer3D);
			if (result != S_OK)
			{
				LH_LOG_DX_ERROR(result, 775);
				return false;
			}
		}

		result = MidiInfos[i].Performance->AddPort(port);
		if (result != S_OK)
		{
			LH_LOG_DX_ERROR(result, 784);
			return false;
		}
		result = MidiInfos[i].Performance->AssignPChannelBlock(LH_MIDI_PCHANNEL_BLOCK, port, LH_MIDI_PCHANNEL_GROUP);
		if (result != S_OK)
		{
			LH_LOG_DX_ERROR(result, 795);
			port->Release();
			return false;
		}
		port->Release();
	}

	result = MidiDirectMusic->Activate(true);
	if (result != S_OK)
	{
		LH_LOG_DX_ERROR(result, 806);
		port->Release();
		return false;
	}
	return true;
}

bool32_t LH_AudioSystem::LHMidiOpen()
{
	IDirectMusicGraph* graph;
	LPDIRECTSOUND      directSound;

	if (MidiInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_MIDI_OPEN_ALREADY_INSTALLED, 824);
		return false;
	}
	if (FAILED(CoInitialize(NULL)))
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_CO_INITIALISE, 832);
		return false;
	}

	if (WaveInstalled)
	{
		if (FAILED(CoCreateInstance(CLSID_DirectMusic, NULL, CLSCTX_INPROC_SERVER, IID_IDirectMusic,
		                            (void**)&MidiDirectMusic)))
		{
			LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_CO_CREATE_INSTANCE, 844, "DM Object");
			CoUninitialize();
			return false;
		}
		QSWaveMixGetDirectSound(QMixer, (LPVOID*)&directSound);
		if (FAILED(MidiDirectMusic->SetDirectSound(directSound, NULL)))
		{
			LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_MIDI_OPEN_SET_DIRECT_SOUND, 853);
			CoUninitialize();
			return false;
		}
	}

	if (FAILED(CoCreateInstance(CLSID_DirectMusicLoader, NULL, CLSCTX_INPROC, IID_IDirectMusicLoader,
	                            (void**)&MidiLoader)))
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_CO_CREATE_INSTANCE, 865, "DM Loader");
		CoUninitialize();
		return false;
	}

	MidiInfos = new LH_MidiInfo[LH_MIDI_INFO_COUNT];
	for (unsigned long i = 0; i < LH_MIDI_INFO_COUNT; i++)
	{
		MidiInfos[i].LoopStart = LH_MIDI_NO_LOOP_POINT;
		MidiInfos[i].LoopEnd = LH_MIDI_NO_LOOP_POINT;
		MidiInfos[i].Positional = false;
		MidiInfos[i].Volume = LH_MIDI_VOLUME_MAX;
		MidiInfos[i].Tempo = LH_MIDI_TEMPO_NORMAL;
		if (FAILED(CoCreateInstance(CLSID_DirectMusicPerformance, NULL, CLSCTX_INPROC, IID_IDirectMusicPerformance,
		                            (void**)&MidiInfos[i].Performance)))
		{
			LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_CO_CREATE_INSTANCE, 885, "DM Performance");
			CoUninitialize();
			return false;
		}

		midi_message_capture* tool = new midi_message_capture;
		if (SUCCEEDED(
				CoCreateInstance(CLSID_DirectMusicGraph, NULL, CLSCTX_INPROC, IID_IDirectMusicGraph, (void**)&graph)))
		{
			if (FAILED(graph->InsertTool(tool, NULL, 0, 0)))
			{
				LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_MIDI_OPEN_INSERT_GRAPH_TOOL, 908);
				CoUninitialize();
				return false;
			}
			MidiInfos[i].Performance->SetGraph(graph);
			graph->Release();
		}
		else
		{
			LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_CO_CREATE_INSTANCE, 916, "DM Graph");
			CoUninitialize();
			return false;
		}
		MidiInfos[i].Segment = NULL;
	}

	if (!LHMidiInitSoftwareSynth())
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_MIDI_OPEN_INIT_SOFTWARE_SYNTH, 928);
		CoUninitialize();
		return false;
	}

	MidiInstalled = true;
	MidiActive = true;
	return true;
}

void LH_AudioSystem::LHMidiClose()
{
	if (!MidiInstalled)
	{
		return;
	}

	for (unsigned long i = 0; i < LH_MIDI_INFO_COUNT; i++)
	{
		if (MidiInfos[i].Segment != NULL)
		{
			LHMidiSetSequenceVolume(&MidiInfos[i], 0);
			MidiInfos[i].Performance->Stop(MidiInfos[i].Segment, NULL, 0, 0);
			MidiInfos[i].Segment->Release();
			MidiInfos[i].Segment = NULL;
		}
		MidiInfos[i].Performance->CloseDown();
		MidiInfos[i].Performance->Release();
	}
	MidiLoader->Release();
	CoUninitialize();
	MidiInstalled = false;
	MidiActive = false;
	delete MidiInfos;
}

bool32_t LH_AudioSystem::LHMidiIsInstalled()
{
	return MidiInstalled;
}

bool32_t LH_AudioSystem::LHMidiIsActive()
{
	return MidiActive;
}

void LH_AudioSystem::LHMidiSwitch(unsigned long on)
{
	if (MidiInstalled && SystemInstalled)
	{
		if (on == false)
		{
			LHMidiStopAll();
			MidiActive = false;
		}
		else if (on == true)
		{
			MidiActive = on;
		}
	}
}

LH_MidiInfo* LH_AudioSystem::LHMidiPlay(char* filename, LH_MidiPlayOptions* options)
{
	char            directory[MAX_PATH];
	wchar_t         wideName[MAX_PATH];
	wchar_t         wideDirectory[MAX_PATH];
	DMUS_OBJECTDESC desc;
	LHAudioPoint    point;

	if (!MidiInstalled || !MidiActive || !SystemInstalled)
	{
		LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_MIDI_NOT_INSTALLED, 1017);
		return NULL;
	}

	if (GetFileAttributes(filename) == INVALID_FILE_ATTRIBUTES)
	{
		LH_LOG_ERROR_CODE1(LH_AUDIO_ERROR_FILE_DOES_NOT_EXIST, 1023, filename);
	}

	char* name = LHLogger::GetFileName(filename);
	directory[0] = '\0';
	strncat(directory, filename, name - filename - 1);
	MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, directory, -1, wideDirectory, MAX_PATH);
	MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, name, -1, wideName, MAX_PATH);
	MidiLoader->SetSearchDirectory(GUID_DirectMusicAllTypes, wideDirectory, false);

	desc.guidClass = CLSID_DirectMusicSegment;
	desc.dwSize = sizeof(DMUS_OBJECTDESC);
	wcscpy(desc.wszFileName, wideName);
	desc.dwValidData = DMUS_OBJ_CLASS | DMUS_OBJ_FILENAME;

	for (unsigned long i = 0; i < LH_MIDI_INFO_COUNT; i++)
	{
		if (MidiInfos[i].Segment == NULL)
		{
			if (FAILED(MidiLoader->GetObject(&desc, IID_IDirectMusicSegment, (void**)&MidiInfos[i].Segment)))
			{
				LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_MIDI_PLAY_GET_SEGMENT, 1057);
				return NULL;
			}

			LHMidiSetSequenceVolume(&MidiInfos[i], options->Volume);
			if (options->Positional && WaveInstalled)
			{
				MidiSetPoint(&MidiInfos[i].Pos, options->X, options->Y, options->Z);
				ListenerInfo->Transform(&point, &MidiInfos[i].Pos);
				MidiInfos[i].Buffer3D->SetPosition(point.x, point.y, point.z, DS3D_IMMEDIATE);
				MidiInfos[i].Positional = true;
				MidiInfos[i].Buffer3D->SetMinDistance(options->MinDistance, DS3D_IMMEDIATE);
				MidiInfos[i].Buffer3D->SetMaxDistance(options->MaxDistance, DS3D_IMMEDIATE);
				MidiInfos[i].BufferMinDistance = options->MinDistance;
				MidiInfos[i].BufferMaxDistance = options->MaxDistance;
				MidiInfos[i].MaxDistance = options->MaxDistance * options->MaxDistance;
				if (((point.x * point.x) + (point.y * point.y) + (point.z * point.z)) > MidiInfos[i].MaxDistance)
				{
					MidiInfos[i].Buffer->SetVolume(DSBVOLUME_MIN);
				}
				else
				{
					MidiInfos[i].Buffer->SetVolume(DSBVOLUME_MAX);
				}
			}
			else
			{
				MidiInfos[i].Positional = false;
				LHMidiSetSequencePan(&MidiInfos[i], options->Pan);
			}
			LHMidiSetSequenceTempo(&MidiInfos[i], options->Tempo);

			LHMidiReadLoopPoints(filename, &MidiInfos[i]);
			if (MidiInfos[i].LoopStart != LH_MIDI_NO_LOOP_POINT && MidiInfos[i].LoopEnd != LH_MIDI_NO_LOOP_POINT)
			{
				MidiInfos[i].Segment->SetLoopPoints(MidiInfos[i].LoopStart, MidiInfos[i].LoopEnd);
				MidiInfos[i].Segment->SetRepeats(LH_MIDI_LOOP_REPEATS);
			}

			if (FAILED(MidiInfos[i].Performance->PlaySegment(MidiInfos[i].Segment, DMUS_SEGF_BEAT, 0, NULL)))
			{
				LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_MIDI_PLAY_PLAY, 1148);
				MidiInfos[i].Segment = NULL;
				return NULL;
			}
			return &MidiInfos[i];
		}
	}

	LH_LOG_ERROR_CODE(LH_AUDIO_ERROR_MIDI_PLAY_NO_FREE_SLOTS, 1155);
	return NULL;
}

void LH_AudioSystem::LHMidiStop(LH_MidiInfo* info)
{
	if (!MidiInstalled || !SystemInstalled)
	{
		return;
	}

	for (unsigned long i = 0; i < LH_MIDI_INFO_COUNT; i++)
	{
		if (&MidiInfos[i] == info && MidiInfos[i].Segment != NULL)
		{
			LHMidiSetSequenceVolume(&MidiInfos[i], 0);
			HRESULT result = MidiInfos[i].Performance->Stop(MidiInfos[i].Segment, NULL, 0, 0);
			if (result != S_OK)
			{
				LH_LOG_DX_ERROR(result, 1176);
			}
			MidiInfos[i].Segment->Release();
			MidiInfos[i].Segment = NULL;
			MidiInfos[i].LoopStart = LH_MIDI_NO_LOOP_POINT;
			MidiInfos[i].LoopEnd = LH_MIDI_NO_LOOP_POINT;
			float tempo = LH_MIDI_MASTER_TEMPO_NORMAL;
			result = MidiInfos[i].Performance->SetGlobalParam(GUID_PerfMasterTempo, &tempo, sizeof(tempo));
			if (result != S_OK)
			{
				LH_LOG_DX_ERROR(result, 1193);
			}
		}
	}
}

void LH_AudioSystem::LHMidiStopAll()
{
	if (!MidiInstalled || !SystemInstalled)
	{
		return;
	}

	for (unsigned long i = 0; i < LH_MIDI_INFO_COUNT; i++)
	{
		if (MidiInfos[i].Segment != NULL)
		{
			LHMidiSetSequenceVolume(&MidiInfos[i], 0);
			HRESULT result = MidiInfos[i].Performance->Stop(MidiInfos[i].Segment, NULL, 0, 0);
			if (result != S_OK)
			{
				LH_LOG_DX_ERROR(result, 1215);
			}
			result = MidiInfos[i].Segment->SetParam(GUID_Unload, LH_MIDI_ALL_GROUPS, 0, 0, MidiInfos[i].Performance);
			if (result != S_OK)
			{
				LH_LOG_DX_ERROR(result, 1220);
			}
			MidiInfos[i].Segment->Release();
			MidiInfos[i].Segment = NULL;
			MidiInfos[i].LoopStart = LH_MIDI_NO_LOOP_POINT;
			MidiInfos[i].LoopEnd = LH_MIDI_NO_LOOP_POINT;
			float tempo = LH_MIDI_MASTER_TEMPO_NORMAL;
			result = MidiInfos[i].Performance->SetGlobalParam(GUID_PerfMasterTempo, &tempo, sizeof(tempo));
			if (result != S_OK)
			{
				LH_LOG_DX_ERROR(result, 1230);
			}
		}
	}
}

void LH_AudioSystem::LHMidiSetMasterVolume(long volume) {}

void LH_AudioSystem::LHMidiSetSequenceVolume(LH_MidiInfo* info, long volume)
{
	if (!MidiInstalled || !MidiActive || !SystemInstalled)
	{
		return;
	}
	if (volume > LH_MIDI_VOLUME_MAX)
	{
		volume = LH_MIDI_VOLUME_MAX;
	}
	else if (volume < 0)
	{
		volume = 0;
	}

	for (unsigned long i = 0; i < LH_MIDI_INFO_COUNT; i++)
	{
		if (&MidiInfos[i] == info && MidiInfos[i].Segment != NULL)
		{
			for (unsigned long channel = 0; channel < LH_MIDI_CHANNEL_COUNT; channel++)
			{
				DMUS_MIDI_PMSG*    message = NULL;
				IDirectMusicGraph* graph;
				HRESULT result = MidiInfos[i].Performance->AllocPMsg(sizeof(DMUS_MIDI_PMSG), (DMUS_PMSG**)&message);
				if (result != S_OK)
				{
					LH_LOG_DX_ERROR(result, 1268);
					return;
				}
				message->dwSize = sizeof(DMUS_MIDI_PMSG);
				result = MidiInfos[i].Performance->GetTime(NULL, &message->mtTime);
				if (result != S_OK)
				{
					LH_LOG_DX_ERROR(result, 1276);
					return;
				}
				message->rtTime = 0;
				message->dwFlags = DMUS_PMSGF_MUSICTIME;
				message->dwPChannel = channel;
				message->dwVirtualTrackID = 0;
				message->pTool = NULL;
				message->pGraph = NULL;
				message->dwType = DMUS_PMSGT_MIDI;
				message->dwVoiceID = 0;
				message->dwGroupID = LH_MIDI_ALL_GROUPS;
				message->punkUser = NULL;
				message->bStatus = LH_MIDI_STATUS_CONTROL_CHANGE | channel;
				message->bByte1 = LH_MIDI_CONTROLLER_EXPRESSION;
				message->bByte2 = volume;
				result = MidiInfos[i].Performance->QueryInterface(IID_IDirectMusicGraph, (void**)&graph);
				if (result != S_OK)
				{
					LH_LOG_DX_ERROR(result, 1300);
					return;
				}
				graph->StampPMsg((DMUS_PMSG*)message);
				graph->Release();
				MidiInfos[i].Performance->SendPMsg((DMUS_PMSG*)message);
			}
			MidiInfos[i].Volume = volume;
		}
	}
}

void LH_AudioSystem::LHMidiSetSequencePan(LH_MidiInfo* info, long pan)
{
	if (!MidiInstalled || !MidiActive || !SystemInstalled)
	{
		return;
	}
	if (pan > LH_MIDI_PAN_MAX)
	{
		pan = LH_MIDI_PAN_MAX;
	}
	else if (pan < 0)
	{
		pan = 0;
	}

	for (unsigned long i = 0; i < LH_MIDI_INFO_COUNT; i++)
	{
		if (&MidiInfos[i] == info && MidiInfos[i].Segment != NULL && MidiInfos[i].Positional == false)
		{
			for (unsigned long channel = 0; channel < LH_MIDI_CHANNEL_COUNT; channel++)
			{
				DMUS_MIDI_PMSG*    message = NULL;
				IDirectMusicGraph* graph;
				HRESULT result = MidiInfos[i].Performance->AllocPMsg(sizeof(DMUS_MIDI_PMSG), (DMUS_PMSG**)&message);
				if (result != S_OK)
				{
					LH_LOG_DX_ERROR(result, 1337);
					return;
				}
				message->dwSize = sizeof(DMUS_MIDI_PMSG);
				result = MidiInfos[i].Performance->GetTime(NULL, &message->mtTime);
				if (result != S_OK)
				{
					LH_LOG_DX_ERROR(result, 1345);
					return;
				}
				message->rtTime = 0;
				message->dwFlags = DMUS_PMSGF_MUSICTIME;
				message->dwPChannel = channel;
				message->dwVirtualTrackID = 0;
				message->pTool = NULL;
				message->pGraph = NULL;
				message->dwType = DMUS_PMSGT_MIDI;
				message->dwVoiceID = 0;
				message->dwGroupID = LH_MIDI_ALL_GROUPS;
				message->punkUser = NULL;
				message->bStatus = LH_MIDI_STATUS_CONTROL_CHANGE | channel;
				message->bByte1 = LH_MIDI_CONTROLLER_PAN;
				message->bByte2 = pan;
				result = MidiInfos[i].Performance->QueryInterface(IID_IDirectMusicGraph, (void**)&graph);
				if (result != S_OK)
				{
					LH_LOG_DX_ERROR(result, 1369);
					return;
				}
				graph->StampPMsg((DMUS_PMSG*)message);
				graph->Release();
				MidiInfos[i].Performance->SendPMsg((DMUS_PMSG*)message);
			}
		}
	}
}

void LH_AudioSystem::LHMidiSetSequenceTempo(LH_MidiInfo* info, long tempo)
{
	if (!MidiInstalled || !MidiActive || !SystemInstalled)
	{
		return;
	}
	if (tempo > LH_MIDI_TEMPO_MAX)
	{
		tempo = LH_MIDI_TEMPO_MAX;
	}
	else if (tempo < LH_MIDI_TEMPO_MIN)
	{
		tempo = LH_MIDI_TEMPO_MIN;
	}

	float scale = tempo * LH_MIDI_TEMPO_SCALE;
	for (unsigned long i = 0; i < LH_MIDI_INFO_COUNT; i++)
	{
		if (&MidiInfos[i] == info && MidiInfos[i].Segment != NULL)
		{
			HRESULT result = MidiInfos[i].Performance->SetGlobalParam(GUID_PerfMasterTempo, &scale, sizeof(scale));
			if (FAILED(result))
			{
				LH_LOG_DX_ERROR(result, 1405);
				return;
			}
		}
	}
}

void LH_AudioSystem::LHMidiSetSequence3DPosition(LH_MidiInfo* info, float x, float y, float z)
{
	if (!MidiInstalled || !MidiActive || !WaveInstalled || !SystemInstalled)
	{
		return;
	}

	for (unsigned long i = 0; i < LH_MIDI_INFO_COUNT; i++)
	{
		if (&MidiInfos[i] == info && MidiInfos[i].Segment != NULL && MidiInfos[i].Positional == true)
		{
			LHAudioPoint point;
			MidiSetPoint(&MidiInfos[i].Pos, x, y, z);
			ListenerInfo->Transform(&point, &MidiInfos[i].Pos);
			MidiInfos[i].Buffer3D->SetPosition(point.x, point.y, point.z, DS3D_IMMEDIATE);
			if (((point.x * point.x) + (point.y * point.y) + (point.z * point.z)) > MidiInfos[i].MaxDistance)
			{
				MidiInfos[i].Buffer->SetVolume(DSBVOLUME_MIN);
			}
			else
			{
				MidiInfos[i].Buffer->SetVolume(DSBVOLUME_MAX);
			}
		}
	}
}
