#ifndef BW1_DECOMP_AUDIO_ANALYSE_INCLUDED_H
#define BW1_DECOMP_AUDIO_ANALYSE_INCLUDED_H

#define AUDIO_ANALYSE_SAMPLE_RANGE   32768.0f
#define AUDIO_ANALYSE_TWO_PI         6.28318530717959
#define AUDIO_ANALYSE_GRAPH_BASELINE 450
#define AUDIO_ANALYSE_GRAPH_SCALE    1000.0f

struct AudioAnalyse
{
	// BW1W120 00428c60 BW1M119 01185090
	static void Analyse(short* samples, float* spectrum, int sample_count);

	// BW1W120 00428d50 BW1M119 01184e60
	static void four1(float* data, int complex_count, int isign);
};

#endif /* BW1_DECOMP_AUDIO_ANALYSE_INCLUDED_H */
