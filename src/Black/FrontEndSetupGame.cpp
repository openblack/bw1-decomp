#include "FrontEndSetupGame.h"

#include <math.h>
#include <stdlib.h>
#include <wchar.h>
#include <chlasm/HelpTextEnums.h>
#include <Lionhead/LH3DLib/development/LH3DMaterial.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include <Lionhead/LH3DLib/development/LH3DTexture.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>

#include <SetupThing/Setup.h>
#include "FrontEnd.h"
#include "FrontEndSetupMultiplayer.h"
#include "HelpText.h"
#include "ServerLandscapeMap.h"
#include "SetupBigButton.h"
#include "SetupBox.h"
#include "SetupButton.h"
#include "SetupCheckBox.h"
#include "SetupEdit.h"
#include "SetupList.h"
#include "SetupMultiList.h"
#include "SetupOnlineLandscapes.h"
#include "SetupSlider.h"
#include "SetupStaticText.h"
#include "SpellSetupBox.h"

#define THUMBNAIL_ANGLE_STEP        0.06981317f // Four degrees in radians.
#define FRONT_END_SETUP_GAME_SOURCE "C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp"

// FrontEnd scope and these singleton names are descriptive; the Init/Destroy pairs establish ownership.
SetupLandscapeBox*     FrontEnd::LandscapeDialog;        // 00cd1664
SpellSetupBox*         FrontEnd::SpellDialog;            // 00cd1668
SetupOnlineLandscapes* FrontEnd::OnlineLandscapesDialog; // 00cd1670

static void OnSetupSpells(SetupBox* box, SetupControl* control)
{
	FrontEnd::LandscapeDialog->SpellDialog->Show();
}

