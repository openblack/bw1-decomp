#ifndef BW1_DECOMP_MPG_AUDIO_DECODER_INCLUDED_H
#define BW1_DECOMP_MPG_AUDIO_DECODER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <string.h> /* For memcpy */

#include <windows.h> /* For WAVEFORMATEX */
#include <mmsystem.h>

#include <re_common.h> /* For bool32_t */

#define SBLIMIT     32
#define SSLIMIT     18
#define SCALE_BLOCK 12

#define MPG_SAMPLE_RATE_COUNT   7
#define MPG_SYNTH_BUFFER_SIZE   0x110
#define MPG_SCALE_COUNT         64
#define MPG_MULS_COUNT          27
#define MPG_DECWIN_SIZE         (512 + 32)
#define MPG_BUFFER_BACKSTEP     512
#define MPG_DECWIN_SCALE        65536.0
#define MPG_CONV16TO8_SIZE      4096
#define MPG_MAX_FRAME_SIZE      1792
#define MPG_BSSPACE_SIZE        (MPG_MAX_FRAME_SIZE + MPG_BUFFER_BACKSTEP)
#define MPG_HYBRID_BLOCKS       4
#define MPG_DECODE_SCALE        32768
#define MPG_BLOCK_SIZE          128
#define MPG_PCM_BITS_PER_SAMPLE 16

#define MPG_HEADER_SYNC_MASK     0xffe00000
#define MPG_HEADER_MPEG1         (1 << 20)
#define MPG_HEADER_LSF           (1 << 19)
#define MPG_SAMPLE_RATE_MPEG25   6
#define MPG_SAMPLE_RATES_PER_LSF 3
#define MPG_SAMPLING_RESERVED    3

#define MPG_HEADER_FIELD(header, shift, mask) (((header) >> (shift)) & (mask))
#define MPG_HEADER_LAYER(header)              MPG_HEADER_FIELD(header, 17, 0x3)
#define MPG_HEADER_NO_PROTECTION(header)      MPG_HEADER_FIELD(header, 16, 0x1)
#define MPG_HEADER_BITRATE_INDEX(header)      MPG_HEADER_FIELD(header, 12, 0xf)
#define MPG_HEADER_SAMPLING(header)           MPG_HEADER_FIELD(header, 10, 0x3)
#define MPG_HEADER_PADDING(header)            MPG_HEADER_FIELD(header, 9, 0x1)
#define MPG_HEADER_EXTENSION(header)          MPG_HEADER_FIELD(header, 8, 0x1)
#define MPG_HEADER_MODE(header)               MPG_HEADER_FIELD(header, 6, 0x3)
#define MPG_HEADER_MODE_EXT(header)           MPG_HEADER_FIELD(header, 4, 0x3)
#define MPG_HEADER_COPYRIGHT(header)          MPG_HEADER_FIELD(header, 3, 0x1)
#define MPG_HEADER_ORIGINAL(header)           MPG_HEADER_FIELD(header, 2, 0x1)
#define MPG_HEADER_EMPHASIS(header)           ((header) & 0x3)
#define MPG_LAYER_COUNT                       4
#define MPG_LAYER_I_FRAME_FACTOR              12000
#define MPG_LAYER_II_FRAME_FACTOR             144000
#define MPG_CRC_BITS                          16
#define MPG_BIG_VALUES_MAX                    288

#define MPG_SAMPLE_MAGIC  8429568.0f
#define MPG_SAMPLE_MASK   0xfffff
#define MPG_SAMPLE_OFFSET 0xa000
#define MPG_SAMPLE_MIN    -32767
#define MPG_SAMPLE_MAX    32766

#define MPG_PI    3.14159265359
#define MPG_SQRT2 1.414213562373

typedef float real;

enum MPG_MODE
{
	MPG_MODE_STEREO = 0,
	MPG_MODE_JOINT_STEREO = 1,
	MPG_MODE_DUAL_CHANNEL = 2,
	MPG_MODE_MONO = 3,
};

struct al_table
{
	short bits;
	short d;
};

struct frame
{
	al_table* alloc;
	int       stereo;
	int       jsbound;
	int       single;
	int       II_sblimit;
	bool32_t  lsf;
	bool32_t  mpeg25;
	int       down_sample;
	bool32_t  header_change;
	int       block_size;
	int       lay;
	bool32_t  error_protection;
	int       bitrate_index;
	int       sampling_frequency;
	int       padding;
	int       extension;
	MPG_MODE  mode;
	int       mode_ext;
	int       copyright;
	int       original;
	int       emphasis;
};
static_assert(sizeof(frame) == 0x54, "Data type is of wrong size");

