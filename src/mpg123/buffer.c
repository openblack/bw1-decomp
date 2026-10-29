/*
 *   buffer.c
 *
 *   Oliver Fromme  <oliver.fromme@heim3.tu-clausthal.de>
 *   Mon Apr 14 03:53:18 MET DST 1997
 */

#include "mpg123.h"

int outburst = MAXOUTBURST;

static int intflag = FALSE;
static int usr1flag = FALSE;

static void catch_interrupt (void)
{
	intflag = TRUE;
}

static void catch_usr1 (void)
{
	usr1flag = TRUE;
}

#ifndef OS2

void buffer_loop(struct audio_info_struct *ai, sigset_t *oldsigset)
{
	int bytes;
	int my_fd = buffermem->fd[XF_READER];
	txfermem *xf = buffermem;
	int done = FALSE;

	catchsignal (SIGINT, catch_interrupt);
	catchsignal (SIGUSR1, catch_usr1);
	sigprocmask (SIG_SETMASK, oldsigset, NULL);
	if (outmode == DECODE_AUDIO) {
		if (audio_open(ai) < 0) {
			perror("audio");
			exit(1);
		}
		/* audio_set_rate (ai); already done by audio_open() */
	}

	for (;;) {
		if (intflag) {
			intflag = FALSE;
#ifdef SOLARIS
			if (outmode == DECODE_AUDIO)
				audio_queueflush (ai);
#endif
			xf->readindex = xf->freeindex;
		}
		if (usr1flag) {
			usr1flag = FALSE;
			/*   close and re-open in order to flush
			 *   the device's internal buffer before
			 *   changing the sample rate.   [OF]
			 */
			if (outmode == DECODE_AUDIO) {
				audio_close (ai);
				memcpy (&ai->rate, xf->metadata, sizeof(ai->rate));
				if (audio_open(ai) < 0) {
					perror("audio");
					exit(1);
				}
			}
		}
		if (!(bytes = xfermem_get_usedspace(xf))) {
			if (done)
				break;
			if (xfermem_block(XF_READER, xf) != XF_CMD_WAKEUP)
				done = TRUE;
			continue;
		}
		if (bytes > xf->size - xf->readindex)
			bytes = xf->size - xf->readindex;
		if (bytes > outburst)
			bytes = outburst;

		if (outmode == DECODE_STDOUT)
			bytes = write(1, xf->data + xf->readindex, bytes);
		else if (outmode == DECODE_AUDIO)
			bytes = audio_play_samples(ai,
				(unsigned char *) (xf->data + xf->readindex), bytes);

		xf->readindex = (xf->readindex + bytes) % xf->size;
		if (xf->wakeme[XF_WRITER])
			xfermem_putcmd(my_fd, XF_CMD_WAKEUP);
	}

	if (outmode == DECODE_AUDIO)
		audio_close (ai);
}

#endif

/* EOF */
