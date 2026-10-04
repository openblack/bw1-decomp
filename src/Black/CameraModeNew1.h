#ifndef BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uint16_t, uint32_t */

#include <Lionhead/LH3DLib/development/LHCoord.h>  /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint */
#include <re_common.h>                             /* For bool32_t */

#include "CameraModeNew.h" /* For class CameraModeNew, struct CameraSmoother, struct CameraSmoother3d */

// Forward Declares

class GCamera;

struct CameraModeNew1Controller
{
	int              State;
	bool32_t         FlyingToTarget;
	int              WheelDelta;
	uint8_t          KeyMoving;
	bool32_t         FocusMoving;
	bool32_t         SkipNextUpdate;
	LHMatrix         ViewMatrix;
	LHCoord          DragMousePos;
	float            DragHeading;
	int              DragFrames;
	float            ScreenScale;
	LHPoint          Origin;
	LHPoint          Focus;
	LHPoint          DragPoint;
	float            ViewDistance;
	CameraSmoother   Distance;
	CameraSmoother3d FocusSmoother;
	CameraSmoother   ClearancePitch;
	CameraSmoother   Pitch;
	CameraSmoother   Heading;
	float            ForwardSpeed;
	float            SideSpeed;
	uint32_t         LastTick;

	// Constructors

	// BW1W120 inlined BW1M119 null
	CameraModeNew1Controller() {}

	// Destructors

	// BW1W120 0044f490 BW1M119 null
	~CameraModeNew1Controller();

	// Non-virtual methods

	// BW1W120 0044ef50 BW1M119 null
	static bool IsPositionValid(const LHPoint& position);
	// BW1W120 0044ef60 BW1M119 null
	bool32_t CheckClearance(float heading, float pitch);
	// BW1W120 0044f150 BW1M119 null
	void SetViewMatrix(const LHPoint& origin, const LHPoint& focus);
	// BW1W120 0044f350 BW1M119 null
	bool32_t GetGroundPointFromScreen(const LHCoord& screen, float* x, float* z);
	// BW1W120 0044f4b0 BW1M119 null
	float GetDistance(const LHPoint& origin, const LHPoint& focus);
	// BW1W120 0044f4f0 BW1M119 null
	float GetPitch(const LHPoint& origin, const LHPoint& focus);
	// BW1W120 0044f530 BW1M119 null
	float GetHeading(const LHPoint& origin, const LHPoint& focus);
	// BW1W120 0044f560 BW1M119 null
	void StartBlend(bool32_t enable, float speed);
	// BW1W120 0044f610 BW1M119 null
	void Init(LHPoint& origin, const LHPoint& focus);
	// BW1W120 0044f810 BW1M119 null
	void Update(float dt, bool search_clear);
	// BW1W120 004509f0 BW1M119 null
	void WrapHeading();
	// BW1W120 00450a00 BW1M119 null
	void SetFocus(const LHPoint& focus);
	// BW1W120 00450a40 BW1M119 null
	void SetOriginAndFocus(const LHPoint& origin, const LHPoint& focus);
	// BW1W120 00451ab0 BW1M119 null
	void FindBestFocus();
	// BW1W120 00451c10 BW1M119 null
	void EvaluateFocus(int x, int z, float* best_score, LHPoint* best_point, float* best_count);
};

static_assert(sizeof(CameraModeNew1Controller) == 0x118, "Data type is of wrong size");

class CameraModeNew1 : public CameraModeNew
{
public:
	LHPoint                  Origin;
	LHPoint                  Focus;
	LHPoint                  SavedOrigin;
	LHPoint                  SavedFocus;
	bool32_t                 RotateAboutOrigin;
	CameraModeNew1Controller Controller;

	// Static data

	// BW1W120 00c5b00c
	static float KeyHeldTime;

	// Override methods

	// BW1W120 00450d20 BW1M119 null
	virtual ~CameraModeNew1() {}
	// BW1W120 00451090 BW1M119 null
	virtual void Update();
	// BW1W120 00451a20 BW1M119 null
	virtual void Restart();
	// BW1W120 00450cf0 BW1M119 null
	virtual bool32_t IsStillValid() { return true; }
	// BW1W120 00451430 BW1M119 null
	virtual void ProcessKeyMovement(uint16_t key);
	// BW1W120 00450d10 BW1M119 null
	virtual const char* GetDebugName() { return "New1"; }
	// BW1W120 00450d00 BW1M119 null
	virtual LHPoint* GetOrigin() { return &Origin; }
	// BW1W120 00451380 BW1M119 null
	virtual void SetHeadingAndPitch(float heading, float pitch);
	// BW1W120 004513b0 BW1M119 null
	virtual void SetFocus(const LHPoint& focus);
	// BW1W120 00451230 BW1M119 null
	virtual void FlyTo(float x, float z, float distance, float pitch);

	// Constructors

	// BW1W120 00450b20 BW1M119 null
	CameraModeNew1(GCamera* camera, int param_2);
	// BW1W120 00450d50 BW1M119 null
	CameraModeNew1(GCamera* camera, const LHPoint& focus, float distance);
	// BW1W120 00450f00 BW1M119 null
	CameraModeNew1(GCamera* camera);
};

static_assert(sizeof(CameraModeNew1) == 0x188, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_NEW1_INCLUDED_H */
