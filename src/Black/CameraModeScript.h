#ifndef BW1_DECOMP_CAMERA_MODE_SCRIPT_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <chlasm/CameraPosEnum.h> /* For enum SCRIPT_PATH */
#include <re_common.h>            /* For bool32_t */

#include "CameraModeFollow.h" /* For class CameraModeFollow */

// Forward Declares

class GCamera;
class GameThingWithPos;
struct LHPoint;
struct ScriptedCamera;

class CameraModeScript : public CameraModeFollow
{
public:
	bool32_t          Valid;
	GameThingWithPos* FocusThing;
	long              ComputerPlayerFocus;
	long              ComputerPlayerFollow;
	ScriptedCamera*   Path;
	long              PathTime;

	// Override methods

	// BW1W120 004611d0 BW1M119 0109bfd0
	virtual bool32_t IsStillValid() { return Valid; }
	// BW1W120 004611e0 BW1M119 011b23a0
	virtual void Delete() { Valid = 0; }
	// BW1W120 004611f0 BW1M119 01005b80
	virtual GameThingWithPos* GetFocusThing() const { return FocusThing ? FocusThing : Target; }
	// BW1W120 00461200 BW1M119 01005be0
	virtual long GetComputerPlayerFocus() { return ComputerPlayerFocus; }
	// BW1W120 00461210 BW1M119 01005c30
	virtual long GetComputerPlayerFollow() { return ComputerPlayerFollow; }
	// BW1W120 00461220 BW1M119 011b26c0
	virtual bool32_t CanPlayerGestureWhenCameraMoving() { return false; }
	// BW1W120 00461230 BW1M119 011b2720
	virtual const char* GetDebugName() { return "Script"; }
	// BW1W120 00461240 BW1M119 011b22a0
	virtual ~CameraModeScript() { ReleasePath(); }
	// BW1W120 00461270 BW1M119 0109c0a0
	virtual void Validate();
	// BW1W120 00461290 BW1M119 0100b5f0
	virtual void Update();
	// BW1W120 00461b40 BW1M119 01006b80
	virtual bool32_t Arrived();
	// BW1W120 00461b70 BW1M119 011b2760
	virtual bool32_t CanExit();

	// Static methods

	// BW1W120 00461140 BW1M119 011b32d0
	static CameraModeScript* Create(GCamera* camera);

	// Constructors

	// BW1W120 00461180 BW1M119 011b3220
	CameraModeScript(GCamera* camera);

	// Non-virtual methods

	// BW1W120 004612b0 BW1M119 011b2fa0
	void SetCameraFocus(const LHPoint& focus);
	// BW1W120 00461370 BW1M119 011b2ec0
	void SetCameraPosition(const LHPoint& position);
	// BW1W120 00461430 BW1M119 011b2dd0
	void MoveCameraFocus(const LHPoint& focus, float time);
	// BW1W120 004616f0 BW1M119 011b2cd0
	void MoveCameraPosition(const LHPoint& position, float time);
	// BW1W120 004619b0 BW1M119 011b2bf0
	void SetCameraFocus(GameThingWithPos* thing);
	// BW1W120 004619f0 BW1M119 011b2b40
	void SetCameraFocusComputerPlayer(long player);
	// BW1W120 00461a10 BW1M119 011b2a90
	void SetCameraPositionComputerPlayer(long player);
	// BW1W120 00461a30 BW1M119 011b2a00
	void Reset();
	// BW1W120 00461a60 BW1M119 inlined
	void ReleasePath();
	// BW1W120 00461a80 BW1M119 011b2970
	void SetCameraPath(SCRIPT_PATH path);
	// BW1W120 00461ab0 BW1M119 011b2880
	void UpdatePath();
};
static_assert(sizeof(CameraModeScript) == 0x60, "Data type is of wrong size");

#endif /* BW1_DECOMP_CAMERA_MODE_SCRIPT_INCLUDED_H */
