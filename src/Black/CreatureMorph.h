#ifndef BW1_DECOMP_CREATURE_MORPH_INCLUDED_H
#define BW1_DECOMP_CREATURE_MORPH_INCLUDED_H

#include "Creature3D.h" /* For class LH3DCreature */

// Free functions

// BW1W120 004eebd0 BW1M119 01273ea0
void RotateSmoothly(float* angle, float target, float* speed, float acceleration, float time, float limit);
// BW1W120 004ec580 BW1M119 01276d40
void LogCAnim(CAnim* anim);

#endif /* BW1_DECOMP_CREATURE_MORPH_INCLUDED_H */
