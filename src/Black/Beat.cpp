#ifdef VERSION_BW1WCI
#include "CreatureAttitudeConstants.h"
#endif
#include "GameTimeConstants.h"
#include "BaseInfo.h" /* For struct GBaseInfo */

#include "ColourConstants.h" /* For White */

#include "CreatureDanceLineInput.h"

#include "AudioAnalyse.h" /* For AUDIO_ANALYSE_SAMPLE_RANGE, AUDIO_ANALYSE_TWO_PI */

#include <math.h>    /* For sin, sqrt */
#include <string.h>  /* For memmove */
#include <windows.h> /* For GetTickCount, GlobalAlloc */

#include <mmsystem.h> /* For waveIn* */

// BW1W120 00437980 BW1M119 null
void CALLBACK WaveInProc(HWAVEIN hwi, UINT msg, DWORD instance, DWORD param1, DWORD param2);

static const float TempoKernel[LINE_INPUT_TEMPO_KERNEL_SIZE] = {1.0f, 2.0f, 4.0f, 7.0f, 9.0f, 10.0f,
                                                                9.0f, 7.0f, 4.0f, 2.0f, 1.0f};

static inline void Swap(float& a, float& b)
{
	float old_a = a;
	float old_b = b;
	a = old_b;
	b = old_a;
}

void LineInputAnalysis::four1(float* data, int complex_count, int isign)
{
	double wtemp, wr, wpr, wpi, wi, theta;
	float  tempr, tempi;
	int    n, j, i, m, mmax, istep;
	data--;
	n = complex_count << 1;
	j = 1;
	for (i = 1; i < n; i += 2)
	{
		if (j > i)
		{
			Swap(data[j], data[i]);
			Swap(data[j + 1], data[i + 1]);
		}
		m = n >> 1;
		while (m >= 2 && j > m)
		{
			j -= m;
			m >>= 1;
		}
		j += m;
	}
	mmax = 2;
	while (n > mmax)
	{
		istep = 2 * mmax;
		theta = AUDIO_ANALYSE_TWO_PI / (isign * mmax);
		wtemp = sin(0.5 * theta);
		wpr = -2.0 * wtemp * wtemp;
		wpi = sin(theta);
		wr = 1.0;
		wi = 0.0;
		for (m = 1; m < mmax; m += 2)
		{
			for (i = m; i <= n; i += istep)
			{
				j = i + mmax;
				tempr = (float)(wr * data[j] - wi * data[j + 1]);
				tempi = (float)(wi * data[j] + wr * data[j + 1]);
				data[j] = data[i] - tempr;
				data[j + 1] = data[i + 1] - tempi;
				data[i] += tempr;
				data[i + 1] += tempi;
			}
			wr = (wtemp = wr) * wpr - wi * wpi + wr;
			wi = wi * wpr + wtemp * wpi + wi;
		}
		mmax = istep;
	}
}

void LineInputAnalysis::Start()
{
	if (!Active)
	{
		Active = true;
		Reset();
	}
}

void LineInputAnalysis::Reset()
{
	HistoryIndex = 0;
	Energy = 0.0f;
	NormalizedEnergy = 0.0f;
	PeakEnergy = 0.0f;
	LastTempo = LINE_INPUT_DEFAULT_TEMPO;
	BeatCount = 0;
	SampleCount = 0;
	Gain = 1.0f;
	memset(Samples, 0, sizeof(Samples));
	memset(Transform, 0, sizeof(Transform));
	memset(Spectrum, 0, sizeof(Spectrum));
	LastDetectionTick = GetTickCount() - LINE_INPUT_STALE_DETECTION_AGE;
}

void LineInputAnalysis::Stop()
{
	if (Active)
	{
		Active = false;
	}
}

void LineInputAnalysis::Restart()
{
	bool32_t wasActive = Active;
	if (wasActive)
	{
		Stop();
	}
	Reset();
	if (wasActive)
	{
		Start();
	}
}

