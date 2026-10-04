#ifndef BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <re_common.h> /* For bool32_t */

#include "CameraMode.h" /* For struct CameraMode */

// Forward Declares

class GCamera;
class Particle3DAnimWithCamera;

class CameraModePath : public CameraMode
{
public:
	Particle3DAnimWithCamera* Anim;
	float                     SavedNearClip;
	bool32_t                  Valid;

	// Override methods

	// BW1W120 00460ef0 BW1M119 011b1d60
	virtual ~CameraModePath() {}
	// BW1W120 00460fc0 BW1M119 011b1fa0
	virtual void Update();
	// BW1W120 00460f50 BW1M119 011b2090
	virtual void Restart();
	// BW1W120 00460ed0 BW1M119 011b1ce0
	virtual bool32_t IsStillValid() { return Valid; }
	// BW1W120 00460f60 BW1M119 011b2010
	virtual void Cleanup();
	// BW1W120 00460fe0 BW1M119 011b1df0
	virtual void ProcessKeyMovement(uint16_t key);
	// BW1W120 00460ee0 BW1M119 011b1d20
	virtual const char* GetDebugName() { return "Path"; }

	// Constructors

	// BW1W120 00460e50 BW1M119 011b2150
	CameraModePath(GCamera* camera, Particle3DAnimWithCamera* anim);

	// Non-virtual methods

	// BW1W120 00460f10 BW1M119 011b20e0
	void SetUpNearClipping();
};

static_assert(sizeof(CameraModePath) == 0x14, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_PATH_INCLUDED_H */
