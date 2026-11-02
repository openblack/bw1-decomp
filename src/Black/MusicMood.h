#ifndef BW1_DECOMP_MUSIC_MOOD_INCLUDED_H
#define BW1_DECOMP_MUSIC_MOOD_INCLUDED_H

#define MUSIC_MOOD_CD_PLAY_TO_POSITION 5100000

struct MusicEmotion;

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
