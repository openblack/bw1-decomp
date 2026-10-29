#include <ctype.h>
#include <stdlib.h>
#include "mpg123.h"
#include "tables.h"

/* max = 1728 */
#define MAXFRAMESIZE 1792

#define SKIP_JUNK 1

int tabsel_123[2][3][16] = {
   { {0,32,64,96,128,160,192,224,256,288,320,352,384,416,448,},
     {0,32,48,56, 64, 80, 96,112,128,160,192,224,256,320,384,},
     {0,32,40,48, 56, 64, 80, 96,112,128,160,192,224,256,320,} },

   { {0,32,48,56,64,80,96,112,128,144,160,176,192,224,256,},
     {0,8,16,24,32,40,48,56,64,80,96,112,128,144,160,},
     {0,8,16,24,32,40,48,56,64,80,96,112,128,144,160,} }
};

long freqs[7] = { 44100, 48000, 32000, 22050, 24000, 16000 , 11025 };

#ifdef I386_ASSEM
int bitindex;
unsigned char *wordpointer;
#else
static int bitindex;
static unsigned char *wordpointer;
#endif

static int fsize=0,fsizeold=0,ssize;
static unsigned char bsspace[2][MAXFRAMESIZE+512]; /* MAXFRAMESIZE */
static unsigned char *bsbuf=bsspace[1],*bsbufold;
static int bsnum=0;

struct ibuf {
	struct ibuf *next;
	struct ibuf *prev;
	unsigned char *buf;
	unsigned char *pnt;
	int len;
	/* skip,time stamp */
};

struct ibuf ibufs[2];
struct ibuf *cibuf;
int ibufnum=0;

unsigned char *pcm_sample;
int pcm_point = 0;
int audiobufsize = AUDIOBUFSIZE;

#ifdef VARMODESUPPORT
	/*
	 *   This is a dirty hack!  It might burn your PC and kill your cat!
	 *   When in "varmode", specially formatted layer-3 mpeg files are
	 *   expected as input -- it will NOT work with standard mpeg files.
	 *   The reason for this:
	 *   Varmode mpeg files enable my own GUI player to perform fast
	 *   forward and backward functions, and to jump to an arbitrary
	 *   timestamp position within the file.  This would be possible
	 *   with standard mpeg files, too, but it would be a lot harder to
	 *   implement.
	 *   A filter for converting standard mpeg to varmode mpeg is
	 *   available on request, but it's really not useful on its own.
	 *
	 *   Oliver Fromme  <oliver.fromme@heim3.tu-clausthal.de>
	 *   Mon Mar 24 00:04:24 MET 1997
	 */
int varmode = FALSE;
int playlimit;
#endif

static FILE *filept;
static int filept_opened;

static void get_II_stuff(struct frame *fr)
{
  static int translate[3][2][16] = 
   { { { 0,2,2,2,2,2,2,0,0,0,1,1,1,1,1,0 } ,
       { 0,2,2,0,0,0,1,1,1,1,1,1,1,1,1,0 } } ,
     { { 0,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0 } ,
       { 0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0 } } ,
     { { 0,3,3,3,3,3,3,0,0,0,1,1,1,1,1,0 } ,
       { 0,3,3,0,0,0,1,1,1,1,1,1,1,1,1,0 } } };

  int table,sblim;
  static struct al_table *tables[5] = 
       { alloc_0, alloc_1, alloc_2, alloc_3 , alloc_4 };
  static int sblims[5] = { 27 , 30 , 8, 12 , 30 };

  if(fr->lsf)
    table = 4;
  else
    table = translate[fr->sampling_frequency][2-fr->stereo][fr->bitrate_index];
  sblim = sblims[table];

  fr->alloc = tables[table];
  fr->II_sblimit = sblim;
}

void audio_flush(int outmode, struct audio_info_struct *ai)
{
  if (pcm_point) {
    switch (outmode) {
      case DECODE_STDOUT:
        write (1, pcm_sample, pcm_point);
        break;
      case DECODE_AUDIO:
        audio_play_samples (ai, pcm_sample, pcm_point);
        break;
      case DECODE_BUFFER:
        write (buffer_fd[1], pcm_sample, pcm_point);
        break;
    }
    pcm_point = 0;
  }
}

