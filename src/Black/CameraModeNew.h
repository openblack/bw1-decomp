#ifndef BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <re_common.h>                            /* For bool32_t */

#include "Camera.h"     /* For class GCamera */
#include "CameraMode.h" /* For struct CameraMode */

struct CameraSmoother
{
	float    Current;
	float    Destination;
	float    Rate;
	float    Blend;
	float    BlendSpeed;
	bool32_t Blending;

	// Constructors

	// BW1W120 00450c80 BW1M119 null
	CameraSmoother()
	{
		Current = Destination = 0.0f;
		Rate = -5.0f;
		Blend = BlendSpeed = 0.0f;
		Blending = false;
	}

	// Non-virtual methods

	// BW1W120 0044ee30 BW1M119 null
	void Update(float dt);
	// BW1W120 0044ed50 BW1M119 null
	void WrapAngle();
};

static_assert(sizeof(CameraSmoother) == 0x18, "Data type is of wrong size");

struct CameraSmoother3d
{
	LHPoint  Current;     /* 0x0 */
	LHPoint  Destination; /* 0xc */
	float    Rate;        /* 0x18 */
	float    Blend;       /* 0x1c */
	float    BlendSpeed;  /* 0x20 */
	bool32_t Blending;    /* 0x24 */

	// Constructors

	// BW1W120 00454160 BW1M119 null
	CameraSmoother3d()
	{
		Current = Destination = LHPoint(0.0f, 0.0f, 0.0f);
		Rate = -5.0f;
		Blend = BlendSpeed = 0.0f;
		Blending = 0;
	}
	// BW1W120 inlined BW1M119 null
	CameraSmoother3d(const LHPoint& position)
	{
		Destination = position;
		Current = position;
		Rate = -5.0f;
		Blend = BlendSpeed = 0.0f;
		Blending = 0;
	}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 null
	void Reset(const LHPoint& position)
	{
		Destination = position;
		Current = position;
	}
	// BW1W120 inlined BW1M119 null
	void Set(const LHPoint& current, const LHPoint& destination)
	{
		Current = current;
		Destination = destination;
	}
	// BW1W120 0044ee90 BW1M119 null
	void Update(float dt);
};

static_assert(sizeof(CameraSmoother3d) == 0x28, "Data type is of wrong size");

class CameraModeNew : public CameraMode
{
public:
	LHPoint field_0x8;
	LHPoint field_0x14;
	LHPoint field_0x20;
	LHPoint field_0x2c;
	bool    SearchClear;

	// Virtual methods

	// BW1W120 00450cd0 BW1M119 null
	virtual ~CameraModeNew() {}
	virtual void Update() = 0;
	virtual void Restart() = 0;
	// BW1W120 00450ca0 BW1M119 null
	virtual bool32_t IsStillValid() { return true; }
	virtual void     ProcessKeyMovement(uint16_t key) = 0;
	// BW1W120 00450cc0 BW1M119 null
	virtual const char* GetDebugName() { return "New"; }
	// BW1W120 00450cb0 BW1M119 null
	virtual LHPoint* GetOrigin() { return &field_0x8; }
	virtual void     SetHeadingAndPitch(float heading, float pitch) = 0;
	virtual void     SetFocus(const LHPoint& focus) = 0;
	virtual void     FlyTo(float x, float z, float param_3, float param_4) = 0;

	// Constructors

	// BW1W120 inlined BW1M119 null
	CameraModeNew(GCamera* camera) : CameraMode(camera), SearchClear(false) {}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 null
	float GetTimeDelta() { return camera->TimeDelta; }
};

static_assert(sizeof(CameraModeNew) == 0x3c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_NEW_INCLUDED_H */
