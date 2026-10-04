#ifndef BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For atan360 */
#include <Lionhead/LH3DLib/development/LHCoord.h>  /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint */
#include <re_common.h>                             /* For bool32_t */

#include "CameraModeNew.h" /* For class CameraModeNew, struct CameraSmoother, struct CameraSmoother3d */

// Forward Declares

class GCamera;

enum CAMERA_NEW2_PARAM
{
	CAMERA_NEW2_PARAM_FLY_PITCH_BALANCE = 0x0,
	CAMERA_NEW2_PARAM_VELOCITY_DAMPING = 0x1,
	CAMERA_NEW2_PARAM_POSITION_SMOOTHING = 0x2,
	CAMERA_NEW2_PARAM_TIME_FOR_MAX_SPEED = 0x3,
	CAMERA_NEW2_PARAM_CAMERA_SIZE = 0x4,
	CAMERA_NEW2_PARAM_CLOSEST_ZOOM = 0x5,
	CAMERA_NEW2_PARAM_DOUBLE_CLICK_ZOOM = 0x6,
	CAMERA_NEW2_PARAM_DOUBLE_CLICK_FLY_SPEED = 0x7,
	CAMERA_NEW2_PARAM_AI_LOOK_DOWN_AMOUNT = 0x8,
	CAMERA_NEW2_PARAM_LOOKAHEAD_FOR_HILLS = 0x9,
	CAMERA_NEW2_PARAM_INTO_FLY_SPEED = 0xa,
	CAMERA_NEW2_PARAM_AUTO_STRAFE_AMOUNT = 0xb,
	CAMERA_NEW2_PARAM_PITCH_SENS = 0xc,
	CAMERA_NEW2_PARAM_KB_ZOOM_SENS = 0xd,
	CAMERA_NEW2_PARAM_KB_SPIN_SENS = 0xe,
	CAMERA_NEW2_PARAM_FORWARD_SPEED = 0xf,
	CAMERA_NEW2_PARAM_BACKWARD_SPEED = 0x10,
	CAMERA_NEW2_PARAM_STRAFE_SPEED = 0x11,
	CAMERA_NEW2_PARAM_TURN_SENS = 0x12,
	CAMERA_NEW2_PARAM_MAX_DRAG_SPEED = 0x13,
	CAMERA_NEW2_PARAM_OUT_OF_FLY_SPEED = 0x14,
	CAMERA_NEW2_PARAM_INTO_BACKUP_SPEED = 0x15,
	CAMERA_NEW2_PARAM_LIFT_RATE_WHEN_BACKING = 0x16,
	_CAMERA_NEW2_PARAM_COUNT = 0x17
};

struct CameraModeNew2Param
{
	CAMERA_NEW2_PARAM Index;
	const char*       Name;
	float             Default;
	float             Min;
	float             Max;
};

static_assert(sizeof(CameraModeNew2Param) == 0x14, "Data type is of wrong size");

struct CameraModeNew2Sphere
{
	LHPoint Position;
	float   Radius;
};

static_assert(sizeof(CameraModeNew2Sphere) == 0x10, "Data type is of wrong size");

struct CameraModeNew2Controller
{
	bool32_t             FlyingToTarget;
	CameraModeNew2Sphere Spheres[0x20];
	int                  SphereCount;
	float                Params[_CAMERA_NEW2_PARAM_COUNT];
	bool32_t             InvertPitch;
	float                FlyBlend;
	float                FlyPitch;
	float                BasePitch;
	float                BackupPitch;
	bool32_t             AutoPitch;
	float                MouseX;
	float                MouseY;
	int                  DragState;
	LHPoint              DragPoint;
	float                DragDistance;
	float                DragDepth;
	LHCoord              DragMousePos;
	CameraSmoother       Heading;
	CameraSmoother       Pitch;
	float                SpeedRamp;
	CameraSmoother3d     OriginSmoother;
	LHPoint              Origin;
	LHPoint              Focus;
	LHPoint              Forward;
	LHPoint              FlatForward;
	LHPoint              Velocity;

	// Static data

	static CameraModeNew2Param ParamTable[_CAMERA_NEW2_PARAM_COUNT];