void (*catchsignal(int signum, void(*handler)()))()
{
  struct sigaction new_sa;
  struct sigaction old_sa;

  new_sa.sa_handler = handler;
  sigemptyset(&new_sa.sa_mask);
  new_sa.sa_flags = 0;
  if (sigaction(signum, &new_sa, &old_sa) == -1)
    return ((void (*)()) -1);
  return (old_sa.sa_handler);
}

static unsigned long oldhead = 0;
static unsigned long firsthead=0;

void read_frame_init (void)
{
    oldhead = 0;
    firsthead = 0;
}

#define HDRCMPMASK 0xfffffd00
#if 0
#define HDRCMPMASK 0xfffffdft
#endif

/* 
 * HACK,HACK,HACK 
 * step back <num> frames 
 */
int back_frame(struct frame *fr,int num)
{
	long bytes;
	unsigned char buf[4];
	unsigned long newhead;

	if(!firsthead)
		return 0;

	bytes = (fsize+8)*(num+2);

	if(fseek(filept,-bytes,SEEK_CUR) < 0)
		return -1;

	if(fread(buf,1,4,filept) != 4)
		return -1;

	newhead = (buf[0]<<24) + (buf[1]<<16) + (buf[2]<<8) + buf[3];
	
	while( (newhead & HDRCMPMASK) != (firsthead & HDRCMPMASK) ) {
		if(fread(buf,1,1,filept) != 1)
			return -1;
		newhead <<= 8;
		newhead |= buf[0];
		newhead &= 0xffffffff;
	}

	if( fseek(filept,-4,SEEK_CUR) < 0)
		return -1;
	
	read_frame(fr);
	read_frame(fr);

	if(fr->lay == 3) {
		set_pointer(512);
	}

	return 0;
}

