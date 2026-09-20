#include <SetupThing/Setup.h>

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