	// Constructors

	// BW1W120 inlined BW1M119 null
	CameraModeNew2Controller() {}

	// Destructors

	// BW1W120 00452390 BW1M119 null
	~CameraModeNew2Controller();

	// Non-virtual methods

	// BW1W120 inlined BW1M119 null
	float GetHeading(const LHPoint& origin, const LHPoint& focus)
	{
		return atan360(focus.z - origin.z, focus.x - origin.x);
	}
	// BW1W120 inlined BW1M119 null
	float GetPitch(const LHPoint& origin, const LHPoint& focus)
	{
		return -atan360(origin.GetDistance2D(focus), origin.y - focus.y);
	}
	// BW1W120 00451c50 BW1M119 null
	void ResetParams();
	// BW1W120 00451c70 BW1M119 null
	void LoadParams(const char* filename);
	// BW1W120 00451ce0 BW1M119 null
	void SaveParams(const char* filename);
	// BW1W120 00451d50 BW1M119 null
	void StartBlend(bool32_t enable, float speed);
	// BW1W120 00451de0 BW1M119 null
	void Init(const LHPoint& origin, const LHPoint& focus);
	// BW1W120 00451f20 BW1M119 null
	void UpdatePitchForHills(float dt);
	// BW1W120 004520f0 BW1M119 null
	void GetDirections(float heading, float pitch, LHPoint* forward, LHPoint* flat_forward);
	// BW1W120 00452180 BW1M119 null
	void UpdateAnglesFromFocus();
	// BW1W120 00452260 BW1M119 null
	void UpdateFocusFromAngles();
	// BW1W120 004523a0 BW1M119 null
	void Collide(LHPoint& position);
	// BW1W120 004525c0 BW1M119 null
	void ClearSpheres();
	// BW1W120 004525d0 BW1M119 null
	void UpdatePhysics(float dt);
	// BW1W120 00452850 BW1M119 null
	void Update(float dt);
	// BW1W120 00453f70 BW1M119 null
	void SetFocus(const LHPoint& focus);
	// BW1W120 00453fc0 BW1M119 null
	void SetOriginAndFocus(const LHPoint& origin, const LHPoint& focus);
};

static_assert(sizeof(CameraModeNew2Controller) == 0x33c, "Data type is of wrong size");

class CameraModeNew2 : public CameraModeNew
{
public:
	LHPoint                  Origin;
	LHPoint                  Focus;
	LHPoint                  SavedOrigin;
	LHPoint                  SavedFocus;
	CameraModeNew2Controller Controller;

	// Override methods

	// BW1W120 004541f0 BW1M119 null
	virtual ~CameraModeNew2() {}
	// BW1W120 00454440 BW1M119 null
	virtual void Update();
	// BW1W120 004547b0 BW1M119 null
	virtual void Restart();
	// BW1W120 004541c0 BW1M119 null
	virtual bool32_t IsStillValid() { return true; }
	// BW1W120 004547a0 BW1M119 null
	virtual void ProcessKeyMovement(uint16_t key);
	// BW1W120 004541e0 BW1M119 null
	virtual const char* GetDebugName() { return "New2"; }
	// BW1W120 004541d0 BW1M119 null
	virtual LHPoint* GetOrigin() { return &Origin; }
	// BW1W120 00454780 BW1M119 null
	virtual void SetHeadingAndPitch(float heading, float pitch);
	// BW1W120 00454790 BW1M119 null
	virtual void SetFocus(const LHPoint& focus);
	// BW1W120 004545e0 BW1M119 null
	virtual void FlyTo(float x, float z, float distance, float pitch);

	// Constructors

	// BW1W120 00454040 BW1M119 null
	CameraModeNew2(GCamera* camera, int param_2);
	// BW1W120 00454220 BW1M119 null
	CameraModeNew2(GCamera* camera, const LHPoint& focus, float distance);
	// BW1W120 00454330 BW1M119 null
	CameraModeNew2(GCamera* camera);
};

static_assert(sizeof(CameraModeNew2) == 0x3a8, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_NEW2_INCLUDED_H */
