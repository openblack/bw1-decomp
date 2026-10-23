#include "LH3DRender.h"

#include <Lionhead/LHLib/ver5.0/LHScreen.h>   /* For LHResetFPU */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>   /* For LHSys */
#include <Lionhead/LHLib/ver5.0/LHTimer.h>    /* For LHTimer */
#include <Lionhead/LHLog/ver4.0/ErrorCodes.h> /* For LH_DX_Errors */
#include <Lionhead/LHLog/ver4.0/LHLogger.h>   /* For LHLogger */
#include <Lionhead/LHLog/ver4.0/LHVersion.h>  /* For LH_VERSION_INFO */

#include "GlowVillager.h"      /* For GlowVillager */
#include "LH3DAnim.h"          /* For LH3DAnim */
#include "LH3DAtmos.h"         /* For LH3DAtmos */
#include "LH3DCameraChecker.h" /* For LH3DCameraChecker */
#include "LH3DColor.h"         /* For LH3DColor */
#include "LH3DComplexObject.h" /* For LH3DComplexObject */
#include "LH3DDivers.h"        /* For BackgroundBox, LH3DDivers, LH3DWideScreen */
#include "LH3DFade.h"          /* For LH3DFade */
#include "LH3DFeetShadow.h"    /* For LH3DFeetShadow */
#include "LH3DIcon.h"          /* For LH3DIcon */
#include "LH3DLandscape.h"     /* For LH3DLandscape */
#include "LH3DLine.h"          /* For LH3DLine */
#include "LH3DMaterial.h"      /* For LH3DMaterial */
#include "LH3DMath.h"          /* For LH3DMath */
#include "LH3DMem.h"           /* For LH3DMem */
#include "LH3DMesh.h"          /* For LH3DMesh */
#include "LH3DMist.h"          /* For LH3DMist */
#include "LH3DObject.h"        /* For LH3DObject */
#include "LH3DP3.h"            /* For LH3DP3 */
#include "LH3DPrimitive.h"     /* For LH3DPrimitive */
#include "LH3DSky.h"           /* For LH3DSky */
#include "LH3DStaticObject.h"  /* For LH3DStaticObject */
#include "LH3DTShadow.h"       /* For LH3DTShadow */
#include "LH3DTech.h"          /* For LH3DTech */
#include "LH3DText.h"          /* For FontCache */
#include "LH3DTexture.h"       /* For LH3DTexture */
#include "LH3DVB.h"            /* For LH3DVB */
#include "LH3DVertex.h"        /* For Vertex3D, Vertex3DMT */
#include "LH3DWater.h"         /* For LH3DWater */
#include "LH3DZSorter.h"       /* For LH3DZSorter */
#include "LHPoint.h"           /* For LHPoint */
#include "LHRegion.h"          /* For LHRegion */
#include "SoftTri.h"           /* For SoftTri */

#include <ddraw.h> /* For DDPIXELFORMAT, DDSURFACEDESC2 */
#include <float.h> /* For FLT_MAX */

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\Libs\\LIONHEAD\\LH3DLIB\\DEVELOPMENT\\LH3DRender.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "C:\\dev\\branches\\P5New\\Libs\\LIONHEAD\\LH3DLIB\\DEVELOPMENT\\LH3DRender.cpp"
#elif defined(VERSION_BW1WCI)
#define FILEPATH "C:\\Dev\\Libs\\LIONHEAD\\LH3DLIB\\development\\LH3DRender.cpp"
#else
#define FILEPATH "C:\\DEV\\Libs\\LIONHEAD\\LH3DLIB\\DEVELOPMENT\\LH3DRender.cpp"
#endif

// The line of OpenD3D's z-buffer enumeration check: 1.10 added eleven lines above it, Creature Isle two more.
#if defined(VERSION_BW1W100)
#define LH3D_RENDER_ENUM_ZBUFFER_LINE 961
#elif defined(VERSION_BW1WCI)
#define LH3D_RENDER_ENUM_ZBUFFER_LINE 974
#else
#define LH3D_RENDER_ENUM_ZBUFFER_LINE 972
#endif

#define LH3D_RENDER_SORT_MAX_TRIANGLES 3000
#define LH3D_RENDER_SORT_BUCKETS       32
#define LH3D_RENDER_SORT_EMPTY         0xffff
#define LH3D_RENDER_ZBUFFER_FORMATS    4
#define LH3D_RENDER_LIST_POINTS        2048
#define LH3D_RENDER_ZSORTER_OBJECTS    2048
// The default field of view of SetD3DProjectionMatrix, 70 degrees.
#define LH3D_RENDER_DEFAULT_FOV           1.2217305f
#define LH3D_RENDER_FRAME_RATE_PERIOD     3000
#define LH3D_RENDER_FRAME_RATE_MIN_FRAMES 4
#define LH3D_RENDER_FRAME_RATE_MIN        5
#define LH3D_RENDER_MS_PER_SECOND         1000
// CleanScreen clears the target again if no frame was started for this long.
#define LH3D_RENDER_CLEAN_SCREEN_PERIOD 2000
#define LH3D_RENDER_POLY_RATE_SMOOTHING 0.8f
// A chroma key alpha reference is set this far under the material's.
#define LH3D_RENDER_CHROMA_ALPHA_REF_BIAS 5.0f
#define LH3D_RENDER_ALPHA_SCALE           (1.0f / 255.0f)
// A colour channel or light level of 0 to 255 as a fraction.
#define LH3D_RENDER_COLOR_SCALE (1.0f / 256.0f)
// The product of two of them.
#define LH3D_RENDER_LIGHT_SCALE  (1.0f / 65536.0f)
#define LH3D_RENDER_LIGHT_LEVELS 256
// The ambient light levels of hardware lighting.
#define LH3D_RENDER_MATERIAL_AMBIENT_LEVEL 50
#define LH3D_RENDER_TNL_AMBIENT            0x30

#define LH3D_RENDER_ZBUFFER_16_BITS 16
// The far plane of the projection OpenD3D sets up before the first frame.
#define LH3D_RENDER_OPEN_FAR_PLANE 5000.0f
// The colour of a material made by CreateMaterial, opaque blue.
#define LH3D_RENDER_DEFAULT_MATERIAL_COLOR 0xff0000ff
// The font cache is reset once this many entries were damaged.
#define LH3D_RENDER_MAX_FONT_CACHE_DAMAGE 1000
#define LH3D_RENDER_SHADOW_LOW_RES_PITCH  128
#define LH3D_RENDER_SHADOW_PITCH          256
#define LH3D_RENDER_COL_TAB_SIZE          12
// The ambient wind direction before Normalize.
#define LH3D_RENDER_AMBIENT_WIND_X 1.0f
#define LH3D_RENDER_AMBIENT_WIND_Y 0.0f
#define LH3D_RENDER_AMBIENT_WIND_Z 2.0f
// The x87 control word bits StartFrame sets up: rounding to nearest, 53-bit precision.
#define LH3D_RENDER_FPU_CONTROL_MASK 0x0d00
#define LH3D_RENDER_FPU_CONTROL_BITS 0x0200

// The screen's aspect ratio, width to height.
#define LH3D_RENDER_ASPECT_WIDTH  4.0f
#define LH3D_RENDER_ASPECT_HEIGHT 3.0f

static const float LH3D_RENDER_FAR_PLANE = FLT_MAX;

// BW1W120 0082b0f0 BW1M119 01009f20 (LHCombined Release)
void FrameRate();
// BW1W120 0082b370 BW1M119 010a5fd0 (LHCombined Release)
HRESULT CALLBACK EnumZBufferCallback(DDPIXELFORMAT* pixel_format, void* context);
// BW1W120 0082ba10 BW1M119 01008750 (LHCombined Release)
void UnSetStatesMultipassStyle();

uint32_t LH3DRender::g_render_states[LH3D_RENDER_STATE_COUNT];
uint32_t LH3DRender::g_texture_stage_state[LH3D_RENDER_TEXTURE_STAGE_COUNT][LH3D_RENDER_TEXTURE_STAGE_STATE_COUNT];
IDirectDrawSurface7* LH3DRender::g_texture_stage_ptr[LH3D_RENDER_TEXTURE_STAGE_COUNT];
int                  LH3DRender::g_curmode2tex;
LH3DMaterial*        LH3DRender::g_curmat2tex;
bool                 LH3DRender::g_use_multipass;

#if !defined(VERSION_BW1W100)
bool32_t g_b_any_kyro = false;
#endif
#if defined(VERSION_BW1WCI)
bool32_t g_b_any_matrox = false;
#endif
int           g_flash_villager = 0;
bool32_t      first_in_frame;
int           g_caca_object_processed;
unsigned long g_game_heap_used = 0;
unsigned long g_game_heap_total = 0;
#if defined(VERSION_BW1WCI)
LH3DRender::FinishFrameCallback g_after_fade_callback = NULL;
#endif

bool  g_enable_callbacks = true;
int   g_first_for_reset_all = true;
int   g_b_zbuffer_16b = true;
float g_scale_flash_villager = 1.0f;
int   g_frame_rate_stats = LH3D_RENDER_FRAME_RATE_MIN;

void FrameRate()
{
	static unsigned long start_time =
		(unsigned long)((float)(GetTickCount() - LH3DTech::g_timer.TickCount) * LH3DTech::g_timer.SpeedUpFactor +
	                    (float)(uint32_t)LH3DTech::g_timer.ElapsedTime);
	unsigned long now =
		(unsigned long)((float)(GetTickCount() - LH3DTech::g_timer.TickCount) * LH3DTech::g_timer.SpeedUpFactor +
	                    (float)(uint32_t)LH3DTech::g_timer.ElapsedTime);
	int elapsed = now - start_time;

	if (elapsed >= LH3D_RENDER_FRAME_RATE_PERIOD)
	{
		static int start_frame = LH3DRender::g_frame;
		int        frames = LH3DRender::g_frame - start_frame;

		if (frames >= LH3D_RENDER_FRAME_RATE_MIN_FRAMES)
		{
			int rate = frames * LH3D_RENDER_MS_PER_SECOND / elapsed;

			if (rate >= LH3D_RENDER_FRAME_RATE_MIN)
			{
				g_frame_rate_stats = rate;
				start_time = now;
				start_frame = LH3DRender::g_frame;
			}
		}
	}
}

