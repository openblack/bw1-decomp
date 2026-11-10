#ifndef BW1_DECOMP_CAMERA_MODE_CANNON_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_CANNON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "CameraMode.h" /* For class CameraMode */

// Forward Declares

class GCamera;

class CameraModeCannon : public CameraMode
{
public:
	// Static data

	// BW1WCI 00cced04 BW1MCI119 null
	static float CannonSize;
	// BW1WCI 00cced08 BW1MCI119 null
	static float CannonStrength;

	uint8_t field_0x8[0x24];

	// Constructors

	// BW1WCI 00450300 BW1MCI119 0162f580
	CameraModeCannon(GCamera* camera, float min_pitch, float max_pitch, float min_heading, float max_heading);
};
static_assert(sizeof(CameraModeCannon) == 0x2c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_CANNON_INCLUDED_H */