int read_frame(struct frame *fr)
{
  static unsigned long newhead;

  static unsigned char ssave[34];
  unsigned char hbuf[8];
  static int framesize;
  static int halfphase = 0;
  int l;
  int try = 0;

  if (halfspeed)
    if (halfphase--) {
      bitindex = 0;
      wordpointer = (unsigned char *) bsbuf;
      if (fr->lay == 3)
        memcpy (bsbuf, ssave, ssize);
      return 1;
    }
    else
      halfphase = halfspeed - 1;

#ifdef VARMODESUPPORT
  if (varmode) {
    if(fread(hbuf,1,8,filept) != 8)
      return 0;
  }
  else
#endif
read_again:
    if(fread(hbuf,1,4,filept) != 4)
      return 0;

  newhead = ((unsigned long) hbuf[0] << 24) | ((unsigned long) hbuf[1] << 16) |
            ((unsigned long) hbuf[2] << 8) | (unsigned long) hbuf[3];

  if(oldhead != newhead || !oldhead)
  {
    fr->header_change = 1;
#if 0
    fprintf(stderr,"Major headerchange %08lx->%08lx.\n",oldhead,newhead);
#endif

init_resync:
    if( (newhead & 0xffe00000) != 0xffe00000) {
#ifdef SKIP_JUNK
		if(!firsthead) {
			int i;
			/* I even saw RIFF headers at the beginning of MPEG streams ;( */
			if(newhead == ('R'<<24)+('I'<<16)+('F'<<8)+'F') {
				char buf[40];
				fprintf(stderr,"Skipped RIFF header\n");
				fread(buf,1,68,filept);
				goto read_again;
			}
			/* give up after 1024 bytes */
			for(i=0;i<1024;i++) {
          		memmove (&hbuf[0], &hbuf[1], 3);
				if(fread(hbuf+3,1,1,filept) != 1)
					return 0;
				newhead <<= 8;
				newhead |= hbuf[3];
				newhead &= 0xffffffff;
				goto init_resync;
			}
			fprintf(stderr,"Giving up searching valid MPEG header\n");
			return 0;
		}
#endif
      if (!quiet)
        fprintf(stderr,"Illegal Audio-MPEG-Header 0x%08lx at offset 0x%lx.\n",
              newhead,ftell(filept)-4);
      if (tryresync) {
            /* Read more bytes until we find something that looks
               reasonably like a valid header.  This is not a
               perfect strategy, but it should get us back on the
               track within a short time (and hopefully without
               too much distortion in the audio output).  */
        do {
          try++;
          memmove (&hbuf[0], &hbuf[1], 7);
#ifdef VARMODESUPPORT
          if (fread(&hbuf[varmode?7:3],1,1,filept) != 1)
#else
          if (fread(&hbuf[3],1,1,filept) != 1)
#endif
            return 0;

          /* This is faster than combining newhead from scratch */
          newhead = ((newhead << 8) | hbuf[3]) & 0xffffffff;

          if (!oldhead)
            goto init_resync;       /* "considered harmful", eh? */

        } while ((newhead & HDRCMPMASK) != (oldhead & HDRCMPMASK)
              && (newhead & HDRCMPMASK) != (firsthead & HDRCMPMASK));
        if (!quiet)
          fprintf (stderr, "Skipped %d bytes in input.\n", try);
      }
      else
        return (0);
    }
    if (!firsthead)
      firsthead = newhead;

    if( newhead & (1<<20) ) {
      fr->lsf = (newhead & (1<<19)) ? 0x0 : 0x1;
      fr->mpeg25 = 0;
    }
    else {
      fr->lsf = 1;
      fr->mpeg25 = 1;
    }
    
    if (!tryresync || !oldhead) {
          /* If "tryresync" is true, assume that certain
             parameters do not change within the stream! */
      fr->lay = 4-((newhead>>17)&3);
      fr->bitrate_index = ((newhead>>12)&0xf);
      if( ((newhead>>10)&0x3) == 0x3) {
        fprintf(stderr,"Stream error\n");
        exit(1);
      }
      if(fr->mpeg25)
        fr->sampling_frequency = 6;
      else
        fr->sampling_frequency = ((newhead>>10)&0x3) + (fr->lsf*3);
      fr->error_protection = ((newhead>>16)&0x1)^0x1;
    }

    fr->padding   = ((newhead>>9)&0x1);
    fr->extension = ((newhead>>8)&0x1);
    fr->mode      = ((newhead>>6)&0x3);
    fr->mode_ext  = ((newhead>>4)&0x3);
    fr->copyright = ((newhead>>3)&0x1);
    fr->original  = ((newhead>>2)&0x1);
    fr->emphasis  = newhead & 0x3;

    fr->stereo    = (fr->mode == MPG_MD_MONO) ? 1 : 2;

    oldhead = newhead;

    if(!fr->bitrate_index)
    {
      fprintf(stderr,"Free format not supported.\n");
      return (0);
    }

    switch(fr->lay)
    {
      case 1:
		fr->do_layer = do_layer1;
#ifdef VARMODESUPPORT
        if (varmode) {
          fprintf(stderr,"Sorry, layer-1 not supported in varmode.\n"); 
          return (0);
        }
#endif
        fr->jsbound = (fr->mode == MPG_MD_JOINT_STEREO) ? 
                         (fr->mode_ext<<2)+4 : 32;
        framesize  = (long) tabsel_123[fr->lsf][0][fr->bitrate_index] * 12000;
        framesize /= freqs[fr->sampling_frequency];
        framesize  = ((framesize+fr->padding)<<2)-4;
        break;
      case 2:
		fr->do_layer = do_layer2;
#ifdef VARMODESUPPORT
        if (varmode) {
          fprintf(stderr,"Sorry, layer-2 not supported in varmode.\n"); 
          return (0);
        }
#endif
        get_II_stuff(fr);
        fr->jsbound = (fr->mode == MPG_MD_JOINT_STEREO) ?
                         (fr->mode_ext<<2)+4 : fr->II_sblimit;
        framesize = (long) tabsel_123[fr->lsf][1][fr->bitrate_index] * 144000;
        framesize /= freqs[fr->sampling_frequency];
        framesize += fr->padding - 4;
        break;
      case 3:
		fr->do_layer = do_layer3;
        if(fr->lsf)
          ssize = (fr->stereo == 1) ? 9 : 17;
        else
          ssize = (fr->stereo == 1) ? 17 : 32;
        if(fr->error_protection)
          ssize += 2;
#ifdef VARMODESUPPORT
        if (varmode)
          playlimit = ((unsigned int) hbuf[6] << 8) | (unsigned int) hbuf[7];
          framesize = ssize + 
                      (((unsigned int) hbuf[4] << 8) | (unsigned int) hbuf[5]);
        else {
#endif
          framesize  = (long) tabsel_123[fr->lsf][2][fr->bitrate_index] * 144000;
          framesize /= freqs[fr->sampling_frequency]<<(fr->lsf);
          framesize = framesize + fr->padding - 4;
#ifdef VARMODESUPPORT
        }
#endif
        break; 
      default:
        fprintf(stderr,"Sorry, unknown layer type.\n"); 
        return (0);
    }
  }
  else
    fr->header_change = 0;

  fsizeold=fsize;	/* for Layer3 */
  bsbufold = bsbuf;	
  bsbuf = bsspace[bsnum]+512;
  bsnum = (bsnum + 1) & 1;

  fsize = framesize;
 
  if( (l=fread(bsbuf,1,fsize,filept)) != fsize)
  {
    if(l <= 0)
      return 0;
    memset(bsbuf+l,0,fsize-l);
  }

  if (halfspeed && fr->lay == 3)
    memcpy (ssave, bsbuf, ssize);

  bitindex = 0;
  wordpointer = (unsigned char *) bsbuf;

  return 1;
}

