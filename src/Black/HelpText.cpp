#include "HelpText.h"

#include <math.h>   /* For acos, cos, sin */
#include <stdlib.h> /* For _wtoi */
#include <string.h> /* For memset */
#include <wchar.h>  /* For swprintf, wcscpy, wcslen */

#include <chlasm/AudioMusic.h> /* For enum MUSIC_TYPE */

#include <Lionhead/LH3DLib/development/LH3DDivers.h> /* For struct BackgroundBox */
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For PI_F, HALF_PI_F, TWO_PI */
#include <Lionhead/LH3DLib/development/LH3DRender.h> /* For struct LH3DRender */
#include <Lionhead/LH3DLib/development/LH3DTech.h>   /* For struct LH3DTech */
#include <Lionhead/LH3DLib/development/LH3DText.h>   /* For struct GatheringText */
#include <Lionhead/LH3DLib/development/LHMatrix.h>   /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/Zoomer.h>     /* For struct Zoomer */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>          /* For struct LHSys */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>         /* For UNICODE_sprintf */

#include "Audio.h"          /* For class GAudio */
#include "Camera.h"         /* For class GCamera */
#include "CameraModeNew3.h" /* For class CameraModeNew3 */
#ifdef VERSION_BW1WCI
#include "CameraModeCannon.h" /* For class CameraModeCannon */
#endif
#include "CreatureStatsDisplay.h" /* For DrawCreatureStats */
#include "CreditText.h"           /* For class CreditTextItem */
#include "FrontEnd.h"             /* For class FrontEnd */
#include "Game.h"                 /* For class GGame */
#include "GatheringBox.h"         /* For class GatheringBox */
#include "Global.h"               /* For struct GGlobal */
#include "HelpDude.h"             /* For class HelpDude */
#include "HelpSystem.h"           /* For class HelpSystem */
#include "Script.h"               /* For class GScript */
#include "Setup.h"                /* For class GSetup */
#include "alexmfc.h"              /* For struct SetupBox, struct SetupThing, NeedsBiggerText */
#include "camerahelp.h"           /* For class CameraHelp */

#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"

#if defined(VERSION_BW1W100)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - 4)
#elif defined(VERSION_BW1W110)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - 2)
#elif defined(VERSION_BW1W130)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + 2)
#elif defined(VERSION_BW1WCI)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - 1)
#endif

// BW1W120 005557e0 BW1M119 010caca0
int GetAlexTimeInc();

#ifdef VERSION_BW1WCI
// BW1WCI 00f4ef7c BW1MCI119 null
extern LH3DRender::FinishFrameCallback g_after_fade_callback;

// BW1WCI 005e1420 BW1MCI119 01382100
void __stdcall DrawPauseTextCB(void* data);
#endif

enum HELP_TEXT_WORD
{
	HELP_TEXT_WORD_NORMAL = 0,
	HELP_TEXT_WORD_NEW_LINE = 1,
	HELP_TEXT_WORD_END = 2,
	HELP_TEXT_WORD_SPACE = 3,
	HELP_TEXT_WORD_PERCENTAGE = 4,
	HELP_TEXT_WORD_NUMBER = 5,
	HELP_TEXT_WORD_SEPARATOR = 6,
};

enum HELP_TEXT_PAUSE_STATE
{
	HELP_TEXT_PAUSE_STATE_NONE = -1,
	HELP_TEXT_PAUSE_STATE_PAUSED = 0,
	HELP_TEXT_PAUSE_STATE_SLOW = 1,
	HELP_TEXT_PAUSE_STATE_FAST = 2,
	HELP_TEXT_PAUSE_STATE_LAST = 3,
};

HelpTextData HelpTextDataBase::HelpTextDatabase;
int          HelpTextDataBase::CurrentEntry;
#ifndef VERSION_BW1W100
HelpTextDataPatch HelpTextDataBase::PatchTextDatabase;
int               HelpTextDataBase::CurrentPatchEntry;
#endif
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
HelpTextDataMultiplayer HelpTextDataBase::MultiplayerTextDatabase;
int                     HelpTextDataBase::CurrentMultiplayerEntry;
#endif

static Zoomer3d HighlightZoomer;
static bool     HighlightLine = false;
static float    PauseTextFade = 0.0f;

void HelpTextInfo::Set(bool32_t should_be_drawn, HELP_TEXT_NARRATOR narrator, wchar_t* name, wchar_t* text)
{
	Narrator = narrator;
	ShouldBeDrawn = should_be_drawn;
	int length = wcslen(text) + 1;
	Text = NEW(50) wchar_t[length];
	wcscpy(Text, text);
}

