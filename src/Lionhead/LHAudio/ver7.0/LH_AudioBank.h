#ifndef BW1_DECOMP_LH_AUDIO_BANK_INCLUDED_H
#define BW1_DECOMP_LH_AUDIO_BANK_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <windows.h> /* For MAX_PATH */

#include <re_common.h> /* For bool32_t */

#include "LHAudioExport.h" /* For LH_AUDIO_API */

#define LH_BANK_MUSIC_DISTANCE_NONE (-1.0f)
#define LH_BANK_MUSIC_GROUP_NONE    (-1)

enum LH_BANK_MODE
{
	LH_BANK_MODE_HEAP = 0,
	LH_BANK_MODE_PRELOAD = 1,
};

// Forward Declares

class LHReleasedFile;
class MPGAudioDecoder;
struct LH_BankSample;

class LH_AudioBank
{
public:
	bool32_t         UsingHeap;            /* 0x0 */
	bool32_t         MusicBank;            /* 0x4 */
	unsigned long    NumberOfSamples;      /* 0x8 */
	unsigned long    NumberOfAtmosSamples; /* 0xc */
	long             AtmosVolume;          /* 0x10 */
	LH_BankSample*   Samples;              /* 0x14 */
	LHReleasedFile*  File;                 /* 0x18 */
	void*            DataStart;            /* 0x1c */
	char             FileName[MAX_PATH];   /* 0x20 */
	long*            AnimArray;            /* 0x124 */
	long*            AnimArrayWaveNumbers; /* 0x128 */
	unsigned long    AnimArrayTableWidth;  /* 0x12c */
	unsigned long    AnimArrayTableHeight; /* 0x130 */
	unsigned long    AtmosGroup;           /* 0x134 */
	MPGAudioDecoder* Decoder;              /* 0x138 */

	// Constructors

	// BW1W120 10002090 BW1M119 0111db20 (LHCombined Release)
	LH_AUDIO_API LH_AudioBank();
	// BW1W120 10002120 BW1M119 0111d8f0 (LHCombined Release)
	LH_AUDIO_API ~LH_AudioBank();

	// Non-virtual methods

	// BW1W120 10002eb0 BW1M119 0100c910 (LHCombined Release)
	LH_AUDIO_API LH_BankSample* LHGetFirstBankSample();
	// BW1W120 10002ec0 BW1M119 0111c9e0 (LHCombined Release)
	LH_AUDIO_API unsigned long LHGetBankDataStart();
	// BW1W120 10002ed0 BW1M119 0111c9a0 (LHCombined Release)
	LH_AUDIO_API LHReleasedFile* LHGetBankFileHandle();
	// BW1W120 10002ee0 BW1M119 01000cf0 (LHCombined Release)
	LH_AUDIO_API bool32_t LHIsMusicBank();
	// BW1W120 10002ef0 BW1M119 0111c800 (LHCombined Release)
	LH_AUDIO_API float LHBankGetMusicMaxDistance();
	// BW1W120 10002f10 BW1M119 0111c790 (LHCombined Release)
	LH_AUDIO_API float LHBankGetMusicMinDistance();
	// BW1W120 10002f30 BW1M119 01000dc0 (LHCombined Release)
	LH_AUDIO_API long LHBankGetMusicGroupId();
};
static_assert(sizeof(LH_AudioBank) == 0x13c, "Data type is of wrong size");

// BW1W120 10037280 BW1M119 011d3404 (LHCombined Release)
extern "C" LH_AUDIO_API char* LHFileSegmentBankInfo;
// BW1W120 10037284 BW1M119 011d3408 (LHCombined Release)
extern "C" LH_AUDIO_API char* LHFileSegmentWaveData;
// BW1W120 10037288 BW1M119 011d340c (LHCombined Release)
extern "C" LH_AUDIO_API char* LHFileSegmentBankSampleTable;
// BW1W120 1003728c BW1M119 011d3410 (LHCombined Release)
extern "C" LH_AUDIO_API char* LHFileSegmentAnimArray;
// BW1W120 10037290 BW1M119 011d3414 (LHCombined Release)
extern "C" LH_AUDIO_API char* LHFileSegmentAnimArrayWaveNumbers;
// BW1W120 10037294 BW1M119 011d3418 (LHCombined Release)
extern "C" LH_AUDIO_API char* LHFileSegmentListViewText;

#endif /* BW1_DECOMP_LH_AUDIO_BANK_INCLUDED_H */
