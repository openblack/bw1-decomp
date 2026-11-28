#include "BindableAction.h"  /* For CONTROL_KEY_NAME_DATA */
#include "Camera.h"          /* For GCamera */
#include "CameraModeNew3.h"  /* For CameraModeNew3 */
#include "ColourConstants.h" /* For White */
#include "ControlHand.h"     /* For CHand */
#include "ControlMap.h"      /* For GetKeyNameText_ */
#include "Game.h"            /* For GGame */
#include "GameTimeConstants.h"
#include "HelpProfile.h"
#include "Interface.h" /* For GInterface */
#include "alexmfc.h"   /* For SetupThing */
#include "camerahelp.h"

#ifdef VERSION_BW1W130
#include "FrontEnd.h" /* For FrontEnd::CursorOn */
#endif

#include <wchar.h> /* For wcslen */

#include <chlasm/AllMeshes.h> /* For MSH_P_HIPPY, ANM_P_WAITING_IMPATEINTLY */

#include <Lionhead/LH3DLib/development/LH3DAnim.h>          /* For LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DAtmos.h>         /* For LH3DAtmos */
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h> /* For LH3DComplexObject */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>        /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMath.h>          /* For PI_F */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>          /* For LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DObject.h>        /* For LH3DObject */
#include <Lionhead/LH3DLib/development/LH3DRender.h>        /* For LH3DRender, DrawAndClip2D */
#include <Lionhead/LH3DLib/development/LH3DTech.h>          /* For LH3DTech */
#include <Lionhead/LH3DLib/development/LH3DText.h>          /* For GatheringText */
#include <Lionhead/LH3DLib/development/LH3DTexture.h>       /* For LH3DTexture */
#include <Lionhead/LH3DLib/development/LHColor.h>           /* For struct LHColor */
#include <Lionhead/LH3DLib/development/LHPoint.h>           /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/LHVideoPlayer.h>     /* For LHVideoPlayer */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>                 /* For LHSys */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>                /* For UNICODE_sprintf */

#ifdef VERSION_BW1W130
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + 249)
#endif

// BW1W120 004496b0 BW1M119 011a5210
void __stdcall camera_editor_callback(unsigned long message, unsigned long wparam, unsigned long lparam);

float CameraHelp::AutoPitch = PI_F / 6;
float CameraHelp::AutoPitchHeight = 75.0f;
int   CameraHelp::EnabledFeatures = CAMERA_FEATURE_NORMAL;

static char* ReasonNames[CAMERA_HELP_REASON_GROUP_COUNT][CAMERA_HELP_REASON_GROUP_SIZE] = {
	{"", "", "", "", "", "", "", ""},
	{"Error: Double clicked in excluded area", "Error: Double clicked in included area", "Error: Hand is too far away"},
	{"Collide with ground", "Collide with excluded area", "Collide with edge of allowed area", "Collide with ceiling"},
	{"Rotating", "Pitching", "Zooming", "Double click on pos", "Double click on object", "Zoom to Citadel", "Dragging"},
};

static char* InputNames[CAMERA_HELP_INPUT_COUNT] = {"keyboard", "mouse button", "both mouse buttons", "wheel spin",
                                                    "wheel down"};

static CameraHelpAccumulator ErrorAccumulators[CAMERA_HELP_ERROR_REASON_COUNT];
static CameraHelpAccumulator CollisionAccumulators[CAMERA_HELP_COLLISION_REASON_COUNT];
static CameraHelpAccumulator InputAccumulators[CAMERA_HELP_INPUT_COUNT];

static uint32_t     MouseHelpColour = 0;
static float        MouseHelpSize = 0.0f;
static float        MouseHelpY = 0.0f;
static float        MouseHelpX = 0.0f;
static CH_CLICKTYPE MouseHelpClickType = CH_CLICKTYPE_NONE;
static CH_MOUSETYPE MouseHelpMouseType = CH_MOUSETYPE_TWO_BUTTON;
static int          MouseHelpUnused = 0;
unsigned int        HelpProfile::AccumulatedTime = 0;
static bool32_t     MouseHelpAnimate = false;
KMIcon*             KMIcon::First = NULL;

void CameraHelp::SetAutoPitch(float pitch, float height, bool enable)
{
	EnableCameraFeatures(enable ? CAMERA_FEATURE_AUTO_PITCH : 0, enable ? 0 : CAMERA_FEATURE_AUTO_PITCH);
	AutoPitch = pitch;
	AutoPitchHeight = height;
}

void CameraHelp::EnableCameraFeatures(int enable, int disable)
{
	EnabledFeatures = (EnabledFeatures & ~disable) | enable;
}

LH3DMaterial* CameraHelp::MouseHelpMaterial;
LH3DTexture*  CameraHelp::MouseHelpTexture;
#ifdef VERSION_BW1W130
LH3DMaterial* CameraHelp::GloveHelpMaterial;
LH3DTexture*  CameraHelp::GloveHelpTexture;
#endif

