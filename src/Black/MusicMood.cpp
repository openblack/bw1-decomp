#include <string.h>
#include <windows.h>
#include <mmsystem.h>
#include "GameTimeConstants.h"
#include "MusicMoodController.h"
#include "MusicMood.h"
#include "Serialise.h"

bool redbook_status(unsigned int device_id)
{
	if (device_id != 0)
	{
		MCI_STATUS_PARMS status;
		status.dwItem = MCI_STATUS_MODE;
		mciSendCommand(device_id, MCI_STATUS, MCI_STATUS_ITEM | MCI_WAIT, (DWORD)&status);
		switch (status.dwReturn)
		{
		case MCI_MODE_STOP:
			return false;
		case MCI_MODE_PLAY:
			return true;
		}
	}
	return false;
}

unsigned int redbook_gettrack(unsigned int device_id)
{
	MCI_STATUS_PARMS status;
	status.dwItem = MCI_STATUS_CURRENT_TRACK;
	mciSendCommand(device_id, MCI_STATUS, MCI_STATUS_ITEM | MCI_WAIT, (DWORD)&status);
	return status.dwReturn;
}

bool redbook_play(unsigned int device_id, int track)
{
	if (device_id != 0)
	{
		MCI_STATUS_PARMS status;
		status.dwItem = MCI_STATUS_POSITION;
		status.dwTrack = track;
		mciSendCommand(device_id, MCI_STATUS, MCI_STATUS_ITEM | MCI_TRACK | MCI_WAIT, (DWORD)&status);
		MCI_PLAY_PARMS play;
		play.dwFrom = status.dwReturn;
		play.dwTo = MUSIC_MOOD_CD_PLAY_TO_POSITION;
		mciSendCommand(device_id, MCI_PLAY, MCI_FROM, (DWORD)&play);
		return true;
	}
	return false;
}

bool redbook_stop(unsigned int device_id)
{
	if (device_id != 0)
		mciSendCommand(device_id, MCI_STOP, 0, 0);
	return true;
}

unsigned int redbook_numtracks(unsigned int device_id)
{
	MCI_STATUS_PARMS status;
	status.dwItem = MCI_STATUS_NUMBER_OF_TRACKS;
	mciSendCommand(device_id, MCI_STATUS, MCI_STATUS_ITEM | MCI_WAIT, (DWORD)&status);
	return status.dwReturn;
}

void MusicMood::SetNumTracks(int num_tracks)
{
	if (num_tracks != NumTracks)
	{
		MusicEmotion* emotions = NULL;
		if (num_tracks != 0)
		{
#ifdef VERSION_BW1W100
			emotions = new (__FILE__, 150) MusicEmotion[num_tracks];
#else
			emotions = new (__FILE__, 154) MusicEmotion[num_tracks];
#endif
			if (emotions != NULL)
			{
				if (Emotions != NULL)
					memcpy(emotions, Emotions, min(num_tracks, NumTracks) * sizeof(MusicEmotion));
			}
		}
		delete[] Emotions;
		Emotions = emotions;
		NumTracks = num_tracks;
	}
}

MusicMood::~MusicMood()
{
	delete[] Emotions;
}

MusicMood::MusicMood()
{
	Emotions = NULL;
	NumTracks = 0;
	MusicID = 0;
	LastPlayed = 0;
}

void MusicMoodController::Init()
{
	ReadDatabase(NULL, false);
	CleanMem();
}

void MusicMoodController::Close()
{
	CleanMem();
}
