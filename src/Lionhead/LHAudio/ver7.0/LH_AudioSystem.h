#ifndef BW1_DECOMP_LH_AUDIO_SYSTEM_INCLUDED_H
#define BW1_DECOMP_LH_AUDIO_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include "LHAudioExport.h" /* For LH_AUDIO_API */
#include "LH_SampleInfo.h" /* For struct LH_SampleInfo */

// Forward Declares

class Base;
class LH_AudioBank;
class LH_MusicPlayOptions;
class LH_SamplePlayOptions;

class LHAudioPoint
{
public:
	float x;
	float y;
	float z;
};
static_assert(sizeof(LHAudioPoint) == 0xc, "Data type is of wrong size");

struct LH_MusicInfo
{
	uint8_t       field_0x0[0x14];
	long          GroupId;
	uint8_t       field_0x18[0xc];
	unsigned long Status;
	uint8_t       field_0x28[0x20];
	unsigned long CurrentChunk;
	uint8_t       field_0x4c[0x20];
};
static_assert(sizeof(LH_MusicInfo) == 0x6c, "Data type is of wrong size");

#define LH_MUSIC_INFO_COUNT     6
#define LH_MUSIC_STATUS_PLAYING 1

#define LH_SAMPLE_OBJECT_GONE ((Base*)-1)

typedef unsigned long (*LH_SAMPLE_3D_OBJECT_FUNCTION)(LH_SampleInfo* info, float* x, float* y, float* z,
                                                      float* distance, bool32_t* valid);

class LH_AudioSystem
{
public:
	uint8_t       field_0x0[0x84];
	LH_MusicInfo* MusicInfos;
	uint8_t       field_0x88[0x4];
	bool32_t      EnableWave;
	uint8_t       field_0x90[0x4];
	bool32_t      EnableMidi;
	bool32_t      EnableMusic;
	bool32_t      EnableRedbook;
	bool32_t      UseHeap;
	uint8_t       field_0xa4[0x1c];
	bool32_t      UseHardware;
	uint8_t       field_0xc4[0x8];
	unsigned long MaxSamples;
	uint8_t       field_0xd0[0x4];
	unsigned long HeapSize;
	unsigned long HWRate;
	uint8_t       field_0xdc[0xc];
	HWND          Window;
	char          OverrideKey[0x100];

	// Constructors

	// BW1W120 10015290 BW1M119 01130360 (LHCombined Release)
	LH_AUDIO_API LH_AudioSystem();

	// Non-virtual methods

	// BW1W120 10015390 BW1M119 01130270 (LHCombined Release)
	LH_AUDIO_API ~LH_AudioSystem();
	// BW1W120 100153f0 BW1M119 011300f0 (LHCombined Release)
	LH_AUDIO_API void Create();
	// BW1W120 100156b0 BW1M119 01130030 (LHCombined Release)
	LH_AUDIO_API void Shutdown();
	// BW1W120 10015790 BW1M119 0112fd60 (LHCombined Release)
	LH_AUDIO_API void LHGlobalSwitch(unsigned long on);

	// BW1W120 100018b0 BW1M119 01039c00 (LHCombined Release)
	LH_AUDIO_API void LHAtmosProcess(bool32_t active);
	// BW1W120 10001fc0 BW1M119 010172a0 (LHCombined Release)
	LH_AUDIO_API void LHAtmosSetBankVolume(LH_AudioBank* bank, long volume);
	// BW1W120 10002060 BW1M119 01017410 (LHCombined Release)
	LH_AUDIO_API void LHAtmosSetGroup(LH_AudioBank* bank, unsigned long group);

	// BW1W120 10002240 BW1M119 0111cef0 (LHCombined Release)
	LH_AUDIO_API LH_AudioBank* LHBankRegister(char* filename, unsigned char mode);
	// BW1W120 10002c80 BW1M119 0111ccb0 (LHCombined Release)
	LH_AUDIO_API void LHBankRelease(LH_AudioBank* bank);
	// BW1W120 10002e90 BW1M119 0100ca40 (LHCombined Release)
	LH_AUDIO_API unsigned long LHBankGetNumberOfSamples(LH_AudioBank* bank);

	// BW1W120 10003850 BW1M119 010104c0 (LHCombined Release)
	LH_AUDIO_API void LHListenerUpdate(LHAudioPoint* pos, LHAudioPoint* front, LHAudioPoint* top);

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
	// BW1W120 1000eae0 BW1M119 0103b2c0 (LHCombined Release)
	LH_AUDIO_API bool32_t LHMusicIsInstalled();
	// BW1W120 1000eaf0 BW1M119 01000c50 (LHCombined Release)
	LH_AUDIO_API bool32_t LHMusicIsActive();
	// BW1W120 1000eb00 BW1M119 01128760 (LHCombined Release)
	LH_AUDIO_API void LHMusicSwitch(unsigned long on);
	// BW1W120 1000fb60 BW1M119 01000c90 (LHCombined Release)
	LH_AUDIO_API unsigned long LHMusicGetTotalGroups();
	// BW1W120 1000fba0 BW1M119 01127fe0 (LHCombined Release)
	LH_AUDIO_API void LHMusicSet3DPosition(LH_MusicInfo* info, float x, float y, float z);
	// BW1W120 1000fc00 BW1M119 01127f20 (LHCombined Release)
	LH_AUDIO_API unsigned long LHMusicGetStatus(LH_MusicInfo* info);

