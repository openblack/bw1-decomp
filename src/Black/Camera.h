#ifndef BW1_DECOMP_CAMERA_INCLUDED_H
#define BW1_DECOMP_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DTech.h>    /* For LH3DTech::g_camera */
#include <LHPoint.h>                                  /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/Zoomer.h>      /* For struct Zoomer, struct Zoomer3d */
#include <Lionhead/LH3DLib/development/WeatherInfo.h> /* For struct WeatherInfo */

#include "CameraStore.h"      /* For struct CameraStore */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

#define CAMERA_MODE_STACK_SIZE 12

// Forward Declares

class Base;
class CameraMode;
class GameOSFile;
class GameThing;
class Particle3DAnimWithCamera;
struct MapCoords;

class GCamera : public GameThingWithPos
{
public:
	// BW1W120 00442fe0 BW1M119 011a2410
	void        ClearCameraStack();
	CameraMode* modes[CAMERA_MODE_STACK_SIZE]; /* 0x28 */
	int         ModeCurrentIndex;              /* 0x58 */
	LHPoint     pos;
	float       time; /* 0x68 */
	float       TimeDelta;
	bool32_t    ScriptSlomoControl;
	uint32_t    CameraDirty;
	bool        IgnoreLandHeight;
	uint8_t     field_0x79;
	uint8_t     field_0x7a;
	uint8_t     field_0x7b;
	uint32_t    field_0x7c;
	WeatherInfo Weather; /* 0x80 */
	Zoomer3d    CameraHeadingZoomer;
	Zoomer3d    CameraOriginZoomer; /* 0x118 */
	Zoomer      FovZoomer;          /* 0x1a8 */

	// Override methods

	// BW1W120 00441ee0 BW1M119 011a32e0
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00443840 BW1M119 011a16f0
	virtual char* GetDebugText();
	// BW1W120 004433a0 BW1M119 011a1920
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 004430e0 BW1M119 011a1df0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00441af0 BW1M119 011a12d0
	virtual const char* GetText() { return "Camera"; }
	// BW1W120 00441b00 BW1M119 01088650
	virtual bool32_t IsMoving() const { return CameraDirty; }
	// BW1W120 00441b10 BW1M119 011a1360
	virtual float GetHeight() { return Pos.Altitude(); }
	// BW1W120 00441b20 BW1M119 011a1390
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCAMERA; }

	// Static methods

	// BW1W120 00441f20 BW1M119 011a3260
	static float GetThingViewingDistance(GameThingWithPos* target);
	// BW1W120 00442810 BW1M119 01034fe0
	static void SetPointFromPointDistanceHeadingAndPitch(LHPoint* result, const LHPoint& point, float distance,
	                                                     float heading, float pitch);
	// BW1W120 00442860 BW1M119 011a2d80
	static float GetHeadingFromPoints(const LHPoint& origin, const LHPoint& focus);
	// BW1W120 004428d0 BW1M119 01080170
	static void GetHeadingAndPitchFromPoints(const LHPoint& origin, const LHPoint& focus, float* heading, float* pitch);
	// BW1W120 00442980
	static void RotateOriginAroundFocus(LHPoint& origin, const LHPoint& focus, float heading_delta, float pitch_delta);
	// BW1W120 00442a20
	static void SetPointAtUnitDistance(LHPoint& point, const LHPoint& origin);
	// BW1W120 00442c20 BW1M119 01099720
	static bool32_t TranslatePointToScreen(float* x, float* y, LHPoint* point);
	// BW1W120 00443670 BW1M119 011a18e0
	static float GetDefaultFov();

	// Constructors

	// BW1W120 00441870 BW1M119 011a3950
	GCamera(MapCoords& coords);

	// Non-virtual methods

	// BW1W120 00441b70 BW1M119 011a3880
	bool32_t CantExitCurrentMode();
	// BW1W120 00441cd0 BW1M119 011a3650
	void SwitchToViewMode(CameraMode* mode);
	// BW1W120 00441c50 BW1M119 011a3770
	void PopViewMode();
	// BW1W120 00441d40 BW1M119 01090140
	void CheckStackedModesForValidity();
	// BW1W120 00441f40 BW1M119 011a3220
	void SetScriptSlomoControl(int control);
	// BW1W120 00441e60 BW1M119 011a33a0
	float CalculateRotationAngleY();
	// BW1W120 00441f50 BW1M119 01091a90
	void Validate();
	// BW1W120 00441f80 BW1M119 0102f680
	void Update();
	// BW1W120 00441b90
	void GetCameraStore(CameraStore& store);
	// BW1W120 00441c10
	void SetCameraStore(CameraStore& store);
	// BW1W120 00441ec0
	void GetPos(LHPoint& result);
	// BW1W120 00441e00 BW1M119 inlined
	void InvalidatePathMode(Particle3DAnimWithCamera* anim);
	// BW1W120 00442ab0
	float GetDistanceFromOrigin();
	// BW1W120 00442db0
	void SetHeadingAndPitch(float heading, float pitch);
	// BW1W120 00442df0
	uint32_t GetGameAngle();
	// BW1W120 00442e10
	void SetFocus(const LHPoint& focus, float time);
	// BW1W120 00442e50
	void SetFocus(const MapCoords& coords, float time);
	// BW1W120 00442eb0 BW1M119 null
	bool32_t IsFollowing(GameThingWithPos* thing);
	// BW1W120 00442ef0 BW1M119 0102ddf0
	void UpdateGameThingWithPosData();
	// BW1W120 00443050 BW1M119 01006af0
	bool32_t Arrived();
	// BW1W120 00443070 BW1M119 011a22a0
	float CalculatePitch();
	// BW1W120 00443680 BW1M119 011a1840
	void SetCameraFov(float fov, float time);
	// BW1W120 004438c0 BW1M119 011a13d0
	void SetPositionAndFocus(const LHPoint& position, const LHPoint& focus);
	// BW1W120 inlined BW1M119 011a1680
	void GetPosition(LHPoint& position) { position = LH3DTech::g_camera.pos; }
	// BW1W120 inlined BW1M119 011a1600
	void GetFocus(LHPoint& focus) { focus = LHPoint(LH3DTech::GetCameraTarget()); }
	// BW1W120 00442ce0 BW1M119 011a27b0
	void GetFocusVector(LHPoint& vector);
	// BW1W120 00442d10 BW1M119 01023410
	float GetDistanceSq(const LHPoint& point);
	// BW1W120 inlined BW1M119 inlined
	void GetUpVector(LHPoint& up);
	// BW1W120 00442d50 BW1M119 011a26b0
	float GetDistance(const LHPoint& point);
	// BW1W120 00442b00 BW1M119 01026b60
	void ClipToCameraRadius(LHPoint* point);
	// BW1W120 inlined BW1M119 inlined
	CameraMode* GetCurrentMode() { return ModeCurrentIndex < 0 ? NULL : modes[ModeCurrentIndex]; }
};

#endif /* BW1_DECOMP_CAMERA_INCLUDED_H */
