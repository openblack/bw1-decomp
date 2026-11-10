#include "logo.h"

#include <math.h>   /* For cos, exp, sin, sqrt, tan */
#include <stdio.h>  /* For FILE, fclose, fopen, fread */
#include <stdlib.h> /* For abs, qsort */
#include <string.h> /* For strcat */
#include <wchar.h>  /* For wcscpy, wcslen */

#include <Lionhead/LH3DLib/development/LH3DFade.h>     /* For class LH3DFade */
#include <Lionhead/LH3DLib/development/LH3DMaterial.h> /* For struct LH3DMaterial */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>     /* For struct LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DObject.h>   /* For class LH3DObject */
#include <Lionhead/LH3DLib/development/LH3DP3.h>       /* For struct LH3DP3 */
#include <Lionhead/LH3DLib/development/LH3DRender.h>   /* For class LH3DRender */
#include <Lionhead/LH3DLib/development/LH3DSprite.h>   /* For struct LH3DSprite */
#include <Lionhead/LH3DLib/development/LH3DTech.h>     /* For class LH3DTech */
#include <Lionhead/LH3DLib/development/LH3DText.h>     /* For struct GatheringText */
#include <Lionhead/LH3DLib/development/LH3DTexture.h>  /* For struct LH3DTexture */
#include <Lionhead/LH3DLib/development/LHRandom.h>     /* For Random */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>           /* For LHLoadData */
#include <Lionhead/LHLib/ver5.0/LHWin.h>               /* For NEW */

#include "alexmfc.h"    /* For SETUP_CLAMP, class SetupThing */
#include "Game.h"       /* For class GGame */
#include "GJUtils.h"    /* For class GJUtils */
#include "Interface.h"  /* For class GInterface */
#include "Object.h"     /* For class Object */
#include "ObjectInfo.h" /* For class GObjectInfo */
#include "SafeDisc.h"   /* For SafeDiscRecord, CHECK_PROTECTION_MARKER */
#include "Temple.h"     /* For struct Temple */
#include "ControlMap.h" /* For class ControlMap */
#if defined(VERSION_BW1W130)
#include "P5Glove.h" /* For struct P5Glove */
#endif

#if defined(VERSION_BW1W130)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) < 1028 ? (line) - 1 : (line) + 8)
#endif

