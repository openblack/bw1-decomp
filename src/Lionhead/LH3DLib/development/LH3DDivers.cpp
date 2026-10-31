#include "LH3DDivers.h"

#include <math.h>   /* For sqrt */
#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For malloc */
#include <string.h> /* For memcpy, memset */
#include <time.h>   /* For localtime, time */

#include <Lionhead/LHFile/ver3.0/LHOSFile.h> /* For LHFileLength, LHLoadData */
#include <Lionhead/LHLib/ver5.0/LHCollide.h> /* For class NewCollide */
#include <Lionhead/LHLib/ver5.0/LHScreen.h>  /* For struct LHScreen */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>  /* For struct LHSys */

#include "Bitmap16B.h"          /* For struct Bitmap16B */
#include "CheveauxDeFeu.h"      /* For class CheveauxDeFeu */
#include "DansLesNuages.h"      /* For class DansLesNuages */
#include "EclairagePublic.h"    /* For struct EclairagePublic */
#include "Eureka.h"             /* For class Eureka */
#include "EvilOrAngel.h"        /* For class EvilOrAngel */
#include "GlowVillager.h"       /* For class GlowVillager */
#include "ExtraBone.h"          /* For struct ExtraBone */
#include "FallingRoot.h"        /* For class FallingRoot */
#include "Fish.h"               /* For class Fish, class FishRush */
#include "Water.h"              /* For class GWater */
#include "LH3DAnim.h"           /* For struct LH3DAnim */
#include "LH3DArena.h"          /* For class LH3DArena */
#include "LH3DCT.h"             /* For struct LH3DCT */
#include "LH3DCameraChecker.h"  /* For struct LH3DCameraChecker */
#include "LH3DDynamicShadow.h"  /* For struct LH3DDynamicShadow */
#include "LH3DEye.h"            /* For class LH3DEye */
#include "HowManyPeople.h"      /* For class HowManyPeople */
#include "InfluenceCircle.h"    /* For class InfluenceCircle */
#include "LH3DExtraDotLight.h"  /* For struct LH3DExtraDotLight */
#include "LH3DFeetShadow.h"     /* For class LH3DFeetShadow */
#include "LH3DInBuild.h"        /* For struct LH3DInBuild */
#include "LH3DIsland.h"         /* For LH3DIsland */
#include "LH3DJustFootPrint.h"  /* For struct LH3DJustFootPrint */
#include "LH3DLevelOfDetail.h"  /* For struct LH3DLevelOfDetail */
#include "LH3DLine.h"           /* For class LH3DLine */
#include "LH3DMapCoords.h"      /* For struct LH3DMapCoords */
#include "LH3DMaterial.h"       /* For struct LH3DMaterial */
#include "LH3DMath.h"           /* For LH3DMath */
#include "LH3DMem.h"            /* For LH3DMem */
#include "LH3DMesh.h"           /* For LH3DMesh */
#include "LH3DMeshFootprint.h"  /* For struct LH3DMeshFootprint */
#include "LH3DObject.h"         /* For class LH3DObject */
#include "LH3DPrimitive.h"      /* For LH3DPrimitive */
#include "LH3DRender.h"         /* For LH3DRender */
#include "LH3DSky.h"            /* For class LH3DSky */
#include "LH3DSprite.h"         /* For struct LH3DSprite */
#include "LH3DSubMesh.h"        /* For struct LH3DSubMesh */
#include "LH3DTech.h"           /* For LH3DTech */
#include "LH3DText.h"           /* For struct GatheringText */
#include "LH3DTexture.h"        /* For struct LH3DTexture */
#include "LH3DTools.h"          /* For class LH3DTools */
#include "LH3DVRAMTex.h"        /* For struct LH3DVRAMTex */
#include "LH3DZSorter.h"        /* For class LH3DZSorter */
#include "LH3DWetFeet.h"        /* For class LH3DWetFeet */
#include "LHIlib.h"             /* For class LHIlib */
#include "Leash.h"              /* For class Leash */
#include "LHMatrix.h"           /* For struct LHMatrix */
#include "LHRandom.h"           /* For Random */
#include "LHTGA.h"              /* For struct LHTGA */
#include "RootsPile.h"          /* For class RootsPile */
#include "ScriptedScreenShot.h" /* For class ScriptedScreenShot */
#include "SmokyStuff.h"         /* For struct SmokyStuff */
#include "SuperVillager.h"      /* For class SuperVillager */
#include "TouchMyEdge.h"        /* For class TouchMyEdge */
#include "TemporaryShadow.h"    /* For class TemporaryShadow */

#define LH3D_FEET_SHADOW_TEXTURE_SIZE         32
#define LH3D_FEET_SHADOW_TEXTURE_FLAGS        0x44
#define LH3D_FEET_SHADOW_TEXTURE_FORMAT       2
#define LH3D_FEET_SHADOW_SIDE_SIZE            0.2f
#define LH3D_FEET_SHADOW_LIGHT_SIZE           2.0f
#define LH3D_FEET_SHADOW_SOLID_CORNERS        2
#define LH3D_FEET_SHADOW_BACK_OFFSET          -0.02f
#define LH3D_FEET_SHADOW_TEXTURE_PATH         ".\\Data\\Textures\\human_shadow.raw"
#define LH3D_IN_BUILD_MAX_EDGES               1000
#define LH3D_IN_BUILD_COLOR_SCALE             0xc0
#define LHTGA_IMAGE_TYPE_TRUE_COLOR           2
#define LHTGA_PIXEL_DEPTH                     32
#define LHTGA_DESCRIPTOR_TOP_LEFT             0x20
#define LHTGA_DESCRIPTOR                      (LHTGA_DESCRIPTOR_TOP_LEFT | 8)
#define LHTGA_HD_SIZE                         256
#define LHTGA_CHANNEL_MAX                     255
#define LH3D_TOOLS_TEXT_SIZE                  0x400
#define LH3D_TOOLS_FILE_SIZE                  0x100
#define LH3D_TEXTURE_PACK_SIZE                256
#define LH3D_TEXTURE_PACK_NO_OFFSETS          0xffffffff
#define BITMAP_16B_LOW_RES_SIZE               128
#define BITMAP_16B_RAW_SIZE                   256
#define BITMAP_16B_555_HIGH                   0xffe0
#define BITMAP_16B_555_BLUE                   0x1f
#define LH3D_TOOLS_SCREEN_SIZE                50
#define LH3D_TOOLS_SCREEN_DEPTH               16
#define LH3D_TOOLS_EXTENSION_LENGTH           4
#define LH3D_TOOLS_TEXTURE_FLAGS              1
#define LH3D_TOOLS_TEXTURE_ALPHA              0x40
#define LIGHT_LIKE_HAND_CELLS_PER_UNIT        0.1f
#define ECLAIRAGE_PUBLIC_OFFSET               50.0f
#define ECLAIRAGE_PUBLIC_PERIOD               30.0f
#define ECLAIRAGE_PUBLIC_TYPE_LOW             1
#define ECLAIRAGE_PUBLIC_LOW_HEIGHT           1.0f
#define ECLAIRAGE_PUBLIC_HEIGHT               5.0f
#define ECLAIRAGE_PUBLIC_GLOW                 2
#define ECLAIRAGE_PUBLIC_SIZE_VARIATION       0.1f
#define ECLAIRAGE_PUBLIC_FLAME_SIZE           1.0f
#define ECLAIRAGE_PUBLIC_GLOW_SIZE            3.0f
#define ECLAIRAGE_PUBLIC_COLOUR               0xfff38421
#define ECLAIRAGE_PUBLIC_GLOW_FRAME           56
#define ECLAIRAGE_PUBLIC_FRAMES               32
#define ECLAIRAGE_PUBLIC_FRAME_STEP           10
#define ECLAIRAGE_PUBLIC_FRAME_PERIOD         700
#define ECLAIRAGE_PUBLIC_FLICKER              0.5f
#define ECLAIRAGE_PUBLIC_LIGHT_SIZE           14
#define ECLAIRAGE_PUBLIC_SPECULAR_SIZE        (ECLAIRAGE_PUBLIC_LIGHT_SIZE * ECLAIRAGE_PUBLIC_LIGHT_SIZE * 3)
#define ECLAIRAGE_PUBLIC_DARKNESS             48.0f
#define ECLAIRAGE_PUBLIC_SPECULAR_PATH        "Data\\Textures\\village_specular.raw"
#define ECLAIRAGE_PUBLIC_DIFFUSE_PATH         "Data\\Textures\\village_diffuse.raw"
#define SCRIPTED_SCREEN_SHOT_LOCK             (DDLOCK_WAIT | DDLOCK_READONLY | DDLOCK_NOSYSLOCK)
#define SCRIPTED_SCREEN_SHOT_565_GREEN        0x7e0
#define SCRIPTED_SCREEN_SHOT_FULL_WIDTH       400
#define SCRIPTED_SCREEN_SHOT_FULL_HEIGHT      300
#define SCRIPTED_SCREEN_SHOT_HALF_HEIGHT      128
#define SCRIPTED_SCREEN_SHOT_HALF_BLEND       0x80
#define SCRIPTED_SCREEN_SHOT_THUMBNAIL_WIDTH  128
#define SCRIPTED_SCREEN_SHOT_THUMBNAIL_HEIGHT 64
#define SCRIPTED_SCREEN_SHOT_THUMBNAILS       8
#define CITADEL_TEXTURE_SIZE                  256
#define CITADEL_TEXTURE_DESC_FLAGS       (DDSD_CAPS | DDSD_HEIGHT | DDSD_WIDTH | DDSD_PIXELFORMAT | DDSD_MIPMAPCOUNT)
#define CITADEL_TEXTURE_CAPS             (DDSCAPS_COMPLEX | DDSCAPS_SYSTEMMEMORY | DDSCAPS_TEXTURE | DDSCAPS_MIPMAP)
#define CITADEL_TEXTURE_LOCK             (DDLOCK_WAIT | DDLOCK_WRITEONLY | DDLOCK_NOSYSLOCK)
#define CITADEL_TEXTURE_PIXEL_FORMAT     1
#define CITADEL_TEXTURE_555_OPAQUE       0x8000
#define CITADEL_TEXTURE_PITCH            (CITADEL_TEXTURE_SIZE * 3)
#define CITADEL_TEXTURE_BYTES            (CITADEL_TEXTURE_SIZE * CITADEL_TEXTURE_PITCH)
#define SMOKY_STUFF_FRAME                16
#define SMOKY_STUFF_BURST_SPEED          1.5f
#define SMOKY_STUFF_MIN_SPEED            0.3f
#define SMOKY_STUFF_BURST_LIFE           1.5f
#define SMOKY_STUFF_LIFE                 3.0f
#define SMOKY_STUFF_FADE_LIFE            0.7f
#define SMOKY_STUFF_BURST_COLOUR         0x68503d
#define SMOKY_STUFF_ALPHA                100.0f
#define SMOKY_STUFF_COLOUR               0x808080
#define SMOKY_STUFF_DEFAULT_COLOUR       0xffffffff
#define SMOKY_STUFF_SPIN                 5.0f
#define SMOKY_STUFF_FRAMES               15.0f
#define GLOW_VILLAGER_COLOUR             0x80c18119
#define GLOW_VILLAGER_HALO_FRAME         32
#define GLOW_VILLAGER_HALO_COLOUR        0xffffff00
#define GLOW_VILLAGER_HALO_SCALE         16.0f
#define GLOW_VILLAGER_HALO_HEIGHT        2.5f
#define GLOW_VILLAGER_FRAME_PERIOD       500
#define GLOW_VILLAGER_FRAMES             15.0f
#define LH3D_TOOLS_PAGE_SIZE             256
#define LH3D_TOOLS_TILE_SIZE             32
#define LH3D_TOOLS_PAGE_TILES            (LH3D_TOOLS_PAGE_SIZE / LH3D_TOOLS_TILE_SIZE)
#define LH3D_TOOLS_RAW_EXTENSION_LENGTH  5
#define LH3D_TOOLS_PACK_TEXTURE_PATH     "%s\\PAK%x.tga"
#define FISH_MIN_SIZE                    0.8f
#define FISH_MAX_SIZE                    1.2f
#define FISH_SPRITE_FRAMES               15.5f
#define FISH_FRAMES                      15.0f
#define FISH_SPREAD                      5.0f
#define FISH_DEPTH                       1.0f
#define FISH_MIN_SPEED                   0.5f
#define FISH_MAX_SPEED                   1.5f
#define FISH_TURN_VARIATION              0.1f
#define FISH_TURN_SPEED                  (TWO_PI / 10.0f)
#define FISH_FEAR_SPEED                  4.0f
#define FISH_MAX_STEP                    0.1f
#define FISH_ANIMATION_SPEED             25.0f
#define FISH_FRAME_MASK                  0xf
#define FISH_FIRST_FRAME                 8
#define FISH_RUSH_COLLIDE_RADIUS         2.0f
#define FISH_RUSH_FEAR_RADIUS            8.0f
#define FISH_RUSH_FEAR_TIME              2.0f
#define FISH_RUSH_FADE_DIST              200.0f
#define FISH_RUSH_FADE_RANGE             100.0f
#define FISH_RUSH_DRAW_DIST              300.0f
#define FISH_RUSH_TARGET_TIME            0.5f
#define FISH_RUSH_ESCAPE_DIST            2.0f
#define FISH_RUSH_SPLASH_GROWTH          2.0f
#define FISH_RUSH_SPLASH_FRAME           48
#define FISH_RUSH_SPLASH_COLOUR          0xffffffff
#define FISH_RUSH_NET_BOB                0.5f
#define FISH_RUSH_NET_SHRINK_SPEED       2.0f
#define FISH_RUSH_NET_RADIUS             10.0f
#define FISH_RUSH_NET_SPEED              2.0f
#define FISH_RUSH_NET_MESH_PATH          "Data\\MISC\\Fishplot.l3d"
#define SMOKY_STUFF_TYPE_BURST           1
#define ROOTS_PILE_LIFE                  15000
#define ROOTS_PILE_FADE_TIME             1000
#define ROOTS_PILE_SIZE                  0.3f
#define FALLING_ROOT_SIZE                0.15f
#define FALLING_ROOT_GRAVITY             20.0f
#define FALLING_ROOT_LIFE                20.0f
#define FALLING_ROOT_FADE_START          18.0f
#define FALLING_ROOT_FADE_TIME           2.0f
#define FALLING_ROOT_ALPHA_REFERENCE     10
#define INFLUENCE_CIRCLE_HIDDEN_COLOUR   RGBA_MAKE(0xff, 0xff, 0xff, 0)
#define INFLUENCE_CIRCLE_SEGMENT_LENGTH  20.0f
#define INFLUENCE_CIRCLE_MIN_SEGMENTS    8
#define INFLUENCE_CIRCLE_MAX_SEGMENTS    250
#define INFLUENCE_CIRCLE_ROW_VERTICES    3
#define INFLUENCE_CIRCLE_SEGMENT_INDICES 24
#define INFLUENCE_CIRCLE_U_LENGTH        -111.0f
#define INFLUENCE_CIRCLE_V_RADIUS        60.0f
#define INFLUENCE_CIRCLE_MAX_V           6
#define INFLUENCE_CIRCLE_MIDDLE_HEIGHT   20.0f
#define INFLUENCE_CIRCLE_TOP_HEIGHT      40.0f
#define INFLUENCE_CIRCLE_MIDDLE_V        0.2f
#define INFLUENCE_CIRCLE_TOP_V           0.4f
#define INFLUENCE_CIRCLE_LOW_HEIGHT      100.0f
#define INFLUENCE_CIRCLE_HIGH_HEIGHT     200.0f
#define INFLUENCE_CIRCLE_HIGH_ALPHA      120
#define INFLUENCE_CIRCLE_CITADEL_ALPHA   255
#define INFLUENCE_CIRCLE_ANIM_PERIOD     10000
#define INFLUENCE_CIRCLE_U_SPEED         10000.0f
#define INFLUENCE_CIRCLE_V_SPEED         5000.0f
#define TOUCH_MY_EDGE_LIFE               2000
#define TOUCH_MY_EDGE_FADE_TIME          1000
#define TOUCH_MY_EDGE_RING_SPACING       2.0f
#define TOUCH_MY_EDGE_RING_FRAME         63
#define TOUCH_MY_EDGE_GROWTH             10.0f
#define TOUCH_MY_EDGE_MAX_SIZE           14.0f
#define TOUCH_MY_EDGE_PRECISION          1.0f
#define EUREKA_FRAME                     32
#define EUREKA_LIFE                      6000.0f
#define EUREKA_FADE_START                2500.0f
#define EUREKA_FADE_TIME                 3500.0f
#define EUREKA_RISE_SPEED                0.003f
#define EUREKA_TEXT_HEIGHT               1.5f
#define EUREKA_TEXT_OFFSET               7.5f
#define EUREKA_TEXT_SIZE                 15.0f
#define EUREKA_TEXT_DEPTH                4096.0f
#define EUREKA_BULB_HEIGHT               2.6f
#define EUREKA_BULB_SCALE                3.0f
#define EUREKA_BLINKS                    6.0f

#define CHEVEAUX_DE_FEU_RUN_UP           4000.0f
#define CHEVEAUX_DE_FEU_STOP_SHORT       10.0f
#define CHEVEAUX_DE_FEU_SPEED            450.0f
#define CHEVEAUX_DE_FEU_MS_PER_SECOND    1000.0f
#define CHEVEAUX_DE_FEU_SPACING          6.0f
#define CHEVEAUX_DE_FEU_LAST_FLAME       5
#define CHEVEAUX_DE_FEU_FLAME_FRAME      48
#define CHEVEAUX_DE_FEU_STREAK_FRAME     49
#define CHEVEAUX_DE_FEU_SMOKE_FRAME      50
#define CHEVEAUX_DE_FEU_SIZE_RANGE       15
#define CHEVEAUX_DE_FEU_MIN_SIZE         3.0f
#define CHEVEAUX_DE_FEU_SMOKE_SCALE      2.0f
#define CHEVEAUX_DE_FEU_FLAME_JITTER     2.0f
#define CHEVEAUX_DE_FEU_GLOW             (CHEVEAUX_DE_FEU_SPRITES - 2)
#define CHEVEAUX_DE_FEU_GLOW_ALPHA       0x28
#define CHEVEAUX_DE_FEU_GLOW_SIZE        80.0f
#define CHEVEAUX_DE_FEU_STREAK           (CHEVEAUX_DE_FEU_SPRITES - 1)
#define CHEVEAUX_DE_FEU_STREAK_ALPHA     0x0e
#define CHEVEAUX_DE_FEU_STREAK_SIZE      350.0f
#define CHEVEAUX_DE_FEU_STREAK_ASPECT    0.05f
#define CHEVEAUX_DE_FEU_STREAK_SPIN_TIME 5000.0f
#define CHEVEAUX_DE_FEU_STREAK_SPIN      0.25f
#define CHEVEAUX_DE_FEU_NO_Z_TEST_TIME   8237
#define CHEVEAUX_DE_FEU_CAMERA_DISTANCE  150.0f
#define CHEVEAUX_DE_FEU_CAMERA_HEIGHT    30.0f

#define EVIL_OR_ANGEL_VISAGE       1
#define EVIL_OR_ANGEL_ANGEL_CHANCE 50.0f
#define EVIL_OR_ANGEL_END_MARGIN   110
#define EVIL_OR_ANGEL_FADE_TIME    500
#define EVIL_OR_ANGEL_ALPHA        105

#define DANS_LES_NUAGES_MAX_TIME   500
#define DANS_LES_NUAGES_DISTANCE   1.0f
#define DANS_LES_NUAGES_SIZE       10.0f
#define DANS_LES_NUAGES_FRAMES     16
#define DANS_LES_NUAGES_FRAME_TIME 100.0f

#define LH3D_TOOLS_VIEWER_SIZE  400
#define LH3D_TOOLS_VIEWER_DEPTH 16

#define DRAW_AND_CLIP_QUAD_VERTICES 4
#define DRAW_AND_CLIP_EPSILON       0.00001f

#define SUPER_VILLAGER_LOD              1
#define SUPER_VILLAGER_TURN_SPEED       (1.25f * PI_F)
#define SUPER_VILLAGER_BLEND_TIME       300
#define SUPER_VILLAGER_SWIM_ANIM        "M_P_Swim2"
#define NEW_COLLIDE_MIN_SIZE            1.0f
#define NEW_COLLIDE_MAX_RATIO           1.4f
#define HOW_MANY_PEOPLE_TIME            8000
#define HOW_MANY_PEOPLE_FADE_OUT        7000
#define HOW_MANY_PEOPLE_FADE_TIME       1000
#define HOW_MANY_PEOPLE_ALL             -1
#define HOW_MANY_PEOPLE_FRAME           57
#define HOW_MANY_PEOPLE_ALPHA_REFERENCE 5
#define HOW_MANY_PEOPLE_SIZE            0.9f
#define HOW_MANY_PEOPLE_SPACING         1.3f
#define HOW_MANY_PEOPLE_COLOUR_IN       0xfff8d235
#define HOW_MANY_PEOPLE_COLOUR_OUT      0xff5c822f
#define HOW_MANY_PEOPLE_COLOUR_ALL      0xff4995a9

#define BACKGROUND_BOX_FVF                (D3DFVF_XYZRHW | D3DFVF_DIFFUSE | D3DFVF_SPECULAR | D3DFVF_TEX1)
#define BACKGROUND_BOX_FINISH_PRIORITY    10000
#define BACKGROUND_BOX_UV                 0.125f
#define LH3D_DIVERS_WEATHER_TEXTURE_FLAGS 0x41
#define LH3D_DIVERS_SUN_TEXTURE_FORMAT    1
#define LH3D_DIVERS_WEATHER_TEXTURE_PATH  "Data\\Textures\\Weather.raw"
#define LH3D_DIVERS_SUN_TEXTURE_PATH      "Data\\Textures\\Sun.raw"
#define LH3D_WIDE_SCREEN_ASPECT           (9.0f / 16.0f)
#define LH3D_JUST_FOOT_PRINT_TO_BLOCK     (1.0f / 160.0f)
#define LH3D_WET_FEET_CORNER              0.3f
#define LH3D_WET_FEET_SPRITE_SIZE         0.125f
#define LH3D_WET_FEET_HEIGHT              0.15f
#define LH3D_WET_FEET_FADE_PERIOD         200
#define LH3D_WET_FEET_FADE_SPEED          25.0f
#define LH3D_WET_FEET_FADE_TIME           1000.0f
#define LH3D_WET_FEET_ALPHA               0x80
#define LH3D_WET_FEET_APRIL_FOOL_TYPE     17
#define LH3D_WET_FEET_APRIL_FOOL_DAY      1
#define LH3D_WET_FEET_APRIL_FOOL_MONTH    3

BackgroundBox BackgroundBox::g_list_boxes[BACKGROUND_BOX_MAX];

Vertex3D BackgroundBox::g_list_vertex[BACKGROUND_BOX_VERTICES] = {
	{0.0f, 0.0f, 0.0f, 1.0f, 0, 0, {0.0f, 0.0f}},
	{0.0f, 0.0f, 0.0f, 1.0f, 0, 0, {0.0f, 0.0f}},
	{0.0f, 0.0f, 0.0f, 1.0f, 0, 0, {0.0f, 0.0f}},
	{0.0f, 0.0f, 0.0f, 1.0f, 0, 0, {0.0f, 0.0f}},
};
uint16_t BackgroundBox::g_index[BACKGROUND_BOX_INDICES] = {0, 1, 3, 1, 2, 3};
float    DEFAULT_TRANS_TO_ADD = 0.2f;
float    TRANS_TO_ADD = DEFAULT_TRANS_TO_ADD;

LH3DCitadelLevelOfDetail LH3DLevelOfDetail::g_citadellod = {false, true, true, true, true, {0, 0, 0}};
long                     g_bulb_index = 0;
int                      BackgroundBox::g_count = 0;
float                    LH3DWideScreen::g_fvalue = 0.0f;
LH3DTexture*             g_weather_texture = NULL;
LH3DTexture*             g_sun_texture = NULL;
LH3DMaterial*            BackgroundBox::g_material = NULL;
bool32_t                 g_b_end_sequence = false;
float                    g_b_end_sequence_dark = 0.0f;

bool32_t BackgroundBox::AddBox(LHRegion* region, LH3DColor* color)
{
	if (g_count >= BACKGROUND_BOX_MAX)
	{
		return false;
	}
	g_list_boxes[g_count].Region = *region;
	g_list_boxes[g_count].Color = *color;
	g_count++;
	return true;
}

void BackgroundBox::DrawAll()
{
	if (g_count == 0)
	{
		return;
	}
	LH3DRender::SetMaterial(g_material, 0);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, FALSE);
	for (int i = 0; i < g_count; i++)
	{
		BackgroundBox* box = &g_list_boxes[i];
		g_list_vertex[0].x = (float)box->Region.start.X();
		g_list_vertex[0].y = (float)box->Region.start.Y();
		g_list_vertex[1].x = (float)box->Region.end.X();
		g_list_vertex[1].y = (float)box->Region.start.Y();
		g_list_vertex[2].x = (float)box->Region.end.X();
		g_list_vertex[2].y = (float)box->Region.end.Y();
		g_list_vertex[3].x = (float)box->Region.start.X();
		g_list_vertex[3].y = (float)box->Region.end.Y();
		g_list_vertex[3].color = g_list_vertex[2].color = g_list_vertex[1].color = g_list_vertex[0].color =
			box->Color.GetColor();
		DrawAndClip2D(D3DPT_TRIANGLELIST, BACKGROUND_BOX_FVF, g_list_vertex, BACKGROUND_BOX_VERTICES, g_index,
		              BACKGROUND_BOX_INDICES);
	}
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	g_count = 0;
}

