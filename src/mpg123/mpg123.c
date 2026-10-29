/* 
 * Mpeg Layer audio decoder (see version.h for version number)
 * ------------------------
 * copyright (c) 1995,1996,1997 by Michael Hipp, All rights reserved.
 * See also 'README' !
 *
 */

#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/time.h>
#include <sys/resource.h>

/* #define SET_PRIO */

#include "mpg123.h"
#include "getlopt.h"

#include "version.h"

static void usage(char *dummy);
static void print_title(void);

static long rates[3][3] = { 
 { 32000,44100,48000 } ,
 { 16000,22050,24000 } ,
 {  8000,11025,12000 } 
};

int supported_rates = 0;

int outmode = DECODE_AUDIO;

char *listname = NULL;
long outscale  = 32768;
int checkrange = FALSE;
int tryresync  = TRUE;
int quiet      = FALSE;
int verbose    = 0;
int doublespeed= 0;
int halfspeed  = 0;
int shuffle = 0;
int change_always = 1;
int force_8bit = 0;
int force_frequency = -1;
long numframes = -1;
long startFrame= 0;
int usebuffer  = 0;
int frontend_type = 0;
int remote     = 0;
int buffer_fd[2];
int buffer_pid;

static void catch_child(void)
{
  while (waitpid(-1, NULL, WNOHANG) > 0);
}

static int intflag = FALSE;
static int remflag = FALSE;

static void catch_interrupt(void)
{
  intflag = TRUE;
}

static char remote_buffer[1024];
static struct frame fr;
static struct audio_info_struct ai;
txfermem *buffermem;
#define FRAMEBUFUNIT (18 * 64 * 4)

void print_rheader(struct frame *fr);

static void catch_remote(void)
{
    remflag = TRUE;
    intflag = TRUE;
    if(usebuffer)
        kill(buffer_pid,SIGINT);
}


char *handle_remote(void)
{
	switch(frontend_type) {
		case FRONTEND_SAJBER:
#ifdef FRONTEND
			control_sajber(&fr);
#endif
			break;
		case FRONTEND_TK3PLAY:
#ifdef FRONTEND
			control_tk3play(&fr);
#endif
			break;
		default:
			fgets(remote_buffer,1024,stdin);
			remote_buffer[strlen(remote_buffer)-1]=0;
  
			switch(remote_buffer[0]) {
				case 'P':
					return remote_buffer+1;        
			}

			if(usebuffer)
				kill(buffer_pid,SIGINT);
			break;
	}

	return NULL;    
}

void init_output(void)
{
  static int init_done = FALSE;

  if (init_done)
    return;
  init_done = TRUE;
#ifndef OS2
  if (usebuffer) {
    unsigned int bufferbytes;
    sigset_t newsigset, oldsigset;

    if (usebuffer < 32)
      usebuffer = 32; /* minimum is 32 Kbytes! */
    bufferbytes = (usebuffer * 1024);
    bufferbytes -= bufferbytes % FRAMEBUFUNIT;
    xfermem_init (&buffermem, bufferbytes, sizeof(ai.rate));
    pcm_sample = (unsigned char *) buffermem->data;
    pcm_point = 0;
    sigemptyset (&newsigset);
    sigaddset (&newsigset, SIGUSR1);
    sigprocmask (SIG_BLOCK, &newsigset, &oldsigset);
    catchsignal (SIGCHLD, catch_child);
    switch ((buffer_pid = fork())) {
      case -1: /* error */
        perror("fork()");
        exit(1);
      case 0: /* child */
        xfermem_init_reader (buffermem);
        buffer_loop (&ai, &oldsigset);
        xfermem_done_reader (buffermem);
        xfermem_done (buffermem);
        _exit(0);
      default: /* parent */
        xfermem_init_writer (buffermem);
        outmode = DECODE_BUFFER;
    }
  }
  else {
#endif
    if (!(pcm_sample = (unsigned char *) malloc(audiobufsize * 2))) {
      perror ("malloc()");
      exit (1);
#ifndef OS2
    }
#endif
  }

  if(outmode==DECODE_AUDIO) {
    if(audio_open(&ai) < 0) {
      perror("audio");
      exit(1);
    }
    /* audio_set_rate (&ai);  should already be done in audio_open() [OF] */
  }
}