#if defined(VERSION_BW1W100)
static SafeDiscRecord Record = {
	/* Seed */ {{0x2d, 0x7b, 0x56, 0x13, 0xd5, 0x73, 0x24, 0x13, 0xe2, 0xe3, 0xde, 0x26,
                 0xf7, 0x0e, 0x58, 0x3a, 0xb1, 0xec, 0x59, 0x4d, 0xe1, 0x67, 0xb0, 0x60}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x3e, // runtime value
	/* Unk1 */ {0x5e, 0x5d, 0x87, 0x69, 0xd9, 0xb3, 0x9a, 0x94, 0x54, 0x0a, 0xae, 0xc3, 0xcf, 0x60, 0xc1, 0xec,
                0x4a, 0xb7, 0xd4, 0x6c, 0xb9, 0x16, 0xe8, 0xeb, 0x41, 0x64, 0xfb, 0xbd, 0xec, 0xf5, 0x0e},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x81, 0xf0, 0xee, 0x06, 0xba, 0x0e, 0x8d, 0x3c, 0xd6, 0xa7, 0x8d, 0x1d, 0xb7, 0xd3, 0x6c, 0xde},
	/* ANext */ 0x96aa0f09,    // runtime value
	/* BWrapVA */ 0xa935eaae,  // runtime value
	/* CDesc */ 0xbc4a41c0,    // runtime value
	/* DRuntime */ 0xd160e368, // runtime value
	/* EStatic */ 0xe3720765,
	/* FStatic */ 0xf6c88292,
	/* Cookie */ {0x34, 0x32, 0x78, 0x83, 0xd5}, // runtime value
	/* Pad3 */ 0x00,
};
#elif defined(VERSION_BW1W110)
static SafeDiscRecord Record = {
	/* Seed */ {{0x0a, 0x55, 0x91, 0x50, 0xa2, 0x65, 0xef, 0x50, 0x94, 0x63, 0x5c, 0xa1,
                 0x7e, 0xb2, 0xec, 0xf1, 0x2d, 0x54, 0x45, 0x42, 0x32, 0xa9, 0xd6, 0x92}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x43, // runtime value
	/* Unk1 */ {0x53, 0xf9, 0x33, 0x51, 0xa8, 0x8a, 0x84, 0x5b, 0xfd, 0x1b, 0xd5, 0x65, 0x52, 0xad, 0x25, 0x6d,
                0xa7, 0x3e, 0x76, 0x18, 0xb1, 0xd0, 0xc6, 0x20, 0x51, 0x61, 0x17, 0x29, 0xf6, 0xa9, 0x67},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x5d, 0x55, 0x63, 0xfa, 0x0d, 0x04, 0x5f, 0x25, 0x93, 0x31, 0x1c, 0x90, 0x10, 0x93, 0x31, 0x58},
	/* ANext */ 0x8291110a,    // runtime value
	/* BWrapVA */ 0xecc3875c,  // runtime value
	/* CDesc */ 0x3d51ee86,    // runtime value
	/* DRuntime */ 0x8d04a855, // runtime value
	/* EStatic */ 0x00000000,
	/* FStatic */ 0x2c3a2a04,
	/* Cookie */ {0x0e, 0xf8, 0x53, 0x7f, 0x18}, // runtime value
	/* Unk3 */ {0x4d, 0xe5, 0xcf, 0xd6, 0xc0, 0x5a, 0xcd, 0xa4},
};
#elif defined(VERSION_BW1W120)
static SafeDiscRecord Record = {
	/* Seed */ {{0x43, 0xd7, 0x6a, 0xff, 0x6e, 0x3c, 0x0e, 0x85, 0xa5, 0x00, 0x64, 0x7a,
                 0x49, 0x01, 0xdd, 0x0b, 0xe9, 0x01, 0x39, 0x90, 0x97, 0x02, 0x85, 0x16}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x38,
	/* Unk1 */ {0x03, 0xe1, 0x9c, 0xdf, 0x03, 0x4d, 0x21, 0x81, 0x04, 0xa9, 0xa7, 0x2a, 0x05, 0x35, 0x2c, 0xce,
                0x05, 0x91, 0xb2, 0x00, 0x00, 0x00, 0x00, 0x31, 0x97, 0x39, 0x3b, 0x14, 0x07, 0x59, 0xbd, 0xbf,
                0x07, 0xa5, 0x43, 0x30, 0xb2, 0xc6, 0x03, 0x22, 0xdf, 0xbe, 0xc8, 0x05, 0x09, 0x2d, 0x4e, 0xa8,
                0x09, 0x89, 0xd4, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9f, 0xe5, 0xb5, 0xe6, 0xdd,
                0x19, 0xc4, 0x5d, 0xa1, 0x1d, 0x82, 0xa8, 0x84, 0x26, 0x44, 0xf7, 0x8a, 0x0d, 0x21, 0xf5, 0x8a,
                0x0d, 0x21, 0xf5, 0x2e, 0x0e, 0x8d, 0x7b, 0xd0, 0x0e, 0xe9, 0x01},
};
#elif defined(VERSION_BW1W130)
static SafeDiscRecord Record = {
	/* Seed */ {{0xe3, 0xe1, 0x92, 0xff, 0x68, 0x67, 0x77, 0xf3, 0xd3, 0x21, 0xe5, 0x0c,
                 0xa5, 0x43, 0xdf, 0xe6, 0x7f, 0x65, 0xba, 0xd9, 0x4f, 0x87, 0x81, 0xcc}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x1f,
	/* Unk1 */ {0xa9, 0x6c, 0xbf, 0xf3, 0xca, 0x4b, 0xb2, 0xc7, 0xec, 0x56, 0xa5, 0x9a, 0x0e, 0x3c, 0x98, 0x68,
                0x30, 0x1b, 0x8b, 0x00, 0x00, 0x00, 0x00, 0x0d, 0x42, 0xd0, 0x7b, 0x12, 0x74, 0xcd, 0x72, 0xe7,
                0x95, 0xa8, 0x65, 0xe0, 0x57, 0x3a, 0x04, 0x54, 0x56, 0x70, 0x58, 0x89, 0xd9, 0xd2, 0x4b, 0x5e,
                0xfb, 0x39, 0x3e, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x52, 0x09, 0x54, 0xb4, 0x1c,
                0x77, 0x27, 0x5b, 0x6c, 0xd0, 0x0c, 0x8f, 0x08, 0xa3, 0x9b, 0xba, 0x4c, 0xc6, 0xde, 0xf1, 0x4c,
                0xc6, 0xde, 0xf1, 0x22, 0xe8, 0xa5, 0xe4, 0xf6, 0x09, 0x83, 0xd7},
};
#elif defined(VERSION_BW1WCI)
static SafeDiscRecord Record = {
	/* Seed */ {{0xf4, 0x5c, 0x33, 0x6f, 0xd4, 0x16, 0xb5, 0x6f, 0xa8, 0x5a, 0xe0, 0xde,
                 0x3c, 0x34, 0xfb, 0x4d, 0xd5, 0x73, 0xcd, 0xbc, 0xc4, 0xd0, 0x00, 0x2c}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xa9,
	/* Unk1 */ {0x8a, 0x67, 0x0a, 0xa1, 0xe7, 0x9a, 0x79, 0x95, 0x44, 0xce, 0xe8, 0x89, 0xa1, 0x01, 0x58, 0x7c,
                0xfe, 0x34, 0xc7, 0x30, 0xb8, 0xae, 0x36, 0x84, 0x9a, 0xfa, 0xa5, 0x89, 0x49, 0x6c, 0x14, 0x00,
                0x00, 0x00, 0x00, 0x80, 0xf2, 0x99, 0xf0, 0x34, 0x2c, 0x69, 0x62, 0x28, 0x89, 0x9c, 0xd1, 0xb0,
                0x37, 0xac, 0x03, 0x13, 0x43, 0x03, 0xb0, 0xe4, 0x82, 0x17, 0x1f, 0x5a, 0xfc, 0x69, 0x8e, 0x3d,
                0x05, 0xfe, 0xfd, 0x10, 0x00, 0x00, 0x00, 0x74, 0x69, 0xf5, 0xe1, 0x87, 0x02, 0x7c, 0x72, 0xf7,
                0x6f, 0x47, 0x11, 0x81, 0x75, 0xcc, 0x2b, 0xd6, 0x99, 0xb4, 0x2a, 0x13, 0x7f, 0xe7, 0x8b},
};
#endif

class CImmMouse;

// BW1W120 00d18588
extern CImmMouse* ImmersionMouse;
// BW1W120 00c37c00 BW1M119 null
extern bool32_t g_b_p4_improvement;
// BW1W120 00ea1aa4 BW1M119 null
extern LH3DMaterial* g_mat_p4;
// BW1W120 00ea1aac BW1M119 null
extern LH3DMaterial* g_mat_p4t;

// BW1W120 005f8960 BW1M119 inlined
float CosineEase(float t);
// BW1W120 005f89b0 BW1M119 0110dbd0
int compfunc(const void* a, const void* b);
// BW1W120 005f89d0 BW1M119 null
int compdepth(const void* a, const void* b);
// BW1W120 005fa120 BW1M119 null
int GetRainbowColour(float time);
// BW1W120 005fa230 BW1M119 null
void GetCirclePosition(LHPoint* position, int index, int count, float radius);
// BW1W120 005fa260 BW1M119 null
void InitStarSprites();
// BW1W120 005fa360 BW1M119 null
void ReleaseStarSprites();
// BW1W120 005fa370 BW1M119 null
void InitCameraSplines();
// BW1W120 005fa480 BW1M119 null
bool UpdateCameraSplineTime(float* time, bool restart);
// BW1W120 005fa530 BW1M119 null
void GetCameraSplinePosition(float time, LHPoint* position, float scale);

#define LOGO_SIZE             64
#define LOGO_PARTICLES        (LOGO_SIZE * LOGO_SIZE)
#define LOGO_SCREEN_SCALE     240
#define LOGO_USER_NAME_LENGTH 128
#define LOGO_TEMP_PATH_LENGTH 239
#define LOGO_BRIGHT_LEVEL     0x80
#define STAR_SPRITES          100
#define STAR_POSITIONS        1000
#define CAMERA_SPLINE_KEYS    8
#define CAMERA_SPLINE_RANDOM  6

LHLinkedList<LH3DObject*>  DanVortexObject3DContainer::Objects;
DanVortexObject3DContainer DanVortexObject3DContainer::Container;

static bool Finished = false;

float CosineEase(float t)
{
	if (t < 0.0f)
	{
		return 0.0f;
	}
	if (t > 1.0f)
	{
		return 1.0f;
	}
	return (1.0f - (float)cos(t * PI_F)) * 0.5f;
}

int compfunc(const void* a, const void* b)
{
	return (((LH3DSprite*)a)->colour.GetColor() & 0xff) - (((LH3DSprite*)b)->colour.GetColor() & 0xff);
}

int compdepth(const void* a, const void* b)
{
	return ((LH3DSprite*)a)->pos.z - ((LH3DSprite*)b)->pos.z;
}

void RunAlexFX(int stage)
{
	if (LHSys::TheSystem.screen.IsAppMinimized())
	{
		Finished = true;
		return;
	}

	LHPoint              cameraPos(0.0f, 0.0f, 100.0f);
	static LHCoord       mouseMove;
	static LH3DTexture*  texture;
	static LH3DMaterial* material;
	static LH3DMaterial* brightMaterial;
	static float*        sizes;
	static wchar_t       userName[256];
	static uint8_t       logoImage[LOGO_SIZE][LOGO_SIZE][3];
	static LH3DSprite*   sprites;
	static LHPoint*      homePositions;
	static LHPoint*      velocities;
	static float         speed;
	static LH3DObject*   sky;
	static float         logoTime = 0.0f;
	static bool          defaultLogo = false;

	if (stage == ALEX_FX_STAGE_INIT)
	{
		LH3DTech::UpdateCamera(cameraPos, LHPoint(0.0f, 0.0f, 0.0f));
		texture = LH3DTexture::Create("data\\textures\\gatheringtext.raw",
		                              LH3D_TEXTURE_TYPE_FILE | LH3D_TEXTURE_FLAGS_ALPHA, 0, NULL);
		material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, texture);
		brightMaterial = LH3DRender::CreateMaterial(
			LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ, texture);
		sizes = NEW(97) float[LOGO_PARTICLES];
		userName[0] = 0;
		if (((GetTickCount() / 1000) & 3) == 0)
		{
			char path[256];
			GetTempPathA(LOGO_TEMP_PATH_LENGTH, path);
			strcat(path, "userlogo.raw");
			FILE* file = fopen(path, "rb");
			if (file != NULL)
			{
				for (int y = 0; y < LOGO_SIZE; y++)
				{
					for (int x = 0; x < LOGO_SIZE; x++)
					{
						uint8_t grey;
						fread(&grey, 1, 1, file);
						logoImage[y][x][0] = logoImage[y][x][1] = logoImage[y][x][2] = grey;
					}
				}
				fread(userName, sizeof(wchar_t), LOGO_USER_NAME_LENGTH, file);
				userName[LOGO_USER_NAME_LENGTH] = 0;
				fclose(file);
			}
		}
		if (userName[0] == 0)
		{
			defaultLogo = true;
			wcscpy(userName, L"  ");
			LHLoadData("data\\lhlogo.raw", logoImage, sizeof(logoImage), NULL);
		}
		else
		{
			defaultLogo = false;
		}
		sprites = LH3DSprite::Create(LOGO_PARTICLES, true);
		mouseMove = LHCoord(0, 0);
		homePositions = NEW(135) LHPoint[LOGO_PARTICLES];
		velocities = NEW(136) LHPoint[LOGO_PARTICLES];
		speed = 1.0f;
		int index = 0;
		for (int x = 0; x < LOGO_SIZE; x++)
		{
			for (int y = 0; y < LOGO_SIZE; y++)
			{
				float   depth = Random(70.0f, 130.0f);
				LHCoord screen;
				screen.x = (LHSys::GetScreen().Width() >> 1) +
				           (x - LOGO_SIZE / 2) * LHSys::GetScreen().Width() / LOGO_SCREEN_SCALE;
				screen.y = (LHSys::GetScreen().Height() >> 1) +
				           (y - LOGO_SIZE / 2) * LHSys::GetScreen().Width() / LOGO_SCREEN_SCALE;
				LH3DTech::Get3DPointFromScreen(screen, sprites[index].pos, depth);
				int red = logoImage[y][x][0];
				int green = logoImage[y][x][1];
				int blue = logoImage[y][x][2];
				sprites[index].colour = 0xff000000 + (red << 16) + (green << 8) + blue;
				sprites[index].material = green < LOGO_BRIGHT_LEVEL ? material : brightMaterial;
				sprites[index].SetFrame(5);
				sprites[index].SetRotation(Random(0.0f, TWO_PI));
				sizes[index] = depth / Random(200.0f, 320.0f);
				sprites[index].SetSize(sizes[index]);
				index++;
			}
		}
		qsort(sprites, LOGO_PARTICLES, sizeof(LH3DSprite), compfunc);
		for (int i = 0; i < LOGO_PARTICLES; i++)
		{
			float size = sprites[i].Size;
			sizes[i] = size;
			homePositions[i] = sprites[i].pos;
			velocities[i] = LHPoint(0.0f, 0.0f, 0.0f);
		}
		sky = LH3DObject::Create(LH3DObject::STATIC);
		sky->SetMesh(LH3DMesh::CreateFromHD("data\\D_SKY.l3d", false), NULL, NULL);
		sky->SetDynamicLighting(false);
		logoTime = 0.0f;
		Finished = false;
		g_enable_callbacks = false;
		LH3DRender::StartFrame();
		LH3DRender::FinishFrame();
		g_enable_callbacks = true;
		LHSys::TheSystem.mouse.UpdateDeltaPos();
		LHSys::TheSystem.mouse.ClearDeltaPos();
		return;
	}

	if (stage == ALEX_FX_STAGE_RELEASE)
	{
		sky->Release();
		sky = NULL;
		material->Release();
		material = NULL;
		brightMaterial->Release();
		brightMaterial = NULL;
		texture->Release();
		texture = NULL;
		sprites->Release();
		sprites = NULL;
		delete sizes;
		delete homePositions;
		delete velocities;
		sizes = NULL;
		LH3DRender::g_mode_cleaning = LH3D_CLEANING_MODE_SCREEN;
		return;
	}

	if (stage != ALEX_FX_STAGE_UPDATE)
	{
		return;
	}

	if (Finished)
	{
		Sleep(200);
		return;
	}

	LH3DTech::SetNearClipping(0.1f);
	LH3DRender::g_mode_cleaning = LH3D_CLEANING_MODE_ZBUFFER;
	LHPoint focus(0.0f, 0.0f, 0.0f);
	if (logoTime == 0.0f)
	{
		logoTime = 0.001f;
	}
	else
	{
		logoTime += LH3DTech::g_delta_time * speed * 0.0011f;
	}

	int fade = 0;
	if (logoTime < 12.0f)
	{
		fade = 255.0f - (logoTime * (1.0f / 12.0f)) * 255.0f;
	}
	if (logoTime > 31.0f)
	{
		fade = 255.0f - (33.0f - logoTime) * 127.5f;
	}
	LH3DFade::g_color = LH3DColor(0, 0, 0, SETUP_CLAMP(fade, 0, 255));

	float approach = SETUP_CLAMP((logoTime - 15.0f) * (1.0f / 11.0f), 0.0f, 1.0f);
	float zoom = CosineEase(approach);
	float distance =
		GJUtils::Linterp(SETUP_CLAMP((15.0f - logoTime) * (1.0f / 15.0f), 0.0f, 1.0f) * 15.0f + 10.0f, 100.0f, zoom);
	LHPoint pos;
	pos = LHPoint(sin(logoTime * 0.352532 + 2.0), cos(3.0 - logoTime * 0.26793), sin(logoTime * 0.15161 + 7.0)) *
	      distance;
	pos += (cameraPos - pos) * zoom;
	float flash = 1.0f - (logoTime - 30.0f) * 0.5f;
	flash = SETUP_CLAMP(flash, -2.0f, 1.0f);
	if (flash < 1.0f)
	{
		focus -= pos * (1.0f - flash);
	}
	pos *= flash;

	LH3DRender::StartFrame();
	LH3DTech::UpdateCamera(pos, focus);
	LH3DRender::SetMaterial(material, 0);
	float screenWidth = LHSys::GetScreen().Width();
	float screenHeight = LHSys::GetScreen().Height();
	sky->SetNeedClipping(true);
	sky->SetDrawWithGlobalAlpha(true);
	float fadeIn = logoTime - 22.0f;
	float fadeOut = 1.0f - (logoTime - 33.0f);
	fadeIn = SETUP_CLAMP(logoTime > 33.0f ? fadeOut : fadeIn, 0.0f, 1.0f);
	int skyFade = (logoTime - 22.0f) * 50.0f;
	skyFade = SETUP_CLAMP(skyFade, 0, 190);
	sky->SetColorSpecular(LH3D_BLEND_COLOR(0xffffff, 0, skyFade) + ((160 + 95 * skyFade / 256) << 24), 0);
	sky->SetPosition(0.0f, 0.0f, 0.0f);
	sky->Draw();
	LHSys::TheSystem.mouse.SetCursor(NULL, LH_MOUSE_IMAGE_TYPE_HIDDEN, 0);
	int alpha = (flash + 1.0f) * 255.0f;
	alpha = SETUP_CLAMP(alpha, 0, 255);
	if (flash <= -2.0f)
	{
		Finished = true;
	}
	float sizeScale = (zoom * zoom) * (zoom * zoom);
	sizeScale = sizeScale * sizeScale * 1.54f + 1.0f;

	LHSys::TheSystem.mouse.UpdateDeltaPos();
	LHCoord delta = LHSys::TheSystem.mouse.AccumDelta;
	LHCoord mouse = LHSys::TheSystem.mouse.Pos();
	int     wheel = LHSys::TheSystem.mouse.MouseWheelAccum;
	LHSys::TheSystem.mouse.AccumDelta.Set(0, 0);
	LHSys::TheSystem.mouse.MouseWheelAccum = 0;
#if defined(VERSION_BW1W130)
	if (LHSys::TheSystem.GloveActive)
	{
		P5Glove::UpdatePosition();
		delta.x = P5Glove::Movement.x;
		delta.y = P5Glove::Movement.y;
		mouse = P5Glove::Position;
		wheel = P5Glove::Movement.z * -5.0f;
	}
#endif
	mouseMove.x = (delta.x - mouseMove.x) * 0.1f + mouseMove.x;
	mouseMove.y = (delta.y - mouseMove.y) * 0.1f + mouseMove.y;
	wheel = SETUP_CLAMP(wheel, -240, 240);
	speed *= exp(wheel * (1.0f / 1500.0f));
	speed = SETUP_CLAMP(speed, 0.1f, 1.0f);
	float dt = LH3DTech::g_delta_time * 0.001f;
	float damping = exp(LH3DTech::g_delta_time * -0.001f);

	if (mouseMove.x != 0 || mouseMove.y != 0)
	{
		int radius = LHSys::GetScreen().Width() / 10;
		LH3DTech::g_current_matrix = &LH3DTech::g_world_to_clipping;
		for (int i = 0; i < LOGO_PARTICLES; i++)
		{
			int   x;
			int   y;
			float depth;
			if (LH3DTech::ProjectPoint(&sprites[i].pos, &x, &y, &depth) == 2)
			{
				mouseMove.x = SETUP_CLAMP(mouseMove.x, -20, 20);
				mouseMove.y = SETUP_CLAMP(mouseMove.y, -20, 20);
				int dx = x - mouse.x;
				if (abs(dx) < radius)
				{
					int dy = y - mouse.y;
					if (abs(dy) < radius)
					{
						int   distanceSq = dy * dy + dx * dx;
						float push = 1.0 - sqrt(distanceSq) / radius;
						if (push > 0.0f)
						{
							push *= 4.0f;
							LHCoord pushed;
							pushed.x = mouseMove.x * push + x;
							pushed.y = mouseMove.y * push + y;
							LHPoint point;
							LH3DTech::Get3DPointFromScreen(pushed, point, depth);
							velocities[i] += (point - sprites[i].pos) * dt * 100.0f;
							sprites[i].pos = point;
						}
					}
				}
			}
		}
	}

	uint32_t alphaBits = alpha << 24;
	for (int i = 0; i < LOGO_PARTICLES; i++)
	{
		velocities[i] -= (sprites[i].pos - homePositions[i]) * dt * 10.01f;
		velocities[i] *= damping;
		sprites[i].pos += velocities[i] * dt;
		sprites[i].colour = (sprites[i].colour.GetColor() & LH3D_COLOR_RGB_MASK) + alphaBits;
		sprites[i].SetSize(sizeScale * sizes[i]);
		sprites[i].SetRotation(Random(0.0f, TWO_PI));
		sprites[i].Draw();
	}

	GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
	float          textWidth = font->GetStringWidth(userName, wcslen(userName), screenHeight / 20.0f, 1.0f);
	font->DrawTextRaw(userName, wcslen(userName), screenWidth * 0.5f - textWidth * 0.5f, screenHeight * 0.71428573f,
	                  10.0f, screenHeight / 20.0f, &LH3DColor(0xff, 0xff, 0xff, fadeIn * 255.0f), 0, NULL, 0.0f,
	                  4096.0f);
	SetupThing::DrawAlpha = fadeIn * 255.0f;
	if (SetupThing::DrawAlpha > 0)
	{
#ifndef VERSION_BW1W100
		if (LH3DP3::IsPentium4 && g_b_p4_improvement)
		{
			float scale = LHSys::GetScreen().Width() * (1.0f / 800.0f);
			int   left = scale * 20.0f;
			int   top = LHSys::GetScreen().Height() - scale * 20.0f - scale * 104.0f;
			int   right = left + scale * 84.0f;
			int   bottom = LHSys::GetScreen().Height() - scale * 20.0f;
			SetupThing::DrawBox(left, top, right, bottom, 0x80808080, 0x80808080, 0x80808080, 0x80808080, 0, 0);
			SetupThing::DrawBox(left, top, right, bottom, 0.0f, 0.0f, 1.0f, 1.0f, g_mat_p4,
			                    &LH3DColor(0xff, 0xff, 0xff, 0xff), false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false,
			                    100.0f);
			left = scale * 11.0f;
			top = scale * 455.0f;
			right = scale * 111.0f;
			bottom = scale * 473.0f;
			SetupThing::DrawBox(left + 1, top + 1, right + 1, bottom + 1, 0.0f, 0.0f, 1.0f, 1.0f, g_mat_p4t,
			                    &LH3DColor(0, 0, 0, 0xff), false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
			SetupThing::DrawBox(left, top, right, bottom, 0.0f, 0.0f, 1.0f, 1.0f, g_mat_p4t,
			                    &LH3DColor(0xff, 0xff, 0xff, 0xff), false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false,
			                    100.0f);
		}
#endif
		if (GatheringText::bubmat != NULL && ImmersionMouse != NULL)
		{
			static bool32_t immersionStarted = false;
			if (!immersionStarted)
			{
				immersionStarted = true;
				GInterface::ActualStartImmersion(IMMERSION_EFFECT_TYPE_TRADEMARK, 0x80000000);
			}
			float scale = LHSys::GetScreen().Width() * 0.001171875f;
			int   centreY = LHSys::GetScreen().Height() - scale * 40.0f;
			int   centreX = LHSys::GetScreen().Width() - scale * 110.0f;
			int   bottom = centreY + scale * 32.0f;
			int   right = centreX + scale * 102.0f;
			int   top = centreY - scale * 32.0f;
			int   left = centreX - scale * 102.0f;
			SetupThing::DrawBox(left, top, right, bottom, 0x80808080, 0x80808080, 0x80808080, 0x80808080, 0, 0);
			SetupThing::DrawBox(left, top, right, bottom, 0.25f, 0.75f, 1.0f, 1.0f, GatheringText::bubmat,
			                    &LH3DColor(0xff, 0xff, 0xff, 0xff), false, -SETUP_NO_CLIP, SETUP_NO_CLIP, false,
			                    100.0f);
		}
		if (defaultLogo)
		{
			GatheringText::gamefont[GAME_FONT_DEFAULT]->DrawTextRaw(
				L"TM", 2, (int)(LHSys::GetScreen().Width() * 0.64), (int)(LHSys::GetScreen().Height() * 0.32), 10.0f,
				LHSys::GetScreen().Width() / 70, &LH3DColor(200, 200, 200, alpha), 0, NULL, 0.0f, 4096.0f);
		}
	}
	g_enable_callbacks = false;
	LH3DRender::FinishFrame();
	LHSys::GetScreen().Flip(true);
}

void InputReset()
{
	LHSys::GetKeyboard().ClearKey();
	LHSys::TheSystem.charRing.Clear();
	LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOWN;
	LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOWN;
	LHSys::GetMouse().AccumDelta.Set(0, 0);
	LHSys::GetMouse().MouseWheelAccum = 0;
	LHSys::GetMouse().ClearDeltaPos();
	ControlMap::MouseDelta = LHCoord(0, 0);
	GGame::g_game->key_buffer.BufferedKeys = 0;
	SetupThing::RightClickCount = 0;
	SetupThing::LeftClickCount = 0;
	SetupThing::AnyDoubleClicked = false;
	SetupThing::DoubleClicked = false;
	SetupThing::RightClicked = false;
	SetupThing::MouseCaptured = false;
}

void DoLogo()
{
	RunAlexFX(ALEX_FX_STAGE_INIT);
	LHSys::TheSystem.keyboard.ClearKey();
	while (LHSys::TheSystem.keyboard.CurrentKey == 0 &&
	       !(LHSys::TheSystem.mouse.Buttons & (LH_MOUSE_BUTTON_LEFT_DOWN | LH_MOUSE_BUTTON_RIGHT_DOWN)) && !Finished)
	{
#if defined(VERSION_BW1W130)
		if (LHSys::TheSystem.GloveActive)
		{
			P5Glove::UpdateFingers();
			if (P5Glove::FingerClicks[P5_GLOVE_FINGER_INDEX] || P5Glove::FingerClicks[P5_GLOVE_FINGER_MIDDLE])
			{
				Finished = true;
			}
		}
#endif
		RunAlexFX(ALEX_FX_STAGE_UPDATE);
	}
	RunAlexFX(ALEX_FX_STAGE_RELEASE);
	while ((LHSys::TheSystem.mouse.Buttons & LH_MOUSE_BUTTON_LEFT_DOWN) ||
	       (LHSys::TheSystem.mouse.Buttons & LH_MOUSE_BUTTON_RIGHT_DOWN))
	{
		LH3DRender::StartFrame();
		LH3DRender::FinishFrame();
		LHSys::TheSystem.screen.Flip(true);
	}
	InputReset();
	Temple::FadeLevel = 0.0f;
	Temple::FadeTarget = 0.0f;
	Temple::FadeColour = 0xff000000;
	Temple::FadeCount = 0;
	CHECK_PROTECTION_MARKER(Record);
}

int GetRainbowColour(float time)
{
	int colour = (char)(((sin(time * (TWO_PI / 10.0f)) + 1.0) * 0.5) * 192.0 + 63.0) << 8;
	colour = colour + (char)(((sin(time + TWO_PI / 10.0f) + 1.0) * 0.5) * 192.0 + 63.0) << 8;
	colour += (char)(((sin((time + TWO_PI / 5.0f)) + 1.0) * 0.5) * 192.0 + 63.0);
	return colour;
}

float                StarFieldA[5];
static LH3DSprite*   StarSprites;
static LHPoint       StarPositions[STAR_POSITIONS];
static LHPoint       StarCentre(100.0f, 0.0f, 0.0f);
static LHPoint       StarOffset;
static LH3DMaterial* StarMaterial;
float                StarFieldD;
static float         CameraSplineZ[CAMERA_SPLINE_KEYS];
static float         CameraSplineY[CAMERA_SPLINE_KEYS];
static float         CameraSplineKeys[CAMERA_SPLINE_KEYS];
static float         StartTime;
static float         CurrentTime;
static float         Elapsed;

void GetCirclePosition(LHPoint* position, int index, int count, float radius)
{
	float slot = index;
	float angle = TWO_PI / count * slot;
	position->z = sin(angle) * radius;
	position->y = cos(angle) * radius;
}

void InitStarSprites()
{
	StarSprites = LH3DSprite::Create(STAR_SPRITES, true);
	for (int i = 0; i < STAR_SPRITES; i++)
	{
		float distance = Random(30.0f, 150.0f);
		float angle = Random(0.0f, TWO_PI);
		StarSprites[i].pos.x = Random(-200.0f, 0.0f);
		StarSprites[i].pos.y = ((cos(angle) * distance));
		StarSprites[i].pos.z = sin(angle) * distance;
		StarSprites[i].colour = 0x7fffffff;
		StarSprites[i].material = StarMaterial;
		StarSprites[i].SetFrame(7);
		StarSprites[i].SetRotation(Random(0.0f, TWO_PI));
		StarSprites[i].SetSize(1.0f);
	}
}

void ReleaseStarSprites()
{
	StarSprites->Release();
}

void InitCameraSplines()
{
	memset(CameraSplineZ, 0, sizeof(CameraSplineZ));
	memset(CameraSplineY, 0, sizeof(CameraSplineY));
	for (int i = 0; i < CAMERA_SPLINE_KEYS; i++)
	{
		if (i >= 2 && i < CAMERA_SPLINE_RANDOM)
		{
			CameraSplineZ[i] = Random(-100.0f, 100.0f);
			CameraSplineY[i] = Random(-100.0f, 100.0f);
		}
		if (i >= 2 && i >= CAMERA_SPLINE_RANDOM)
		{
			CameraSplineZ[i] = CameraSplineZ[i - CAMERA_SPLINE_RANDOM];
			CameraSplineY[i] = CameraSplineY[i - CAMERA_SPLINE_RANDOM];
		}
	}
	for (int key = 0; key < CAMERA_SPLINE_KEYS; key++)
	{
		switch (key)
		{
		case 0:
			CameraSplineKeys[0] = 1.0f;
			break;
		case 1:
			CameraSplineKeys[1] = 0.0f;
			break;
		case 2:
			CameraSplineKeys[2] = 0.75f;
			break;
		case 5:
			CameraSplineKeys[5] = 0.35f;
			break;
		case 6:
			CameraSplineKeys[6] = 0.0f;
			break;
		case 7:
			CameraSplineKeys[7] = 1.0f;
			break;
		default:
			CameraSplineKeys[key] = 1.0f;
			break;
		}
	}
}

bool UpdateCameraSplineTime(float* time, bool restart)
{
	bool looped = false;
	if (restart)
	{
		StartTime = timeGetTime() / 1000.0f;
	}
	CurrentTime = timeGetTime() / 1000.0f;
	Elapsed = CurrentTime - StartTime;
	float t = Elapsed / 20.0f;
	if (t > 1.0f)
	{
		t -= (int)t;
		looped = true;
	}
	*time = GJUtils::Spline(t, CAMERA_SPLINE_KEYS, CameraSplineKeys);
	return looped;
}

void GetCameraSplinePosition(float time, LHPoint* position, float scale)
{
	if (time > 1.0f)
	{
		time -= (int)time;
	}
	float z = GJUtils::Spline(time, CAMERA_SPLINE_KEYS, CameraSplineZ) * scale;
	float y = GJUtils::Spline(time, CAMERA_SPLINE_KEYS, CameraSplineY) * scale;
	position->y = y;
	position->x = 0.0f;
	position->z = z;
}

void DanVortexObject3DContainer::Add(Object* object)
{
	if (object->Game3dObject != NULL && object->info != NULL)
	{
		MESH_LIST   mesh = object->info->GetMesh();
		LHPoint*    offset = NEW(1028) LHPoint(0.0f, 0.0f, 0.0f);
		LH3DObject* object3d = LH3DObject::Create(LH3DObject::STATIC);
		object3d->SetMesh(LH3DMesh::GetPackedMesh(mesh), NULL, NULL);
		object3d->SetPosition(0.0f, 0.0f, 0.0f);
		object3d->matrix.SetYXZMatrixOnly(0.0f, 0.0f, 0.0f);
		object3d->matrix.SetScale(10.0f);
		Objects.Add(object3d);
	}
}

void DanVortexObject3DContainer::Empty()
{
	for (LH3DObject* object = Objects.GetHead(); object != NULL; object = Objects.FindNext(object))
	{
		Objects.Remove(object);
		object->Release();
	}
}
