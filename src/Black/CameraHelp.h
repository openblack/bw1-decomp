#ifndef BW1_DECOMP_CAMERA_HELP_INCLUDED_H
#define BW1_DECOMP_CAMERA_HELP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CameraHelpTypes.h" /* For enum CH_ANIMTYPE, enum KEYALIGN */

// Forward Declares

struct LH3DColor;
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
	CAMERA_FEATURE_PITCH = 0x1,
	CAMERA_FEATURE_ROTATE = 0x2,
	CAMERA_FEATURE_ZOOM = 0x4,
	CAMERA_FEATURE_MOVE = 0x8,
	CAMERA_FEATURE_DOUBLE_CLICK = 0x10,
	CAMERA_FEATURE_ZOOM_LANDSCAPE = 0x20,
	CAMERA_FEATURE_AUTO_PITCH = 0x40,
	CAMERA_FEATURE_HELP = 0x80,
	CAMERA_FEATURE_EDGE_SCROLL = 0x100,
};

class CameraHelp
{
public:
	// TODO: Original static member names are unrecovered; ownership follows SetAutoPitch/EnableCameraFeatures.
	// BW1W120 009cdd64
	static float AutoPitchParam1;
	// BW1W120 009cdd68
	static float AutoPitchParam2;
	// BW1W120 009cdd6c
	static int EnabledFeatures;
	// BW1W120 00449140 BW1M119 010018f0
	static void CameraHelpCallback(CameraHelpReason reason, LHPoint& point, unsigned long param_3);
	// BW1W120 00447ea0 BW1M119 01063100
	static void DrawKeyOrMouse(CH_ANIMTYPE anim_type, int key, int mouse_type, wchar_t* text, int x, int y, int size,
	                           KEYALIGN align, LH3DColor* colour1, LH3DColor* colour2, int alpha);
};

#endif /* BW1_DECOMP_CAMERA_HELP_INCLUDED_H */
