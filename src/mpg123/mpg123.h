/*
 * mpg123 defines 
 * used source: musicout.h from mpegaudio package
 */

#include        <stdio.h>
#include        <string.h>
#include        <signal.h>
#include        <math.h>

#include        <unistd.h>

#ifdef OS2
#include <float.h>
#endif

#define MPG123_REMOTE
#define SHUFFLESUPPORT
#ifdef HPUX
#define random rand
#define srandom srand
#endif

#define FRONTEND_SAJBER 1
#define FRONTEND_TK3PLAY 2


#ifdef SGI
#include <audio.h>
#endif

#include "xfermem.h"

#ifdef SUNOS
#define memmove(dst,src,size) bcopy(src,dst,size)
#endif

#ifdef REAL_IS_FLOAT
#  define real float
#elif defined(REAL_IS_LONG_DOUBLE)
#  define real long double
#else
#  define real double
#endif

#ifdef __GNUC__
#define INLINE inline
#else
#define INLINE
#endif

#if defined(LINUX) || defined(__FreeBSD__)
#define VOXWARE
#endif

#include "audio.h"

/* AUDIOBUFSIZE = n*64 with n=1,2,3 ...  */
#define		AUDIOBUFSIZE		16384

#define         FALSE                   0
#define         TRUE                    1

#define         MAX_NAME_SIZE           81
#define         SBLIMIT                 32
#define         SCALE_BLOCK             12
#define         SSLIMIT                 18

#define         MPG_MD_STEREO           0
#define         MPG_MD_JOINT_STEREO     1
#define         MPG_MD_DUAL_CHANNEL     2
#define         MPG_MD_MONO             3

#define MAXOUTBURST 32768


struct al_table 
{
  short bits;
  short d;
};

struct frame {
    struct al_table *alloc;
    int (*synth)(real *,int,unsigned char *);
    int (*synth_mono)(real *,unsigned char *);
    int stereo;
    int jsbound;
    int single;
    int II_sblimit;
    int lsf;
    int mpeg25;
    int down_sample;
    int header_change;
    int block_size;
    int lay;
	int (*do_layer)(struct frame *fr,int,struct audio_info_struct *);
    int error_protection;
    int bitrate_index;
    int sampling_frequency;
    int padding;
    int extension;
    int mode;
    int mode_ext;
    int copyright;
    int original;
    int emphasis;
};

extern int outmode;  
extern int tryresync;
extern int quiet;
extern int halfspeed;
extern int usebuffer;
extern int buffer_fd[2];
extern txfermem *buffermem;
extern char *prgName, *prgVersion;

#ifndef OS2
extern void buffer_loop(struct audio_info_struct *ai, sigset_t *oldsigset);
#endif

/* ------ Declarations from "httpget.c" ------ */

extern char *proxyurl;
extern unsigned long proxyip;
extern FILE *http_open (char *url);

/* ------ Declarations from "common.c" ------ */

extern void audio_flush(int, struct audio_info_struct *);
extern void (*catchsignal(int signum, void(*handler)()))();

extern void print_header(struct frame *);
extern void print_header_compact(struct frame *);

extern char *strndup(const char *src, int num);
extern int split_dir_file(const char *path, char **dname, char **fname);

extern unsigned int   get1bit(void);
extern unsigned int   getbits(int);
extern unsigned int   getbits_fast(int);

extern void set_pointer(long);

extern unsigned char *pcm_sample;
extern int pcm_point;
extern int audiobufsize;

#ifdef VARMODESUPPORT
extern int varmode;
extern int playlimit;
#endif

struct III_sideinfo
{
  unsigned main_data_begin;
  unsigned private_bits;
  struct {
    struct gr_info_s {
      int scfsi;
      unsigned part2_3_length;
      unsigned big_values;
      unsigned scalefac_compress;
      unsigned block_type;
      unsigned mixed_block_flag;
      unsigned table_select[3];
      unsigned subblock_gain[3];
      unsigned maxband[3];
      unsigned maxbandl;
      unsigned maxb;
      unsigned region1start;
      unsigned region2start;
      unsigned preflag;
      unsigned scalefac_scale;
      unsigned count1table_select;
      real *full_gain[3];
      real *pow2gain;
    } gr[2];
  } ch[2];
};

extern void open_stream(char *,int fd);
extern void close_stream(void);
extern long tell_stream(void);
extern void read_frame_init (void);
extern int read_frame(struct frame *fr);
extern int back_frame(struct frame *fr,int num);
extern void play_frame(int init,struct frame *fr);
extern int do_layer3(struct frame *fr,int,struct audio_info_struct *);
extern int do_layer2(struct frame *fr,int,struct audio_info_struct *);
extern int do_layer1(struct frame *fr,int,struct audio_info_struct *);
extern int synth_1to1 (real *,int,unsigned char *);
extern int synth_1to1_8bit (real *,int,unsigned char *);
extern int synth_2to1 (real *,int,unsigned char *);
extern int synth_2to1_8bit (real *,int,unsigned char *);
extern int synth_4to1 (real *,int,unsigned char *);
extern int synth_4to1_8bit (real *,int,unsigned char *);
extern int synth_1to1_mono (real *,unsigned char *);
extern int synth_1to1_8bit_mono (real *,unsigned char *);
extern int synth_2to1_mono (real *,unsigned char *);
extern int synth_2to1_8bit_mono (real *,unsigned char *);
extern int synth_4to1_mono (real *,unsigned char *);
extern int synth_4to1_8bit_mono (real *,unsigned char *);
extern void rewindNbits(int bits);
extern int  hsstell(void);
extern void set_pointer(long);
extern void huffman_decoder(int ,int *);
extern void huffman_count1(int,int *);

extern void init_layer3(int);
extern void init_layer2(void);
extern void make_decode_tables(long scale);
extern void make_conv16to8_table(int);
extern void dct64(real *,real *,real *);

extern void control_sajber(struct frame *fr);
extern void control_tk3play(struct frame *fr);

extern unsigned char *conv16to8;
extern long freqs[7];
extern real muls[27][64];
extern real decwin[512+32];
extern real *pnts[5];