#ifdef VERSION_BW1W130
void CameraHelp::DrawMouse(CH_CLICKTYPE click_type, CH_MOUSETYPE mouse_type, CH_ANIMTYPE anim_type, int x, int y,
                           int size, unsigned long colour)
{
	if (mouse_type == CH_MOUSETYPE_NONE)
	{
		return;
	}
	bool32_t mirror = false;
	int      phase = GetTickCount() / CAMERA_HELP_MOUSE_PHASE_MS % CAMERA_HELP_MOUSE_PHASE_COUNT;
	bool32_t on = true;
	switch (anim_type)
	{
	case CH_ANIMTYPE_CLICK:
		on = phase < CAMERA_HELP_MOUSE_PRESS_PHASES;
		break;
	case CH_ANIMTYPE_DOUBLE_CLICK:
		phase = GetTickCount() / CAMERA_HELP_MOUSE_DOUBLE_CLICK_PHASE_MS % CAMERA_HELP_MOUSE_DOUBLE_CLICK_PHASE_COUNT;
		on = phase < CAMERA_HELP_MOUSE_PRESS_PHASES ||
		     (phase >= CAMERA_HELP_MOUSE_SECOND_PRESS_START && phase < CAMERA_HELP_MOUSE_SECOND_PRESS_END);
		break;
	case CH_ANIMTYPE_HOLD:
		phase = GetTickCount() / CAMERA_HELP_MOUSE_PHASE_MS % CAMERA_HELP_MOUSE_PHASE_COUNT;
		break;
	}
	int frame;
	switch (click_type)
	{
	case CH_CLICKTYPE_WHEEL_SPIN:
		if (LHSys::TheSystem.GloveActive)
		{
			frame = CAMERA_HELP_GLOVE_FRAME_BOTH;
		}
		else
		{
			frame = phase > CAMERA_HELP_MOUSE_WHEEL_LAST_PHASE ? CAMERA_HELP_MOUSE_FRAME_WHEEL_REST
			                                                   : CAMERA_HELP_MOUSE_FRAME_WHEEL_SPIN_FIRST - phase;
		}
		break;
	case CH_CLICKTYPE_WHEEL_DOWN:
		if (LHSys::TheSystem.GloveActive)
		{
			frame = CAMERA_HELP_GLOVE_FRAME_BOTH;
		}
		else
		{
			frame = phase > CAMERA_HELP_MOUSE_WHEEL_LAST_PHASE ? CAMERA_HELP_MOUSE_FRAME_WHEEL_REST
			                                                   : phase + CAMERA_HELP_MOUSE_FRAME_WHEEL_DOWN_FIRST;
		}
		break;
	case CH_CLICKTYPE_NONE:
		if (LHSys::TheSystem.GloveActive)
		{
			switch (CHand::GloveHelpCue)
			{
			case CHAND_GLOVE_HELP_CUE_INTERACT:
				frame = CAMERA_HELP_GLOVE_FRAME_INTERACT;
				break;
			case CHAND_GLOVE_HELP_CUE_ROTATE:
				frame = CAMERA_HELP_GLOVE_FRAME_ROTATE;
				break;
			case CHAND_GLOVE_HELP_CUE_ZOOM:
				frame = CAMERA_HELP_GLOVE_FRAME_ZOOM;
				break;
			case CHAND_GLOVE_HELP_CUE_DEFAULT:;
			default:
				frame = CAMERA_HELP_GLOVE_FRAME_RELEASED;
				break;
			}
		}
		else
		{
			frame = CAMERA_HELP_MOUSE_FRAME_RELEASED;
		}
		break;
	case CH_CLICKTYPE_RIGHT:
		if (LHSys::TheSystem.GloveActive)
		{
			switch (CHand::GloveHelpCue)
			{
			case CHAND_GLOVE_HELP_CUE_INTERACT:
				frame = CAMERA_HELP_GLOVE_FRAME_INTERACT;
				break;
			case CHAND_GLOVE_HELP_CUE_PICK_UP:
				frame = CAMERA_HELP_GLOVE_FRAME_PICK_UP;
				break;
			case CHAND_GLOVE_HELP_CUE_THROW:
				frame = CAMERA_HELP_GLOVE_FRAME_THROW;
				break;
			case CHAND_GLOVE_HELP_CUE_ZOOM:
				frame = CAMERA_HELP_GLOVE_FRAME_ZOOM;
				break;
			case CHAND_GLOVE_HELP_CUE_DEFAULT:;
			default:
				frame = CAMERA_HELP_GLOVE_FRAME_BUTTON;
				break;
			}
			mirror = false;
			if (!on)
			{
				frame = CAMERA_HELP_GLOVE_FRAME_RELEASED;
			}
		}
		else
		{
			mirror = false;
			frame = CAMERA_HELP_MOUSE_FRAME_BUTTON;
			if (!on)
			{
				frame = CAMERA_HELP_MOUSE_FRAME_RELEASED;
			}
		}
		break;
	case CH_CLICKTYPE_GLOVE_INTERACT:
		frame = CAMERA_HELP_GLOVE_FRAME_INTERACT;
		if (!on)
		{
			frame = CAMERA_HELP_GLOVE_FRAME_RELEASED;
		}
		break;
	case CH_CLICKTYPE_GLOVE_PICK_UP:
		frame = CAMERA_HELP_GLOVE_FRAME_PICK_UP;
		if (!on)
		{
			frame = CAMERA_HELP_GLOVE_FRAME_RELEASED;
		}
		break;
	case CH_CLICKTYPE_GLOVE_THROW:
		frame = CAMERA_HELP_GLOVE_FRAME_THROW;
		if (!on)
		{
			frame = CAMERA_HELP_GLOVE_FRAME_RELEASED;
		}
		break;
	case CH_CLICKTYPE_BOTH:
		if (LHSys::TheSystem.GloveActive)
		{
			frame = CAMERA_HELP_GLOVE_FRAME_BOTH;
			if (!on)
			{
				frame = CAMERA_HELP_GLOVE_FRAME_RELEASED;
			}
		}
		else
		{
			frame = CAMERA_HELP_MOUSE_FRAME_BOTH;
			if (!on)
			{
				frame = CAMERA_HELP_MOUSE_FRAME_RELEASED;
			}
		}
		break;
	case CH_CLICKTYPE_MIDDLE:
		if (LHSys::TheSystem.GloveActive)
		{
			frame = CAMERA_HELP_GLOVE_FRAME_ROTATE;
			if (!on)
			{
				frame = CAMERA_HELP_GLOVE_FRAME_RELEASED;
			}
		}
		else
		{
			frame = CAMERA_HELP_MOUSE_FRAME_MIDDLE;
			if (!on)
			{
				frame = CAMERA_HELP_MOUSE_FRAME_RELEASED;
			}
		}
		break;
	case CH_CLICKTYPE_WHEEL_DOWN_LEFT:
		frame = CAMERA_HELP_GLOVE_FRAME_WHEEL_DOWN_LEFT;
		break;
	case CH_CLICKTYPE_WHEEL_DOWN_RIGHT:
		frame = CAMERA_HELP_GLOVE_FRAME_WHEEL_DOWN_RIGHT;
		break;
	case CH_CLICKTYPE_WHEEL_DOWN_SPIN_RIGHT:
		frame = CAMERA_HELP_GLOVE_FRAME_WHEEL_DOWN_SPIN_RIGHT;
		break;
	case CH_CLICKTYPE_LEFT:;
	default:
		if (LHSys::TheSystem.GloveActive)
		{
			switch (CHand::GloveHelpCue)
			{
			case CHAND_GLOVE_HELP_CUE_INTERACT:
				frame = CAMERA_HELP_GLOVE_FRAME_INTERACT;
				break;
			case CHAND_GLOVE_HELP_CUE_ROTATE:
				frame = CAMERA_HELP_GLOVE_FRAME_ROTATE;
				break;
			case CHAND_GLOVE_HELP_CUE_ZOOM:
				frame = CAMERA_HELP_GLOVE_FRAME_ZOOM;
				break;
			case CHAND_GLOVE_HELP_CUE_DEFAULT:;
			default:
				frame = CAMERA_HELP_GLOVE_FRAME_RELEASED;
				break;
			}
			mirror = false;
		}
		else
		{
			frame = CAMERA_HELP_MOUSE_FRAME_BUTTON;
			mirror = true;
			if (!on)
			{
				frame = CAMERA_HELP_MOUSE_FRAME_RELEASED;
			}
		}
		break;
	}
	if (!LHSys::TheSystem.GloveActive && click_type != CH_CLICKTYPE_WHEEL_SPIN &&
	    click_type != CH_CLICKTYPE_WHEEL_DOWN && frame >= 0)
	{
		frame += mouse_type * CAMERA_HELP_MOUSE_FRAMES_PER_ROW;
	}
	if (LHSys::TheSystem.GloveActive)
	{
		if (!GloveHelpMaterial)
		{
			GloveHelpTexture = LH3DTexture::Create("data\\textures\\S_P5glove.raw",
			                                       LH3D_TEXTURE_TYPE_FILE | LH3D_TEXTURE_FLAGS_ALPHA, 0, NULL);
			GloveHelpMaterial = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA,
			                                               GloveHelpTexture);
		}
	}
	else if (!MouseHelpMaterial)
	{
		MouseHelpTexture = LH3DTexture::Create("data\\textures\\mousehelp.raw",
		                                       LH3D_TEXTURE_TYPE_FILE | LH3D_TEXTURE_FLAGS_ALPHA, 0, NULL);
		MouseHelpMaterial =
			LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA, MouseHelpTexture);
	}
	if (LHSys::TheSystem.GloveActive)
	{
		if (!GloveHelpMaterial || frame < 0 || colour == 0)
		{
			return;
		}
		float u = (frame & (CAMERA_HELP_MOUSE_FRAMES_PER_ROW - 1)) * CAMERA_HELP_MOUSE_FRAME_UV;
		float v = (frame / CAMERA_HELP_MOUSE_FRAMES_PER_ROW) * CAMERA_HELP_MOUSE_FRAME_UV;
		float du = CAMERA_HELP_MOUSE_FRAME_UV;
		int   x2;
		int   y2;
		if (!FrontEnd::CursorOn)
		{
			x2 = x + size * 2;
			y2 = y + size * 2;
		}
		else
		{
			x2 = x + size;
			y2 = y + size;
		}
		if (mirror)
		{
			u += CAMERA_HELP_MOUSE_FRAME_UV;
			du = -CAMERA_HELP_MOUSE_FRAME_UV;
		}
		LHVideoPlayer::g_list_vertex[0].x = x;
		LHVideoPlayer::g_list_vertex[0].uv.x = u;
		LHVideoPlayer::g_list_vertex[0].y = y;
		LHVideoPlayer::g_list_vertex[0].uv.y = v;
		LHVideoPlayer::g_list_vertex[1].x = x2;
		LHVideoPlayer::g_list_vertex[1].uv.x = u + du;
		LHVideoPlayer::g_list_vertex[1].y = y;
		LHVideoPlayer::g_list_vertex[1].uv.y = v;
		LHVideoPlayer::g_list_vertex[2].x = x2;
		LHVideoPlayer::g_list_vertex[2].uv.x = u + du;
		LHVideoPlayer::g_list_vertex[2].y = y2;
		LHVideoPlayer::g_list_vertex[2].uv.y = v + CAMERA_HELP_MOUSE_FRAME_UV;
		LHVideoPlayer::g_list_vertex[3].x = x;
		LHVideoPlayer::g_list_vertex[3].uv.x = u;
		LHVideoPlayer::g_list_vertex[3].y = y2;
		LHVideoPlayer::g_list_vertex[3].uv.y = v + CAMERA_HELP_MOUSE_FRAME_UV;
		LHVideoPlayer::g_list_vertex[0].color = LHVideoPlayer::g_list_vertex[1].color =
			LHVideoPlayer::g_list_vertex[2].color = LHVideoPlayer::g_list_vertex[3].color = colour;
		LH3DRender::SetMaterial(GloveHelpMaterial, 0);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, false);
		DrawAndClip2D(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, LHVideoPlayer::g_list_vertex, 4, LHVideoPlayer::g_index, 6);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, true);
	}
	else
	{
		if (!MouseHelpMaterial || frame < 0 || colour == 0)
		{
			return;
		}
		float u = (frame & (CAMERA_HELP_MOUSE_FRAMES_PER_ROW - 1)) * CAMERA_HELP_MOUSE_FRAME_UV;
		float v = (frame / CAMERA_HELP_MOUSE_FRAMES_PER_ROW) * CAMERA_HELP_MOUSE_FRAME_UV;
		float du = CAMERA_HELP_MOUSE_FRAME_UV;
		int   x2 = x + size;
		int   y2 = y + size;
		if (mirror)
		{
			u += CAMERA_HELP_MOUSE_FRAME_UV;
			du = -CAMERA_HELP_MOUSE_FRAME_UV;
		}
		LHVideoPlayer::g_list_vertex[0].x = x;
		LHVideoPlayer::g_list_vertex[0].uv.x = u;
		LHVideoPlayer::g_list_vertex[0].y = y;
		LHVideoPlayer::g_list_vertex[0].uv.y = v;
		LHVideoPlayer::g_list_vertex[1].x = x2;
		LHVideoPlayer::g_list_vertex[1].uv.x = u + du;
		LHVideoPlayer::g_list_vertex[1].y = y;
		LHVideoPlayer::g_list_vertex[1].uv.y = v;
		LHVideoPlayer::g_list_vertex[2].x = x2;
		LHVideoPlayer::g_list_vertex[2].uv.x = u + du;
		LHVideoPlayer::g_list_vertex[2].y = y2;
		LHVideoPlayer::g_list_vertex[2].uv.y = v + CAMERA_HELP_MOUSE_FRAME_UV;
		LHVideoPlayer::g_list_vertex[3].x = x;
		LHVideoPlayer::g_list_vertex[3].uv.x = u;
		LHVideoPlayer::g_list_vertex[3].y = y2;
		LHVideoPlayer::g_list_vertex[3].uv.y = v + CAMERA_HELP_MOUSE_FRAME_UV;
		LHVideoPlayer::g_list_vertex[0].color = LHVideoPlayer::g_list_vertex[1].color =
			LHVideoPlayer::g_list_vertex[2].color = LHVideoPlayer::g_list_vertex[3].color = colour;
		LH3DRender::SetMaterial(MouseHelpMaterial, 0);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, false);
		DrawAndClip2D(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, LHVideoPlayer::g_list_vertex, 4, LHVideoPlayer::g_index, 6);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, true);
	}
}
#else
void CameraHelp::DrawMouse(CH_CLICKTYPE click_type, CH_MOUSETYPE mouse_type, CH_ANIMTYPE anim_type, int x, int y,
                           int size, unsigned long colour)
{
	if (mouse_type == CH_MOUSETYPE_NONE)
	{
		return;
	}
	bool32_t mirror = false;
	int      phase = GetTickCount() / CAMERA_HELP_MOUSE_PHASE_MS % CAMERA_HELP_MOUSE_PHASE_COUNT;
	bool32_t on = true;
	switch (anim_type)
	{
	case CH_ANIMTYPE_CLICK:
		on = phase < CAMERA_HELP_MOUSE_PRESS_PHASES;
		break;
	case CH_ANIMTYPE_DOUBLE_CLICK:
		phase = GetTickCount() / CAMERA_HELP_MOUSE_DOUBLE_CLICK_PHASE_MS % CAMERA_HELP_MOUSE_DOUBLE_CLICK_PHASE_COUNT;
		on = phase < CAMERA_HELP_MOUSE_PRESS_PHASES ||
		     (phase >= CAMERA_HELP_MOUSE_SECOND_PRESS_START && phase < CAMERA_HELP_MOUSE_SECOND_PRESS_END);
		break;
	case CH_ANIMTYPE_HOLD:
		phase = GetTickCount() / CAMERA_HELP_MOUSE_PHASE_MS % CAMERA_HELP_MOUSE_PHASE_COUNT;
		break;
	}
	int frame;
	switch (click_type)
	{
	case CH_CLICKTYPE_WHEEL_SPIN:
		frame = phase > CAMERA_HELP_MOUSE_WHEEL_LAST_PHASE ? CAMERA_HELP_MOUSE_FRAME_WHEEL_REST
		                                                   : CAMERA_HELP_MOUSE_FRAME_WHEEL_SPIN_FIRST - phase;
		break;
	case CH_CLICKTYPE_WHEEL_DOWN:
		frame = phase > CAMERA_HELP_MOUSE_WHEEL_LAST_PHASE ? CAMERA_HELP_MOUSE_FRAME_WHEEL_REST
		                                                   : phase + CAMERA_HELP_MOUSE_FRAME_WHEEL_DOWN_FIRST;
		break;
	case CH_CLICKTYPE_RIGHT:
		mirror = false;
		frame = CAMERA_HELP_MOUSE_FRAME_BUTTON;
		if (!on)
		{
			frame = CAMERA_HELP_MOUSE_FRAME_RELEASED;
		}
		break;
	case CH_CLICKTYPE_BOTH:
		frame = CAMERA_HELP_MOUSE_FRAME_BOTH;
		if (!on)
		{
			frame = CAMERA_HELP_MOUSE_FRAME_RELEASED;
		}
		break;
	case CH_CLICKTYPE_MIDDLE:
		frame = CAMERA_HELP_MOUSE_FRAME_MIDDLE;
		if (!on)
		{
			frame = CAMERA_HELP_MOUSE_FRAME_RELEASED;
		}
		break;
	case CH_CLICKTYPE_NONE:
		frame = CAMERA_HELP_MOUSE_FRAME_RELEASED;
		break;
	case CH_CLICKTYPE_LEFT:;
	default:
		frame = CAMERA_HELP_MOUSE_FRAME_BUTTON;
		mirror = true;
		if (!on)
		{
			frame = CAMERA_HELP_MOUSE_FRAME_RELEASED;
		}
		break;
	}
	if (click_type != CH_CLICKTYPE_WHEEL_SPIN && click_type != CH_CLICKTYPE_WHEEL_DOWN && frame >= 0)
	{
		frame += mouse_type * CAMERA_HELP_MOUSE_FRAMES_PER_ROW;
	}
	if (!MouseHelpMaterial)
	{
		MouseHelpTexture = LH3DTexture::Create("data\\textures\\mousehelp.raw",
		                                       LH3D_TEXTURE_TYPE_FILE | LH3D_TEXTURE_FLAGS_ALPHA, 0, NULL);
		MouseHelpMaterial =
			LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA, MouseHelpTexture);
	}
	if (!MouseHelpMaterial || frame < 0 || colour == 0)
	{
		return;
	}
	float u = (frame & (CAMERA_HELP_MOUSE_FRAMES_PER_ROW - 1)) * CAMERA_HELP_MOUSE_FRAME_UV;
	float v = (frame / CAMERA_HELP_MOUSE_FRAMES_PER_ROW) * CAMERA_HELP_MOUSE_FRAME_UV;
	float du = CAMERA_HELP_MOUSE_FRAME_UV;
	int   x2 = x + size;
	int   y2 = y + size;
	if (mirror)
	{
		u += CAMERA_HELP_MOUSE_FRAME_UV;
		du = -CAMERA_HELP_MOUSE_FRAME_UV;
	}
	LHVideoPlayer::g_list_vertex[0].x = x;
	LHVideoPlayer::g_list_vertex[0].uv.x = u;
	LHVideoPlayer::g_list_vertex[0].y = y;
	LHVideoPlayer::g_list_vertex[0].uv.y = v;
	LHVideoPlayer::g_list_vertex[1].x = x2;
	LHVideoPlayer::g_list_vertex[1].uv.x = u + du;
	LHVideoPlayer::g_list_vertex[1].y = y;
	LHVideoPlayer::g_list_vertex[1].uv.y = v;
	LHVideoPlayer::g_list_vertex[2].x = x2;
	LHVideoPlayer::g_list_vertex[2].uv.x = u + du;
	LHVideoPlayer::g_list_vertex[2].y = y2;
	LHVideoPlayer::g_list_vertex[2].uv.y = v + CAMERA_HELP_MOUSE_FRAME_UV;
	LHVideoPlayer::g_list_vertex[3].x = x;
	LHVideoPlayer::g_list_vertex[3].uv.x = u;
	LHVideoPlayer::g_list_vertex[3].y = y2;
	LHVideoPlayer::g_list_vertex[3].uv.y = v + CAMERA_HELP_MOUSE_FRAME_UV;
	LHVideoPlayer::g_list_vertex[0].color = LHVideoPlayer::g_list_vertex[1].color =
		LHVideoPlayer::g_list_vertex[2].color = LHVideoPlayer::g_list_vertex[3].color = colour;
	LH3DRender::SetMaterial(MouseHelpMaterial, 0);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, false);
	DrawAndClip2D(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, LHVideoPlayer::g_list_vertex, 4, LHVideoPlayer::g_index, 6);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, true);
}
#endif