#ifdef MPG123_REMOTE
void print_rheader(struct frame *fr)
{
	static char *modes[4] = { "Stereo", "Joint-Stereo", "Dual-Channel", "Single-Channel" };
	static char *layers[4] = { "Unknown" , "I", "II", "III" };
	static char *mpeg_type[2] = { "1.0" , "2.0" };

	/* version, layer, freq, mode, channels, bitrate, BPF */
	fprintf(stderr,"@I %s %s %ld %s %d %d %d\n",
			mpeg_type[fr->lsf],layers[fr->lay],freqs[fr->sampling_frequency],
			modes[fr->mode],fr->stereo,
			tabsel_123[fr->lsf][fr->lay-1][fr->bitrate_index],
			fsize+4);
}
#endif

void print_header(struct frame *fr)
{
	static char *modes[4] = { "Stereo", "Joint-Stereo", "Dual-Channel", "Single-Channel" };
	static char *layers[4] = { "Unknown" , "I", "II", "III" };
 
	fprintf(stderr,"MPEG %s, Layer: %s, Freq: %ld, mode: %s, modext: %d, BPF: %d\n",
        	fr->mpeg25 ? "2.5" : (fr->lsf ? "2.0" : "1.0"),
		layers[fr->lay],freqs[fr->sampling_frequency],
		modes[fr->mode],fr->mode_ext,fsize+4);
	fprintf(stderr,"Channels: %d, copyright: %s, original: %s, CRC: %s, emphasis: %d.\n",
		fr->stereo,fr->copyright?"Yes":"No",
		fr->original?"Yes":"No",fr->error_protection?"Yes":"No",
		fr->emphasis);
	fprintf(stderr,"Bitrate: %d Kbits/s, Extension value: %d\n",
		tabsel_123[fr->lsf][fr->lay-1][fr->bitrate_index],fr->extension);
}

void print_header_compact(struct frame *fr)
{
	static char *modes[4] = { "stereo", "joint-stereo", "dual-channel", "mono" };
	static char *layers[4] = { "Unknown" , "I", "II", "III" };
 
	fprintf(stderr,"MPEG %s layer %s, %d kbit/s, %ld Hz %s\n",
		fr->mpeg25 ? "2.5" : (fr->lsf ? "2.0" : "1.0"),
		layers[fr->lay],
		tabsel_123[fr->lsf][fr->lay-1][fr->bitrate_index],
		freqs[fr->sampling_frequency], modes[fr->mode]);
}

/*
 *   Allocate space for a new string containing the first
 *   "num" characters of "src".  The resulting string is
 *   always zero-terminated.  Returns NULL if malloc fails.
 */

char *strndup (const char *src, int num)
{
	char *dst;

	if (!(dst = (char *) malloc(num+1)))
		return (NULL);
	dst[num] = '\0';
	return (strncpy(dst, src, num));
}

/*
 *   Split "path" into directory and filename components.
 *
 *   Return value is 0 if no directory was specified (i.e.
 *   "path" does not contain a '/'), OR if the directory
 *   is the same as on the previous call to this function.
 *
 *   Return value is 1 if a directory was specified AND it
 *   is different from the previous one (if any).
 */

