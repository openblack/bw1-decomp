#include "LoadingScreen.h"

#include <ctype.h> /* For iswspace */
#include <stdio.h> /* For swprintf */
#include <wchar.h> /* For wcscpy, wcslen */
#include <windows.h>
#include <mmsystem.h> /* For timeGetTime */

#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>

#include <Lionhead/LH3DLib/development/Bink.h>          /* For BinkGoto, BinkService */
#include <Lionhead/LH3DLib/development/LH3DColor.h>     /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DRender.h>    /* For LH3DRender, RenderLoadingFrame */
#include <Lionhead/LH3DLib/development/LH3DTech.h>      /* For LH3DTech::g_info_transform */
#include <Lionhead/LH3DLib/development/LH3DText.h>      /* For GatheringText */
#include <Lionhead/LH3DLib/development/LHVideoPlayer.h> /* For LHVideoPlayer */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>             /* For LHSys */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHRegistry.h>           /* For RegistryRetrieveULong */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>            /* For LHSPrintfW */

#include "alexmfc.h"       /* For SetupThing, GetBigTextSize */
#include "Game.h"          /* For GGame */
#include "HelpText.h"      /* For HelpTextDataBase */
#include "PlayerProfile.h" /* For PlayerProfile */

static int  LoadingBarDuration = 15000;
static bool LoadingScreenActive = true;

static char16_t      TipText[0x800];
static float         unused;
static int           LoadingTime = 0;
static int           unused2 = 0;
static unsigned long TipHelpTextIndex = 0;
LHVideoPlayer*       GGame::TipVideo = NULL;
static bool          TipShowing = false;
static int           TipNumber = 0;

void ReinitLoadingScreen()
{
	RenderLoadingFrame(true);
	LoadingTime = 0;
}

void MakeTipVideo()
{
	if (GGame::TipVideo != NULL)
	{
		delete GGame::TipVideo;
		GGame::TipVideo = NULL;
	}
	GGame::TipVideo = new ("C:\\dev\\MP\\Black\\LoadingScreen.cpp", 68) LHVideoPlayer;
	GGame::TipVideo->Init(".\\data\\tips.bik", true, true);
	GGame::TipVideo->CurrentFrame = -1;
	if (GGame::TipVideo->Bink != NULL)
	{
		BinkGoto(GGame::TipVideo->Bink, TipNumber + 1, 0);
	}
	GGame::TipVideo->UnpackNextFrame();
	LH3DRender::StartFrame();
	GGame::TipVideo->CopyToTextures();
	LH3DRender::FinishFrame();
	LH3DRender::StartFrame();
	LH3DRender::FinishFrame();
}

void ClearTipVideo()
{
	if (GGame::TipVideo != NULL)
	{
		delete GGame::TipVideo;
		GGame::TipVideo = NULL;
	}
}

