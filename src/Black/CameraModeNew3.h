#ifndef BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h>  /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint, struct Point2D */
#include <Lionhead/LH3DLib/development/Zoomer.h>   /* For struct Zoomer, struct Zoomer3d */
#include <re_common.h>                             /* For bool32_t */

#include "CameraMode.h" /* For enum CAMERA_MODE_HAND_STATUS, enum CAMERA_MODE_MOUSE_STATUS, struct CameraMode, struct CameraModeVftable */

// Forward Declares

struct CameraExclusion;
class GArena;
class GCamera;

class CameraModeNew3 : public CameraMode
{
public:
	enum fight_status_t
	{
		fight_status_t_0x0 = 0x0,
		fight_status_t_0x1 = 0x1,
		fight_status_t_0x2 = 0x2,
		_fight_status_t_COUNT = 0x3
	};

	uint32_t                 field_0x8;
	LHPoint                  origin;
	LHPoint                  heading; /* 0x18 */
	LHPoint                  field_0x24;
	LHPoint                  field_0x30;
	uint32_t                 field_0x3c;
	uint32_t                 field_0x40;
	bool32_t                 HasFight;
	GArena*                  arena;
	uint8_t                  field_0x4c;
	uint8_t                  field_0x4d;
	uint8_t                  field_0x4e;
	uint8_t                  field_0x4f;
	float                    Yaw0; /* 0x50 */
	float                    Pitch0;
	float                    FightDistance;
	int                      FightTimeLeft;
	int                      TimeInArena; /* 0x60 */
	fight_status_t           FightStatus;
	LHPoint                  field_0x68;
	float                    field_0x74;
	float                    ElapsedTime;
	LHPoint                  RotatePoint;
	bool                     RotateAroundPoint; /* 0x88 */
	CAMERA_MODE_MOUSE_STATUS MouseButtons;
	uint32_t                 Tricon0x90;
	uint32_t                 Tricon0x94;
	Point2D                  FromScreenCentre;
	Point2D                  FromScreenCentreAbs; /* 0xa0 */
	LHCoord                  MouseDelta;
	LHCoord                  MousePosCurrent; /* 0xb0 */
	LHCoord                  RotateAroundMousePos;
	LHCoord                  MousePos1; /* 0xc0 */
	bool                     ScreenCentreHit;
	LHPoint                  MouseHitPoint;
	LHPoint                  LastGrabMouseHitPoint; /* 0xd8 */
	float                    Yaw1;                     /* 0xe4 */
	float                    Pitch1;
	float                    PerpDistance0xec;
	LHPoint                  ScreenCentreHitPoint; /* 0xf0 */
	float                    Distance0xfc;
	uint8_t                  field_0x100;
	uint8_t                  field_0x101;
	uint8_t                  field_0x102;
	uint8_t                  field_0x103;
	LHPoint                  field_0x104;
	LHPoint                  field_0x110;
	LHPoint                  field_0x11c;
	int                      field_0x128;
	LHPoint                  Heading0x12c;
	LHPoint                  field_0x138;
	bool                     HandHit; /* 0x144 */
	uint8_t                  field_0x145;
	uint8_t                  field_0x146;
	uint8_t                  field_0x147;
	bool                     Hit0x148;
	LHPoint                  field_0x14c;
	double                   field_0x158;
	LHPoint                  field_0x160;
	LHPoint                  field_0x16c;
	LHMatrix                 field_0x178;
	float                    Distance0x1a8;
	CAMERA_MODE_HAND_STATUS  HandStatus;
	LHCoord                  field_0x1b0;
	Point2D                  field_0x1b8;
	float                    Length0x1c0;
	float                    VerticalDistance;
	LHPoint                  FallbackOrigin;
	LHPoint                  FallbackHeading; /* 0x1d4 */
	LHPoint                  field_0x1e0;
	LHPoint                  Origin0x1ec;
	LHPoint                  field_0x1f8;
	LHPoint                  Heading0x204;
	Zoomer                   field_0x210;
	Zoomer3d                 field_0x240;
	bool                     field_0x2d0;
	uint8_t                  field_0x2d1;
	uint8_t                  field_0x2d2;
	uint8_t                  field_0x2d3;
	LHCoord                  MousePosPrevious;
	LHCoord                  field_0x2dc;
	float                    HeadingDistance; /* 0x2e4 */
	float                    IdleTime;
	int                      field_0x2ec;
	int                      field_0x2f0;
	CameraExclusion*         camera_exclusion;
	uint32_t                 field_0x2f8;
	uint32_t                 field_0x2fc;

	// Override methods

	// BW1W120 0045a960 BW1M100 1003a4f0 CameraModeNew3::Update(void)
	virtual void Update();

	// Static methods

	// BW1W120 00458db0 BW1M100 1007c250 CameraModeNew3::CalcPerpDistance(LHPoint &, LHPoint &, LHPoint &)
	static float CalcPerpDistance(LHPoint* param_1, LHPoint* param_2, LHPoint* param_3);
	// BW1W120 00458f40 BW1M100 10062a70 CameraModeNew3::FindBestAngle(float, float, LHPoint &, float &, float *)
	static float FindBestAngle(float param_1, float param_2, float* param_3, float* param_4, float* param_5);

	// Constructors

	// BW1W120 004572e0 BW1M100 101a6040 CameraModeNew3::CameraModeNew3(GCamera *)
	CameraModeNew3(GCamera* camera);

	// Non-virtual methods

	// BW1W120 00459230 BW1M100 10025a60 CameraModeNew3::UpdateTricons(void)
	void UpdateTricons();
	// BW1W120 00459610 BW1M100 101a4670 CameraModeNew3::UpdateClickParams(LHPoint &, LHPoint &, bool)
	void UpdateClickParams(const LHPoint* param_1, const LHPoint* param_2, bool param_3);
	// BW1W120 00459c30 BW1M100 10037970 CameraModeNew3::
	float GetAltitude(LHPoint* param_1);
	// BW1W120 00459d20 BW1M100 101a4380 CameraModeNew3::SetAltitudeAndNormal(LHPoint &, LHPoint &)
	void SetAltitudeAndNormal(LHPoint* param_1, LHPoint* normal);
	// BW1W120 00459f10 BW1M100 1007e670 CameraModeNew3::DragFocusOntoLand(LHPoint &, LHPoint &)
	void DragFocusOntoLand(LHPoint* param_1, LHPoint* param_2);
	// BW1W120 0045a080 BW1M100 101a3db0 CameraModeNew3::UpdateStrafe(LHPoint &, LHPoint &, float &, float &, float, unsigned long)
	bool UpdateStrafe(LHPoint* param_1, LHPoint* param_2, float* param_3, float* param_4, float param_5,
	                  uint32_t param_6);
	// BW1W120 0045a390 BW1M100 100098e0 CameraModeNew3::WantToQuitFight(LHPoint, LHPoint, float)
	bool WantToQuitFight(LHPoint param_1, LHPoint param_2, float param_3);
	// BW1W120 0045a4d0 BW1M100 101a3910 CameraModeNew3::StartFight(GArena *)
	void StartFight(GArena* arena);
	// BW1W120 0045a830 BW1M100 inlined CameraModeNew3::EndFightNow(int)
	void EndFightNow(int param_1);
};

#endif /* BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H */
