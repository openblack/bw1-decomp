#ifndef BW1_DECOMP_LH_AUDIO_SYSTEM_INCLUDED_H
#define BW1_DECOMP_LH_AUDIO_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include "LHAudioExport.h" /* For LH_AUDIO_API */
#include "LHAudioPoint.h"  /* For LHAudioPoint */
#include "LH_SampleInfo.h" /* For struct LH_SampleInfo */

typedef struct HQMIXER__* HQMIXER;

// Forward Declares

class Base;
class LH_AudioBank;
struct LH_BankSample;
class LH_ListenerInfo;
struct LH_MidiInfo;
class LH_MidiPlayOptions;
class LH_MusicPlayOptions;
class LH_SamplePlayOptions;
struct marker_info;
struct marker_search_info;

enum LH_MUSIC_STATUS
{
	LH_MUSIC_STATUS_STOPPED = 0,
	LH_MUSIC_STATUS_PLAYING = 1,
	LH_MUSIC_STATUS_PAUSED = 2,
	LH_MUSIC_STATUS_FINISHED = 3,
	LH_MUSIC_STATUS_FINISHING = 4,
};

struct LH_MusicInfo
{
	bool32_t        Positional;                    /* 0x0 */
	bool32_t        Loop;                          /* 0x4 */
	bool32_t        Starting;                      /* 0x8 */
	bool32_t        FadeIn;                        /* 0xc */
	long            LoopCount;                     /* 0x10 */
	long            GroupId;                       /* 0x14 */
	uint32_t        Reserved1;                     /* 0x18 */
	uint32_t        Reserved2;                     /* 0x1c */
	uint32_t        Reserved3;                     /* 0x20 */
	LH_MUSIC_STATUS Status;                        /* 0x24 */
	LH_MUSIC_STATUS PausedStatus;                  /* 0x28 */
	unsigned long   SampleVolume;                  /* 0x2c */
	long            Volume;                        /* 0x30 */
	long            CurrentVolume;                 /* 0x34 */
	unsigned long   Pitch;                         /* 0x38 */
	long            StartChunk;                    /* 0x3c */
	unsigned long   NextChunk;                     /* 0x40 */
	unsigned long   PlayPosition;                  /* 0x44 */
	unsigned long   CurrentChunk;                  /* 0x48 */
	unsigned long   NumberOfChunks;                /* 0x4c */
	unsigned long   Frequency;                     /* 0x50 */
	int             Channel;                       /* 0x54 */
	LH_AudioBank*   Bank;                          /* 0x58 */
	void (*FinishedCallback)(unsigned long param); /* 0x5c */
	void (*MarkerCallback)(unsigned long param);   /* 0x60 */
	unsigned long       CallbackParam;             /* 0x64 */
	marker_search_info* Markers;                   /* 0x68 */

#ifdef LH_AUDIO_EXPORTS
	// BW1W120 10056284 BW1M119 01369044 (LHCombined Release)
	static long master;
	// BW1W120 10056280 BW1M119 01369040 (LHCombined Release)
	static unsigned long master_volume;
#endif
};
static_assert(sizeof(LH_MusicInfo) == 0x6c, "Data type is of wrong size");

#define LH_MUSIC_INFO_COUNT     6
#define LH_MUSIC_NO_INFO        (-1)
#define LH_MUSIC_VOLUME_INVALID (-1)

#define LH_SAMPLE_OBJECT_GONE ((Base*)-1)

#define LH_AUDIO_OVERRIDE_KEY_LENGTH 0x100

#define LH_SAMPLE_VOLUME_MAX 127

#define LH_AUDIO_HW_RATE_11K 11025
#define LH_AUDIO_HW_RATE_22K 22050
#define LH_AUDIO_HW_RATE_44K 44100

enum LH_AUDIO_OUTPUT
{
	LH_AUDIO_OUTPUT_DIRECTSOUND = 1,
	LH_AUDIO_OUTPUT_WAVEOUT = 2,
	LH_AUDIO_OUTPUT_DETECT = 3,
};

enum LH_AUDIO_SPEAKER_CONFIG
{
	LH_AUDIO_SPEAKER_CONFIG_STEREO = 2,
	LH_AUDIO_SPEAKER_CONFIG_QUAD = 3,
};

