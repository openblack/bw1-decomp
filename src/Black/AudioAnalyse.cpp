#include "AudioAnalyse.h"

#include <math.h>    /* For sin, sqrt */
#include <windows.h> /* For HINSTANCE in LHSystem.h */

#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys::TheSystem */

#include "AutoVoiceParams.h"

// BW1W120 00428a80 BW1M119 inlined
static float AverageBand(float* spectrum, int count, float max_freq, float low_freq, float high_freq);

#ifndef VERSION_BW1W100
// BW1W120 00428af0 BW1M119 null
void DrawSpectrum(float* spectrum, int count);
#endif

void AutoVoiceParams::CalcKey(VoiceKey* key, float delta_time, float time, short* samples, int sample_count,
                              float sample_rate, float* buffer, int buffer_size)
{
	key->Time = time;
	int start = (int)((TimeOffset * AUTO_VOICE_SECONDS_PER_MILLISECOND + delta_time + time) * sample_rate);
	start -= buffer_size / 2;
	if (start < 0)
	{
		start = 0;
	}
	if (start > sample_count - buffer_size)
	{
		start = sample_count - buffer_size;
	}
	AudioAnalyse::Analyse(samples + start, buffer, buffer_size);

	float total = 0.0f;
	int   i;
	for (i = 0; i < VOICE_BAND_COUNT; i++)
	{
		total +=
			(Energy[i] = AverageBand(buffer, buffer_size, sample_rate, Bands[i].LowFrequency, Bands[i].HighFrequency) *
		                 Bands[i].Weight);
	}
	if (total < Threshold)
	{
		total = 0.0f;
	}
	Total = total;
	total *= total;
	if (total != 0.0f)
	{
		for (i = 0; i < VOICE_BAND_COUNT; i++)
		{
			Energy[i] = Energy[i] * Energy[i] / total;
		}
	}

	int loudest;
	if (Energy[0] > Energy[1] && Energy[0] > Energy[2])
	{
		loudest = 0;
	}
	else if (Energy[1] > Energy[2] && Energy[1] > Energy[0])
	{
		loudest = 1;
	}
	else
	{
		loudest = 2;
	}

	float limit = Gain * Total;
	if (limit > 1.0f)
	{
		limit = 1.0f;
	}
	float sum = 0.0f;
	for (i = 0; i < VOICE_BAND_COUNT; i++)
	{
		float ratio = Energy[i] / Energy[loudest];
		float target = ratio * ratio * limit;
		float old = key->Weight[WeightSlot[i]];
		float step = delta_time * Speed * AUTO_VOICE_SPEED_SCALE;
		if (old - target > step)
		{
			target = old - step;
		}
		step *= 2.0f;
		if (target - old > step)
		{
			target = old + step;
		}
		key->Weight[WeightSlot[i]] = target;
		sum += target;
	}
	if (sum > 1.0f)
	{
		sum = 1.0f / sum;
		for (i = 0; i < VOICE_BAND_COUNT; i++)
		{
			key->Weight[WeightSlot[i]] *= sum;
		}
	}
}

static float AverageBand(float* spectrum, int count, float max_freq, float low_freq, float high_freq)
{
	int low = (int)(low_freq / max_freq * count);
	int high = (int)(high_freq / max_freq * count);
	if (low > count)
	{
		low = count;
	}
	if (high > count)
	{
		high = count;
	}
	float sum = 0.0f;
	for (int i = low; i < high; i++)
	{
		sum += spectrum[i];
	}
	if (high > low)
	{
		sum /= high - low;
	}
	return sum;
}

#ifndef VERSION_BW1W100
void DrawSpectrum(float* spectrum, int count)
{
	float step = (float)LHSys::GetScreen().Width() / count;
	for (int i = 0; i < count - 1; i++)
	{
		int x0 = (int)(i * step);
		int x1 = (int)((i + 1) * step);
		int y0 = AUDIO_ANALYSE_GRAPH_BASELINE - (int)(spectrum[i] * AUDIO_ANALYSE_GRAPH_SCALE);
		int y1 = AUDIO_ANALYSE_GRAPH_BASELINE - (int)(spectrum[i + 1] * AUDIO_ANALYSE_GRAPH_SCALE);
		LHSys::GetDraw().Line(x0, y0, x1, y1, LHColor(0x40, 0x80, 0xff), LH_DRAW_STYLE_SOLID,
		                      LHSys::GetScreen().backAddress, LHSys::GetScreen().backPixelPitch);
	}
}
#endif

void AudioAnalyse::Analyse(short* samples, float* spectrum, int sample_count)
{
	float  window = 0.0f;
	float* out = spectrum;
	float  count = (float)sample_count;
	float  step = 1.0f / (count * AUDIO_ANALYSE_SAMPLE_RANGE);
	int    i;
	for (i = 0; i < sample_count / 2; i++)
	{
		window += step;
		*out++ = samples[i] * window;
		*out++ = 0.0f;
	}
	for (; i < sample_count; i++)
	{
		window -= step;
		*out++ = samples[i] * window;
		*out++ = 0.0f;
	}
	four1(spectrum, sample_count, 1);
	for (i = 0; i < sample_count; i++)
	{
		spectrum[i] =
			(float)sqrt((spectrum[i * 2] * spectrum[i * 2] + spectrum[i * 2 + 1] * spectrum[i * 2 + 1]) / count);
	}
}

static inline void Swap(float& a, float& b)
{
	float old_a = a;
	float old_b = b;
	a = old_b;
	b = old_a;
}

void AudioAnalyse::four1(float* data, int complex_count, int isign)
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
