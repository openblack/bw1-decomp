#ifndef BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#include "CameraMode.h" /* For struct CameraMode */
#include "Object.h"     /* For class Object */

// Forward Declares

class GCamera;
class GameOSFile;

class CameraModeFollowHeading : public CameraMode
{
public:
	Object* Target;
	float   Heading;
	float   Pitch;
	float   Distance;
	float   HeadingSpeed;

	// Override methods

	// BW1W120 0044d8e0 BW1M119 011a98f0
	virtual bool32_t IsStillValid() { return Target && Target->IsAvailable(); }
	// BW1W120 0044d900 BW1M119 011a9980
	virtual int GetSaveID() { return 72; }
	// BW1W120 0044d910 BW1M119 011a99d0
	virtual const char* GetDebugName() { return "Follow heading"; }
	// BW1W120 0044d920 BW1M119 011a9860
	virtual ~CameraModeFollowHeading() {}
	// BW1W120 0044d940 BW1M119 011a9da0
	virtual void Update();
	// BW1W120 0044dd60 BW1M119 011a9bf0
	virtual void Load(GameOSFile* file);
	// BW1W120 0044de60 BW1M119 011a9a20
	virtual void Save(GameOSFile* file);

	// Static methods

	// BW1W120 0044d840 BW1M119 null
	static CameraModeFollowHeading* Create(GCamera* camera, Object* target, float heading, float pitch, float distance,
	                                       float heading_speed);

	// Constructors

	// BW1W120 0044d8a0 BW1M119 011aa000
	CameraModeFollowHeading(GCamera* camera, Object* target, float heading, float pitch, float distance,
	                        float heading_speed);
};
static_assert(sizeof(CameraModeFollowHeading) == 0x1c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_FOLLOW_HEADING_INCLUDED_H */