void BackgroundBox::Draw(LHRegion* region, LH3DColor* color, bool32_t keep_z)
{
	LH3DColor drawColor = *color;
	LH3DRender::SetMaterial(g_material, 0);
	if (keep_z)
	{
		drawColor.a = 0;
	}
	else
	{
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, FALSE);
	}
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	g_list_vertex[0].x = (float)region->start.X();
	g_list_vertex[0].y = (float)region->start.Y();
	g_list_vertex[1].x = (float)region->end.X();
	g_list_vertex[1].y = (float)region->start.Y();
	g_list_vertex[2].x = (float)region->end.X();
	g_list_vertex[2].y = (float)region->end.Y();
	g_list_vertex[3].x = (float)region->start.X();
	g_list_vertex[3].y = (float)region->end.Y();
	g_list_vertex[3].color = g_list_vertex[2].color = g_list_vertex[1].color = g_list_vertex[0].color =
		drawColor.GetColor();
	DrawAndClip2D(D3DPT_TRIANGLELIST, BACKGROUND_BOX_FVF, g_list_vertex, BACKGROUND_BOX_VERTICES, g_index,
	              BACKGROUND_BOX_INDICES);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	if (!keep_z)
	{
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	}
}

bool32_t BackgroundBox::Open()
{
	if (g_material == NULL)
	{
		g_material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_SMOOTH_ALPHA, NULL);
	}
	g_list_vertex[0].uv.x = 0.0f;
	g_list_vertex[0].uv.y = 0.0f;
	g_list_vertex[1].uv.x = BACKGROUND_BOX_UV;
	g_list_vertex[1].uv.y = 0.0f;
	g_list_vertex[2].uv.x = BACKGROUND_BOX_UV;
	g_list_vertex[2].uv.y = BACKGROUND_BOX_UV;
	g_list_vertex[3].uv.x = 0.0f;
	g_list_vertex[3].uv.y = BACKGROUND_BOX_UV;
	LH3DRender::RegisterFinishFrameCallback(BACKGROUND_BOX_FINISH_PRIORITY, true, drawallcb, NULL);
	return true;
}

void __stdcall BackgroundBox::drawallcb(void* data)
{
	DrawAll();
}

bool32_t BackgroundBox::Close()
{
	LH3DRender::RemoveFinishFrameCallback(drawallcb, NULL);
	if (g_material != NULL)
	{
		delete g_material;
		g_material = NULL;
	}
	return true;
}

bool32_t LH3DDivers::Open()
{
	BackgroundBox::Open();
	g_weather_texture =
		LH3DTexture::Create(LH3D_DIVERS_WEATHER_TEXTURE_PATH, LH3D_DIVERS_WEATHER_TEXTURE_FLAGS, 0, NULL);
	TextureFormat format;
	format.Type = LH3D_DIVERS_SUN_TEXTURE_FORMAT;
	g_sun_texture = LH3DTexture::Create(LH3D_DIVERS_SUN_TEXTURE_PATH, 1, 0, &format);
	return true;
}

bool32_t LH3DDivers::Close()
{
	BackgroundBox::Close();
	return true;
}

void LH3DWideScreen::GetBottomRegion(LHRegion* region)
{
	int height = GetHeight();
	int width = LH3DTech::g_info_transform.resolution.x + 1;
	int top = LH3DTech::g_info_transform.resolution.y - height;
	region->start.Set(0, top);
	region->end.Set(width - 1, top + height);
}

int LH3DWideScreen::GetHeight()
{
	return (int)(((float)LH3DTech::g_info_transform.resolution.y -
	              (float)LH3DTech::g_info_transform.resolution.x * LH3D_WIDE_SCREEN_ASPECT) *
	             g_fvalue) /
	       2;
}

void LH3DWideScreen::GetPercentage(LHCoord& coord, float* x, float* y)
{
	float height = GetHeight();
	*x = (float)coord.x / LH3DTech::g_info_transform.resolution.x;
	*y = (coord.y - height) / (LH3DTech::g_info_transform.resolution.y - height * 2);
}

void LH3DWideScreen::GetScreenPos(float x, float y, LHCoord* coord)
{
	float height = GetHeight();
	coord->Set((int)(LH3DTech::g_info_transform.resolution.x * x + 0.5f),
	           (int)((LH3DTech::g_info_transform.resolution.y - height * 2) * y + height + 0.5f));
}

void LH3DJustFootPrint::SetOpacity(float opacity)
{
	CLAMP(opacity, 0.0f, 1.0f);
	Opacity = (int)(opacity * LH3D_JUST_FOOT_PRINT_OPAQUE);
}

LH3DJustFootPrint* LH3DJustFootPrint::g_first = NULL;

static inline bool operator==(const LHMatrix& a, const LHMatrix& b)
{
	return a.m[0] == b.m[0] && a.m[1] == b.m[1] && a.m[2] == b.m[2] && a.m[3] == b.m[3] && a.m[4] == b.m[4] &&
	       a.m[5] == b.m[5] && a.m[6] == b.m[6] && a.m[7] == b.m[7] && a.m[8] == b.m[8] && a.m[9] == b.m[9] &&
	       a.m[10] == b.m[10] && a.m[11] == b.m[11];
}

static LandBlock* GetLandBlock(long x, long z)
{
	int index = LH3DIsland::GetIndex(x, z);
	return index != 0 ? LH3DIsland::g_ptr_blocks[index] : NULL;
}

LH3DJustFootPrint* LH3DJustFootPrint::Create(LH3DObject* object)
{
	for (LH3DJustFootPrint* print = g_first; print != NULL; print = print->Next)
	{
		if (print->Mesh == object->GetMesh() && print->Matrix == object->matrix)
		{
			return NULL;
		}
	}
	LH3DJustFootPrint* footPrint = (LH3DJustFootPrint*)LH3DMem::AllocClear(sizeof(LH3DJustFootPrint));
	footPrint->Mesh = object->GetMesh();
	footPrint->Next = g_first;
	footPrint->Matrix = object->matrix;
	footPrint->UseAlpha = false;
	footPrint->Opacity = LH3D_JUST_FOOT_PRINT_OPAQUE;
	LH3DMeshFootprintData* data = (LH3DMeshFootprintData*)footPrint->Mesh->GetFootprintData();
	if (data != NULL && data->Count != 0)
	{
		LH3DMeshFootprint*         footprint = data->First;
		LH3DMeshFootprintTriangle* triangles = (LH3DMeshFootprintTriangle*)(footprint + 1);
		bool32_t                   first = true;
		for (int i = 0; i < footprint->NumTriangles; i++)
		{
			LHPoint point(triangles[i].Points[0].x, 0.0f, triangles[i].Points[0].y);
			object->matrix.TransformPoint(point);
			if (first)
			{
				first = false;
				footPrint->Min.Set(point.x, point.z);
				footPrint->Max.Set(point.x, point.z);
			}
			else
			{
				if (footPrint->Min.x > point.x)
				{
					footPrint->Min.x = point.x;
				}
				if (footPrint->Max.x < point.x)
				{
					footPrint->Max.x = point.x;
				}
				if (footPrint->Min.y > point.z)
				{
					footPrint->Min.y = point.z;
				}
				if (footPrint->Max.y < point.z)
				{
					footPrint->Max.y = point.z;
				}
			}
			point.Set(triangles[i].Points[1].x, 0.0f, triangles[i].Points[1].y);
			object->matrix.TransformPoint(point);
			if (footPrint->Min.x > point.x)
			{
				footPrint->Min.x = point.x;
			}
			if (footPrint->Max.x < point.x)
			{
				footPrint->Max.x = point.x;
			}
			if (footPrint->Min.y > point.z)
			{
				footPrint->Min.y = point.z;
			}
			if (footPrint->Max.y < point.z)
			{
				footPrint->Max.y = point.z;
			}
			point.Set(triangles[i].Points[2].x, 0.0f, triangles[i].Points[2].y);
			object->matrix.TransformPoint(point);
			if (footPrint->Min.x > point.x)
			{
				footPrint->Min.x = point.x;
			}
			if (footPrint->Max.x < point.x)
			{
				footPrint->Max.x = point.x;
			}
			if (footPrint->Min.y > point.z)
			{
				footPrint->Min.y = point.z;
			}
			if (footPrint->Max.y < point.z)
			{
				footPrint->Max.y = point.z;
			}
		}
	}
	g_first = footPrint;
	int maxX = (int)(footPrint->Max.x * LH3D_JUST_FOOT_PRINT_TO_BLOCK);
	int minZ = (int)(footPrint->Min.y * LH3D_JUST_FOOT_PRINT_TO_BLOCK);
	int maxZ = (int)(footPrint->Max.y * LH3D_JUST_FOOT_PRINT_TO_BLOCK);
	for (int x = (int)(footPrint->Min.x * LH3D_JUST_FOOT_PRINT_TO_BLOCK); x <= maxX; x++)
	{
		for (int z = minZ; z <= maxZ; z++)
		{
			LandBlock* block = GetLandBlock(x, z);
			if (block != NULL)
			{
				block->SetNeedUpdate();
			}
		}
	}
	return footPrint;
}

void LH3DJustFootPrint::ReleaseAll()
{
	while (g_first != NULL)
	{
		g_first->Release();
	}
}

void LH3DJustFootPrint::Release()
{
	LH3DJustFootPrint* previous = NULL;
	for (LH3DJustFootPrint* print = g_first; print != NULL; print = print->Next)
	{
		if (print == this)
		{
			if (previous != NULL)
			{
				previous->Next = Next;
			}
			else
			{
				g_first = Next;
			}
			LH3DMem::Free(this);
			return;
		}
		previous = print;
	}
}

void LH3DJustFootPrint::DrawDebug()
{
	LH3DColor red(0xff, 0, 0, 0xff);
	LH3DColor green(0, 0xff, 0, 0xff);
	LHPoint   from(Min.x, 0.0f, Min.y);
	LHPoint   to(Max.x, 0.0f, Min.y);
	from.y = LH3DIsland::GetAltitude(from);
	to.y = LH3DIsland::GetAltitude(to);
	LH3DLine::AddLine(from, to, &red, NULL);
	from.Set(Max.x, 0.0f, Min.y);
	to.Set(Max.x, 0.0f, Max.y);
	from.y = LH3DIsland::GetAltitude(from);
	to.y = LH3DIsland::GetAltitude(to);
	LH3DLine::AddLine(from, to, &red, NULL);
	from.Set(Max.x, 0.0f, Max.y);
	to.Set(Min.x, 0.0f, Max.y);
	from.y = LH3DIsland::GetAltitude(from);
	to.y = LH3DIsland::GetAltitude(to);
	LH3DLine::AddLine(from, to, &red, NULL);
	from.Set(Min.x, 0.0f, Max.y);
	to.Set(Min.x, 0.0f, Min.y);
	from.y = LH3DIsland::GetAltitude(from);
	to.y = LH3DIsland::GetAltitude(to);
	LH3DLine::AddLine(from, to, &red, NULL);
	LH3DMeshFootprintData* data = (LH3DMeshFootprintData*)Mesh->GetFootprintData();
	if (data != NULL && data->Count != 0)
	{
		LH3DMeshFootprint*         footprint = data->First;
		LH3DMeshFootprintTriangle* triangles = (LH3DMeshFootprintTriangle*)(footprint + 1);
		for (int i = 0; i < footprint->NumTriangles; i++)
		{
			LH3DMeshFootprintTriangle* triangle = &triangles[i];
			LHPoint                    a(triangle->Points[0].x, 0.0f, triangle->Points[0].y);
			Matrix.TransformPoint(a);
			LHPoint b(triangle->Points[1].x, 0.0f, triangle->Points[1].y);
			Matrix.TransformPoint(b);
			LHPoint c(triangle->Points[2].x, 0.0f, triangle->Points[2].y);
			Matrix.TransformPoint(c);
			LH3DLine::AddLine(a, b, &green, NULL);
			LH3DLine::AddLine(b, c, &green, NULL);
			LH3DLine::AddLine(c, a, &green, NULL);
		}
	}
}

void LH3DJustFootPrint::DrawDebugAll()
{
	for (LH3DJustFootPrint* print = g_first; print != NULL; print = print->Next)
	{
		print->DrawDebug();
	}
}

int IsObjectOnScreen(LH3DObject* object)
{
	if (object->GetMesh() != NULL)
	{
		return object->GetMesh()->GetBoundingBox().CheckRegionOnScreen(object);
	}
	return false;
}

int IsPointOnScreen(LHPoint* point)
{
	float w = LH3DTech::g_world_to_clipping.m[2] * point->x + LH3DTech::g_world_to_clipping.m[5] * point->y +
	          LH3DTech::g_world_to_clipping.m[8] * point->z + LH3DTech::g_world_to_clipping.m[11];
	if (w < LH3DTech::g_info_transform.NearClip)
	{
		return false;
	}
	float rhw = 1.0f / w;
	int   x = (int)(((LH3DTech::g_world_to_clipping.m[0] * point->x + LH3DTech::g_world_to_clipping.m[3] * point->y +
	                  LH3DTech::g_world_to_clipping.m[6] * point->z + LH3DTech::g_world_to_clipping.m[9]) *
	                     rhw +
	                 1.0f) *
	                LH3DTech::g_info_transform.HalfRes.x);
	int   y =
		(int)((1.0f - (LH3DTech::g_world_to_clipping.m[1] * point->x + LH3DTech::g_world_to_clipping.m[4] * point->y +
	                   LH3DTech::g_world_to_clipping.m[7] * point->z + LH3DTech::g_world_to_clipping.m[10]) *
	                      rhw) *
	          LH3DTech::g_info_transform.HalfRes.y);
	if (x < 0 || y < 0 || x >= LH3DTech::g_info_transform.resolution.x || y >= LH3DTech::g_info_transform.resolution.y)
	{
		return false;
	}
	return true;
}

LHPoint*   LH3DWetFeet::g_vertex_list = NULL;
long       LH3DWetFeet::g_feet_count = 0;
LH3DColor* LH3DWetFeet::g_list_color = NULL;
float*     LH3DWetFeet::g_list_uv = NULL;
long*      LH3DWetFeet::g_list_index = NULL;
int        g_wet_feet_time = 0;

static LH3DWetFeetSprite g_wet_feet_sprites[LH3D_WET_FEET_CREATURE_TYPES] = {
	{0, 0.0f, 0.0f, 2.0f},   //
	{2, 0.25f, 0.0f, 1.0f},  //
	{4, 0.5f, 0.0f, 1.0f},   //
	{4, 0.5f, 0.0f, 1.0f},   //
	{4, 0.5f, 0.0f, 1.0f},   //
	{4, 0.5f, 0.0f, 1.0f},   //
	{3, 0.375f, 0.0f, 1.0f}, //
	{5, 0.625f, 0.0f, 1.0f}, //
	{6, 0.75f, 0.0f, 1.0f},  //
	{1, 0.125f, 0.0f, 1.0f}, //
	{1, 0.125f, 0.0f, 1.0f}, //
	{2, 0.25f, 0.0f, 1.0f},  //
	{0, 0.0f, 0.0f, 1.0f},   //
	{0, 0.0f, 0.0f, 1.0f},   //
	{0, 0.0f, 0.0f, 1.0f},   //
	{2, 0.25f, 0.0f, 1.0f},  //
	{0, 0.0f, 0.0f, 1.0f},   //
	{7, 0.875f, 0.0f, 1.0f}, //
};
static float g_wet_feet_uv[2][LH3D_WET_FEET_VERTICES_PER_FOOT][2] = {
	{{0.0f, 0.0f}, {1.0f, 0.0f}, {1.0f, 1.0f}, {0.0f, 1.0f}},
	{{0.0f, 1.0f}, {1.0f, 1.0f}, {1.0f, 0.0f}, {0.0f, 0.0f}},
};

void LH3DWetFeet::Open()
{
	g_feet_count = 0;
}

void LH3DWetFeet::Close()
{
	if (g_vertex_list != NULL)
	{
		LH3DMem::Free(g_vertex_list);
		g_vertex_list = NULL;
	}
	if (g_list_index != NULL)
	{
		LH3DMem::Free(g_list_index);
		g_list_index = NULL;
	}
	if (g_list_color != NULL)
	{
		LH3DMem::Free(g_list_color);
		g_list_color = NULL;
	}
	if (g_list_uv != NULL)
	{
		LH3DMem::Free(g_list_uv);
		g_list_uv = NULL;
	}
	g_feet_count = 0;
}

long LH3DWetFeet::GetSpriteOffsetFromCreatureType(unsigned long creature_type)
{
	if (creature_type >= LH3D_WET_FEET_CREATURE_TYPES)
	{
		creature_type = 0;
	}
	return g_wet_feet_sprites[creature_type].Offset;
}

void LH3DWetFeet::Draw()
{
	if (g_feet_count == 0)
	{
		return;
	}
	LH3DTech::Draw3DWorldTriangle(g_feet_count * LH3D_WET_FEET_VERTICES_PER_FOOT, g_vertex_list, g_list_color,
	                              g_list_uv, g_feet_count * 2, g_list_index, g_mat_misc0, false);
	g_wet_feet_time += LH3DTech::g_game_time_inc;
	if (g_wet_feet_time < LH3D_WET_FEET_FADE_PERIOD)
	{
		return;
	}
	float fade = g_wet_feet_time * LH3D_WET_FEET_FADE_SPEED / LH3D_WET_FEET_FADE_TIME;
	g_wet_feet_time = 0;
	int        dead = 0;
	LH3DColor* color = g_list_color;
	for (int i = 0; i < g_feet_count; i++, color += LH3D_WET_FEET_VERTICES_PER_FOOT)
	{
		float alpha = color[0].a - fade;
		if (alpha <= 0.0f)
		{
			dead++;
			alpha = 0.0f;
		}
		color[0].a = color[1].a = color[2].a = color[3].a = (uint8_t)alpha;
	}
	int foot = 0;
	while (dead != 0)
	{
		if (g_list_color[foot].a == 0)
		{
			if (foot != g_feet_count - 1)
			{
				for (int i = foot; i < g_feet_count - 1; i++)
				{
					for (int k = 0; k < LH3D_WET_FEET_VERTICES_PER_FOOT; k++)
					{
						int to = i * LH3D_WET_FEET_VERTICES_PER_FOOT + k;
						int from = to + LH3D_WET_FEET_VERTICES_PER_FOOT;
						g_vertex_list[to] = g_vertex_list[from];
						g_list_color[to] = g_list_color[from];
						g_list_uv[to * 2] = g_list_uv[from * 2];
						g_list_uv[to * 2 + 1] = g_list_uv[from * 2 + 1];
					}
				}
			}
			g_feet_count--;
			dead--;
		}
		else
		{
			foot++;
		}
	}
}

LHPoint       LH3DFeetShadow::g_vertex_list[LH3D_FEET_SHADOW_VERTICES];
LH3DColor     LH3DFeetShadow::g_list_color[LH3D_FEET_SHADOW_VERTICES];
float         LH3DFeetShadow::g_list_uv[LH3D_FEET_SHADOW_VERTICES * 2];
long          LH3DFeetShadow::g_list_index[LH3D_FEET_SHADOW_INDICES];
LHPoint       g_feet_shadow_light;
LHPoint       g_left(-1.0f, 0.0f, 1.0f);
LHPoint       g_right(1.0f, 0.0f, -1.0f);
LH3DMaterial* LH3DFeetShadow::g_material_shadow_feet = NULL;
LH3DTexture*  LH3DFeetShadow::g_texture_shadow_feet = NULL;

static inline void SetLength(LHPoint& point, float size)
{
	float px = point.x;
	float py = point.y;
	float pz = point.z;
	if (px == 0.0f && py == 0.0f && pz == 0.0f)
	{
		return;
	}
	float length = sqrt(pz * pz + py * py + px * px);
	float scale = size / length;
	point.x = scale * px;
	point.y = scale * py;
	point.z = scale * pz;
}

void LH3DFeetShadow::Open()
{
	static bool32_t s_first = true;
	static float    s_uv[4][2] = {
		{0.0f, 0.0f},
		{1.0f, 0.0f},
		{1.0f, 1.0f},
		{0.0f, 1.0f},
	};

	if (!s_first)
	{
		return;
	}

	SetLength(g_left, LH3D_FEET_SHADOW_SIDE_SIZE);
	SetLength(g_right, LH3D_FEET_SHADOW_SIDE_SIZE);
	s_first = false;

	for (int quad = 0; quad < LH3D_FEET_SHADOW_QUADS; quad++)
	{
		int first = quad * 4;
		for (int corner = 0; corner < 4; corner++)
		{
			int vertex = first + corner;
			g_vertex_list[vertex].SetNull();
			if (corner > 1)
			{
				g_list_color[vertex] = LH3DColor(0);
			}
			else
			{
				g_list_color[vertex] = LH3DColor(0xffffffff);
			}
			g_list_uv[vertex * 2] = s_uv[corner][0];
			g_list_uv[vertex * 2 + 1] = s_uv[corner][1];
		}
		g_list_index[quad * 6 + 0] = quad * 4 + 0;
		g_list_index[quad * 6 + 1] = quad * 4 + 1;
		g_list_index[quad * 6 + 2] = quad * 4 + 2;
		g_list_index[quad * 6 + 3] = quad * 4 + 0;
		g_list_index[quad * 6 + 4] = quad * 4 + 2;
		g_list_index[quad * 6 + 5] = quad * 4 + 3;
	}

	TextureFormat format;
	format.Type = LH3D_FEET_SHADOW_TEXTURE_FORMAT;
	g_texture_shadow_feet = LH3DTexture::Create(NULL, LH3D_FEET_SHADOW_TEXTURE_FLAGS, 0xffffffff, &format);
	uint8_t* heights = (uint8_t*)LH3DMem::AllocClear(LH3D_FEET_SHADOW_TEXTURE_SIZE * LH3D_FEET_SHADOW_TEXTURE_SIZE);
	LHLoadData(LH3D_FEET_SHADOW_TEXTURE_PATH, heights, LH3D_FEET_SHADOW_TEXTURE_SIZE * LH3D_FEET_SHADOW_TEXTURE_SIZE,
	           NULL);
	LH3DSurfDesc desc;
	g_texture_shadow_feet->Lock(&desc);
	if (desc.Surface != NULL)
	{
		long pitch = desc.Pitch / (long)sizeof(uint16_t);
		for (long y = 0; y < desc.Height; y++)
		{
			for (long x = 0; x < desc.Width; x++)
			{
				((uint16_t*)desc.Surface)[y * pitch + x] = (heights[y * LH3D_FEET_SHADOW_TEXTURE_SIZE + x] & 0xf0) << 8;
			}
		}
	}
	g_texture_shadow_feet->Unlock();
	if (g_texture_shadow_feet->GetType() == LH3D_TEXTURE_TYPE_NAMED ||
	    g_texture_shadow_feet->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
	{
		g_texture_shadow_feet->ReloadPending = true;
	}
	g_material_shadow_feet = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ,
	                                                    g_texture_shadow_feet);
	g_material_shadow_feet->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	g_feet_shadow_light.Set(1.0f, 0.0f, 1.0f);
	g_feet_shadow_light.Normalise();
	SetLength(g_feet_shadow_light, LH3D_FEET_SHADOW_LIGHT_SIZE);
	LH3DMem::Free(heights);
}

void LH3DFeetShadow::Close()
{
	if (g_material_shadow_feet != NULL)
	{
		delete g_material_shadow_feet;
	}
	g_material_shadow_feet = NULL;
	g_texture_shadow_feet->Release();
	g_texture_shadow_feet = NULL;
}

void SetVertices(LHPoint* vertices, LHPoint* direction, LHPoint* center)
{
	vertices[0] = *center;
	vertices[1] = *center;
	vertices[2] = *center;
	vertices[3] = *center;
	LHPoint offset = *direction;
	vertices[2] += offset + g_left;
	vertices[3] += offset + g_right;
	offset *= LH3D_FEET_SHADOW_BACK_OFFSET;
	vertices[0] += offset + g_right;
	vertices[1] += offset + g_left;
}

void LH3DFeetShadow::Draw(LH3DObject* object, LHPoint* normal, ExtraBone* bone)
{
	LHPoint up = *normal;
	LHPoint light = g_feet_shadow_light;
	light *= object->scale;
	up *= -up.DotProductInline(light);
	LHPoint direction = up;
	direction += light;
	if (bone != NULL)
	{
		long     quads = 2;
		LHMatrix matrix = LH3DMesh::g_current_list_matrix[bone->BoneIndex[0]];
		matrix.PostMultiply(LH3DTech::g_clipping_to_world);
		matrix.PreMultiply(bone->Matrix[0]);
		LHPoint left = matrix.GetPos();
		left.y = LH3DIsland::GetAltitude(matrix.GetPos()) + TRANS_TO_ADD;
		matrix = LH3DMesh::g_current_list_matrix[bone->BoneIndex[1]];
		matrix.PostMultiply(LH3DTech::g_clipping_to_world);
		matrix.PreMultiply(bone->Matrix[1]);
		LHPoint right = matrix.GetPos();
		right.y = LH3DIsland::GetAltitude(matrix.GetPos()) + TRANS_TO_ADD;
		LHPoint offset = direction + (right - left) * 0.5f;
		SetVertices(&g_vertex_list[0], &direction, &left);
		offset = (left - right) * 0.5f + direction;
		SetVertices(&g_vertex_list[4], &offset, &right);
		if (bone->BoneIndex[2] != -1)
		{
			quads = 4;
			matrix = LH3DMesh::g_current_list_matrix[bone->BoneIndex[2]];
			matrix.PostMultiply(LH3DTech::g_clipping_to_world);
			matrix.PreMultiply(bone->Matrix[2]);
			left = matrix.GetPos();
			left.y = LH3DIsland::GetAltitude(matrix.GetPos()) + TRANS_TO_ADD;
			matrix = LH3DMesh::g_current_list_matrix[bone->BoneIndex[3]];
			matrix.PostMultiply(LH3DTech::g_clipping_to_world);
			matrix.PreMultiply(bone->Matrix[3]);
			right = matrix.GetPos();
			right.y = LH3DIsland::GetAltitude(matrix.GetPos()) + TRANS_TO_ADD;
			offset = direction + (right - left) * 0.5f;
			SetVertices(&g_vertex_list[8], &direction, &left);
			offset = (left - right) * 0.5f + direction;
			SetVertices(&g_vertex_list[12], &offset, &right);
		}
		LH3DTech::Draw3DWorldTriangle(quads * 4, g_vertex_list, g_list_color, g_list_uv, quads * 2, g_list_index,
		                              g_material_shadow_feet, false);
	}
	else
	{
		LHMatrix matrix = LH3DMesh::g_current_list_matrix[21];
		matrix.PostMultiply(LH3DTech::g_clipping_to_world);
		LHPoint left = matrix.GetPos();
		left.y = LH3DIsland::GetAltitude(matrix.GetPos()) + TRANS_TO_ADD;
		matrix = LH3DMesh::g_current_list_matrix[18];
		matrix.PostMultiply(LH3DTech::g_clipping_to_world);
		LHPoint right = matrix.GetPos();
		right.y = LH3DIsland::GetAltitude(matrix.GetPos()) + TRANS_TO_ADD;
		LHPoint offset = direction + (right - left) * 0.5f;
		SetVertices(&g_vertex_list[0], &offset, &left);
		offset = (left - right) * 0.5f + direction;
		SetVertices(&g_vertex_list[4], &offset, &right);
		LH3DTech::Draw3DWorldTriangle(2 * 4, g_vertex_list, g_list_color, g_list_uv, 2 * 2, g_list_index,
		                              g_material_shadow_feet, false);
	}
}

