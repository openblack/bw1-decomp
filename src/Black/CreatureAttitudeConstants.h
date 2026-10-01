#ifndef BW1_DECOMP_CREATURE_ATTITUDE_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_CREATURE_ATTITUDE_CONSTANTS_INCLUDED_H

// TODO: real filename unknown.
// Attitude-to-player decay; only real reader is CreatureMental::UpdateAttitudeToPlayerFromFeedback.
// Follows the GameTimeConstants.h pair in Object's and the VillagerReaction units' .rdata.
const float AttitudeFeedbackDecay = 0.7f;

// fabricated: stands in for the unknown uncalled header inline that forces AttitudeFeedbackDecay into .rdata.
inline float GetAttitudeFeedbackDecay()
{
	return AttitudeFeedbackDecay;
}

#endif /* BW1_DECOMP_CREATURE_ATTITUDE_CONSTANTS_INCLUDED_H */