HelpText::HelpText(const LHRegion& region)
{
	Region = region;
	SetToZero();
	LH3DRender::RegisterFinishFrameCallback(20000, true, Draw3DTextStub, this);
}

void HelpText::SetToZero()
{
	BackgroundColour.Set(0xff, 0, 0, 0);
	HighlightColour.Set(0xff, 0, 0, 0xff);
	if (NeedsBiggerText())
	{
		DefaultTextSize = TextSize = LHSys::TheSystem.screen.height / HELP_TEXT_FONT_SIZE_BIGGER;
	}
	else
	{
		DefaultTextSize = TextSize = LHSys::TheSystem.screen.height / HELP_TEXT_FONT_SIZE;
	}
	BeingDrawn = false;
	Alpha = LH3D_COLOR_OPAQUE;
	DefaultFont = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
	EvilFont = GatheringText::GetGameFont(GAME_FONT_EVIL);
	GoodFont = GatheringText::GetGameFont(GAME_FONT_GOOD);
	NeutralFont = GatheringText::GetGameFont(GAME_FONT_NEUTRAL);
	HighlightZoomer.x.SetPosition(0.0f);
	HighlightZoomer.y.SetPosition(LHSys::TheSystem.screen.height);
	HighlightZoomer.z.SetPosition(0.0f);
	Reset(true);
}

void HelpText::ClearTextDisplayed()
{
	TextCleared = true;
}

void HelpText::CloseDialogWindow()
{
	DialogWindowOpen = false;
	ClearTextDisplayed();
}

void HelpText::Reset(bool full)
{
	if (full)
	{
		for (int i = 0; i < HELP_TEXT_NUM_LINES; i++)
		{
			Lines[i].Text = NULL;
			Lines[i].Narrator = HELP_TEXT_NARRATOR_NONE;
		}
		CurrentLine = 0;
		DrawLine = 0;
	}
	Font = NULL;
	TextCleared = false;
	SingleLine = false;
	DialogWindowOpen = false;
}

HelpText::~HelpText()
{
	LH3DRender::RemoveFinishFrameCallback(Draw3DTextStub, this);
}

HelpText* HelpText::Create(const LHRegion& region, HelpSystem* help_system)
{
	HelpText* helpText = NEW(132) HelpText(region);
	if (helpText != NULL)
	{
		helpText->CallVirtualFunctionsForCreation(help_system);
	}
	return helpText;
}

void HelpText::CallVirtualFunctionsForCreation(HelpSystem* help_system) {}

bool32_t HelpText::IsWhiteSpace(wchar_t c) const
{
	return c == ' ' || c == '\t' || c == '\r' || c == '\n' || c == SCRIPT_TEXT_NON_BREAKING_SPACE;
}

int HelpText::SkipWhiteSpace(wchar_t* text, wchar_t** end) const
{
	int i = 0;
	while (IsWhiteSpace(text[i]))
	{
		if (text[i] == '\n')
		{
			*end = &text[i + 1];
			return HELP_TEXT_WORD_NEW_LINE;
		}
		i++;
	}
	*end = &text[i];
	return HELP_TEXT_WORD_SPACE;
}

bool32_t HelpText::IsCommandStartChar(wchar_t c) const
{
	return c == '$' || c == '\\';
}

bool32_t HelpText::IsDigit(wchar_t c) const
{
	return c >= '0' && c <= '9';
}

bool32_t HelpText::IsCommandDataChar(wchar_t c) const
{
	return IsDigit(c) || IsCommandChar(c);
}

bool32_t HelpText::IsColorCommandChar(wchar_t c) const
{
	switch (c)
	{
	case 'C':
	case 'c':
		return true;
	}
	return false;
}

bool32_t HelpText::IsCommandChar(wchar_t c) const
{
	if (IsColorCommandChar(c))
	{
		return true;
	}
	switch (c)
	{
	case 'D':
	case 'd':
	case 'F':
	case 'f':
	case 'M':
	case 'm':
	case 'N':
	case 'n':
	case 'P':
	case 'p':
		return true;
	}
	return false;
}

int HelpText::RunCommand(wchar_t* text, bool32_t run_commands)
{
	int result = HELP_TEXT_WORD_NORMAL;
	if (!IsCommandStartChar(*text))
	{
		return HELP_TEXT_WORD_NORMAL;
	}
	text++;
	if (!IsCommandDataChar(*text))
	{
		return HELP_TEXT_WORD_NORMAL;
	}
	switch (*text)
	{
	case 'C':
	case 'c':
		ProcessColorCommand(_wtoi(text + 1));
		break;
	case 'N':
	case 'n':
		return HELP_TEXT_WORD_NEW_LINE;
	case 'P':
	case 'p':
		return HELP_TEXT_WORD_PERCENTAGE;
	case 'D':
	case 'd':
		return HELP_TEXT_WORD_NUMBER;
	case 'M':
	case 'm': {
		int action = _wtoi(text + 1);
		if (run_commands)
		{
			ProcessIconCommand(action);
		}
		break;
	}
	case 'F':
	case 'f':
		SetFont(_wtoi(text + 1));
		break;
	default:
		result = ProcessNumberCommand(_wtoi(text));
		break;
	}
	return result;
}