typedef unsigned long (*LH_SAMPLE_3D_OBJECT_FUNCTION)(LH_SampleInfo* info, float* x, float* y, float* z,
                                                      float* distance, bool32_t* valid);

class LH_AudioSystem
{
public:
	uint32_t                     Reserved1;                 /* 0x0 */
	bool32_t                     SystemInstalled;           /* 0x4 */
	bool32_t                     WaveInstalled;             /* 0x8 */
	bool32_t                     AtmosInstalled;            /* 0xc */
	bool32_t                     AtmosClosing;              /* 0x10 */
	bool32_t                     WaveActive;                /* 0x14 */
	bool32_t                     MidiInstalled;             /* 0x18 */
	bool32_t                     MusicInstalled;            /* 0x1c */
	bool32_t                     MidiActive;                /* 0x20 */
	bool32_t                     MusicActive;               /* 0x24 */
	bool32_t                     RedbookInstalled;          /* 0x28 */
	bool32_t                     RedbookActive;             /* 0x2c */
	bool32_t                     HeapInstalled;             /* 0x30 */
	LH_SAMPLE_3D_OBJECT_FUNCTION Sample3DObjectFunction;    /* 0x34 */
	unsigned long                PlayRequestCount;          /* 0x38 */
	unsigned long                SampleMasterVolume;        /* 0x3c */
	unsigned long                MusicTotalGroups;          /* 0x40 */
	float                        Sample3DObjectMaxDistance; /* 0x44 */
	LH_SampleInfo*               SampleInfos;               /* 0x48 */
	LH_MidiInfo*                 MidiInfos;                 /* 0x4c */
	LH_SampleInfo*               FirstSampleInfo;           /* 0x50 */
	LH_SampleInfo*               LastSampleInfo;            /* 0x54 */
	LH_ListenerInfo*             ListenerInfo;              /* 0x58 */
	uint32_t                     Reserved2;                 /* 0x5c */
	uint8_t                      field_0x60[0x24];
	LH_MusicInfo*                MusicInfos; /* 0x84 */
	HQMIXER                      QMixer;     /* 0x88 */
#ifdef VERSION_BW1WCI
	bool32_t RedirectFileAccess;
#endif
	bool32_t                EnableWave;                                /* 0x8c */
	bool32_t                EnableAtmos;                               /* 0x90 */
	bool32_t                EnableMidi;                                /* 0x94 */
	bool32_t                EnableMusic;                               /* 0x98 */
	bool32_t                EnableRedbook;                             /* 0x9c */
	bool32_t                UseHeap;                                   /* 0xa0 */
	LH_AUDIO_SPEAKER_CONFIG SpeakerConfig;                             /* 0xa4 */
	bool32_t                QMixerOption8;                             /* 0xa8 */
	bool32_t                QMixerOption2;                             /* 0xac */
	bool32_t                QMixerOption1;                             /* 0xb0 */
	bool32_t                QMixerOption4;                             /* 0xb4 */
	bool32_t                UsePrimaryBuffer;                          /* 0xb8 */
	bool32_t                PlaySilence;                               /* 0xbc */
	bool32_t                UseHardware;                               /* 0xc0 */
	bool32_t                DisableSfx;                                /* 0xc4 */
	bool32_t                Disable3DSpatialisation;                   /* 0xc8 */
	unsigned long           MaxSamples;                                /* 0xcc */
	LH_AUDIO_OUTPUT         Output;                                    /* 0xd0 */
	unsigned long           HeapSize;                                  /* 0xd4 */
	unsigned long           HWRate;                                    /* 0xd8 */
	unsigned long           Latency;                                   /* 0xdc */
	void*                   DirectSound;                               /* 0xe0 */
	const GUID*             DirectSoundGuid;                           /* 0xe4 */
	HWND                    Window;                                    /* 0xe8 */
	char                    OverrideKey[LH_AUDIO_OVERRIDE_KEY_LENGTH]; /* 0xec */

	// Constructors

	// BW1W120 10015290 BW1M119 01130360 (LHCombined Release)
	LH_AUDIO_API LH_AudioSystem();
	// BW1W120 10015390 BW1M119 01130270 (LHCombined Release)
	LH_AUDIO_API ~LH_AudioSystem();

	// Non-virtual methods