void SetupLandscapeBox::Init(uint32_t width, uint32_t height,
                             void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::LandscapeDialog = this;
	Help = new (FRONT_END_SETUP_GAME_SOURCE, 66) SetupEdit(1006, 150, 525, 500, 30, L" ", false);
	Help->text_size = GetSmallTextSize();
	Accept = new (FRONT_END_SETUP_GAME_SOURCE, 71)
		SetupBigButton(0, 40, 520, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_QUESTION_MORE_FOOD_01), 40,
	                   0, BBSTYLE_LEFT_ARROW);
	Cancel = new (FRONT_END_SETUP_GAME_SOURCE, 72)
		SetupBigButton(1, 720, 520, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_QUESTION_MORE_FIRE_01), 40,
	                   1, BBSTYLE_RIGHT_ARROW);
	Name = new (FRONT_END_SETUP_GAME_SOURCE, 79) SetupEdit(2, 100, 440, 100, 30, L"", true);
	NameLabel = new (FRONT_END_SETUP_GAME_SOURCE, 80) SetupStaticText(
		999, 100, 410, 110, 40, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DEFINITELY_NEWEST_INTRO_11),
		TEXTJUSTIFY_LEFT);
	PlayerCountLabel =
		new (FRONT_END_SETUP_GAME_SOURCE, 81) SetupStaticText(999, 100, 80, 210, 40, L"", TEXTJUSTIFY_LEFT);
	swprintf(PlayerCountLabel->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_NO_10),
	         Settings.GuaranteedPlayers);
	PlayerCount = new (FRONT_END_SETUP_GAME_SOURCE, 85) SetupSlider(3, 100, 100, 100, 20, 0.0f, L"");
	CitadelTowns = new (FRONT_END_SETUP_GAME_SOURCE, 87)
		SetupCheckBox(4, 100, 130, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_NO_08), 20);
	CitadelTowns->checked = false;
	NeutralTowns = new (FRONT_END_SETUP_GAME_SOURCE, 89)
		SetupCheckBox(5, 400, 130, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_NO_09), 20);
	NeutralTowns->checked = false;
	Creatures = new (FRONT_END_SETUP_GAME_SOURCE, 91)
		SetupCheckBox(6, 100, 160, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_NO_11), 20);
	Creatures->checked = false;
	Rocks = new (FRONT_END_SETUP_GAME_SOURCE, 93)
		SetupCheckBox(7, 400, 160, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_NO_12), 20);
	Rocks->checked = false;
	Trees = new (FRONT_END_SETUP_GAME_SOURCE, 95)
		SetupCheckBox(8, 100, 190, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_NO_13), 20);
	Trees->checked = false;
	Fields = new (FRONT_END_SETUP_GAME_SOURCE, 97)
		SetupCheckBox(9, 400, 190, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_NO_14), 20);
	Fields->checked = false;
	Fish = new (FRONT_END_SETUP_GAME_SOURCE, 99)
		SetupCheckBox(10, 100, 220, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_NO_15), 20);
	Fish->checked = false;
	Slider0x478 = new (FRONT_END_SETUP_GAME_SOURCE, 105) SetupSlider(12, 100, 290, 100, 20, 0.0f, L"");
	Label0x460 = new (FRONT_END_SETUP_GAME_SOURCE, 106) SetupStaticText(999, 100, 260, 250, 30, L"", TEXTJUSTIFY_LEFT);
	swprintf(Label0x460->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DEFINITELY_NEWEST_INTRO_08),
	         get_type_string(Settings.field_0x41c));
	Slider0x47c = new (FRONT_END_SETUP_GAME_SOURCE, 109) SetupSlider(11, 320, 290, 100, 20, 0.0f, L"");
	Label0x464 = new (FRONT_END_SETUP_GAME_SOURCE, 110) SetupStaticText(999, 320, 260, 250, 30, L"", TEXTJUSTIFY_LEFT);
	swprintf(Label0x464->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DEFINITELY_NEWEST_INTRO_09),
	         get_type_string(Settings.field_0x418));
	Slider0x480 = new (FRONT_END_SETUP_GAME_SOURCE, 112) SetupSlider(13, 540, 290, 100, 20, 0.0f, L"");
	Label0x468 = new (FRONT_END_SETUP_GAME_SOURCE, 113) SetupStaticText(999, 540, 260, 250, 30, L"", TEXTJUSTIFY_LEFT);
	// The original initialization uses +0x430 here, although slider 13 subsequently edits +0x438.
	swprintf(Label0x468->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DEFINITELY_NEWEST_INTRO_10),
	         get_type_string(Settings.field_0x418));
	ListLabel0x46c = new (FRONT_END_SETUP_GAME_SOURCE, 117) SetupStaticText(
		999, 100, 310, 250, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MISSIONARY_SONG_VERSE1_12),
		TEXTJUSTIFY_LEFT);
	List0x4a8 = new (FRONT_END_SETUP_GAME_SOURCE, 118) SetupList(14, 100, 350, 200, 60);
	ListLabel0x470 = new (FRONT_END_SETUP_GAME_SOURCE, 121) SetupStaticText(
		999, 320, 310, 250, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MISSIONARY_SONG_VERSE2_01),
		TEXTJUSTIFY_LEFT);
	List0x4ac = new (FRONT_END_SETUP_GAME_SOURCE, 122) SetupList(15, 320, 350, 200, 60);
	SpellButton = new (FRONT_END_SETUP_GAME_SOURCE, 124) SetupButton(
		17, 320, 440, 200, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MISSIONARY_SONG_VERSE2_02), 0);
	SpellButton->ContinueButtonCallback = (void*)OnSetupSpells;
}

wchar_t* get_type_string(float value)
{
	// Returns shared frontend scratch storage, not the database entry itself.
	if (value < 0.3f)
	{
		wcscpy(FrontEnd::TypeString,
		       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DEFINITELY_NEWEST_INTRO_03));
		return FrontEnd::TypeString;
	}
	if (value > 0.6f)
	{
		wcscpy(FrontEnd::TypeString,
		       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DEFINITELY_NEWEST_INTRO_05));
		return FrontEnd::TypeString;
	}
	wcscpy(FrontEnd::TypeString, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DEFINITELY_NEWEST_INTRO_04));
	return FrontEnd::TypeString;
}

void SetupLandscapeBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::LandscapeDialog = NULL;
}

static inline void SetSliderValue(SetupSlider* slider, float value)
{
	slider->value = value > 0.0f ? __min(value, 1.0f) : 0.0f;
}