char *get_next_file (int argc, char *argv[])
{
    static FILE *listfile = NULL;
    static char line[1024];

#ifdef SHUFFLESUPPORT
	static int ord[2048];
	int temp, randomized,pos;
	static char initialized=0;
	time_t t;
#endif

	if (remote)
		return handle_remote();

    if (listname || listfile) {
        if (!listfile) {
            if (!*listname || !strcmp(listname, "-")) {
                listfile = stdin;
                listname = NULL;
            }
            else if (!strncmp(listname, "http://", 7)) 
                listfile = http_open(listname);
            else if (!(listfile = fopen(listname, "rb"))) {
                perror (listname);
                exit (1);
            }
            if (verbose)
                fprintf (stderr, "Using playlist from %s ...\n",
                        listname ? listname : "standard input");
        }
        do {
            if (fgets(line, 1023, listfile)) {
                line[strcspn(line, "\t\n\r")] = '\0';
                if (line[0]=='\0' || line[0]=='#')
                    continue;
                return (line);
            }
            else {
                if (*listname)
                   fclose (listfile);
                listname = NULL;
                listfile = NULL;
            }
        } while (listfile);
    }

#ifdef SHUFFLESUPPORT
	if(!initialized){
		for(pos=0;pos<=argc; pos++)   ord[pos]=pos;
		initialized=1;
	}
	if(shuffle){
		fprintf(stderr, "\nShuffle play - %u file(s) in loop.\n", argc-loptind);
		srandom(time(&t));
		for(pos=loptind;pos<argc;pos++){
			randomized=(random()%(argc-pos))+pos;
			temp=ord[pos];
			ord[pos]=ord[randomized];
			ord[randomized]=temp;
		}
		shuffle=0;
	}
	if (loptind < argc)
		return (argv[ord[loptind++]]);
	return (NULL);
#else
    if (loptind < argc)
    	return (argv[loptind++]);
    return (NULL);
#endif
}

void set_synth (char *arg)
{
    if (*arg == '2') {
        fr.down_sample = 1;
    }
    else {
        fr.down_sample = 2;
    }
}

#ifdef VARMODESUPPORT
void set_varmode (char *arg)
{
    audiobufsize = ((audiobufsize >> 1) + 63) & 0xffffc0;
}
#endif

void set_output (char *arg)
{
    switch (*arg) {
        case 'h': ai.output = AUDIO_OUT_HEADPHONES; break;
        case 's': ai.output = AUDIO_OUT_INTERNAL_SPEAKER; break;
        case 'l': ai.output = AUDIO_OUT_LINE_OUT; break;
        default:
            fprintf (stderr, "%s: Unknown argument \"%s\" to option \"%s\".\n",
                prgName, arg, loptarg);
            exit (1);
    }
}

void set_verbose (char *arg)
{
    verbose++;
}

topt opts[] = {
    {'k', "skip",        GLO_ARG | GLO_NUM,  0, &startFrame, 0},
    {'a', "audiodevice", GLO_ARG | GLO_CHAR, 0, &ai.device,  0},
    {'2', "2to1",        0,          set_synth, 0,           0},
    {'4', "4to1",        0,          set_synth, 0,           0},
    {'t', "test",        0,                  0, &outmode, DECODE_TEST},
    {'s', "stdout",      0,                  0, &outmode, DECODE_STDOUT},
    {'c', "check",       0,                  0, &checkrange, TRUE},
    {'v', "verbose",     0,        set_verbose, 0,           0},
    {'q', "quiet",       0,                  0, &quiet,      TRUE},
    {'y', "resync",      0,                  0, &tryresync,  FALSE},
    {'0', "single0",     0,                  0, &fr.single,  0},
    {0,   "left",        0,                  0, &fr.single,  0},
    {'1', "single1",     0,                  0, &fr.single,  1},
    {0,   "right",       0,                  0, &fr.single,  1},
    {'m', "singlemix",   0,                  0, &fr.single,  3},
    {0,   "mix",         0,                  0, &fr.single,  3},
    {'g', "gain",        GLO_ARG | GLO_NUM,  0, &ai.gain,    0},
    {'r', "rate",        GLO_ARG | GLO_NUM,  0, &force_frequency,  0},
    {0,   "8bit",        0,                  0, &force_8bit, 1},
    {0,   "headphones",  0,                  0, &ai.output, AUDIO_OUT_HEADPHONES},
    {0,   "speaker",     0,                  0, &ai.output, AUDIO_OUT_INTERNAL_SPEAKER},
    {0,   "lineout",     0,                  0, &ai.output, AUDIO_OUT_LINE_OUT},
    {'o', "output",      GLO_ARG | GLO_CHAR, set_output, 0,  0},
    {'f', "scale",       GLO_ARG | GLO_NUM,  0, &outscale,   0},
    {'n', "frames",      GLO_ARG | GLO_NUM,  0, &numframes,  0},
#ifdef VARMODESUPPORT
    {'v', "var",         0,        set_varmode, &varmode,    TRUE},
#endif
    {'b', "buffer",      GLO_ARG | GLO_NUM,  0, &usebuffer,  0},
	{'R', "remote",      0,                  0, &remote,     TRUE},
    {'d', "doublespeed", GLO_ARG | GLO_NUM,  0, &doublespeed,0},
    {'h', "halfspeed",   GLO_ARG | GLO_NUM,  0, &halfspeed,  0},
    {'p', "proxy",       GLO_ARG | GLO_CHAR, 0, &proxyurl,   0},
    {'@', "list",        GLO_ARG | GLO_CHAR, 0, &listname,   0},
#ifdef SHUFFLESUPPORT
	/* 'z' comes from the the german word 'zufall' (eng: random) */
    {'z', "shuffle",         0,        0, &shuffle,    1},
#endif
    {'?', "help",        0,              usage, 0,           0},
    {0, 0, 0, 0, 0, 0}
};

