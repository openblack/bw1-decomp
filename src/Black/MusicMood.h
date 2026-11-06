#ifndef BW1_DECOMP_MUSIC_MOOD_INCLUDED_H
#define BW1_DECOMP_MUSIC_MOOD_INCLUDED_H

#define MUSIC_MOOD_CD_PLAY_TO_POSITION 5100000

struct MusicEmotion;

// BW1W120 00633ae0 BW1M119 01114840
bool redbook_status(unsigned int device_id);
// BW1W120 00633b30 BW1M119 011147d0
unsigned int redbook_gettrack(unsigned int device_id);
// BW1W120 00633b60 BW1M119 01114720
bool redbook_play(unsigned int device_id, int track);
// BW1W120 00633bd0 BW1M119 011146c0
bool redbook_stop(unsigned int device_id);
// BW1W120 00633bf0 BW1M119 01114650
unsigned int redbook_numtracks(unsigned int device_id);

struct MusicMood
{
	unsigned long MusicID;
	unsigned long LastPlayed;
	int           NumTracks;
	MusicEmotion* Emotions;
	MusicMood*    Next;

	// BW1W120 00633df0 BW1M119 null
	MusicMood();
	// BW1W120 00633de0 BW1M119 null
	~MusicMood();
	// BW1W120 00633d50 BW1M119 null
	void SetNumTracks(int num_tracks);
};

#endif /* BW1_DECOMP_MUSIC_MOOD_INCLUDED_H */