void HelpText::ProcessIconCommand(int action)
{
	GGame::g_game->help_system->SetTextIcon((BINDABLE_ACTIONS)action);
}

void HelpText::ProcessColorCommand(unsigned long colour)
{
	if (colour != 0)
	{
		Lines[DrawLine].Colour = LHColor(colour, colour >> 8, colour >> 16);
		return;
	}
	switch (Lines[DrawLine].Narrator)
	{
	case HELP_TEXT_NARRATOR_GOOD_SPIRIT:
		Lines[DrawLine].Colour = LHColor(0xeb, 0xeb, 0xb7);
		break;
	case HELP_TEXT_NARRATOR_EVIL_SPIRIT:
		Lines[DrawLine].Colour = LHColor(0xff, 0xb4, 0xb4);
		break;
	default:
		Lines[DrawLine].Colour = LHColor(0xff, 0xff, 0xff);
		break;
	}
}

int HelpText::ProcessNumberCommand(int number)
{
	return number == 1 ? HELP_TEXT_WORD_END : HELP_TEXT_WORD_NORMAL;
}

wchar_t* HelpText::SkipCommandData(wchar_t* text) const
{
	if (IsCommandStartChar(*text))
	{
		text++;
		if (IsColorCommandChar(*text))
		{
			while (IsDigit(*++text))
			{
			}
			text++;
		}
		else if (IsCommandDataChar(*text))
		{
			while (IsDigit(*++text))
			{
			}
		}
	}
	return text;
}

int HelpText::GetNextWordAndParseCommands(wchar_t* text, wchar_t** end, wchar_t* word, bool32_t run_commands)
{
	unsigned int length = 0;
	wchar_t*     current = text;
	int          result = HELP_TEXT_WORD_NORMAL;
	word[0] = 0;
	if (IsWhiteSpace(*text))
	{
		result = SkipWhiteSpace(text, &current);
		if (result != HELP_TEXT_WORD_SPACE && result != HELP_TEXT_WORD_SEPARATOR)
		{
			*end = current;
			return result;
		}
		result = HELP_TEXT_WORD_NORMAL;
	}
	if (IsCommandStartChar(*current))
	{
		if (!IsCommandStartChar(current[1]))
		{
			result = RunCommand(current, run_commands);
			current = SkipCommandData(current);
			if (result != HELP_TEXT_WORD_NORMAL)
			{
				*end = current;
				return result;
			}
			if (IsWhiteSpace(*current))
			{
				result = SkipWhiteSpace(current, &current);
			}
			*end = current;
			return result;
		}
		current++;
		word[length++] = *current++;
	}
	while (!IsWhiteSpace(*current) && !IsCommandStartChar(*current) && *current != 0 &&
	       length < HELP_TEXT_MAX_WORD_LENGTH - 1)
	{
		word[length++] = *current++;
	}
	*end = current;
	word[length] = 0;
	if (IsWhiteSpace(*current))
	{
		result = HELP_TEXT_WORD_SPACE;
		if (*current == SCRIPT_TEXT_NON_BREAKING_SPACE)
		{
			result = HELP_TEXT_WORD_SEPARATOR;
		}
	}
	return result;
}