LHTGA* LHTGA::CreateFromHD(char* name)
{
	char     error[0x400];
	uint32_t length;
	if (LHFileLength(name, &length) != LH_FILE_RESULT_OK)
	{
		sprintf(error, "Can't create %s", name);
		return NULL;
	}
	LHTGA* tga = (LHTGA*)malloc(length);
	LHLoadData(name, tga, length, NULL);
	if (!(tga->ImageDescriptor & LHTGA_DESCRIPTOR_TOP_LEFT))
	{
		uint32_t* last_line = (uint32_t*)(tga + 1) + (LHTGA_HD_SIZE - 1) * LHTGA_HD_SIZE;
		for (int x = 0; x < LHTGA_HD_SIZE; x++)
		{
			uint32_t* top = last_line - (LHTGA_HD_SIZE - 1) * LHTGA_HD_SIZE;
			uint32_t* bottom = last_line;
			for (int y = 0; y < LHTGA_HD_SIZE / 2; y++)
			{
				uint32_t pixel = *top;
				*top = *bottom;
				*bottom = pixel;
				top += LHTGA_HD_SIZE;
				bottom -= LHTGA_HD_SIZE;
			}
			last_line++;
		}
		tga->ImageDescriptor |= LHTGA_DESCRIPTOR_TOP_LEFT;
	}
	return tga;
}

void LHTGA::GetARGB(unsigned long* a, unsigned long* r, unsigned long* g, unsigned long* b, void* data, long index,
                    long format)
{
	if (format == LHTGA_FORMAT_ARGB4444)
	{
		uint16_t pixel = ((uint16_t*)data)[index];
		uint8_t  alpha = (pixel >> 8) & 0xf0;
		uint8_t  red = (pixel >> 4) & 0xf0;
		uint8_t  green = pixel & 0xf0;
		uint8_t  blue = (pixel & 0xf) << 4;
		*a = alpha;
		*r = red;
		*g = green;
		*b = blue;
	}
}

LHTGA* LHTGA::GetTGA(void* data, long width, long height, long format, bool32_t premultiply)
{
	char   footer[LHTGA_FOOTER_SIZE] = {0,   0,   0,   0,   0,   0,   0,   0,   'T', 'R', 'U', 'E', 'V',
	                                    'I', 'S', 'I', 'O', 'N', '-', 'X', 'F', 'I', 'L', 'E', '.', '\0'};
	long   size = GetSize(width, height);
	LHTGA* tga = (LHTGA*)malloc(size);
	memset(tga, 0, size);
	tga->ImageType = LHTGA_IMAGE_TYPE_TRUE_COLOR;
	tga->Width = width;
	tga->Height = height;
	tga->PixelDepth = LHTGA_PIXEL_DEPTH;
	tga->ImageDescriptor = LHTGA_DESCRIPTOR;
	uint8_t* pixels = (uint8_t*)(tga + 1);
	for (long y = 0; y < height; y++)
	{
		for (long x = 0; x < width; x++)
		{
			unsigned long alpha;
			unsigned long red;
			unsigned long green;
			unsigned long blue;
			long          index = y * width + x;
			GetARGB(&alpha, &red, &green, &blue, data, index, format);
			if (premultiply)
			{
				red = red * alpha / LHTGA_CHANNEL_MAX;
				green = green * alpha / LHTGA_CHANNEL_MAX;
				blue = blue * alpha / LHTGA_CHANNEL_MAX;
			}
			uint8_t* pixel = &pixels[index * sizeof(uint32_t)];
			pixel[3] = alpha;
			pixel[0] = blue;
			pixel[1] = green;
			pixel[2] = red;
		}
	}
	memcpy((char*)tga + size - LHTGA_FOOTER_SIZE, footer, LHTGA_FOOTER_SIZE);
	return tga;
}

Vertex3D* LH3DInBuild::GetListVertex()
{
	return &LH3DTech::g_cache_t_points[LH3D_MAX_POINTS / 2];
}

uint16_t LH3DInBuild::g_edge_count = 0;
int      LH3DInBuild::ec1 = 0;
int      LH3DInBuild::ec2 = 0;
bool32_t LH3DInBuild::g_b_fuck = false;

static inline void AddInBuildTriangle(uint16_t a, uint16_t b, uint16_t c)
{
	unsigned long flags_c = LH3DTech::g_cache_flags[c];
	unsigned long flags_b = LH3DTech::g_cache_flags[b];
	unsigned long flags_a = LH3DTech::g_cache_flags[a];
	if (flags_a | flags_b | flags_c)
	{
		if (!(flags_a & flags_b & flags_c))
		{
			LH3DTech::ClipTriangle(a, b, c, LH3DTech::CLIP_CODE_NEAR);
		}
	}
	else
	{
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
	}
}

void LH3DInBuild::Draw()
{
	if (g_b_fuck)
	{
		g_edge_count = 0;
		g_b_fuck = false;
		return;
	}

	unsigned long  color = LH3D_SCALE_COLOR(LH3DMesh::g_color, LH3D_IN_BUILD_COLOR_SCALE);
	Vertex3D*      src = GetListVertex();
	Vertex3D*      dst = LH3DTech::g_cache_t_points;
	unsigned long* flags = LH3DTech::g_cache_flags;
	uint16_t       edge_count = g_edge_count;
	uint16_t       count = edge_count * 2;
	for (int i = 0; i < count; i++)
	{
		if (src->rhw < LH3DTech::g_info_transform.NearClip)
		{
			*flags = LH3DTech::CLIP_CODE_NEAR;
		}
		else
		{
			*flags = LH3DTech::CLIP_CODE_NONE;
		}
		if (src->x > src->rhw)
		{
			*flags |= LH3DTech::CLIP_CODE_RIGHT;
		}
		else if (-src->rhw > src->x)
		{
			*flags |= LH3DTech::CLIP_CODE_LEFT;
		}
		if (src->y > src->rhw)
		{
			*flags |= LH3DTech::CLIP_CODE_TOP;
		}
		else if (-src->rhw > src->y)
		{
			*flags |= LH3DTech::CLIP_CODE_BOTTOM;
		}
		if (*flags == LH3DTech::CLIP_CODE_NONE)
		{
			dst->rhw = 1.0f / src->rhw;
			dst->x = (dst->rhw * src->x + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			if (dst->x < 0.0f)
			{
				dst->x = 0.0f;
			}
			else if (dst->x > LH3DTech::g_max_screen[0])
			{
				dst->x = LH3DTech::g_max_screen[0];
			}
			dst->y = (1.0f - dst->rhw * src->y) * LH3DTech::g_info_transform.HalfRes.y;
			if (dst->y < 0.0f)
			{
				dst->y = 0.0f;
			}
			else if (dst->y > LH3DTech::g_max_screen[1])
			{
				dst->y = LH3DTech::g_max_screen[1];
			}
			dst->rhw = LH3DTech::g_info_transform.NearClip * dst->rhw;
			dst->z = 1.0f - dst->rhw;
		}
		else
		{
			dst->x = src->x;
			dst->y = src->y;
			dst->rhw = src->rhw;
		}
		dst->uv = src->uv;
		dst->color = color;
		dst->specular = src->specular;
		flags++;
		dst++;
		src++;
	}

	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = count;
	LH3DTech::g_clip_with_double_sided = true;
	for (int j = 0; j < edge_count / 2; j++)
	{
		uint16_t a = j * 2;
		uint16_t b = a + 1;
		uint16_t c = a + edge_count;
		AddInBuildTriangle(a, b, c);
		AddInBuildTriangle(c + 1, b, c);
	}

	if (LH3DTech::g_index_count != 0)
	{
		LH3DRender::SetRenderState(D3DRENDERSTATE_CULLMODE, D3DCULL_NONE);
		LH3DRender::DrawTriangle(LH3DTech::g_cache_t_points, LH3DTech::g_points_count, LH3DTech::g_list_indices,
		                         LH3DTech::g_index_count);
	}
}

void LH3DInBuild::AddEdge(Vertex3D* a, Vertex3D* b)
{
	if (g_edge_count > LH3D_IN_BUILD_MAX_EDGES)
	{
		g_b_fuck = true;
		return;
	}
	long index = g_edge_count * 2;
	GetListVertex()[index] = *a;
	GetListVertex()[index + 1] = *b;
	g_edge_count++;
}

LH3DExtraDotLight LH3DExtraDotLight::g_list[LH3D_EXTRA_DOT_LIGHT_MAX];
long              LH3DExtraDotLight::g_count = 0;

void LH3DExtraDotLight::Draw()
{
	for (int i = 0; i < g_count; i++)
	{
		LH3DExtraDotLight* light = &g_list[i];
		LandCell*          cell = LH3DIsland::GetCell(light->X, light->Z);
		if (cell != NULL)
		{
			*(unsigned long*)cell = (*(unsigned long*)cell & 0xff000000) | light->Color;
		}
	}
}

void LH3DExtraDotLight::Clear()
{
	for (int i = 0; i < g_count; i++)
	{
		LandCell* cell = LH3DIsland::GetCell(g_list[i].X, g_list[i].Z);
		if (cell != NULL)
		{
			*(unsigned long*)cell = cell->SaveColor << 24;
		}
	}
}

bool32_t           LH3DCameraChecker::g_activated = true;
LH3DCameraChecker* LH3DCameraChecker::g_first = NULL;

void LH3DCameraChecker::Create(float max_distance, LHPoint point, float amplitude, long duration, bool y_only)
{
	LH3DCameraChecker* checker = (LH3DCameraChecker*)LH3DMem::AllocClear(sizeof(LH3DCameraChecker));
	checker->Next = g_first;
	g_first = checker;
	checker->MaxDistance = max_distance;
	checker->Point = point;
	checker->Amplitude = amplitude;
	checker->Duration = duration;
	checker->TimeLeft = duration;
	checker->YOnly = y_only;
}

void LH3DCameraChecker::AdjustCameraPosTarget(LHPoint* pos, LHPoint* target)
{
	LH3DCameraChecker* closest = g_first;
	if (closest == NULL || !g_activated)
	{
		return;
	}

	LH3DCameraChecker* checker = closest->Next;
	float              smallest_dist = LH3DMath::GetDistance(&closest->Point, LH3DTech::GetCameraPosition());
	for (; checker != NULL; checker = checker->Next)
	{
		float dist = LH3DMath::GetDistance(&checker->Point, LH3DTech::GetCameraPosition());
		if (dist < smallest_dist)
		{
			smallest_dist = dist;
			closest = checker;
		}
	}

	if (smallest_dist < closest->MaxDistance)
	{
		float amplitude = (float)closest->TimeLeft / closest->Duration * closest->Amplitude;
		if (closest->YOnly)
		{
			float shake = Random(-amplitude, amplitude);
			pos->y += shake;
			shake = Random(-amplitude, amplitude);
			target->y += shake;
		}
		else
		{
			*pos +=
				LHPoint(Random(-amplitude, amplitude), Random(-amplitude, amplitude), Random(-amplitude, amplitude));
			*target +=
				LHPoint(Random(-amplitude, amplitude), Random(-amplitude, amplitude), Random(-amplitude, amplitude));
		}
	}
}

void LH3DCameraChecker::Process()
{
	if (!g_activated)
	{
		return;
	}
	LH3DCameraChecker* previous = NULL;
	LH3DCameraChecker* checker = g_first;
	while (checker != NULL)
	{
		checker->TimeLeft -= LH3DTech::g_delta_time;
		if (checker->TimeLeft <= 0)
		{
			if (previous != NULL)
			{
				previous->Next = checker->Next;
			}
			else
			{
				g_first = checker->Next;
			}
			LH3DCameraChecker* dead = checker;
			checker = checker->Next;
			LH3DMem::Free(dead);
		}
		else
		{
			previous = checker;
			checker = checker->Next;
		}
	}
}

ScriptedScreenShot::Shot ScriptedScreenShot::g_info;
LHPoint                  ScriptedScreenShot::g_pos(0.0f, 0.0f, 0.0f);
LHPoint                  ScriptedScreenShot::g_foc(0.0f, 0.0f, 0.0f);
bool32_t                 ScriptedScreenShot::g_b_fullscreen_ready = false;
bool32_t                 ScriptedScreenShot::g_b_fullscreen = false;
bool32_t                 ScriptedScreenShot::g_b_do_it = false;

void ScriptedScreenShot::TakeFullScreen()
{
	if (g_info.FullScreen == NULL)
	{
		return;
	}
	Report3D__FPCce("Request Snapshot.\n");
	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwSize = sizeof(desc);
	LHSys::TheSystem.screen.PPrimarySurface->Lock(NULL, &desc, SCRIPTED_SCREEN_SHOT_LOCK, NULL);
	uint8_t* surface = (uint8_t*)desc.lpSurface;
	if (surface != NULL)
	{
		uint8_t*      out = g_info.FullScreen;
		unsigned long x;
		unsigned long y;
		float         scaleY = LHSys::TheSystem.screen.Height() / (float)SCRIPTED_SCREEN_SHOT_FULL_HEIGHT;
		float         scaleX = LHSys::TheSystem.screen.Width() / (float)SCRIPTED_SCREEN_SHOT_FULL_WIDTH;
		if (desc.ddpfPixelFormat.dwRGBBitCount == 16)
		{
			long pitch = desc.lPitch / 2;
			if (desc.ddpfPixelFormat.dwGBitMask == SCRIPTED_SCREEN_SHOT_565_GREEN)
			{
				for (y = 0; y < SCRIPTED_SCREEN_SHOT_FULL_HEIGHT; y++)
				{
					long     row = (long)(y * scaleY) * pitch;
					uint32_t pixel = ((uint16_t*)surface)[row];
					uint32_t red = (pixel >> 12) & 0xf;
					uint32_t green = (pixel >> 7) & 0xf;
					uint32_t blue = (pixel >> 1) & 0xf;
					for (x = 0; x < SCRIPTED_SCREEN_SHOT_FULL_WIDTH; x++)
					{
						pixel = ((uint16_t*)surface)[row + (long)(x * scaleX)];
						uint32_t nextRed = (pixel >> 12) & 0xf;
						uint32_t nextGreen = (pixel >> 7) & 0xf;
						uint32_t nextBlue = (pixel >> 1) & 0xf;
						*out++ = (nextRed + red) << 3;
						red = nextRed;
						*out++ = (nextGreen + green) << 3;
						green = nextGreen;
						*out++ = (nextBlue + blue) << 3;
						blue = nextBlue;
					}
				}
			}
			else
			{
				for (y = 0; y < SCRIPTED_SCREEN_SHOT_FULL_HEIGHT; y++)
				{
					long     row = (long)(y * scaleY) * pitch;
					uint32_t pixel = ((uint16_t*)surface)[row];
					uint32_t red = (pixel >> 11) & 0xf;
					uint32_t green = (pixel >> 6) & 0xf;
					uint32_t blue = (pixel >> 1) & 0xf;
					for (x = 0; x < SCRIPTED_SCREEN_SHOT_FULL_WIDTH; x++)
					{
						pixel = ((uint16_t*)surface)[row + (long)(x * scaleX)];
						uint32_t nextRed = (pixel >> 11) & 0xf;
						uint32_t nextGreen = (pixel >> 6) & 0xf;
						uint32_t nextBlue = (pixel >> 1) & 0xf;
						*out++ = (nextRed + red) << 3;
						red = nextRed;
						*out++ = (nextGreen + green) << 3;
						green = nextGreen;
						*out++ = (nextBlue + blue) << 3;
						blue = nextBlue;
					}
				}
			}
		}
		else if (desc.ddpfPixelFormat.dwRGBBitCount == 32)
		{
			long pitch = desc.lPitch / 4;
			Report3D__FPCce("%d PITCH\n", pitch);
			for (y = 0; y < SCRIPTED_SCREEN_SHOT_FULL_HEIGHT; y++)
			{
				long      row = (long)(y * scaleY) * pitch;
				LH3DColor pixel = ((LH3DColor*)surface)[row];
				uint32_t  red = pixel.r;
				uint32_t  green = pixel.g;
				uint32_t  blue = pixel.b;
				for (x = 0; x < SCRIPTED_SCREEN_SHOT_FULL_WIDTH; x++)
				{
					pixel = ((LH3DColor*)surface)[row + (long)(x * scaleX)];
					uint32_t nextRed = pixel.r;
					uint32_t nextGreen = pixel.g;
					uint32_t nextBlue = pixel.b;
					*out++ = (red + nextRed) >> 1;
					*out++ = (green + nextGreen) >> 1;
					*out++ = (blue + nextBlue) >> 1;
					red = nextRed;
					green = nextGreen;
					blue = nextBlue;
				}
			}
		}
	}
	LHSys::TheSystem.screen.PPrimarySurface->Unlock(NULL);
	g_b_fullscreen_ready = true;
	g_b_fullscreen = false;
}

void ScriptedScreenShot::Process()
{
	if (!g_b_do_it)
	{
		return;
	}
	g_b_do_it = false;
	if (g_b_fullscreen)
	{
		TakeFullScreen();
		return;
	}
	Report3D__FPCce("Request Snapshot.\n");
	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwSize = sizeof(desc);
	LHSys::TheSystem.screen.PPrimarySurface->Lock(NULL, &desc, SCRIPTED_SCREEN_SHOT_LOCK, NULL);
	if (desc.lpSurface == NULL)
	{
		LHSys::TheSystem.screen.PPrimarySurface->Unlock(NULL);
		return;
	}
	uint8_t* picture = (uint8_t*)malloc(CITADEL_TEXTURE_BYTES);
	LoadTextureCitadel(g_info.PictureTexture, picture);
	uint8_t* out = picture;
	float    scaleY = LHSys::TheSystem.screen.Height() / (float)SCRIPTED_SCREEN_SHOT_HALF_HEIGHT;
	float    scaleX = LHSys::TheSystem.screen.Width() / (float)CITADEL_TEXTURE_SIZE;
	if (desc.ddpfPixelFormat.dwRGBBitCount == 16)
	{
		uint8_t* surface = (uint8_t*)desc.lpSurface;
		if (g_info.Half != 0)
		{
			out = picture + CITADEL_TEXTURE_BYTES / 2;
		}
		long pitch = desc.lPitch / 2;
		if (desc.ddpfPixelFormat.dwGBitMask == SCRIPTED_SCREEN_SHOT_565_GREEN)
		{
			for (unsigned long y = 0; y < SCRIPTED_SCREEN_SHOT_HALF_HEIGHT; y++)
			{
				long     row = (long)(y * scaleY) * pitch;
				uint32_t pixel = ((uint16_t*)surface)[row];
				uint32_t red = (pixel >> 12) & 0xf;
				uint32_t green = (pixel >> 7) & 0xf;
				uint32_t blue = (pixel >> 1) & 0xf;
				for (unsigned long x = 0; x < CITADEL_TEXTURE_SIZE; x++)
				{
					pixel = ((uint16_t*)surface)[row + (long)(x * scaleX)];
					uint32_t nextRed = (pixel >> 12) & 0xf;
					uint32_t nextGreen = (pixel >> 7) & 0xf;
					uint32_t nextBlue = (pixel >> 1) & 0xf;
					*out++ = (nextRed + red) << 3;
					red = nextRed;
					*out++ = (nextGreen + green) << 3;
					green = nextGreen;
					*out++ = (nextBlue + blue) << 3;
					blue = nextBlue;
				}
			}
		}
		else
		{
			for (unsigned long y = 0; y < SCRIPTED_SCREEN_SHOT_HALF_HEIGHT; y++)
			{
				long     row = (long)(y * scaleY) * pitch;
				uint32_t pixel = ((uint16_t*)surface)[row];
				uint32_t red = (pixel >> 11) & 0xf;
				uint32_t green = (pixel >> 6) & 0xf;
				uint32_t blue = (pixel >> 1) & 0xf;
				for (unsigned long x = 0; x < CITADEL_TEXTURE_SIZE; x++)
				{
					pixel = ((uint16_t*)surface)[row + (long)(x * scaleX)];
					uint32_t nextRed = (pixel >> 11) & 0xf;
					uint32_t nextGreen = (pixel >> 6) & 0xf;
					uint32_t nextBlue = (pixel >> 1) & 0xf;
					*out++ = (nextRed + red) << 3;
					red = nextRed;
					*out++ = (nextGreen + green) << 3;
					green = nextGreen;
					*out++ = (nextBlue + blue) << 3;
					blue = nextBlue;
				}
			}
		}
	}
	else if (desc.ddpfPixelFormat.dwRGBBitCount == 32)
	{
		uint8_t* surface = (uint8_t*)desc.lpSurface;
		if (g_info.Half != 0)
		{
			out = picture + CITADEL_TEXTURE_BYTES / 2;
		}
		long pitch = desc.lPitch / 4;
		for (unsigned long y = 0; y < SCRIPTED_SCREEN_SHOT_HALF_HEIGHT; y++)
		{
			long      row = (long)(y * scaleY) * pitch;
			LH3DColor pixel = ((LH3DColor*)surface)[row];
			uint32_t  red = pixel.r;
			uint32_t  green = pixel.g;
			uint32_t  blue = pixel.b;
			for (unsigned long x = 0; x < CITADEL_TEXTURE_SIZE; x++)
			{
				pixel = ((LH3DColor*)surface)[row + (long)(x * scaleX)];
				uint32_t nextRed = pixel.r;
				uint32_t nextGreen = pixel.g;
				uint32_t nextBlue = pixel.b;
				*out++ = (red + nextRed) >> 1;
				*out++ = (green + nextGreen) >> 1;
				*out++ = (blue + nextBlue) >> 1;
				red = nextRed;
				green = nextGreen;
				blue = nextBlue;
			}
		}
	}
	LHSys::TheSystem.screen.PPrimarySurface->Unlock(NULL);
	uint8_t* pixel = picture;
	if (g_info.Half != 0)
	{
		pixel = picture + CITADEL_TEXTURE_BYTES / 2;
	}
	unsigned long x;
	unsigned long y;
	for (y = 0; y < SCRIPTED_SCREEN_SHOT_HALF_HEIGHT - 1; y++)
	{
		for (x = 0; x < CITADEL_TEXTURE_SIZE - 1; x++)
		{
			LH3DColor color(pixel[0], pixel[1], pixel[2], LH3D_COLOR_OPAQUE);
			LH3DColor right(pixel[3], pixel[4], pixel[5], LH3D_COLOR_OPAQUE);
			LH3DColor below(pixel[CITADEL_TEXTURE_PITCH], pixel[CITADEL_TEXTURE_PITCH + 1],
			                pixel[CITADEL_TEXTURE_PITCH + 2], LH3D_COLOR_OPAQUE);
			LH3DColor belowRight(pixel[CITADEL_TEXTURE_PITCH + 3], pixel[CITADEL_TEXTURE_PITCH + 4],
			                     pixel[CITADEL_TEXTURE_PITCH + 5], LH3D_COLOR_OPAQUE);
			color.Blend(right, SCRIPTED_SCREEN_SHOT_HALF_BLEND);
			below.Blend(belowRight, SCRIPTED_SCREEN_SHOT_HALF_BLEND);
			color.Blend(below, SCRIPTED_SCREEN_SHOT_HALF_BLEND);
			pixel[0] = color.r;
			pixel[1] = color.g;
			pixel[2] = color.b;
			pixel += 3;
		}
		pixel += 3;
	}
	SaveTextureCitadel(g_info.PictureTexture, picture);
	uint8_t* thumbnails = (uint8_t*)malloc(CITADEL_TEXTURE_BYTES);
	LoadTextureCitadel(g_info.ThumbnailTexture, thumbnails);
	uint8_t* thumbnail = thumbnails +
	                     g_info.Thumbnail / 2 * SCRIPTED_SCREEN_SHOT_THUMBNAIL_HEIGHT * CITADEL_TEXTURE_PITCH +
	                     (g_info.Thumbnail & 1) * SCRIPTED_SCREEN_SHOT_THUMBNAIL_WIDTH * 3;
	uint8_t* source = picture;
	if (g_info.Half != 0)
	{
		source = picture + CITADEL_TEXTURE_BYTES / 2;
	}
	for (y = 0; y < SCRIPTED_SCREEN_SHOT_THUMBNAIL_HEIGHT; y++)
	{
		for (x = 0; x < SCRIPTED_SCREEN_SHOT_THUMBNAIL_WIDTH; x++)
		{
			thumbnail[0] = (source[0] + source[3]) >> 1;
			thumbnail[1] = (source[1] + source[4]) >> 1;
			thumbnail[2] = (source[2] + source[5]) >> 1;
			thumbnail += 3;
			source += 6;
		}
		thumbnail += SCRIPTED_SCREEN_SHOT_THUMBNAIL_WIDTH * 3;
		source += CITADEL_TEXTURE_PITCH;
	}
	SaveTextureCitadel(g_info.ThumbnailTexture, thumbnails);
	free(picture);
	free(thumbnails);
}

void __fastcall LH3DColor::Blend(LH3DColor& other, long amount)
{
	long inverse = LH3D_COLOR_CHANNEL_MAX - amount;
	int  red = (r * amount + other.r * inverse) / LH3D_COLOR_CHANNEL_MAX;
	int  green = (g * amount + other.g * inverse) / LH3D_COLOR_CHANNEL_MAX;
	int  blue = (b * amount + other.b * inverse) / LH3D_COLOR_CHANNEL_MAX;
	int  alpha = (a * amount + other.a * inverse) / LH3D_COLOR_CHANNEL_MAX;
	Set(alpha, red, green, blue);
}

void LH3DTools::ConvertTgaTo16B(int argc, char** argv)
{
	Bitmap16B* bitmap = Bitmap16B::CreateFromTGAOnHD(argv[1]);
	int        length = strlen(argv[1]);
	argv[1][length - 3] = '1';
	argv[1][length - 2] = '6';
	argv[1][length - 1] = 'B';
	bitmap->SaveOnHD(argv[1]);
}

void LH3DTools::DeteleTexture(int argc, char** argv)
{
	char error[LH3D_TOOLS_TEXT_SIZE];
	for (int i = 1; i < argc; i++)
	{
		char*    name = argv[i];
		uint32_t size;
		if (LHFileLength(name, &size) != LH_FILE_RESULT_OK)
		{
			sprintf(error, "Can't find %s", error);
			return;
		}
		LH3DTexturePackFile* pack = (LH3DTexturePackFile*)malloc(size);
		LHLoadData(name, pack, size, NULL);
		unsigned long packSize = pack->Offsets;
		pack->Offsets = LH3D_TEXTURE_PACK_NO_OFFSETS;
		pack->Count = 0;
		LHSaveData(name, pack, packSize, NULL);
		free(pack);
	}
}

void LH3DTools::ExportTGA(int argc, char** argv)
{
	char file[LH3D_TOOLS_FILE_SIZE];
	char path[LH3D_TOOLS_TEXT_SIZE];
	char error[LH3D_TOOLS_TEXT_SIZE];
	strcpy(path, argv[0]);
	char* exe = path;
	while (strcmp(exe, "exportTGA.exe") != 0)
	{
		exe++;
	}
	*exe = '\0';
	for (int i = 1; i < argc; i++)
	{
		uint32_t size;
		if (LHFileLength(argv[i], &size) != LH_FILE_RESULT_OK)
		{
			sprintf(error, "Can't find %s", error);
			return;
		}
		LH3DTexturePackFile* pack = (LH3DTexturePackFile*)malloc(size);
		LHLoadData(argv[i], pack, size, NULL);
		for (int j = 0; j < pack->Count; j++)
		{
			long* texture = (long*)((uint8_t*)pack + ((long*)((uint8_t*)pack + pack->Offsets))[j]);
			sprintf(file, LH3D_TOOLS_PACK_TEXTURE_PATH, path, texture[0]);
			LHTGA* tga = LHTGA::GetTGA(texture + 1, LH3D_TEXTURE_PACK_SIZE, LH3D_TEXTURE_PACK_SIZE,
			                           LHTGA_FORMAT_ARGB4444, false);
			LHSaveData(file, tga, LHTGA::GetSize(tga->Width, tga->Height), NULL);
			free(tga);
		}
		free(pack);
	}
}

Bitmap16B* Bitmap16B::Create(long width, long height, long type)
{
	long       size = width * height * sizeof(uint16_t) + sizeof(Bitmap16B);
	Bitmap16B* bitmap = (Bitmap16B*)malloc(size);
	memset(bitmap, 0, size);
	bitmap->Type = type;
	bitmap->Width = width;
	bitmap->Height = height;
	bitmap->Data = (uint16_t*)(bitmap + 1);
	return bitmap;
}

void Bitmap16B::Release()
{
	free(this);
}

Bitmap16B* Bitmap16B::CreateFromHD(char* name, bool32_t keep_format)
{
	uint32_t size;
	if (LHFileLength(name, &size) != LH_FILE_RESULT_OK)
	{
		char error[LH3D_TOOLS_TEXT_SIZE];
		sprintf(error, "Can't create %s", name);
		return NULL;
	}
	Bitmap16B* bitmap = (Bitmap16B*)malloc(size);
	LHLoadData(name, bitmap, size, NULL);
	bitmap->Data = (uint16_t*)(bitmap + 1);
	if (LH3DTexture::g_b_use_low_res)
	{
		Bitmap16B* lowRes = Create(BITMAP_16B_LOW_RES_SIZE, BITMAP_16B_LOW_RES_SIZE, 0);
		if (LH3DTexture::g_b_use_565 && !keep_format)
		{
			for (int y = 0; y < lowRes->Height; y++)
			{
				for (int x = 0; x < lowRes->Width; x++)
				{
					uint16_t pixel = bitmap->Data[(bitmap->Width * y + x) * 2];
					lowRes->Data[lowRes->Width * y + x] =
						((pixel & BITMAP_16B_555_HIGH) << 1) | (pixel & BITMAP_16B_555_BLUE);
				}
			}
		}
		else
		{
			for (int y = 0; y < lowRes->Height; y++)
			{
				for (int x = 0; x < lowRes->Width; x++)
				{
					lowRes->Data[lowRes->Width * y + x] = bitmap->Data[(bitmap->Width * y + x) * 2];
				}
			}
		}
		bitmap->Release();
		bitmap = lowRes;
	}
	else if (LH3DTexture::g_b_use_565 && !keep_format)
	{
		for (int y = 0; y < bitmap->Height; y++)
		{
			for (int x = 0; x < bitmap->Width; x++)
			{
				uint16_t* pixel = &bitmap->Data[bitmap->Width * y + x];
				*pixel = ((*pixel & BITMAP_16B_555_HIGH) << 1) | (*pixel & BITMAP_16B_555_BLUE);
			}
		}
	}
	return bitmap;
}

Bitmap16B* Bitmap16B::CreateFromRawOnHD(char* name, bool32_t check_size, long format)
{
	uint32_t size;
	if (LHFileLength(name, &size) != LH_FILE_RESULT_OK)
	{
		char error[LH3D_TOOLS_TEXT_SIZE];
		sprintf(error, "Can't create %s", name);
		return NULL;
	}
	if (check_size && size != BITMAP_16B_RAW_SIZE * BITMAP_16B_RAW_SIZE * sizeof(uint32_t))
	{
		return NULL;
	}
	uint8_t* data = (uint8_t*)malloc(size);
	LHLoadData(name, data, size, NULL);
	Bitmap16B* bitmap = Create(BITMAP_16B_RAW_SIZE, BITMAP_16B_RAW_SIZE, 0);
	if (format == BITMAP_16B_RAW_FORMAT_RGBA)
	{
		uint8_t* src = data;
		for (int i = 0; i < BITMAP_16B_RAW_SIZE * BITMAP_16B_RAW_SIZE; i++, src += 4)
		{
			bitmap->Data[i] = ((src[3] >> 4) << 12) | ((src[0] >> 4) << 8) | ((src[1] >> 4) << 4) | (src[2] >> 4);
		}
	}
	else
	{
		uint8_t* src = data;
		for (int i = 0; i < BITMAP_16B_RAW_SIZE * BITMAP_16B_RAW_SIZE; i++, src += 3)
		{
			bitmap->Data[i] = ((src[0] >> 3) << 10) | ((src[1] >> 3) << 5) | (src[2] >> 3);
		}
	}
	free(data);
	return bitmap;
}

Bitmap16B* Bitmap16B::CreateFromTGAOnHD(char* name)
{
	LHTGA*     tga = LHTGA::CreateFromHD(name);
	Bitmap16B* bitmap = Create(BITMAP_16B_RAW_SIZE, BITMAP_16B_RAW_SIZE, 0);
	uint8_t*   src = (uint8_t*)(tga + 1);
	for (int i = 0; i < BITMAP_16B_RAW_SIZE * BITMAP_16B_RAW_SIZE; i++, src += 4)
	{
		bitmap->Data[i] = ((src[0] >> 4) << 12) | ((src[1] >> 4) << 8) | ((src[2] >> 4) << 4) | (src[3] >> 4);
	}
	free(tga);
	return bitmap;
}

void Bitmap16B::SaveOnHD(char* name)
{
	LHSaveData(name, this, Width * Height * sizeof(uint16_t) + sizeof(Bitmap16B), NULL);
}

void UpdateClippingPlane(LHPlane* plane)
{
	LH3DPrimitive::g_clipping_plane_world = *plane;
	LHPoint normal = LH3DPrimitive::g_clipping_plane_world.Normal;
	LHPoint point = normal * -(LH3DPrimitive::g_clipping_plane_world.Distance / normal.GetNormeSq());
	LH3DTech::g_world_to_camera.TransformVector(normal);
	LH3DTech::g_world_to_camera.TransformPoint(point);
	LH3DPrimitive::g_clipping_plane_camera.Normal = normal;
	LH3DPrimitive::g_clipping_plane_camera.Distance = -normal.DotProduct(point);
}

void LH3DTools::ConvertLandscape(int argc, char** argv)
{
	if (argc == 2)
	{
		LH3DIsland::SetFileToLoad(argv[1]);
		LH3DIsland::Create();
		int length = strlen(argv[1]);
		argv[1][length - 3] = 'l';
		argv[1][length - 2] = 'n';
		argv[1][length - 1] = 'd';
		LH3DRender::StartFrame();
		LH3DIsland::Draw();
		LH3DRender::FinishFrame();
		LH3DIsland::SaveOnDisk(argv[1]);
		LH3DIsland::Release();
	}
}

void LH3DTools::ConvertLoadOnDiscIntoCT(int argc, char** argv)
{
	if (argc == 2)
	{
		LHSys::TheSystem.screen.SetDriver(0);
		LHIlib::LH3DRenderSetNeedInit(true);
		LHSys::TheSystem.screen.Open(LH3D_TOOLS_SCREEN_SIZE, LH3D_TOOLS_SCREEN_SIZE, LH3D_TOOLS_SCREEN_DEPTH);
		char name[LH3D_TOOLS_TEXT_SIZE];
		strcpy(name, argv[1]);
		int length = strlen(name);
		name[length - LH3D_TOOLS_EXTENSION_LENGTH] = '\0';
		strcat(name, "a.raw");
		uint32_t      size;
		unsigned long alpha = 0;
		if (LHFileLength(name, &size) == LH_FILE_RESULT_OK)
		{
			alpha = LH3D_TOOLS_TEXTURE_ALPHA;
		}
		LH3DTexture* texture = LH3DTexture::Create(argv[1], alpha | LH3D_TOOLS_TEXTURE_FLAGS, 0, NULL);
		texture->Activate(0);
		LH3DCT* ct = LH3DCT::Create(NULL, (bool)alpha);
		if (texture->VRAMTex != NULL)
		{
			ct->Surface->Blt(NULL, texture->VRAMTex->Surface, NULL, DDBLT_WAIT, NULL);
		}
		name[length - LH3D_TOOLS_EXTENSION_LENGTH] = '\0';
		strcat(name, ".cmp");
		ct->SaveOnDisk(name);
		ct->Release();
	}
}

void LH3DTools::ProcessLED(int argc, char** argv)
{
	if (argc == 2)
	{
		LHSys::TheSystem.screen.SetDriver(0);
		LHIlib::LH3DRenderSetNeedInit(true);
		LHSys::TheSystem.screen.Open(LH3D_TOOLS_SCREEN_SIZE, LH3D_TOOLS_SCREEN_SIZE, LH3D_TOOLS_SCREEN_DEPTH);
		LH3DIsland::SetFileToLoad(argv[1]);
		argv[1][strlen(argv[1]) - 3] = '\0';
		strcat(argv[1], "tga");
		LH3DIsland::Create();
		LH3DIsland::Draw();
		LH3DRender::FinishFrame();
		LH3DIsland::BuildSoundTGA(argv[1]);
	}
}

static inline void LightCell(LandCell* cell, uint8_t darkness)
{
	if (cell->darkness >= LAND_CELL_MIN_DARKNESS || cell->darkness < darkness)
	{
		cell->darkness = darkness;
	}
}

void __fastcall DrawLightLikeHand(float x, float z, uint8_t* light, long size, float intensity)
{
	if (intensity <= 0.0f)
	{
		return;
	}
	long          sizeX = size;
	long          sizeZ = size;
	float         cellX = x * LIGHT_LIKE_HAND_CELLS_PER_UNIT;
	float         cellZ = z * LIGHT_LIKE_HAND_CELLS_PER_UNIT;
	long          px = (long)cellX;
	long          pz = (long)cellZ;
	unsigned long weightZ;
	if (cellZ >= 0.0f)
	{
		weightZ = (uint8_t)(255.0f - (cellZ - pz) * 255.0f);
	}
	else
	{
		weightZ = (uint8_t)((pz - cellZ) * 255.0f);
		pz--;
	}
	unsigned long weightX;
	if (cellX >= 0.0f)
	{
		weightX = (uint8_t)(255.0f - (cellX - px) * 255.0f);
	}
	else
	{
		weightX = (uint8_t)((px - cellX) * 255.0f);
		px--;
	}
	if (px > LAND_MAP_SIZE - size)
	{
		if (px >= LAND_MAP_SIZE)
		{
			return;
		}
		sizeX = LAND_MAP_SIZE - px;
	}
	else if (px < 0)
	{
		sizeX = px + size;
		light -= px * size;
		px = 0;
	}
	if (pz > LAND_MAP_SIZE - size)
	{
		if (pz >= LAND_MAP_SIZE)
		{
			return;
		}
		sizeZ = LAND_MAP_SIZE - pz;
	}
	else if (pz < 0)
	{
		sizeZ = pz + size;
		light -= pz;
		pz = 0;
	}
	int maxDarkness =
		((LH3DColor&)LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS]).GetG() * LAND_CELL_MIN_DARKNESS >> 8;
	long alpha = (long)(intensity * 255.0f);
	for (int i = 0; i < sizeX - 1; i++)
	{
		for (int j = 0; j < sizeZ - 1; j++)
		{
			LandCell* cell = LH3DIsland::GetCell(px, pz);
			if (cell != NULL)
			{
				uint8_t*      next = light + size;
				unsigned long top = LH3D_BLEND_COLOR(light[0], light[1], weightZ);
				unsigned long bottom = LH3D_BLEND_COLOR(next[0], next[1], weightZ);
				unsigned long darkness = LH3D_BLEND_COLOR(top, bottom, weightX) * alpha / 255;
				if (darkness <= (cell->darkness * maxDarkness >> 8))
				{
					darkness = cell->darkness;
				}
				LightCell(cell, darkness);
				if ((pz & LAND_BLOCK_MASK) == 0)
				{
					LandCell* edge = LH3DIsland::GetCell(px, pz - 1);
					if (edge != NULL)
					{
						edge += 1;
						LightCell(edge, darkness);
						if ((px & LAND_BLOCK_MASK) == 0)
						{
							edge = LH3DIsland::GetCell(px - 1, pz - 1);
							if (edge != NULL)
							{
								edge += LAND_BLOCK_SIDE_POINTS + 1;
								LightCell(edge, darkness);
							}
						}
					}
				}
				if ((px & LAND_BLOCK_MASK) == 0)
				{
					LandCell* edge = LH3DIsland::GetCell(px - 1, pz);
					if (edge != NULL)
					{
						edge += LAND_BLOCK_SIDE_POINTS;
						LightCell(edge, darkness);
					}
				}
			}
			light++;
			pz++;
		}
		light += size - (sizeZ - 1);
		pz -= sizeZ - 1;
		px++;
	}
}

