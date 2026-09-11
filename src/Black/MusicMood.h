#ifndef BW1_DECOMP_MUSIC_MOOD_INCLUDED_H
#define BW1_DECOMP_MUSIC_MOOD_INCLUDED_H

class MusicMoodController
{
public:
	// BW1W120 00633ef0 BW1M100 1008eb20 MusicMoodController::UpdateOnGameTurn(float, bool)
	static void UpdateOnGameTurn(float delta_time, bool reset);
};

#endif /* BW1_DECOMP_MUSIC_MOOD_INCLUDED_H */