void HelpText::CalculateCurrentDisplayWidthAndHeight(const LHRegion& region, wchar_t* text, float* width, float* height)
{
	wchar_t* current = text;
	int      maxLines;
	int      x = 0;
	int      result = HELP_TEXT_WORD_NORMAL;
	int      line;
	int      maxWidth = 0;
	if (Font == NULL)
	{
		return;
	}
	maxLines = region.Height() / TextSize;
	for (line = 0; line < maxLines && result != HELP_TEXT_WORD_END && *current != 0;)
	{
		if (result == HELP_TEXT_WORD_NEW_LINE)
		{
			maxWidth = max(x, maxWidth);
			x = 0;
			line++;
			if (line >= maxLines)
			{
				break;
			}
		}
		else if (result == HELP_TEXT_WORD_SPACE)
		{
			x = Font->GetStringWidth(" ", 1, TextSize) + x;
		}
		wchar_t* next;
		wchar_t  word[HELP_TEXT_MAX_WORD_LENGTH];
		result = GetNextWordAndParseCommands(current, &next, word, false);
		if (result == HELP_TEXT_WORD_PERCENTAGE)
		{
			UNICODE_sprintf(word, L"%3.3f%%", Lines[DrawLine].Number);
		}
		else if (result == HELP_TEXT_WORD_NUMBER)
		{
			UNICODE_sprintf(word, L"%3.3f", Lines[DrawLine].Number);
		}
		if (word[0] != 0)
		{
			int wordWidth = Font->GetStringWidth(word, wcslen(word), TextSize, 1.0f);
			if (region.Width() - wordWidth - x < 0)
			{
				maxWidth = max(x, maxWidth);
				x = 0;
				line++;
				if (line >= maxLines)
				{
					break;
				}
			}
			x += wordWidth;
		}
		current = next;
	}
	maxWidth = max(x, maxWidth);
	*width = maxWidth;
	*height = min(line + 1, maxLines) * TextSize;
}

float HelpText::DrawAndProcessText(const LHRegion& region, wchar_t* text, ALIGNENUM align, float y_offset,
                                   bool32_t run_commands)
{
	int      line = 0;
	wchar_t* current = text;
	float    y = 0.0f;
	int      result = HELP_TEXT_WORD_NORMAL;
	SetStartDrawSettings();
	if (Font == NULL)
	{
		return 0.0f;
	}
	int   maxLines = region.Height() / TextSize;
	float width;
	float height;
	CalculateCurrentDisplayWidthAndHeight(region, text, &width, &height);
	if (align != ALIGN_TOP)
	{
		if (align == ALIGN_BOTTOM)
		{
			y += region.Height() - height;
		}
		else
		{
			y += (region.Height() - height) * 0.5f;
		}
	}
	int      startX = (region.Width() - width) * 0.5f;
	int      x = startX;
	bool32_t song = false;
	if (GGlobal::Global.audio->ScriptMusicType == MUSIC_TYPE_SCRIPT_MISSIONARIES_VERSE_1 ||
	    GGlobal::Global.audio->ScriptMusicType == MUSIC_TYPE_SCRIPT_MISSIONARIES_VERSE_2 ||
	    GGlobal::Global.audio->ScriptMusicType == MUSIC_TYPE_SCRIPT_MISSIONARIES_VERSE_3)
	{
		song = true;
	}
	int numWords = 0;
	for (line = 0; line < maxLines && result != HELP_TEXT_WORD_END && *current != 0;)
	{
		numWords++;
		if (result == HELP_TEXT_WORD_NEW_LINE)
		{
			y += TextSize;
			x = startX;
			line++;
			if (line >= maxLines)
			{
				break;
			}
		}
		else if (result == HELP_TEXT_WORD_SPACE)
		{
			x = Font->GetStringWidth(" ", 1, TextSize) + x;
		}
		wchar_t* next;
		wchar_t  word[HELP_TEXT_MAX_WORD_LENGTH];
		result = GetNextWordAndParseCommands(current, &next, word, run_commands);
		if (result == HELP_TEXT_WORD_PERCENTAGE)
		{
			UNICODE_sprintf(word, L"%3.3f%%", Lines[DrawLine].Number);
			result = HELP_TEXT_WORD_SPACE;
		}
		else if (result == HELP_TEXT_WORD_NUMBER)
		{
			UNICODE_sprintf(word, L"%3.3f", Lines[DrawLine].Number);
			result = HELP_TEXT_WORD_SPACE;
		}
		bool32_t highlight =
			GAudio::IsUsingBouncingBall() && HighlightLine && song && numWords == GGame::g_game->script->LastMusicWord;
		if (word[0] != 0)
		{
			width = Font->GetStringWidth(word, wcslen(word), TextSize, 1.0f);
			if (region.Width() - (x + width) < 0.0f)
			{
				y += TextSize;
				x = startX;
				line++;
				if (line >= maxLines)
				{
					break;
				}
			}
			LH3DColor colour(Lines[DrawLine].Colour.GetR(), Lines[DrawLine].Colour.GetG(),
			                 Lines[DrawLine].Colour.GetB(), Alpha);
			if (highlight)
			{
				float highlightWidth = Font->GetStringWidth(word, wcslen(word), TextSize, 1.0f);
				HighlightZoomer.SetDestinationWithTime(
					LHPoint(region.X1() + x, region.Y1() + y + y_offset, highlightWidth), 0.18f);
				HighlightZoomer.Update(GetAlexTimeInc() * 0.001f);
				LH3DColor glow = colour;
				glow.a /= 2;
				CameraHelp::DrawGlow(HighlightZoomer.GetCurrentValue().x, HighlightZoomer.GetCurrentValue().y,
				                     HighlightZoomer.GetCurrentValue().x + HighlightZoomer.GetCurrentValue().z,
				                     HighlightZoomer.GetCurrentValue().y + TextSize, glow.GetColor());
			}
			Font->DrawTextRaw(word, wcslen(word), region.X1() + x, region.Y1() + y + y_offset,
			                  LH3DTech::g_info_transform.NearClip * 1.2f, TextSize, &colour, false, NULL, region.Y1(),
			                  region.Y2());
			x = x + width;
		}
		current = next;
	}
	return height;
}

