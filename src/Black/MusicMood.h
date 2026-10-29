#ifndef BW1_DECOMP_MUSIC_MOOD_INCLUDED_H
#define BW1_DECOMP_MUSIC_MOOD_INCLUDED_H

#define MUSIC_MOOD_CD_PLAY_TO_POSITION 5100000

struct MusicEmotion
{
	float Mood;
	float Fear;
	// Inliner IL size: 32
	// BW1W120 inlined BW1M119 01114130
	MusicEmotion() { Reset(); }
	// Inliner IL size: 31
	// BW1W120 inlined BW1M119 0101b410
	void Reset()
	{
		Fear = 0.0f;
		Mood = 0.0f;
	}
};

struct MusicMoodPacket
{
	unsigned int Track;
	unsigned int NumTracks;
	unsigned int MusicID;
	MusicEmotion Emotion;
	// BW1W120 0054b910 BW1M119 0101b3a0
	MusicMoodPacket();
};

class Archive;

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

class MusicMoodController
{
public:
	// BW1W120 00d06438
	static unsigned int CreatureMusicMoodEnabled;
	// BW1W120 00634020 BW1M119 01114300
	static void Init();
	// BW1W120 00634040 BW1M119 011142a0
	static void Close();
	// BW1W120 00633ef0 BW1M119 01090dc0
	static void UpdateOnGameTurn(float delta_time, bool reset);
	// BW1W120 00634370 BW1M119 01113bf0
	static MusicEmotion* GetCurrentMusicEmotion();
	// BW1W120 00634230 BW1M119 01113d80
	static void WriteDatabase(Archive* archive);
	// BW1W120 006340e0 BW1M119 01113ef0
	static void ReadDatabase(Archive* archive, bool local_player);
	// BW1W120 00634300 BW1M119 01113c90
	static void CleanMem();
};

#endif /* BW1_DECOMP_MUSIC_MOOD_INCLUDED_H */