LH3DRender::FinishFrameCallback LH3DRender::g_finish_frame_cb[LH3D_RENDER_FINISH_FRAME_CALLBACKS];
unsigned long                   LH3DRender::g_finish_frame_cb_priority[LH3D_RENDER_FINISH_FRAME_CALLBACKS];
void*                           LH3DRender::g_finish_frame_cb_data[LH3D_RENDER_FINISH_FRAME_CALLBACKS];
int                             LH3DRender::g_num_finish_frame_cb = 0;
LH3D_STATE_BLOCK_STYLE          LH3DRender::g_stateblockstyle[LH3D_2ND_TEX_MODE_COUNT];
LH3DStateBlock2Tex              LH3DRender::g_stateblock2tex[LH3D_2ND_TEX_MODE_COUNT];
GUID*                           LH3DRender::lpPrefferedDeviceGUID = NULL;
bool32_t                        LH3DRender::g_b_support_AGP = false;
bool32_t                        LH3DRender::g_b_support_TNL = false;
bool32_t                        LH3DRender::g_b_sorted_object_drawn_this_frame = false;
bool32_t                        LH3DRender::g_b_need_tilling = false;
D3DMATRIX                       LH3DRender::g_d3d_local2world;
D3DMATRIX                       LH3DRender::g_d3d_world2view;
D3DMATRIX                       LH3DRender::g_d3d_view2proj;
LH3DMaterial::RenderFuncEntry*  LH3DMaterial::g_list_render_func = NULL;
int                             LH3DRender::g_num_polys_drawn;
float                           LH3DRender::g_poly_rate;
float                           LH3DRender::g_poly_rate_smooth;
D3DLIGHT7                       LH3DRender::g_d3d_light;
D3DMATERIAL7                    LH3DRender::g_d3d_mat;
LH3DColor                       g_color_background(0, 0, 0, LH3D_COLOR_OPAQUE);
int                             LH3DRender::g_tex_display_idx = 0;
bool32_t                        LH3DRender::b_open = false;
bool32_t                        LH3DRender::b_need_init = false;
bool32_t                        LH3DRender::g_b_need_anim_uv = false;
float                           LH3DRender::g_adu = 0.0f;
float                           LH3DRender::g_adv = 0.0f;
IDirect3D7*                     LH3DRender::D3D = NULL;
IDirect3DDevice7*               LH3DRender::D3DDevice = NULL;
IDirectDrawSurface7*            LH3DRender::ZBufferSurface = NULL;
int                             LH3DRender::g_frame = 0;
bool32_t                        LH3DRender::g_started_frame = false;
LH3DZSorter*                    LH3DRender::g_zsorter = NULL;
LH3DMaterial*                   LH3DRender::g_current_active_material = NULL;
LH3DMaterial*                   LH3DRender::g_current_other_material = NULL;
int                             LH3DMaterial::g_count = 0;
bool32_t                        LH3DRender::g_b_active_g_alpha_ref = false;
unsigned long                   LH3DRender::g_alpha_ref = 0;
bool32_t                        LH3DMaterial::g_b_force_double_sided = false;
int                             LH3DRender::g_motion_blur_value = 0;
bool32_t                        LH3DRender::g_b_swap_texture = false;
bool32_t                        LH3DRender::g_show_debug_info = false;
bool32_t                        LH3DRender::g_b_use_wireframe = false;
int                             g_zddpf_count = 0;
DDPIXELFORMAT                   zbuffer_ddpf[LH3D_RENDER_ZBUFFER_FORMATS];
unsigned long                   g_mp_rs_ca1;
unsigned long                   g_mp_rs_co;
unsigned long                   g_mp_rs_aa1;
unsigned long                   g_mp_rs_ao;
unsigned long                   g_mp_rs_sb;
unsigned long                   g_mp_rs_db;
unsigned long                   g_mp_rs_abe;
unsigned long                   g_mp_rs_zc;
uint32_t                        g_original_render_states[LH3D_RENDER_STATE_COUNT];
uint32_t     g_original_texture_stage_state[LH3D_RENDER_TEXTURE_STAGE_COUNT][LH3D_RENDER_TEXTURE_STAGE_STATE_COUNT];
static char* LHLogLibraryName;
uint16_t     lookupTable[LH3D_RENDER_SORT_BUCKETS];
uint16_t     list_triangle[LH3D_RENDER_SORT_MAX_TRIANGLES];
uint16_t     sorted_indices[LH3D_RENDER_SORT_MAX_TRIANGLES * 3];

bool32_t                     LH3DRender::g_b_disable_TNL = true;
unsigned long                LH3DRender::g_save_tile = D3DTADDRESS_CLAMP;
LH3DRender::DrawTriangleFunc LH3DRender::g_draw_triangle_func = LH3DRender::DrawTriangle;
unsigned long                LH3DRender::g_tnl_ambient = LH3D_RENDER_TNL_AMBIENT;
unsigned long                LH3DRender::g_lastblend[LH3D_RENDER_TEXTURE_STAGE_COUNT] = {
	LH3D_RENDER_STATE_UNKNOWN, LH3D_RENDER_STATE_UNKNOWN, LH3D_RENDER_STATE_UNKNOWN, LH3D_RENDER_STATE_UNKNOWN,
	LH3D_RENDER_STATE_UNKNOWN, LH3D_RENDER_STATE_UNKNOWN, LH3D_RENDER_STATE_UNKNOWN, LH3D_RENDER_STATE_UNKNOWN,
};
bool32_t           LH3DRender::g_b_do_update_material = true;
int                LH3DRender::g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_COUNT;
LH3D_CLEANING_MODE LH3DRender::g_mode_cleaning = LH3D_CLEANING_MODE_SCREEN;

void LH3DRender::SetD3DMatrix(D3DMATRIX& d3d_matrix, LHMatrix& matrix)
{
	d3d_matrix._11 = matrix._11;
	d3d_matrix._12 = matrix._12;
	d3d_matrix._13 = matrix._13;
	d3d_matrix._14 = 0.0f;
	d3d_matrix._21 = matrix._21;
	d3d_matrix._22 = matrix._22;
	d3d_matrix._23 = matrix._23;
	d3d_matrix._24 = 0.0f;
	d3d_matrix._31 = matrix._31;
	d3d_matrix._32 = matrix._32;
	d3d_matrix._33 = matrix._33;
	d3d_matrix._34 = 0.0f;
	d3d_matrix._41 = matrix._41;
	d3d_matrix._42 = matrix._42;
	d3d_matrix._43 = matrix._43;
	d3d_matrix._44 = 1.0f;
}

void LH3DRender::ResetD3DMatrix(D3DMATRIX& matrix)
{
	matrix._11 = 1.0f;
	matrix._12 = 0.0f;
	matrix._13 = 0.0f;
	matrix._14 = 0.0f;
	matrix._21 = 0.0f;
	matrix._22 = 1.0f;
	matrix._23 = 0.0f;
	matrix._24 = 0.0f;
	matrix._31 = 0.0f;
	matrix._32 = 0.0f;
	matrix._33 = 1.0f;
	matrix._34 = 0.0f;
	matrix._41 = 0.0f;
	matrix._42 = 0.0f;
	matrix._43 = 0.0f;
	matrix._44 = 1.0f;
}

D3DMATRIX LH3DRender::SetD3DProjectionMatrix(D3DMATRIX& matrix, float near_plane, float far_plane, float fov)
{
	float angle = fov;
	if (angle == 0.0f)
	{
		angle = LH3D_RENDER_DEFAULT_FOV;
	}
	float w = 1.0f / (float)tan(angle * 0.5);
	float q = far_plane / (far_plane - near_plane);

	memset(&matrix, 0, sizeof(matrix));
	matrix._11 = w;
	matrix._22 = LH3D_RENDER_ASPECT_WIDTH * w / LH3D_RENDER_ASPECT_HEIGHT;
	matrix._33 = q;
	matrix._43 = -q * near_plane;
	matrix._34 = 1.0f;
	D3DDevice->SetTransform(D3DTRANSFORMSTATE_PROJECTION, &matrix);
	return matrix;
}

HRESULT CALLBACK EnumZBufferCallback(DDPIXELFORMAT* pixel_format, void* context)
{
	if (g_zddpf_count == LH3D_RENDER_ZBUFFER_FORMATS)
	{
		return D3DENUMRET_OK;
	}
	if (pixel_format->dwFlags == DDPF_ZBUFFER)
	{
		zbuffer_ddpf[g_zddpf_count] = *pixel_format;
		g_zddpf_count++;
		Report3D__FPCce("ZBUFFER: %d\n", pixel_format->dwZBufferBitDepth);
	}
	return D3DENUMRET_OK;
}

bool32_t LH3DRender::Open()
{
	Report3D__FPCce("#OPEN#\n");
	if (!b_need_init)
	{
		return false;
	}
	if (b_open)
	{
		Report3D__FPCce("<<<<< LH3DRender Start: multi calls. >>>>>\n");
		return false;
	}
	Report3D__FPCce("%d TEXTURE AVAILABLE \n", LHSys::TheSystem.screen.GetAvailableVidMem());
	if (LH3DMem::g_open)
	{
		Report3D__FPCce("Already Open!\n");
	}
	else
	{
		LH3DMem::g_current_amount = 0;
		LH3DMem::g_current_count = 0;
		LH3DMem::g_total_amount = 0;
		LH3DMem::g_total_count = 0;
		LH3DMem::g_open = true;
	}
	LH3DMath::Open();
	b_open = true;
	g_frame = 0;
	g_started_frame = false;
	OpenD3D();
	LH3DTech::RenderInitialization(LHSys::TheSystem.screen.width, LHSys::TheSystem.screen.height);
	LH3DTexture::Open();
	LH3DTech::g_ambient_wind_direction.Set(LH3D_RENDER_AMBIENT_WIND_X, LH3D_RENDER_AMBIENT_WIND_Y,
	                                       LH3D_RENDER_AMBIENT_WIND_Z);
	LH3DTech::g_ambient_wind_direction.FastNormalize();
	LH3DTShadow::g_pitch = LH3DTexture::g_b_use_low_res ? LH3D_RENDER_SHADOW_LOW_RES_PITCH : LH3D_RENDER_SHADOW_PITCH;
	for (int i = 0; i < LH3DTShadow::g_pitch; i++)
	{
		LH3DTShadow::g_list_scan_line[i].Used = false;
	}
	LH3DTShadow::VMAX = (float)(LH3DTShadow::g_pitch - 1);
	LH3DMaterial::g_count = 0;
	LH3DMaterial::SetGlobalAlpha(false);
	LH3DLine::Open();
	LH3DMesh::Open();
	LH3DObject::Open();
	LH3DWater::Open(LHSys::TheSystem.screen.height);
	LH3DLandscape::Open();
	LH3DDivers::Open();
	SoftTri::CalcColTab(0, LH3D_RENDER_COL_TAB_SIZE);
	LH3DP3::Init();
	g_motion_blur_value = 0;
	g_b_need_anim_uv = false;
	LH3DFeetShadow::Open();
	Report3D__FPCce(g_b_zbuffer_16b ? "using z buffer for sun before check\n"
	                                : "no z buffer compatibility before check\n");
	return true;
}

bool32_t LH3DRender::Close()
{
	if (!b_need_init)
	{
		return false;
	}
	if (!b_open)
	{
		Report3D__FPCce("<<<<< LH3DRender: Finish without start. >>>>>\n");
		return false;
	}
	Report3D__FPCce("#CLOSE#\n");
	b_open = false;
	LH3DFeetShadow::Close();
	LH3DDivers::Close();
	LH3DMist::Close();
	LH3DLandscape::Close();
	LH3DWater::Close();
	LH3DObject::Close();
	LH3DMesh::Close();
	if (LH3DAnim::g_pack != NULL)
	{
		LH3DAnimPack* pack = LH3DAnim::g_pack;
		for (int i = 0; i < pack->AnimCount; i++)
		{
			pack->Anims[i]->Release();
		}
		LH3DMem::Free(LH3DAnim::g_pack);
		LH3DAnim::g_pack = NULL;
	}
	LH3DLine::Close();
	LH3DMaterial::Close();
	LH3DTexture::Close();
	LH3DMath::Close();
	g_zsorter->Release();
	CloseD3D();
	if (!LH3DMem::g_open)
	{
#if defined(VERSION_BW1W100)
		Report3D__FPCce("Not Open!\n");
#else
		Report3D__FPCce("RV: LH3DMem::Close without open.\n");
#endif
	}
	else if (LH3DMem::g_current_count != 0 || LH3DMem::g_current_amount != 0)
	{
#if defined(VERSION_BW1W100)
		Report3D__FPCce("LH3DMem: Bad release: %d allocations, %d mem!\n", LH3DMem::g_current_count,
		                LH3DMem::g_current_amount);
#else
		Report3D__FPCce("RV: LH3DMem Close: %d allocation(s) not freed (%d bytes).\n", LH3DMem::g_current_count,
		                LH3DMem::g_current_amount);
#endif
	}
	return true;
}