	// BW1W120 100153f0 BW1M119 011300f0 (LHCombined Release)
	LH_AUDIO_API void Create();
	// BW1W120 100156b0 BW1M119 01130030 (LHCombined Release)
	LH_AUDIO_API void Shutdown();
	// BW1W120 10015710 BW1M119 0112ff30 (LHCombined Release)
	LH_AUDIO_API unsigned long Rand(unsigned long range);
	// BW1W120 10015740 BW1M119 0112fe50 (LHCombined Release)
	LH_AUDIO_API unsigned long Rand();
	// BW1W120 10015790 BW1M119 0112fd60 (LHCombined Release)
	LH_AUDIO_API void LHGlobalSwitch(unsigned long on);

	// BW1W120 100013c0 BW1M119 0111bf70 (LHCombined Release)
	void LHAtmosReleaseBank(LH_AudioBank* bank);
	// BW1W120 10001610 BW1M119 0111bcd0 (LHCombined Release)
	void LHAtmosAddBank(LH_AudioBank* bank);
	// BW1W120 10001840 BW1M119 0111bc50 (LHCombined Release)
	void LHAtmosOpen();
	// BW1W120 10001860 BW1M119 0111bbb0 (LHCombined Release)
	void LHAtmosClose();
	// BW1W120 100018b0 BW1M119 01039c00 (LHCombined Release)
	LH_AUDIO_API void LHAtmosProcess(bool32_t active);
	// BW1W120 10001f90 BW1M119 0111ba60 (LHCombined Release)
	LH_AUDIO_API unsigned long LHAtmosGetBankVolume(LH_AudioBank* bank);
	// BW1W120 10001fc0 BW1M119 010172a0 (LHCombined Release)
	LH_AUDIO_API void LHAtmosSetBankVolume(LH_AudioBank* bank, long volume);
	// BW1W120 10002060 BW1M119 01017410 (LHCombined Release)
	LH_AUDIO_API void LHAtmosSetGroup(LH_AudioBank* bank, unsigned long group);

	// BW1W120 10002240 BW1M119 0111cef0 (LHCombined Release)
	LH_AUDIO_API LH_AudioBank* LHBankRegister(char* filename, unsigned char mode);
	// BW1W120 10002c80 BW1M119 0111ccb0 (LHCombined Release)
	LH_AUDIO_API void LHBankRelease(LH_AudioBank* bank);
	// BW1W120 10002e50 BW1M119 0111cc40 (LHCombined Release)
	LH_AUDIO_API bool32_t LHBankIsUsingHeap(LH_AudioBank* bank);
	// BW1W120 10002e70 BW1M119 0111cbd0 (LHCombined Release)
	LH_AUDIO_API char* LHBankGetFileName(LH_AudioBank* bank);
	// BW1W120 10002e90 BW1M119 0100ca40 (LHCombined Release)
	LH_AUDIO_API unsigned long LHBankGetNumberOfSamples(LH_AudioBank* bank);

	// BW1W120 10002f50 BW1M119 0111dd30 (LHCombined Release)
	char* LHDebugGetLastQMixerError();
	// BW1W120 10002fc0 BW1M119 0111dc70 (LHCombined Release)
	char* LHDebugGetQMixerErrorText(unsigned int error);

	// BW1W120 10003190 BW1M119 0111e700 (LHCombined Release)
	bool32_t LHHeapOpen();
	// BW1W120 100031f0 BW1M119 0111e5c0 (LHCombined Release)
	void LHHeapClose();
	// BW1W120 100032d0 BW1M119 0111e110 (LHCombined Release)
	bool32_t LHHeapLoadWavFile(LH_SamplePlayOptions* options, LH_BankSample* sample);
	// BW1W120 10003700 BW1M119 0111dfb0 (LHCombined Release)
	void LHHeapFreeAllWavsFromBank(LH_AudioBank* bank);

	// BW1W120 10003850 BW1M119 010104c0 (LHCombined Release)
	LH_AUDIO_API void LHListenerUpdate(LHAudioPoint* pos, LHAudioPoint* front, LHAudioPoint* top);