static inline void ClearCell(LandCell* cell)
{
	*(unsigned long*)cell = 0;
	cell->darkness = cell->SaveColor;
}

void __fastcall ClearLightLikeHand(float x, float z, long size)
{
	long sizeX = size;
	long sizeZ = size;
	long px = (long)(x / MAP_COORDS_METRES_PER_CELL);
	long pz = (long)(z / MAP_COORDS_METRES_PER_CELL);
	if (px > LAND_MAP_SIZE - size)
	{
		if (px >= LAND_MAP_SIZE)
		{
			return;
		}
		sizeX = LAND_MAP_SIZE - px;
	}
	else if (px < 0)
	{
		sizeX = px + size;
		px = 0;
	}
	if (pz > LAND_MAP_SIZE - size)
	{
		if (pz >= LAND_MAP_SIZE)
		{
			return;
		}
		sizeZ = LAND_MAP_SIZE - pz;
	}
	else if (pz < 0)
	{
		sizeZ = pz + size;
		pz = 0;
	}
	for (int i = 0; i < sizeX - 1; i++)
	{
		for (int j = 0; j < sizeZ - 1; j++)
		{
			LandCell* cell = LH3DIsland::GetCell(px, pz);
			if (cell != NULL)
			{
				ClearCell(cell);
				if ((pz & LAND_BLOCK_MASK) == 0)
				{
					LandCell* edge = LH3DIsland::GetCell(px, pz - 1);
					if (edge != NULL)
					{
						edge += 1;
						ClearCell(edge);
						if ((px & LAND_BLOCK_MASK) == 0)
						{
							edge = LH3DIsland::GetCell(px - 1, pz - 1);
							if (edge != NULL)
							{
								edge += LAND_BLOCK_SIDE_POINTS + 1;
								ClearCell(edge);
							}
						}
					}
				}
				if ((px & LAND_BLOCK_MASK) == 0)
				{
					LandCell* edge = LH3DIsland::GetCell(px - 1, pz);
					if (edge != NULL)
					{
						edge += LAND_BLOCK_SIDE_POINTS;
						ClearCell(edge);
					}
				}
			}
			pz++;
		}
		pz -= sizeZ - 1;
		px++;
	}
}

static inline float Wrap(float value, float min, float max)
{
	float range = max - min;
	float offset = value - min;
	return min + (offset - (int)(offset / range) * range);
}

static inline void WrapRef(float& value, float min, float max)
{
	float range = max - min;
	float offset = value - min;
	value = min + (offset - (int)(offset / range) * range);
}

long             EclairagePublic::g_off[ECLAIRAGE_PUBLIC_SPRITES] = {0, 13, 0};
EclairagePublic* EclairagePublic::g_first = NULL;
float            EclairagePublic::g_alpha = 0.0f;

EclairagePublic* EclairagePublic::Create(LHPoint* pos, long type)
{
	EclairagePublic* light = (EclairagePublic*)LH3DMem::AllocClear(sizeof(EclairagePublic));
	light->Pos.Set(pos);
	light->Pos.x -= ECLAIRAGE_PUBLIC_OFFSET;
	light->Pos.z -= ECLAIRAGE_PUBLIC_OFFSET;
	light->Pos.y = LH3DIsland::GetAltitude(light->Pos);
	light->Next = g_first;
	g_first = light;
	light->Sprites = LH3DSprite::Create(ECLAIRAGE_PUBLIC_SPRITES, true);
	light->Time = Random(0.0f, ECLAIRAGE_PUBLIC_PERIOD);
	light->OffsetZ = 0.0f;
	light->OffsetX = 0.0f;
	light->Type = type;
	for (int i = 0; i < ECLAIRAGE_PUBLIC_SPRITES; i++)
	{
		LH3DSprite* sprite = &light->Sprites[i];
		sprite->pos = *pos;
		if (type == ECLAIRAGE_PUBLIC_TYPE_LOW)
		{
			sprite->pos.y += ECLAIRAGE_PUBLIC_LOW_HEIGHT;
		}
		else
		{
			sprite->pos.y += ECLAIRAGE_PUBLIC_HEIGHT;
		}
		if (i < ECLAIRAGE_PUBLIC_GLOW)
		{
			sprite->material = g_fire_mat;
			sprite->SetSize(Random(-ECLAIRAGE_PUBLIC_SIZE_VARIATION, ECLAIRAGE_PUBLIC_SIZE_VARIATION) +
			                ECLAIRAGE_PUBLIC_FLAME_SIZE);
			sprite->colour = ECLAIRAGE_PUBLIC_COLOUR;
			sprite->Frame = 0;
		}
		else
		{
			sprite->material = g_smoke_additif_mat;
			sprite->SetSize(ECLAIRAGE_PUBLIC_GLOW_SIZE);
			sprite->colour = ECLAIRAGE_PUBLIC_COLOUR;
			sprite->Frame = ECLAIRAGE_PUBLIC_GLOW_FRAME;
		}
		g_off[i] = (long)Random(0.0f, ECLAIRAGE_PUBLIC_FRAMES - 1);
	}
	return light;
}

void EclairagePublic::Release()
{
	if (g_first == this)
	{
		g_first = Next;
	}
	else
	{
		EclairagePublic* previous = g_first;
		EclairagePublic* light = previous->Next;
		while (light != this)
		{
			previous = light;
			light = light->Next;
		}
		previous->Next = Next;
	}
	LH3DMem::Free(this);
}

void EclairagePublic::DrawAllPre()
{
	if (g_first == NULL)
	{
		return;
	}
	EclairagePublic* light = g_first;
	g_alpha = LH3DSky::ComputeAlphaEclairagePublique() * 0.5f;
	static uint8_t* specular = NULL;
	if (specular == NULL)
	{
		specular = (uint8_t*)malloc(ECLAIRAGE_PUBLIC_SPECULAR_SIZE);
		LHLoadData(ECLAIRAGE_PUBLIC_SPECULAR_PATH, specular, ECLAIRAGE_PUBLIC_SPECULAR_SIZE, NULL);
	}
	for (; light != NULL; light = light->Next)
	{
		light->Time += LH3DTech::GetGameTimeInc();
		if (light->Time > ECLAIRAGE_PUBLIC_PERIOD)
		{
			light->Time = Wrap(light->Time, 0.0f, ECLAIRAGE_PUBLIC_PERIOD);
			light->OffsetX = Random(-ECLAIRAGE_PUBLIC_FLICKER, ECLAIRAGE_PUBLIC_FLICKER);
			light->OffsetZ = Random(-ECLAIRAGE_PUBLIC_FLICKER, ECLAIRAGE_PUBLIC_FLICKER);
			light->Sprites[ECLAIRAGE_PUBLIC_GLOW].SetSize(
				Random(-ECLAIRAGE_PUBLIC_SIZE_VARIATION, ECLAIRAGE_PUBLIC_SIZE_VARIATION) + ECLAIRAGE_PUBLIC_GLOW_SIZE);
		}
	}
}

void EclairagePublic::DrawAllFinal()
{
	if (g_first == NULL || g_alpha == 0.0f)
	{
		return;
	}
	static int time = 0;
	time += LH3DTech::g_game_time_inc;
	static int period = ECLAIRAGE_PUBLIC_FRAME_PERIOD;
	if (time > period)
	{
		time %= period;
	}
	int frame = time * (ECLAIRAGE_PUBLIC_FRAMES - 1) / period;
	for (EclairagePublic* light = g_first; light != NULL; light = light->Next)
	{
		for (int i = 0; i < ECLAIRAGE_PUBLIC_SPRITES; i++)
		{
			int         flame = ECLAIRAGE_PUBLIC_FRAMES - 1 - ((frame + g_off[i]) & (ECLAIRAGE_PUBLIC_FRAMES - 1));
			LH3DSprite* sprite = &light->Sprites[i];
			if (i < ECLAIRAGE_PUBLIC_GLOW)
			{
				sprite->colour = RGBA_SETALPHA(ECLAIRAGE_PUBLIC_COLOUR, (long)g_alpha);
				sprite->Frame = (flame + i * ECLAIRAGE_PUBLIC_FRAME_STEP) & (ECLAIRAGE_PUBLIC_FRAMES - 1);
			}
			else
			{
				sprite->colour = RGBA_SETALPHA(ECLAIRAGE_PUBLIC_COLOUR, (long)g_alpha);
			}
			sprite->AddDrawing();
		}
	}
}

void EclairagePublic::DrawAllPost()
{
	if (g_first == NULL)
	{
		return;
	}
	static uint8_t* diffuse = NULL;
	if (diffuse == NULL)
	{
		uint32_t size;
		LHFileLength(ECLAIRAGE_PUBLIC_DIFFUSE_PATH, &size);
		diffuse = (uint8_t*)LH3DMem::Alloc(size);
		LHLoadData(ECLAIRAGE_PUBLIC_DIFFUSE_PATH, diffuse, size, NULL);
		for (uint32_t i = 0; i < ECLAIRAGE_PUBLIC_LIGHT_SIZE * ECLAIRAGE_PUBLIC_LIGHT_SIZE; i++)
		{
			float darkness = diffuse[i] * ECLAIRAGE_PUBLIC_DARKNESS / 255.0f + 0.5f;
			if (darkness >= ECLAIRAGE_PUBLIC_DARKNESS)
			{
				darkness = ECLAIRAGE_PUBLIC_DARKNESS - 1.0f;
			}
			diffuse[i] = (uint8_t)darkness;
		}
	}
	for (EclairagePublic* light = g_first; light != NULL; light = light->Next)
	{
		float x = light->Pos.x + light->OffsetX;
		float z = light->Pos.z + light->OffsetZ;
		DrawLightLikeHand(x, z, diffuse, ECLAIRAGE_PUBLIC_LIGHT_SIZE,
		                  LH3DSky::ComputeAlphaEclairagePublique() * (1.0f / 255.0f));
	}
}

void EclairagePublic::ClearAll()
{
	for (EclairagePublic* light = g_first; light != NULL; light = light->Next)
	{
		ClearLightLikeHand(light->Pos.x, light->Pos.z, ECLAIRAGE_PUBLIC_LIGHT_SIZE);
	}
}