void LH3DRender::SetStatesNVidiaStyle(unsigned long mode)
{
	SetTextureStageState(1, D3DTSS_TEXCOORDINDEX, 1);
	SetTextureStageState(1, D3DTSS_COLORARG1, D3DTA_TEXTURE);
	SetTextureStageState(1, D3DTSS_COLORARG2, D3DTA_CURRENT);
	SetTextureStageState(1, D3DTSS_COLOROP, mode);
	SetTextureStageState(1, D3DTSS_ALPHAARG1, D3DTA_CURRENT);
	SetTextureStageState(1, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1);
}

void LH3DRender::SetStatesVoodooStyle(unsigned long mode)
{
	SetTextureStageState(0, D3DTSS_TEXCOORDINDEX, 0);
	SetTextureStageState(0, D3DTSS_COLORARG1, D3DTA_TEXTURE);
	SetTextureStageState(0, D3DTSS_COLOROP, D3DTOP_SELECTARG1);
	SetTextureStageState(0, D3DTSS_ALPHAARG1, D3DTA_TEXTURE);
	SetTextureStageState(0, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1);
	SetTextureStageState(1, D3DTSS_TEXCOORDINDEX, 1);
	SetTextureStageState(1, D3DTSS_COLORARG1, D3DTA_TEXTURE);
	SetTextureStageState(1, D3DTSS_COLORARG2, D3DTA_CURRENT);
	SetTextureStageState(1, D3DTSS_COLOROP, mode);
	SetTextureStageState(1, D3DTSS_ALPHAARG1, D3DTA_CURRENT);
	SetTextureStageState(1, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1);
	SetTextureStageState(2, D3DTSS_TEXCOORDINDEX, 1);
	SetTextureStageState(2, D3DTSS_COLORARG1, D3DTA_CURRENT);
	SetTextureStageState(2, D3DTSS_COLORARG2, D3DTA_DIFFUSE);
	SetTextureStageState(2, D3DTSS_COLOROP, D3DTOP_MODULATE);
	SetTextureStageState(2, D3DTSS_ALPHAARG1, D3DTA_CURRENT);
	SetTextureStageState(2, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1);
	if (g_curmat2tex != NULL)
	{
		SetMaterial(g_curmat2tex, 1);
	}
}

void UnSetStatesMultipassStyle()
{
	LH3DRender::SetTextureStageState(0, D3DTSS_TEXCOORDINDEX, 0);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, g_mp_rs_abe);
	LH3DRender::SetTextureStageState(0, D3DTSS_COLORARG1, g_mp_rs_ca1);
	LH3DRender::SetTextureStageState(0, D3DTSS_COLOROP, g_mp_rs_co);
	LH3DRender::SetTextureStageState(0, D3DTSS_ALPHAARG1, g_mp_rs_aa1);
	LH3DRender::SetTextureStageState(0, D3DTSS_ALPHAOP, g_mp_rs_ao);
	LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, g_mp_rs_sb);
	LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, g_mp_rs_db);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, g_mp_rs_zc);
}

void LH3DRender::SetStatesMultipassStyle(unsigned long mode)
{
	GetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, g_mp_rs_abe);
	GetTextureStageState(0, D3DTSS_COLORARG1, g_mp_rs_ca1);
	GetTextureStageState(0, D3DTSS_COLOROP, g_mp_rs_co);
	GetTextureStageState(0, D3DTSS_ALPHAARG1, g_mp_rs_aa1);
	GetTextureStageState(0, D3DTSS_ALPHAOP, g_mp_rs_ao);
	GetRenderState(D3DRENDERSTATE_SRCBLEND, g_mp_rs_sb);
	GetRenderState(D3DRENDERSTATE_DESTBLEND, g_mp_rs_db);
	GetRenderState(D3DRENDERSTATE_ZFUNC, g_mp_rs_zc);
	SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
	SetTextureStageState(0, D3DTSS_TEXCOORDINDEX, 1);
	SetTextureStageState(0, D3DTSS_COLORARG1, D3DTA_TEXTURE);
	SetTextureStageState(0, D3DTSS_COLOROP, D3DTOP_SELECTARG1);
	SetTextureStageState(0, D3DTSS_ALPHAARG1, D3DTA_TEXTURE);
	SetTextureStageState(0, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1);
	SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_DISABLE);
	SetTextureStageState(1, D3DTSS_ALPHAOP, D3DTOP_DISABLE);
	SetTextureStageState(2, D3DTSS_COLOROP, D3DTOP_DISABLE);
	SetTextureStageState(2, D3DTSS_ALPHAOP, D3DTOP_DISABLE);
	SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_EQUAL);
	switch (mode)
	{
	case D3DTOP_SELECTARG2:
		SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ONE);
		SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ZERO);
		break;
	case D3DTOP_SELECTARG1:
		SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ZERO);
		SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ONE);
		break;
	case D3DTOP_MODULATE:
	case D3DTOP_MODULATE2X:
		SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_DESTCOLOR);
		SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_SRCCOLOR);
		break;
	case D3DTOP_ADD:
		SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ONE);
		SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ONE);
		break;
	}
}

void LH3DRender::Init2TexStuff()
{
	D3DDEVICEDESC7 desc;
	unsigned long  passes;

	ResetAllState();
	D3DDevice->BeginStateBlock();
	SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, FALSE);
	SetTextureStageState(0, D3DTSS_TEXCOORDINDEX, 0);
	SetTextureStageState(0, D3DTSS_COLORARG1, D3DTA_TEXTURE);
	SetTextureStageState(0, D3DTSS_COLORARG2, D3DTA_DIFFUSE);
	SetTextureStageState(0, D3DTSS_COLOROP, D3DTOP_MODULATE);
	SetTextureStageState(0, D3DTSS_ALPHAARG1, D3DTA_TEXTURE);
	SetTextureStageState(0, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1);
	SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_DISABLE);
	SetTextureStageState(1, D3DTSS_ALPHAOP, D3DTOP_DISABLE);
	SetTextureStageState(2, D3DTSS_COLOROP, D3DTOP_DISABLE);
	SetTextureStageState(2, D3DTSS_ALPHAOP, D3DTOP_DISABLE);
	D3DDevice->EndStateBlock(&g_stateblock2tex[LH3D_2ND_TEX_MODE_OFF].Handle);
	memset(&desc, 0, sizeof(desc));
	D3DDevice->GetCaps(&desc);
	for (unsigned long mode = D3DTOP_DISABLE; mode < LH3D_2ND_TEX_MODE_COUNT; mode++)
	{
		if (mode == D3DTOP_ADD)
		{
			Report3D__FPCce("check additive: ");
		}
		else if (mode == D3DTOP_MODULATE)
		{
			Report3D__FPCce("check modulate: ");
		}
		else if (mode == D3DTOP_MODULATE2X)
		{
			Report3D__FPCce("check modulate 2x: ");
		}
		else
		{
			Report3D__FPCce("check mode %d: ", mode);
		}
		bool32_t found = false;
		bool32_t supported = desc.dwTextureOpCaps & (1 << (mode - 1));
		Report3D__FPCce("(caps say it's %ssupported) ", supported ? "" : "NOT ");
		for (int pass = 0; pass < 2; pass++)
		{
			bool32_t voodoo = pass;
			if (g_b_any_voodoo)
			{
				voodoo = pass == 0;
				if (mode == D3DTOP_MODULATE2X)
				{
					supported = false;
				}
			}
#if !defined(VERSION_BW1W100)
			if (g_b_voodoo2 || g_b_banshee)
			{
				supported = false;
			}
#endif
			if (!voodoo)
			{
				if (!found && supported)
				{
					D3DDevice->ApplyStateBlock(g_stateblock2tex[LH3D_2ND_TEX_MODE_OFF].Handle);
					SetStatesNVidiaStyle(mode);
					if (D3DDevice->ValidateDevice(&passes) == D3D_OK && passes == 1)
					{
						D3DDevice->ApplyStateBlock(g_stateblock2tex[LH3D_2ND_TEX_MODE_OFF].Handle);
						D3DDevice->BeginStateBlock();
						SetStatesNVidiaStyle(mode);
						D3DDevice->EndStateBlock(&g_stateblock2tex[mode].Handle);
						g_stateblockstyle[mode] = LH3D_STATE_BLOCK_STYLE_NVIDIA;
						Report3D__FPCce("state block for mode %d is nvidia method!\n", mode);
						found = true;
					}
					D3DDevice->ApplyStateBlock(g_stateblock2tex[LH3D_2ND_TEX_MODE_OFF].Handle);
				}
			}
			else
			{
				if (!found && supported)
				{
					D3DDevice->ApplyStateBlock(g_stateblock2tex[LH3D_2ND_TEX_MODE_OFF].Handle);
					SetStatesVoodooStyle(mode);
					if (D3DDevice->ValidateDevice(&passes) == D3D_OK && passes == 1)
					{
						D3DDevice->ApplyStateBlock(g_stateblock2tex[LH3D_2ND_TEX_MODE_OFF].Handle);
						D3DDevice->BeginStateBlock();
						SetStatesVoodooStyle(mode);
						D3DDevice->EndStateBlock(&g_stateblock2tex[mode].Handle);
						Report3D__FPCce("state block for mode %d is voodoo method!\n", mode);
						found = true;
						g_stateblockstyle[mode] = LH3D_STATE_BLOCK_STYLE_VOODOO;
					}
					D3DDevice->ApplyStateBlock(g_stateblock2tex[LH3D_2ND_TEX_MODE_OFF].Handle);
				}
			}
		}
		if (!found)
		{
			D3DDevice->ApplyStateBlock(g_stateblock2tex[LH3D_2ND_TEX_MODE_OFF].Handle);
			g_stateblock2tex[mode].UseMultipass = true;
			D3DDevice->ApplyStateBlock(g_stateblock2tex[LH3D_2ND_TEX_MODE_OFF].Handle);
			D3DDevice->BeginStateBlock();
			SetStatesMultipassStyle(mode);
			D3DDevice->EndStateBlock(&g_stateblock2tex[mode].Handle);
			Report3D__FPCce("state block for mode %d is multipass method!\n", mode);
			g_stateblockstyle[mode] = LH3D_STATE_BLOCK_STYLE_MULTIPASS;
		}
		D3DDevice->ApplyStateBlock(g_stateblock2tex[LH3D_2ND_TEX_MODE_OFF].Handle);
	}
	ResetAllState();
}

int LH3DRender::ApplyStateBlock(int mode)
{
	switch (g_stateblockstyle[mode])
	{
	case LH3D_STATE_BLOCK_STYLE_VOODOO:
		SetStatesVoodooStyle(mode);
		break;
	case LH3D_STATE_BLOCK_STYLE_MULTIPASS:
		SetStatesMultipassStyle(mode);
		break;
	default:
		SetStatesNVidiaStyle(mode);
		break;
	}
	return 0;
}

