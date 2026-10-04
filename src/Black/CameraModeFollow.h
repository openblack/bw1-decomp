#ifndef BW1_DECOMP_CAMERA_MODE_FOLLOW_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FOLLOW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <re_common.h>                            /* For bool32_t */

#include "CameraMode.h"       /* For struct CameraMode */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class GCamera;
class GameOSFile;

class CameraModeFollow : public CameraMode
{
public:
	GameThingWithPos* Target;
	float             Heading;
	float             Pitch;
	float             ViewingDistance;
	float             ZoomTimeScale;
	bool32_t          RelativeHeading;
	bool32_t          UseOffsets;
	LHPoint           FocusOffset;
	LHPoint           OriginOffset;
	int32_t           KeyMoveX;
	int32_t           KeyMoveY;
	bool32_t          AutoReposition;

	// Override methods (the inline ones are emitted in the order they are declared here)

	// BW1W120 0044b960 BW1M119 011a7720
	virtual bool32_t IsStillValid() { return Target && Target->IsAvailable(); }

	// New virtual methods

	// BW1W120 0044b980 BW1M119 011a77b0
	virtual GameThingWithPos* GetFocusThing() const { return Target; }

	// Override methods

	// BW1W120 0044b990 BW1M119 011a77f0
	virtual int GetSaveID() { return 70; }
	// BW1W120 0044b9a0 BW1M119 011a7830
	virtual const char* GetDebugName() { return "Follow"; }
	// BW1W120 0044b9b0 BW1M119 011a7870
	virtual bool32_t CanPlayerGestureWhenCameraMoving() { return true; }

	// New virtual methods

	// BW1W120 0044b9c0 BW1M119 011a78d0
	virtual long GetComputerPlayerFocus() { return -1; }
	// BW1W120 0044b9d0 BW1M119 011a7920
	virtual long GetComputerPlayerFollow() { return -1; }

	// Override methods

	// BW1W120 0044b9e0 BW1M119 011a7970
	virtual ~CameraModeFollow() {}
	// BW1W120 0044c160 BW1M119 0100b660
	virtual void Update();
	// BW1W120 0044bb10 BW1M119 0109c010
	virtual void Validate();
	// BW1W120 0044cfe0 BW1M119 011a8060
	virtual void ProcessKeyMovement(uint16_t key);
	// BW1W120 0044d3e0 BW1M119 011a7d40
	virtual void Load(GameOSFile* file);
	// BW1W120 0044d5f0 BW1M119 011a7a00
	virtual void Save(GameOSFile* file);

	// Static methods

	// BW1W120 0044b7a0 BW1M119 null
	static CameraModeFollow* Create(GCamera* camera, GameThingWithPos* target, float zoom_time_scale,
	                                bool32_t relative_heading, bool32_t use_offsets);

	// Constructors

	// BW1W120 0044b800 BW1M119 011a9210
	CameraModeFollow(GCamera* camera, GameThingWithPos* target, float zoom_time_scale, bool32_t relative_heading,
	                 bool32_t use_offsets);

	// Non-virtual methods

	// BW1W120 0044ba00 BW1M119 011a90d0
	void Set(GameThingWithPos* target);
	// BW1W120 0044ba90 BW1M119 011a8fb0
	void Set(GameThingWithPos* target, float viewing_distance);
	// BW1W120 0044bb30 BW1M119 011a87c0
	void SetToDestinationPosition();
};
static_assert(sizeof(CameraModeFollow) == 0x48, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_FOLLOW_INCLUDED_H */
