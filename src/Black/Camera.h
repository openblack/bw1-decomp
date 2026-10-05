#ifndef BW1_DECOMP_CAMERA_INCLUDED_H
#define BW1_DECOMP_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/Zoomer.h>  /* For struct Zoomer, struct Zoomer3d */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class CameraMode;
class GameOSFile;
class GameThing;
struct MapCoords;

struct CameraStore
{
	LHPoint Position;
	LHPoint Focus;

	// Non-virtual methods

	// BW1W120 00441840 BW1M119 011a3b60
	void Set(LHPoint& position, LHPoint& focus);
};

class GCamera : public GameThingWithPos
{
public:
	// BW1W120 00442fe0 BW1M119 011a2410
	void        ClearCameraStack();
	CameraMode* modes[0xc];       /* 0x28 */
	int         ModeCurrentIndex; /* 0x58 */
	LHPoint     pos;
	float       time; /* 0x68 */
	float       TimeDelta;
	uint32_t    field_0x70;
	uint32_t    CameraDirty;
	uint8_t     field_0x78;
	uint8_t     field_0x79;
	uint8_t     field_0x7a;
	uint8_t     field_0x7b;
	uint32_t    field_0x7c;
	uint8_t     field_0x8c[0x8]; /* 0x80 */
	Zoomer3d    CameraHeadingZoomer;
	Zoomer3d    CameraOriginZoomer; /* 0x118 */
	Zoomer      FovZoomer;          /* 0x1a8 */

	// Override methods

	// BW1W120 00441b30 BW1M119 013e96b0
	virtual ~GCamera();
	// BW1W120 00441ee0 BW1M119 011a32e0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00443840 BW1M119 011a16f0
	virtual char* GetDebugText();
	// BW1W120 004433a0 BW1M119 011a1920
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 004430e0 BW1M119 011a1df0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00441b20 BW1M119 011a1390
	virtual uint32_t GetSaveType();
	// BW1W120 00441b00 BW1M119 01088650
	virtual bool32_t IsMoving() const;
	// BW1W120 00441af0 BW1M119 011a12d0
	virtual const char* GetText();
	// BW1W120 00441b10 BW1M119 011a1360
	virtual float GetHeight();

	// Static methods

	// BW1W120 00441f20 BW1M119 011a3260
	static float GetThingViewingDistance(GameThingWithPos* target);
	// BW1W120 00442810 BW1M119 01034fe0
	static void SetPointFromPointDistanceHeadingAndPitch(LHPoint* param_1, const LHPoint& point, float distance,
	                                                     float heading, float pitch);
	// BW1W120 00442860 BW1M119 011a2d80
	static float GetHeadingFromPoints(const LHPoint& origin, const LHPoint& focus);
	// BW1W120 004428d0 BW1M119 01080170
	static void GetHeadingAndPitchFromPoints(const LHPoint& origin, const LHPoint& heading, float* pitch, float* yaw);

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
	// BW1W120 00441e60 BW1M119 011a33a0
	float CalculateRotationAngleY();
	// BW1W120 00441f50 BW1M119 01091a90
	void Validate();
	// BW1W120 00441f80 BW1M119 0102f680
	void Update();
	// BW1W120 00442eb0 BW1M119 null
	bool32_t IsFollowing(GameThingWithPos* thing);
	// BW1W120 00442ef0 BW1M119 0102ddf0
	void UpdateGameThingWithPosData();
	// BW1W120 00443680 BW1M119 011a1840
	void SetCameraFov(float fov, float time);
	// BW1W120 004438c0 BW1M119 011a13d0
	void SetPositionAndFocus(const LHPoint& position, const LHPoint& focus);
	// BW1W120 inlined BW1M119 inlined
	CameraMode* GetCurrentMode() { return ModeCurrentIndex < 0 ? NULL : modes[ModeCurrentIndex]; }
};

#endif /* BW1_DECOMP_CAMERA_INCLUDED_H */
