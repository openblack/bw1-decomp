#ifndef BW1_DECOMP_CAMERA_HELP_INCLUDED_H
#define BW1_DECOMP_CAMERA_HELP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <string.h> /* For strcpy */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */
#include <Lionhead/LHLib/ver5.0/LHWin.h>            /* For NEW */

#include "CameraHelpTypes.h" /* For enum CH_ANIMTYPE, enum CH_CLICKTYPE, enum CH_MOUSETYPE, enum KEYALIGN */

#ifdef VERSION_BW1W130
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + 6)
#endif

struct LH3DMaterial;
struct LH3DTexture;

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

enum CAMERA_HELP_REASON_GROUP
{
	CAMERA_HELP_REASON_GROUP_ERROR = 0x100,
	CAMERA_HELP_REASON_GROUP_COLLISION = 0x200,
	CAMERA_HELP_REASON_GROUP_ACTION = 0x300,
};

#define CAMERA_HELP_REASON_INDEX_MASK      0xff
#define CAMERA_HELP_REASON_GROUP_MASK      0xf00
#define CAMERA_HELP_REASON_GROUP_COUNT     4
#define CAMERA_HELP_REASON_GROUP_SIZE      8
#define CAMERA_HELP_ERROR_REASON_COUNT     3
#define CAMERA_HELP_COLLISION_REASON_COUNT 4
#define CAMERA_HELP_INPUT_COUNT            5

#define CAMERA_HELP_REASON_NAME_GROUP(reason) (((reason) >> 8) & (CAMERA_HELP_REASON_GROUP_COUNT - 1))
#define CAMERA_HELP_REASON_NAME_INDEX(reason) ((reason) & (CAMERA_HELP_REASON_GROUP_SIZE - 1))

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

#define CAMERA_HELP_BOX_DISTANCE 100.0f

#define CAMERA_HELP_KEY_TEXEL(pixel)      (((pixel) + 0.5f) / LH3D_ATMOS_TEXTURE_SIZE)
#define CAMERA_HELP_KEY_U0                CAMERA_HELP_KEY_TEXEL(128)
#define CAMERA_HELP_KEY_U1                CAMERA_HELP_KEY_TEXEL(144)
#define CAMERA_HELP_KEY_U2                CAMERA_HELP_KEY_TEXEL(175)
#define CAMERA_HELP_KEY_U3                CAMERA_HELP_KEY_TEXEL(191)
#define CAMERA_HELP_KEY_V0                CAMERA_HELP_KEY_TEXEL(0)
#define CAMERA_HELP_KEY_V1                CAMERA_HELP_KEY_TEXEL(63)
#define CAMERA_HELP_KEY_CAP_WIDTH(height) ((height) / 4)
#define CAMERA_HELP_KEY_PADDING(height)   (2 * (height) / 3)
#define CAMERA_HELP_KEY_TEXT_X(height)    ((height) / 5)
#define CAMERA_HELP_KEY_TEXT_Y(height)    ((height) / 7)
#define CAMERA_HELP_KEY_TEXT_SIZE_DIVISOR 2.5f
#define CAMERA_HELP_KEY_TEXT_DEPTH_SCALE  1.1f
#define CAMERA_HELP_KEY_TEXT_CLIP_END     4096.0f

#define CAMERA_HELP_GLOW_TEXEL(pixel)   ((float)(pixel) / LH3D_ATMOS_TEXTURE_SIZE)
#define CAMERA_HELP_GLOW_U0             CAMERA_HELP_GLOW_TEXEL(0)
#define CAMERA_HELP_GLOW_U1             CAMERA_HELP_GLOW_TEXEL(20)
#define CAMERA_HELP_GLOW_U2             CAMERA_HELP_GLOW_TEXEL(43)
#define CAMERA_HELP_GLOW_U3             CAMERA_HELP_GLOW_TEXEL(63)
#define CAMERA_HELP_GLOW_V0             CAMERA_HELP_GLOW_TEXEL(64)
#define CAMERA_HELP_GLOW_V1             CAMERA_HELP_GLOW_TEXEL(84)
#define CAMERA_HELP_GLOW_V2             CAMERA_HELP_GLOW_TEXEL(107)
#define CAMERA_HELP_GLOW_V3             CAMERA_HELP_GLOW_TEXEL(127)
#define CAMERA_HELP_GLOW_MARGIN(height) ((height) / 4)