void SetupLandscapeBox::InitControls()
{
	FrontEnd::LandscapeDialog->setup_box->DefaultTextSize = GetSmallTextSize();
	if (ReloadSettings)
		Settings = *OriginalSettings;
	ReloadSettings = false;
	CitadelTowns->style = (BBSTYLE)Settings.CitadelTowns;
	NeutralTowns->style = (BBSTYLE)Settings.NeutralTowns;
	Fish->style = (BBSTYLE)Settings.Fish;
	Creatures->style = (BBSTYLE)Settings.Creatures;
	Fields->style = (BBSTYLE)Settings.Fields;
	SetSliderValue(PlayerCount, Settings.GuaranteedPlayers * (1.0f / 7.0f));
	Rocks->style = (BBSTYLE)Settings.Rocks;
	Trees->style = (BBSTYLE)Settings.Trees;
	SetSliderValue(Slider0x47c, Settings.field_0x418);
	SetSliderValue(Slider0x478, Settings.field_0x41c);
	SetSliderValue(Slider0x480, Settings.field_0x420);
	while (List0x4a8->NumItems > 0)
		List0x4a8->DeleteString(List0x4a8->NumItems - 1);
	// TODO: The original expands the list appends individually and calls GetTextL at 004707f0.
	// GetHelpText has the same verified bounds semantics; retain this readable surface implementation.
	int text;
	for (text = HELP_TEXT_MISSIONARY_SONG_VERSE2_03; text <= HELP_TEXT_MISSIONARY_SONG_VERSE2_07; ++text)
	{
		List0x4a8->InsertString(List0x4a8->NumItems, HelpTextDataBase::HelpTextDatabase.GetHelpText(text));
		List0x4a8->SetCol(List0x4a8->NumItems - 1, 0);
	}
	while (List0x4ac->NumItems > 0)
		List0x4ac->DeleteString(List0x4ac->NumItems - 1);
	for (text = HELP_TEXT_MISSIONARY_SONG_VERSE2_08; text <= HELP_TEXT_MISSIONARY_SONG_VERSE2_11; ++text)
	{
		List0x4ac->InsertString(List0x4ac->NumItems, HelpTextDataBase::HelpTextDatabase.GetHelpText(text));
		List0x4ac->SetCol(List0x4ac->NumItems - 1, 0);
	}
	List0x4ac->fn_00547150(Settings.field_0x428);
	List0x4a8->fn_00547150(Settings.field_0x424);
}

void SetupList::SetCol(int index, uint32_t value)
{
	if (index >= 0 && index < NumItems)
		color[index] = LH3DColor(value);
}

void SpellSetupBox::Init(uint32_t width, uint32_t height,
                         void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::SpellDialog = this;
	Help = new (FRONT_END_SETUP_GAME_SOURCE, 325) SetupEdit(1006, 150, 525, 500, 30, L" ", false);
	Help->text_size = GetSmallTextSize();
	Accept = new (FRONT_END_SETUP_GAME_SOURCE, 330)
		SetupBigButton(0, 40, 520, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_QUESTION_MORE_FOOD_01), 40,
	                   0, BBSTYLE_LEFT_ARROW);
	Cancel = new (FRONT_END_SETUP_GAME_SOURCE, 331)
		SetupBigButton(1, 720, 520, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_QUESTION_MORE_FIRE_01), 40,
	                   1, BBSTYLE_RIGHT_ARROW);
	OneShotLabel = new (FRONT_END_SETUP_GAME_SOURCE, 336)
		SetupStaticText(999, 90, 100, 200, 30,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_BETTER_01), TEXTJUSTIFY_LEFT);
	SpellLabel = new (FRONT_END_SETUP_GAME_SOURCE, 337)
		SetupStaticText(999, 330, 100, 200, 30,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_BETTER_13), TEXTJUSTIFY_LEFT);
	OneShotList = new (FRONT_END_SETUP_GAME_SOURCE, 338) SetupMultiList(3, 90, 140, 230, 200, 10);
	// Both constructors really receive 10, although the second InitControls loop inserts eleven rows.
	SpellList = new (FRONT_END_SETUP_GAME_SOURCE, 339) SetupMultiList(2, 330, 140, 200, 200, 10);
}

void SpellSetupBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::SpellDialog = NULL;
}

void SpellSetupBox::InitControls()
{
	FrontEnd::SpellDialog->setup_box->DefaultTextSize = GetMidTextSize();
	while (OneShotList->NumItems > 0)
		OneShotList->DeleteString(OneShotList->NumItems - 1);
	while (SpellList->NumItems > 0)
		SpellList->DeleteString(SpellList->NumItems - 1);
	Settings = *OriginalSettings;
	int i;
	for (i = 0; i < 10; ++i)
	{
		OneShotList->InsertString(OneShotList->NumItems,
		                          HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_BETTER_02 + i));
		OneShotList->SetCol(OneShotList->NumItems - 1, 0);
		OneShotList->list[i] = Settings.OneShotSpells[i];
	}
	for (i = 0; i < 11; ++i)
	{
		SpellList->InsertString(SpellList->NumItems,
		                        HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_ROTATION_BETTER_02 + i));
		SpellList->SetCol(SpellList->NumItems - 1, 0);
		SpellList->list[i] = Settings.Spells[i];
	}
}

