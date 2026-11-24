#ifndef BW1_DECOMP_CREATURE_DANCE_LINE_INPUT_INCLUDED_H
#define BW1_DECOMP_CREATURE_DANCE_LINE_INPUT_INCLUDED_H

#include <windows.h>
#include <mmsystem.h>
#include <assert.h>
#include <re_common.h> /* For bool32_t */
#include <stddef.h>
#include <stdint.h>
#include <string.h>

#define LINE_INPUT_HISTORY_COUNT       0x400
#define LINE_INPUT_WINDOW_SIZE         0x200
#define LINE_INPUT_HOP_SIZE            0x80
#define LINE_INPUT_BIN_COUNT           (LINE_INPUT_WINDOW_SIZE / 2)
#define LINE_INPUT_FIRST_FLUX_BIN      0x20
#define LINE_INPUT_BEAT_COUNT          0x20
#define LINE_INPUT_TEMPO_BIN_COUNT     0xc8
#define LINE_INPUT_TEMPO_KERNEL_SIZE   11
#define LINE_INPUT_MIN_TEMPO           81
#define LINE_INPUT_MAX_TEMPO           163
#define LINE_INPUT_DEFAULT_TEMPO       120
#define LINE_INPUT_DEFAULT_THRESHOLD   1000.0f
#define LINE_INPUT_MAX_USABLE_GAIN     50.0f
#define LINE_INPUT_DETECTION_TIMEOUT   4000
#define LINE_INPUT_STALE_DETECTION_AGE 10000
#define LINE_INPUT_SAMPLE_RATE         22050
#define LINE_INPUT_CHANNEL_COUNT       1
#define LINE_INPUT_HOP_SECONDS         ((float)LINE_INPUT_HOP_SIZE / LINE_INPUT_SAMPLE_RATE)
#define LINE_INPUT_BITS_PER_SAMPLE     16
#define LINE_INPUT_BYTES_PER_SAMPLE    (LINE_INPUT_BITS_PER_SAMPLE / 8)
#define LINE_INPUT_BUFFER_COUNT        2
#define LINE_INPUT_BUFFER_SIZE         0x200
#define LINE_INPUT_SECONDS_PER_MINUTE  60.0f
#define LINE_INPUT_ENERGY_SMOOTHING    0.9f
#define LINE_INPUT_PEAK_DECAY          0.01f
#define LINE_INPUT_MIN_PEAK_ENERGY     0.01f
#define LINE_INPUT_SPECTRUM_SMOOTHING  0.1f
#define LINE_INPUT_FLUX_DECAY          0.05f
#define LINE_INPUT_BEAT_FLUX_RATIO     1.5
#define LINE_INPUT_MIN_BEAT_INTERVAL   4
#define LINE_INPUT_SYNC_MARGIN_SCALE   0.004f
#define LINE_INPUT_SYNC_MARGIN_MAX     0.2f
#define LINE_INPUT_HARMONIC_WEIGHT     0.3f
#define LINE_INPUT_TEMPO_PEAK_RATIO    2.5f

struct LineInputAnalysis
{
	float    History[LINE_INPUT_HISTORY_COUNT];
	int      HistoryIndex;
	float    Threshold;
	float    LastEnergy;
	float    Transform[LINE_INPUT_WINDOW_SIZE * 2];
	float    Spectrum[LINE_INPUT_WINDOW_SIZE];
	float    Samples[LINE_INPUT_WINDOW_SIZE];
	int      SampleCount;
	bool32_t Active;
	int      LastTempo;
	int      BeatCount;
	float    Energy;
	float    NormalizedEnergy;
	float    PeakEnergy;
	float    Gain;
	int      BeatSyncCount;
	int      Tempo;
	int      FramesSinceBeat;
	int      TempoHistoryIndex;
	float    BeatPhase;
	float    StrengthHistory[LINE_INPUT_BEAT_COUNT];
	int      TempoHistory[LINE_INPUT_BEAT_COUNT];
	float    MomentHistory[LINE_INPUT_BEAT_COUNT];
	float    TempoBins[LINE_INPUT_TEMPO_BIN_COUNT];
	DWORD    LastDetectionTick;
	float    PeakStrength;
	LineInputAnalysis()
	{
		memset(this, 0, sizeof(*this));
		Threshold = LINE_INPUT_DEFAULT_THRESHOLD;
		Tempo = LINE_INPUT_DEFAULT_TEMPO;
		Start();
	}
	~LineInputAnalysis() { Stop(); }
	// BW1W120 004371a0 BW1M119 null
	void four1(float* data, int complex_count, int isign);
	// BW1W120 00437340 BW1M119 null
	void Start();
	// BW1W120 00437360 BW1M119 null
	void Reset();
	// BW1W120 004373e0 BW1M119 null
	void Stop();
	// BW1W120 00437400 BW1M119 null
	void Restart();
	// BW1W120 00437430 BW1M119 null
	void Analyse();
	// BW1W120 004378f0 BW1M119 null
	void AddSamples(short* samples, int count);
};

struct CreatureDanceLineInput
{
	WAVEFORMATEX      Format;
	bool32_t          Active;
	int               DeviceId;
	int               BufferIndex;
	HWAVEIN           Handle;
	WAVEHDR*          Headers;
	LineInputAnalysis Analysis;
	float             LineBeat;
	float             DanceBeat;
	float             BeatsPerMinute;
	CreatureDanceLineInput()
	{
		Active = false;
		BufferIndex = 0;
		DeviceId = 0;
		Handle = 0;
		Headers = NULL;
		LineBeat = 0.0f;
		DanceBeat = 0.0f;
	}
	~CreatureDanceLineInput() { Close(); }
	// BW1W120 004379b0 BW1M119 null
	void HandleWaveIn(HWAVEIN hwi, UINT msg, DWORD param1, DWORD param2);
	// BW1W120 00437a40 BW1M119 null
	void Open();
	// BW1W120 00437c00 BW1M119 null
	void Close();
};

static_assert(sizeof(LineInputAnalysis) == 0x34e8, "LineInputAnalysis size is incorrect");
static_assert(offsetof(CreatureDanceLineInput, Analysis) == 0x28, "Line-input analysis offset is incorrect");
static_assert(sizeof(CreatureDanceLineInput) == 0x351c, "CreatureDanceLineInput size is incorrect");

#endif /* BW1_DECOMP_CREATURE_DANCE_LINE_INPUT_INCLUDED_H */