#define CAMERA_HELP_ARROW_TEXEL(pixel)   ((float)(pixel) / LH3D_ATMOS_TEXTURE_SIZE)
#define CAMERA_HELP_ARROW_U0             CAMERA_HELP_ARROW_TEXEL(193)
#define CAMERA_HELP_ARROW_U1             CAMERA_HELP_ARROW_TEXEL(223)
#define CAMERA_HELP_ARROW_U2             CAMERA_HELP_ARROW_TEXEL(225)
#define CAMERA_HELP_ARROW_U3             CAMERA_HELP_ARROW_TEXEL(255)
#define CAMERA_HELP_ARROW_V0             CAMERA_HELP_ARROW_TEXEL(1)
#define CAMERA_HELP_ARROW_V1             CAMERA_HELP_ARROW_TEXEL(31)
#define CAMERA_HELP_ARROW_V2             CAMERA_HELP_ARROW_TEXEL(33)
#define CAMERA_HELP_ARROW_V3             CAMERA_HELP_ARROW_TEXEL(63)
#define CAMERA_HELP_ARROW_LENGTH(size)   ((size) / 2)
#define CAMERA_HELP_ARROW_START(size)    ((size) / 4)
#define CAMERA_HELP_ARROW_END(size)      (3 * (size) / 4)
#define CAMERA_HELP_ARROW_BORDER_DIVISOR 9.0f

#define CAMERA_HELP_ICON_MIN_ALPHA           4
#define CAMERA_HELP_ICON_TEXT_GAP            2.0f
#define CAMERA_HELP_ICON_TEXT_SIZE(size)     (2 * (size) / 3)
#define CAMERA_HELP_ICON_BIG_TEXT_SIZE(size) (4 * (size) / 5)
#define CAMERA_HELP_ICON_SHADOW_OFFSET       1
#define CAMERA_HELP_ICON_KEY_NAME_LENGTH     0x10

#define CAMERA_HELP_ICON_LEFT_SIDE_END(width)    ((width) / 3)
#define CAMERA_HELP_ICON_RIGHT_SIDE_START(width) (2 * (width) / 3)
#define CAMERA_HELP_ICON_TEXT_GLOW_ALPHA(alpha)  ((alpha) / 3)

#define CAMERA_HELP_MOUSE_PHASE_MS         100
#define CAMERA_HELP_MOUSE_PHASE_COUNT      5
#define CAMERA_HELP_MOUSE_PRESS_PHASES     2
#define CAMERA_HELP_MOUSE_WHEEL_LAST_PHASE 3

#define CAMERA_HELP_MOUSE_DOUBLE_CLICK_PHASE_MS    80
#define CAMERA_HELP_MOUSE_DOUBLE_CLICK_PHASE_COUNT 12
#define CAMERA_HELP_MOUSE_SECOND_PRESS_START       4

#define CAMERA_HELP_MOUSE_SECOND_PRESS_END (CAMERA_HELP_MOUSE_SECOND_PRESS_START + CAMERA_HELP_MOUSE_PRESS_PHASES)

#define CAMERA_HELP_MOUSE_FRAMES_PER_ROW 4
#define CAMERA_HELP_MOUSE_FRAME_UV       (1.0f / CAMERA_HELP_MOUSE_FRAMES_PER_ROW)

