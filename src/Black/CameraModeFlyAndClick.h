#ifndef BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "CameraMode.h" /* For class CameraMode */

// Forward Declares

class GCamera;

enum FLY_AND_CLICK_TYPE
{
	FLY_AND_CLICK_TYPE_CAMERA = 0,
	FLY_AND_CLICK_TYPE_ISLAND = 1,
	FLY_AND_CLICK_TYPE_CITADEL = 2,
};

class CameraModeFlyAndClick : public CameraMode
{
public:
	// Original names unknown; they are read from .rdata rather than folded as literals.
	// BW1W120 008c77e8
	static const float ClickDistance;
	// BW1W120 008c77f4
	static const float Pitch;
	// BW1W120 008c77f8
	static const float DefaultDistance;
	// BW1W120 008c77fc
	static const float MoveSpeed;
	// BW1W120 008c7800
	static const float ZoomTimes[3];
	// BW1W120 008c780c
	static const float CameraDistanceScale;

	FLY_AND_CLICK_TYPE Type;
	LHPoint            Focus;
	float              Heading;
	float              Distance;
	bool32_t           Valid;

	// Override methods

	// BW1W120 0044aee0 BW1M119 null
	virtual ~CameraModeFlyAndClick() {}
	// BW1W120 0044af00 BW1M119 null
	virtual void Update();
	// BW1W120 0044afd0 BW1M119 null
	virtual void Restart();
	// BW1W120 0044aec0 BW1M119 null
	virtual bool32_t IsStillValid() { return Valid; }
	// BW1W120 0044b4f0 BW1M119 null
	virtual void ProcessKeyMovement(uint16_t key);
	// BW1W120 0044aed0 BW1M119 null
	virtual const char* GetDebugName() { return "Fly and Click"; }

	// Constructors

	// BW1W120 0044ad60 BW1M119 null
	CameraModeFlyAndClick(GCamera* camera, FLY_AND_CLICK_TYPE type);

	// Non-virtual methods

	// BW1W120 0044b2c0 BW1M119 null
	void MoveToDestination();
};

static_assert(sizeof(CameraModeFlyAndClick) == 0x24, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_FLY_AND_CLICK_INCLUDED_H */