void LH3DRender::Set2ndTex(int mode, LH3DMaterial* material, bool clear_material)
{
	g_lastblend[1] = LH3D_RENDER_STATE_UNKNOWN;
	g_lastblend[2] = LH3D_RENDER_STATE_UNKNOWN;
	g_curmode2tex = mode;
	if (material != NULL)
	{
		g_curmat2tex = material;
	}
	if (clear_material)
	{
		g_curmat2tex = NULL;
		g_current_other_material = NULL;
		material = NULL;
	}
	if (mode == LH3D_2ND_TEX_MODE_OFF || mode == D3DTOP_DISABLE)
	{
		g_lastblend[0] = LH3D_RENDER_STATE_UNKNOWN;
		g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_COUNT;
		g_use_multipass = false;
		SetMaterial(NULL, 1);
		SetMaterial(NULL, 2);
		SetTextureStageState(0, D3DTSS_TEXCOORDINDEX, 0);
		SetTextureStageState(1, D3DTSS_COLOROP, D3DTOP_DISABLE);
		SetTextureStageState(1, D3DTSS_ALPHAOP, D3DTOP_DISABLE);
		SetTextureStageState(2, D3DTSS_COLOROP, D3DTOP_DISABLE);
		SetTextureStageState(2, D3DTSS_ALPHAOP, D3DTOP_DISABLE);
		g_current_active_material = NULL;
	}
	else
	{
		g_use_multipass = g_stateblock2tex[mode].UseMultipass;
		if (material == NULL && !g_use_multipass)
		{
			material = g_current_other_material;
		}
		if (material != NULL)
		{
			SetMaterial(material, 1);
		}
		if (!g_use_multipass)
		{
			ApplyStateBlock(mode);
			if (material != NULL)
			{
				LH3DMaterial::g_list_render_func[material->GetMode()].Func(material, 1);
				if (g_b_need_tilling || material->IsNeedTilling())
				{
					SetD3DTillingOn(1);
				}
				else
				{
					SetD3DTillingOff(1);
				}
			}
		}
	}
}

void LH3DRender::Close2TexStuff()
{
	Set2ndTex(LH3D_2ND_TEX_MODE_OFF, NULL, true);
	for (int i = 0; i < LH3D_2ND_TEX_MODE_COUNT; i++)
	{
		if (g_stateblock2tex[i].Handle != 0)
		{
			D3DDevice->DeleteStateBlock(g_stateblock2tex[i].Handle);
		}
		g_stateblock2tex[i].Handle = 0;
	}
}

void LH3DRender::SetCurD3DMat(bool lit, unsigned long color, unsigned long specular)
{
	static bool          last_lit = false;
	static unsigned long last_color = LH3D_RENDER_STATE_UNKNOWN;
	static unsigned long last_specular = LH3D_RENDER_STATE_UNKNOWN;

	if (first_in_frame || lit != last_lit || color != last_color || specular != last_specular)
	{
		g_d3d_mat.specular.b = (float)(specular & LH3D_COLOR_CHANNEL_MASK) * LH3D_RENDER_COLOR_SCALE;
		g_d3d_mat.specular.g =
			(float)((specular >> LH3D_COLOR_GREEN_SHIFT) & LH3D_COLOR_CHANNEL_MASK) * LH3D_RENDER_COLOR_SCALE;
		last_specular = specular;
		g_d3d_mat.specular.r =
			(float)((specular >> LH3D_COLOR_RED_SHIFT) & LH3D_COLOR_CHANNEL_MASK) * LH3D_RENDER_COLOR_SCALE;
		first_in_frame = false;
		last_lit = lit;
		last_color = color;
		g_d3d_mat.specular.a = (float)(specular >> LH3D_COLOR_ALPHA_SHIFT) * LH3D_RENDER_COLOR_SCALE;
		if (lit)
		{
			float light = (LH3D_RENDER_LIGHT_LEVELS - LH3DPrimitive::MIN_LIGHT) * LH3D_RENDER_LIGHT_SCALE;
			float b = (float)(color & LH3D_COLOR_CHANNEL_MASK);
			g_d3d_mat.diffuse.b = b * light;
			float g = (float)((color >> LH3D_COLOR_GREEN_SHIFT) & LH3D_COLOR_CHANNEL_MASK);
			g_d3d_mat.diffuse.g = g * light;
			float r = (float)((color >> LH3D_COLOR_RED_SHIFT) & LH3D_COLOR_CHANNEL_MASK);
			g_d3d_mat.diffuse.r = r * light;
			g_d3d_mat.diffuse.a = (float)(color >> LH3D_COLOR_ALPHA_SHIFT) * LH3D_RENDER_COLOR_SCALE;
			light = LH3DPrimitive::MIN_LIGHT * LH3D_RENDER_LIGHT_SCALE;
			g_d3d_mat.ambient.b = b * light;
			g_d3d_mat.ambient.g = g * light;
			g_d3d_mat.ambient.r = r * light;
			g_d3d_mat.ambient.a = g_d3d_mat.diffuse.a;
		}
		else
		{
			g_d3d_mat.ambient.b = (float)(color & LH3D_COLOR_CHANNEL_MASK) * LH3D_RENDER_COLOR_SCALE;
			g_d3d_mat.ambient.g =
				(float)((color >> LH3D_COLOR_GREEN_SHIFT) & LH3D_COLOR_CHANNEL_MASK) * LH3D_RENDER_COLOR_SCALE;
			g_d3d_mat.diffuse.r = 0.0f;
			g_d3d_mat.diffuse.g = 0.0f;
			g_d3d_mat.diffuse.b = 0.0f;
			g_d3d_mat.ambient.r =
				(float)((color >> LH3D_COLOR_RED_SHIFT) & LH3D_COLOR_CHANNEL_MASK) * LH3D_RENDER_COLOR_SCALE;
			g_d3d_mat.diffuse.a = g_d3d_mat.ambient.a =
				(float)(color >> LH3D_COLOR_ALPHA_SHIFT) * LH3D_RENDER_COLOR_SCALE;
		}
		D3DDevice->SetMaterial(&g_d3d_mat);
	}
}

void LH3DRender::ResetAllState()
{
	D3DDevice->BeginScene();
	if (g_first_for_reset_all)
	{
		g_first_for_reset_all = false;
		for (int stage = 0; stage < LH3D_RENDER_TEXTURE_STAGE_COUNT; stage++)
		{
			for (int type = 0; type < LH3D_RENDER_TEXTURE_STAGE_STATE_COUNT; type++)
			{
				unsigned long value = LH3D_RENDER_STATE_UNKNOWN;
				if (D3DDevice->GetTextureStageState(stage, (D3DTEXTURESTAGESTATETYPE)type, &value) == D3D_OK)
				{
					g_original_texture_stage_state[stage][type] = value;
				}
				else
				{
					g_original_texture_stage_state[stage][type] = LH3D_RENDER_STATE_UNKNOWN;
				}
			}
		}
		for (int type = 0; type < LH3D_RENDER_STATE_COUNT; type++)
		{
			unsigned long value = LH3D_RENDER_STATE_UNKNOWN;
			if (D3DDevice->GetRenderState((D3DRENDERSTATETYPE)type, &value) == D3D_OK)
			{
				g_original_render_states[type] = value;
			}
			else
			{
				g_original_render_states[type] = LH3D_RENDER_STATE_UNKNOWN;
			}
		}
	}
	else
	{
		for (int type = 0; type < LH3D_RENDER_STATE_COUNT; type++)
		{
			if (g_original_render_states[type] != LH3D_RENDER_STATE_UNKNOWN)
			{
				SetRenderState((D3DRENDERSTATETYPE)type, g_original_render_states[type]);
			}
		}
		for (type = 0; type < LH3D_RENDER_TEXTURE_STAGE_STATE_COUNT; type++)
		{
			for (int stage = 0; stage < LH3D_RENDER_TEXTURE_STAGE_COUNT; stage++)
			{
				if (g_original_texture_stage_state[stage][type] != LH3D_RENDER_STATE_UNKNOWN)
				{
					SetTextureStageState(stage, (D3DTEXTURESTAGESTATETYPE)type,
					                     g_original_texture_stage_state[stage][type]);
				}
			}
		}
	}
	memset(g_texture_stage_ptr, 0, sizeof(g_texture_stage_ptr));
	SetRenderState(D3DRENDERSTATE_CULLMODE, D3DCULL_NONE);
	SetTextureStageState(0, D3DTSS_MINFILTER, D3DTFN_LINEAR);
	SetTextureStageState(1, D3DTSS_MINFILTER, D3DTFN_LINEAR);
	SetTextureStageState(0, D3DTSS_MAGFILTER, D3DTFG_LINEAR);
	SetTextureStageState(1, D3DTSS_MAGFILTER, D3DTFG_LINEAR);
	SetRenderState(D3DRENDERSTATE_DITHERENABLE, TRUE);
	SetTextureStageState(0, D3DTSS_ADDRESS, D3DTADDRESS_CLAMP);
	SetTextureStageState(1, D3DTSS_ADDRESS, D3DTADDRESS_CLAMP);
	SetRenderState(D3DRENDERSTATE_ALPHAFUNC, D3DCMP_GREATEREQUAL);
	SetRenderState(D3DRENDERSTATE_COLORKEYENABLE, FALSE);
	SetRenderState(D3DRENDERSTATE_ZBIAS, 0);
	SetRenderState(D3DRENDERSTATE_SHADEMODE, D3DSHADE_GOURAUD);
	if (g_b_any_voodoo)
	{
		SetRenderState(D3DRENDERSTATE_SPECULARENABLE, FALSE);
	}
	else
	{
		SetRenderState(D3DRENDERSTATE_SPECULARENABLE, TRUE);
	}
	SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, FALSE);
	SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ONE);
	SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ONE);
	SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	SetRenderState(D3DRENDERSTATE_ZENABLE, TRUE);
	SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	SetRenderState(D3DRENDERSTATE_TEXTUREPERSPECTIVE, TRUE);
	SetTextureStageState(0, D3DTSS_TEXCOORDINDEX, 0);
	SetTextureStageState(0, D3DTSS_COLORARG1, D3DTA_TEXTURE);
	SetTextureStageState(0, D3DTSS_COLOROP, D3DTOP_SELECTARG1);
	SetTextureStageState(0, D3DTSS_ALPHAARG1, D3DTA_TEXTURE);
	SetTextureStageState(0, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1);
	SetTextureStageState(0, D3DTSS_COLOROP, D3DTOP_MODULATE);
	SetTextureStageState(0, D3DTSS_COLORARG1, D3DTA_TEXTURE);
	SetTextureStageState(0, D3DTSS_COLORARG2, D3DTA_DIFFUSE);
	SetTextureStageState(1, D3DTSS_TEXCOORDINDEX, 1);
	SetRenderState(D3DRENDERSTATE_LIGHTING, TRUE);
	SetRenderState(D3DRENDERSTATE_COLORVERTEX, FALSE);
	SetRenderState(D3DRENDERSTATE_LOCALVIEWER, FALSE);
	SetRenderState(D3DRENDERSTATE_NORMALIZENORMALS, TRUE);
	SetRenderState(D3DRENDERSTATE_CLIPPING, FALSE);
	D3DDevice->EndScene();
}