enum CAMERA_HELP_MOUSE_FRAME
{
	CAMERA_HELP_MOUSE_FRAME_RELEASED = 0,
	CAMERA_HELP_MOUSE_FRAME_BUTTON = 1,
	CAMERA_HELP_MOUSE_FRAME_BOTH = 2,
	CAMERA_HELP_MOUSE_FRAME_MIDDLE = 3,
	CAMERA_HELP_MOUSE_FRAME_WHEEL_REST = 11,
	CAMERA_HELP_MOUSE_FRAME_WHEEL_DOWN_FIRST = 12,
	CAMERA_HELP_MOUSE_FRAME_WHEEL_SPIN_FIRST = 15,
};

#ifdef VERSION_BW1W130
enum CAMERA_HELP_GLOVE_FRAME
{
	CAMERA_HELP_GLOVE_FRAME_RELEASED = 0,
	CAMERA_HELP_GLOVE_FRAME_BUTTON = 1,
	CAMERA_HELP_GLOVE_FRAME_ZOOM = 4,
	CAMERA_HELP_GLOVE_FRAME_ROTATE = 5,
	CAMERA_HELP_GLOVE_FRAME_INTERACT = 6,
	CAMERA_HELP_GLOVE_FRAME_PICK_UP = 7,
	CAMERA_HELP_GLOVE_FRAME_WHEEL_DOWN_LEFT = 8,
	CAMERA_HELP_GLOVE_FRAME_WHEEL_DOWN_RIGHT = 9,
	CAMERA_HELP_GLOVE_FRAME_WHEEL_DOWN_SPIN_RIGHT = 10,
	CAMERA_HELP_GLOVE_FRAME_BOTH = 12,
	CAMERA_HELP_GLOVE_FRAME_THROW = 15,
};
#endif

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

	// BW1W120 00c5afe0 BW1M119 01a75d28
	static KMIcon* First;

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
	// BW1W120 00c5a314
	static LH3DTexture* MouseHelpTexture;
	// BW1W120 00c5a318
	static LH3DMaterial* MouseHelpMaterial;
#ifdef VERSION_BW1W130
	// BW1W120 null BW1M119 null
	static LH3DTexture* GloveHelpTexture;
	// BW1W120 null BW1M119 null
	static LH3DMaterial* GloveHelpMaterial;
#endif
	// BW1W120 004473f0 BW1M119 011a6a20
	static void SetAutoPitch(float pitch, float height, bool enable);
	// BW1W120 00447430 BW1M119 011a69c0
	static void EnableCameraFeatures(int enable, int disable);
	// BW1W120 00449080 BW1M119 null
	static char* GetReasonName(CameraHelpReason reason);
	// BW1W120 004490a0 BW1M119 null
	static char* GetInputNames(unsigned long input_mask);
	// BW1W120 00449140 BW1M119 010018f0
	static void CameraHelpCallback(CameraHelpReason reason, LHPoint& point, unsigned long input_mask);
	// BW1W120 004491e0 BW1M119 011a59b0
	static void ResetStats(bool);
	// BW1W120 00449240 BW1M119 01095160
	static void ResetTriggers();
	// BW1W120 004492f0 BW1M119 null
	static void DrawStats(int x, int y);
	// BW1W120 00447910 BW1M119 011a66b0
	static float GetKeyWidth(wchar_t* text, float scale, int y_min, int y_max);
	// BW1W120 00447990 BW1M119 011a6390
	static void DrawKey(wchar_t* text, float scale, int x_min, int y_min, int x_max, int y_max, int alpha);
	// BW1W120 00447ba0 BW1M119 01053100
	static void DrawGlow(int x_min, int y_min, int x_max, int y_max, unsigned long colour);
	// BW1W120 00447450 BW1M119 01067fd0
	static void DrawMouse(CH_CLICKTYPE click_type, CH_MOUSETYPE mouse_type, CH_ANIMTYPE anim_type, int x, int y,
	                      int size, unsigned long colour);
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

