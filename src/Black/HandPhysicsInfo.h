#ifndef BW1_DECOMP_HAND_PHYSICS_INFO_INCLUDED_H
#define BW1_DECOMP_HAND_PHYSICS_INFO_INCLUDED_H

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

struct HandPhysicsInfo
{
	LHPoint ThrowVelocity;
	LHPoint ThrowAngularVelocity;
	LHPoint HandPos;
	LHPoint HandAngles;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	HandPhysicsInfo()
	{
		ThrowAngularVelocity.SetNull();
		HandAngles.x = HandAngles.y = HandAngles.z = 0.0f;
	}
};

#endif /* BW1_DECOMP_HAND_PHYSICS_INFO_INCLUDED_H */