	// BW1W120 10010380 BW1M119 01129ef0 (LHCombined Release)
	LH_AUDIO_API unsigned int LHRedbookGetHandle();

	// BW1W120 100113b0 BW1M119 01006c40 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSamplePlay(LH_SamplePlayOptions* options);
	// BW1W120 10012bf0 BW1M119 0112e690 (LHCombined Release)
	LH_AUDIO_API void LHSampleStopAll();
	// BW1W120 10012c50 BW1M119 0112e430 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleStop(LH_AudioBank* bank, unsigned long object, unsigned long sample);
	// BW1W120 10012df0 BW1M119 0112e2a0 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleStop(LH_SampleInfo* info);
	// BW1W120 10012f20 BW1M119 0112e180 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleReleaseLoop(LH_AudioBank* bank, unsigned long object, unsigned long sample);
	// BW1W120 10013400 BW1M119 0103a580 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSetVolume(LH_SampleInfo* info, long volume);
	// BW1W120 10013520 BW1M119 0103ae00 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSetPitch(LH_AudioBank* bank, unsigned long object, unsigned long sample,
	                                             unsigned long pitch);
	// BW1W120 100136d0 BW1M119 0112d250 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSet3DPosition(LH_AudioBank* bank, unsigned long object, unsigned long sample,
	                                                  float x, float y, float z, bool32_t relative);
	// BW1W120 10013ac0 BW1M119 0112cc70 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleSet3DPosition(LH_SampleInfo* info, float x, float y, float z,
	                                                  bool32_t relative);
	// BW1W120 10013ed0 BW1M119 01000b40 (LHCombined Release)
	LH_AUDIO_API bool32_t LHSampleIsPlaying(LH_AudioBank* bank, unsigned long object, unsigned long sample);
	// BW1W120 10013f60 BW1M119 0112c9a0 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSampleGetInfo(LH_AudioBank* bank, unsigned long object, unsigned long sample);
	// BW1W120 10013fb0 BW1M119 0112c8c0 (LHCombined Release)
	LH_AUDIO_API bool32_t LHSampleIsPlaying(LH_AudioBank* bank, unsigned long sample);
	// BW1W120 10014010 BW1M119 0112c7c0 (LHCombined Release)
	LH_AUDIO_API bool32_t LHSampleIsPlaying(LH_AudioBank* bank, unsigned long sample, LH_SampleInfo** info);
	// BW1W120 10014170 BW1M119 0100c960 (LHCombined Release)
	LH_AUDIO_API float LHSampleGetMaxDistance(LH_AudioBank* bank, unsigned long sample);
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
	LH_AUDIO_API LH_SampleInfo* LHSamplePlayAnimEffect(void* object, float distance, long* sound, int param_4,
	                                                   int param_5, LH_AudioBank* bank, float param_7, float param_8);
	// BW1W120 10014a20 BW1M119 0112b150 (LHCombined Release)
	LH_AUDIO_API LH_SampleInfo* LHSamplePlayAnimEffect(void* object, float distance, unsigned long sound, int param_4,
	                                                   LH_AudioBank* bank, float param_6, float param_7);
	// BW1W120 10014c00 BW1M119 0112b010 (LHCombined Release)
	LH_AUDIO_API long LHSampleGetPlayPosition(LH_AudioBank* bank, unsigned long object, unsigned long sample);
	// BW1W120 100150e0 BW1M119 0112aa30 (LHCombined Release)
	LH_AUDIO_API void LHSampleSetMasterVolume(unsigned long volume);
	// BW1W120 10015170 BW1M119 0112a9e0 (LHCombined Release)
	LH_AUDIO_API unsigned long LHSampleGetMasterVolume();
	// BW1W120 10015180 BW1M119 0112a800 (LHCombined Release)
	LH_AUDIO_API float LHSampleGetPercentageDone(LH_AudioBank* bank, unsigned long object, unsigned long sample);

	// BW1W120 10015d20 BW1M119 011307e0 (LHCombined Release)
	LH_AUDIO_API bool32_t LHWaveIsInstalled();
	// BW1W120 10015d30 BW1M119 0103b430 (LHCombined Release)
	LH_AUDIO_API bool32_t LHWaveIsActive();
	// BW1W120 10015df0 BW1M119 01130530 (LHCombined Release)
	LH_AUDIO_API void* LHWaveGetQMixerDirectSoundObject();
};
static_assert(sizeof(LH_AudioSystem) == 0x1ec, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_AUDIO_SYSTEM_INCLUDED_H */