void LineInputAnalysis::Analyse()
{
	float sum = 0.0f;
	for (int k = 0; k < LINE_INPUT_WINDOW_SIZE; k++)
	{
		sum += Samples[k] * Samples[k];
	}
	Energy += (sum / LINE_INPUT_WINDOW_SIZE - Energy) * LINE_INPUT_ENERGY_SMOOTHING;
	PeakEnergy += (Energy - PeakEnergy) * LINE_INPUT_PEAK_DECAY;
	if (Energy > PeakEnergy)
	{
		PeakEnergy = Energy;
	}
	if (PeakEnergy < LINE_INPUT_MIN_PEAK_ENERGY)
	{
		PeakEnergy = LINE_INPUT_MIN_PEAK_ENERGY;
	}
	Gain = 1.0f / PeakEnergy;
	History[HistoryIndex] = Gain * Energy;
	NormalizedEnergy = History[HistoryIndex];
	HistoryIndex++;
	if (HistoryIndex >= LINE_INPUT_HISTORY_COUNT)
	{
		HistoryIndex = 0;
	}

	float window = 0.0f;
	float step = Gain / (LINE_INPUT_WINDOW_SIZE / 2);
	for (int i = 0; i < LINE_INPUT_WINDOW_SIZE; i++)
	{
		if (i == LINE_INPUT_WINDOW_SIZE / 2)
		{
			step = -step;
		}
		Transform[i * 2] = window * Samples[i];
		Transform[i * 2 + 1] = 0.0f;
		window += step;
	}
	four1(Transform, LINE_INPUT_WINDOW_SIZE, 1);

	Energy = 0.0f;
	int j;
	for (j = 0; j < LINE_INPUT_FIRST_FLUX_BIN; j++)
	{
		float* c = &Transform[j * 2];
		c[0] = sqrt(sqrt(c[0] * c[0] + c[1] * c[1]));
	}
	float moment = 0.0f;
	for (; j < LINE_INPUT_BIN_COUNT; j++)
	{
		Transform[j * 2] =
			sqrt(sqrt(Transform[j * 2] * Transform[j * 2] + Transform[j * 2 + 1] * Transform[j * 2 + 1]));
		float magnitude = Transform[j * 2];
		if (magnitude > Spectrum[j])
		{
			Energy += magnitude - Spectrum[j];
			moment += (magnitude - Spectrum[j]) * j;
			Spectrum[j] = magnitude;
		}
		else
		{
			Spectrum[j] = (Transform[j * 2] - Spectrum[j]) * LINE_INPUT_SPECTRUM_SMOOTHING + Spectrum[j];
		}
	}

	bool32_t beat = false;
	FramesSinceBeat++;
	if (Energy > LastEnergy)
	{
		if (Energy > LastEnergy * LINE_INPUT_BEAT_FLUX_RATIO && FramesSinceBeat > LINE_INPUT_MIN_BEAT_INTERVAL)
		{
			float tempo = 1.0f / (FramesSinceBeat * LINE_INPUT_HOP_SECONDS) * LINE_INPUT_SECONDS_PER_MINUTE;
			while (tempo < LINE_INPUT_MIN_TEMPO)
			{
				tempo += tempo;
			}
			while (tempo >= LINE_INPUT_MAX_TEMPO)
			{
				tempo *= 0.5f;
			}
			TempoHistoryIndex = (TempoHistoryIndex + 1) & (LINE_INPUT_BEAT_COUNT - 1);
			TempoHistory[TempoHistoryIndex] = (int)(tempo + 0.5f);
			StrengthHistory[TempoHistoryIndex] = Energy;
			MomentHistory[TempoHistoryIndex] = moment;
			float margin = Energy * LINE_INPUT_SYNC_MARGIN_SCALE;
			if (margin > LINE_INPUT_SYNC_MARGIN_MAX)
			{
				margin = LINE_INPUT_SYNC_MARGIN_MAX;
			}
			if (BeatPhase < margin || BeatPhase > 1.0f - margin)
			{
				BeatPhase = 0.0f;
				BeatSyncCount++;
			}
			memset(TempoBins, 0, sizeof(TempoBins));
			for (int k = 0; k < LINE_INPUT_BEAT_COUNT; k++)
			{
				int lowBpm = TempoHistory[k] * 3 / 4;
				if (lowBpm < LINE_INPUT_MIN_TEMPO)
				{
					lowBpm *= 2;
				}
				int bpm = TempoHistory[k];
				if (bpm != 0)
				{
					for (int n = 0; n < LINE_INPUT_TEMPO_KERNEL_SIZE; n++)
					{
						TempoBins[bpm - LINE_INPUT_TEMPO_KERNEL_SIZE / 2 + n] += StrengthHistory[k] * TempoKernel[n];
						TempoBins[lowBpm - LINE_INPUT_TEMPO_KERNEL_SIZE / 2 + n] +=
							StrengthHistory[k] * TempoKernel[n] * LINE_INPUT_HARMONIC_WEIGHT;
					}
				}
			}
			beat = true;
			FramesSinceBeat = 0;
		}
		LastEnergy = Energy;
	}
	else
	{
		LastEnergy += (Energy - LastEnergy) * LINE_INPUT_FLUX_DECAY;
	}

	if (beat)
	{
		float best = 0;
		float total = 0.0f;
		int   bestTempo = Tempo;
		for (int t = LINE_INPUT_MIN_TEMPO; t < LINE_INPUT_MAX_TEMPO; t++)
		{
			total += TempoBins[t];
			if (best < TempoBins[t])
			{
				best = TempoBins[t];
				bestTempo = t;
			}
		}
		float average = total / (LINE_INPUT_MAX_TEMPO - LINE_INPUT_MIN_TEMPO);
		if (best > average * LINE_INPUT_TEMPO_PEAK_RATIO)
		{
			PeakStrength = best;
			Tempo = bestTempo;
			if (best > Threshold)
			{
				LastDetectionTick = GetTickCount();
			}
		}
	}

	float phase = (Tempo / LINE_INPUT_SECONDS_PER_MINUTE) * LINE_INPUT_HOP_SECONDS + BeatPhase;
	BeatPhase = phase - (int)phase;
}

