#ifndef BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <re_common.h> /* For bool32_t */

#include "CameraMode.h" /* For struct CameraMode */

// Forward Declares

class GCamera;
class GroupBehaviour;

class CameraModeDance : public CameraMode
{
public:
	bool32_t        Valid; /* 0x8 */
	GroupBehaviour* Group; /* 0xc */

	// Override methods

	// BW1W120 0044ac30 BW1M119 011a74a0
	virtual ~CameraModeDance();
	// BW1W120 0044abd0 BW1M119 011a7160
	virtual bool32_t CanPlayerGestureWhenCameraMoving() { return true; }
	// BW1W120 0044ac90 BW1M119 011a7350
	virtual void Update();
	// BW1W120 0044ac40 BW1M119 011a73e0
	virtual bool32_t IsStillValid();
	// BW1W120 0044abe0 BW1M119 011a71b0
	virtual bool32_t CanExit() { return true; }
	// BW1W120 0044acd0 BW1M119 011a7270
	virtual void ProcessKeyMovement(uint16_t key);
	// BW1W120 0044abf0 BW1M119 011a71f0
	virtual void Delete() { Valid = 0; }
	// BW1W120 0044ac00 BW1M119 011a7230
	virtual const char* GetDebugName() { return "Dance"; }

	// Static methods

	// BW1W120 0044ab60 BW1M119 011a75e0
	static CameraModeDance* Create(GCamera* camera, GroupBehaviour* group);

	// Constructors

	// BW1W120 0044aba0 BW1M119 011a7530
	CameraModeDance(GCamera* camera, GroupBehaviour* group);
};

#endif /* BW1_DECOMP_CAMERA_MODE_DANCE_INCLUDED_H */
