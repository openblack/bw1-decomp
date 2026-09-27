#ifndef BW1_DECOMP_GAME_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_GAME_CONSTANTS_INCLUDED_H

// Metres per map cell; defined just before the days pair, read by Villager, GLandscape::Draw and Living.
const float MetresPerMapCell = 10.0f;
// Attitude-to-player decay; only real reader is CreatureMental::UpdateAttitudeToPlayerFromFeedback.
const float AttitudeFeedbackDecay = 0.7f;

// fabricated: stands in for the unknown uncalled header inline that forces AttitudeFeedbackDecay into .rdata.
inline float GetAttitudeFeedbackDecay()
{
	return AttitudeFeedbackDecay;
}

#endif /* BW1_DECOMP_GAME_CONSTANTS_INCLUDED_H */
