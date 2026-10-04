#ifndef BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include "CameraMode.h" /* For struct CameraMode */

// Forward Declares

class Creature;
class GCamera;
class LH3DCreature;

class CameraModeCtrInteract : public CameraMode
{
public:
	uint32_t      field_0x8;
	Creature*     TheCreature;
	LH3DCreature* TheCreature3d;
	uint32_t      field_0x14;
	uint32_t      field_0x18;

	// Override methods

	// BW1W120 0044a940 BW1M119 011a6c40
	virtual ~CameraModeCtrInteract() {}
	// BW1W120 0044a960 BW1M119 011a6cd0
	virtual void Update();
	// BW1W120 0044a920 BW1M119 011a6bb0
	virtual bool32_t CanExit() { return false; }
	// BW1W120 0044a930 BW1M119 011a6bf0
	virtual const char* GetDebugName() { return "CtrInteract"; }

	// Constructors

	// BW1W120 0044a850 BW1M119 011a6fd0
	CameraModeCtrInteract(GCamera* camera, Creature* creature);
};

static_assert(sizeof(CameraModeCtrInteract) == 0x1c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_CTR_INTERACT_INCLUDED_H */
