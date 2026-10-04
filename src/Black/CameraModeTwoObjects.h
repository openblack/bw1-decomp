#ifndef BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <re_common.h>                            /* For bool32_t */

#include "CameraMode.h" /* For struct CameraMode */

// Forward Declares

class GCamera;
class GameThingWithPos;

class CameraModeTwoObjects : public CameraMode
{
public:
	GameThingWithPos* Thing1;
	GameThingWithPos* Thing2;
	LHPoint           Point;
	bool32_t          HasThing2;
	float             Heading;
	float             Pitch;
	float             Zoom;
	bool32_t          Valid;

	// Override methods

	// BW1W120 00461c70 BW1M119 011b3400
	virtual ~CameraModeTwoObjects() {}
	// BW1W120 00461de0 BW1M119 011b3760
	virtual void Update();
	// BW1W120 00461d90 BW1M119 011b3b40
	virtual bool32_t IsStillValid();
	// BW1W120 00462330 BW1M119 011b3490
	virtual void ProcessKeyMovement(uint16_t key);
	// BW1W120 00461c50 BW1M119 011b3370
	virtual void Delete() { Valid = 0; }
	// BW1W120 00461c60 BW1M119 011b33b0
	virtual const char* GetDebugName() { return "Dual Cam"; }

	// Constructors

	// BW1W120 00461bb0 BW1M119 011b3e50
	CameraModeTwoObjects(GCamera* camera, GameThingWithPos* thing1, GameThingWithPos* thing2);
	// BW1W120 00461cb0 BW1M119 011b3c30
	CameraModeTwoObjects(GCamera* camera, GameThingWithPos* thing, LHPoint* point);

	// Non-virtual methods

	// BW1W120 00461c90 BW1M119 011b3de0
	void SetObjects(GameThingWithPos* thing1, GameThingWithPos* thing2);
};

static_assert(sizeof(CameraModeTwoObjects) == 0x30, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H */
