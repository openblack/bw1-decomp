#ifndef BW1_DECOMP_CAMERA_MODE_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For uint16_t, uint32_t */
#include <re_common.h> /* For bool32_t */

enum CAMERA_MODE_HAND_STATUS
{
	CAMERA_MODE_HAND_STATUS_NORMAL = 0x0,
	CAMERA_MODE_HAND_STATUS_ZOOMING = 0x1,
	CAMERA_MODE_HAND_STATUS_TILT_ON = 0x2,
	CAMERA_MODE_HAND_STATUS_GRABBING_LAND = 0x3,
	CAMERA_MODE_HAND_STATUS_PANNING = 0x4,
	CAMERA_MODE_HAND_STATUS_TILTING = 0x5,
	CAMERA_MODE_HAND_STATUS_0x6 = 0x6,
	CAMERA_MODE_HAND_STATUS_0x7 = 0x7,
	CAMERA_MODE_HAND_STATUS_0x8 = 0x8,
	_CAMERA_MODE_HAND_STATUS_COUNT = 0x9
};

enum CAMERA_MODE_MOUSE_STATUS
{
	CAMERA_MODE_MOUSE_STATUS_NONE = 0x0,
	CAMERA_MODE_MOUSE_STATUS_LEFT = 0x1,
	CAMERA_MODE_MOUSE_STATUS_MIDDLE = 0x2,
	_CAMERA_MODE_MOUSE_STATUS_COUNT = 0x3
};

// Forward Declares

class GCamera;
class GameOSFile;
struct LHCoord;

class CameraMode
{
public:
	GCamera* camera;

	// Virtual methods

	// BW1W120 0044a3c0 BW1M119 011a2510
	virtual ~CameraMode() {}
	// BW1W120 0044a290 BW1M119 011a3c10
	virtual bool32_t CanPlayerGestureWhenCameraMoving() { return false; }
	// BW1W120 0044a2a0 BW1M119 011a30a0
	virtual void Update() {}
	// BW1W120 0044a2b0 BW1M119 011a31f0
	virtual void Validate() {}
	// BW1W120 0044a390 BW1M119 011a35e0
	virtual void Restart() {}
	// BW1W120 0044a2c0 BW1M119 011a3610
	virtual bool32_t IsStillValid() { return true; }
	// BW1W120 0044a2d0 BW1M119 011a2580
	virtual void Cleanup() {}
	// BW1W120 0044a2e0 BW1M119 011a3910
	virtual bool32_t CanExit() { return true; }
	// BW1W120 0044a2f0 BW1M119 011a3c60
	virtual bool32_t MouseIsLocked() { return false; }
	// BW1W120 0044a300 BW1M119 011a3ca0
	virtual void GetMousePos(LHCoord* pos) {}
	// BW1W120 0044a3a0 BW1M119 011a3ce0
	virtual void ProcessKeyMovement(uint16_t key) {}
	// BW1W120 0044a310 BW1M119 011a3d20
	virtual void ProcessMouseMovement() {}
	// BW1W120 0044a320 BW1M119 011a3d60
	virtual void Delete() {}
	// BW1W120 00441700 BW1M119 010236d0
	virtual bool32_t Arrived();
	// BW1W120 0044a330 BW1M119 011a2260
	virtual int GetSaveID() { return 0; }
	// BW1W120 0044a340 BW1M119 011a1db0
	virtual void Load(GameOSFile* file) {}
	// BW1W120 0044a350 BW1M119 011a2220
	virtual void Save(GameOSFile* file) {}
	// BW1W120 0044a3b0 BW1M119 011a3d90
	virtual const char* GetDebugName() { return "Base Class"; }

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CameraMode(GCamera* camera) : camera(camera) {}
};

#endif /* BW1_DECOMP_CAMERA_MODE_INCLUDED_H */
