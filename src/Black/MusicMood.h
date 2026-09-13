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
	// BW1W120 0054b910 BW1M100 10018800 MusicMoodPacket::MusicMoodPacket(void)
	MusicMoodPacket();
};

class MusicMoodController
{
public:
	// BW1W120 00633ef0 BW1M100 1008eb20 MusicMoodController::UpdateOnGameTurn(float, bool)
	static void UpdateOnGameTurn(float delta_time, bool reset);
};

#endif /* BW1_DECOMP_MUSIC_MOOD_INCLUDED_H */