/*
 *   Change the playback sample rate.
 */
static void reset_audio_samplerate(void)
{
	if (usebuffer) {
		/* wait until the buffer is empty,
		 * then tell the buffer process to
		 * change the sample rate.   [OF]
		 */
		while (xfermem_get_usedspace(buffermem)	> 0)
			if (xfermem_block(XF_WRITER, buffermem) == XF_CMD_TERMINATE) {
				intflag = TRUE;
				break;
			}
		buffermem->freeindex = -1;
		buffermem->readindex = 0; /* I know what I'm doing! ;-) */
		buffermem->freeindex = 0;
		if (intflag)
			return;
		memcpy (buffermem->metadata, &ai.rate, sizeof(ai.rate));
		kill (buffer_pid, SIGUSR1);
	}
	else if (outmode == DECODE_AUDIO) {
		/* audio_reset_parameters(&ai); */
		/*   close and re-open in order to flush
		 *   the device's internal buffer before
		 *   changing the sample rate.   [OF]
		 */
		audio_close (&ai);
		if (audio_open(&ai) < 0) {
			perror("audio");
			exit(1);
		}
	}
}

/*
 * play a frame read read_frame();
 * (re)initialize audio if necessary.
 */
void play_frame(int init,struct frame *fr)
{
	int clip;

	if((fr->header_change && change_always) || init) {
		int reset_audio = 0;

		if(remote)
			print_rheader(fr);

		if (!quiet && init)
			if (verbose)
				print_header(fr);
			else
				print_header_compact(fr);

		if(force_frequency < 0) {
			if(ai.rate != freqs[fr->sampling_frequency]>>(fr->down_sample)) {
				ai.rate = freqs[fr->sampling_frequency]>>(fr->down_sample);
				reset_audio = 1;
			}
		}
		else if(ai.rate != force_frequency) {
			ai.rate = force_frequency;
			reset_audio = 1;
		}
		init_output();
		if(reset_audio) {
			reset_audio_samplerate();
			if (intflag)
				return;
		}
	}

	if (fr->error_protection) {
		getbits(16); /* crc */
	}

	clip = (fr->do_layer)(fr,outmode,&ai);

#ifndef OS2
	if (usebuffer) {
		if (!intflag) {
			buffermem->freeindex =
				(buffermem->freeindex + pcm_point) % buffermem->size;
			if (buffermem->wakeme[XF_READER])
				xfermem_putcmd(buffermem->fd[XF_WRITER], XF_CMD_WAKEUP);
		}
		pcm_sample = (unsigned char *) (buffermem->data + buffermem->freeindex);
		pcm_point = 0;
		while (xfermem_get_freespace(buffermem) < (FRAMEBUFUNIT << 1))
			if (xfermem_block(XF_WRITER, buffermem) == XF_CMD_TERMINATE) {
				intflag = TRUE;
				break;
			}
		if (intflag)
			return;
	}
#endif

	if(clip > 0 && checkrange)
		fprintf(stderr,"%d samples clipped\n", clip);
}


