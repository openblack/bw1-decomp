#ifndef BW1_DECOMP_MUSIC_MOOD_INCLUDED_H
#define BW1_DECOMP_MUSIC_MOOD_INCLUDED_H

struct MusicEmotion
{
	float field_0x0;
	float field_0x4;
	void  Reset()
	{
		field_0x4 = 0.0f;
		field_0x0 = 0.0f;
	}
};

struct MusicMoodPacket
{
	unsigned int field_0x0;
	unsigned int field_0x4;
	unsigned int field_0x8;
	MusicEmotion Emotion;
	// BW1W120 0054b910 BW1M119 0101b3a0
	MusicMoodPacket();
};

class MusicMoodController
{
public:
	// Descriptive name for the CreatureMusicMood option.
	// BW1W120 00d06438
	static unsigned int CreatureMusicMoodEnabled;
	// BW1W120 00634040 BW1M119 011142a0
	static void Close();
	// BW1W120 00633ef0 BW1M119 01090dc0
	static void UpdateOnGameTurn(float delta_time, bool reset);
};

#endif /* BW1_DECOMP_MUSIC_MOOD_INCLUDED_H */