struct gr_info_s
{
	int          scfsi;
	unsigned int part2_3_length;
	unsigned int big_values;
	unsigned int scalefac_compress;
	unsigned int block_type;
	unsigned int mixed_block_flag;
	unsigned int table_select[3];
	unsigned int subblock_gain[3];
	unsigned int maxband[3];
	unsigned int maxbandl;
	unsigned int maxb;
	unsigned int region1start;
	unsigned int region2start;
	unsigned int preflag;
	unsigned int scalefac_scale;
	unsigned int count1table_select;
	real*        full_gain[3];
	real*        pow2gain;
};
static_assert(sizeof(gr_info_s) == 0x68, "Data type is of wrong size");

struct III_sideinfo
{
	unsigned int main_data_begin;
	unsigned int private_bits;
	struct
	{
		gr_info_s gr[2];
	} ch[2];
};
static_assert(sizeof(III_sideinfo) == 0x1a8, "Data type is of wrong size");

class MPGAudioDecoder
{
public:
	frame          fr;
	bool32_t       initialised;              /* 0x54 */
	bool32_t       needs_reinit;             /* 0x58 */
	int            first_frame_bytes;        /* 0x5c */
	unsigned char* bsspace[2];               /* 0x60 */
	unsigned char* bsbuf;                    /* 0x68 */
	unsigned char* bsbufold;                 /* 0x6c */
	int            bsnum;                    /* 0x70 */
	int            framesize;                /* 0x74 */
	int            fsizeold;                 /* 0x78 */
	unsigned long  oldhead;                  /* 0x7c */
	unsigned long  firsthead;                /* 0x80 */
	int            ssize;                    /* 0x84 */
	unsigned int   scfsi_buf[64];            /* 0x88 */
	int            bo;                       /* 0x188 */
	real (*buffs)[2][MPG_SYNTH_BUFFER_SIZE]; /* 0x18c */
	real (*block)[2][SBLIMIT * SSLIMIT];     /* 0x190 */
	int   blc[2];                            /* 0x194 */
	void* spare_buffer;                      /* 0x19c */
	int   field_0x1a0;
	int   field_0x1a4;
	real (*hybridIn)[SBLIMIT][SSLIMIT];  /* 0x1a8 */
	real (*hybridOut)[SSLIMIT][SBLIMIT]; /* 0x1ac */
	unsigned char* pcm_sample;           /* 0x1b0 */
	int            pcm_point;            /* 0x1b4 */
	int            bitindex;             /* 0x1b8 */
	unsigned char* wordpointer;          /* 0x1bc */
	unsigned char* inputpointer;         /* 0x1c0 */

	// BW1W120 inlined BW1M119 inlined
	MPGAudioDecoder() { initialised = false; }

	// BW1W120 inlined BW1M119 inlined
	char get_first_frame_bytes() { return first_frame_bytes; }

	// BW1W120 1000fad0 BW1M119 01128230 (LHCombined Release)
	void uninit()
	{
		delete bsspace[0];
		delete buffs;
		delete block;
		delete spare_buffer;
		delete hybridIn;
		delete hybridOut;
		bsspace[1] = NULL;
		bsspace[0] = NULL;
		buffs = NULL;
		block = NULL;
		spare_buffer = NULL;
		initialised = false;
	}

	// BW1W120 inlined BW1M119 0111da50 (LHCombined Release)
	void close()
	{
		if (initialised)
		{
			uninit();
		}
		initialised = false;
	}

	// BW1W120 inlined BW1M119 inlined
	void init(unsigned int header);

	// BW1W120 inlined BW1M119 01128340 (LHCombined Release)
	void reinit(unsigned int header)
	{
		needs_reinit = false;
		__asm
			{
			mov eax, header
			bswap eax
			mov header, eax
		    }
		memset(&fr, 0, sizeof(frame));
		fr.down_sample = 0;
		fr.block_size = MPG_BLOCK_SIZE;
		read_frame_init();
		firsthead = 0;
		oldhead = 0;
		ssize = 0;
		fsizeold = 0;
		framesize = 0;
		fr.single = -1;
		fr.down_sample = 0;
		fr.mode = (MPG_MODE)MPG_HEADER_MODE(header);
		fr.stereo = (fr.mode == MPG_MODE_MONO) ? 1 : 2;
		fr.block_size = SBLIMIT << fr.stereo;
		initialised = true;
		memset(buffs, 0, sizeof(real[2][2][MPG_SYNTH_BUFFER_SIZE]));
		memset(block, 0, sizeof(real[2][2][SBLIMIT * SSLIMIT]));
		memset(hybridIn, 0, sizeof(real[MPG_HYBRID_BLOCKS][SBLIMIT][SSLIMIT]));
		memset(hybridOut, 0, sizeof(real[MPG_HYBRID_BLOCKS][SSLIMIT][SBLIMIT]));
		memset(blc, 0, sizeof(blc));
		if (spare_buffer != NULL)
		{
			delete spare_buffer;
		}
		spare_buffer = NULL;
		bsnum = 0;
		bsbuf = bsspace[1];
		bsbufold = bsspace[0];
		bo = 1;
	}