SmokyStuff* SmokyStuff::g_first = NULL;
float       SmokyStuff::g_dt = 1.0f;

SmokyStuff* SmokyStuff::Create(const LHPoint* pos, long type, float size, LH3DColor color)
{
	SmokyStuff* smoke = (SmokyStuff*)LH3DMem::AllocClear(sizeof(SmokyStuff));
	smoke->Sprites = LH3DSprite::Create(SMOKY_STUFF_PUFFS, true);
	smoke->Life = 1.0f;
	smoke->Type = type;
	smoke->Size = size;
	smoke->Color = color;
	for (int i = 0; i < SMOKY_STUFF_PUFFS; i++)
	{
		LH3DSprite* sprite = &smoke->Sprites[i];
		sprite->material = g_smoke_mat;
		sprite->Frame = SMOKY_STUFF_FRAME;
		sprite->pos.Set(Random(-size, size), Random(-size, size), Random(-size, size));
		sprite->angle = Random(0.0f, TWO_PI);
		smoke->Directions[i].Set(Random(-size, size), size, Random(-size, size));
		if (smoke->Type != 0)
		{
			SetLength(smoke->Directions[i], size * SMOKY_STUFF_BURST_SPEED);
		}
		else
		{
			SetLength(smoke->Directions[i], Random(SMOKY_STUFF_MIN_SPEED, 1.0f) * size);
		}
		sprite->pos += LHPoint(pos);
	}
	smoke->Next = g_first;
	g_first = smoke;
	return smoke;
}

void SmokyStuff::Release()
{
	SmokyStuff* previous = NULL;
	SmokyStuff* smoke = g_first;
	while (smoke != this)
	{
		previous = smoke;
		smoke = smoke->Next;
	}
	if (previous != NULL)
	{
		previous->Next = Next;
	}
	else
	{
		g_first = Next;
	}
	LH3DMem::Free(this);
}

void SmokyStuff::Process()
{
	if (Type != 0)
	{
		Life -= g_dt / SMOKY_STUFF_BURST_LIFE;
	}
	else
	{
		Life -= g_dt * (1.0f / SMOKY_STUFF_LIFE);
	}
	if (Life <= 0.0f)
	{
		return;
	}
	float alpha;
	if (Life < SMOKY_STUFF_FADE_LIFE)
	{
		alpha = (Life / SMOKY_STUFF_FADE_LIFE) * 255.0f;
	}
	else
	{
		alpha = 255.0f;
	}
	unsigned long colour;
	if (Type != 0)
	{
		colour = RGBA_SETALPHA(SMOKY_STUFF_BURST_COLOUR, (long)alpha);
	}
	else
	{
		colour = RGBA_SETALPHA(SMOKY_STUFF_COLOUR, (long)(Life * SMOKY_STUFF_ALPHA));
	}
	if (Color.GetColor() != SMOKY_STUFF_DEFAULT_COLOUR)
	{
		colour = RGBA_SETALPHA(Color.GetColor(), RGBA_GETALPHA(colour));
	}
	for (int i = 0; i < SMOKY_STUFF_PUFFS; i++)
	{
		LH3DSprite* sprite = &Sprites[i];
		sprite->colour = colour;
		sprite->angle = (Directions[i].x > Directions[i].z ? -1 : 1) * Life * SMOKY_STUFF_SPIN + Directions[i].x;
		sprite->SetSize(((1.0f - Life) * 2.0f + 1.0f) * Size * 0.5f);
		sprite->pos += Directions[i] * g_dt;
		sprite->Frame = (long)(Life * SMOKY_STUFF_FRAMES);
		sprite->AddDrawing();
	}
}

void SmokyStuff::ProcessAll()
{
	g_dt = LH3DTech::GetGameTimeInc() / 1000.0f;
	SmokyStuff* smoke;
	for (smoke = g_first; smoke != NULL; smoke = smoke->Next)
	{
		smoke->Process();
	}
	smoke = g_first;
	while (smoke != NULL)
	{
		SmokyStuff* dead = NULL;
		if (smoke->Life < 0.0f)
		{
			dead = smoke;
		}
		smoke = smoke->Next;
		if (dead != NULL)
		{
			dead->Release();
		}
	}
}

long          GlowVillager::g_count = 0;
LH3DSprite*   GlowVillager::g_sprite = NULL;
LH3DSprite*   GlowVillager::g_sp_type = NULL;
LH3DMaterial* GlowVillager::g_material = NULL;
long          GlowVillager::g_offset = 0;
LH3DObject*   GlowVillager::g_the_one = NULL;
int           GlowVillager::g_index = 0;
float         GlowVillager::g_scale = 1.0f;

void GlowVillager::AddGlow(LHPoint* pos, float size)
{
	if (g_sprite == NULL)
	{
		g_sprite = LH3DSprite::Create(GLOW_VILLAGER_MAX_GLOWS, true);
		for (int i = 0; i < GLOW_VILLAGER_MAX_GLOWS; i++)
		{
			g_sprite[i].Frame = g_offset;
			g_sprite[i].material = g_smoke_additif_mat;
			g_sprite[i].colour = GLOW_VILLAGER_COLOUR;
		}
		g_material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ,
		                                        Leash::GetTexture());
		g_material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
		g_sp_type = LH3DSprite::Create(1, true);
		g_sp_type->Frame = GLOW_VILLAGER_HALO_FRAME;
		g_sp_type->material = g_material;
		g_sp_type->colour = GLOW_VILLAGER_HALO_COLOUR;
	}
	if (g_count >= GLOW_VILLAGER_MAX_GLOWS)
	{
		return;
	}
	LH3DSprite* sprite = &g_sprite[g_count];
	sprite->pos = *pos;
	sprite->SetSize(g_scale * size);
	sprite->AddDrawing();
	if (g_the_one == LH3DObject::g_current_object_in_draw)
	{
		float   scale = GLOW_VILLAGER_HALO_SCALE / LH3DTech::g_info_transform.HalfRes.x;
		LHPoint direction(&LH3DTech::g_camera.pos);
		direction.Sub(LHPoint(pos));
		g_sp_type->Frame = g_index + GLOW_VILLAGER_HALO_FRAME;
		g_sp_type->pos = *pos;
		g_sp_type->pos.y += size * GLOW_VILLAGER_HALO_HEIGHT;
		g_sp_type->SetSize(scale * direction.GetNorme() * 0.5f);
		g_sp_type->AddDrawing();
	}
	g_count++;
}

void GlowVillager::SetNewFrame()
{
	static long period = GLOW_VILLAGER_FRAME_PERIOD;
	g_count = 0;
	static long time = 0;
	time += LH3DTech::g_game_time_inc;
	if (time > period)
	{
		time %= period;
	}
	g_offset = (long)(time * (GLOW_VILLAGER_FRAMES / period));
}

void LH3DTools::BuildPaginationFromRawFile(int argc, char** argv)
{
	uint8_t* alpha = (uint8_t*)LH3DMem::AllocClear(LH3D_TOOLS_PAGE_SIZE * LH3D_TOOLS_PAGE_SIZE);
	uint8_t* rgb = (uint8_t*)LH3DMem::AllocClear(LH3D_TOOLS_PAGE_SIZE * LH3D_TOOLS_PAGE_SIZE * 3);
	uint8_t* tile = (uint8_t*)LH3DMem::AllocClear(LH3D_TOOLS_TILE_SIZE * LH3D_TOOLS_TILE_SIZE * 4);
	char*    name = argv[1];
	uint32_t size;
	char     base[LH3D_TOOLS_TEXT_SIZE];
	char     file[LH3D_TOOLS_TEXT_SIZE];
	LHFileLength(name, &size);
	if (size != LH3D_TOOLS_TILE_SIZE * LH3D_TOOLS_TILE_SIZE * 4)
	{
		return;
	}
	int length = strlen(name) - LH3D_TOOLS_RAW_EXTENSION_LENGTH;
	int i = 0;
	while (true)
	{
		int      index = ((i / LH3D_TOOLS_PAGE_TILES) & (LH3D_TOOLS_PAGE_TILES - 1)) * LH3D_TOOLS_PAGE_SIZE +
		                 (i & (LH3D_TOOLS_PAGE_TILES - 1));
		uint8_t* pageAlpha = alpha + index * LH3D_TOOLS_TILE_SIZE;
		uint8_t* pageRgb = rgb + index * LH3D_TOOLS_TILE_SIZE * 3;
		strcpy(base, name);
		base[length] = '\0';
		sprintf(file, "%s%d.raw", base, i);
		LHFileLength(file, &size);
		if (size == 0)
		{
			break;
		}
		LHLoadData(file, tile, LH3D_TOOLS_TILE_SIZE * LH3D_TOOLS_TILE_SIZE * 4, NULL);
		uint8_t* pixel = tile;
		for (int y = 0; y < LH3D_TOOLS_TILE_SIZE; y++)
		{
			for (int x = 0; x < LH3D_TOOLS_TILE_SIZE; x++)
			{
				*pageAlpha++ = pixel[3];
				pageRgb[0] = pixel[0];
				pageRgb[1] = pixel[1];
				pageRgb[2] = pixel[2];
				pageRgb += 3;
				pixel += 4;
			}
			pageAlpha += LH3D_TOOLS_PAGE_SIZE - LH3D_TOOLS_TILE_SIZE;
			pageRgb += (LH3D_TOOLS_PAGE_SIZE - LH3D_TOOLS_TILE_SIZE) * 3;
		}
		i++;
	}
	strcpy(base, name);
	base[length] = '\0';
	sprintf(file, "%sa.raw", base);
	LHSaveData(file, alpha, LH3D_TOOLS_PAGE_SIZE * LH3D_TOOLS_PAGE_SIZE, NULL);
	base[length] = '\0';
	sprintf(file, "%s.raw", base);
	LHSaveData(file, rgb, LH3D_TOOLS_PAGE_SIZE * LH3D_TOOLS_PAGE_SIZE * 3, NULL);
	LH3DMem::Free(tile);
	LH3DMem::Free(alpha);
	LH3DMem::Free(rgb);
}

LHPoint              FishRush::g_emergency(0.0f, 0.0f, 0.0f);
bool32_t             FishRush::g_b_er_valid = false;
FishRush*            FishRush::g_first = NULL;
FishRush::Challenge* FishRush::g_challenge = NULL;

Fish::~Fish()
{
	if (Sprite != NULL)
	{
		Sprite->Release();
	}
	Sprite = NULL;
}

bool32_t Fish::Draw(LHPoint* target)
{
	bool32_t inChallenge = ComputePos(target);
	Sprite->Draw();
	return inChallenge;
}

Fish::Fish(LHPoint* pos)
{
	Sprite = LH3DSprite::Create(1, true);
	Sprite->SetSize(Random(FISH_MIN_SIZE, FISH_MAX_SIZE));
	long frame = (long)Random(0.0f, FISH_SPRITE_FRAMES);
	Sprite->Frame = frame;
	Sprite->pos.SetNull();
	Sprite->material = g_mat_misc0;
	Sprite->angle = Random(0.0f, PI_F);
	Sprite->Horizontal = true;
	Frame = Random(0.0f, FISH_FRAMES);
	Pos.Set(Random(-FISH_SPREAD, FISH_SPREAD), Random(-FISH_DEPTH, 0.0f), Random(-FISH_SPREAD, FISH_SPREAD));
	Pos += LHPoint(pos);
	Sprite->pos = Pos;
	Angle = Random(-PI_F, PI_F);
	Speed = Random(FISH_MIN_SPEED, FISH_MAX_SPEED);
	TurnSpeed = (Random(-FISH_TURN_VARIATION, FISH_TURN_VARIATION) + 1.0f) * Speed * FISH_TURN_SPEED;
	Fear = 0.0f;
}

bool32_t Fish::ComputePos(LHPoint* target)
{
	float scale = 1.0f;
	float dt = LH3DTech::GetGameTimeInc() / 1000.0f;
	if (Fear != 0.0f)
	{
		Fear -= dt;
		if (Fear < 0.0f)
		{
			Fear = 0.0f;
		}
		scale = FISH_FEAR_SPEED;
		if (Fear < 1.0f)
		{
			scale = LH3D_BLEND(1.0f, FISH_FEAR_SPEED, 1.0f - (1.0f - Fear));
		}
	}
	dt = min(dt, FISH_MAX_STEP);
	Frame += dt * Speed * FISH_ANIMATION_SPEED;
	Sprite->Frame = ((long)Frame & FISH_FRAME_MASK) + FISH_FIRST_FRAME;
	float value = Frame;
	Frame = value - (long)(value * (1.0f / FISH_FRAMES)) * FISH_FRAMES;
	Pos += LHPoint((float)cos(Angle) * Speed * dt * scale, 0.0f, (float)sin(Angle) * Speed * dt * scale);
	LHPoint direction(cos(Angle), 0.0f, sin(Angle));
	LHPoint cross = direction ^ (LHPoint(target) - Pos);
	Angle += (cross.y < 0.0f ? 1.0f : -1.0f) * TurnSpeed * dt;
	WrapRef(Angle, 0.0f, TWO_PI);
	if (Angle > PI_F)
	{
		Angle -= TWO_PI;
	}
	Sprite->SetRotation(Angle);
	Sprite->pos = Pos;
	if (FishRush::g_challenge != NULL &&
	    Pos.GetDistance2DSq(FishRush::g_challenge->Pos) < FishRush::g_challenge->Radius * FishRush::g_challenge->Radius)
	{
		return true;
	}
	return false;
}

FishRush* FishRush::CollideWithFish(LHPoint* pos)
{
	for (FishRush* rush = g_first; rush != NULL; rush = rush->Next)
	{
		if (rush->Goal == NULL)
		{
			long count = (long)(rush->Density * FISH_RUSH_MAX_FISH);
			for (long i = 0; i < count; i++)
			{
				if (rush->Fishes[i]->Sprite->pos.GetDistance2DSq(*pos) <
				    FISH_RUSH_COLLIDE_RADIUS * FISH_RUSH_COLLIDE_RADIUS)
				{
					return rush;
				}
			}
		}
	}
	return NULL;
}

void FishRush::DrawPreAll()
{
	FishRush* rush;
	for (rush = g_first; rush != NULL; rush = rush->Next)
	{
		if (rush->Goal != NULL)
		{
			rush->Goal->Count = 0;
		}
	}
	for (rush = g_first; rush != NULL; rush = rush->Next)
	{
		long       count = rush->Draw();
		Challenge* goal = rush->Goal;
		if (goal == NULL)
		{
			continue;
		}
		goal->Net->PreDraw();
		goal->Count += count;
		if (goal->Count < goal->Target || goal->Done)
		{
			continue;
		}
		goal->Time += LH3DTech::g_game_time_inc;
		if (goal->Time < goal->Duration)
		{
			continue;
		}
		goal->Done = true;
		goal->Net->Caught = true;
		for (FishRush* other = g_first; other != NULL; other = other->Next)
		{
			if (other->Goal == NULL || other->Goal != goal)
			{
				continue;
			}
			for (long i = 0; i < FISH_RUSH_MAX_FISH; i++)
			{
				LHPoint* splash = &other->Fishes[i]->Pos;
				for (uint32_t j = 0; j < GWATER_MAX_CIRCLES; j++)
				{
					if (!GWater::g_circle[j].IsValid())
					{
						GWater::g_circle[j].SetValid(true);
						GWater::g_circle[j].Pos.Set(*splash);
						GWater::g_circle[j].Growth = FISH_RUSH_SPLASH_GROWTH;
						GWater::g_circle[j].Age = 0;
						GWater::g_circle[j].Size = 1.0f;
						GWater::g_circle[j].Aspect = 1.0f;
						GWater::g_circle[j].Frame = FISH_RUSH_SPLASH_FRAME;
						GWater::g_circle[j].Angle = 0.0f;
						GWater::g_circle[j].Colour = FISH_RUSH_SPLASH_COLOUR;
						GWater::g_circle[j].AgeSpeed = 1.0f;
						GWater::g_count_activated_circle++;
						break;
					}
				}
			}
		}
	}
	for (rush = g_first; rush != NULL; rush = rush->Next)
	{
		if (rush->Goal != NULL && rush->Goal->Count < rush->Goal->Target)
		{
			rush->Goal->Time = 0;
		}
	}
	g_b_er_valid = false;
}

void FishRush::DrawPostAll()
{
	for (FishRush* rush = g_first; rush != NULL; rush = rush->Next)
	{
		if (rush->Goal != NULL)
		{
			rush->Goal->Net->Draw();
		}
	}
}

void FishRush::Challenge::Draw()
{
	if (LastFrame != LH3DRender::g_frame)
	{
		LastFrame = LH3DRender::g_frame;
	}
}

long FishRush::Draw()
{
	g_challenge = Goal;
	if (Goal != NULL)
	{
		Goal->Draw();
		if (Goal->Done)
		{
			return 0;
		}
	}
	float distance = LH3DTech::g_camera.pos.GetDistanceSq(Center);
	if (distance > FISH_RUSH_DRAW_DIST * FISH_RUSH_DRAW_DIST)
	{
		return 0;
	}
	LH3DColor colour(LH3D_COLOR_OPAQUE, LH3D_COLOR_OPAQUE, LH3D_COLOR_OPAQUE, LH3D_COLOR_OPAQUE);
	if (distance > FISH_RUSH_FADE_DIST * FISH_RUSH_FADE_DIST)
	{
		colour.a = (uint8_t)((1.0f - (distance - FISH_RUSH_FADE_DIST * FISH_RUSH_FADE_DIST) /
		                                 (FISH_RUSH_FADE_RANGE * FISH_RUSH_FADE_RANGE)) *
		                     255.0f);
	}
	TargetTime -= LH3DTech::GetGameTimeInc() / 1000.0f;
	if (TargetTime < 0.0f)
	{
		LHPoint target(Random(-Radius, Radius), 0.0f, Random(-Radius, Radius));
		target += Center;
		TargetTime = LH3DMath::GetDistance(&Target, &target) * FISH_RUSH_TARGET_TIME;
		Target = target;
	}
	if (g_b_er_valid)
	{
		LHMatrix rotation;
		rotation.SetRotationY(Random(0.0f, TWO_PI));
		Target.Set(FISH_RUSH_ESCAPE_DIST, 0.0f, 0.0f);
		rotation.TransformPoint(Target);
		Target += Center;
	}
	long count = 0;
	long fishes = (long)(Density * FISH_RUSH_MAX_FISH);
	for (long i = 0; i < fishes; i++)
	{
		if (g_b_er_valid && g_emergency.GetDistanceSq(Fishes[i]->Pos) < FISH_RUSH_FEAR_RADIUS * FISH_RUSH_FEAR_RADIUS)
		{
			Fishes[i]->Fear = FISH_RUSH_FEAR_TIME;
			TargetTime = FISH_RUSH_FEAR_TIME;
			Fishes[i]->Angle = atan2(Fishes[i]->Pos.z - g_emergency.z, Fishes[i]->Pos.x - g_emergency.x);
		}
		Fishes[i]->Sprite->colour = colour.GetColor();
		count += Fishes[i]->Draw(&Target);
	}
	return count;
}

TemporaryShadow* TemporaryShadow::g_first = NULL;
RootsPile*       RootsPile::g_first = NULL;

TemporaryShadow::TemporaryShadow(LH3DObject* object)
{
	Next = g_first;
	g_first = this;
	Shadow = LH3DDynamicShadow::Create();
	Object = object;
	HumanShadowed = Object->IsHumanShadowed();
	Object->SetHumanShadowed(false);
	Disappear = Object->IsDisappear();
	Object->SetDisappear(false);
	Active = true;
}

TemporaryShadow::~TemporaryShadow()
{
	Shadow->Release();
	Shadow = NULL;
	Object->SetHumanShadowed(HumanShadowed);
	Object->SetDisappear(Disappear);
	Object = NULL;
}

void TemporaryShadow::DeleteThisOne(LH3DObject* object)
{
	if (g_first->Object == object)
	{
		TemporaryShadow* shadow = g_first;
		g_first = g_first->Next;
		delete shadow;
		return;
	}
	TemporaryShadow* previous = g_first;
	TemporaryShadow* shadow = g_first->Next;
	while (shadow != NULL && shadow->Object != object)
	{
		previous = shadow;
		shadow = shadow->Next;
	}
	if (shadow != NULL)
	{
		previous->Next = shadow->Next;
		delete shadow;
	}
}

void TemporaryShadow::UpdateAll()
{
	for (TemporaryShadow* shadow = g_first; shadow != NULL; shadow = shadow->Next)
	{
		if (shadow->Active)
		{
			shadow->Shadow->Prepare(shadow->Object);
		}
	}
}

RootsPile::RootsPile(const LHPoint& pos, float angle, float scale, long mesh)
{
	Init(pos, angle, scale, mesh);
}

RootsPile::RootsPile(LH3DObject* object, long mesh)
{
	LHPoint& size = object->GetMesh()->GetBoundingBox().size;
	Init(object->matrix.GetPos(), object->y_angle, (size.z + size.x) * object->scale * ROOTS_PILE_SIZE, mesh);
}

void RootsPile::Init(const LHPoint& pos, float angle, float scale, long mesh)
{
	static LH3DMesh* pileMesh = NULL;
	if (pileMesh == NULL)
	{
		pileMesh = LH3DMesh::GetPackedMesh(mesh);
	}
	Next = g_first;
	g_first = this;
	Object = LH3DObject::Create(LH3DObject::MORPHABLE);
	Object->SetMesh(pileMesh, NULL, NULL);
	Object->SetPosition(pos, angle, scale);
	Object->SetDynamicLighting(true);
	Object->UpdateMelting();
	Object->SetNeedSorting(false);
	TimeLeft = ROOTS_PILE_LIFE;
	SmokyStuff::Create(&pos, SMOKY_STUFF_TYPE_BURST, 1.0f, SMOKY_STUFF_DEFAULT_COLOUR);
}

RootsPile::~RootsPile()
{
	if (this == g_first)
	{
		g_first = Next;
	}
	else
	{
		RootsPile* previous = g_first;
		RootsPile* pile = previous->Next;
		while (pile != this)
		{
			previous = pile;
			pile = pile->Next;
		}
		previous->Next = Next;
	}
	Object->Release();
	Object = NULL;
}

void RootsPile::DrawAll()
{
	RootsPile* pile = g_first;
	while (pile != NULL)
	{
		LH3DObject* object = pile->Object;
		LH3DIsland::GetColorAndSpecular(&object->matrix.GetPos(), &object->color, &object->specular);
		long time = pile->TimeLeft;
		if (time <= ROOTS_PILE_FADE_TIME)
		{
			object->color = RGBA_SETALPHA(object->color, (long)(time * 255.0f / ROOTS_PILE_FADE_TIME));
			object->SetDrawWithGlobalAlpha(true);
		}
		pile->TimeLeft -= LH3DTech::g_game_time_inc;
		if (pile->TimeLeft <= 0)
		{
			RootsPile* dead = pile;
			pile = pile->Next;
			delete dead;
		}
		else
		{
			object->AddDrawing();
			pile = pile->Next;
		}
	}
}

SuperVillager* SuperVillager::g_first = NULL;

void SuperVillager::AddDrawing()
{
	LH3DObject::g_current_object_in_draw = Object;
	if (Object->GetMesh()->GetBoundingBox().CheckRegionOnScreen(Object))
	{
		Object->SetLod(SUPER_VILLAGER_LOD);
		Draw();
	}
}

void SuperVillager::ReleaseThisOne(LH3DAnimatedObject* object)
{
	SuperVillager* villager = g_first;
	while (villager != NULL && villager->Object != object)
	{
		villager = villager->Next;
	}
	if (villager != NULL)
	{
		villager->Release();
	}
}

LHPoint  g_caca_intro(0.0f, 0.0f, 0.0f);
bool32_t g_b_caca_intro = false;

void SuperVillager::DrawAll()
{
	LHPoint        sun = LH3DTech::GetSun();
	SuperVillager* villager = g_first;
	LH3DTech::SetSun(DEFAULT_SUN);
	while (villager != NULL)
	{
		if (villager->AtIntro && g_b_caca_intro)
		{
			villager->Object->SetPosition(g_caca_intro, villager->Object->y_angle, villager->Object->scale);
		}
		villager->AddDrawing();
		villager = villager->Next;
	}
	LH3DTech::SetSun(sun);
}