int split_dir_file (const char *path, char **dname, char **fname)
{
	static char *lastdir = NULL;
	char *slashpos;

	if ((slashpos = strrchr(path, '/'))) {
		*fname = slashpos + 1;
		*dname = strndup(path, 1 + slashpos - path);
		if (lastdir && !strcmp(lastdir, *dname)) {
			/***   same as previous directory   ***/
			free (*dname);
			*dname = lastdir;
			return 0;
		}
		else {
			/***   different directory   ***/
			if (lastdir)
				free (lastdir);
			lastdir = *dname;
			return 1;
		}
	}
	else {
		/***   no directory specified   ***/
		if (lastdir) {
			free (lastdir);
			lastdir = NULL;
		};
		*dname = NULL;
		*fname = (char *)path;
		return 0;
	}
}

/* open the device to read the bit stream from it */

void open_stream(char *bs_filenam,int fd)
{
	filept_opened = 1;
    if (!bs_filenam) {
		if(fd < 0) {
        	filept = stdin;
			filept_opened = 0;
		}
		else
			filept = fdopen(fd,"r");
	}
    else if (!strncmp(bs_filenam, "http://", 7)) 
        filept = http_open(bs_filenam);
    else if (!(filept = fopen(bs_filenam, "rb"))) {
        perror (bs_filenam);
        exit(1);
    }
}

/*close the device containing the bit stream after a read process*/

void close_stream(void)
{
    if (filept_opened)
        fclose(filept);
}

long tell_stream(void)
{
	return ftell(filept);
}

#if !defined(I386_ASSEM) || defined(DEBUG_GETBITS)
#ifdef _gcc_
inline 
#endif
unsigned int getbits(int number_of_bits)
{
  unsigned long rval;

#ifdef DEBUG_GETBITS
fprintf(stderr,"g%d",number_of_bits);
#endif

  if(!number_of_bits)
    return 0;

  {
    rval = wordpointer[0];
    rval <<= 8;
    rval |= wordpointer[1];
    rval <<= 8;
    rval |= wordpointer[2];
#if 0
    rval = ((unsigned int) wordpointer[0] << 16)+((unsigned int) wordpointer[1]<<8)+
                 (unsigned int) wordpointer[2];
#endif
    rval <<= bitindex;
    rval &= 0xffffff;

    bitindex += number_of_bits;

    rval >>= (24-number_of_bits);

    wordpointer += (bitindex>>3);
    bitindex &= 7;
  }

#ifdef DEBUG_GETBITS
fprintf(stderr,":%x ",rval);
#endif
  return rval;
}

#ifdef _gcc_
inline
#endif
unsigned int getbits_fast(int number_of_bits)
{
  unsigned long rval;

#ifdef DEBUG_GETBITS
fprintf(stderr,"g%d",number_of_bits);
#endif

  {
    rval = wordpointer[0];
    rval <<= 8;	
    rval |= wordpointer[1];
    rval <<= bitindex;
    rval &= 0xffff;
#if 0
    rval = ((unsigned int) high << (8-bitindex) )+((unsigned int) (unsigned char) wordpointer[1]);
#endif
    bitindex += number_of_bits;

    rval >>= (16-number_of_bits);

    wordpointer += (bitindex>>3);
    bitindex &= 7;
  }


#ifdef DEBUG_GETBITS
fprintf(stderr,":%x ",rval);
#endif


  return rval;
}

#ifdef _gcc_
inline 
#endif
unsigned int get1bit(void)
{
  unsigned char rval;

#ifdef DEBUG_GETBITS
fprintf(stderr,"g%d",1);
#endif

  rval = *wordpointer << bitindex;

  bitindex++;
  wordpointer += (bitindex>>3);
  bitindex &= 7;

#ifdef DEBUG_GETBITS
fprintf(stderr,":%d ",rval>>7);
#endif

  return rval>>7;
}
#endif

void set_pointer(long backstep)
{
  wordpointer = bsbuf + ssize - backstep;
  if (backstep)
    memcpy(wordpointer,bsbufold+fsizeold-backstep,backstep);
  bitindex = 0; 
}