void SetupOnlineLandscapes::Init(uint32_t width, uint32_t height,
                                 void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::OnlineLandscapesDialog = this;
	Help = new (FRONT_END_SETUP_GAME_SOURCE, 460) SetupEdit(1006, 150, 525, 500, 30, L"", false);
	Help->text_size = 16;
	Back = new (FRONT_END_SETUP_GAME_SOURCE, 464)
		SetupBigButton(0, 720, 520, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_QUESTION_MORE_FOOD_01), 40,
	                   1, BBSTYLE_RIGHT_ARROW);
	LandscapeLabel = new (FRONT_END_SETUP_GAME_SOURCE, 468) SetupStaticText(
		3, 80, 60, 200, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MISSIONARY_SONG_VERSE2_12),
		TEXTJUSTIFY_LEFT);
	LandscapeLabel->text_size = 20;
	LandscapeList = new (FRONT_END_SETUP_GAME_SOURCE, 470) SetupList(2, 80, 90, 250, 420);
	LandscapeList->text_size = 20;
	DescriptionLabel =
		new (FRONT_END_SETUP_GAME_SOURCE, 472) SetupStaticText(6, 350, 350, 400, 30, L"", TEXTJUSTIFY_LEFT);
	DescriptionLabel->text_size = 20;
	DescriptionList = new (FRONT_END_SETUP_GAME_SOURCE, 474) SetupList(5, 350, 375, 400, 100);
	DescriptionList->text_size = 20;
	DescriptionList->Hide(true);
	Download = new (FRONT_END_SETUP_GAME_SOURCE, 478) SetupButton(
		4, 350, 480, 200, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MISSIONARY_SONG_VERSE3_02), 0);
	Download->Hide(true);
	Download->text_size = 20;
}

void SetupOnlineLandscapes::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::OnlineLandscapesDialog = NULL;
}

void SetupOnlineLandscapes::InitControls()
{
	FrontEnd::OnlineLandscapesDialog->setup_box->DefaultTextSize = 16;
	Thumbnail = NULL;
	ThumbnailMaterial = NULL;
}

ServerLandscapeMap::Point* IsThereAPoint(LHLinkedList<ServerLandscapeMap::Point*>* points, int x, int y)
{
	for (LHLinkedNode<ServerLandscapeMap::Point*>* node = points->GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->field_0x0 == (uint32_t)x && node->payload->field_0x4 == (uint32_t)y)
			return node->payload;
	}
	return NULL;
}

void DrawThumbnailPoint(uint16_t* pixels, int x, int y, int radius, uint16_t color)
{
	// Descriptive name. The original draws concentric rings into a 256-pixel stride.
	// TODO: x87 keeps the angular recurrence in extended precision; verify its source type/codegen.
	for (; radius != -1; --radius)
	{
		float angle = TWO_PI;
		do
		{
			int row = (int)(cos(angle) * radius + y + 0.5f);
			int column = (int)(sin(angle) * radius + x + 0.5f);
			pixels[row * 256 + column] = color;
			angle -= THUMBNAIL_ANGLE_STEP;
		} while (angle > 0.0f);
	}
}

void SetupOnlineLandscapes::ReleaseThumbnail()
{
	if (Thumbnail != NULL)
	{
		Thumbnail->Release();
		Thumbnail = NULL;
	}
	if (ThumbnailMaterial != NULL)
	{
		ThumbnailMaterial->texture = NULL;
		ThumbnailMaterial = NULL;
	}
	FrontEnd::OnlineLandscapesDialog->DescriptionList->Hide(true);
	FrontEnd::OnlineLandscapesDialog->DescriptionLabel->Hide(true);
	FrontEnd::OnlineLandscapesDialog->Download->Hide(true);
}

void SetupOnlineLandscapes::Show()
{
	FrontEnd::OnlineLandscapesDialog->Download->Hide(false);
	DialogBoxBase::Show();
}