int HelpText::CountWords(wchar_t* text)
{
	int     count = 0;
	wchar_t word[HELP_TEXT_MAX_WORD_LENGTH];
	while (*text != 0)
	{
		GetNextWordAndParseCommands(text, &text, word, false);
		if (word[0] != 0)
		{
			count++;
		}
	}
	return count;
}

#ifdef VERSION_BW1WCI
void __stdcall DrawPauseTextCB(void* data)
{
	if (GGame::g_game != NULL && GGame::g_game->help_system != NULL && GGame::g_game->help_system->help_text != NULL)
	{
		GGame::g_game->help_system->help_text->DrawPauseText();
	}
}
#endif

void HelpText::DrawPauseText()
{
	static int   CurrentState = HELP_TEXT_PAUSE_STATE_NONE;
	static float Angle;

	bool paused = GGame::g_game->Paused;
	bool slow = GGame::g_game->network.Speed < 1.0f;
	bool fast = GGame::g_game->network.Speed > 1.0f;
	int  state;
	if (paused)
	{
		state = HELP_TEXT_PAUSE_STATE_PAUSED;
	}
	else if (slow)
	{
		state = HELP_TEXT_PAUSE_STATE_SLOW;
	}
	else
	{
		state = fast ? HELP_TEXT_PAUSE_STATE_FAST : HELP_TEXT_PAUSE_STATE_NONE;
	}
	if (state == CurrentState && state >= HELP_TEXT_PAUSE_STATE_PAUSED)
	{
		PauseTextFade += LH3DTech::g_delta_time * 0.003f;
	}
	else
	{
		PauseTextFade -= LH3DTech::g_delta_time * 0.002f;
	}
	if (PauseTextFade > 0.0f)
	{
		PauseTextFade = min(PauseTextFade, 1.0f);
	}
	else
	{
		PauseTextFade = 0.0f;
		CurrentState = state;
	}
	if (CurrentState < HELP_TEXT_PAUSE_STATE_PAUSED || !GGame::g_game->Initialised)
	{
		return;
	}
	if (GGame::g_game->ViewMode != GAME_VIEW_MODE_WORLD ||
	    (GGame::g_game->GetCamera()->ScriptSlomoControl && state != HELP_TEXT_PAUSE_STATE_PAUSED) ||
	    GGlobal::Global.EditorMode || GGame::g_game->VideoPlayer != NULL ||
	    (SetupBox::GetCurrentActiveBox() != NULL &&
	     SetupBox::GetCurrentActiveBox()->BackgroundStyle != SETUP_BACKGROUND_NONE))
	{
		CurrentState = state;
		PauseTextFade = 0.0f;
		return;
	}
	float fade = HelpDude::Smoothify(PauseTextFade);
	if (fade == 0.0f || CurrentState < HELP_TEXT_PAUSE_STATE_PAUSED)
	{
		return;
	}
	float    distance = (fade + 1.0f) * 15.0f;
	wchar_t* texts[HELP_TEXT_PAUSE_STATE_LAST] = {
		HelpTextData::GetTextL(HELP_TEXT_GAME_PAUSED),
		HelpTextData::GetTextL(HELP_TEXT_GAME_SLOWMO),
		HelpTextData::GetTextL(HELP_TEXT_GAME_FASTMO),
	};
	int length = wcslen(texts[CurrentState]);
	Angle += LH3DTech::g_delta_time * 0.0015f;
	if (Angle > 2.0f * TWO_PI)
	{
		Angle -= 2.0f * TWO_PI;
	}
#ifdef VERSION_BW1WCI
	float size = tan(LH3DTech::g_camera.fov * 0.5f) / 0.35f;
#endif
	GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
	int            y = LHSys::GetScreen().Height() / 20;
	LHPoint        centre;
	LH3DTech::Get3DPointFromScreen(LHCoord(LHSys::GetScreen().Width() >> 1, LHSys::GetScreen().Height() >> 1), centre,
	                               10.0f);
	LHPoint top;
	LH3DTech::Get3DPointFromScreen(LHCoord(LHSys::GetScreen().Width() >> 1, y), top, 10.0f);
	// Fakematch, not original code: these no-ops make the compiler see centre.z before centre.y, which
	// decides the order centre.SetSize() below adds its terms in, and they give the function the size at
	// which the compiler inlines the right text lookups. Nothing is emitted for them.
	LHPoint* touch = &centre;
	touch->z = touch->z;
	touch->y = touch->y;
	touch->x = touch->x;
	centre -= LHPoint(LH3DTech::GetCameraPosition());
	top -= LHPoint(LH3DTech::GetCameraPosition());
	centre.SetSize(1.0f);
	top.SetSize(1.0f);
	float pitch = acos(centre * top);
	for (int i = 0; i < length; i++)
	{
		float   halfWidth = (uint16_t)(LHSys::GetScreen().Width() >> 1);
		float   spacing = halfWidth / length / distance * 30.0f;
		LHPoint point;
		LH3DTech::Get3DPointFromScreen(LHCoord(halfWidth - (length - 1) * spacing * 0.5f + i * spacing, y), point,
		                               distance);
		float angle = Angle - i * (1.0f / 3.0f);
		WRAP(angle, 0.0f, 2.0f * TWO_PI, 2.0f * TWO_PI);
		LHMatrix matrix;
		if (angle < TWO_PI)
		{
			if (angle > PI_F)
			{
				angle -= PI_F;
			}
			if (angle >= HALF_PI_F)
			{
				angle -= PI_F;
			}
			matrix.SetRotationX(angle);
		}
		else
		{
			angle -= TWO_PI;
			if (angle > PI_F)
			{
				angle -= PI_F;
			}
			if (angle >= HALF_PI_F)
			{
				angle -= PI_F;
			}
			matrix.SetRotationY(angle);
		}
		matrix.PostRotateX(pitch);
		matrix.PostRotateX(PI_F);
		matrix._41 = 0.0f;
		matrix._42 = 0.0f;
		matrix._43 = 0.0f;
		LHMatrix inverse;
		inverse.SetInverse(LH3DTech::g_world_to_camera);
		matrix.PostMultiply(inverse);
		matrix.GetPos() = point;
		wchar_t character[2];
		character[0] = texts[CurrentState][i];
		character[1] = 0;
#ifdef VERSION_BW1WCI
		float     width = font->GetStringWidth(character, 1, size);
		LH3DColor colour(0xff, 0xff, 0xff, fade * LH3D_COLOR_OPAQUE);
		font->DrawTextRawOriented(matrix, 0, 1, character, 1, width * -0.5f, size * -0.5f, 0.0f, size, 1.0f, &colour,
		                          true, NULL);
#else
		float     width = font->GetStringWidth(character, 1, 2.0f);
		LH3DColor colour(0xff, 0xff, 0xff, fade * LH3D_COLOR_OPAQUE);
		font->DrawTextRawOriented(matrix, 0, 1, character, 1, width * -0.5f, -1.0f, 0.0f, 2.0f, 1.0f, &colour, true,
		                          NULL);
#endif
	}
}

