#ifndef BW1_DECOMP_P_SYS_PROCESS_INFO_INCLUDED_H
#define BW1_DECOMP_P_SYS_PROCESS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

struct PSysProcessInfo
{
	struct LHPoint InterfacePosition; /* 0x0 */
	struct LHPoint GesturePosition;
	struct LHPoint CameraForwardUnitVector; /* 0x18 */
	struct LHPoint HandVelocity;            /* 0x24 */
	float          Strength;
	float          GestureAngularVelocity;
	bool           Active; /* 0x38 */

	// BW1W120 inlined BW1M119 inlined
	PSysProcessInfo()
		: InterfacePosition(0.0f, 0.0f, 0.0f), GesturePosition(0.0f, 0.0f, 0.0f),
		  CameraForwardUnitVector(0.0f, 0.0f, 0.0f), HandVelocity(0.0f, 0.0f, 0.0f), Strength(1.0f),
		  GestureAngularVelocity(0.0f), Active(true)
	{
	}
};
static_assert(sizeof(PSysProcessInfo) == 0x3c, "Data type is of wrong size");

#endif /* BW1_DECOMP_P_SYS_PROCESS_INFO_INCLUDED_H */