bool32_t LH3DRender::OpenD3D()
{
	D3DVIEWPORT7   viewport;
	D3DDEVICEDESC7 desc;
	HRESULT        result;

	Report3D__FPCce("#OPEN D3D#\n");
	LHSys::TheSystem.screen.PDirectDraw->QueryInterface(IID_IDirect3D7, (void**)&D3D);
	ZBufferSurface = NULL;
	g_zsorter = LH3DZSorter::Create(LH3D_RENDER_ZSORTER_OBJECTS);
	g_mode_cleaning = LH3D_CLEANING_MODE_SCREEN;
	result = D3D->EnumZBufferFormats(IID_IDirect3DHALDevice, EnumZBufferCallback, NULL);
	if (result != D3D_OK)
	{
		LHLogger::LogErrorCodeS(LHLogLibraryName, FILEPATH, LH3D_RENDER_ENUM_ZBUFFER_LINE, LH_DX_Errors, result);
	}
	bool32_t found = false;
	if (g_zddpf_count != 0)
	{
		int i = 0;
		while (i < g_zddpf_count && !found)
		{
			DDSURFACEDESC2 surface_desc;
			memset(&surface_desc, 0, sizeof(surface_desc));
			surface_desc.dwSize = sizeof(surface_desc);
			surface_desc.dwFlags = DDSD_CAPS | DDSD_HEIGHT | DDSD_WIDTH | DDSD_PIXELFORMAT;
			surface_desc.dwWidth = LHSys::TheSystem.screen.width;
			surface_desc.dwHeight = LHSys::TheSystem.screen.height;
			surface_desc.ddsCaps.dwCaps = DDSCAPS_ZBUFFER | DDSCAPS_VIDEOMEMORY;
			surface_desc.ddpfPixelFormat = zbuffer_ddpf[i];
			result = LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&surface_desc, &ZBufferSurface, NULL);
			g_b_zbuffer_16b = zbuffer_ddpf[i].dwZBufferBitDepth == LH3D_RENDER_ZBUFFER_16_BITS;
#if defined(VERSION_BW1W100)
			if (g_b_zbuffer_16b)
			{
				Report3D__FPCce("ZBUFFER 16 bits\n");
			}
#else
			if (g_b_any_kyro)
			{
				g_b_zbuffer_16b = false;
			}
			else if (g_b_zbuffer_16b)
			{
				Report3D__FPCce("ZBUFFER 16 bits\n");
			}
#endif
			if (result != DD_OK)
			{
				i++;
				continue;
			}
			if (LHSys::TheSystem.screen.PBackSurface->AddAttachedSurface(ZBufferSurface) != DD_OK)
			{
				if (ZBufferSurface != NULL)
				{
					ZBufferSurface->Release();
				}
				ZBufferSurface = NULL;
				i++;
				continue;
			}
			found = true;
			Report3D__FPCce("We choose  : (%2d bits) Zbuffer %s%s%s %08X %08X %08X %08X \n",
			                zbuffer_ddpf[i].dwZBufferBitDepth,
			                zbuffer_ddpf[i].dwFlags & (DDPF_ALPHAPIXELS | DDPF_ALPHA) ? "ALPHA " : "      ",
			                zbuffer_ddpf[i].dwFlags & DDPF_RGB ? "RGB " : "    ",
			                zbuffer_ddpf[i].dwFlags & (DDPF_PALETTEINDEXED4 | DDPF_PALETTEINDEXED8) ? "PAL " : "    ",
			                zbuffer_ddpf[i].dwRGBAlphaBitMask, zbuffer_ddpf[i].dwRBitMask, zbuffer_ddpf[i].dwGBitMask,
			                zbuffer_ddpf[i].dwBBitMask);
		}
	}
	if (lpPrefferedDeviceGUID == NULL)
	{
		result = D3D->CreateDevice(IID_IDirect3DHALDevice, LHSys::TheSystem.screen.GetBackSurface(), &D3DDevice);
	}
	else
	{
		result = D3D->CreateDevice(*lpPrefferedDeviceGUID, LHSys::TheSystem.screen.GetBackSurface(), &D3DDevice);
		if (result != D3D_OK)
		{
			result = D3D->CreateDevice(IID_IDirect3DHALDevice, LHSys::TheSystem.screen.GetBackSurface(), &D3DDevice);
		}
	}
	if (result != D3D_OK)
	{
		return false;
	}
	if (D3DDevice->GetCaps(&desc) != D3D_OK)
	{
		g_b_support_AGP = true;
		g_b_support_TNL = false;
	}
	else
	{
		if (desc.dwDevCaps & D3DDEVCAPS_TEXTURENONLOCALVIDMEM)
		{
			Report3D__FPCce("Support AGP.\n");
			g_b_support_AGP = true;
		}
		else
		{
			Report3D__FPCce("Doesn't support AGP.\n");
			g_b_support_AGP = false;
		}
		if (desc.dwDevCaps & D3DDEVCAPS_HWTRANSFORMANDLIGHT && !g_b_disable_TNL &&
		    desc.deviceGUID == IID_IDirect3DTnLHalDevice)
		{
			Report3D__FPCce("Support Hardware T'n'L.\n");
			g_b_support_TNL = true;
		}
		else
		{
			Report3D__FPCce("Doesn't support hardware T'n'L / tnl disabled.\n");
			g_b_support_TNL = false;
		}
	}
#if defined(VERSION_BW1WCI)
	if (g_b_support_AGP && g_b_any_matrox)
	{
		OSVERSIONINFO version_info;
		version_info.dwOSVersionInfoSize = sizeof(version_info);
		GetVersionEx(&version_info);
		if (version_info.dwPlatformId == VER_PLATFORM_WIN32_NT)
		{
			g_b_support_AGP = false;
			Report3D__FPCce("Matrox AGP w2000 Patched\n");
		}
	}
#endif
	memset(&viewport, 0, sizeof(viewport));
	viewport.dwX = 0;
	viewport.dwY = 0;
	viewport.dwWidth = LHSys::TheSystem.screen.width;
	viewport.dwHeight = LHSys::TheSystem.screen.height;
	viewport.dvMinZ = 0.0f;
	viewport.dvMaxZ = 1.0f;
	if (D3DDevice->SetViewport(&viewport) != D3D_OK)
	{
		return false;
	}
	memset(g_lastblend, LH3D_RENDER_STATE_UNKNOWN, sizeof(g_lastblend));
	ResetAllState();
	D3DDevice->BeginScene();
	SetD3DProjectionMatrix(g_d3d_view2proj, LH3DTech::GetNearClipping(), LH3D_RENDER_OPEN_FAR_PLANE,
	                       LH3DTech::g_camera.fov);
	ResetD3DMatrix(g_d3d_local2world);
	ResetD3DMatrix(g_d3d_world2view);
	D3DDevice->SetTransform(D3DTRANSFORMSTATE_WORLD, &g_d3d_local2world);
	D3DDevice->SetTransform(D3DTRANSFORMSTATE_VIEW, &g_d3d_world2view);
	memset(&g_d3d_light, 0, sizeof(g_d3d_light));
	memset(&g_d3d_mat, 0, sizeof(g_d3d_mat));
	g_d3d_light.dltType = D3DLIGHT_POINT;
	g_d3d_light.dcvDiffuse.r = 1.0f;
	g_d3d_light.dcvDiffuse.g = 1.0f;
	g_d3d_light.dcvDiffuse.b = 1.0f;
	g_d3d_light.dcvDiffuse.a = 1.0f;
	g_d3d_light.dcvSpecular.r = 0.0f;
	g_d3d_light.dcvSpecular.g = 0.0f;
	g_d3d_light.dcvSpecular.b = 0.0f;
	g_d3d_light.dcvSpecular.a = 0.0f;
	g_d3d_light.dcvAmbient.r = 1.0f;
	g_d3d_light.dcvAmbient.g = 1.0f;
	g_d3d_light.dcvAmbient.b = 1.0f;
	g_d3d_light.dcvAmbient.a = 1.0f;
	g_d3d_light.dvPosition.x = LH3DTech::GetSun().x;
	g_d3d_light.dvPosition.y = LH3DTech::GetSun().y;
	g_d3d_light.dvPosition.z = LH3DTech::GetSun().z;
	g_d3d_light.dvRange = D3DLIGHT_RANGE_MAX;
	g_d3d_light.dvAttenuation0 = 1.0f;
	g_d3d_mat.diffuse.r = 1.0f;
	g_d3d_mat.diffuse.g = 1.0f;
	g_d3d_mat.diffuse.b = 1.0f;
	g_d3d_mat.diffuse.a = 1.0f;
	g_d3d_mat.ambient.r = LH3D_RENDER_MATERIAL_AMBIENT_LEVEL * LH3D_RENDER_COLOR_SCALE;
	g_d3d_mat.ambient.g = LH3D_RENDER_MATERIAL_AMBIENT_LEVEL * LH3D_RENDER_COLOR_SCALE;
	g_d3d_mat.ambient.b = LH3D_RENDER_MATERIAL_AMBIENT_LEVEL * LH3D_RENDER_COLOR_SCALE;
	g_d3d_mat.ambient.a = 1.0f;
	D3DDevice->SetMaterial(&g_d3d_mat);
	D3DDevice->SetLight(0, &g_d3d_light);
	D3DDevice->LightEnable(0, TRUE);
	if (g_b_use_wireframe)
	{
		SetRenderState(D3DRENDERSTATE_FILLMODE, D3DFILL_WIREFRAME);
	}
	else
	{
		SetRenderState(D3DRENDERSTATE_FILLMODE, D3DFILL_SOLID);
	}
	D3DDevice->EndScene();
	result = D3DDevice->Clear(0, NULL, D3DCLEAR_ZBUFFER | D3DCLEAR_TARGET, 0, 1.0f, 0);
	if (g_b_support_TNL)
	{
		LH3DVB::Init();
	}
	Init2TexStuff();
	return result;
}

bool32_t LH3DRender::CloseD3D()
{
	Report3D__FPCce("#CLOSE D3D#\n");
	Close2TexStuff();
	if (g_b_support_TNL)
	{
		LH3DVB::Close();
	}
	if (D3DDevice != NULL)
	{
		D3DDevice->Release();
		D3DDevice = NULL;
	}
	if (D3D != NULL)
	{
		D3D->Release();
		D3D = NULL;
	}
	if (ZBufferSurface != NULL)
	{
		ZBufferSurface->Release();
		ZBufferSurface = NULL;
	}
	Report3D__FPCce("#END CLOSE D3D#\n");
	return true;
}

static inline void SetAlphaBlending(bool32_t blend, D3DBLEND dest_blend, bool32_t alpha_test)
{
	if (blend)
	{
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_SRCALPHA);
		LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, dest_blend);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alpha_test);
	}
	else
	{
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, FALSE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ONE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ONE);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, alpha_test);
	}
}

