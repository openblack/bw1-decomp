#include "audio.h"

enum { MSG_CTRL, MSG_BUFFER, MSG_SONG, MSG_QUIT, MSG_NEXT, MSG_QUERY,
	MSG_RESPONSE, MSG_BUFAHEAD, MSG_FRAMES, MSG_POSITION, MSG_SEEK,
	MSG_PRIORITY, MSG_RELEASE, MSG_AUDIOFAILURE, MSG_INFO };


/* MSG_PRIORITY */
enum { PRIORITY_NORMAL=1, PRIORITY_REALTIME, PRIORITY_NICE };

/* MSG_CTRL */
enum { PLAY_STOP, PLAY_PAUSE, FORWARD_BEGIN, FORWARD_STEP, FORWARD_END,
	REWIND_BEGIN, REWIND_STEP, REWIND_END };

/* MSG_QUERY */
enum { QUERY_PLAYING=1, QUERY_PAUSED };

struct m_cmsghdr
{
	unsigned int cmsg_len;
	int cmsg_level;   
	int cmsg_type;    
	int fd;
};

typedef struct
{
	int type;
	int data;
} TControlMsg;