	// BW1W120 100075d0 BW1M119 inlined
	unsigned int getbits(int number_of_bits)
	{
		unsigned long rval;

		if (number_of_bits)
		{
			rval = wordpointer[0];
			rval <<= 8;
			rval += wordpointer[1];
			rval <<= 8;
			rval += wordpointer[2];
			rval <<= 8;
			rval += wordpointer[3];
			rval <<= bitindex;
			rval >>= 32 - number_of_bits;

			bitindex += number_of_bits;
			wordpointer += bitindex >> 3;
			bitindex &= 7;

			return rval;
		}
		return 0;
	}

	// BW1W120 100082b0 BW1M119 inlined
	unsigned int getbits_fast(int number_of_bits)
	{
		unsigned long rval;

		rval = wordpointer[0];
		rval <<= 8;
		rval += wordpointer[1];
		rval <<= bitindex;
		rval &= 0xffff;
		rval >>= 16 - number_of_bits;

		bitindex += number_of_bits;
		wordpointer += bitindex >> 3;
		bitindex &= 7;

		return rval;
	}

	// BW1W120 10009890 BW1M119 inlined
	unsigned int get1bit()
	{
		unsigned char rval;
		rval = *wordpointer << bitindex;

		bitindex++;
		wordpointer += bitindex >> 3;
		bitindex &= 7;

		return rval >> 7;
	}

	// BW1W120 inlined BW1M119 inlined
	void set_pointer(long backstep)
	{
		wordpointer = bsbuf + ssize - backstep;
		if (backstep)
		{
			memcpy(wordpointer, bsbufold + fsizeold - backstep, backstep);
		}
		bitindex = 0;
	}

	// BW1W120 10005ec0 BW1M119 01127e80 (LHCombined Release)
	void get_II_stuff(frame* fr);
	// BW1W120 10005f10 BW1M119 01000000 (LHCombined Release)
	void read_frame_init();
	// BW1W120 10005f20 BW1M119 01001da0 (LHCombined Release)
	bool32_t read_frame(frame* fr);
	// BW1W120 100063f0 BW1M119 01127900 (LHCombined Release)
	int synth_1to1_mono(real* bandPtr, unsigned char* samples);
	// BW1W120 10006410 BW1M119 010035b0 (LHCombined Release)
	int synth_1to1(real* bandPtr, int channel, unsigned char* out, int step);
	// BW1W120 10007260 BW1M119 011270c0 (LHCombined Release)
	void I_step_one(unsigned int* balloc, unsigned int scale_index[2][SBLIMIT], frame* fr);
	// BW1W120 10007640 BW1M119 011269a0 (LHCombined Release)
	void I_step_two(real fraction[2][SBLIMIT], unsigned int* balloc, unsigned int scale_index[2][SBLIMIT], frame* fr);
	// BW1W120 10007b30 BW1M119 01126840 (LHCombined Release)
	int do_layer1(frame* fr);
	// BW1W120 10007c30 BW1M119 01126450 (LHCombined Release)
	void init_layer2();
	// BW1W120 10007d90 BW1M119 010024a0 (LHCombined Release)
	void II_step_one(unsigned int* bit_alloc, int* scale, frame* fr);
	// BW1W120 10008310 BW1M119 01002b70 (LHCombined Release)
	void II_step_two(unsigned int* bit_alloc, real fraction[2][4][SBLIMIT], int* scale, frame* fr, int x1);
	// BW1W120 10008a40 BW1M119 01003430 (LHCombined Release)
	int do_layer2(frame* fr);
	// BW1W120 100093f0 BW1M119 011246d0 (LHCombined Release)
	void III_get_side_info_1(III_sideinfo* si, int stereo, bool32_t ms_stereo, long sfreq, int single);
	// BW1W120 100098e0 BW1M119 01123f70 (LHCombined Release)
	void III_get_side_info_2(III_sideinfo* si, int stereo, bool32_t ms_stereo, long sfreq, int single);
	// BW1W120 10009d40 BW1M119 01123760 (LHCombined Release)
	int III_get_scale_factors_1(int* scf, gr_info_s* gr_info);
	// BW1W120 1000a310 BW1M119 011234d0 (LHCombined Release)
	int III_get_scale_factors_2(int* scf, gr_info_s* gr_info, bool32_t i_stereo);
	// BW1W120 1000a4a0 BW1M119 01122450 (LHCombined Release)
	bool32_t III_dequantize_sample(real xr[SBLIMIT][SSLIMIT], int* scf, gr_info_s* gr_info, int sfreq, int part2bits);
	// BW1W120 1000b340 BW1M119 011212e0 (LHCombined Release)
	bool32_t III_dequantize_sample_ms(real xr[2][SBLIMIT][SSLIMIT], int* scf, gr_info_s* gr_info, int sfreq,
	                                  int part2bits);
	// BW1W120 1000c450 BW1M119 01120bb0 (LHCombined Release)
	void III_i_stereo(real xr_buf[2][SBLIMIT][SSLIMIT], int* scalefac, gr_info_s* gr_info, int sfreq,
	                  bool32_t ms_stereo, bool32_t lsf);
	// BW1W120 1000c780 BW1M119 01120a30 (LHCombined Release)
	void III_antialias(real xr[SBLIMIT][SSLIMIT], gr_info_s* gr_info);
	// BW1W120 1000c800 BW1M119 0111fc60 (LHCombined Release)
	void III_hybrid(real fsIn[SBLIMIT][SSLIMIT], real tsOut[SSLIMIT][SBLIMIT], int ch, gr_info_s* gr_info);
	// BW1W120 1000d550 BW1M119 0111f7b0 (LHCombined Release)
	int do_layer3(frame* fr);
};
static_assert(sizeof(MPGAudioDecoder) == 0x1c4, "Data type is of wrong size");