void SuperVillager::Draw()
{
	if (Object == NULL)
	{
		return;
	}
	LH3DMesh::g_current_lod = SUPER_VILLAGER_LOD;
	LH3DIsland::GetColorAndSpecular(&Object->matrix.GetPos(), &Object->color, &Object->specular);
	float angle = Object->y_angle;
	float heading = angle_correct(angle);
	Heading = angle_correct(Heading);
	LHMatrix matrix = Object->matrix;
	if (Heading == heading || NoSmoothing)
	{
		Heading = heading;
	}
	else
	{
		float diff = angle_correct(heading - Heading);
		float step = SUPER_VILLAGER_TURN_SPEED * (LH3DTech::GetGameTimeInc() / 1000.0f);
		if (step >= fabs(diff))
		{
			Heading = heading;
		}
		else
		{
			if (diff > 0.0f)
			{
				Heading += step;
			}
			else
			{
				Heading -= step;
			}
			matrix.RotateY(Heading - heading);
		}
	}
	static long blend_time = SUPER_VILLAGER_BLEND_TIME;
	if (LastAnim == NULL)
	{
		LastAnim = Object->CurrentAnim;
	}
	else if (LastAnim != Object->CurrentAnim)
	{
		Object->LastAnim = LastAnim;
		Object->LastCycleTime = LastCycleTime;
		Object->BlendTime = blend_time;
		LastAnim = Object->CurrentAnim;
		Object->BlendFactor = 1.0f;
	}
	else if ((Object->BlendTime -= LH3DTech::g_game_time_inc) < 0)
	{
		Object->BlendTime = 0;
	}
	else
	{
		Object->BlendFactor = (float)Object->BlendTime / blend_time;
	}
	LH3DObject::g_current_object_in_draw = Object;
	LH3DSubMesh::g_current_status = 0;
	LH3DPrimitive::g_current_index_primitive = 0;
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	bool32_t swimming = strcmp(Object->GetCurrentAnim()->name, SUPER_VILLAGER_SWIM_ANIM) == 0;
	LHMatrix clipping;
	if (Object->BlendTime != 0 && !NoSmoothing)
	{
		LHMATRIX_MULTIPLY(clipping, matrix, LH3DTech::g_world_to_clipping);
		Object->CurrentAnim->CombineTransform(LH3DMesh::g_current_list_matrix, Object->CurrentCycleTime,
		                                      1.0f - Object->BlendFactor, true);
		Object->LastAnim->CombineTransform(LH3DMesh::g_current_list_matrix, Object->LastCycleTime, Object->BlendFactor,
		                                   false);
		LH3DAnim::FinishTransform(LH3DMesh::g_current_list_matrix, Object->mesh, clipping);
	}
	else if (swimming)
	{
		Object->CurrentAnim->SetTransform(LH3DMesh::g_current_list_matrix, Object->mesh, Object->CurrentCycleTime,
		                                  Object->matrix);
	}
	else
	{
		LHMATRIX_MULTIPLY(clipping, matrix, LH3DTech::g_world_to_clipping);
		if (Object->CurrentAnim != NULL)
		{
			Object->CurrentAnim->SetTransform(LH3DMesh::g_current_list_matrix, Object->mesh, Object->CurrentCycleTime,
			                                  clipping);
		}
		else
		{
			LH3DAnim::SetTransform(LH3DMesh::g_current_list_matrix, Object->mesh, clipping);
		}
	}
	unsigned long specular = Object->specular;
	LH3DMesh::g_color = Object->color;
	LH3DMesh::g_specular = specular;
	LH3DTech::g_world_to_local.SetInverse(matrix);
	if (swimming)
	{
		LH3DMesh* mesh = Object->Meshes[0];
		LH3DMesh::g_current_matrix = LH3DMesh::g_current_list_matrix;
		for (int i = 0; i < mesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = mesh->submeshes[i];
			if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				LH3DSubMesh::g_current_sub_mesh = submesh;
				for (int j = 0; j < submesh->NumPrimitives; j++)
				{
					submesh->primitives_[j]->DrawCutByPlane();
				}
				LH3DMesh::g_current_matrix += submesh->NumBones;
			}
		}
	}
	else
	{
		LH3DMesh* mesh = Object->Meshes[0];
		LH3DMesh::g_current_matrix = LH3DMesh::g_current_list_matrix;
		for (int i = 0; i < mesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = mesh->submeshes[i];
			if (LH3DMesh::g_window_state && submesh->IsWindow())
			{
				unsigned long savedColor = LH3DMesh::g_color;
				LH3DMesh::g_color = LH3DMesh::g_window_col;
				if (submesh->GetStatus() <= LH3DSubMesh::g_current_status)
				{
					LH3DSubMesh::g_current_sub_mesh = submesh;
					for (int j = 0; j < submesh->NumPrimitives; j++)
					{
						submesh->primitives_[j]->Draw();
					}
				}
				LH3DMesh::g_color = savedColor;
			}
			else if (submesh->GetLod() & LH3DMesh::g_current_lod)
			{
				if (submesh->GetStatus() <= LH3DSubMesh::g_current_status)
				{
					LH3DSubMesh::g_current_sub_mesh = submesh;
					for (int j = 0; j < submesh->NumPrimitives; j++)
					{
						submesh->primitives_[j]->DrawLit();
					}
				}
				LH3DMesh::g_current_matrix += submesh->NumBones;
			}
		}
	}
	LH3DRender::g_b_need_tilling = false;
	LH3DRender::g_b_need_anim_uv = false;
	if (Eyes != NULL)
	{
		Eyes->Draw();
	}
	LastCycleTime = Object->CurrentCycleTime;
}

SuperVillager::SuperVillager()
{
	LastAnim = NULL;
	Next = g_first;
	g_first = this;
	Heading = 0.0f;
	LastCycleTime = 0;
	Flags = 0;
	SavedMeshes[2] = NULL;
	SavedMeshes[1] = NULL;
	SavedMeshes[0] = NULL;
	Mesh = NULL;
}

SuperVillager::~SuperVillager()
{
	TemporaryShadow::DeleteThisOne(Object);
	Object->SetDontDraw(false);
	Object->BlendFactor = 0.0f;
	Object->BlendTime = 0;
	Object->LastCycleTime = 0;
	Object->LastAnim = NULL;
	Object = NULL;
	if (g_first == this)
	{
		g_first = Next;
	}
	else
	{
		SuperVillager* previous = g_first;
		SuperVillager* villager = previous->Next;
		while (villager != this)
		{
			previous = villager;
			villager = villager->Next;
		}
		previous->Next = Next;
	}
	if (Eyes != NULL)
	{
		delete Eyes;
		Eyes = NULL;
	}
	LastAnim = NULL;
	Next = NULL;
	Heading = 0.0f;
	LastCycleTime = 0;
	Flags = 0;
	SavedMeshes[2] = NULL;
	SavedMeshes[1] = NULL;
	SavedMeshes[0] = NULL;
	Mesh = NULL;
}

SuperVillager* SuperVillager::Create(LH3DAnimatedObject* object, long eyes, LH3DMesh* mesh)
{
	for (SuperVillager* villager = g_first; villager != NULL; villager = villager->Next)
	{
		if (villager->Object == object)
		{
			return NULL;
		}
	}
	SuperVillager* created = new SuperVillager;
	created->Object = object;
	created->Shadow = new TemporaryShadow(object);
	created->Shadow->Shadow->UseDefaultSun = true;
	created->Heading = object->y_angle;
	created->UserData = NULL;
	created->SavedMeshes[0] = object->Meshes[0];
	created->SavedMeshes[1] = object->Meshes[1];
	created->SavedMeshes[2] = object->Meshes[2];
	if (mesh != NULL)
	{
		object->SetMesh(mesh, NULL, NULL);
	}
	created->Mesh = mesh;
	ExtraBone* bones = (ExtraBone*)object->Meshes[0]->GetEBoneData();
	if (bones != NULL && eyes != -1)
	{
		created->Eyes = new LH3DEye(bones, object, eyes);
	}
	else
	{
		created->Eyes = NULL;
	}
	return created;
}

void SuperVillager::Release()
{
	Object->Meshes[0] = SavedMeshes[0];
	Object->Meshes[1] = SavedMeshes[1];
	Object->Meshes[2] = SavedMeshes[2];
	if (Mesh != NULL)
	{
		Mesh->Release();
	}
	Mesh = NULL;
	delete this;
}

FallingRoot* FallingRoot::g_first = NULL;

void FallingRoot::Update()
{
	Time += LH3DTech::GetGameTimeInc() / 1000.0f;
	if (Object->matrix._42 > GroundHeight)
	{
		Object->matrix._42 = StartHeight - Time * Time * FALLING_ROOT_GRAVITY;
		return;
	}
	Object->matrix._42 = GroundHeight;
	if (Time > FALLING_ROOT_LIFE)
	{
		delete this;
		return;
	}
	if (Time > FALLING_ROOT_FADE_START)
	{
		((LH3DColor&)Object->color).a =
			(uint8_t)((1.0f - (Time - FALLING_ROOT_FADE_START) / FALLING_ROOT_FADE_TIME) * 255.0f);
		Object->SetDrawWithGlobalAlpha(true);
	}
}

FallingRoot::FallingRoot(LH3DObject* object, int mesh)
{
	Next = g_first;
	g_first = this;
	Object = LH3DObject::Create(LH3DObject::STATIC);
	Object->SetMesh(LH3DMesh::GetPackedMesh(mesh), NULL, NULL);
	LH3DBoundingBox& box = object->GetMesh()->BoundingBox;
	Object->SetPosition(object->matrix.GetPos(), object->y_angle, object->scale * box.size.x * FALLING_ROOT_SIZE);
	Object->matrix = object->matrix;
	Object->matrix.ScaleMatrixOnly(box.size.x * FALLING_ROOT_SIZE);
	Reset();
}

FallingRoot::~FallingRoot()
{
	if (g_first == this)
	{
		g_first = Next;
	}
	else
	{
		FallingRoot* previous = g_first;
		FallingRoot* root = previous->Next;
		while (root != this)
		{
			previous = root;
			root = root->Next;
		}
		previous->Next = Next;
	}
	Object->Release();
	Object = NULL;
}

void FallingRoot::Reset()
{
	StartHeight = Object->matrix._42;
	LH3DBoundingBox& box = Object->GetMesh()->BoundingBox;
	float            width = max(box.size.x, box.size.z);
	LHPoint          pos = Object->matrix.GetPos();
	float            scale = Object->scale;
	GroundHeight = LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z)) + width * scale / 10.0f;
	Time = 0.0f;
}

void FallingRoot::Draw()
{
	if (Object->IsDrawWithGlobalAlpha())
	{
		LH3DRender::g_b_active_g_alpha_ref = true;
		LH3DRender::g_alpha_ref = FALLING_ROOT_ALPHA_REFERENCE;
		Object->AddDrawing();
		LH3DRender::g_b_active_g_alpha_ref = false;
	}
	else
	{
		Object->AddDrawing();
	}
	LH3DIsland::GetColorAndSpecular(&Object->matrix.GetPos(), &Object->color, &Object->specular);
	Update();
}

InfluenceCircle* InfluenceCircle::g_first = NULL;
LH3DMaterial*    InfluenceCircle::g_material = NULL;
bool32_t         InfluenceCircle::g_b_valid[INFLUENCE_CIRCLE_PLAYER_COUNT] = {false};
LHPoint          InfluenceCircle::g_pos_inside_citadel(0.0f, 0.0f, 0.0f);
float            InfluenceCircle::g_yangle_inside_citadel = 0.0f;
float            InfluenceCircle::g_scale_inside_citadel = 1.0f;
LH3DColor        InfluenceCircle::g_players_color[INFLUENCE_CIRCLE_PLAYER_COUNT] = {
	LH3DColor(0xff, 0x46, 0x46, 0x00), //
	LH3DColor(0x47, 0xff, 0x54, 0x00), //
	LH3DColor(0xe3, 0x47, 0xff, 0x00), //
	LH3DColor(0x47, 0xf9, 0xff, 0x00), //
	LH3DColor(0xff, 0xfd, 0x47, 0x00), //
	LH3DColor(0x46, 0x64, 0xff, 0x00), //
	LH3DColor(0xff, 0xa2, 0x47, 0x00), //
	LH3DColor(0xff, 0xff, 0xff, 0x00), //
};

InfluenceCircle::InfluenceCircle(long player, const LHPoint& pos, float radius)
{
	player &= INFLUENCE_CIRCLE_PLAYER_COUNT - 1;
	Next = g_first;
	g_first = this;
	Pos = pos;
	Radius = radius;
	Player = player;
	Dead = false;
	Alpha = 0xffffffff;
	float circumference = TWO_PI * Radius;
	Segments = (long)(circumference / INFLUENCE_CIRCLE_SEGMENT_LENGTH);
	Segments = max(INFLUENCE_CIRCLE_MIN_SEGMENTS, Segments);
	Segments = min(Segments, INFLUENCE_CIRCLE_MAX_SEGMENTS);
	long vertices = (Segments + 1) * INFLUENCE_CIRCLE_ROW_VERTICES;
	Report3D__FPCce("InfluenceCircle: seg=%d vert=%d\n", Segments, vertices);
	Points = (LHPoint*)LH3DMem::AllocClear(vertices * sizeof(LHPoint));
	UVs = (float*)LH3DMem::AllocClear(vertices * 2 * sizeof(float));
	Colours = (unsigned long*)LH3DMem::AllocClear(vertices * sizeof(unsigned long));
	Indices = (long*)LH3DMem::AllocClear(Segments * INFLUENCE_CIRCLE_SEGMENT_INDICES * sizeof(long));
	Hidden = (bool32_t*)LH3DMem::AllocClear(vertices * sizeof(bool32_t));
	LHPoint*       point = Points;
	unsigned long* colour = Colours;
	long*          index = Indices;
	float*         uv = UVs;
	float          u = 0.0f;
	float          uStep = (float)(1 - (long)(circumference / INFLUENCE_CIRCLE_U_LENGTH)) / Segments;
	float          v = 0.0f;
	float          altitude = LH3DIsland::GetAltitude(LH3DMapCoords(Pos.x, Pos.z));
	float          middle = altitude + INFLUENCE_CIRCLE_MIDDLE_HEIGHT;
	float          top = altitude + INFLUENCE_CIRCLE_TOP_HEIGHT;
	float          vStep = (float)min(INFLUENCE_CIRCLE_MAX_V, (long)(radius / INFLUENCE_CIRCLE_V_RADIUS)) / Segments;
	long           vertex = 0;
	for (long i = 0; i < Segments; i++)
	{
		float angle = i * TWO_PI / Segments;
		float x = (float)cos(angle) * Radius + pos.x;
		float z = (float)sin(angle) * Radius + pos.z;
		float height = LH3DIsland::GetAltitude(LH3DMapCoords(x, z)) - altitude;
		*point++ = LHPoint(x, height + altitude, z);
		*point++ = LHPoint(x, height + middle, z);
		*point++ = LHPoint(x, height + top, z);
		*colour++ = g_players_color[player].GetColor();
		*colour++ = g_players_color[player].GetColor();
		*colour++ = g_players_color[player].GetColor();
		*uv++ = u;
		*uv++ = v;
		*uv++ = u;
		*uv++ = v + INFLUENCE_CIRCLE_MIDDLE_V;
		*uv++ = u;
		*uv++ = v + INFLUENCE_CIRCLE_TOP_V;
		u += uStep;
		v += vStep;
		*index++ = vertex;
		*index++ = vertex + 3;
		*index++ = vertex + 4;
		*index++ = vertex;
		*index++ = vertex + 4;
		*index++ = vertex + 1;
		*index++ = vertex + 1;
		*index++ = vertex + 4;
		*index++ = vertex + 5;
		*index++ = vertex + 1;
		*index++ = vertex + 5;
		*index++ = vertex + 2;
		vertex += INFLUENCE_CIRCLE_ROW_VERTICES;
	}
	float x = Radius + pos.x;
	float z = pos.z;
	float height = LH3DIsland::GetAltitude(LH3DMapCoords(x, z)) - altitude;
	*point++ = LHPoint(x, height + altitude, z);
	*point++ = LHPoint(x, height + middle, z);
	*point = LHPoint(x, height + top, z);
	*colour++ = g_players_color[player].GetColor();
	*colour++ = g_players_color[player].GetColor();
	*colour = g_players_color[player].GetColor();
	*uv++ = u;
	*uv++ = v;
	*uv++ = u;
	*uv++ = v + INFLUENCE_CIRCLE_MIDDLE_V;
	*uv++ = u;
	*uv = v + INFLUENCE_CIRCLE_TOP_V;
	for (InfluenceCircle* other = Next; other != NULL; other = other->Next)
	{
		DeleteContact(this, other);
	}
}

InfluenceCircle::~InfluenceCircle()
{
	if (Points != NULL)
	{
		LH3DMem::Free(Points);
	}
	Points = NULL;
	if (Colours != NULL)
	{
		LH3DMem::Free(Colours);
	}
	Colours = NULL;
	if (Indices != NULL)
	{
		LH3DMem::Free(Indices);
	}
	Indices = NULL;
	if (UVs != NULL)
	{
		LH3DMem::Free(UVs);
	}
	UVs = NULL;
	if (Hidden != NULL)
	{
		LH3DMem::Free(Hidden);
	}
	Hidden = NULL;
	if (this == g_first)
	{
		g_first = Next;
		return;
	}
	InfluenceCircle* previous = g_first;
	InfluenceCircle* circle = previous->Next;
	while (circle != this)
	{
		previous = circle;
		circle = circle->Next;
	}
	previous->Next = circle->Next;
}

void InfluenceCircle::Reset()
{
	InfluenceCircle* circle = g_first;
	while (circle != NULL)
	{
		InfluenceCircle* dead = circle;
		circle = circle->Next;
		delete dead;
	}
	g_first = NULL;
}

void InfluenceCircle::Draw(int mode)
{
	InfluenceCircle* circle = g_first;
	unsigned long    alpha = INFLUENCE_CIRCLE_HIGH_ALPHA;
	if (mode)
	{
		float height = LH3DTech::g_camera.pos.y;
		if (height <= INFLUENCE_CIRCLE_LOW_HEIGHT)
		{
			return;
		}
		if (height < INFLUENCE_CIRCLE_HIGH_HEIGHT)
		{
			alpha = (long)(((height - INFLUENCE_CIRCLE_LOW_HEIGHT) / INFLUENCE_CIRCLE_LOW_HEIGHT) *
			               INFLUENCE_CIRCLE_HIGH_ALPHA);
		}
	}
	else
	{
		alpha = INFLUENCE_CIRCLE_CITADEL_ALPHA;
	}
	if (g_material == NULL)
	{
		g_material =
			LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, g_burn_texture);
		g_material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
		g_material->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	}
	static long time = 0;
	time = (time + LH3DTech::GetGameTimeInc()) % INFLUENCE_CIRCLE_ANIM_PERIOD;
	alpha = RGBA_MAKE(0, 0, 0, alpha);
	LH3DRender::g_b_need_anim_uv = true;
	LH3DTech::g_current_matrix = NULL;
	LH3DRender::g_adu = time / INFLUENCE_CIRCLE_U_SPEED;
	LH3DRender::g_adv = -time / INFLUENCE_CIRCLE_V_SPEED;
	if (mode)
	{
		LH3DTech::g_local_to_clipping.Set(LH3DTech::g_world_to_clipping);
	}
	else
	{
		LH3DTech::g_local_to_clipping.SetScale(g_scale_inside_citadel);
		LH3DTech::g_local_to_clipping.PostRotateY(g_yangle_inside_citadel);
		LH3DTech::g_local_to_clipping.PostTranslation(g_pos_inside_citadel);
		LH3DTech::g_local_to_clipping.PostMultiply(LH3DTech::g_world_to_clipping);
	}
	for (; circle != NULL; circle = circle->Next)
	{
		if (circle->Alpha != alpha && g_b_valid[circle->Player])
		{
			circle->Alpha = alpha;
			for (long i = 0; i < circle->Segments + 1; i++)
			{
				if (!circle->Hidden[i])
				{
					circle->Colours[i * INFLUENCE_CIRCLE_ROW_VERTICES + 1] =
						RGBA_SETALPHA(circle->Colours[i * INFLUENCE_CIRCLE_ROW_VERTICES + 1], 0) | alpha;
				}
			}
		}
		LH3DTech::Draw3DWorldTriangle((circle->Segments + 1) * INFLUENCE_CIRCLE_ROW_VERTICES, circle->Points,
		                              (LH3DColor*)circle->Colours, circle->UVs, circle->Segments * 4, circle->Indices,
		                              g_material, true);
	}
	LH3DRender::g_b_need_anim_uv = false;
}

void InfluenceCircle::Add(long player, const LHPoint& position, float influence)
{
	new InfluenceCircle(player, position, influence);
	InfluenceCircle* circle = g_first;
	while (circle != NULL)
	{
		if (circle->Dead)
		{
			InfluenceCircle* dead = circle;
			circle = circle->Next;
			delete dead;
		}
		else
		{
			circle = circle->Next;
		}
	}
}

void InfluenceCircle::DeleteContact(InfluenceCircle* circle, InfluenceCircle* other)
{
	if (circle->Dead || other->Dead || circle->Player != other->Player)
	{
		return;
	}
	float distance = LH3DMath::GetDistance(&other->Pos, &circle->Pos);
	if (distance + circle->Radius < other->Radius)
	{
		circle->Dead = true;
		return;
	}
	if (distance + other->Radius < circle->Radius)
	{
		other->Dead = true;
		return;
	}
	circle->HideContact(other);
	other->HideContact(circle);
}

void InfluenceCircle::HideContact(InfluenceCircle* other)
{
	unsigned long* colour = Colours;
	bool32_t*      hidden = Hidden;
	for (long i = 0; i < Segments; i++)
	{
		float angle = i * TWO_PI / Segments;
		float x = (float)cos(angle) * Radius + Pos.x;
		float z = (float)sin(angle) * Radius + Pos.z;
		if (other->Contains(x, z))
		{
			*colour = RGBA_SETALPHA(*colour, 0);
			colour++;
			*colour = RGBA_SETALPHA(*colour, 0);
			colour++;
			*colour = RGBA_SETALPHA(*colour, 0);
			colour++;
			*hidden = true;
		}
		else
		{
			colour += 3;
		}
		hidden++;
	}
	float x = Radius + Pos.x;
	float z = Pos.z;
	if (other->Contains(x, z))
	{
		*colour++ = INFLUENCE_CIRCLE_HIDDEN_COLOUR;
		*colour++ = INFLUENCE_CIRCLE_HIDDEN_COLOUR;
		*colour = INFLUENCE_CIRCLE_HIDDEN_COLOUR;
		*hidden = true;
	}
}

bool32_t InfluenceCircle::Contains(float x, float z)
{
	if (LHPoint(x, 0.0f, z).GetDistance2DSq(Pos) < Radius * Radius)
	{
		return true;
	}
	return false;
}

TouchMyEdge* TouchMyEdge::g_first = NULL;
bool32_t     TouchMyEdge::g_player_inside[INFLUENCE_CIRCLE_PLAYER_COUNT] = {false};
bool32_t     TouchMyEdge::g_b_init = false;
LHPoint      TouchMyEdge::g_last_pos(0.0f, 0.0f, 0.0f);
bool32_t     TouchMyEdge::g_b_collide = false;

TouchMyEdge::TouchMyEdge(LHPoint* pos, LH3DColor colour, float angle)
{
	LHPoint position = *pos;
	Colour = colour;
	Life = TOUCH_MY_EDGE_LIFE;
	Next = g_first;
	g_first = this;
	Sprites = LH3DSprite::Create(TOUCH_MY_EDGE_RINGS, true);
	for (long i = 0; i < TOUCH_MY_EDGE_RINGS; i++)
	{
		FirstGrowth[i] = true;
		Sprites[i].pos = position;
		Sprites[i].material = g_smoke_mat;
		Sprites[i].Frame = TOUCH_MY_EDGE_RING_FRAME;
		Sprites[i].SetSize(i * TOUCH_MY_EDGE_RING_SPACING);
		Sprites[i].angle = Random(0.0f, TWO_PI);
	}
	Matrix._43 = 0.0f;
	Matrix._42 = 0.0f;
	Matrix._41 = 0.0f;
	Matrix._31 = 0.0f;
	Matrix._21 = 0.0f;
	Matrix._13 = 0.0f;
	Matrix._12 = 0.0f;
	Matrix._11 = 1.0f;
	Matrix.m[4] = Matrix.m[8] = cos(HALF_PI_F);
	Matrix.m[7] = sin(HALF_PI_F);
	Matrix.m[5] = -Matrix.m[7];
	Matrix.PostRotateY(angle);
	Matrix.PostTranslation(position);
}

TouchMyEdge::~TouchMyEdge()
{
	if (g_first == this)
	{
		g_first = Next;
	}
	else
	{
		TouchMyEdge* previous = g_first;
		TouchMyEdge* edge = previous->Next;
		while (edge != this)
		{
			previous = edge;
			edge = edge->Next;
		}
		previous->Next = Next;
	}
	if (Sprites != NULL)
	{
		Sprites->Release();
	}
	Sprites = NULL;
}

bool32_t TouchMyEdge::PreDraw()
{
	if ((Life -= LH3DTech::g_game_time_inc) < 0)
	{
		return true;
	}
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&TouchMyEdge::PostDraw,
	                                  LH3DTech::GetValueForZSorter(Pos), 0);
	return false;
}

void TouchMyEdge::PostDraw()
{
	float fade;
	if (Life < TOUCH_MY_EDGE_FADE_TIME)
	{
		fade = Life / 1000.0f;
	}
	else
	{
		fade = 1.0f;
	}
	float    growth = LH3DTech::GetGameTimeInc() / 1000.0f;
	LHMatrix matrix = Matrix;
	matrix.PostMultiply(LH3DTech::g_world_to_clipping);
	growth *= TOUCH_MY_EDGE_GROWTH;
	for (long i = 0; i < TOUCH_MY_EDGE_RINGS; i++)
	{
		LH3DSprite* sprite = &Sprites[i];
		float       size = sprite->Size + growth;
		if (size > TOUCH_MY_EDGE_MAX_SIZE)
		{
			FirstGrowth[i] = false;
			size -= (long)(size / TOUCH_MY_EDGE_MAX_SIZE) * TOUCH_MY_EDGE_MAX_SIZE;
		}
		Colour.a = (uint8_t)((1.0f - size / TOUCH_MY_EDGE_MAX_SIZE) * fade * 255.0f);
		Sprites[i].SetSize(size);
		Sprites[i].colour = Colour;
		Sprites[i].DrawSpecial1(&matrix);
	}
}

void TouchMyEdge::GetIntersect(InfluenceCircle* circle, LHPoint* intersect, LHPoint* inside, LHPoint* outside)
{
	if (inside->GetDistance2DSq(*outside) <= TOUCH_MY_EDGE_PRECISION)
	{
		*intersect = *inside;
		*intersect += LHPoint(outside);
		*intersect *= 0.5f;
		return;
	}
	LHPoint middle(inside);
	middle += LHPoint(outside);
	middle *= 0.5f;
	if (circle->Contains(middle.x, middle.z))
	{
		GetIntersect(circle, intersect, &middle, outside);
	}
	else
	{
		GetIntersect(circle, intersect, inside, &middle);
	}
}