void DrawLoading(float fade, float progress)
{
	if (fade > 0.0f)
	{
		if (GGame::TipVideo == NULL)
		{
			MakeTipVideo();
		}
		if (GGame::TipVideo != NULL)
		{
			float videoFade;
			if ((fade - 0.5f) * 2.0f > 0.0f)
			{
				videoFade = (fade - 0.5f) * 2.0f < 1.0f ? (fade - 0.5f) * 2.0f : 1.0f;
			}
			else
			{
				videoFade = 0.0f;
			}
			float alpha;
			if (fade * 2.0f > 1.0f)
			{
				alpha = 1.0f;
			}
			else
			{
				alpha = fade * 2.0f;
			}

			int screenWidth = LHSys::TheSystem.screen.width;
			int screenHeight = LHSys::TheSystem.screen.height;
			int textLeft = screenWidth * 0.125f;
			int textRight = screenWidth * 0.875f;
			int textTop = screenWidth * 0.6f;
			int textBottom = screenHeight * 0.95f;
			int videoX = screenWidth * 0.18f;
			int videoY = screenHeight * 0.05f;
			int videoWidth = screenWidth * 0.64f;
			int videoHeight = screenHeight * 0.64f;
			int alphaByte = alpha * 255.0f;

			LH3DRender::g_mode_cleaning = 1;
			LHSys::TheSystem.mouse.SetCursor(NULL, LH_MOUSE_IMAGE_TYPE_0x01, 0);
			GatheringText* font = GatheringText::gamefont;
			LH3DRender::StartFrame();
			SetupThing::DrawAlpha = alphaByte;

			if (GGame::TipVideo->BlurMaterial != NULL)
			{
				SetupThing::DrawBox(0, 0, screenWidth, screenHeight, 1.0f / 64.0f, 1.0f / 64.0f,
				                    GGame::TipVideo->BlurWidth / 256.0f - 1.0f / 64.0f,
				                    GGame::TipVideo->BlurHeight / 256.0f - 1.0f / 64.0f, GGame::TipVideo->BlurMaterial,
				                    &LH3DColor(200, 200, 200, alphaByte), 0, -40960, 40960, false, 100.0f);
				SetupThing::DrawBox(0, screenHeight / 2, screenWidth, screenHeight, 0, 0, 0xFF000000, 0xFF000000, 0, 0);
				if (videoFade < 1.0f)
				{
					SetupThing::DrawBox(videoX, videoY, videoX + videoWidth, videoY + videoHeight, 1.0f / 64.0f,
					                    1.0f / 64.0f, GGame::TipVideo->BlurWidth / 256.0f - 1.0f / 64.0f,
					                    GGame::TipVideo->BlurHeight / 256.0f - 1.0f / 64.0f,
					                    GGame::TipVideo->BlurMaterial, &LH3DColor(255, 255, 255, alphaByte), 0, -40960,
					                    40960, false, 100.0f);
				}
				if (videoFade > 0.0f)
				{
					GGame::TipVideo->DoDrawToScreen(LH3DColor(255, 255, 255, videoFade * 255.0f), videoX, videoY,
					                                videoWidth, videoHeight, false, false);
				}
			}
			else
			{
				GGame::TipVideo->DoDrawToScreen(LH3DColor(255, 255, 255, alphaByte), videoX, videoY, videoWidth,
				                                videoHeight, false, false);
			}

			SetupThing::DrawBox(0, textTop, screenWidth / 5, textBottom, 0, 0xA0808080, 0xA0808080, 0, 0, 0);
			SetupThing::DrawBox(screenWidth / 5, textTop, 4 * screenWidth / 5, textBottom, 0xA0808080, 0xA0808080,
			                    0xA0808080, 0xA0808080, 0, 0);
			SetupThing::DrawBox(4 * screenWidth / 5, textTop, screenWidth, textBottom, 0xA0808080, 0, 0, 0xA0808080, 0,
			                    0);

			int   fontSize = screenWidth / 20 - 2;
			float textHeight = font->DrawTextA(TipText, textLeft, textTop, textTop, textRight, textBottom, textBottom,
			                                   textTop, LH3DTech::g_info_transform.NearClip * 1.5f, fontSize,
			                                   &LH3DColor(255, 255, 255, alphaByte), 1, 0, 1);
			while (textHeight >= textBottom - textTop && fontSize > 8)
			{
				fontSize -= 2;
				textHeight = font->DrawTextA(TipText, textLeft, textTop, textTop, textRight, textBottom, textBottom,
				                             textTop, LH3DTech::g_info_transform.NearClip * 1.5f, fontSize,
				                             &LH3DColor(255, 255, 255, alphaByte), 1, 0, 1);
			}

			float textOffset = ((textBottom - textTop) - textHeight) * 0.5f;
			font->DrawTextA(TipText, textLeft + 2, textTop + 2, textTop + 2, textRight + 2, textBottom + 2,
			                textBottom + 2, textTop + 2 + textOffset, LH3DTech::g_info_transform.NearClip * 1.5f,
			                fontSize, &LH3DColor(0, 0, 0, alphaByte / 2), 1, 1, 1);
			font->DrawTextA(TipText, textLeft, textTop, textTop, textRight, textBottom, textBottom,
			                textTop + textOffset, LH3DTech::g_info_transform.NearClip * 1.5f, fontSize,
			                &LH3DColor(255, 255, 255, alphaByte), 1, 1, 1);

			float                versionSize = LHSys::TheSystem.screen.width * 0.02f;
			static char16_t      versionText[0x100] = {0};
			static unsigned long gameVersion = 0;
			static unsigned long developerPatch = 0;
			if (versionText[0] == 0)
			{
				LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_0x00);
				if (RegistryRetrieveULong("Software\\Lionhead Studios Ltd\\Black & White", "GameVersion",
				                          &gameVersion) != LH_OK)
				{
					gameVersion = 100;
				}
				if (RegistryRetrieveULong("Software\\Lionhead Studios Ltd\\Black & White", "IsDeveloperPatch",
				                          &developerPatch) != LH_OK)
				{
					developerPatch = 0;
				}
				swprintf(versionText, L"V%01d.%02d%s", gameVersion / 100, gameVersion % 100,
				         developerPatch ? LHSPrintfW(L" Beta %d", developerPatch).Text : L"");
			}
			uint16_t  versionScreenWidth = LHSys::TheSystem.screen.width;
			LH3DColor versionColor(200, 200, 200, alphaByte);
			uint16_t  versionScreenHeight = LHSys::TheSystem.screen.height;
			float     versionWidth = font->GetStringWidth(versionText, wcslen(versionText), versionSize);
			font->DrawTextRaw(versionText, wcslen(versionText), versionScreenWidth - versionWidth - 2.0f,
			                  versionScreenHeight - versionSize - 2.0f, LH3DTech::g_info_transform.NearClip * 1.5f,
			                  versionSize, &versionColor, 0, NULL, 0.0f, 4096.0f);

			int left = videoX - 1;
			int top = videoY - 1;
			int right = videoWidth + videoX + 1;
			int bottom = videoHeight + videoY + 1;
			int border = LHSys::TheSystem.screen.width / 50;
			SetupThing::unadjust(left, top);
			SetupThing::unadjust(right, bottom);
			SetupThing::unadjustsize(border);
			float barBottom = border * 2.5f;
			float barTop = border * 1.5f;
			SetupThing::DrawBevBox(left, bottom + barTop, right, bottom + barBottom, 1, 16, -1, -1);

			float phase = progress - (int)progress;
			float phaseA = phase * 2.0f;
			float phaseB = (phase - 0.5f) * 2.0f;

			int barWidth = right - left + 120;
			int sweepStart = phaseA * barWidth + left - 60.0f;
			int sweepEnd = sweepStart + 120;
			sweepStart = sweepStart > left + 3 ? (sweepStart < right - 3 ? sweepStart : right - 3) : left + 3;
			sweepEnd = sweepEnd > left + 3 ? (sweepEnd < right - 3 ? sweepEnd : right - 3) : left + 3;
			SetupThing::DrawBox(left + 3, bottom + barTop + 3.0f, sweepStart, bottom + barBottom - 4.0f, 0xCDFFFFFF,
			                    0xCDFFFFFF, 0xCDFFFFFF, 0xCDFFFFFF, 0, 1);
			SetupThing::DrawBox(sweepStart, bottom + barTop + 3.0f, sweepEnd, bottom + barBottom - 4.0f, 0xCDFFFFFF, 0,
			                    0, 0xCDFFFFFF, 0, 1);

			barWidth = right - left + 120;
			sweepStart = phaseB * barWidth + left - 60.0f;
			sweepEnd = sweepStart + 120;
			sweepStart = sweepStart > left + 3 ? (sweepStart < right - 3 ? sweepStart : right - 3) : left + 3;
			sweepEnd = sweepEnd > left + 3 ? (sweepEnd < right - 3 ? sweepEnd : right - 3) : left + 3;
			SetupThing::DrawBox(left + 3, bottom + barTop + 3.0f, sweepStart, bottom + barBottom - 3.0f, 0xFF000000,
			                    0xFF000000, 0xFF000000, 0xFF000000, 0, 1);
			SetupThing::DrawBox(sweepStart, bottom + barTop + 3.0f, sweepEnd, bottom + barBottom - 3.0f, 0xFF000000, 0,
			                    0, 0xFF000000, 0, 1);
			SetupThing::DrawBox(left + 3, bottom + barTop + 3.0f, right - 4, bottom + border * 1.8f + 3.0f, 0xFF000000,
			                    0xFF000000, 0, 0, 0, 1);
			SetupThing::DrawBox(left + 3, bottom + barTop + 3.0f, border * 0.3f + (left + 3), bottom + barBottom - 4.0f,
			                    0xFF000000, 0, 0, 0xFF000000, 0, 1);

			SetupThing::DrawAlpha = alphaByte / 2;
			left -= border;
			right += border;
			top -= border;
			bottom += border;
			SetupThing::DrawBox(left, top, left + border, top + border, 48 / 256.0f, 0 / 256.0f, 54 / 256.0f,
			                    6 / 256.0f, SetupThing::ButtonMaterial, NULL, 1, -40960, 40960, false, 100.0f);
			SetupThing::DrawBox(right - border, top, right, top + border, 74 / 256.0f, 0 / 256.0f, 80 / 256.0f,
			                    6 / 256.0f, SetupThing::ButtonMaterial, NULL, 1, -40960, 40960, false, 100.0f);
			SetupThing::DrawBox(left, bottom - border, left + border, bottom, 48 / 256.0f, 26 / 256.0f, 54 / 256.0f,
			                    32 / 256.0f, SetupThing::ButtonMaterial, NULL, 1, -40960, 40960, false, 100.0f);
			SetupThing::DrawBox(right - border, bottom - border, right, bottom, 74 / 256.0f, 26 / 256.0f, 80 / 256.0f,
			                    32 / 256.0f, SetupThing::ButtonMaterial, NULL, 1, -40960, 40960, false, 100.0f);
			SetupThing::DrawBox(left + border, top, right - border, top + border, 54 / 256.0f, 0 / 256.0f, 74 / 256.0f,
			                    6 / 256.0f, SetupThing::ButtonMaterial, NULL, 1, -40960, 40960, false, 100.0f);
			SetupThing::DrawBox(left + border, bottom - border, right - border, bottom, 54 / 256.0f, 26 / 256.0f,
			                    74 / 256.0f, 32 / 256.0f, SetupThing::ButtonMaterial, NULL, 1, -40960, 40960, false,
			                    100.0f);
			SetupThing::DrawBox(left, top + border, left + border, bottom - border, 48 / 256.0f, 6 / 256.0f,
			                    54 / 256.0f, 26 / 256.0f, SetupThing::ButtonMaterial, NULL, 1, -40960, 40960, false,
			                    100.0f);
			SetupThing::DrawBox(right - border, top + border, right, bottom - border, 74 / 256.0f, 6 / 256.0f,
			                    80 / 256.0f, 26 / 256.0f, SetupThing::ButtonMaterial, NULL, 1, -40960, 40960, false,
			                    100.0f);
			left += border;
			right -= border;
			top += border;
			bottom -= border;
			SetupThing::DrawAlpha = alphaByte;
			SetupThing::DrawLine(left, top, right, top, 0xFFFFFFFF, 1, 0.0f, 100.0f);
			SetupThing::DrawLine(left, top, left, bottom, 0xFFFFFFFF, 1, 0.0f, 100.0f);
			SetupThing::DrawLine(right, top, right, bottom, 0xFFFFFFFF, 1, 0.0f, 100.0f);
			SetupThing::DrawLine(left, bottom, right, bottom, 0xFFFFFFFF, 1, 0.0f, 100.0f);

			g_enable_callbacks = false;
			LH3DRender::FinishFrame();
			LHResetFPU();
		}
	}
}