void LineInputAnalysis::AddSamples(short* samples, int count)
{
	if (Active)
	{
		for (int i = 0; i != count; i++)
		{
			Samples[LINE_INPUT_WINDOW_SIZE - LINE_INPUT_HOP_SIZE + SampleCount] =
				*samples++ / AUDIO_ANALYSE_SAMPLE_RANGE;
			SampleCount++;
			if (SampleCount == LINE_INPUT_HOP_SIZE)
			{
				Analyse();
				memmove(Samples, Samples + LINE_INPUT_HOP_SIZE,
				        (LINE_INPUT_WINDOW_SIZE - LINE_INPUT_HOP_SIZE) * sizeof(Samples[0]));
				SampleCount = 0;
			}
		}
	}
}

void CALLBACK WaveInProc(HWAVEIN hwi, UINT msg, DWORD instance, DWORD param1, DWORD param2)
{
	if (instance)
	{
		((CreatureDanceLineInput*)instance)->HandleWaveIn(hwi, msg, param1, param2);
	}
}

void CreatureDanceLineInput::HandleWaveIn(HWAVEIN hwi, UINT msg, DWORD param1, DWORD param2)
{
	if (Active && msg == WIM_DATA)
	{
		WAVEHDR* header = (WAVEHDR*)param1;
		waveInUnprepareHeader(Handle, header, sizeof(WAVEHDR));
		waveInPrepareHeader(Handle, &Headers[BufferIndex], sizeof(WAVEHDR));
		waveInAddBuffer(Handle, &Headers[BufferIndex], sizeof(WAVEHDR));
		BufferIndex = (BufferIndex + 1) % LINE_INPUT_BUFFER_COUNT;
		if (Analysis.Active)
		{
			Analysis.AddSamples((short*)header->lpData, header->dwBytesRecorded / LINE_INPUT_BYTES_PER_SAMPLE);
		}
	}
}

void CreatureDanceLineInput::Open()
{
	if (Active)
	{
		return;
	}
	int deviceCount = waveInGetNumDevs();
	if (!deviceCount)
	{
		return;
	}
	WAVEINCAPS caps;
	for (int device = 0; device < deviceCount; device++)
	{
		waveInGetDevCaps(device, &caps, sizeof(caps));
	}
	DeviceId = WAVE_MAPPER;
	WAVEFORMATEX format;
	format.wFormatTag = WAVE_FORMAT_PCM;
	format.nChannels = LINE_INPUT_CHANNEL_COUNT;
	format.nSamplesPerSec = LINE_INPUT_SAMPLE_RATE;
	format.nAvgBytesPerSec = LINE_INPUT_SAMPLE_RATE * LINE_INPUT_BYTES_PER_SAMPLE;
	format.nBlockAlign = LINE_INPUT_BYTES_PER_SAMPLE;
	format.wBitsPerSample = LINE_INPUT_BITS_PER_SAMPLE;
	format.cbSize = 0;
	Format = format;
	if (waveInOpen(&Handle, DeviceId, &Format, (DWORD)WaveInProc, (DWORD)this, CALLBACK_FUNCTION) != MMSYSERR_NOERROR)
	{
		return;
	}
	Headers =
		(WAVEHDR*)GlobalLock(GlobalAlloc(GPTR, LINE_INPUT_BUFFER_COUNT * (sizeof(WAVEHDR) + LINE_INPUT_BUFFER_SIZE)));
	int i;
	for (i = 0; i < LINE_INPUT_BUFFER_COUNT; i++)
	{
		Headers[i].lpData = (LPSTR)Headers + LINE_INPUT_BUFFER_COUNT * sizeof(WAVEHDR) + i * LINE_INPUT_BUFFER_SIZE;
		Headers[i].dwBufferLength = LINE_INPUT_BUFFER_SIZE;
		if (waveInPrepareHeader(Handle, &Headers[i], sizeof(WAVEHDR)))
		{
			break;
		}
		if (waveInAddBuffer(Handle, &Headers[i], sizeof(WAVEHDR)))
		{
			waveInUnprepareHeader(Handle, &Headers[i], sizeof(WAVEHDR));
			break;
		}
	}
	if (i == LINE_INPUT_BUFFER_COUNT)
	{
		BufferIndex = 0;
		waveInStart(Handle);
		Active = true;
		return;
	}
	waveInReset(Handle);
	for (int j = 0; j < i; j++)
	{
		waveInUnprepareHeader(Handle, &Headers[j], sizeof(WAVEHDR));
	}
	waveInClose(Handle);
	GlobalUnlock(Headers);
	GlobalFree(Headers);
	Active = false;
}

void CreatureDanceLineInput::Close()
{
	if (Active)
	{
		Active = false;
		waveInReset(Handle);
		for (int i = 0; i < LINE_INPUT_BUFFER_COUNT; i++)
		{
			waveInUnprepareHeader(Handle, &Headers[i], sizeof(WAVEHDR));
		}
		waveInClose(Handle);
		GlobalUnlock(Headers);
		GlobalFree(Headers);
	}
}