InfluenceCircle* TouchMyEdge::GetCircle(LHPoint* from, LHPoint* to, long player)
{
	for (InfluenceCircle* circle = InfluenceCircle::g_first; circle != NULL; circle = circle->Next)
	{
		if (circle->Player != player)
		{
			continue;
		}
		if (circle->Contains(from->x, from->z))
		{
			if (!circle->Contains(to->x, to->z))
			{
				return circle;
			}
		}
		else if (circle->Contains(to->x, to->z))
		{
			return circle;
		}
	}
	return NULL;
}

void TouchMyEdge::Check(LHPoint& pos)
{
	g_b_collide = false;
	LHPoint position = pos;
	position.y = 0.0f;
	bool32_t inside[INFLUENCE_CIRCLE_PLAYER_COUNT];
	memset(inside, 0, sizeof(inside));
	for (InfluenceCircle* circle = InfluenceCircle::g_first; circle != NULL; circle = circle->Next)
	{
		if (circle->Contains(position.x, position.z))
		{
			inside[circle->Player] = true;
		}
	}
	if (g_b_init)
	{
		for (long i = 0; i < INFLUENCE_CIRCLE_PLAYER_COUNT; i++)
		{
			if (inside[i] == g_player_inside[i])
			{
				continue;
			}
			g_player_inside[i] = inside[i];
			InfluenceCircle* circle = GetCircle(&g_last_pos, &position, i);
			if (circle == NULL || !InfluenceCircle::g_b_valid[circle->Player])
			{
				continue;
			}
			LHPoint edge;
			if (circle->Contains(g_last_pos.x, g_last_pos.z))
			{
				GetIntersect(circle, &edge, &g_last_pos, &position);
			}
			else
			{
				GetIntersect(circle, &edge, &position, &g_last_pos);
			}
			float angle = LH3DMath::GetYAngle(&circle->Pos, &edge) + HALF_PI_F;
			float altitude = LH3DIsland::GetAltitude(LH3DMapCoords(edge.x, edge.z));
			edge.y = max(pos.y, altitude);
			new TouchMyEdge(&edge, InfluenceCircle::g_players_color[i], angle);
			g_b_collide = true;
		}
	}
	else
	{
		g_b_init = true;
		memcpy(g_player_inside, inside, sizeof(inside));
	}
	g_last_pos = position;
}

Eureka::Eureka(LHPoint* pos, wchar_t* text, float size, float opacity, LH3DColor* colour)
{
	memset(Text, 0, sizeof(Text));
	if (text != NULL)
	{
		wcsncpy(Text, text, EUREKA_TEXT_LENGTH - 1);
	}
	Colour = colour != NULL ? *colour : LH3DColor(0xff, 0xff, 0x00, 0xff);
	Size = size;
	Next = g_first;
	g_first = this;
	Sprite = LH3DSprite::Create(1, true);
	Sprite->pos = LHPoint(pos);
	Sprite->material = g_smoke_mat;
	Sprite->Frame = EUREKA_FRAME;
	Sprite->SetSize(Size);
	Opacity = opacity;
	Age = 0;
}

Eureka::~Eureka()
{
	Sprite->Release();
	Sprite = NULL;
	if (g_first == this)
	{
		g_first = Next;
		return;
	}
	Eureka* previous = g_first;
	Eureka* eureka = previous->Next;
	while (eureka != this)
	{
		previous = eureka;
		eureka = eureka->Next;
	}
	previous->Next = eureka->Next;
}

void Eureka::DrawAll()
{
	Eureka* eureka = g_first;
	while (eureka != NULL)
	{
		if (eureka->Draw())
		{
			Eureka* dead = eureka;
			eureka = eureka->Next;
			delete dead;
		}
		else
		{
			eureka = eureka->Next;
		}
	}
}

bool32_t Eureka::Draw()
{
	uint32_t dt = LH3DTech::g_game_time_inc;
	float    age = (float)(Age += dt);
	if (age >= EUREKA_LIFE)
	{
		return true;
	}
	float         scale = (age / EUREKA_LIFE + 1.0f) * Size;
	long          alpha = 0xff;
	unsigned long colour = 0xffffffff;
	if (age >= EUREKA_FADE_START)
	{
		alpha = (long)(((1.0f - (age - EUREKA_FADE_START) / EUREKA_FADE_TIME) * 255.0f) * Opacity);
		colour = RGBA_MAKE(0xff, 0xff, 0xff, alpha);
	}
	Sprite->colour = colour;
	Sprite->Frame = 0;
	Sprite->pos.y += (dt * EUREKA_RISE_SPEED) * Size;
	Sprite->SetSize(scale);
	if (Text[0] != L'\0')
	{
		LHPoint above = Sprite->pos;
		above.y += scale * EUREKA_TEXT_HEIGHT;
		float x;
		float y;
		float z;
		if (LH3DTech::ProjectPoint(&above, &x, &y, &z))
		{
			Colour.a = alpha > 0 ? (min(alpha, 0xff)) : 0;
			y -= EUREKA_TEXT_OFFSET;
			x -= GatheringText::GetGameFont(GAME_FONT_DEFAULT)
			         ->GetStringWidth((char16_t*)Text, wcslen(Text), EUREKA_TEXT_SIZE) *
			     0.5f;
			LH3DColor shadow(0, 0, 0, alpha);
			GatheringText::GetGameFont(GAME_FONT_DEFAULT)
				->DrawTextRaw((char16_t*)Text, wcslen(Text), x + 1.0f, y + 1.0f, z, EUREKA_TEXT_SIZE, &shadow, true,
			                  NULL, 0.0f, EUREKA_TEXT_DEPTH);
			GatheringText::GetGameFont(GAME_FONT_DEFAULT)
				->DrawTextRaw((char16_t*)Text, wcslen(Text), x, y, z, EUREKA_TEXT_SIZE, &Colour, true, NULL, 0.0f,
			                  EUREKA_TEXT_DEPTH);
		}
	}
	static LH3DObject* bulb = NULL;
	if (bulb == NULL)
	{
		bulb = LH3DObject::Create(LH3DObject::STATIC);
		bulb->SetMesh(LH3DMesh::GetPackedMesh(g_bulb_index), NULL, NULL);
		bulb->SetDynamicLighting(true);
	}
	{
		LHPoint pos = Sprite->pos;
		pos.y -= scale * EUREKA_BULB_HEIGHT / EUREKA_BULB_SCALE;
		bulb->SetPosition(pos, 0.0f, scale * (1.0f / EUREKA_BULB_SCALE));
	}
	long glow = (long)((float)fabs(cos(TWO_PI * EUREKA_BLINKS * Age / EUREKA_LIFE)) * 255.0f);
	bulb->SetColorSpecular(glow | 0xffffff00, 0);
	bulb->DrawWithClipping();
	Sprite->colour = RGBA_MAKE(0xff, 0xff, 0, (0xff - glow) / 2);
	Sprite->AddDrawing();
	return false;
}

Eureka* Eureka::g_first = NULL;

CheveauxDeFeu::CheveauxDeFeu(LHPoint* pos, LHPoint* dir, LH3DMaterial* material)
{
	Dir = *dir;
	Dir *= InverseSquareRoot(Dir.GetNormeSq());
	Start = Dir;
	Start *= -CHEVEAUX_DE_FEU_RUN_UP;
	Start += LHPoint(pos);
	Pos = Start;
	Sprites = LH3DSprite::Create(CHEVEAUX_DE_FEU_SPRITES, true);
	for (long i = 0; i < CHEVEAUX_DE_FEU_SPRITES; i++)
	{
		Sprites[i].material = material;
		Sprites[i].pos = Pos;
		LHPoint offset(Dir);
		offset *= -i * CHEVEAUX_DE_FEU_SPACING;
		Sprites[i].pos += offset;
		if (i > CHEVEAUX_DE_FEU_LAST_FLAME)
		{
			Sprites[i].SetFrame(CHEVEAUX_DE_FEU_SMOKE_FRAME);
			Sprites[i].SetSize(
				((CHEVEAUX_DE_FEU_STREAK - i) * CHEVEAUX_DE_FEU_SIZE_RANGE / (float)CHEVEAUX_DE_FEU_SPRITES +
			     CHEVEAUX_DE_FEU_MIN_SIZE) *
				CHEVEAUX_DE_FEU_SMOKE_SCALE);
		}
		else
		{
			Sprites[i].SetFrame(CHEVEAUX_DE_FEU_FLAME_FRAME);
			Sprites[i].SetSize((CHEVEAUX_DE_FEU_STREAK - i) * CHEVEAUX_DE_FEU_SIZE_RANGE /
			                       (float)CHEVEAUX_DE_FEU_SPRITES +
			                   CHEVEAUX_DE_FEU_MIN_SIZE);
		}
		Sprites[i].angle = Random(0.0f, TWO_PI);
		Sprites[i].colour = RGBA_MAKE(0xff, 0xff, 0xff, (CHEVEAUX_DE_FEU_STREAK - i) * 0xff / CHEVEAUX_DE_FEU_SPRITES);
		if (i == CHEVEAUX_DE_FEU_GLOW)
		{
			Sprites[i].colour = RGBA_MAKE(0xff, 0xff, 0xff, CHEVEAUX_DE_FEU_GLOW_ALPHA);
			Sprites[i].SetSize(CHEVEAUX_DE_FEU_GLOW_SIZE);
			Sprites[i].pos = Pos;
		}
	}
	Sprites[CHEVEAUX_DE_FEU_STREAK].pos = Pos;
	LHPoint offset(Dir);
	offset *= -CHEVEAUX_DE_FEU_SPACING;
	Sprites[CHEVEAUX_DE_FEU_STREAK].pos += offset;
	Sprites[CHEVEAUX_DE_FEU_STREAK].angle = -EIGHTH_PI_F;
	Sprites[CHEVEAUX_DE_FEU_STREAK].colour = RGBA_MAKE(0xff, 0xff, 0xff, CHEVEAUX_DE_FEU_STREAK_ALPHA);
	Sprites[CHEVEAUX_DE_FEU_STREAK].SetFrame(CHEVEAUX_DE_FEU_STREAK_FRAME);
	Sprites[CHEVEAUX_DE_FEU_STREAK].SetShape(CHEVEAUX_DE_FEU_STREAK_SIZE, CHEVEAUX_DE_FEU_STREAK_ASPECT);
	State = CHEVEAUX_DE_FEU_STATE_RIDING;
	Time = 0;
	Arrived = false;
}

CheveauxDeFeu::~CheveauxDeFeu()
{
	Sprites->Release();
	Sprites = NULL;
}

void CheveauxDeFeu::AddDrawing()
{
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&CheveauxDeFeu::Draw,
	                                  LH3DTech::GetValueForZSorter(Pos), 0);
}

void CheveauxDeFeu::ComputePos(LHPoint* pos)
{
	float distance = CHEVEAUX_DE_FEU_SPEED * Time / CHEVEAUX_DE_FEU_MS_PER_SECOND;
	if (distance > CHEVEAUX_DE_FEU_RUN_UP - CHEVEAUX_DE_FEU_STOP_SHORT)
	{
		Arrived = true;
		distance = CHEVEAUX_DE_FEU_RUN_UP - CHEVEAUX_DE_FEU_STOP_SHORT;
	}
	*pos = Start;
	*pos += Dir * distance;
}

void CheveauxDeFeu::Draw()
{
	static long timer = 0;
	static long stopTime = 500;
	static long fadeTime = 1000;
	if (State == CHEVEAUX_DE_FEU_STATE_GONE)
	{
		return;
	}
	if (State != CHEVEAUX_DE_FEU_STATE_RIDING)
	{
		if (State == CHEVEAUX_DE_FEU_STATE_STOPPED)
		{
			if ((timer -= LH3DTech::g_game_time_inc) < 0)
			{
				State = CHEVEAUX_DE_FEU_STATE_FADING;
				timer = fadeTime;
			}
		}
		if (State == CHEVEAUX_DE_FEU_STATE_FADING)
		{
			static long minAlpha = 50;
			Sprites->colour =
				RGBA_MAKE(0xff, 0xff, 0xff, (long)((float)timer / fadeTime * (0xff - minAlpha) + minAlpha));
			if ((timer -= LH3DTech::g_game_time_inc) < 0)
			{
				State = CHEVEAUX_DE_FEU_STATE_GONE;
			}
		}
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
		Sprites->Draw();
		Sprites->angle = Random(0.0f, TWO_PI);
		Sprites->Draw();
		Sprites->angle = Random(0.0f, TWO_PI);
		Sprites->Draw();
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	}
	else
	{
		ComputePos(&Pos);
		if (Arrived)
		{
			State = CHEVEAUX_DE_FEU_STATE_STOPPED;
			timer = stopTime;
		}
		long i;
		for (i = 0; i < CHEVEAUX_DE_FEU_SPRITES; i++)
		{
			if (i == CHEVEAUX_DE_FEU_STREAK)
			{
				Sprites[i].angle +=
					LH3DTech::GetGameTimeInc() / CHEVEAUX_DE_FEU_STREAK_SPIN_TIME * PI_F * CHEVEAUX_DE_FEU_STREAK_SPIN;
			}
			Sprites[i].pos = Pos;
			if (i < CHEVEAUX_DE_FEU_GLOW)
			{
				LHPoint offset(Dir);
				offset *= -i * CHEVEAUX_DE_FEU_SPACING;
				Sprites[i].pos += offset;
				if (LH3DTech::g_game_time_inc != 0)
				{
					Sprites[i].angle = Random(0.0f, TWO_PI);
					if (i < CHEVEAUX_DE_FEU_LAST_FLAME)
					{
						Sprites[i].SetSize(Random(-CHEVEAUX_DE_FEU_FLAME_JITTER, CHEVEAUX_DE_FEU_FLAME_JITTER) +
						                   (CHEVEAUX_DE_FEU_STREAK - i) * CHEVEAUX_DE_FEU_SIZE_RANGE /
						                       (float)CHEVEAUX_DE_FEU_SPRITES +
						                   CHEVEAUX_DE_FEU_MIN_SIZE);
					}
				}
			}
		}
		if (Time > CHEVEAUX_DE_FEU_NO_Z_TEST_TIME)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
		}
		for (i = 0; i < CHEVEAUX_DE_FEU_SPRITES; i++)
		{
			Sprites[i].Draw();
		}
		if (Time > CHEVEAUX_DE_FEU_NO_Z_TEST_TIME)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		}
		Time += LH3DTech::g_game_time_inc;
		ComputePos(&grosse_merde_pos);
		LHPoint back(Dir);
		back *= CHEVEAUX_DE_FEU_CAMERA_DISTANCE;
		grosse_merde_pos -= back;
		grosse_merde_pos.y += CHEVEAUX_DE_FEU_CAMERA_HEIGHT;
	}
}

void CheveauxDeFeu::GetSittingPos(LHPoint* pos)
{
	ComputePos(&Pos);
	*pos = Pos;
}

EvilOrAngel* EvilOrAngel::g_first = NULL;
LH3DAnim*    EvilOrAngel::g_list[EVIL_OR_ANGEL_ANIM_LAST] = {NULL};

EvilOrAngel::EvilOrAngel(LH3DObject* villager, long mesh, bool32_t child)
{
	villager->SetVisage(EVIL_OR_ANGEL_VISAGE);
	Next = g_first;
	g_first = this;
	Time = 0;
	Object = LH3DObject::Create(LH3DObject::ANIMATED);
	Object->SetNeedSorting(true);
	Object->SetPosition(villager->matrix.GetPos(), villager->y_angle, villager->scale);
	Object->SetMesh(LH3DMesh::GetPackedMesh(mesh), NULL, NULL);
	Object->SetDynamicLighting(true);
	LH3DAnim* anim = villager->GetCurrentAnim();
	if (strcmp(anim->name, "M_P_DEAD1") != 0)
	{
		if (Random(0.0f, 100.0f) < EVIL_OR_ANGEL_ANGEL_CHANCE)
		{
			Object->SetCurrentAnim(g_list[EVIL_OR_ANGEL_ANIM_ANGEL]);
		}
		else
		{
			Object->SetCurrentAnim(g_list[EVIL_OR_ANGEL_ANIM_EVIL]);
		}
		if (child)
		{
			Object->SetCurrentAnim(g_list[EVIL_OR_ANGEL_ANIM_ANGEL]);
		}
	}
	else
	{
		if (Random(0.0f, 100.0f) < EVIL_OR_ANGEL_ANGEL_CHANCE)
		{
			Object->SetCurrentAnim(g_list[EVIL_OR_ANGEL_ANIM_ANGEL_DEAD1]);
		}
		else
		{
			Object->SetCurrentAnim(g_list[EVIL_OR_ANGEL_ANIM_EVIL_DEAD1]);
		}
		if (child)
		{
			Object->SetCurrentAnim(g_list[EVIL_OR_ANGEL_ANIM_ANGEL_DEAD1]);
		}
	}
}

EvilOrAngel::~EvilOrAngel()
{
	if (Object != NULL)
	{
		Object->Release();
	}
	Object = NULL;
	if (g_first == this)
	{
		g_first = Next;
		return;
	}
	EvilOrAngel* previous = g_first;
	EvilOrAngel* evil = previous->Next;
	while (evil != NULL && evil != this)
	{
		previous = evil;
		evil = evil->Next;
	}
	previous->Next = Next;
}

void EvilOrAngel::DrawAll()
{
	EvilOrAngel* evil = g_first;
	while (evil != NULL)
	{
		if (evil->Draw())
		{
			EvilOrAngel* dead = evil;
			evil = evil->Next;
			delete dead;
		}
		else
		{
			evil = evil->Next;
		}
	}
}

bool32_t EvilOrAngel::Draw()
{
	Time += LH3DTech::g_game_time_inc;
	if (Time + EVIL_OR_ANGEL_END_MARGIN > Object->GetCurrentAnim()->Duration)
	{
		return true;
	}
	Object->SetCurrentCycleTime(Time);
	long alpha = EVIL_OR_ANGEL_ALPHA;
	long fadeStart = Object->GetCurrentAnim()->Duration - EVIL_OR_ANGEL_FADE_TIME;
	if (Time > fadeStart)
	{
		alpha = (long)((1.0f - (Time - fadeStart) / (float)EVIL_OR_ANGEL_FADE_TIME) * (float)EVIL_OR_ANGEL_ALPHA);
	}
	Object->SetDrawWithGlobalAlpha(true);
	Object->SetColorSpecular(RGBA_MAKE(0xff, 0xff, 0xff, alpha), 0);
	Object->AddDrawing();
	return false;
}

void ResetAllWhenLandscapeChange()
{
	memset(InfluenceCircle::g_b_valid, 0, sizeof(InfluenceCircle::g_b_valid));
}

DansLesNuages* DansLesNuages::g_first = NULL;
long           MIN_TIME_DLN = 0;
long           MAX_TIME_DLN = DANS_LES_NUAGES_MAX_TIME;

bool32_t DansLesNuages::Draw()
{
	LHPoint pos;
	if (g_b_grosse_merde)
	{
		pos.Set(grosse_merde_foc);
		pos -= grosse_merde_pos;
		pos.SetSize(LH3DTech::GetNearClipping() + DANS_LES_NUAGES_DISTANCE);
		pos += grosse_merde_pos;
	}
	else
	{
		pos.Set(LH3DTech::GetCameraTarget());
		pos -= LHPoint(LH3DTech::GetCameraPosition());
		pos.SetSize(LH3DTech::GetNearClipping() + DANS_LES_NUAGES_DISTANCE);
		pos += LHPoint(LH3DTech::GetCameraPosition());
	}
	Time += LH3DTech::g_game_time_inc;
	if (Time > MAX_TIME_DLN)
	{
		return true;
	}
	long alpha = 0xff;
	if (Time > MIN_TIME_DLN)
	{
		alpha = (long)((1.0f - (float)(Time - MIN_TIME_DLN) / (MAX_TIME_DLN - MIN_TIME_DLN)) * 255.0f);
	}
	unsigned long colour = RGBA_MAKE(0xff, 0xff, 0xff, alpha);
	float         step = LH3DTech::GetGameTimeInc() / DANS_LES_NUAGES_FRAME_TIME;
	LH3DSprite*   sprite = Sprites;
	for (long i = 0; i < DANS_LES_NUAGES_SPRITES; i++, sprite++)
	{
		Frames[i] += step;
		if (Frames[i] > DANS_LES_NUAGES_FRAMES - 1)
		{
			Frames[i] = 0.0f;
		}
		sprite->SetSize((LH3DTech::GetNearClipping() + DANS_LES_NUAGES_DISTANCE) * DANS_LES_NUAGES_SIZE);
		sprite->pos = pos;
		sprite->pos += Offsets[i];
		sprite->Frame = (long)Frames[i] & (DANS_LES_NUAGES_FRAMES - 1);
		sprite->colour = colour;
		sprite->AddDrawing();
	}
	return false;
}

DansLesNuages::DansLesNuages()
{
	Time = 0;
	Next = g_first;
	g_first = this;
	Sprites = LH3DSprite::Create(DANS_LES_NUAGES_SPRITES, true);
	for (long i = 0; i < DANS_LES_NUAGES_SPRITES; i++)
	{
		Offsets[i].SetNull();
		Frames[i] = Random(0.0f, DANS_LES_NUAGES_FRAMES - 1);
		Sprites[i].material = g_smoke_mat;
	}
}

DansLesNuages::~DansLesNuages()
{
	if (g_first == this)
	{
		g_first = Next;
		return;
	}
	DansLesNuages* previous = g_first;
	DansLesNuages* clouds = previous->Next;
	while (clouds != this)
	{
		previous = clouds;
		clouds = clouds->Next;
	}
	previous->Next = Next;
}

void DansLesNuages::DrawAll()
{
	DansLesNuages* clouds = g_first;
	while (clouds != NULL)
	{
		if (clouds->Draw())
		{
			DansLesNuages* dead = clouds;
			clouds = clouds->Next;
			delete dead;
		}
		else
		{
			clouds = clouds->Next;
		}
	}
}

void ScriptedScreenShot::Request(Shot* shot, bool32_t fullscreen, LHPoint* pos, LHPoint* foc)
{
	g_b_do_it = true;
	g_b_fullscreen = fullscreen;
	g_b_fullscreen_ready = false;
	if (shot->Half < 0 || shot->Half > 1)
	{
		shot->Half = 0;
	}
	if (shot->Thumbnail < 0 || shot->Thumbnail > SCRIPTED_SCREEN_SHOT_THUMBNAILS - 1)
	{
		shot->Thumbnail = 0;
	}
	g_info = *shot;
	Process();
}

void LH3DTools::AnimationViewer()
{
	LHSys::TheSystem.screen.Open(LH3D_TOOLS_VIEWER_SIZE, LH3D_TOOLS_VIEWER_SIZE, LH3D_TOOLS_VIEWER_DEPTH);
	LH3DMesh::CreatePack();
	LH3DAnim::CreatePack();
	while (LHSys::TheSystem.keyboard.CurrentKey != KB_ESC && !LHSys::TheSystem.system.Terminate)
	{
	}
}

void NewCollide::Obj::Draw(int) {}

NewCollide::DeleteCallback NewCollide::g_collide_del_callback = NULL;

void NewCollide::Obj::CreateList()
{
	int      count;
	float    length;
	float    width;
	bool32_t alongX;
	if (BoundingBox.x > BoundingBox.z)
	{
		count = (int)(BoundingBox.x / BoundingBox.z);
		length = BoundingBox.x * 2;
		width = BoundingBox.z;
		alongX = true;
	}
	else
	{
		count = (int)(BoundingBox.z / BoundingBox.x);
		length = BoundingBox.z * 2;
		width = BoundingBox.x;
		alongX = false;
	}
	count++;
	IteratorList = new List(count);
	LHMatrix matrix;
	matrix.SetRotationY(angle);
	matrix.PostTranslation(position);
	float step = length / count;
	for (int i = 0; i < count; i++)
	{
		LHPoint point;
		if (alongX)
		{
			point = LHPoint((i + 0.5f) * step - length * 0.5f, 0.0f, 0.0f);
		}
		else
		{
			point = LHPoint(0.0f, 0.0f, (i + 0.5f) * step - length * 0.5f);
		}
		point = matrix * point;
		IteratorList->Add(new Obj(width, &point));
	}
}

bool32_t NewCollide::Obj::Collide(Obj* other)
{
	float dx = position.x - other->position.x;
	float dz = position.z - other->position.z;
	if (dx * dx + dz * dz > other->radius * radius * 2 + other->r2 + r2)
	{
		return false;
	}
	if (IteratorList == NULL)
	{
		if (other->IteratorList == NULL)
		{
			return true;
		}
		for (int i = 0; i < other->IteratorList->count; i++)
		{
			if (other->IteratorList->objs[i]->Collide(this))
			{
				return true;
			}
		}
		return false;
	}
	if (other->IteratorList == NULL)
	{
		for (int i = 0; i < IteratorList->count; i++)
		{
			if (IteratorList->objs[i]->Collide(other))
			{
				return true;
			}
		}
		return false;
	}
	for (int i = 0; i < IteratorList->count; i++)
	{
		Obj* obj = IteratorList->objs[i];
		for (int j = 0; j < other->IteratorList->count; j++)
		{
			if (other->IteratorList->objs[j]->Collide(obj))
			{
				return true;
			}
		}
	}
	return false;
}

NewCollide::List::~List()
{
	if (objs != NULL)
	{
		for (int i = 0; i < count; i++)
		{
			delete objs[i];
		}
		LH3DMem::Free(objs);
		objs = NULL;
	}
	size = 0;
	count = 0;
}

NewCollide::List::List(long initial_size)
{
	size = initial_size;
	count = 0;
	objs = (Obj**)LH3DMem::AllocClear(initial_size * sizeof(Obj*));
}

void NewCollide::List::IncreaseSize()
{
	Obj** list = (Obj**)LH3DMem::AllocClear(size * 2 * sizeof(Obj*));
	memcpy(list, objs, size * sizeof(Obj*));
	size *= 2;
	LH3DMem::Free(objs);
	objs = list;
}