	// BW1W120 10003d30 BW1M119 null
	bool32_t LHMidiReadChunk(LH_MidiInfo* info);
	// BW1W120 100043e0 BW1M119 null
	void LHMidiReadLoopPoints(char* filename, LH_MidiInfo* info);
	// BW1W120 10004680 BW1M119 null
	bool32_t LHMidiInitSoftwareSynth();
	// BW1W120 10004bc0 BW1M119 0111f0a0 (LHCombined Release)
	bool32_t LHMidiOpen();
	// BW1W120 10004f80 BW1M119 0111f060 (LHCombined Release)
	void LHMidiClose();
	// BW1W120 10005030 BW1M119 null
	LH_AUDIO_API bool32_t LHMidiIsInstalled();
	// BW1W120 10005040 BW1M119 null
	LH_AUDIO_API bool32_t LHMidiIsActive();
	// BW1W120 10005050 BW1M119 0111efe0 (LHCombined Release)
	LH_AUDIO_API void LHMidiSwitch(unsigned long on);
	// BW1W120 10005090 BW1M119 null
	LH_AUDIO_API LH_MidiInfo* LHMidiPlay(char* filename, LH_MidiPlayOptions* options);
	// BW1W120 10005530 BW1M119 null
	LH_AUDIO_API void LHMidiStop(LH_MidiInfo* info);
	// BW1W120 10005680 BW1M119 0111ef90 (LHCombined Release)
	LH_AUDIO_API void LHMidiStopAll();
	// BW1W120 10005820 BW1M119 null
	LH_AUDIO_API void LHMidiSetMasterVolume(long volume);
	// BW1W120 10005830 BW1M119 null
	LH_AUDIO_API void LHMidiSetSequenceVolume(LH_MidiInfo* info, long volume);
	// BW1W120 10005a80 BW1M119 null
	LH_AUDIO_API void LHMidiSetSequencePan(LH_MidiInfo* info, long pan);
	// BW1W120 10005cc0 BW1M119 null
	LH_AUDIO_API void LHMidiSetSequenceTempo(LH_MidiInfo* info, long tempo);
	// BW1W120 10005da0 BW1M119 null
	LH_AUDIO_API void LHMidiSetSequence3DPosition(LH_MidiInfo* info, float x, float y, float z);

	// BW1W120 1000d9e0 BW1M119 01129bf0 (LHCombined Release)
	marker_info* CompileMarkerList(LH_AudioBank* bank);
	// BW1W120 1000dd50 BW1M119 01129690 (LHCombined Release)
	bool32_t LHMusicOpen();
	// BW1W120 1000e7a0 BW1M119 01128f30 (LHCombined Release)
	LH_AUDIO_API void LHMusicClose();
	// BW1W120 1000df60 BW1M119 01001310 (LHCombined Release)
	LH_AUDIO_API LH_MusicInfo* LHMusicPlay(LH_MusicPlayOptions* options);
	// BW1W120 1000e530 BW1M119 01129390 (LHCombined Release)
	LH_AUDIO_API void LHMusicStop(bool32_t fade);
	// BW1W120 1000e620 BW1M119 01129190 (LHCombined Release)
	LH_AUDIO_API void LHMusicStop(LH_MusicInfo* info, bool32_t fade);
	// BW1W120 1000e750 BW1M119 01129060 (LHCombined Release)
	LH_AUDIO_API LH_MusicInfo* LHMusicGetInfo(LH_AudioBank* bank);
	// BW1W120 1000e890 BW1M119 01128dd0 (LHCombined Release)
	LH_AUDIO_API void LHMusicSetMasterVolume(unsigned long volume);
	// BW1W120 1000e950 BW1M119 01128d50 (LHCombined Release)
	LH_AUDIO_API long LHMusicGetMasterVolume();
	// BW1W120 1000e970 BW1M119 01128c20 (LHCombined Release)
	LH_AUDIO_API void LHMusicSetPitch(LH_MusicInfo* info, unsigned long pitch);
	// BW1W120 1000ea10 BW1M119 01128b20 (LHCombined Release)
	LH_AUDIO_API void LHMusicPause();
	// BW1W120 1000ea80 BW1M119 01128a40 (LHCombined Release)
	LH_AUDIO_API void LHMusicRestart();
	// BW1W120 1000eae0 BW1M119 0103b2c0 (LHCombined Release)
	LH_AUDIO_API bool32_t LHMusicIsInstalled();
	// BW1W120 1000eaf0 BW1M119 01000c50 (LHCombined Release)
	LH_AUDIO_API bool32_t LHMusicIsActive();
	// BW1W120 1000eb00 BW1M119 01128760 (LHCombined Release)
	LH_AUDIO_API void LHMusicSwitch(unsigned long on);
	// BW1W120 1000fb40 BW1M119 01128160 (LHCombined Release)
	LH_AUDIO_API unsigned long LHMusicGetCurrentChunk(LH_MusicInfo* info);
	// BW1W120 1000fb60 BW1M119 01000c90 (LHCombined Release)
	LH_AUDIO_API unsigned long LHMusicGetTotalGroups();
	// BW1W120 1000fb70 BW1M119 011280a0 (LHCombined Release)
	LH_AUDIO_API LH_MusicInfo* LHMusicGetMasterInfo();
	// BW1W120 1000fba0 BW1M119 01127fe0 (LHCombined Release)
	LH_AUDIO_API void LHMusicSet3DPosition(LH_MusicInfo* info, float x, float y, float z);
	// BW1W120 1000fc00 BW1M119 01127f20 (LHCombined Release)
	LH_AUDIO_API unsigned long LHMusicGetStatus(LH_MusicInfo* info);