void CameraHelp::DrawMouseCallback()
{
	int width = LHSys::GetScreen().width;
	if (MouseHelpClickType != CH_CLICKTYPE_UNASSIGNED)
	{
		DrawMouse(MouseHelpClickType, MouseHelpMouseType, MouseHelpAnimate ? CH_ANIMTYPE_CLICK : CH_ANIMTYPE_NONE,
		          (int)((MouseHelpX + MouseHelpSize) * width), (int)(LHSys::GetScreen().height * MouseHelpY),
		          (int)(width * MouseHelpSize), MouseHelpColour);
	}
	float timeInc = LH3DTech::g_delta_time * CAMERA_HELP_SECONDS_PER_MILLISECOND;
	for (KMIcon* icon = KMIcon::First; icon; icon = icon->Next)
	{
		icon->Draw(timeInc);
	}
}

float CameraHelp::GetKeyWidth(wchar_t* text, float scale, int y_min, int y_max)
{
	if (text)
	{
		GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
		float          width = font->GetStringWidth(text, wcslen(text),
		                                            scale * (y_max - y_min) / CAMERA_HELP_KEY_TEXT_SIZE_DIVISOR, 1.0f) +
		                       CAMERA_HELP_KEY_PADDING(y_max - y_min);
		if (width < y_max - y_min)
		{
			width = y_max - y_min;
		}
		return width;
	}
	return 0.0f;
}

