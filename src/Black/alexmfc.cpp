#include "AlexMfc.h"

#include "Game.h"
#include "SetupBigButton.h"
#include "SetupBox.h"
#include "SetupCheckBox.h"
#include "SetupColourPicker.h"
#include "SetupEdit.h"
#include "SetupHLineGraph.h"
#include "SetupHSBarGraph.h"
#include "SetupMultiList.h"
#include "SetupPicture.h"
#include "SetupSlider.h"
#include "SetupStaticText.h"
#include "SetupTabButton.h"

bool NeedsBiggerText()
{
	if (GGame::g_game == NULL)
		return false;
	GAME_LANGUAGE language = GGame::g_game->CurrentLanguage;
	return language == GAME_LANGUAGE_JAPANESE || language == GAME_LANGUAGE_SIMPLIFIED_CHINESE ||
	       language == GAME_LANGUAGE_TRADITIONAL_CHINESE || language == GAME_LANGUAGE_KOREAN ||
	       language == GAME_LANGUAGE_THAI;
}

int GetMidTextSize()
{
	return NeedsBiggerText() ? SETUP_TEXT_SIZE_MEDIUM_LARGE_GLYPHS : SETUP_TEXT_SIZE_MEDIUM;
}

int GetSmallTextSize()
{
	return NeedsBiggerText() ? SETUP_TEXT_SIZE_SMALL_LARGE_GLYPHS : SETUP_TEXT_SIZE_SMALL;
}

int GetBigTextSize()
{
	return SETUP_TEXT_SIZE_BIG;
}

void SetupThing::DrawBox(int x_min, int y_min, int x_max, int y_max, unsigned long color_1, unsigned long color_2,
                         unsigned long color_3, unsigned long color_4, unsigned long use_alpha, unsigned long adjust)
{
	if (x_max < x_min)
	{
		int x = x_min;
		x_min = x_max;
		x_max = x;
		unsigned long color = color_1;
		color_1 = color_2;
		color_2 = color;
		color = color_3;
		color_3 = color_4;
		color_4 = color;
	}
	if (y_max < y_min)
	{
		int y = y_min;
		y_min = y_max;
		y_max = y;
		unsigned long color = color_1;
		color_1 = color_3;
		color_3 = color;
		color = color_2;
		color_2 = color_4;
		color_4 = color;
	}
	DrawQuad(x_min, y_min, x_max, y_min, x_max, y_max, x_min, y_max, color_1, color_2, color_3, color_4, use_alpha,
	         adjust);
}