static inline void SetTextureBlending(int stage, D3DTEXTUREOP color_op, D3DTEXTUREOP alpha_op)
{
	if (LH3DRender::g_lastblend[stage] != alpha_op)
	{
		LH3DRender::g_lastblend[stage] = alpha_op;
		LH3DRender::SetTextureStageState(stage, D3DTSS_COLOROP, color_op);
		LH3DRender::SetTextureStageState(stage, D3DTSS_COLORARG1, D3DTA_TEXTURE);
		if (color_op != D3DTOP_SELECTARG1)
		{
			LH3DRender::SetTextureStageState(stage, D3DTSS_COLORARG2, D3DTA_DIFFUSE);
		}
		LH3DRender::SetTextureStageState(stage, D3DTSS_ALPHAOP, alpha_op);
		LH3DRender::SetTextureStageState(stage, D3DTSS_ALPHAARG1, D3DTA_TEXTURE);
		if (alpha_op != D3DTOP_SELECTARG1)
		{
			LH3DRender::SetTextureStageState(stage, D3DTSS_ALPHAARG2, D3DTA_DIFFUSE);
		}
	}
}

void __fastcall LH3DRender::SetRenderModeSmooth(LH3DMaterial* material, int stage)
{
	if (stage != 0)
	{
		SetTexture(NULL, stage);
		return;
	}
	if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_SMOOTH)
	{
		g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_SMOOTH;
		SetTexture(NULL, stage);
		SetAlphaBlending(false, D3DBLEND_ONE, false);
		SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_SELECTARG1);
	}
	SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
}

void __fastcall LH3DRender::SetRenderModeSmoothAlpha(LH3DMaterial* material, int stage)
{
	if (stage != 0)
	{
		SetTexture(NULL, stage);
		return;
	}
	if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_SMOOTH_ALPHA)
	{
		g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_SMOOTH_ALPHA;
		SetTexture(NULL, stage);
		SetAlphaBlending(true, D3DBLEND_INVSRCALPHA, false);
	}
	SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
}

void __fastcall LH3DRender::SetRenderModeSmoothAlphaNZ(LH3DMaterial* material, int stage)
{
	if (stage != 0)
	{
		SetTexture(NULL, stage);
		return;
	}
	if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_SMOOTH_ALPHA_NZ)
	{
		g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_SMOOTH_ALPHA_NZ;
		SetTexture(NULL, stage);
		SetAlphaBlending(true, D3DBLEND_INVSRCALPHA, false);
	}
	SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, FALSE);
}

void __fastcall LH3DRender::SetRenderModeTextured(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED;
			SetAlphaBlending(false, D3DBLEND_ONE, false);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_SELECTARG1);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeTexturedAlpha(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA;
			SetAlphaBlending(true, D3DBLEND_INVSRCALPHA, false);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_MODULATE);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeTexturedAlphaNZ(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA_NZ)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA_NZ;
			SetAlphaBlending(true, D3DBLEND_INVSRCALPHA, false);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_MODULATE);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, FALSE);
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeAlphaTextured(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED;
			SetAlphaBlending(true, D3DBLEND_INVSRCALPHA, false);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_SELECTARG1);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeAlphaTexturedAlpha(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA;
			SetAlphaBlending(true, D3DBLEND_INVSRCALPHA, false);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_MODULATE);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeAlphaTexturedAlphaNZ(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ;
			SetAlphaBlending(true, D3DBLEND_INVSRCALPHA, false);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_MODULATE);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, FALSE);
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeTexturedChroma(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA;
			SetAlphaBlending(true, D3DBLEND_INVSRCALPHA, true);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_SELECTARG1);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	}
	if (LH3DMaterial::g_list_render_func == LH3DMaterial::g_list_render_func_global_alpha)
	{
		float alpha_ref = g_b_active_g_alpha_ref ? g_alpha_ref : material->GetAlphaReference();
		float value =
			alpha_ref * LH3DColor(LH3DMesh::g_color).a * LH3D_RENDER_ALPHA_SCALE - LH3D_RENDER_CHROMA_ALPHA_REF_BIAS;
		if (value < 0.0f)
		{
			value = 0.0f;
		}
		SetRenderState(D3DRENDERSTATE_ALPHAREF, (unsigned long)value);
	}
	else if (g_b_active_g_alpha_ref)
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, g_alpha_ref);
	}
	else
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, material->GetAlphaReference());
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeChromaJustZ(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_CHROMA_JUST_Z)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_CHROMA_JUST_Z;
			SetAlphaBlending(true, D3DBLEND_ONE, true);
			SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ZERO);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_SELECTARG1);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	}
	if (g_b_active_g_alpha_ref)
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, g_alpha_ref);
	}
	else
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, material->GetAlphaReference());
	}
	if (material->texture != NULL)
	{
		material->texture->Activate(stage);
	}
	else
	{
		SetTexture(NULL, stage);
	}
}

void __fastcall LH3DRender::SetRenderModeTexturedChromaAlpha(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA_ALPHA)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA_ALPHA;
			SetAlphaBlending(true, D3DBLEND_INVSRCALPHA, true);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_MODULATE);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	}
	if (LH3DMaterial::g_list_render_func == LH3DMaterial::g_list_render_func_global_alpha)
	{
		float alpha_ref = g_b_active_g_alpha_ref ? g_alpha_ref : material->GetAlphaReference();
		float value =
			alpha_ref * LH3DColor(LH3DMesh::g_color).a * LH3D_RENDER_ALPHA_SCALE - LH3D_RENDER_CHROMA_ALPHA_REF_BIAS;
		if (value < 0.0f)
		{
			value = 0.0f;
		}
		SetRenderState(D3DRENDERSTATE_ALPHAREF, (unsigned long)value);
	}
	else if (g_b_active_g_alpha_ref)
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, g_alpha_ref);
	}
	else
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, material->GetAlphaReference());
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeTexturedChromaAlphaNZ(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA_ALPHA_NZ)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA_ALPHA_NZ;
			SetAlphaBlending(true, D3DBLEND_INVSRCALPHA, true);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_MODULATE);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, FALSE);
	}
	if (g_b_active_g_alpha_ref)
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, g_alpha_ref);
	}
	else
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, material->GetAlphaReference());
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeAlphaTexturedAlphaAdditifChroma(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_CHROMA)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_CHROMA;
			SetAlphaBlending(true, D3DBLEND_ONE, true);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_MODULATE);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	}
	if (g_b_active_g_alpha_ref)
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, g_alpha_ref);
	}
	else
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, material->GetAlphaReference());
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeAlphaTexturedAlphaAdditifChromaNZ(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_CHROMA_NZ)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_CHROMA_NZ;
			SetAlphaBlending(true, D3DBLEND_ONE, true);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_MODULATE);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, FALSE);
	}
	if (g_b_active_g_alpha_ref)
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, g_alpha_ref);
	}
	else
	{
		SetRenderState(D3DRENDERSTATE_ALPHAREF, material->GetAlphaReference());
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeAlphaTexturedAlphaAdditif(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF;
			SetAlphaBlending(true, D3DBLEND_ONE, false);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_MODULATE);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	}
	material->texture->Activate(stage);
}

void __fastcall LH3DRender::SetRenderModeAlphaTexturedAlphaAdditifNZ(LH3DMaterial* material, int stage)
{
	if (stage == 0)
	{
		if (g_render_mode != LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ)
		{
			g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ;
			SetAlphaBlending(true, D3DBLEND_ONE, false);
			SetTextureBlending(stage, D3DTOP_MODULATE, D3DTOP_MODULATE);
		}
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, FALSE);
	}
	material->texture->Activate(stage);
}

LH3DMaterial::RenderFuncEntry LH3DMaterial::g_list_render_func_normal[LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_COUNT] = {
	{LH3DRender::SetRenderModeSmooth, false},                           //
	{LH3DRender::SetRenderModeSmoothAlpha, true},                       //
	{LH3DRender::SetRenderModeTextured, false},                         //
	{LH3DRender::SetRenderModeTexturedAlpha, true},                     //
	{LH3DRender::SetRenderModeAlphaTextured, true},                     //
	{LH3DRender::SetRenderModeAlphaTexturedAlpha, true},                //
	{LH3DRender::SetRenderModeAlphaTexturedAlphaNZ, true},              //
	{LH3DRender::SetRenderModeSmoothAlphaNZ, true},                     //
	{LH3DRender::SetRenderModeTexturedAlphaNZ, true},                   //
	{LH3DRender::SetRenderModeTexturedChroma, false},                   //
	{LH3DRender::SetRenderModeAlphaTexturedAlphaAdditifChroma, true},   //
	{LH3DRender::SetRenderModeAlphaTexturedAlphaAdditifChromaNZ, true}, //
	{LH3DRender::SetRenderModeAlphaTexturedAlphaAdditif, true},         //
	{LH3DRender::SetRenderModeAlphaTexturedAlphaAdditifNZ, true},       //
	{LH3DRender::SetRenderModeAlphaTexturedAlpha, false},               //
	{LH3DRender::SetRenderModeTexturedChromaAlpha, true},               //
	{LH3DRender::SetRenderModeTexturedChromaAlphaNZ, true},             //
	{LH3DRender::SetRenderModeTextured, false},                         //
	{LH3DRender::SetRenderModeChromaJustZ, false},                      //
	{NULL, false},                                                      //
};
LH3DMaterial::RenderFuncEntry
	LH3DMaterial::g_list_render_func_global_alpha[LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_COUNT] = {
		{LH3DRender::SetRenderModeSmoothAlpha, true},                       //
		{LH3DRender::SetRenderModeSmoothAlpha, true},                       //
		{LH3DRender::SetRenderModeTexturedAlpha, true},                     //
		{LH3DRender::SetRenderModeTexturedAlpha, true},                     //
		{LH3DRender::SetRenderModeAlphaTexturedAlpha, true},                //
		{LH3DRender::SetRenderModeAlphaTexturedAlpha, true},                //
		{LH3DRender::SetRenderModeAlphaTexturedAlphaNZ, true},              //
		{LH3DRender::SetRenderModeSmoothAlphaNZ, true},                     //
		{LH3DRender::SetRenderModeTexturedAlphaNZ, true},                   //
		{LH3DRender::SetRenderModeTexturedChromaAlpha, true},               //
		{LH3DRender::SetRenderModeAlphaTexturedAlphaAdditifChroma, true},   //
		{LH3DRender::SetRenderModeAlphaTexturedAlphaAdditifChromaNZ, true}, //
		{LH3DRender::SetRenderModeAlphaTexturedAlphaAdditif, true},         //
		{LH3DRender::SetRenderModeAlphaTexturedAlphaAdditifNZ, true},       //
		{LH3DRender::SetRenderModeAlphaTexturedAlpha, false},               //
		{LH3DRender::SetRenderModeTexturedChromaAlpha, true},               //
		{LH3DRender::SetRenderModeTexturedChromaAlphaNZ, true},             //
		{LH3DRender::SetRenderModeTexturedAlpha, false},                    //
		{LH3DRender::SetRenderModeChromaJustZ, false},                      //
		{NULL, false},                                                      //
};

void LH3DMaterial::Close()
{
	if (g_count != 0)
	{
		Report3D__FPCce("LH3DMaterial: %d materials not released.\n", g_count);
	}
}