	// BW1W120 1000fc50 BW1M119 0112a1b0 (LHCombined Release)
	bool32_t LHRedbookOpen();
	// BW1W120 1000ff20 BW1M119 0112a170 (LHCombined Release)
	void LHRedbookClose();
	// BW1W120 1000fff0 BW1M119 0112a120 (LHCombined Release)
	LH_AUDIO_API unsigned long LHRedbookPlay(unsigned long from_track, unsigned long to_track, unsigned long flags);
	// BW1W120 10010210 BW1M119 0112a0e0 (LHCombined Release)
	LH_AUDIO_API void LHRedbookStop();
	// BW1W120 10010250 BW1M119 0112a090 (LHCombined Release)
	LH_AUDIO_API bool32_t LHRedbookIsInstalled();
	// BW1W120 10010260 BW1M119 0112a050 (LHCombined Release)
	LH_AUDIO_API bool32_t LHRedbookIsActive();
	// BW1W120 10010270 BW1M119 01129fd0 (LHCombined Release)
	LH_AUDIO_API void LHRedbookSwitch(unsigned long on);
	// BW1W120 100102b0 BW1M119 01129f90 (LHCombined Release)
	LH_AUDIO_API void LHRedbookSetVolume(long volume);
	// BW1W120 10010370 BW1M119 01129f40 (LHCombined Release)
	LH_AUDIO_API unsigned long LHRedbookGetVolume();
	// BW1W120 10010380 BW1M119 01129ef0 (LHCombined Release)
	LH_AUDIO_API unsigned int LHRedbookGetHandle();
	// BW1W120 10010390 BW1M119 01129ea0 (LHCombined Release)
	LH_AUDIO_API unsigned long LHRedbookGetNumberOfTracks();

	// BW1W120 100103e0 BW1M119 0112a280 (LHCombined Release)
	void LHRegistrySetOverrides();

