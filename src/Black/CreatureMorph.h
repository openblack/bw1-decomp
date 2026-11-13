#ifndef BW1_DECOMP_CREATURE_MORPH_INCLUDED_H
#define BW1_DECOMP_CREATURE_MORPH_INCLUDED_H

#include "Creature3D.h" /* For class LH3DCreature */

#define ROTATE_SMOOTHLY_EPSILON 0.0001f

// Free functions

// BW1W120 004eebd0 BW1M119 01273ea0
void RotateSmoothly(float* angle, float target, float* speed, float acceleration, float time, float limit);
// BW1W120 004ed180 BW1M119 01275e70
unsigned long MixWithSnowColour(unsigned long colour, LHPoint& pos);
// BW1W120 004ec570 BW1M119 null
void LogCFrame(CFrame* frame);
// BW1W120 004ec580 BW1M119 01276d40
void LogCAnim(CAnim* anim);

#endif /* BW1_DECOMP_CREATURE_MORPH_INCLUDED_H */
