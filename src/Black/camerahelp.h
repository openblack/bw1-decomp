#ifndef BW1_DECOMP_CAMERA_HELP_INCLUDED_H
#define BW1_DECOMP_CAMERA_HELP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */

#include "CameraHelpTypes.h" /* For enum CH_ANIMTYPE, enum KEYALIGN */

#define CAMERA_HELP_MOUSE_TYPE_NONE 3

// Forward Declares

struct LHPoint;

enum CameraHelpReason
{
	CameraHelpReason_DoubleClickInExcludedArea = 0x100,
	CameraHelpReason_DoubleClickInIncludedArea = 0x101,
	CameraHelpReason_HandTooFarAway = 0x102,
	CameraHelpReason_CollideWithGround = 0x200,
	CameraHelpReason_CollideWithExcludedArea = 0x201,
	CameraHelpReason_CollideWithEdgeOfAllowedArea = 0x202,
	CameraHelpReason_CollideWithCeiling = 0x203,
	CameraHelpReason_Rotate = 0x300,
	CameraHelpReason_RotatePositive = 0x301,
	CameraHelpReason_RotateNegative = 0x302,
	CameraHelpReason_Pitching = 0x303,
	CameraHelpReason_Zooming = 0x304,
	CameraHelpReason_DoubleClickOnPos = 0x305,
	CameraHelpReason_DoubleClickOnObject = 0x306,
	CameraHelpReason_ZoomToCitadel = 0x307,
	CameraHelpReason_Dragging = 0x308,
	_CameraHelpReason_COUNT = 0x309
};
static_assert(sizeof(enum CameraHelpReason) == 0x4, "Data type is of wrong size");

enum CAMERA_FEATURE
{
	CAMERA_FEATURE_ALL = -1,
	CAMERA_FEATURE_NONE = 0x0,
	CAMERA_FEATURE_PITCH = 0x1,
	CAMERA_FEATURE_ROTATE = 0x2,
	CAMERA_FEATURE_ZOOM = 0x4,
	CAMERA_FEATURE_MOVE = 0x8,
	CAMERA_FEATURE_DOUBLE_CLICK = 0x10,
	CAMERA_FEATURE_ZOOM_LANDSCAPE = 0x20,
	CAMERA_FEATURE_AUTO_PITCH = 0x40,
	CAMERA_FEATURE_HELP = 0x80,
	CAMERA_FEATURE_EDGE_SCROLL = 0x100,
	CAMERA_FEATURE_NORMAL = CAMERA_FEATURE_PITCH | CAMERA_FEATURE_ROTATE | CAMERA_FEATURE_ZOOM | CAMERA_FEATURE_MOVE |
	                        CAMERA_FEATURE_DOUBLE_CLICK | CAMERA_FEATURE_ZOOM_LANDSCAPE | CAMERA_FEATURE_HELP |
	                        CAMERA_FEATURE_EDGE_SCROLL,
};

struct KMIcon
{
	float       StartAlpha;
	float       EndAlpha;
	float       FadeTime;
	float       Alpha;
	float       Time;
	CH_ANIMTYPE AnimType;
	int         Key;
	int         MouseType;
	wchar_t     Text[0x80];
	int         X;
	int         Y;
	int         Size;
	KEYALIGN    Align;
	LH3DColor   Colour1;
	LH3DColor   Colour2;
	int         MaxAlpha;
	KMIcon*     Next;

	// BW1W120 00448be0 BW1M119 011a5f30
	KMIcon();
	// BW1W120 00448c00 BW1M119 011a5e70
	~KMIcon();
	// BW1W120 00448ac0 BW1M119 0107e4b0
	void Draw(float time_inc);
};
static_assert(sizeof(KMIcon) == 0x140, "KMIcon size is incorrect");

class CameraHelp
{
public:
	// BW1W120 009cdd64
	static float AutoPitch;
	// BW1W120 009cdd68
	static float AutoPitchHeight;
	// BW1W120 009cdd6c
	static int EnabledFeatures;
	// BW1W120 004473f0 BW1M119 011a6a20
	static void SetAutoPitch(float pitch, float height, bool enable);
	// BW1W120 00447430 BW1M119 011a69c0
	static void EnableCameraFeatures(int enable, int disable);
	// BW1W120 00449140 BW1M119 010018f0
	static void CameraHelpCallback(CameraHelpReason reason, LHPoint& point, unsigned long param_3);
	// BW1W120 00447ba0 BW1M119 01053100
	static void DrawGlow(int x1, int y1, int x2, int y2, unsigned long colour);
	// BW1W120 00447850 BW1M119 0107e660
	static void DrawMouseCallback();
	// BW1W120 004489d0 BW1M119 011a6080
	static KMIcon* CreateKeyOrMouseIcon(float start_alpha, float end_alpha, float fade_time, CH_ANIMTYPE anim_type,
	                                    int key, int mouse_type, wchar_t* text, int x, int y, int size, KEYALIGN align,
	                                    LH3DColor* colour1, LH3DColor* colour2, int alpha);
	// BW1W120 00447ea0 BW1M119 01063100
	static void DrawKeyOrMouse(CH_ANIMTYPE anim_type, int key, int mouse_type, wchar_t* text, int x, int y, int size,
	                           KEYALIGN align, LH3DColor* colour1, LH3DColor* colour2, int alpha);
};

#endif /* BW1_DECOMP_CAMERA_HELP_INCLUDED_H */
