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

class GCamera : public GameThingWithPos
{
public:
	CameraMode* modes[0xc];         /* 0x28 */
	int         mode_current_index; /* 0x58 */
	LHPoint     pos;
	float       time; /* 0x68 */
	float       time_delta;
	uint32_t    field_0x70;
	uint32_t    camera_dirty;
	uint8_t     field_0x78;
	uint8_t     field_0x79;
	uint8_t     field_0x7a;
	uint8_t     field_0x7b;
	uint32_t    field_0x7c;
	uint8_t     field_0x8c[0x8]; /* 0x80 */
	Zoomer3d    camera_heading_zoomer;
	Zoomer3d    camera_origin_zoomer; /* 0x118 */
	Zoomer      fov_zoomer;           /* 0x1a8 */

	// Override methods

	// BW1W120 00441b30 BW1M100 10378450 GCamera::_dt(void)
	virtual ~GCamera();
	// BW1W120 00441ee0 BW1M100 1019a0f0 GCamera::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00443840 BW1M100 10198640 GCamera::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 004433a0 BW1M100 10198870 GCamera::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 004430e0 BW1M100 10198d40 GCamera::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00441b20 BW1M100 101982e0 GCamera::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00441b00 BW1M100 10086270 GCamera::IsMoving( const(void))
	virtual bool IsMoving();
	// BW1W120 00441af0 BW1M100 101980f0 GCamera::GetText(void)
	virtual const char* GetText();
	// BW1W120 00441b10 BW1M100 101982b0 GCamera::GetHeight(void)
	virtual float GetHeight();

	// Static methods

	// BW1W120 00441f20 BW1M100 1019a070 GCamera::GetThingViewingDistance(GameThingWithPos *)
	static float GetThingViewingDistance(GameThingWithPos* target);
	// BW1W120 00442810 BW1M100 10032670 GCamera::SetPointFromPointDistanceHeadingAndPitch(LHPoint *, LHPoint const &, float, float, float)
	static void SetPointFromPointDistanceHeadingAndPitch(LHPoint* param_1, const LHPoint* point, float distance,
	                                                     float heading, float pitch);
	// BW1W120 004428d0 BW1M100 1007dbf0 GCamera::GetHeadingAndPitchFromPoints(LHPoint const &, LHPoint const &, float *, float *)
	static void GetHeadingAndPitchFromPoints(LHPoint* origin, LHPoint* heading, float* pitch, float* yaw);

	// Constructors

	// BW1W120 00441870 BW1M100 1019a720 GCamera::Camera(MapCoords&)
	GCamera(MapCoords* coords);

	// Non-virtual methods

	// BW1W120 00441b70 BW1M100 1019a650 GCamera::CantExitCurrentMode(void)
	bool CantExitCurrentMode();
	// BW1W120 00441cd0 BW1M100 1019a420 GCamera::SwitchToViewMode(CameraMode *)
	void SwitchToViewMode(CameraMode* mode);
	// BW1W120 00441d40 BW1M100 1008de30 GCamera::CheckStackedModesForValidity(void)
	void CheckStackedModesForValidity();
	// BW1W120 00441f50 BW1M100 1008f7f0 GCamera::Validate(void)
	void Validate();
	// BW1W120 00441f80 BW1M100 1002cbd0 GCamera::Update(void)
	void Update();
	// BW1W120 00442ef0 BW1M100 1002b280 GCamera::UpdateGameThingWithPosData(void)
	void UpdateGameThingWithPosData();
	// BW1W120 00443680 BW1M100 10198790 GCamera::SetCameraFov(float, float)
	void SetCameraFov(float fov, float time);
};

#endif /* BW1_DECOMP_CAMERA_INCLUDED_H */