void HelpText::DrawScriptText()
{
	bool32_t topToBottom = HelpSystem::TextTopToBottom;
	if (!GGame::g_game->help_system->CurrentTextShouldBeDrawn())
	{
		return;
	}
	if (TextCleared)
	{
		return;
	}
	int   y = topToBottom ? DefaultTextSize * -(1.0f / 3.0f) : DefaultTextSize * (1.0f / 3.0f);
	float scale = 1.0f;
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		ScrollProgress += LH3DTech::g_delta_time * HELP_TEXT_SCROLL_SPEED;
	}
	else
	{
		ScrollProgress += LH3DTech::GetGameTimeInc() * HELP_TEXT_SCROLL_SPEED;
	}
	if (ScrollProgress > 1.0f)
	{
		ScrollProgress = 1.0f;
	}
	float centreY;
	int   lastY;
	if (topToBottom)
	{
		centreY = (Region.end.Y() - Region.start.Y() + 1) / -2 + DefaultTextSize * 0.5f;
		lastY = y + DefaultTextSize;
	}
	else
	{
		centreY = (Region.end.Y() - Region.start.Y() + 1) / 2 - DefaultTextSize * 0.5f;
		lastY = y - DefaultTextSize;
	}
	float lastScale = 1.0f / HELP_TEXT_LINE_SCALE;
	if (Lines[(CurrentLine + HELP_TEXT_NUM_LINES - 1) % HELP_TEXT_NUM_LINES].Text == NULL)
	{
		if (SingleLine)
		{
			y = centreY;
			lastY = y;
			lastScale = 1.0f;
		}
	}
	else if (Lines[(CurrentLine + HELP_TEXT_NUM_LINES - 2) % HELP_TEXT_NUM_LINES].Text == NULL && SingleLine)
	{
		y = (y - centreY) * ScrollProgress + centreY;
		lastY = y;
	}
	int numLines = HELP_TEXT_NUM_LINES;
	if (ScrollProgress >= 0.9999f)
	{
		numLines = HELP_TEXT_NUM_SETTLED_LINES;
	}
	const LHRegion& region = Region;
	for (int i = 0; i < numLines; i++)
	{
		DrawLine = (CurrentLine - i + HELP_TEXT_NUM_LINES) % HELP_TEXT_NUM_LINES;
		if (Lines[DrawLine].Text == NULL)
		{
			break;
		}
		BeingDrawn = true;
		float lineScale = (scale - lastScale) * ScrollProgress + lastScale;
		float lineY = (y - lastY) * ScrollProgress + lastY;
		TextSize = lineScale * DefaultTextSize;
		Alpha = lineScale * LH3D_COLOR_OPAQUE;
		if (Alpha < LH3D_COLOR_OPAQUE)
		{
			Alpha -= 20;
		}
		if (Alpha < 0)
		{
			Alpha = 0;
		}
		if (i == 0)
		{
			Alpha = Alpha * ScrollProgress;
		}
		HighlightLine = i == 0;
		float height =
			DrawAndProcessText(region, Lines[DrawLine].Text, topToBottom ? ALIGN_BOTTOM : ALIGN_TOP, lineY, i == 0);
		height /= lineScale;
		lastScale = scale;
		lastY = y;
		y = topToBottom ? y - height * scale : height * scale + y;
		scale = (i != 0 ? HELP_TEXT_LINE_SCALE : 0.86f) * scale;
	}
}