enum CAMERA_EDITOR_MESSAGE
{
	CAMERA_EDITOR_MESSAGE_START = 0,
	CAMERA_EDITOR_MESSAGE_CAMERA_X = 1,
	CAMERA_EDITOR_MESSAGE_CAMERA_Y = 2,
	CAMERA_EDITOR_MESSAGE_CAMERA_Z = 3,
	CAMERA_EDITOR_MESSAGE_TARGET_X = 4,
	CAMERA_EDITOR_MESSAGE_TARGET_Y = 5,
	CAMERA_EDITOR_MESSAGE_TARGET_Z = 6,
	CAMERA_EDITOR_MESSAGE_FOV = 7,
	CAMERA_EDITOR_MESSAGE_MARKER_BEGIN = 8,
	CAMERA_EDITOR_MESSAGE_MARKER_X = 9,
	CAMERA_EDITOR_MESSAGE_MARKER_Y = 10,
	CAMERA_EDITOR_MESSAGE_MARKER_Z = 11,
	CAMERA_EDITOR_MESSAGE_MARKER_NAME = 12,
	CAMERA_EDITOR_MESSAGE_MARKER_COMMIT = 13,
};

enum CAMERA_EDITOR_ACTION
{
	CAMERA_EDITOR_ACTION_NONE = 0,
	CAMERA_EDITOR_ACTION_MOVE_CAMERA = 1,
	CAMERA_EDITOR_ACTION_MOVE_TARGET = 2,
	CAMERA_EDITOR_ACTION_SET_FOV = 3,
};

#define CAMERA_EDITOR_WINDOW_MESSAGE_BASE     (WM_USER + 0x100)
#define CAMERA_EDITOR_WINDOW_MESSAGE(message) (CAMERA_EDITOR_WINDOW_MESSAGE_BASE + (message))
#define CAMERA_EDITOR_FLY_TIME                0.3f

#define CEMARKER_NAME_LENGTH         0x80
#define CEMARKER_FIND_DISTANCE       0.01f
#define CEMARKER_LABEL_SIZE          16.0f
#define CEMARKER_LABEL_HEIGHT        2000.0f
#define CEMARKER_LABEL_DEPTH         0.1f
#define CEMARKER_LABEL_SHADOW_OFFSET 1
#define CEMARKER_LABEL_CLIP_END      4096.0f
#define CEMARKER_SPIN_STEP_MS        8
#define CEMARKER_SPIN_STEPS          512

class CEMarker
{
public:
	CEMarker* Next;
	char      Name[CEMARKER_NAME_LENGTH];
	uint32_t  Colour;
	LHPoint   Pos;
	float     Scale;

	// BW1W120 00c5afe8
	static CEMarker* Markers;

	// BW1W120 00449e10 BW1M119 011a5750
	CEMarker()
	{
		Next = Markers;
		Markers = this;
		Colour = LH3D_COLOR_WHITE;
		Pos = LHPoint(0.0f, 0.0f, 0.0f);
		Scale = 1.0f;
	}
	// BW1W120 inlined BW1M119 inlined
	~CEMarker()
	{
		if (Markers == this)
			Markers = Next;
		else
		{
			CEMarker* marker = Markers;
			while (marker)
			{
				if (marker->Next == this)
				{
					marker->Next = Next;
					break;
				}
				marker = marker->Next;
			}
		}
	}
	// BW1W120 inlined BW1M119 011a5870
	static CEMarker* FindIt(LHPoint& pos)
	{
		CEMarker* marker = Markers;
		while (marker)
		{
			if (marker->Pos.GetDistance(pos) < CEMARKER_FIND_DISTANCE)
				return marker;
			marker = marker->Next;
		}
		return NULL;
	}
	// BW1W120 inlined BW1M119 inlined
	static void Create(LHPoint& pos, uint32_t colour, char* name)
	{
		CEMarker* marker = FindIt(pos);
		if (!marker)
			marker = NEW(352) CEMarker;
		marker->Pos = pos;
		marker->Scale = 1.0f;
		marker->Colour = colour;
		marker->Name[0] = 0;
		if (name)
			strcpy(marker->Name, name);
	}
	// BW1W120 00449eb0 BW1M119 null
	void Draw();
};

#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) (line)

#endif /* BW1_DECOMP_CAMERA_HELP_INCLUDED_H */