	// BW1W120 10010f20 BW1M119 0112f450 (LHCombined Release)
	bool32_t LHSampleIsValid(LH_SamplePlayOptions* options);
	// BW1W120 10011020 BW1M119 010065d0 (LHCombined Release)
	LH_SampleInfo* LHSampleGetFreeSlot(LH_SamplePlayOptions* options, bool32_t* play, bool32_t* restart);
	// BW1W120 100113b0 BW1M119 01006c40 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSamplePlay(LH_SamplePlayOptions* options);
	// BW1W120 10011420 BW1M119 0103d4b0 (LHCombined Release)
	bool32_t LHSamplePlay(LH_SamplePlayOptions* options, LH_SampleInfo* info, bool32_t restart);
	// BW1W120 10012bf0 BW1M119 0112e690 (LHCombined Release)
	LH_AUDIO_API void LHSampleStopAll();
	// BW1W120 10012c50 BW1M119 0112e430 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleStop(LH_AudioBank* bank, unsigned long object, unsigned long sample);
	// BW1W120 10012df0 BW1M119 0112e2a0 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleStop(LH_SampleInfo* info);
	// BW1W120 10012f20 BW1M119 0112e180 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleReleaseLoop(LH_AudioBank* bank, unsigned long object, unsigned long sample);
	// BW1W120 10012fa0 BW1M119 0112e040 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleReleaseLoop(LH_SampleInfo* info);
	// BW1W120 10013070 BW1M119 0112de50 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSetPan(LH_AudioBank* bank, unsigned long object, unsigned long sample,
	                                           unsigned long pan);
	// BW1W120 100131b0 BW1M119 0112dc60 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSetPan(LH_SampleInfo* info, unsigned long pan);
	// BW1W120 10013340 BW1M119 0112dac0 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSetVolume(LH_AudioBank* bank, unsigned long object, unsigned long sample,
	                                              long volume);
	// BW1W120 10013400 BW1M119 0103a580 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSetVolume(LH_SampleInfo* info, long volume);
	// BW1W120 10013520 BW1M119 0103ae00 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSetPitch(LH_AudioBank* bank, unsigned long object, unsigned long sample,
	                                             unsigned long pitch);
	// BW1W120 100135d0 BW1M119 0112d810 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSetPitch(LH_SampleInfo* info, unsigned long pitch);
	// BW1W120 100136d0 BW1M119 0112d250 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSet3DPosition(LH_AudioBank* bank, unsigned long object, unsigned long sample,
	                                                  float x, float y, float z, bool32_t relative);
	// BW1W120 10013ac0 BW1M119 0112cc70 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSet3DPosition(LH_SampleInfo* info, float x, float y, float z,
	                                                  bool32_t relative);
	// BW1W120 10013ed0 BW1M119 01000b40 (LHCombined Release)
	LH_AUDIO_API bool32_t LHSampleIsPlaying(LH_AudioBank* bank, unsigned long object, unsigned long sample);
	// BW1W120 10013f10 BW1M119 0112ca70 (LHCombined Release)
	LH_AUDIO_API bool32_t LHSampleIsPlaying(LH_AudioBank* bank, unsigned long object, unsigned long sample,
	                                        LH_SampleInfo** info);
	// BW1W120 10013f60 BW1M119 0112c9a0 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleGetInfo(LH_AudioBank* bank, unsigned long object, unsigned long sample);
	// BW1W120 10013fb0 BW1M119 0112c8c0 (LHCombined Release)
	LH_AUDIO_API bool32_t LHSampleIsPlaying(LH_AudioBank* bank, unsigned long object);
	// BW1W120 10014010 BW1M119 0112c7c0 (LHCombined Release)
	LH_AUDIO_API bool32_t LHSampleIsPlaying(LH_AudioBank* bank, unsigned long object, LH_SampleInfo** info);
	// BW1W120 10014070 BW1M119 01039b00 (LHCombined Release)
	LH_AUDIO_API bool32_t LHSampleIsPlaying(LH_SampleInfo* info);
	// BW1W120 10014130 BW1M119 0103b310 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleGetFirstInfoStruct();
	// BW1W120 10014150 BW1M119 0103b0c0 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleGetLastInfoStruct();
	// BW1W120 10014170 BW1M119 0100c960 (LHCombined Release)
	LH_AUDIO_API float LHSampleGetMaxDistance(LH_AudioBank* bank, unsigned long sample);
	// BW1W120 100141d0 BW1M119 0112c130 (LHCombined Release)
	LH_AUDIO_API float LHSampleGetMinDistance(LH_AudioBank* bank, unsigned long sample);
	// BW1W120 10014230 BW1M119 01006f20 (LHCombined Release)
	LH_AUDIO_API long LHSampleGetUserParam(LH_AudioBank* bank, unsigned long sample);
	// BW1W120 10014280 BW1M119 0112c050 (LHCombined Release)
	LH_AUDIO_API unsigned long LHSampleGetNumberPlaying();
	// BW1W120 100142c0 BW1M119 0112bef0 (LHCombined Release)
	LH_AUDIO_API void LHSampleClearInfoList();
	// BW1W120 10014310 BW1M119 0100ea60 (LHCombined Release)
	LH_AUDIO_API void LHSampleUpdate3DChannels();
	// BW1W120 10014400 BW1M119 0112bce0 (LHCombined Release)
	LH_AUDIO_API void LHSampleRegister3DObjectFunction(LH_SAMPLE_3D_OBJECT_FUNCTION function, float max_distance);
	// BW1W120 10014670 BW1M119 010345d0 (LHCombined Release)
	LH_AUDIO_API unsigned long LHSampleGetAnimEffectNumber(long* sound, LH_AudioBank* bank);
	// BW1W120 100146f0 BW1M119 0112b3b0 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSamplePlayAnimEffect(void* object, float distance, long* sound, int action,
	                                                   bool32_t follow, LH_AudioBank* bank, float min_distance,
	                                                   float max_distance);
	// BW1W120 10014a20 BW1M119 0112b150 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSamplePlayAnimEffect(void* object, float distance, unsigned long sample,
	                                                   bool32_t follow, LH_AudioBank* bank, float min_distance,
	                                                   float max_distance);
	// BW1W120 10014c00 BW1M119 0112b010 (LHCombined Release)
	LH_AUDIO_API long LHSampleGetPlayPosition(LH_AudioBank* bank, unsigned long object, unsigned long sample);
	// BW1W120 10014c80 BW1M119 0112af30 (LHCombined Release)
	LH_AUDIO_API long LHSampleGetPlayPosition(LH_SampleInfo* info);
	// BW1W120 10014d20 BW1M119 0112aec0 (LHCombined Release)
	LH_AUDIO_API unsigned long LHSampleGetAnimArrayTableWidth(LH_AudioBank* bank);
	// BW1W120 10014d40 BW1M119 0112ae50 (LHCombined Release)
	LH_AUDIO_API void LHSampleSetAnimArrayTableWidth(LH_AudioBank* bank, unsigned long width);
	// BW1W120 10014d60 BW1M119 0112ae00 (LHCombined Release)
	LH_AUDIO_API unsigned long LHSampleGetPlayRequestCount();
	// BW1W120 10014d70 BW1M119 0112adb0 (LHCombined Release)
	LH_AUDIO_API void LHSampleResetPlayRequestCount();
	// BW1W120 100150e0 BW1M119 0112aa30 (LHCombined Release)
	LH_AUDIO_API void LHSampleSetMasterVolume(unsigned long volume);
	// BW1W120 10015170 BW1M119 0112a9e0 (LHCombined Release)
	LH_AUDIO_API unsigned long LHSampleGetMasterVolume();
	// BW1W120 10015180 BW1M119 0112a800 (LHCombined Release)
	LH_AUDIO_API float LHSampleGetPercentageDone(LH_AudioBank* bank, unsigned long object, unsigned long sample);

	// BW1W120 10015820 BW1M119 01130930 (LHCombined Release)
	bool32_t LHWaveOpen();
	// BW1W120 10015c70 BW1M119 01130820 (LHCombined Release)
	void LHWaveClose();
	// BW1W120 10015d20 BW1M119 011307e0 (LHCombined Release)
	LH_AUDIO_API bool32_t LHWaveIsInstalled();
	// BW1W120 10015d30 BW1M119 0103b430 (LHCombined Release)
	LH_AUDIO_API bool32_t LHWaveIsActive();
	// BW1W120 10015d40 BW1M119 011306e0 (LHCombined Release)
	LH_AUDIO_API void LHWaveSwitch(unsigned long on);
	// BW1W120 10015d80 BW1M119 01130610 (LHCombined Release)
	LH_AUDIO_API void LHWaveSetVolume(long volume);
	// BW1W120 10015de0 BW1M119 011305d0 (LHCombined Release)
	LH_AUDIO_API unsigned long LHWaveGetVolume();
	// BW1W120 10015df0 BW1M119 01130530 (LHCombined Release)
	LH_AUDIO_API void* LHWaveGetQMixerDirectSoundObject();

#ifdef LH_AUDIO_EXPORTS
	// BW1W120 10056460 BW1M119 013690fc (LHCombined Release)
	static bool32_t LHSystemAlreadyInstalled;
#endif
};
#ifdef VERSION_BW1WCI
static_assert(sizeof(LH_AudioSystem) == 0x1f0, "Data type is of wrong size");
#else
static_assert(sizeof(LH_AudioSystem) == 0x1ec, "Data type is of wrong size");
#endif

// BW1W120 10014420 BW1M119 01034460 (LHCombined Release)
LH_AUDIO_API long* LHFindAttribRow(long* key, long* base, long width, long depth);

#ifdef VERSION_BW1WCI
// BW1WCI 1001f5b0 BW1MCI119 null
void LHRedirectFileAccess();
#endif

#endif /* BW1_DECOMP_LH_AUDIO_SYSTEM_INCLUDED_H */
