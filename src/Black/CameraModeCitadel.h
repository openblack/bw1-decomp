#ifndef BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "CameraMode.h" /* For class CameraMode */

// Forward Declares

class GCamera;

class CameraModeCitadel : public CameraMode
{
public:
	// BW1W120 008c7684
	static const float DefaultDistance;
	// BW1W120 008c7688
	static const float Pitch;
	// BW1W120 008c768c
	static const float ZoomTime;

	LHPoint Focus;
	float   Heading;
	float   Distance;

	// Override methods

	// BW1W120 0044a370 BW1M119 null
	virtual ~CameraModeCitadel() {}
	// BW1W120 0044a3e0 BW1M119 null
	virtual void Restart();
	// BW1W120 0044a6c0 BW1M119 null
	virtual void ProcessKeyMovement(uint16_t key);
	// BW1W120 0044a360 BW1M119 null
	virtual const char* GetDebugName() { return "Citadel"; }

	// Constructors

	// BW1W120 0044a1a0 BW1M119 null
	CameraModeCitadel(GCamera* camera);
};

static_assert(sizeof(CameraModeCitadel) == 0x1c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_CITADEL_INCLUDED_H */
