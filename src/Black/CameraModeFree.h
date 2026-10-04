#ifndef BW1_DECOMP_CAMERA_MODE_FREE_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <re_common.h> /* For bool32_t */

#include "CameraMode.h" /* For struct CameraMode */

// Forward Declares

class GCamera;
class GameOSFile;

class CameraModeFree : public CameraMode
{
public:
	float Speed;
	int   KeyMoveX;
	int   KeyMoveY;
	int   KeyModifiers;

	// Override methods

	// BW1W120 0044e010 BW1M119 011aa170
	virtual ~CameraModeFree() {}
	// BW1W120 0044e040 BW1M119 011aa6f0
	virtual void Update();
	// BW1W120 0044e030 BW1M119 011aaf80
	virtual void Validate();
	// BW1W120 0044dfe0 BW1M119 011aa0b0
	virtual bool32_t IsStillValid() { return true; }
	// BW1W120 0044ea60 BW1M119 011aa550
	virtual void ProcessKeyMovement(uint16_t key);
	// BW1W120 0044dff0 BW1M119 011aa0f0
	virtual int GetSaveID() { return 101; }
	// BW1W120 0044ec30 BW1M119 011aa200
	virtual void Load(GameOSFile* file);
	// BW1W120 0044eb30 BW1M119 011aa3a0
	virtual void Save(GameOSFile* file);
	// BW1W120 0044e000 BW1M119 011aa130
	virtual const char* GetDebugName() { return "Free"; }

	// Constructors

	// BW1W120 0044df90 BW1M119 011aafc0
	CameraModeFree(GCamera* camera);
};

static_assert(sizeof(CameraModeFree) == 0x18, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_FREE_INCLUDED_H */