void LH3DRender::CleanScreen()
{
	static unsigned long last_time = 0;
	static bool32_t      cleaned = false;
	LH3D_CLEANING_MODE   clean = g_mode_cleaning;

	if (g_mode_cleaning == LH3D_CLEANING_MODE_NONE && g_enable_callbacks)
	{
		unsigned long now =
			(unsigned long)((float)(GetTickCount() - LH3DTech::g_timer.TickCount) * LH3DTech::g_timer.SpeedUpFactor +
		                    (float)(uint32_t)LH3DTech::g_timer.ElapsedTime);
		if ((int)now < (int)last_time || (int)(last_time + LH3D_RENDER_CLEAN_SCREEN_PERIOD) < (int)now)
		{
			clean = LH3D_CLEANING_MODE_SCREEN;
			last_time = now;
			cleaned = true;
		}
		else if (cleaned)
		{
			cleaned = false;
			clean = LH3D_CLEANING_MODE_SCREEN;
		}
	}
	switch (clean)
	{
	case LH3D_CLEANING_MODE_NONE:
		return;
	case LH3D_CLEANING_MODE_SCREEN:
		D3DDevice->Clear(0, NULL, D3DCLEAR_ZBUFFER | D3DCLEAR_TARGET, g_color_background.GetColor(), 1.0f, 0);
		break;
	case LH3D_CLEANING_MODE_ZBUFFER:
		D3DDevice->Clear(0, NULL, D3DCLEAR_ZBUFFER, g_color_background.GetColor(), 1.0f, 0);
		break;
	}
}

#if !defined(VERSION_BW1W100)
void __fastcall LH3DRender::DrawRectangle(LHRegion& region, unsigned long color)
{
	uint16_t      indices[6];
	LH3DMaterial* material = CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_SMOOTH_ALPHA, NULL);
	Vertex3D*     vertices = LH3DTech::g_cache_t_points;

	SetMaterial(material, 0);
	vertices[0].x = (float)region.start.X();
	vertices[0].y = (float)region.start.Y();
	vertices[0].z = 0.0f;
	vertices[0].rhw = 1.0f;
	vertices[0].color = color;
	vertices[1].x = (float)region.end.X();
	vertices[1].y = (float)region.start.Y();
	vertices[1].z = 0.0f;
	vertices[1].rhw = 1.0f;
	vertices[1].color = color;
	vertices[2].x = (float)region.end.X();
	vertices[2].y = (float)region.end.Y();
	vertices[2].z = 0.0f;
	vertices[2].rhw = 1.0f;
	vertices[2].color = color;
	vertices[3].x = (float)region.start.X();
	vertices[3].y = (float)region.end.Y();
	vertices[3].z = 0.0f;
	vertices[0].rhw = 1.0f;
	vertices[3].color = color;
	indices[0] = 0;
	indices[1] = 1;
	indices[2] = 2;
	indices[3] = 0;
	indices[4] = 2;
	indices[5] = 3;
	DrawAndClip2D(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, vertices, 4, indices, 6);
	delete material;
}
#endif

void LH3DRender::StartFrame()
{
	unsigned short control_word;
	unsigned short new_control_word;
	D3DMATRIX      projection;

	FrameRate();
	GlowVillager::SetNewFrame();
	g_curmode2tex = 0;
	g_curmat2tex = NULL;
	first_in_frame = true;
	LH3DVB::newframe = true;
	LH3DVB::newframemt = true;
	LH3DVB::curv = 0;
	LH3DVB::curvmt = 0;
	g_b_sorted_object_drawn_this_frame = false;
	__asm
		{
		finit
		fwait
		fstcw control_word
		fwait
		mov ax, control_word
		and eax, NOT LH3D_RENDER_FPU_CONTROL_MASK
		or eax, LH3D_RENDER_FPU_CONTROL_BITS
		mov new_control_word, ax
		fldcw new_control_word
		fwait
	    }
	LH3DObject::g_count_static_object = 0;
	unsigned long now =
		(unsigned long)((float)(GetTickCount() - LH3DTech::g_timer.TickCount) * LH3DTech::g_timer.SpeedUpFactor +
	                    (float)(uint32_t)LH3DTech::g_timer.ElapsedTime);
	LH3DTech::g_current_time = now;
	LH3DTech::g_delta_time = now - LH3DTech::g_previous_time;
	if (LH3DTech::g_delta_time <= 0)
	{
		LH3DTech::g_delta_time = 1;
	}
	LH3DTech::g_previous_time = now;
	g_poly_rate = g_num_polys_drawn * (float)LH3D_RENDER_MS_PER_SECOND / LH3DTech::g_delta_time;
	g_num_polys_drawn = 0;
	g_poly_rate_smooth = (g_poly_rate - g_poly_rate_smooth) * LH3D_RENDER_POLY_RATE_SMOOTHING + g_poly_rate_smooth;
	D3DDevice->BeginScene();
	g_frame++;
	g_started_frame = true;
	g_zsorter->OpenSort();
	LH3DStaticObject::StartFrameIncFizzVars();
	LH3DPrimitive::StartFrameIncFrozVars();
	g_d3d_light.dvPosition.x = LH3DTech::GetSun().x;
	g_d3d_light.dvPosition.y = LH3DTech::GetSun().y;
	g_d3d_light.dvPosition.z = LH3DTech::GetSun().z;
	if (!g_b_disable_TNL && g_b_support_TNL)
	{
		D3DDevice->SetLight(0, &g_d3d_light);
		projection = SetD3DProjectionMatrix(g_d3d_view2proj, LH3DTech::GetNearClipping(), LH3D_RENDER_FAR_PLANE,
		                                    LH3DTech::g_camera.fov);
	}
	LH3DCameraChecker::Process();
	LHResetFPU();
}

void LH3DRender::DrawSortedObjects()
{
	g_b_sorted_object_drawn_this_frame = true;
	LH3DLine::DrawAllPreStored();
	for (LH3DZSorter::ZObject* object = g_z_first; object != NULL; object = object->Next)
	{
		LH3DZSorter::UserData = object->Flags;
		(((DrawingObject*)object->Object)->*object->Draw)();
	}
}

void LH3DRender::RegisterFinishFrameCallback(unsigned long priority, bool after, FinishFrameCallback callback,
                                             void* data)
{
	if (g_num_finish_frame_cb >= LH3D_RENDER_FINISH_FRAME_CALLBACKS || callback == NULL)
	{
		return;
	}
	RemoveFinishFrameCallback(callback, data);
	if (after)
	{
		priority |= LH3D_RENDER_FINISH_FRAME_AFTER;
	}
	int i;
	for (i = 0; i < g_num_finish_frame_cb; i++)
	{
		if (g_finish_frame_cb_priority[i] > priority)
		{
			break;
		}
	}
	memmove(&g_finish_frame_cb[i + 1], &g_finish_frame_cb[i], (g_num_finish_frame_cb - i) * sizeof(*g_finish_frame_cb));
	memmove(&g_finish_frame_cb_priority[i + 1], &g_finish_frame_cb_priority[i],
	        (g_num_finish_frame_cb - i) * sizeof(*g_finish_frame_cb_priority));
	memmove(&g_finish_frame_cb_data[i + 1], &g_finish_frame_cb_data[i],
	        (g_num_finish_frame_cb - i) * sizeof(*g_finish_frame_cb_data));
	g_finish_frame_cb[i] = callback;
	g_finish_frame_cb_priority[i] = priority;
	g_finish_frame_cb_data[i] = data;
	g_num_finish_frame_cb++;
}

void LH3DRender::RemoveFinishFrameCallback(FinishFrameCallback callback, void* data)
{
	for (int i = 0; i < g_num_finish_frame_cb; i++)
	{
		if (g_finish_frame_cb[i] == callback && g_finish_frame_cb_data[i] == data)
		{
			g_num_finish_frame_cb--;
			memmove(&g_finish_frame_cb[i], &g_finish_frame_cb[i + 1],
			        (g_num_finish_frame_cb - i) * sizeof(*g_finish_frame_cb));
			memmove(&g_finish_frame_cb_priority[i], &g_finish_frame_cb_priority[i + 1],
			        (g_num_finish_frame_cb - i) * sizeof(*g_finish_frame_cb_priority));
			memmove(&g_finish_frame_cb_data[i], &g_finish_frame_cb_data[i + 1],
			        (g_num_finish_frame_cb - i) * sizeof(*g_finish_frame_cb_data));
			return;
		}
	}
}

void LH3DRender::FinishFrame()
{
	FontCache::cachetime++;
	if (!g_b_sorted_object_drawn_this_frame)
	{
		DrawSortedObjects();
	}
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	if (g_enable_callbacks)
	{
		for (int i = 0; i < g_num_finish_frame_cb; i++)
		{
			if (!(g_finish_frame_cb_priority[i] & LH3D_RENDER_FINISH_FRAME_AFTER))
			{
				g_finish_frame_cb[i](g_finish_frame_cb_data[i]);
			}
		}
	}
	LH3DSky::PostDrawSun();
	SetMaterial(LH3DLine::g_material_line, 0);
	BackgroundBox::g_list_vertex[0].x = 0.0f;
	BackgroundBox::g_list_vertex[0].y = 0.0f;
	BackgroundBox::g_list_vertex[1].x = LH3DTech::g_max_screen[0];
	BackgroundBox::g_list_vertex[1].y = 0.0f;
	BackgroundBox::g_list_vertex[2].x = LH3DTech::g_max_screen[0];
	BackgroundBox::g_list_vertex[2].y = LH3DTech::g_max_screen[1];
	BackgroundBox::g_list_vertex[3].x = 0.0f;
	BackgroundBox::g_list_vertex[3].y = LH3DTech::g_max_screen[1];
	BackgroundBox::g_list_vertex[3].color = 0;
	BackgroundBox::g_list_vertex[2].color = 0;
	BackgroundBox::g_list_vertex[1].color = 0;
	BackgroundBox::g_list_vertex[0].color = 0;
	int i;
	for (i = 0; i < BACKGROUND_BOX_VERTICES; i++)
	{
		BackgroundBox::g_list_vertex[i].rhw = 0.0f;
		BackgroundBox::g_list_vertex[i].z = 1.0f;
	}
	SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	D3DDevice->DrawIndexedPrimitive(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, BackgroundBox::g_list_vertex, 4,
	                                BackgroundBox::g_index, 6, 0);
	SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	for (i = 0; i < BACKGROUND_BOX_VERTICES; i++)
	{
		BackgroundBox::g_list_vertex[i].rhw = 1.0f;
		BackgroundBox::g_list_vertex[i].z = 0.0f;
	}
	g_current_active_material = NULL;
	g_render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_COUNT;
#if defined(VERSION_BW1WCI)
	LH3DAtmos::Render3DFinal();
#endif
	if (LH3DWideScreen::g_fvalue != 0.0f)
	{
		LH3DColor color(0, 0, 0, LH3D_COLOR_OPAQUE);
		LHRegion  region;
		int       height = LH3DWideScreen::GetHeight();
		region.start.x = 0;
		region.start.y = 0;
		region.end.x = LH3DTech::g_info_transform.resolution.x;
		region.end.y = height;
		BackgroundBox::Draw(&region, &color, 0);
		region.start.y = LH3DTech::g_info_transform.resolution.y - height;
		region.end.y = region.start.y + height;
		region.start.x = 0;
		region.end.x = LH3DTech::g_info_transform.resolution.x;
		BackgroundBox::Draw(&region, &color, 0);
	}
	if (g_enable_callbacks)
	{
		for (int i = 0; i < g_num_finish_frame_cb; i++)
		{
			if (g_finish_frame_cb_priority[i] & LH3D_RENDER_FINISH_FRAME_AFTER)
			{
				g_finish_frame_cb[i](g_finish_frame_cb_data[i]);
			}
		}
	}
	for (LH3DComplexObject* object = LH3DComplexObject::g_first_co; object != NULL; object = object->next)
	{
		if (object->DrawnAfterFrame && object->DrawAfterFrame)
		{
			object->DrawAfterFrame = false;
			object->Draw();
		}
	}
#if !defined(VERSION_BW1WCI)
	LH3DAtmos::Render3DFinal();
#endif
	LH3DFade::Draw();
#if defined(VERSION_BW1WCI)
	if (g_enable_callbacks && g_after_fade_callback != NULL)
	{
		g_after_fade_callback(NULL);
	}
#endif
	if (FontCache::cachedamage > LH3D_RENDER_MAX_FONT_CACHE_DAMAGE)
	{
		FontCache::Reset();
	}
	D3DDevice->EndScene();
	g_started_frame = false;
	GlowVillager::g_the_one = NULL;
	LHResetFPU();
}

