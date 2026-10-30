#ifndef BW1_DECOMP_PHYSICS_DATA_INCLUDED_H
#define BW1_DECOMP_PHYSICS_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */

struct PhysicsData
{
	float Density;
	float SpringK;
	float DampK;
	float FrictionK;
	float RotDamp;
	float WindResist;
};

static_assert(sizeof(PhysicsData) == 0x18, "PhysicsData size is incorrect");

#endif /* BW1_DECOMP_PHYSICS_DATA_INCLUDED_H */
