#ifndef BW1_DECOMP_CREATURE_FACE_INCLUDED_H
#define BW1_DECOMP_CREATURE_FACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

struct CreatureFaceState
{
	int      TimeSinceFace;
	float    FaceInterval;
	uint32_t RandomOffset;

	// BW1W120 004c8490 BW1M119 0123b500
	CreatureFaceState();
};
static_assert(sizeof(CreatureFaceState) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_FACE_INCLUDED_H */
