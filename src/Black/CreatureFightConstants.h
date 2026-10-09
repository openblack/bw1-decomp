#ifndef BW1_DECOMP_CREATURE_FIGHT_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_CREATURE_FIGHT_CONSTANTS_INCLUDED_H

// Life lost by the loser of a fight, scaled by how much fight health it lost (LH3DCreature::EndFighting).
const float FightLifeLossScale = 0.25f;
// Fight-health loss multiplier for a hit the victim blocked (LH3DCreature::DoFightActionAction).
const float BlockedHitLossScale = 0.1f;
// Fight-health loss per unit of hit strength for heavy, medium and light hits (LH3DCreature::DoFightActionAction).
const float HeavyHitLoss = 0.05f;
const float MediumHitLoss = 0.03f;
const float LightHitLoss = 0.03f;

#endif /* BW1_DECOMP_CREATURE_FIGHT_CONSTANTS_INCLUDED_H */