NewCollide::NewCollide(LH3DObject* object) : obj(NULL)
{
	LH3DMesh* mesh = object->GetMesh();
	LHPoint   centre = object->matrix * mesh->BoundingBox.centre;
	centre.y = 0.0f;
	float x = mesh->BoundingBox.size.x * object->scale;
	float z = mesh->BoundingBox.size.z * object->scale;
	if (x < NEW_COLLIDE_MIN_SIZE)
	{
		x = NEW_COLLIDE_MIN_SIZE;
	}
	if (z < NEW_COLLIDE_MIN_SIZE)
	{
		z = NEW_COLLIDE_MIN_SIZE;
	}
	if (x > z)
	{
		if (x / z > NEW_COLLIDE_MAX_RATIO)
		{
			obj = new Obj(&centre, x, z, object->y_angle);
		}
		else
		{
			obj = new Obj(x, &centre);
		}
	}
	else
	{
		if (z / x > NEW_COLLIDE_MAX_RATIO)
		{
			obj = new Obj(&centre, x, z, object->y_angle);
		}
		else
		{
			obj = new Obj(z, &centre);
		}
	}
}

NewCollide::NewCollide(LHPoint* position, float radius)
{
	LHPoint centre = *position;
	centre.y = 0.0f;
	obj = new Obj(radius, &centre);
}

void LH3DArena::ComputeLight()
{
	if (g_b_end_sequence)
	{
		float light = (float)LHSys::TheSystem.mouse.DefaultPos.Y() / LH3DTech::g_info_transform.resolution.y;
		g_b_end_sequence_dark = 1.0f - light;
		long          level = (long)(light * 255.0f);
		unsigned long colour = RGBA_MAKE(level, level, level, LH3D_COLOR_OPAQUE);
		for (int i = 0; i < LAND_CELL_MAX_DARKNESS + 1; i++)
		{
			LandCell::g_darkness_to_color[i] = colour;
		}
	}
}

LH3DSprite*   HowManyPeople::g_sprites = NULL;
long          HowManyPeople::g_count = 0;
int           HowManyPeople::g_time = 0;
LH3DMaterial* HowManyPeople::g_material = NULL;
int           HowManyPeople::g_alpha = LH3D_COLOR_OPAQUE;
float         caca_scale = 1.0f;
LHPoint       HowManyPeople::g_dir(1.0f, 0.0f, 0.0f);

void HowManyPeople::KnockKnock()
{
	if (g_time != 0)
	{
		if (g_time <= HOW_MANY_PEOPLE_FADE_OUT)
		{
			if (g_time < HOW_MANY_PEOPLE_FADE_TIME)
			{
				g_time = HOW_MANY_PEOPLE_TIME - g_time;
			}
			else
			{
				g_time = HOW_MANY_PEOPLE_FADE_OUT;
			}
		}
	}
	else
	{
		g_time = HOW_MANY_PEOPLE_TIME;
	}
}

void HowManyPeople::Process()
{
	if (g_time == 0)
	{
		return;
	}
	g_time -= LH3DTech::g_game_time_inc;
	if (g_time < 0)
	{
		g_time = 0;
	}
	if (g_time > HOW_MANY_PEOPLE_FADE_TIME)
	{
		if (g_time > HOW_MANY_PEOPLE_FADE_OUT)
		{
			g_alpha = (int)(255.0f - (g_time - HOW_MANY_PEOPLE_FADE_OUT) * 255.0f / HOW_MANY_PEOPLE_FADE_TIME);
		}
		else
		{
			g_alpha = LH3D_COLOR_OPAQUE;
		}
	}
	else
	{
		g_alpha = (int)(g_time * 255.0f / HOW_MANY_PEOPLE_FADE_TIME);
	}
	g_dir.Set(1.0f, 0.0f, 0.0f);
	LH3DTech::g_camera_to_world.TransformVector(g_dir);
	caca_scale = g_alpha * (1.0f / 255.0f);
}

void HowManyPeople::Draw(long max_people, long people, LHPoint* pos)
{
	if (g_time == 0 && people != HOW_MANY_PEOPLE_ALL)
	{
		return;
	}
	if (max_people > g_count)
	{
		if (g_material == NULL)
		{
			g_material =
				LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA_ALPHA, g_tex_misc0);
			g_material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
			g_material->AlphaReference = HOW_MANY_PEOPLE_ALPHA_REFERENCE;
		}
		if (g_sprites != NULL)
		{
			g_sprites->Release();
			g_sprites = NULL;
		}
		g_sprites = LH3DSprite::Create(max_people, true);
		g_count = max_people;
		for (int i = 0; i < g_count; i++)
		{
			g_sprites[i].material = g_material;
			g_sprites[i].SetFrame(HOW_MANY_PEOPLE_FRAME);
			g_sprites[i].SetSize(HOW_MANY_PEOPLE_SIZE);
		}
	}
	static float spacing = HOW_MANY_PEOPLE_SPACING;
	LHPoint      start = g_dir;
	start *= -max_people * 0.5f;
	start += LHPoint(pos);
	for (int i = 0; i < max_people; i++)
	{
		LHPoint offset = g_dir;
		offset *= i / spacing;
		LH3DSprite* sprite = &g_sprites[i];
		if (people == HOW_MANY_PEOPLE_ALL)
		{
			sprite->colour = HOW_MANY_PEOPLE_COLOUR_IN;
			g_sprites[i].colour = HOW_MANY_PEOPLE_COLOUR_ALL;
			g_sprites[i].SetSize(1.0f / spacing);
		}
		else
		{
			if (i < people)
			{
				sprite->colour = HOW_MANY_PEOPLE_COLOUR_IN;
			}
			else
			{
				sprite->colour = HOW_MANY_PEOPLE_COLOUR_OUT;
			}
			g_sprites[i].SetSize(caca_scale / spacing);
		}
		sprite->pos = start;
		sprite->pos += offset;
		sprite->Draw();
	}
}

FishRush::PaulNet::PaulNet(LHPoint* pos, float radius)
{
	Pos = *pos;
	Object = LH3DObject::Create(LH3DObject::STATIC);
	Mesh = LH3DMesh::CreateFromHD(FISH_RUSH_NET_MESH_PATH, 0);
	Object->SetDynamicLighting(true);
	Object->SetMesh(Mesh, NULL, NULL);
	Phase = 0.0f;
	for (long i = 0; i < FISH_RUSH_NET_SEGMENTS; i++)
	{
		float angle = i * (TWO_PI / FISH_RUSH_NET_SEGMENTS);
		Points[i].Set(radius * (float)cos(angle), 0.0f, radius * (float)sin(angle));
		Points[i] += LHPoint(pos);
		Bob[i] = 0.0f;
	}
	Caught = false;
	Size = 1.0f;
}

FishRush::PaulNet::~PaulNet()
{
	Object->Release();
	Object = NULL;
	Mesh->Release();
	Mesh = NULL;
}

void FishRush::PaulNet::Draw()
{
	for (long i = 0; i < FISH_RUSH_NET_SEGMENTS; i++)
	{
		LHPoint pos = Points[i];
		pos.y += (float)cos(i * i + Phase) * FISH_RUSH_NET_BOB;
		Object->SetPosition(pos, 0.0f, 1.0f);
		Object->DrawCutByPlane();
	}
}

void FishRush::PaulNet::PreDraw()
{
	float dt = LH3DTech::GetGameTimeInc() / 1000.0f;
	if (Caught && Size != 0.0f)
	{
		Size -= dt * FISH_RUSH_NET_SHRINK_SPEED;
		if (Size < 0.0f)
		{
			Size = 0.0f;
		}
		float radius = Size * FISH_RUSH_NET_RADIUS + 1.0f;
		for (long i = 0; i < FISH_RUSH_NET_SEGMENTS; i++)
		{
			float angle = i * (TWO_PI / FISH_RUSH_NET_SEGMENTS);
			Points[i].Set(radius * (float)cos(angle), 0.0f, radius * (float)sin(angle));
			Points[i] += Pos;
			Bob[i] = 0.0f;
		}
	}
	Phase += dt * FISH_RUSH_NET_SPEED;
	LHPlane plane;
	plane.Normal.Set(0.0f, -1.0f, 0.0f);
	plane.Distance = 0.0f;
	UpdateClippingPlane(&plane);
	for (long j = 0; j < FISH_RUSH_NET_SEGMENTS; j++)
	{
		LHPoint pos = Points[j];
		float   bob = (float)cos(j * j + Phase) * FISH_RUSH_NET_BOB;
		pos.y += bob;
		Bob[j] = bob;
		Object->SetPosition(pos, 0.0f, 1.0f);
		Object->DrawCutByPlane();
	}
	plane.Normal.Set(0.0f, 1.0f, 0.0f);
	plane.Distance = 0.0f;
	UpdateClippingPlane(&plane);
}

GWater::Circle GWater::g_circle[GWATER_MAX_CIRCLES];
float          GWater::g_speed = 0.0f;
LH3DSprite*    GWater::g_sprite_circle = NULL;
long           GWater::g_count_activated_circle = 0;

#ifndef VERSION_BW1W100
void GWater::Process(LHPoint* pos)
{
	static LHPoint origin(0.0f, 0.0f, 0.0f);
	Time += LH3DTech::g_game_time_inc;
	if (pos->y < GWATER_TOUCH_HEIGHT && Time > GWATER_TOUCH_PERIOD)
	{
		AddPlouf(pos);
		Time = 0;
	}
	else if (Touching && pos->y > GWATER_TOUCH_HEIGHT)
	{
		Touching = false;
		State = GWATER_STATE_NONE;
	}
}

void GWater::AddPlouf(LHPoint* pos)
{
	for (unsigned long i = 0; i < GWATER_MAX_PLOUFS; i++)
	{
		if (Actives[i])
		{
			continue;
		}
		Actives[i] = true;
		switch (State)
		{
		case GWATER_STATE_NONE:
			Types[i] = GWATER_PLOUF_TYPE_SPLASH;
			State = GWATER_STATE_SPLASH;
			Sprites[i].pos.Set(pos->x, 0.0f, pos->z);
			SetPlouf(pos);
			break;
		case GWATER_STATE_SPLASH:
			Actives[Last] = false;
			State = GWATER_STATE_TRAIL_STARTED;
			Types[i] = GWATER_PLOUF_TYPE_TRAIL_ALONE;
			Trails[i].Start.Set(LastPos);
			Trails[i].End.Set(pos->x, 0.0f, pos->z);
			{
				LHPoint middle(Trails[i].Start);
				middle.Add(Trails[i].End);
				middle.Mul(0.5f);
				Sprites[i].pos.Set(middle);
				float dz = Trails[i].Start.z - Trails[i].End.z;
				float dx = Trails[i].Start.x - Trails[i].End.x;
				float length = SquareRoot(dx * dx + dz * dz) * GWATER_PLOUF_TRAIL_WIDTH;
				if (length < GWATER_PLOUF_MIN_SIZE)
				{
					length = GWATER_PLOUF_MIN_SIZE;
				}
				Lengths[i] = length;
				Sprites[i].SetRotation(LH3DMath::GetYAngle(&Trails[i].Start, &Trails[i].End));
				Sprites[i].SetShapeOnly(1.0f, 1.0f / length);
			}
			break;
		case GWATER_STATE_TRAIL_STARTED:
			Types[Last] = GWATER_PLOUF_TYPE_TRAIL_START;
			Types[i] = GWATER_PLOUF_TYPE_TRAIL_END;
			State = GWATER_STATE_TRAIL;
			Trails[i].Start.Set(LastPos);
			Trails[i].End.Set(pos->x, 0.0f, pos->z);
			{
				LHPoint middle(Trails[i].Start);
				middle.Add(Trails[i].End);
				middle.Mul(0.5f);
				Sprites[i].pos.Set(middle);
				float dz = Trails[i].Start.z - Trails[i].End.z;
				float dx = Trails[i].Start.x - Trails[i].End.x;
				float length = SquareRoot(dx * dx + dz * dz) * GWATER_PLOUF_TRAIL_WIDTH;
				if (length < GWATER_PLOUF_MIN_SIZE)
				{
					length = GWATER_PLOUF_MIN_SIZE;
				}
				Lengths[i] = length;
				Sprites[i].SetRotation(LH3DMath::GetYAngle(&Trails[i].Start, &Trails[i].End));
				Sprites[i].SetShapeOnly(1.0f, 1.0f / length);
			}
			break;
		case GWATER_STATE_TRAIL:
			Types[Last] = GWATER_PLOUF_TYPE_TRAIL;
			Types[i] = GWATER_PLOUF_TYPE_TRAIL_END;
			Trails[i].Start.Set(LastPos);
			Trails[i].End.Set(pos->x, 0.0f, pos->z);
			{
				LHPoint middle(Trails[i].Start);
				middle.Add(Trails[i].End);
				middle.Mul(0.5f);
				Sprites[i].pos.Set(middle);
				float dz = Trails[i].Start.z - Trails[i].End.z;
				float dx = Trails[i].Start.x - Trails[i].End.x;
				float length = SquareRoot(dx * dx + dz * dz) * GWATER_PLOUF_TRAIL_WIDTH;
				if (length < GWATER_PLOUF_MIN_SIZE)
				{
					length = GWATER_PLOUF_MIN_SIZE;
				}
				Lengths[i] = length;
				Sprites[i].SetRotation(LH3DMath::GetYAngle(&Trails[i].Start, &Trails[i].End));
				Sprites[i].SetShapeOnly(1.0f, 1.0f / length);
			}
			break;
		}
		Last = i;
		LastPos.Set(pos->x, 0.0f, pos->z);
		Touching = true;
		return;
	}
}

void GWater::Draw()
{
	for (unsigned long i = 0; i < GWATER_MAX_PLOUFS; i++)
	{
		if (!Actives[i])
		{
			continue;
		}
		if (Wind)
		{
			Sprites[i].pos.x += g_speed * LH3DTech::g_ambient_wind_direction.x;
			Sprites[i].pos.z += g_speed * LH3DTech::g_ambient_wind_direction.z;
		}
		unsigned long age = Ages[i] + LH3DTech::g_game_time_inc;
		if (age > GWATER_PLOUF_LIFE)
		{
			age = 0;
			Actives[i] = false;
		}
		Ages[i] = age;
		switch (Types[i])
		{
		case GWATER_PLOUF_TYPE_SPLASH:
			Sprites[i].Size = GetSize(age);
			break;
		case GWATER_PLOUF_TYPE_TRAIL: {
			float size = GetSize(age);
			Sprites[i].SetShapeOnly(Lengths[i], size / Lengths[i]);
			break;
		}
		default:
			Sprites[i].SetShapeOnly(1.0f, 1.0f);
			Sprites[i].Size = GetSize(age);
			break;
		}
		Sprites[i].SetFrame(Types[i] + GWATER_PLOUF_FRAME);
		Sprites[i].colour = GetColor(age);
		Sprites[i].Draw();
	}
}

void __fastcall GWater::SetPlouf(LHPoint* pos) {}
#endif

void __cdecl DrawAndClip(D3DPRIMITIVETYPE primitive_type, unsigned long fvf, Vertex3D* vertices,
                         unsigned long vertex_count, uint16_t* indices, unsigned long index_count)
{
	float maxX = LH3DTech::g_max_screen[0];
	float maxY = LH3DTech::g_max_screen[1];
	for (unsigned long i = 0; i < vertex_count; i++)
	{
		CLAMP(vertices[i].x, 0.0f, maxX);
		CLAMP(vertices[i].y, 0.0f, maxY);
	}
	LH3DRender::D3DDevice->DrawIndexedPrimitive(primitive_type, fvf, vertices, vertex_count, indices, index_count, 0);
}

void __cdecl DrawAndClip2D(D3DPRIMITIVETYPE primitive_type, unsigned long fvf, Vertex3D* vertices,
                           unsigned long vertex_count, uint16_t* indices, unsigned long index_count)
{
	float   maxX = LH3DTech::g_max_screen[0];
	float   maxY = LH3DTech::g_max_screen[1];
	long    lastQuad = -1;
	float   uDistance;
	LHPoint uNormal;
	LHPoint vNormal;
	float   vDistance;
	for (unsigned long i = 0; i < vertex_count; i++)
	{
		Vertex3D* vertex = &vertices[i];
		if (vertex->x < 0.0f || vertex->y < 0.0f || vertex->x > maxX || vertex->y > maxY)
		{
			long quad = i & ~(DRAW_AND_CLIP_QUAD_VERTICES - 1);
			if (lastQuad != quad && quad < (long)vertex_count - 2)
			{
				lastQuad = quad;
				Vertex3D* corner = &vertices[quad];
				LHPoint   uSide(corner[0].x - corner[1].x, corner[0].y - corner[1].y, corner[0].uv.x - corner[1].uv.x);
				LHPoint   uOther(corner[2].x - corner[1].x, corner[2].y - corner[1].y, corner[2].uv.x - corner[1].uv.x);
				uNormal.CrossProduct(uSide, uOther);
				uDistance = uNormal.x * corner[0].x + uNormal.y * corner[0].y + uNormal.z * corner[0].uv.x;
				LHPoint vSide(corner[0].x - corner[1].x, corner[0].y - corner[1].y, corner[0].uv.y - corner[1].uv.y);
				LHPoint vOther(corner[2].x - corner[1].x, corner[2].y - corner[1].y, corner[2].uv.y - corner[1].uv.y);
				vNormal.CrossProduct(vSide, vOther);
				vDistance = vNormal.x * corner[0].x + vNormal.y * corner[0].y + vNormal.z * corner[0].uv.y;
			}
			CLAMP(vertex->x, 0.0f, maxX);
			CLAMP(vertex->y, 0.0f, maxY);
			if (fabs(uNormal.z) > DRAW_AND_CLIP_EPSILON)
			{
				vertex->uv.x = (uDistance - uNormal.x * vertex->x - uNormal.y * vertex->y) / uNormal.z;
			}
			if (fabs(vNormal.z) > DRAW_AND_CLIP_EPSILON)
			{
				vertex->uv.y = (vDistance - vNormal.x * vertex->x - vNormal.y * vertex->y) / vNormal.z;
			}
		}
	}
	LH3DRender::D3DDevice->DrawIndexedPrimitive(primitive_type, fvf, vertices, vertex_count, indices, index_count, 0);
}

void __cdecl DrawAndClip(D3DPRIMITIVETYPE primitive_type, unsigned long fvf, Vertex3DMT* vertices,
                         unsigned long vertex_count, uint16_t* indices, unsigned long index_count)
{
	float maxX = LH3DTech::g_max_screen[0];
	float maxY = LH3DTech::g_max_screen[1];
	for (unsigned long i = 0; i < vertex_count; i++)
	{
		CLAMP(vertices[i].x, 0.0f, maxX);
		CLAMP(vertices[i].y, 0.0f, maxY);
	}
	LH3DRender::D3DDevice->DrawIndexedPrimitive(primitive_type, fvf, vertices, vertex_count, indices, index_count, 0);
}

void SaveTextureCitadel(char* name, void* data)
{
	bool32_t lowRes = LH3DTexture::g_b_use_low_res;
	LH3DTexture::g_b_use_low_res = false;
	IDirectDrawSurface7* surface = NULL;
	LH3DCT*              ct = LH3DCT::Create(NULL, false);
	if (ct != NULL)
	{
		DDSURFACEDESC2 desc;
		memset(&desc, 0, sizeof(desc));
		desc.dwSize = sizeof(desc);
		desc.dwFlags = CITADEL_TEXTURE_DESC_FLAGS;
		desc.dwWidth = CITADEL_TEXTURE_SIZE;
		desc.dwHeight = CITADEL_TEXTURE_SIZE;
		desc.ddsCaps.dwCaps = CITADEL_TEXTURE_CAPS;
		desc.dwMipMapCount = 1;
		desc.ddpfPixelFormat = LH3DVRAMTex::g_pixel_format[CITADEL_TEXTURE_PIXEL_FORMAT].Format;
		LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&desc, &surface, NULL);
		if (surface != NULL)
		{
			memset(&desc, 0, sizeof(desc));
			desc.dwSize = sizeof(desc);
			surface->Lock(NULL, &desc, CITADEL_TEXTURE_LOCK, NULL);
			uint16_t* bits = (uint16_t*)desc.lpSurface;
			if (bits != NULL)
			{
				long     pitch = desc.lPitch / 2;
				uint8_t* pixel = (uint8_t*)data;
				long     x;
				long     y;
				if (!LH3DTexture::g_b_use_565)
				{
					for (y = 0; y < (long)desc.dwHeight; y++)
					{
						for (x = 0; x < (long)desc.dwWidth; x++)
						{
							long red = *pixel++ >> 3;
							long green = *pixel++ >> 3;
							long blue = *pixel++ >> 3;
							bits[y * pitch + x] = CITADEL_TEXTURE_555_OPAQUE | red << 10 | green << 5 | blue;
						}
					}
				}
				else
				{
					for (y = 0; y < (long)desc.dwHeight; y++)
					{
						for (x = 0; x < (long)desc.dwWidth; x++)
						{
							long red = *pixel++ >> 3;
							long green = (*pixel++ >> 3) << 1;
							long blue = *pixel++ >> 3;
							bits[y * pitch + x] = red << 11 | green << 5 | blue;
						}
					}
				}
			}
			surface->Unlock(NULL);
			if (ct->Surface->Blt(NULL, surface, NULL, DDBLT_WAIT, NULL) == DD_OK)
			{
				ct->SaveOnDisk(name);
			}
		}
	}
	if (surface != NULL)
	{
		surface->Release();
	}
	surface = NULL;
	if (ct != NULL)
	{
		ct->Release();
	}
	LH3DTexture::g_b_use_low_res = lowRes;
}

void LoadTextureCitadel(char* name, uint8_t* data)
{
	uint32_t size = 0;
	LHFileLength(name, &size);
	if (size == 0 || IsRawFile(name))
	{
		Report3D__FPCce("LoadTextureCitadel %s not present\n", name);
		memset(data, 0, CITADEL_TEXTURE_BYTES);
		return;
	}
	Report3D__FPCce("LoadTextureCitadel %s\n", name);
	IDirectDrawSurface7* surface = NULL;
	LH3DCT*              ct = LH3DCT::CreateFromDisk(name);
	if (ct != NULL)
	{
		DDSURFACEDESC2 desc;
		memset(&desc, 0, sizeof(desc));
		desc.dwSize = sizeof(desc);
		desc.dwFlags = CITADEL_TEXTURE_DESC_FLAGS;
		desc.dwWidth = CITADEL_TEXTURE_SIZE;
		desc.dwHeight = CITADEL_TEXTURE_SIZE;
		desc.ddsCaps.dwCaps = CITADEL_TEXTURE_CAPS;
		desc.dwMipMapCount = 1;
		desc.ddpfPixelFormat = LH3DVRAMTex::g_pixel_format[CITADEL_TEXTURE_PIXEL_FORMAT].Format;
		LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&desc, &surface, NULL);
		if (surface != NULL && surface->Blt(NULL, ct->Surface, NULL, DDBLT_WAIT, NULL) == DD_OK)
		{
			surface->Lock(NULL, &desc, CITADEL_TEXTURE_LOCK, NULL);
			uint16_t* bits = (uint16_t*)desc.lpSurface;
			if (bits != NULL)
			{
				long pitch = desc.lPitch / 2;
				if (!LH3DTexture::g_b_use_565)
				{
					for (long y = 0; y < (long)desc.dwHeight; y++)
					{
						for (long x = 0; x < (long)desc.dwWidth; x++)
						{
							uint16_t pixel = bits[y * pitch + x];
							*data++ = (pixel >> 10) << 3;
							*data++ = (pixel >> 5) << 3;
							*data++ = pixel << 3;
						}
					}
				}
				else
				{
					for (long y = 0; y < (long)desc.dwHeight; y++)
					{
						for (long x = 0; x < (long)desc.dwWidth; x++)
						{
							uint16_t pixel = bits[y * pitch + x];
							*data++ = (pixel >> 11) << 3;
							*data++ = (pixel >> 6) << 3;
							*data++ = pixel << 3;
						}
					}
				}
			}
			surface->Unlock(NULL);
		}
	}
	if (surface != NULL)
	{
		surface->Release();
	}
	surface = NULL;
	if (ct != NULL)
	{
		ct->Release();
	}
}

NewCollide::Obj::Obj(float radius, LHPoint* position)
	: position(*position), radius(radius), r2(radius * radius), angle(0.0f), BoundingBox(radius, 0.0f, radius),
	  IteratorList(NULL)
{
}

NewCollide::Obj::Obj(LHPoint* position, float bb_x, float bb_z, float angle)
{
	if (bb_x < NEW_COLLIDE_MIN_SIZE)
	{
		bb_x = NEW_COLLIDE_MIN_SIZE;
	}
	if (bb_z < NEW_COLLIDE_MIN_SIZE)
	{
		bb_z = NEW_COLLIDE_MIN_SIZE;
	}
	this->position = *position;
	r2 = bb_x * bb_x + bb_z * bb_z;
	radius = sqrt(r2);
	this->angle = angle;
	BoundingBox = LHPoint(bb_x, 0.0f, bb_z);
	IteratorList = NULL;
	CreateList();
}

NewCollide::Obj::~Obj()
{
	if (g_collide_del_callback != NULL)
	{
		g_collide_del_callback(this);
	}
	if (IteratorList != NULL)
	{
		delete IteratorList;
		IteratorList = NULL;
	}
}

NewCollide::~NewCollide()
{
	if (obj != NULL)
	{
		delete obj;
		obj = NULL;
	}
}

void ClearAllStuff()
{
	EclairagePublic* light = EclairagePublic::g_first;
	while (light != NULL)
	{
		EclairagePublic* dead = light;
		light = light->Next;
		dead->Release();
	}
	RootsPile* pile = RootsPile::g_first;
	while (pile != NULL)
	{
		RootsPile* dead = pile;
		pile = pile->Next;
		delete dead;
	}
}