// BW1W120 10006280 BW1M119 01127970 (LHCombined Release)
void make_decode_tables(long scaleval);
// BW1W120 10006940 BW1M119 01003c90 (LHCombined Release)
void dct64_1(real* out0, real* out1, real* b1, real* b2, real* samples);
// BW1W120 10007220 BW1M119 01127730 (LHCombined Release)
void dct64(real* a, real* b, real* c);
// BW1W120 10008b80 BW1M119 01124fa0 (LHCombined Release)
void init_layer3(int down_sample);

// BW1W120 inlined BW1M119 inlined
inline void mpg_header_to_wave_format(unsigned long header, WAVEFORMATEX* format)
{
	static const long frequencies[MPG_SAMPLE_RATE_COUNT] = {44100, 48000, 32000, 22050, 24000, 16000, 11025};

	int      lsf;
	bool32_t mpeg25;
	int      channels;
	int      sampling_frequency;
	long     rate;

	__asm
	{
		mov eax, header
		bswap eax
		mov header, eax
	}
	if (header & MPG_HEADER_MPEG1)
	{
		lsf = (header & MPG_HEADER_LSF) ? 0 : 1;
		mpeg25 = false;
	}
	else
	{
		lsf = 1;
		mpeg25 = true;
	}
	channels = (MPG_HEADER_MODE(header) == MPG_MODE_MONO) ? 1 : 2;
	if (mpeg25)
	{
		sampling_frequency = MPG_SAMPLE_RATE_MPEG25;
	}
	else
	{
		sampling_frequency = MPG_HEADER_SAMPLING(header) + (lsf * MPG_SAMPLE_RATES_PER_LSF);
	}
	rate = frequencies[sampling_frequency % MPG_SAMPLE_RATE_COUNT];
	format->cbSize = 0;
	format->nChannels = channels;
	format->nAvgBytesPerSec = rate * channels * sizeof(short);
	format->nBlockAlign = channels * sizeof(short);
	format->nSamplesPerSec = rate;
	format->wFormatTag = WAVE_FORMAT_PCM;
	format->wBitsPerSample = MPG_PCM_BITS_PER_SAMPLE;
}

inline void MPGAudioDecoder::init(unsigned int header)
{
	static bool32_t first_time = true;

	first_frame_bytes = 0;
	bsspace[0] = new unsigned char[MPG_BSSPACE_SIZE * 2];
	bsspace[1] = bsspace[0] + MPG_BSSPACE_SIZE;
	buffs = new real[2][2][MPG_SYNTH_BUFFER_SIZE];
	block = new real[2][2][SBLIMIT * SSLIMIT];
	hybridIn = new real[MPG_HYBRID_BLOCKS][SBLIMIT][SSLIMIT];
	hybridOut = new real[MPG_HYBRID_BLOCKS][SSLIMIT][SBLIMIT];
	spare_buffer = NULL;
	if (first_time)
	{
		make_decode_tables(MPG_DECODE_SCALE);
		init_layer2();
		first_time = false;
	}
	reinit(header);
}

#endif /* BW1_DECOMP_MPG_AUDIO_DECODER_INCLUDED_H */