LHPoint g_list[LH3D_RENDER_LIST_POINTS];

void __fastcall LH3DRender::DrawTriangle(Vertex3D* vertices, unsigned long vertex_count, uint16_t* indices,
                                         unsigned long index_count)
{
	if (LH3DIcon::g_b_activated)
	{
		Vertex3D* vertex = vertices;
		for (unsigned long i = 0; i < vertex_count; i++)
		{
			vertex->x += LH3DIcon::g_offset_x;
			if (vertex->x < 0.0f)
			{
				vertex->x = 0.0f;
			}
			else
			{
				float max_x = (float)LH3DTech::g_info_transform.resolution.x;
				if (vertex->x >= max_x)
				{
					vertex->x = max_x - 1.0f;
				}
			}
			vertex->y += LH3DIcon::g_offset_y;
			if (vertex->y < 0.0f)
			{
				vertex->y = 0.0f;
			}
			else
			{
				float max_y = (float)LH3DTech::g_info_transform.resolution.y;
				if (vertex->y >= max_y)
				{
					vertex->y = max_y - 1.0f;
				}
			}
			vertex++;
		}
	}
	if (g_b_need_anim_uv && !(g_current_active_material->Flags & LH3DMaterial::FLAG_NO_ANIM_UV))
	{
		for (unsigned long i = 0; i < vertex_count; i++)
		{
			vertices[i].uv.x += g_adu;
			vertices[i].uv.y += g_adv;
		}
	}
	D3DDevice->DrawIndexedPrimitive(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, vertices, vertex_count, indices, index_count,
	                                0);
}

void __fastcall LH3DRender::DrawTriangleMT(Vertex3DMT* vertices, unsigned long vertex_count, uint16_t* indices,
                                           unsigned long index_count)
{
	if (LH3DIcon::g_b_activated)
	{
		Vertex3DMT* vertex = vertices;
		for (unsigned long i = 0; i < vertex_count; i++)
		{
			vertex->x += LH3DIcon::g_offset_x;
			vertex->y += LH3DIcon::g_offset_y;
			vertex++;
		}
	}
	if (g_b_need_anim_uv)
	{
		Vertex3DMT* points = LH3DTech::GetCachePointsMT();
		for (unsigned long i = 0; i < vertex_count; i++)
		{
			points[i].uv.x += g_adu;
			points[i].uv.y += g_adv;
		}
	}
	if (g_use_multipass)
	{
		DrawAndClip(D3DPT_TRIANGLELIST, LH3D_FVF_VERTEX3D_MT, vertices, vertex_count, indices, index_count);
		g_b_do_update_material = true;
		SetMaterial(g_current_other_material, 0);
		SetStatesMultipassStyle(g_curmode2tex);
		DrawAndClip(D3DPT_TRIANGLELIST, LH3D_FVF_VERTEX3D_MT, vertices, vertex_count, indices, index_count);
		UnSetStatesMultipassStyle();
		g_current_active_material = NULL;
	}
	else
	{
		DrawAndClip(D3DPT_TRIANGLELIST, LH3D_FVF_VERTEX3D_MT, vertices, vertex_count, indices, index_count);
	}
}

#if !defined(VERSION_BW1W100)
void __fastcall LH3DRender::SetBackgroundColor(LH3DColor* color)
{
	g_color_background = *color;
}
#endif

uint16_t* __fastcall LH3DRender::SortTriangle(Vertex3D* vertices, unsigned long vertex_count, uint16_t* indices,
                                              unsigned long index_count)
{
	int triangle_count = index_count / 3;
	if (triangle_count > LH3D_RENDER_SORT_MAX_TRIANGLES)
	{
		Report3D__FPCce("######################MERDAGE/n");
		triangle_count = LH3D_RENDER_SORT_MAX_TRIANGLES;
	}
	memset(lookupTable, (uint8_t)LH3D_RENDER_SORT_EMPTY, sizeof(lookupTable));
	memset(list_triangle, (uint8_t)LH3D_RENDER_SORT_EMPTY, triangle_count * sizeof(*list_triangle));
	float z = LH3DTech::g_cache_t_points[LH3DTech::g_list_indices[0]].rhw +
	          LH3DTech::g_cache_t_points[LH3DTech::g_list_indices[1]].rhw +
	          LH3DTech::g_cache_t_points[LH3DTech::g_list_indices[2]].rhw;
	float min_z = z;
	float max_z = z;
	for (uint16_t i = 3; i < triangle_count * 3; i += 3)
	{
		z = LH3DTech::g_cache_t_points[LH3DTech::g_list_indices[i]].rhw +
		    LH3DTech::g_cache_t_points[LH3DTech::g_list_indices[i + 1]].rhw +
		    LH3DTech::g_cache_t_points[LH3DTech::g_list_indices[i + 2]].rhw;
		if (min_z > z)
		{
			min_z = z;
		}
		else if (max_z < z)
		{
			max_z = z;
		}
	}
	float scale = (LH3D_RENDER_SORT_BUCKETS - 1) / (max_z - min_z);
	for (uint16_t triangle = 0; triangle < triangle_count; triangle++)
	{
		int index = triangle * 3;
		z = LH3DTech::g_cache_t_points[LH3DTech::g_list_indices[index]].rhw +
		    LH3DTech::g_cache_t_points[LH3DTech::g_list_indices[index + 1]].rhw +
		    LH3DTech::g_cache_t_points[LH3DTech::g_list_indices[index + 2]].rhw;
		int bucket = (int)((z - min_z) * scale) & (LH3D_RENDER_SORT_BUCKETS - 1);
		if (lookupTable[bucket] != LH3D_RENDER_SORT_EMPTY)
		{
			list_triangle[triangle] = lookupTable[bucket];
		}
		lookupTable[bucket] = triangle;
	}
	int count = 0;
	for (uint16_t bucket = 0; bucket < LH3D_RENDER_SORT_BUCKETS; bucket++)
	{
		unsigned int triangle = lookupTable[bucket];
		int          index = triangle * 3;
		while (triangle != LH3D_RENDER_SORT_EMPTY)
		{
			sorted_indices[count] = LH3DTech::g_list_indices[index];
			sorted_indices[count + 1] = LH3DTech::g_list_indices[index + 1];
			sorted_indices[count + 2] = LH3DTech::g_list_indices[index + 2];
			count += 3;
			triangle = list_triangle[triangle];
			index = triangle * 3;
		}
	}
	return sorted_indices;
}

void __fastcall LH3DRender::SetUseWireFrame(bool32_t use_wireframe)
{
	g_b_use_wireframe = use_wireframe;
	if (D3DDevice != NULL)
	{
		if (use_wireframe)
		{
			SetRenderState(D3DRENDERSTATE_FILLMODE, D3DFILL_WIREFRAME);
		}
		else
		{
			SetRenderState(D3DRENDERSTATE_FILLMODE, D3DFILL_SOLID);
		}
	}
}

LH3DMaterial* LH3DRender::CreateMaterial(LH3DMaterial::RenderMode render_mode, LH3DTexture* texture)
{
	LH3DMaterial* material = new LH3DMaterial(render_mode, 0, texture, 0);
	material->color = LH3D_RENDER_DEFAULT_MATERIAL_COLOR;
	return material;
}

void __fastcall LH3DRender::DrawTriangleFastBlending(Vertex3D* vertices, unsigned long vertex_count, uint16_t* indices,
                                                     unsigned long index_count)
{
	if (g_b_need_anim_uv)
	{
		for (unsigned long i = 0; i < vertex_count; i++)
		{
			vertices[i].uv.x += g_adu;
			vertices[i].uv.y += g_adv;
		}
	}
	DrawAndClip(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, vertices, vertex_count, indices, index_count);
	unsigned long alpha = (unsigned long)LH3DObject::g_current_object_in_draw->Alpha << LH3D_COLOR_ALPHA_SHIFT;
	for (unsigned long i = 0; i < vertex_count; i++)
	{
		vertices[i].color = (vertices[i].color & LH3D_COLOR_RGB_MASK) | alpha;
	}
	LH3DMaterial* material = LH3DObject::g_fb_list_mat[LH3DPrimitive::g_current_index_primitive];
	LH3DMaterial::SetGlobalAlpha(true);
	SetMaterial(material, 0);
	LH3DMaterial::SetGlobalAlpha(false);
	DrawTriangle(LH3DTech::GetCachePoints(), LH3DTech::GetPointCount(), LH3DTech::GetIndiceList(),
	             LH3DTech::GetIndiceCount());
	DrawAndClip(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, vertices, vertex_count, indices, index_count);
}

void LH3DRender::PushTillingMode(int stage)
{
	D3DDevice->GetTextureStageState(stage, D3DTSS_ADDRESS, &g_save_tile);
}

void LH3DRender::PopTillingMode(int stage)
{
	SetTextureStageState(stage, D3DTSS_ADDRESS, g_save_tile);
}

void LH3DRender::SetD3DTillingOn(int stage)
{
	SetTextureStageState(stage, D3DTSS_ADDRESS, D3DTADDRESS_WRAP);
}

void LH3DRender::SetD3DTillingOff(int stage)
{
	SetTextureStageState(stage, D3DTSS_ADDRESS, D3DTADDRESS_CLAMP);
}

unsigned long last_zstate = LH3D_RENDER_STATE_UNKNOWN;

#if !defined(VERSION_BW1W100)
void LH3DRender::PushZWriteEnable(unsigned long enable)
{
	GetRenderState(D3DRENDERSTATE_ZWRITEENABLE, last_zstate);
	SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, enable);
}

void LH3DRender::PopZWriteEnable()
{
	if (last_zstate != LH3D_RENDER_STATE_UNKNOWN)
	{
		SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, last_zstate);
		last_zstate = LH3D_RENDER_STATE_UNKNOWN;
	}
}
#endif

int g_nb = 0;
int INC_U = 0;
int INC_V = 0;

#if defined(VERSION_BW1W100)
LH_VERSION_INFO("LH3DLib", "5", "$Revision: 84 $", "$Author: Jcottier $", "$Date: 22/02/01 22:37 $", LH_VERSION_NONE,
                "grosse patate pourrie");
#elif defined(VERSION_BW1WCI)
LH_VERSION_INFO("LH3DLib", "5", "$Revision: 88 $", "$Author: Aevans $", "$Date: 9/10/01 12:07 $", LH_VERSION_NONE,
                "grosse patate pourrie");
#else
LH_VERSION_INFO("LH3DLib", "5", "$Revision: 86 $", "$Author: Aevans $", "$Date: 24/05/01 17:12 $", LH_VERSION_NONE,
                "grosse patate pourrie");
#endif