void CameraHelp::DrawKey(wchar_t* text, float scale, int x_min, int y_min, int x_max, int y_max, int alpha)
{
	SetupThing::DrawAlpha = alpha;
	int left = x_min + CAMERA_HELP_KEY_CAP_WIDTH(y_max - y_min);
	int right = x_max - CAMERA_HELP_KEY_CAP_WIDTH(y_max - y_min);
	SetupThing::DrawBox(x_min, y_min, left, y_max, CAMERA_HELP_KEY_U0, CAMERA_HELP_KEY_V0, CAMERA_HELP_KEY_U1,
	                    CAMERA_HELP_KEY_V1, LH3DAtmos::mat0,
	                    &LH3DColor(LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, alpha),
	                    false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	SetupThing::DrawBox(left, y_min, right, y_max, CAMERA_HELP_KEY_U1, CAMERA_HELP_KEY_V0, CAMERA_HELP_KEY_U2,
	                    CAMERA_HELP_KEY_V1, LH3DAtmos::mat0,
	                    &LH3DColor(LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, alpha),
	                    false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	SetupThing::DrawBox(right, y_min, x_max, y_max, CAMERA_HELP_KEY_U2, CAMERA_HELP_KEY_V0, CAMERA_HELP_KEY_U3,
	                    CAMERA_HELP_KEY_V1, LH3DAtmos::mat0,
	                    &LH3DColor(LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, alpha),
	                    false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	if (text)
	{
		GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
		font->DrawTextRaw(text, wcslen(text), x_min + CAMERA_HELP_KEY_TEXT_X(y_max - y_min),
		                  y_min + CAMERA_HELP_KEY_TEXT_Y(y_max - y_min),
		                  LH3DTech::g_info_transform.NearClip * CAMERA_HELP_KEY_TEXT_DEPTH_SCALE,
		                  scale * (y_max - y_min) / CAMERA_HELP_KEY_TEXT_SIZE_DIVISOR, &LH3DColor(0, 0, 0, alpha),
		                  false, NULL, 0.0f, CAMERA_HELP_KEY_TEXT_CLIP_END);
	}
}

void CameraHelp::DrawGlow(int x_min, int y_min, int x_max, int y_max, unsigned long colour)
{
	int margin = CAMERA_HELP_GLOW_MARGIN(y_max - y_min);
	int outerLeft = x_min - margin;
	int innerLeft = x_min + margin;
	int innerRight = x_max - margin;
	int outerRight = x_max + margin;
	int outerTop = y_min - margin;
	int innerTop = y_min + margin;
	int innerBottom = y_max - margin;
	int outerBottom = y_max + margin;
	SetupThing::DrawAlpha = RGBA_GETALPHA(colour);
	SetupThing::DrawBox(outerLeft, outerTop, innerLeft, innerTop, CAMERA_HELP_GLOW_U0, CAMERA_HELP_GLOW_V0,
	                    CAMERA_HELP_GLOW_U1, CAMERA_HELP_GLOW_V1, LH3DAtmos::mat1, &LH3DColor(colour), false,
	                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	SetupThing::DrawBox(innerLeft, outerTop, innerRight, innerTop, CAMERA_HELP_GLOW_U1, CAMERA_HELP_GLOW_V0,
	                    CAMERA_HELP_GLOW_U2, CAMERA_HELP_GLOW_V1, LH3DAtmos::mat1, &LH3DColor(colour), false,
	                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	SetupThing::DrawBox(innerRight, outerTop, outerRight, innerTop, CAMERA_HELP_GLOW_U2, CAMERA_HELP_GLOW_V0,
	                    CAMERA_HELP_GLOW_U3, CAMERA_HELP_GLOW_V1, LH3DAtmos::mat1, &LH3DColor(colour), false,
	                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	SetupThing::DrawBox(outerLeft, innerTop, innerLeft, innerBottom, CAMERA_HELP_GLOW_U0, CAMERA_HELP_GLOW_V1,
	                    CAMERA_HELP_GLOW_U1, CAMERA_HELP_GLOW_V2, LH3DAtmos::mat1, &LH3DColor(colour), false,
	                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	SetupThing::DrawBox(innerLeft, innerTop, innerRight, innerBottom, CAMERA_HELP_GLOW_U1, CAMERA_HELP_GLOW_V1,
	                    CAMERA_HELP_GLOW_U2, CAMERA_HELP_GLOW_V2, LH3DAtmos::mat1, &LH3DColor(colour), false,
	                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	SetupThing::DrawBox(innerRight, innerTop, outerRight, innerBottom, CAMERA_HELP_GLOW_U2, CAMERA_HELP_GLOW_V1,
	                    CAMERA_HELP_GLOW_U3, CAMERA_HELP_GLOW_V2, LH3DAtmos::mat1, &LH3DColor(colour), false,
	                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	SetupThing::DrawBox(outerLeft, innerBottom, innerLeft, outerBottom, CAMERA_HELP_GLOW_U0, CAMERA_HELP_GLOW_V2,
	                    CAMERA_HELP_GLOW_U1, CAMERA_HELP_GLOW_V3, LH3DAtmos::mat1, &LH3DColor(colour), false,
	                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	SetupThing::DrawBox(innerLeft, innerBottom, innerRight, outerBottom, CAMERA_HELP_GLOW_U1, CAMERA_HELP_GLOW_V2,
	                    CAMERA_HELP_GLOW_U2, CAMERA_HELP_GLOW_V3, LH3DAtmos::mat1, &LH3DColor(colour), false,
	                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	SetupThing::DrawBox(innerRight, innerBottom, outerRight, outerBottom, CAMERA_HELP_GLOW_U2, CAMERA_HELP_GLOW_V2,
	                    CAMERA_HELP_GLOW_U3, CAMERA_HELP_GLOW_V3, LH3DAtmos::mat1, &LH3DColor(colour), false,
	                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
}

void CameraHelp::DrawKeyOrMouse(CH_ANIMTYPE anim_type, int key, int mouse_type, wchar_t* text, int x, int y, int size,
                                KEYALIGN align, LH3DColor* colour1, LH3DColor* colour2, int alpha)
{
	if ((align & KEYALIGN_AT_HAND) == KEYALIGN_AT_HAND)
	{
		LHPoint handPos = *(LHPoint*)&GGame::g_game->MyInterface()->GetRenderHand()->Get3DObject()->matrix._41;
		int     screenX;
		int     screenY;
		float   depth;
		if (LH3DTech::ProjectPoint(&handPos, &screenX, &screenY, &depth) == LH3D_PROJECT_BEHIND_CAMERA)
			return;
		x += screenX;
		y += screenY;
		if (y < 0)
			y = 0;
		if (y > LHSys::TheSystem.screen.height - size)
			y = LHSys::TheSystem.screen.height - size;
		if (x < 0)
			x = 0;
		if (x > LHSys::TheSystem.screen.width - size)
			x = LHSys::TheSystem.screen.width - size;
	}
	else
		y += -(size / 2);
	GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
	LH3DColor* textColour = colour1 ? colour1
	                                : &LH3DColor(LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX,
	                                             LH3D_COLOR_CHANNEL_MAX);
	LH3DColor* iconColour = colour2 ? colour2 : textColour;
	LH3DColor  shadow(textColour->GetColor() & LH3D_COLOR_ALPHA_MASK);
	if (textColour->a < CAMERA_HELP_ICON_MIN_ALPHA && iconColour->a < CAMERA_HELP_ICON_MIN_ALPHA)
		return;
	wchar_t label[0x80];
	float   width;
	if (anim_type == CH_ANIMTYPE_KEY)
	{
		if (key == 0)
			wcscpy(label, (wchar_t*)mouse_type);
		else
		{
			wchar_t keyName[0x20];
			wchar_t modifierName[0x20];
			memset(keyName, 0, sizeof(keyName));
			memset(modifierName, 0, sizeof(modifierName));
			GetKeyNameText_(CONTROL_KEY_NAME_DATA(key), keyName, CAMERA_HELP_ICON_KEY_NAME_LENGTH);
			GetKeyNameText_(CONTROL_KEY_NAME_DATA(mouse_type), modifierName, CAMERA_HELP_ICON_KEY_NAME_LENGTH);
			if (mouse_type)
				UNICODE_sprintf(label, L"%s + %s", modifierName, keyName);
			else
				wcscpy(label, keyName);
		}
		width = GetKeyWidth(label, 1.0f, 0, size);
	}
	else
	{
		width = size;
		if (mouse_type == CH_MOUSETYPE_NONE)
			width = 0.0f;
	}
	float iconWidth = width;
	int   arrowLeft = align & KEYALIGN_ARROW_LEFT;
	if (arrowLeft)
		width += CAMERA_HELP_ARROW_LENGTH(size);
	int arrowRight = align & KEYALIGN_ARROW_RIGHT;
	if (arrowRight)
		width += CAMERA_HELP_ARROW_LENGTH(size);
	float textSize = CAMERA_HELP_ICON_TEXT_SIZE(size);
	if (NeedsBiggerText())
		textSize = CAMERA_HELP_ICON_BIG_TEXT_SIZE(size);
	float    stringWidth = text ? font->GetStringWidth(text, wcslen(text), textSize, 1.0f) : 0.0f;
	float    totalWidth = text ? stringWidth + width + CAMERA_HELP_ICON_TEXT_GAP : width;
	bool32_t isRight = false;
	if (align & KEYALIGN_ANCHOR_RIGHT)
		isRight = true;
	if (align & KEYALIGN_AUTO_SIDE)
	{
		static bool32_t side = false;
		int             screenWidth = LHSys::TheSystem.screen.width;
		if (x > CAMERA_HELP_ICON_RIGHT_SIDE_START(screenWidth))
			side = true;
		if (x < CAMERA_HELP_ICON_LEFT_SIDE_END(screenWidth))
			side = false;
		if (!side)
		{
			isRight = false;
			x += -(size / 2);
		}
		else
		{
			isRight = true;
			x += size / 2;
		}
	}
	if (isRight)
		x = (int)(x - totalWidth);
	bool32_t textFirst = false;
	if (align & KEYALIGN_TEXT_BEFORE_ICON)
		textFirst = true;
	if (align & KEYALIGN_TEXT_BEFORE_ICON_ON_RIGHT)
		textFirst = isRight;
	int iconX = (int)(textFirst ? x + stringWidth + CAMERA_HELP_ICON_TEXT_GAP : x);
	int textX = (int)(textFirst ? x : x + width + CAMERA_HELP_ICON_TEXT_GAP);
	if (arrowLeft)
		iconX += CAMERA_HELP_ARROW_LENGTH(size);
	if (alpha)
	{
#ifdef VERSION_BW1W130
		if (iconWidth != 0.0f && !LHSys::TheSystem.GloveActive)
#else
		if (iconWidth != 0.0f)
#endif
			DrawGlow(iconX, y, (int)(iconX + iconWidth), y + size,
			         (iconColour->GetColor() & LH3D_COLOR_RGB_MASK) + (alpha << 24));
		uint32_t glowColour =
			(CAMERA_HELP_ICON_TEXT_GLOW_ALPHA(alpha) << 24) + (textColour->GetColor() & LH3D_COLOR_RGB_MASK);
		if (*text)
		{
			float textOffset = (size - textSize) * 0.5f;
			DrawGlow(textX, (int)(y + textOffset), (int)(textX + stringWidth), (int)(y + size - textOffset),
			         glowColour);
		}
		SetupThing::DrawAlpha = RGBA_GETALPHA(glowColour);
#ifdef VERSION_BW1W130
		if (!LHSys::TheSystem.GloveActive)
#endif
		{
			if (arrowLeft)
				DrawGlow(iconX - CAMERA_HELP_ARROW_LENGTH(size), y + CAMERA_HELP_ARROW_START(size), iconX,
				         y + CAMERA_HELP_ARROW_END(size), glowColour);
			if (arrowRight)
				DrawGlow((int)(iconX + iconWidth), y + CAMERA_HELP_ARROW_START(size),
				         (int)(iconX + iconWidth + CAMERA_HELP_ARROW_LENGTH(size)), y + CAMERA_HELP_ARROW_END(size),
				         glowColour);
			if (align & KEYALIGN_ARROW_UP)
				DrawGlow(iconX + CAMERA_HELP_ARROW_START(size), y - CAMERA_HELP_ARROW_LENGTH(size),
				         iconX + CAMERA_HELP_ARROW_END(size), y, glowColour);
			if (align & KEYALIGN_ARROW_DOWN)
				DrawGlow(iconX + CAMERA_HELP_ARROW_START(size), y + size, iconX + CAMERA_HELP_ARROW_END(size),
				         y + CAMERA_HELP_ARROW_LENGTH(size) + size, glowColour);
		}
	}
	if (anim_type == CH_ANIMTYPE_KEY)
		DrawKey(label, 1.0f, iconX, y, (int)(iconX + iconWidth), y + size, iconColour->a);
	else if (mouse_type != CH_MOUSETYPE_NONE)
		DrawMouse((CH_CLICKTYPE)key, (CH_MOUSETYPE)mouse_type, anim_type, iconX, y, size, iconColour->GetColor());
#ifdef VERSION_BW1W130
	float border = -size * (1.0f / CAMERA_HELP_ARROW_BORDER_DIVISOR);
#else
	float border = -size / CAMERA_HELP_ARROW_BORDER_DIVISOR;
#endif
	SetupThing::DrawAlpha = iconColour->a;
#ifdef VERSION_BW1W130
	if (LHSys::TheSystem.GloveActive)
	{
		if (arrowLeft)
			SetupThing::DrawBox((int)(iconX - size / 2 + border), (int)(y + size + border), (int)(iconX - border),
			                    (int)(y + 3 * size / 2 - border), CAMERA_HELP_ARROW_U0, CAMERA_HELP_ARROW_V2,
			                    CAMERA_HELP_ARROW_U1, CAMERA_HELP_ARROW_V3, LH3DAtmos::mat0, iconColour, false,
			                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
		if (arrowRight)
			SetupThing::DrawBox((int)(iconX + border + iconWidth * 2), (int)(y + size + border),
			                    (int)(iconX - border + size / 2 + iconWidth * 2), (int)(y + 3 * size / 2 - border),
			                    CAMERA_HELP_ARROW_U2, CAMERA_HELP_ARROW_V0, CAMERA_HELP_ARROW_U3, CAMERA_HELP_ARROW_V1,
			                    LH3DAtmos::mat0, iconColour, false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false,
			                    CAMERA_HELP_BOX_DISTANCE);
		if (align & KEYALIGN_ARROW_UP)
			SetupThing::DrawBox((int)(iconX + size / 2 - border), (int)(y - size / 2 + border), iconX + 3 * size / 2,
			                    (int)(y - border), CAMERA_HELP_ARROW_U0, CAMERA_HELP_ARROW_V0, CAMERA_HELP_ARROW_U1,
			                    CAMERA_HELP_ARROW_V1, LH3DAtmos::mat0, iconColour, false, -SETUP_NO_CLIP, SETUP_NO_CLIP,
			                    false, CAMERA_HELP_BOX_DISTANCE);
		if (align & KEYALIGN_ARROW_DOWN)
			SetupThing::DrawBox((int)(iconX + size / 2 - border), (int)(y + size * 2 - border * 3),
			                    iconX + 3 * size / 2, (int)(y + size * 3 - border * 2), CAMERA_HELP_ARROW_U2,
			                    CAMERA_HELP_ARROW_V2, CAMERA_HELP_ARROW_U3, CAMERA_HELP_ARROW_V3, LH3DAtmos::mat0,
			                    iconColour, false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	}
	else
#endif
	{
		if (arrowLeft)
			SetupThing::DrawBox((int)(iconX - CAMERA_HELP_ARROW_LENGTH(size) + border),
			                    (int)(y + CAMERA_HELP_ARROW_START(size) + border), (int)(iconX - border),
			                    (int)(y + CAMERA_HELP_ARROW_END(size) - border), CAMERA_HELP_ARROW_U0,
			                    CAMERA_HELP_ARROW_V2, CAMERA_HELP_ARROW_U1, CAMERA_HELP_ARROW_V3, LH3DAtmos::mat0,
			                    iconColour, false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
		if (arrowRight)
			SetupThing::DrawBox((int)(iconX + border + iconWidth), (int)(y + CAMERA_HELP_ARROW_START(size) + border),
			                    (int)(iconX - border + CAMERA_HELP_ARROW_LENGTH(size) + iconWidth),
			                    (int)(y + CAMERA_HELP_ARROW_END(size) - border), CAMERA_HELP_ARROW_U2,
			                    CAMERA_HELP_ARROW_V0, CAMERA_HELP_ARROW_U3, CAMERA_HELP_ARROW_V1, LH3DAtmos::mat0,
			                    iconColour, false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
		if (align & KEYALIGN_ARROW_UP)
			SetupThing::DrawBox((int)(iconX + CAMERA_HELP_ARROW_START(size) + border),
			                    (int)(y - CAMERA_HELP_ARROW_LENGTH(size) + border),
			                    (int)(iconX - border + CAMERA_HELP_ARROW_END(size)), (int)(y - border),
			                    CAMERA_HELP_ARROW_U0, CAMERA_HELP_ARROW_V0, CAMERA_HELP_ARROW_U1, CAMERA_HELP_ARROW_V1,
			                    LH3DAtmos::mat0, iconColour, false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false,
			                    CAMERA_HELP_BOX_DISTANCE);
		if (align & KEYALIGN_ARROW_DOWN)
			SetupThing::DrawBox((int)(iconX + CAMERA_HELP_ARROW_START(size) + border), (int)(y + size + border),
			                    (int)(iconX - border + CAMERA_HELP_ARROW_END(size)),
			                    (int)(y + CAMERA_HELP_ARROW_LENGTH(size) + size - border), CAMERA_HELP_ARROW_U2,
			                    CAMERA_HELP_ARROW_V2, CAMERA_HELP_ARROW_U3, CAMERA_HELP_ARROW_V3, LH3DAtmos::mat0,
			                    iconColour, false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, CAMERA_HELP_BOX_DISTANCE);
	}
	if (text)
	{
		float textOffset = (size - textSize) * 0.5f;
		font->DrawTextRaw(text, wcslen(text), textX - CAMERA_HELP_ICON_SHADOW_OFFSET,
		                  y - CAMERA_HELP_ICON_SHADOW_OFFSET + textOffset,
		                  LH3DTech::g_info_transform.NearClip * CAMERA_HELP_KEY_TEXT_DEPTH_SCALE, textSize, &shadow,
		                  false, NULL, 0.0f, CAMERA_HELP_KEY_TEXT_CLIP_END);
		font->DrawTextRaw(text, wcslen(text), textX + CAMERA_HELP_ICON_SHADOW_OFFSET,
		                  y + CAMERA_HELP_ICON_SHADOW_OFFSET + textOffset,
		                  LH3DTech::g_info_transform.NearClip * CAMERA_HELP_KEY_TEXT_DEPTH_SCALE, textSize, &shadow,
		                  false, NULL, 0.0f, CAMERA_HELP_KEY_TEXT_CLIP_END);
		font->DrawTextRaw(text, wcslen(text), textX, y + textOffset,
		                  LH3DTech::g_info_transform.NearClip * CAMERA_HELP_KEY_TEXT_DEPTH_SCALE, textSize,
		                  &LH3DColor(textColour->GetColor()), false, NULL, 0.0f, CAMERA_HELP_KEY_TEXT_CLIP_END);
	}
}

KMIcon* CameraHelp::CreateKeyOrMouseIcon(float start_alpha, float end_alpha, float fade_time, CH_ANIMTYPE anim_type,
                                         int key, int mouse_type, wchar_t* text, int x, int y, int size, KEYALIGN align,
                                         LH3DColor* colour1, LH3DColor* colour2, int alpha)
{
	KMIcon* icon = NEW(387) KMIcon;
	icon->StartAlpha = start_alpha;
	icon->EndAlpha = end_alpha;
	icon->FadeTime = fade_time;
	icon->Alpha = start_alpha;
	icon->Time = 0.0f;
	icon->AnimType = anim_type;
	icon->Key = key;
	icon->MouseType = mouse_type;
	icon->X = x;
	icon->Y = y;
	icon->Size = size;
	icon->Align = align;
	icon->MaxAlpha = alpha;
	if (text)
		wcscpy(icon->Text, text);
	else
		icon->Text[0] = 0;
	icon->Colour1 = *(colour1 ? colour1
	                          : &LH3DColor(LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX, LH3D_COLOR_CHANNEL_MAX,
	                                       LH3D_COLOR_CHANNEL_MAX));
	icon->Colour2 = *(colour2 ? colour2 : &icon->Colour1);
	return icon;
}

void KMIcon::Draw(float time_inc)
{
	Time += time_inc;
	if (Time < 0.0f)
		Time = 0.0f;
	if (Time > FadeTime)
		Time = FadeTime;
	Alpha = EndAlpha;
	if (FadeTime > 0.0f)
		Alpha = StartAlpha + (EndAlpha - StartAlpha) * (Time / FadeTime);
	float alpha = Alpha > 0.0f ? min(Alpha, 1.0f) : 0.0f;
	Colour2.a = Colour1.a = (int)(alpha * LH3D_COLOR_CHANNEL_MAX);
	if (SetupBox::GetCurrentActiveBox() == NULL ||
	    SetupBox::GetCurrentActiveBox()->BackgroundStyle == SETUP_BACKGROUND_NONE)
		CameraHelp::DrawKeyOrMouse(AnimType, Key, MouseType, Text, X, Y, Size, Align, &Colour1, &Colour2,
		                           (int)(MaxAlpha * alpha));
}

KMIcon::KMIcon()
{
	Next = First;
	First = this;
}

KMIcon::~KMIcon()
{
	KMIcon* icon = First;
	if (this == icon)
	{
		First = Next;
		return;
	}
	for (; icon && icon->Next; icon = icon->Next)
	{
		if (icon->Next == this)
		{
			icon->Next = Next;
			return;
		}
	}
}

void CameraHelpAccumulator::Draw(char* name, int x, int y)
{
	static char    text[0x81];
	static LHColor rateColour(0xff, 0, 0);
	static LHColor smoothedRateColour(0, 0xff, 0);
	static LHColor white(0xff, 0xff, 0xff);

	sprintf(text, "%s %6d %0.2f, %0.2f ; %0.2f", name, GetTotal(), GetTimeSinceLastUsed(), GetRate(),
	        SmoothedRate * CAMERA_HELP_STATS_SMOOTHED_TEXT_SCALE);
	LHSys::GetText().Draw(x - LHSys::GetText().StringWidth(text, NULL) - CAMERA_HELP_STATS_TEXT_GAP, y, text, 1);
	LHSys::GetDraw().Box(x, y, x - (int)(GetRate() * -CAMERA_HELP_STATS_RATE_BAR_SCALE),
	                     y + CAMERA_HELP_STATS_RATE_BAR_BOTTOM, rateColour, LH_DRAW_STYLE_SOLID);
	LHSys::GetDraw().Box(x, y + CAMERA_HELP_STATS_SMOOTHED_BAR_TOP,
	                     x - (int)(SmoothedRate * -CAMERA_HELP_STATS_SMOOTHED_BAR_SCALE),
	                     y + CAMERA_HELP_STATS_SMOOTHED_BAR_BOTTOM, smoothedRateColour, LH_DRAW_STYLE_SOLID);
}

int CameraHelpAccumulator::GetRowHeight()
{
	return CAMERA_HELP_STATS_ROW_HEIGHT;
}

void CameraHelpAccumulator::Reset()
{
	TotalTriggerCount = 0;
	TriggerTimeCount = 0;
	TriggerTimeHead = 0;
	SmoothedRate = 0;
	TriggeredThisFrame = 0;
}

float CameraHelpAccumulator::GetTimeSinceLastUsed()
{
	if (TriggerTimeCount == 0)
	{
		return 0.0f;
	}
	int elapsed =
		HelpProfile::AccumulatedTime - TriggerTimes[(TriggerTimeHead - 1) & (CAMERA_HELP_TRIGGER_TIME_COUNT - 1)];
	if (elapsed < 0)
	{
		ClampTriggerTimes();
		elapsed = 0;
	}
	return elapsed * CAMERA_HELP_SECONDS_PER_MILLISECOND;
}

void CameraHelpAccumulator::ClampTriggerTimes()
{
	for (int i = 0; i < CAMERA_HELP_TRIGGER_TIME_COUNT; i++)
	{
		if (TriggerTimes[i] > HelpProfile::AccumulatedTime)
		{
			TriggerTimes[i] = HelpProfile::AccumulatedTime;
		}
	}
}

float CameraHelpAccumulator::GetRate()
{
	if (TriggerTimeCount < 2)
	{
		return 0.0f;
	}
	int elapsed = HelpProfile::AccumulatedTime -
	              TriggerTimes[(TriggerTimeHead - TriggerTimeCount) & (CAMERA_HELP_TRIGGER_TIME_COUNT - 1)];
	if (elapsed < 0)
	{
		ClampTriggerTimes();
		return 0.0f;
	}
	if (elapsed == 0)
	{
		return 0.0f;
	}
	return (float)((TriggerTimeCount - 1) * CAMERA_HELP_MILLISECONDS_PER_SECOND) / elapsed;
}

void CameraHelpAccumulator::Trigger()
{
	if (!TriggeredThisFrame)
	{
		TotalTriggerCount++;
		TriggeredThisFrame = true;
		TriggerTimes[TriggerTimeHead] = HelpProfile::AccumulatedTime;
		TriggerTimeHead = (TriggerTimeHead + 1) & (CAMERA_HELP_TRIGGER_TIME_COUNT - 1);
		if (TriggerTimeCount < CAMERA_HELP_TRIGGER_TIME_COUNT)
		{
			TriggerTimeCount++;
		}
	}
}

char* CameraHelp::GetReasonName(CameraHelpReason reason)
{
	return ReasonNames[CAMERA_HELP_REASON_NAME_GROUP(reason)][CAMERA_HELP_REASON_NAME_INDEX(reason)];
}

char* CameraHelp::GetInputNames(unsigned long input_mask)
{
	static char names[0x400];
	names[0] = 0;
	bool32_t any = false;
	for (int i = 0; i < CAMERA_HELP_INPUT_COUNT; i++)
	{
		if (input_mask & (1 << i))
		{
			if (any)
			{
				strcat(names, ", ");
			}
			strcat(names, InputNames[i]);
			any = true;
		}
	}
	return names;
}

void CameraHelp::CameraHelpCallback(CameraHelpReason reason, LHPoint& point, unsigned long input_mask)
{
	int                      index = reason & CAMERA_HELP_REASON_INDEX_MASK;
	CAMERA_HELP_REASON_GROUP group = static_cast<CAMERA_HELP_REASON_GROUP>(reason & CAMERA_HELP_REASON_GROUP_MASK);
	if (group == CAMERA_HELP_REASON_GROUP_ACTION)
	{
		GGame::g_game->help_profile->Trigger(static_cast<HELP_EVENT_TYPE>(HELP_EVENT_TYPE_25 + index));
		for (int i = 0; i < CAMERA_HELP_INPUT_COUNT; i++)
		{
			if (input_mask & (1 << i))
			{
				InputAccumulators[i].Trigger();
			}
		}
	}
	else if (group == CAMERA_HELP_REASON_GROUP_COLLISION)
	{
		CollisionAccumulators[index].Trigger();
	}
	else if (group == CAMERA_HELP_REASON_GROUP_ERROR)
	{
		ErrorAccumulators[index].Trigger();
	}
}

void CameraHelp::ResetStats(bool)
{
	for (int i = 0; i < CAMERA_HELP_ERROR_REASON_COUNT; i++)
	{
		ErrorAccumulators[i].Reset();
	}
	for (int j = 0; j < CAMERA_HELP_COLLISION_REASON_COUNT; j++)
	{
		CollisionAccumulators[j].Reset();
	}
	for (int k = 0; k < CAMERA_HELP_INPUT_COUNT; k++)
	{
		InputAccumulators[k].Reset();
	}
}

void CameraHelp::ResetTriggers()
{
	for (int i = 0; i < CAMERA_HELP_ERROR_REASON_COUNT; i++)
	{
		CameraHelpAccumulator& accumulator = ErrorAccumulators[i];
		float blend = accumulator.TriggeredThisFrame ? CAMERA_HELP_SMOOTHED_RATE_RISE : CAMERA_HELP_SMOOTHED_RATE_FALL;
		accumulator.SmoothedRate += (accumulator.TriggeredThisFrame - accumulator.SmoothedRate) * blend;
		accumulator.TriggeredThisFrame = 0;
	}
	for (int j = 0; j < CAMERA_HELP_COLLISION_REASON_COUNT; j++)
	{
		CameraHelpAccumulator& accumulator = CollisionAccumulators[j];
		float blend = accumulator.TriggeredThisFrame ? CAMERA_HELP_SMOOTHED_RATE_RISE : CAMERA_HELP_SMOOTHED_RATE_FALL;
		accumulator.SmoothedRate += (accumulator.TriggeredThisFrame - accumulator.SmoothedRate) * blend;
		accumulator.TriggeredThisFrame = 0;
	}
	for (int k = 0; k < CAMERA_HELP_INPUT_COUNT; k++)
	{
		CameraHelpAccumulator& accumulator = InputAccumulators[k];
		float blend = accumulator.TriggeredThisFrame ? CAMERA_HELP_SMOOTHED_RATE_RISE : CAMERA_HELP_SMOOTHED_RATE_FALL;
		accumulator.SmoothedRate += (accumulator.TriggeredThisFrame - accumulator.SmoothedRate) * blend;
		accumulator.TriggeredThisFrame = 0;
	}
}

void CameraHelp::DrawStats(int x, int y)
{
	LHColor colour(0, 0, 0xff);
	LHSys::GetDraw().Box(0, y, LHSys::GetScreen().width / 2, y, colour, 0);
	y++;
	int                    i = 0;
	CameraHelpAccumulator* accumulator = ErrorAccumulators;
	while (i < CAMERA_HELP_ERROR_REASON_COUNT)
	{
		accumulator->Draw(GetReasonName(static_cast<CameraHelpReason>(CAMERA_HELP_REASON_GROUP_ERROR + i)), x, y);
		i++;
		accumulator = &ErrorAccumulators[i];
		y += accumulator->GetRowHeight();
	}
	LHSys::GetDraw().Box(0, y, LHSys::GetScreen().width / 2, y, colour, 0);
	y++;
	int j = 0;
	accumulator = CollisionAccumulators;
	while (j < CAMERA_HELP_COLLISION_REASON_COUNT)
	{
		accumulator->Draw(GetReasonName(static_cast<CameraHelpReason>(CAMERA_HELP_REASON_GROUP_COLLISION + j)), x, y);
		j++;
		accumulator = &CollisionAccumulators[j];
		y += accumulator->GetRowHeight();
	}
	LHSys::GetDraw().Box(0, y, LHSys::GetScreen().width / 2, y, colour, 0);
	y++;
	LHSys::GetDraw().Box(0, y, LHSys::GetScreen().width / 2, y, colour, 0);
	y++;
	int k = 0;
	accumulator = InputAccumulators;
	while (k < CAMERA_HELP_INPUT_COUNT)
	{
		accumulator->Draw(GetInputNames(1 << k), x, y);
		k++;
		accumulator = &InputAccumulators[k];
		y += accumulator->GetRowHeight();
	}
	LHSys::GetDraw().Box(0, y, LHSys::GetScreen().width / 2, y, colour, 0);
}

static HWND lastEditorWindow;

void __stdcall camera_editor_callback(unsigned long message, unsigned long wparam, unsigned long lparam)
{
	static LHPoint  cameraPos;
	static LHPoint  targetPos;
	static LHPoint  markerPos;
	static LHPoint  lastMarkerPos;
	static HWND     editorWindow;
	static float    fov;
	static bool     movingMarker;
	static uint32_t markerColour;
	static char     markerName[0x100];
	int             action = CAMERA_EDITOR_ACTION_NONE;
	switch (message)
	{
	case CAMERA_EDITOR_MESSAGE_START:
		editorWindow = (HWND)lparam;
		cameraPos = LHPoint(LH3DTech::GetCameraPosition());
		targetPos = LHPoint(LH3DTech::GetCameraTarget());
		fov = LH3DTech::g_camera.fov;
		lastEditorWindow = (HWND)lparam;
		SendMessage(editorWindow, CAMERA_EDITOR_WINDOW_MESSAGE(CAMERA_EDITOR_MESSAGE_CAMERA_X), 0,
		            *(LPARAM*)&cameraPos.x);
		SendMessage(editorWindow, CAMERA_EDITOR_WINDOW_MESSAGE(CAMERA_EDITOR_MESSAGE_CAMERA_Y), 0,
		            *(LPARAM*)&cameraPos.y);
		SendMessage(editorWindow, CAMERA_EDITOR_WINDOW_MESSAGE(CAMERA_EDITOR_MESSAGE_CAMERA_Z), 0,
		            *(LPARAM*)&cameraPos.z);
		SendMessage(editorWindow, CAMERA_EDITOR_WINDOW_MESSAGE(CAMERA_EDITOR_MESSAGE_TARGET_X), 0,
		            *(LPARAM*)&targetPos.x);
		SendMessage(editorWindow, CAMERA_EDITOR_WINDOW_MESSAGE(CAMERA_EDITOR_MESSAGE_TARGET_Y), 0,
		            *(LPARAM*)&targetPos.y);
		SendMessage(editorWindow, CAMERA_EDITOR_WINDOW_MESSAGE(CAMERA_EDITOR_MESSAGE_TARGET_Z), 0,
		            *(LPARAM*)&targetPos.z);
		SendMessage(editorWindow, CAMERA_EDITOR_WINDOW_MESSAGE(CAMERA_EDITOR_MESSAGE_FOV), 0, *(LPARAM*)&fov);
		break;
	case CAMERA_EDITOR_MESSAGE_CAMERA_X:
		cameraPos.x = *(float*)&lparam;
		break;
	case CAMERA_EDITOR_MESSAGE_CAMERA_Y:
		cameraPos.y = *(float*)&lparam;
		break;
	case CAMERA_EDITOR_MESSAGE_CAMERA_Z:
		cameraPos.z = *(float*)&lparam;
		action = CAMERA_EDITOR_ACTION_MOVE_CAMERA;
		break;
	case CAMERA_EDITOR_MESSAGE_TARGET_X:
		targetPos.x = *(float*)&lparam;
		break;
	case CAMERA_EDITOR_MESSAGE_TARGET_Y:
		targetPos.y = *(float*)&lparam;
		break;
	case CAMERA_EDITOR_MESSAGE_TARGET_Z:
		targetPos.z = *(float*)&lparam;
		action = CAMERA_EDITOR_ACTION_MOVE_TARGET;
		break;
	case CAMERA_EDITOR_MESSAGE_FOV:
		fov = *(float*)&lparam;
		action = CAMERA_EDITOR_ACTION_SET_FOV;
		break;
	case CAMERA_EDITOR_MESSAGE_MARKER_BEGIN:
		movingMarker = wparam != 0;
		markerColour = lparam;
		markerName[0] = 0;
		break;
	case CAMERA_EDITOR_MESSAGE_MARKER_X:
		markerPos.x = *(float*)&lparam;
		break;
	case CAMERA_EDITOR_MESSAGE_MARKER_Y:
		markerPos.y = *(float*)&lparam;
		break;
	case CAMERA_EDITOR_MESSAGE_MARKER_Z:
		markerPos.z = *(float*)&lparam;
		break;
	case CAMERA_EDITOR_MESSAGE_MARKER_NAME:
		strcat(markerName, (char*)&lparam);
		break;
	case CAMERA_EDITOR_MESSAGE_MARKER_COMMIT:
		if (movingMarker)
			delete CEMarker::FindIt(lastMarkerPos);
		CEMarker* marker = CEMarker::FindIt(markerPos);
		if (marker)
			delete marker;
		else
			CEMarker::Create(markerPos, markerColour, markerName);
		if (movingMarker)
			lastMarkerPos = markerPos;
		break;
	}
	GCamera* camera = GGame::g_game->GetCamera();
	if (camera)
	{
		CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(camera->GetCurrentMode());
		if (GGame::g_game->GetCamera())
		{
			if (action == CAMERA_EDITOR_ACTION_MOVE_CAMERA)
			{
				GGame::g_game->GetCamera()->CameraOriginZoomer.SetPosition(cameraPos);
				if (mode)
					mode->FlyToPosFoc(cameraPos, camera->CameraHeadingZoomer.GetDestination(), CAMERA_EDITOR_FLY_TIME);
			}
			if (action == CAMERA_EDITOR_ACTION_MOVE_TARGET)
			{
				GGame::g_game->GetCamera()->CameraHeadingZoomer.SetPosition(targetPos);
				if (mode)
					mode->FlyToPosFoc(camera->CameraOriginZoomer.GetDestination(), targetPos, CAMERA_EDITOR_FLY_TIME);
			}
			if (action == CAMERA_EDITOR_ACTION_SET_FOV)
			{
				float zoom = fov;
				GGame::g_game->GetCamera()->FovZoomer.SetPosition(zoom);
			}
		}
	}
}

// Inliner IL size: 70
// BW1W120 inlined BW1M119 null
inline void DrawTextRawChar(GatheringText* font, char* text, int count, float x, float y, float z, float size,
                            LH3DColor* color_top, bool32_t z_test, LH3DColor* color_bottom, float clip_top,
                            float clip_bottom)
{
	font->DrawTextRaw(CHAR2WCHAR(text), count, x, y, z, size, color_top, z_test, color_bottom, clip_top, clip_bottom);
}

CEMarker* CEMarker::Markers = NULL;

void CEMarker::Draw()
{
	static LH3DObject* object = NULL;
	if (!object)
	{
		object = LH3DObject::Create(LH3DObject::ANIMATED);
		object->SetMesh(LH3DMesh::GetPackedMesh(MSH_P_HIPPY), NULL, NULL);
		object->SetCurrentAnim(LH3DAnim::GetPackedAnim(ANM_P_WAITING_IMPATEINTLY));
		object->SetCurrentCycleTime(0);
		object->SetDynamicLighting(true);
	}
	if (object)
	{
		float altitude = LH3DIsland::GetAltitude(Pos);
		if (altitude > Pos.y)
			Pos.y = altitude;
		object->SetPosition(
			Pos, (float)(GetTickCount() / CEMARKER_SPIN_STEP_MS % CEMARKER_SPIN_STEPS) * (TWO_PI / CEMARKER_SPIN_STEPS),
			Scale);
		object->SetColorSpecular(LH3D_COLOR_WHITE, 0);
		object->Draw();
		if (Name[0])
		{
			GatheringText* font = GatheringText::gamefont[GAME_FONT_DEFAULT];
			if (font)
			{
				int   screenX;
				int   screenY;
				float depth;
				if (LH3DTech::ProjectPoint(&Pos, &screenX, &screenY, &depth))
				{
					DrawTextRawChar(font, Name, strlen(Name), screenX - CEMARKER_LABEL_SHADOW_OFFSET,
					                screenY + CEMARKER_LABEL_SHADOW_OFFSET - CEMARKER_LABEL_HEIGHT / depth,
					                depth + CEMARKER_LABEL_DEPTH, CEMARKER_LABEL_SIZE, &LH3DColor(LH3D_COLOR_BLACK),
					                true, NULL, 0.0f, CEMARKER_LABEL_CLIP_END);
					DrawTextRawChar(font, Name, strlen(Name), screenX, screenY - CEMARKER_LABEL_HEIGHT / depth, depth,
					                CEMARKER_LABEL_SIZE, &LH3DColor(Colour), true, NULL, 0.0f, CEMARKER_LABEL_CLIP_END);
				}
			}
		}
	}
}