void StartTipOfTheDayText()
{
	static bool firstTip = true;
	float       fade = 0.0f;
	int         tip = (timeGetTime() >> 4) % 34;
	if (PlayerProfile::GetNumberOfProfiles() == 0)
	{
		TipNumber = 0;
	}
	else
	{
		for (TipNumber = tip + 1; TipNumber == 29 || TipNumber == 32; TipNumber = TipNumber % 34 + 1)
		{
		}
	}
	if (GGame::TipVideo == NULL)
	{
		MakeTipVideo();
	}
	TipShowing = true;
	TipHelpTextIndex = TipNumber + 5151;
	wcscpy(TipText, HelpTextDataBase::HelpTextDatabase.GetHelpText(TipHelpTextIndex));
	for (int i = 0; i < (int)wcslen(TipText); i++)
	{
		if (TipText[i] == L'$' || TipText[i] == L'\\')
		{
			for (; TipText[i] != 0; i++)
			{
				if (iswspace(TipText[i]) || TipText[i] == 0xF8FE)
				{
					break;
				}
				TipText[i] = L' ';
			}
		}
	}
	LHResetFPU();
	if (firstTip)
	{
		while (fade < 1.0)
		{
			if (GGame::TipVideo->Bink != NULL)
			{
				BinkService(GGame::TipVideo->Bink);
			}
			if (fade > 1.0f)
			{
				fade = 1.0f;
			}
			DrawLoading(fade, 0.0f);
			fade += LH3DTech::g_delta_time * 0.001f;
			LHSys::TheSystem.screen.Flip(1);
		}
		firstTip = false;
		LH3DRender::g_mode_cleaning = 0;
		LHResetFPU();
	}
}

