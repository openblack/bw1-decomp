#include "CreditText.h"
#include "CreditsRoom.h"

#include <wchar.h>   /* For wcsncpy */
#include <windows.h> /* For min */

#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For struct LH3DTech */
#include <Lionhead/LH3DLib/development/LH3DText.h> /* For struct GatheringText */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>        /* For struct LHSys */

#include "alexmfc.h" /* For struct SetupThing */

#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"

LH3DColor       CreditTextItem::NextColor;
CreditTextItem* CreditTextItem::FirstItem;

static float ClipX;
static float ClipY;
static float ClipWidth;
static float ClipHeight;
#ifdef VERSION_BW1WCI
float CreditTextItem::ClipAlpha;
#else
static float ClipAlpha;
#endif
static float ClipTargetAlpha;
static float ClipFadeRate;

void CreditTextItem::Reset(float fade_time)
{
	if (fade_time == 0.0f)
	{
		TargetAlpha = 0.0f;
		Alpha = 0.0f;
		FadeRate = 0.0f;
	}
	else
	{
		TargetAlpha = 0.0f;
		FadeRate = 1.0f / fade_time;
	}
}

void CreditTextItem::Set(wchar_t* text, float x, float y, float width, float height, float size, float fade_time)
{
	if (fade_time == 0.0f)
	{
		TargetAlpha = 1.0f;
		Alpha = 1.0f;
		FadeRate = 0.0f;
	}
	else
	{
		TargetAlpha = 1.0f;
		FadeRate = 1.0f / fade_time;
	}
	int screenWidth = LHSys::TheSystem.screen.Width();
	int screenHeight = LHSys::TheSystem.screen.Height();
	X = x * screenWidth;
	Y = y * screenHeight;
	Width = width * screenWidth;
	Height = height * screenHeight;
	Size = size * screenHeight;
	wcsncpy(Text, text, CREDIT_TEXT_ITEM_MAX_LENGTH - 1);
	Text[CREDIT_TEXT_ITEM_MAX_LENGTH - 1] = L'\0';
	Color = NextColor;
}

void CreditTextItem::Draw()
{
	float dt = (int)LH3DTech::g_game_time_inc * 0.001f;
	if (Alpha < TargetAlpha)
	{
		Alpha += FadeRate * dt;
		if (Alpha > TargetAlpha)
		{
			Alpha = TargetAlpha;
		}
	}
	if (Alpha > TargetAlpha)
	{
		Alpha -= FadeRate * dt;
		if (Alpha < TargetAlpha)
		{
			Alpha = TargetAlpha;
		}
	}
	if (Alpha > 0.001f)
	{
		int alpha = (int)(Alpha * 255.0f);
		Color.a = alpha > 0 ? min(alpha, 255) : 0;
		GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
		LH3DColor      shadow(Color.GetColor() & 0x00ffffff);
		font->DrawTextA(Text, X + CREDIT_TEXT_SHADOW_OFFSET, Y + CREDIT_TEXT_SHADOW_OFFSET,
		                Y + CREDIT_TEXT_SHADOW_OFFSET, X + Width + CREDIT_TEXT_SHADOW_OFFSET,
		                Y + Height + CREDIT_TEXT_SHADOW_OFFSET, Y + Height + CREDIT_TEXT_SHADOW_OFFSET,
		                Y + CREDIT_TEXT_SHADOW_OFFSET, LH3DTech::GetNearClipping() * 2.0f, Size, &shadow, true, true,
		                false);
		font->DrawTextA(Text, X, Y, Y, X + Width, Y + Height, Y + Height, Y, LH3DTech::GetNearClipping() * 2.0f, Size,
		                &Color, true, true, false);
	}
	else
	{
		delete this;
	}
}

void CreditTextItem::SetClip(float x, float y, float width, float height, float fade_time)
{
	if (fade_time == 0.0f)
	{
		ClipTargetAlpha = 1.0f;
		ClipAlpha = 1.0f;
		ClipFadeRate = 0.0f;
	}
	else
	{
		ClipTargetAlpha = 1.0f;
		ClipFadeRate = 1.0f / fade_time;
	}
	int screenWidth = LHSys::TheSystem.screen.Width();
	int screenHeight = LHSys::TheSystem.screen.Height();
	ClipX = x * screenWidth;
	ClipY = y * screenHeight;
	ClipWidth = width * screenWidth;
	ClipHeight = height * screenHeight;
}

void CreditTextItem::ResetClip(float fade_time)
{
	if (fade_time == 0.0f)
	{
		ClipTargetAlpha = 0.0f;
		ClipAlpha = 0.0f;
		ClipFadeRate = 0.0f;
	}
	else
	{
		ClipTargetAlpha = 0.0f;
		ClipFadeRate = 1.0f / fade_time;
	}
}

void CreditTextItem::DrawClip()
{
	float dt = (int)LH3DTech::g_game_time_inc * 0.001f;
	if (ClipAlpha < ClipTargetAlpha)
	{
		ClipAlpha += ClipFadeRate * dt;
		if (ClipAlpha > ClipTargetAlpha)
		{
			ClipAlpha = ClipTargetAlpha;
		}
	}
	else if (ClipAlpha > ClipTargetAlpha)
	{
		ClipAlpha -= ClipFadeRate * dt;
		if (ClipAlpha < ClipTargetAlpha)
		{
			ClipAlpha = ClipTargetAlpha;
		}
	}
	if (ClipAlpha > 0.001f)
	{
		int oldAlpha = SetupThing::DrawAlpha;
		int alpha = (int)(ClipAlpha * 255.0f);
		SetupThing::DrawAlpha = alpha > 0 ? min(alpha, 255) : 0;
		int width = LHSys::TheSystem.screen.Width();
		int height = LHSys::TheSystem.screen.Height();
		SetupThing::DrawBox(-1, -1, width, (int)ClipY, CREDIT_TEXT_CLIP_COLOUR, CREDIT_TEXT_CLIP_COLOUR,
		                    CREDIT_TEXT_CLIP_COLOUR, CREDIT_TEXT_CLIP_COLOUR, 0, 0);
		SetupThing::DrawBox(-1, (int)(ClipY + ClipHeight), width, height, CREDIT_TEXT_CLIP_COLOUR,
		                    CREDIT_TEXT_CLIP_COLOUR, CREDIT_TEXT_CLIP_COLOUR, CREDIT_TEXT_CLIP_COLOUR, 0, 0);
		SetupThing::DrawBox(-1, (int)ClipY, (int)ClipX, (int)(ClipY + ClipHeight), CREDIT_TEXT_CLIP_COLOUR,
		                    CREDIT_TEXT_CLIP_COLOUR, CREDIT_TEXT_CLIP_COLOUR, CREDIT_TEXT_CLIP_COLOUR, 0, 0);
		SetupThing::DrawBox((int)(ClipX + ClipWidth), (int)ClipY, width, (int)(ClipY + ClipHeight),
		                    CREDIT_TEXT_CLIP_COLOUR, CREDIT_TEXT_CLIP_COLOUR, CREDIT_TEXT_CLIP_COLOUR,
		                    CREDIT_TEXT_CLIP_COLOUR, 0, 0);
		SetupThing::DrawAlpha = oldAlpha;
	}
}

void CreditTextItem::DrawAll()
{
	DrawClip();
	for (CreditTextItem* item = FirstItem; item != NULL;)
	{
		CreditTextItem* next = item->Next;
		item->Draw();
		item = next;
	}
}
