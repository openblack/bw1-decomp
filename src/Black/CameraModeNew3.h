#ifndef BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h>  /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint, struct Point2D */
#include <Lionhead/LH3DLib/development/Zoomer.h>   /* For struct Zoomer, struct Zoomer3d */
#include <re_common.h>                             /* For bool32_t */

#include "CameraMode.h" /* For enum CAMERA_MODE_HAND_STATUS, enum CAMERA_MODE_MOUSE_STATUS, class CameraMode */

// Forward Declares

struct CameraExclusion;
class GArena;
class GCamera;
struct LightSheet;
struct LH3DMaterial;
struct LH3DTexture;
struct LH3DSprite;

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
	LHPoint                  heading;
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
	float                    Yaw0;
	float                    Pitch0;
	float                    FightDistance;
	int                      FightTimeLeft;
	int                      TimeInArena;
	fight_status_t           FightStatus;
	LHPoint                  field_0x68;
	float                    field_0x74;
	float                    ElapsedTime;
	LHPoint                  RotatePoint;
	bool                     RotateAroundPoint;
	CAMERA_MODE_MOUSE_STATUS MouseButtons;
	uint32_t                 MouseTriconFlags;
	uint32_t                 KeyTriconFlags;
	Point2D                  FromScreenCentre;
	Point2D                  FromScreenCentreAbs;
	LHCoord                  MouseDelta;
	LHCoord                  MousePosCurrent;
	LHCoord                  RotateAroundMousePos;
	LHCoord                  MousePos1;
	bool32_t                 ScreenCentreHit;
	LHPoint                  MouseHitPoint;
	LHPoint                  LastGrabMouseHitPoint;
	float                    Yaw1;
	float                    Pitch1;
	float                    PerpDistance0xec;
	LHPoint                  ScreenCentreHitPoint;
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
	bool32_t                 HandHit;
	bool32_t                 Hit0x148;
	LHPoint                  field_0x14c;
	double                   field_0x158;
	LHPoint                  field_0x160;
	LHPoint                  field_0x16c;
	LHMatrix                 field_0x178;
	float                    Distance0x1a8;
	CAMERA_MODE_HAND_STATUS  HandStatus;
	Point2D                  field_0x1b0;
	Point2D                  field_0x1b8;
	float                    Length0x1c0;
	float                    VerticalDistance;
	LHPoint                  FallbackOrigin;
	LHPoint                  FallbackHeading;
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
	float                    HeadingDistance;
	float                    IdleTime;
	int                      field_0x2ec;
	int                      field_0x2f0;
	CameraExclusion*         NearbyExclusions;
	int                      field_0x2f8;
	uint32_t                 field_0x2fc;

	// Static data

	// BW1W120 00c5e150
	static LightSheet* ForceField;
	// BW1W120 00c5e144
	static int DrawForceField;
	// BW1W120 00c5e130
	static int ForceFieldPointCount;
	// BW1W120 00c5b130
	static LHPoint ForceFieldPoints[0x400];
	// BW1W120 00c5b0fc
	static LH3DMaterial* ForceFieldMaterial;
	// BW1W120 009ce694
	static float CitadelDistance;
	// BW1W120 009ce698
	static float CitadelPitch;
	// BW1W120 00c5e178
	static bool32_t NoCross;
	// BW1W120 009ce6bc
	static bool32_t AutoEndFight;
	// BW1W120 009ce6b4
	static bool32_t TiltKeepsFocusHeight;
	// BW1W120 00c5e16c
	static int InstanceCount;
	// BW1W120 00c5e170
	static LH3DSprite* TriconSprite;
	// BW1W120 00c5b0f8
	static LH3DTexture* ForceFieldTexture;
	// BW1W120 00c5e154
	static bool32_t EdgeScrollEnabled;

	// Virtual methods

	// BW1W120 00456640 BW1M119 011af300
	virtual void Initialise();
	// BW1W120 004589b0 BW1M119 011addc0
	virtual void Reinitialise(bool keep_fight);
	// BW1W120 004587f0 BW1M119 011ae270
	virtual void FlyToPosFoc(LHPoint& pos, LHPoint& focus, float time);
	// BW1W120 00457a20 BW1M119 01005a30
	virtual void SetupVia(LHPoint& pos, LHPoint& focus, LHPoint& via, float time);
	// BW1W120 00456260 BW1M119 01028b50
	virtual int GetCameraFeatures();
	// BW1W120 00457330 BW1M119 011a76a0
	virtual void ForceRotateAboutPoint(LHPoint* point)
	{
		if (point != NULL)
		{
			RotateAroundPoint = true;
			RotatePoint = *point;
		}
		else
		{
			RotateAroundPoint = false;
		}
	}

	// Override methods

	// BW1W120 00456630 BW1M119 011af690
	virtual ~CameraModeNew3();
	// BW1W120 0045a860 BW1M119 0108c150
	virtual bool32_t CanPlayerGestureWhenCameraMoving();
	// BW1W120 0045a960 BW1M119 0103ce70
	virtual void Update();
	// BW1W120 0045a880 BW1M119 010919b0
	virtual void Validate();
	// BW1W120 004587d0 BW1M119 011ae530
	virtual void Restart();
	// BW1W120 00457360 BW1M119 01090100
	virtual bool32_t IsStillValid() { return true; }
	// BW1W120 00458220 BW1M119 01073f90
	virtual void ProcessKeyMovement(uint16_t key);
	// BW1W120 00457370 BW1M119 011ab960
	virtual const char* GetDebugName() { return "New3"; }

	// Static methods

	// BW1W120 004562e0 BW1M119 01070350
	static void __stdcall tricondraw(void* param);
	// BW1W120 004568f0 BW1M119 null
	static void DrawHandTricon();
	// BW1W120 00456e00 BW1M119 010716a0
	static void TriconDraw();
	// BW1W120 0045a060 BW1M119 inlined
	static bool32_t IsEdgeScrollEnabled();
	// BW1W120 00458e50 BW1M119 011adb50
	static void SuggestBestCameraPos(LHPoint pos, LHPoint focus, LHPoint& new_pos, LHPoint& new_focus);
	// BW1W120 00458f40 BW1M119 010651f0
	static float FindBestAngle(float heading, float distance, LHPoint& focus, float& pitch, float* best_score);
	// BW1W120 00459210 BW1M119 011adab0
	static void SetNoCross(int no_cross);

	// Constructors

	// BW1W120 004572e0 BW1M119 011aed60
	CameraModeNew3(GCamera* camera);
	// BW1W120 004573a0 BW1M119 null
	CameraModeNew3(GCamera* camera, const LHPoint* origin_and_focus);
	// BW1W120 004576c0 BW1M119 null
	CameraModeNew3(GCamera* camera, const LHPoint& focus, float distance);

	// Non-virtual methods

	// BW1W120 00456270 BW1M119 011af7a0
	void DrawFightText();
	// BW1W120 00457b60 BW1M119 011ae710
	void ZoomToCitadel(float x, float z, float distance, float pitch, int param_5);
	// BW1W120 00457f20 BW1M119 null
	void SetHeadingAndPitch(float heading, float pitch);
	// BW1W120 00457f30 BW1M119 inlined
	bool IsRotateKeyModifierActive();
	// BW1W120 00457f80 BW1M119 null
	void SetFocus(const LHPoint& focus);
	// BW1W120 00458db0 BW1M119 0107e7f0
	float CalcPerpDistance(LHPoint& line_start, LHPoint& line_end, LHPoint& point);
	// BW1W120 00459230 BW1M119 01028600
	void UpdateTricons();
	// BW1W120 00459610 BW1M119 011ad2e0
	void UpdateClickParams(LHPoint& pos, LHPoint& focus, bool grab);
	// BW1W120 00459c30 BW1M119 0103a2e0
	float GetAltitude(LHPoint& pos);
	// BW1W120 00459d20 BW1M119 011acf00
	void SetAltitudeAndNormal(LHPoint& pos, LHPoint& normal);
	// BW1W120 00459f10 BW1M119 01080b40
	void DragFocusOntoLand(LHPoint& pos, LHPoint& focus);
	// BW1W120 0045a080 BW1M119 011aca20
	bool UpdateStrafe(LHPoint& param_1, LHPoint& param_2, float& param_3, float& param_4, float param_5,
	                  unsigned long param_6);
	// BW1W120 0045a390 BW1M119 0100b400
	bool WantToQuitFight(LHPoint param_1, LHPoint param_2, float param_3);
	// BW1W120 0045a4d0 BW1M119 011ac4f0
	void StartFight(GArena* arena);
	// BW1W120 0045a800 BW1M119 011ac470
	void EndFightSoon(int force);
	// BW1W120 0045a830 BW1M119 inlined
	void EndFightNow(int force);
};

// BW1W120 00460b20 BW1M119 011ab9a0
void ResetCameraModeNew3();

#endif /* BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H */