static int PleaseWaitDelay = 5000;

void RenderLoadingFrame(bool flip)
{
	static DWORD lastTime = 0;
	if (GGame::LoadingFrameEnabled && TipShowing && LoadingScreenActive)
	{
		DWORD now = timeGetTime();
		if (LoadingTime == 0)
		{
			lastTime = now;
			LoadingTime = 1;
		}
		if (now - lastTime >= 150)
		{
			int loadingTime = LoadingTime;
			if (GGame::LoadingFrameEnabled == 1 && now - lastTime > 350)
			{
				loadingTime += 350;
			}
			else
			{
				loadingTime += now - lastTime;
			}
			LoadingTime = loadingTime;
			lastTime = now;
			if (!LHSys::TheSystem.screen.IsAppMinimized())
			{
				if (GGame::LoadingFrameEnabled == 1)
				{
					DrawLoading(1.0f, (float)LoadingTime / LoadingBarDuration);
				}
				else if (LoadingTime > PleaseWaitDelay)
				{
					LH3DRender::StartFrame();
					int alpha = (LoadingTime - PleaseWaitDelay) / 2;
					SetupThing::DrawAlpha = alpha > 0 ? (alpha < 255 ? alpha : 255) : 0;
					int screenWidth = LHSys::TheSystem.screen.width;
					int middle = LHSys::TheSystem.screen.height >> 1;
					int top = middle - 30;
					int bottom = middle + 30;
					int edge = screenWidth * 0.4f;
					SetupThing::DrawBox(-1, top, screenWidth, top - 15, 0x9F000000, 0x9F000000, 0, 0, 0, 0);
					SetupThing::DrawBox(-1, bottom, screenWidth, bottom + 15, 0x9F000000, 0x9F000000, 0, 0, 0, 0);
					SetupThing::DrawBox(-1, top, edge, bottom, 0xFF202020, 0xFF404040, 0xFF404040, 0xFF202020, 0, 0);
					SetupThing::DrawBox(edge, top, screenWidth - edge, bottom, 0xFF404040, 0xFF404040, 0xFF404040,
					                    0xFF404040, 0, 0);
					SetupThing::DrawBox(screenWidth - edge, top, screenWidth, bottom, 0xFF404040, 0xFF202020,
					                    0xFF202020, 0xFF404040, 0, 0);
					SetupThing::DrawLine(-1, top, screenWidth, top, 0xF0F0F0F0, 0, 0.0f, 100.0f);
					SetupThing::DrawLine(-1, bottom, screenWidth, bottom, 0xF0F0F0F0, 0, 0.0f, 100.0f);
					char16_t* text = HelpTextDataBase::HelpTextDatabase.GetHelpText(6775);
					SetupThing::DrawTextWrap(101, 201, 701, 401, 401, true, text, GetBigTextSize(),
					                         &LH3DColor(0, 0, 0, 255), true, false);
					SetupThing::DrawTextWrap(100, 200, 700, 400, 400, true, text, GetBigTextSize(),
					                         &LH3DColor(255, 255, 255, 255), true, false);
					LH3DRender::FinishFrame();
				}
			}
			if (flip)
			{
				LHSys::TheSystem.screen.Flip(1);
			}
			LH3DRender::Direct3DDevice7->Clear(0, NULL, D3DCLEAR_TARGET | D3DCLEAR_ZBUFFER, 0, 1.0f, 0);
			LH3DRender::g_mode_cleaning = 0;
			LHResetFPU();
		}
	}
}