void HelpText::Draw3DText()
{
	BeingDrawn = false;
	if (GGame::g_game->VideoPlayer == NULL)
	{
		if (GGame::g_game->ViewMode == GAME_VIEW_MODE_WORLD && FrontEnd::GatheringDialog != NULL &&
		    SetupBox::GetCurrentActiveBox() == FrontEnd::GatheringDialog->setup_box &&
		    FrontEnd::GatheringDialog->NumIncoming > 1 && FrontEnd::GatheringDialog->IncomingList.GetHead() != NULL &&
		    !FrontEnd::GatheringDialog->IncomingText->hidden)
		{
			int x = FrontEnd::GatheringDialog->IncomingText->rect.start.x;
			int y = FrontEnd::GatheringDialog->IncomingText->rect.start.y;
			int right = FrontEnd::GatheringDialog->IncomingText->rect.end.x;
			int size = FrontEnd::GatheringDialog->IncomingText->text_size;
			int alpha = 200;
			for (unsigned int i = 1; i < FrontEnd::GatheringDialog->IncomingList.count; i++)
			{
				y -= size;
				x += size / 2;
				size--;
				alpha -= 32;
				if (alpha > 31 && size > HELP_TEXT_CHAT_MIN_SIZE)
				{
					wchar_t* text = FrontEnd::GatheringDialog->IncomingList.GetAtPosition(i)->Text;
					if (text[0] != 0)
					{
						if (i == HELP_TEXT_CHAT_MAX_LINES)
						{
							text = L"...";
						}
						SetupThing::DrawAlpha = alpha / 2;
						SetupThing::DrawTextA(x + 1, y + 1, right - x, TEXTJUSTIFY_LEFT, text, size,
						                      &LH3DColor(0, 0, 0, 0xff), 0);
						SetupThing::DrawAlpha = alpha;
						SetupThing::DrawTextA(x, y, right - x, TEXTJUSTIFY_LEFT, text, size,
						                      &LH3DColor(0xff, 0xff, 0xff, 0xff), 0);
						if (i == HELP_TEXT_CHAT_MAX_LINES)
						{
							break;
						}
					}
				}
			}
		}
#ifdef VERSION_BW1WCI
		if (GGame::g_game->ViewMode == GAME_VIEW_MODE_WORLD && CameraModeCannon::CannonAlpha > 0.0f)
		{
			float fade = (int)LH3DTech::g_game_time_inc * 0.001f;
			if (dynamic_cast<CameraModeCannon*>(GGame::g_game->GetCamera()->GetCurrentMode()) == NULL)
			{
				CameraModeCannon::CannonAlpha -= fade;
				if (CameraModeCannon::CannonAlpha < 0.0f)
				{
					CameraModeCannon::CannonAlpha = 0.0f;
				}
			}
			CameraModeCannon::DrawCannonOnScreen();
		}
		DrawScriptText();
		CreditTextItem::DrawAll();
		g_after_fade_callback = DrawPauseTextCB;
		if (GGame::g_game->Initialised && GGame::g_game->GetCamera() != NULL && CreditTextItem::ClipAlpha < 0.1f)
		{
#else
		DrawScriptText();
		DrawPauseText();
		if (GGame::g_game->Initialised && GGame::g_game->GetCamera() != NULL)
		{
#endif
			CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
			if (mode != NULL && mode->HasFight)
			{
				mode->DrawFightText();
			}
		}
#ifdef VERSION_BW1WCI
		if (GGame::g_game->ViewMode == GAME_VIEW_MODE_WORLD && GGame::g_game->script != NULL)
		{
			GGame::g_game->script->DrawCountDownTimer();
		}
#else
		CreditTextItem::DrawAll();
#endif
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		if (GGame::g_game->IsMultiplayerGame())
		{
			unsigned int seconds = (GGame::g_game->MultiplayerTimeLimit - GGame::g_game->data.GetGameTurn()) /
			                       HELP_TEXT_GAME_TURNS_PER_SECOND;
			if (GGame::g_game->MultiplayerTimeLimit <= GGame::g_game->data.GetGameTurn())
			{
				seconds = 0;
			}
			LH3DColor colour(0xff, 0xff, 0xff, 0xff);
			if (seconds < 45)
			{
				colour.Set(0xff, 0xff, 0x8c, 0x8c);
			}
			if (seconds < 20)
			{
				colour.Set(0xff, 0xff, 0, 0);
			}
			unsigned int minutes = seconds / 60 % 60;
			unsigned int hours = seconds / (60 * 60);
			wchar_t      buffer[256];
			memset(buffer, 0, sizeof(buffer));
			if (hours != 0)
			{
				swprintf(buffer, L"%u:%02u:%02u", hours, minutes, seconds % 60);
			}
			else
			{
				swprintf(buffer, L"%u:%02u", minutes, seconds % 60);
			}
			GatheringText::GetGameFont(GAME_FONT_DEFAULT)
				->DrawTextRaw(buffer, wcslen(buffer), 20.0f, LHSys::GetScreen().Height() - 50,
			                  LH3DTech::g_info_transform.NearClip * 1.5f, 30.0f, &colour, false, NULL, 0.0f, 4096.0f);
		}
#endif
	}
	CameraHelp::DrawMouseCallback();
}

void HelpText::Draw3D()
{
	if (DialogWindowOpen)
	{
		LH3DColor colour(BackgroundColour.r, BackgroundColour.g, BackgroundColour.b, 128);
		BackgroundBox::AddBox(&Region, &colour);
	}
}

void HelpText::SetFont(int narrator)
{
	switch (narrator)
	{
	case HELP_TEXT_NARRATOR_GOOD_SPIRIT:
		Font = GoodFont;
		break;
	case HELP_TEXT_NARRATOR_EVIL_SPIRIT:
		Font = EvilFont;
		break;
	default:
		Font = DefaultFont;
		break;
	}
}

void HelpText::SendText(wchar_t* text, float number, HELP_TEXT_NARRATOR narrator)
{
	CurrentLine = (CurrentLine + 1) % HELP_TEXT_NUM_LINES;
	ScrollProgress = 0.0f;
	HelpTextLine* line = &Lines[CurrentLine];
	DrawLine = CurrentLine;
	line->Text = text;
	line->Number = number;
	line->Narrator = narrator;
	if (Lines[(CurrentLine + HELP_TEXT_NUM_LINES - 1) % HELP_TEXT_NUM_LINES].Text != NULL)
	{
		SingleLine = false;
	}
	TextCleared = false;
	DialogWindowOpen = true;
}

void HelpText::SetStartDrawSettings()
{
	SetFont(Lines[DrawLine].Narrator);
	ProcessColorCommand(0);
}

void HelpTextDataBase::SetData(bool32_t should_be_drawn, unsigned long index, HELP_TEXT_NARRATOR narrator,
                               wchar_t* name, wchar_t* text)
{
	GetWriteableData(index)->Set(should_be_drawn, narrator, name, text);
}

void HelpTextDataBase::Reload()
{
#ifndef VERSION_BW1W130
	DeleteAll();
#endif
	GSetup::LoadTextScripts();
}

void __stdcall HelpText::Draw3DTextStub(void* help_text)
{
	if (help_text != NULL && GGame::g_game->help_system != NULL)
	{
		((HelpText*)help_text)->Draw3DText();
		DrawCreatureStats();
	}
}