int main(int argc, char *argv[])
{
    int result;
    unsigned long frameNum = 0;
    char *fname;
    struct timeval start_time, now;
    unsigned long secdiff;
	int init;

#ifdef OS2
        _wildcard(&argc,&argv);
#endif

#ifdef SET_PRIO
	int mypid = getpid();
	setpriority(PRIO_PROCESS,mypid,-20);
#endif

	if(!strcmp("sajberplay",argv[0]))
		frontend_type = FRONTEND_SAJBER;
	if(!strcmp("mpg123m",argv[0]))
		frontend_type = FRONTEND_TK3PLAY;

    fr.single = -1; /* both channels */
    fr.synth = synth_1to1;
    fr.down_sample = 0;

    ai.format = AUDIO_FORMAT_SIGNED_16;
    ai.gain = ai.rate = ai.output = -1;
    ai.device = NULL;
    ai.channels = 2;

    (prgName = strrchr(argv[0], '/')) ? prgName++ : (prgName = argv[0]);

    while ((result = getlopt(argc, argv, opts)))
      switch (result) {
        case GLO_UNKNOWN:
          fprintf (stderr, "%s: Unknown option \"%s\".\n", prgName, loptarg);
          exit (1);
        case GLO_NOARG:
          fprintf (stderr, "%s: Missing argument for option \"%s\".\n",
              prgName, loptarg);
          exit (1);
      }
    if (loptind >= argc && !listname && !frontend_type)
      usage(NULL);

    if (remote){
        verbose = 0;        
        quiet = 1;
        catchsignal(SIGUSR1, catch_remote);
        fprintf(stderr,"@R MPG123\n");        
    }

    if (!quiet)
      print_title();


    {
        int fmts;
        int i,j;

        struct audio_info_struct ai;

        audio_info_struct_init(&ai);
        if (outmode == DECODE_AUDIO) {
        	audio_open(&ai);
        	fmts = audio_get_formats(&ai);
        }
        else
        	fmts = AUDIO_FORMAT_SIGNED_16;

        supported_rates = 0;
        for(i=0;i<3;i++) {
          for(j=0;j<3;j++) {
            ai.rate = rates[i][j];
            if (outmode == DECODE_AUDIO)
              audio_rate_best_match(&ai);
            /* allow about 2% difference */
            if( ((rates[i][j]*98) < (ai.rate*100)) &&
                ((rates[i][j]*102) > (ai.rate*100)) )
              supported_rates |= 1<<(i*3+j);
          } 
        }
        
        if (outmode == DECODE_AUDIO)
          audio_close(&ai);

        if(!force_8bit && !(fmts & AUDIO_FORMAT_SIGNED_16))
            force_8bit = 1;

        if(force_8bit && !(fmts & AUDIO_FORMAT_ULAW_8)) {
            fprintf(stderr,"No supported audio format found!\n");
            exit(1);
        }
    }

    if(force_8bit) {
#if 0
      ai.format = AUDIO_FORMAT_UNSIGNED_8;
      ai.format = AUDIO_FORMAT_SIGNED_8;
#endif
      ai.format = AUDIO_FORMAT_ULAW_8;
      make_conv16to8_table(ai.format);
      switch(fr.down_sample) {
        case 0:
          fr.synth = synth_1to1_8bit;
          fr.synth_mono = synth_1to1_8bit_mono;
          fr.block_size = 64;
          break;
        case 1:
          fr.synth = synth_2to1_8bit;
          fr.synth_mono = synth_2to1_8bit_mono;
          fr.block_size = 32;
          break;
        case 2:
          fr.synth = synth_4to1_8bit;
          fr.synth_mono = synth_4to1_8bit_mono;
          fr.block_size = 16;
          break;
      }
    }
    else {
      switch(fr.down_sample) {
        case 0:
          fr.synth = synth_1to1;
          fr.synth_mono = synth_1to1_mono;
          fr.block_size = 128;
          break;
        case 1:
          fr.synth = synth_2to1;
          fr.synth_mono = synth_2to1_mono;
          fr.block_size = 64;
          break;
        case 2:
          fr.synth = synth_4to1;
          fr.synth_mono = synth_4to1_mono;
          fr.block_size = 32;
          break;
      }
    }

    make_decode_tables(outscale);
    init_layer2(); /* inits also shared tables with layer1 */
    init_layer3(fr.down_sample);
    catchsignal (SIGINT, catch_interrupt);

	if(frontend_type) {
		handle_remote();
		exit(0);
	}

    while ((fname = get_next_file(argc, argv))) {
      char *dirname, *filename;

      if(!*fname || !strcmp(fname, "-"))
        fname = NULL;
      open_stream(fname,-1);
      
      if (!quiet) {
        if (split_dir_file(fname ? fname : "standard input",
                &dirname, &filename))
           fprintf(stderr, "\nDirectory: %s", dirname);
        fprintf(stderr, "\nPlaying MPEG stream from %s ...\n", filename);
      }

      gettimeofday (&start_time, NULL);
      read_frame_init();

      init = 1;
      for(frameNum=0;read_frame(&fr) && numframes && !intflag;frameNum++) {
			if(frameNum < startFrame || (doublespeed && (frameNum % doublespeed))) {
				if(fr.lay == 3)
					set_pointer(512);
				continue;
			}
			numframes--;
			play_frame(init,&fr);
			init = 0;
			if(verbose) {
				if (verbose > 1 || !(frameNum & 0xf))
					fprintf(stderr, "\r{%4lu} ",frameNum);
#ifndef OS2
			if (verbose > 1 && usebuffer)
				fprintf (stderr, "%7d ", xfermem_get_usedspace(buffermem));
#endif
			}

      }

      close_stream();
      if (!quiet) {
        /* This formula seems to work at least for
         * MPEG 1.0/2.0 layer 3 streams.
         */
        int sfd = freqs[fr.sampling_frequency] * (fr.lsf + 1);
        int secs = (frameNum * (fr.lay==1 ? 384 : 1152) + sfd / 2) / sfd;
        fprintf(stderr,"[%d:%02d] Decoding of %s finished.\n", secs / 60,
        	secs % 60, filename);
      }

	if(remote)
		fprintf(stderr,"@R MPG123\n");        
	if (remflag) {
		intflag = FALSE;
		remflag = FALSE;
	}

      if (intflag) {
        gettimeofday (&now, NULL);
        secdiff = (now.tv_sec - start_time.tv_sec) * 1000;
        if (now.tv_usec >= start_time.tv_usec)
          secdiff += (now.tv_usec - start_time.tv_usec) / 1000;
        else
          secdiff -= (start_time.tv_usec - now.tv_usec) / 1000;
        if (secdiff < 1000)
          break;
        intflag = FALSE;
      }
    }
#ifndef OS2
    if (usebuffer) {
      xfermem_done_writer (buffermem);
      waitpid (buffer_pid, NULL, 0);
      xfermem_done (buffermem);
    }
    else {
#endif
      audio_flush(outmode, &ai);
      free (pcm_sample);
#ifndef OS2
    }
#endif

    if(outmode==DECODE_AUDIO)
      audio_close(&ai);
    exit( 0 );
}

static void print_title(void)
{
    fprintf(stderr,"High Performance MPEG 1.0/2.0 Audio Player for Layer 1, 2 and 3.\n");
    fprintf(stderr,"Version %s (%s). Written and copyrights by Michael Hipp.\n", prgVersion, prgDate);
    fprintf(stderr,"Uses code from various people. See 'README' for more!\n");
    fprintf(stderr,"THIS SOFTWARE COMES WITH ABSOLUTELY NO WARRANTY! USE AT YOUR OWN RISK!\n");
}

static void usage(char *dummy)  /* print syntax & exit */
{
   print_title();
   fprintf(stderr,"\nusage: %s [option(s)] [file(s) | URL(s) | -]\n", prgName);
   fprintf(stderr,"supported options [defaults in brackets]:\n");
   fprintf(stderr,"   -v    increase verbosity level       -q    quiet (don't print title)\n");
   fprintf(stderr,"   -t    testmode (no output)           -s    write to stdout\n");
   fprintf(stderr,"   -k n  skip first n frames [0]        -n n  decode only n frames [all]\n");
   fprintf(stderr,"   -c    check range violations         -y    DISABLE resync on errors\n");
   fprintf(stderr,"   -b n  output buffer: n Kbytes [0]    -f n  change scalefactor [32768]\n");
   fprintf(stderr,"   -r n  override samplerate [auto]     -g n  set audio hardware output gain\n");
   fprintf(stderr,"   -os   output to built-in speaker     -oh   output to headphones\n");
   fprintf(stderr,"   -ol   output to line-out connector   -a d  set audio device\n");
   fprintf(stderr,"   -2    downsample 1:2 (22 kHz)        -4    downsample 1:4 (11 kHz)\n");
   fprintf(stderr,"   -d n  play every n'th frame only     -h n  play every frame n times\n");
   fprintf(stderr,"   -0    decode channel 0 (left) only   -1    decode channel 1 (right) only\n");
   fprintf(stderr,"   -m    mix both channels (mono)       -p p  use HTTP proxy p [$HTTP_PROXY]\n");
   fprintf(stderr,"   -@ f  read filenames/URLs from f     -z    shuffle play (with wildcards)\n");
   fprintf(stderr,"See the manpage %s(1) for more information.\n", prgName);
   exit(1);
}


