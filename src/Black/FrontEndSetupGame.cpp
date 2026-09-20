#include "FrontEndSetupGame.h"

#include <math.h>
#include <wchar.h>
#include <Lionhead/LH3DLib/development/LH3DMaterial.h>
#include <Lionhead/LH3DLib/development/LH3DTexture.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>

#include "AlexMfc.h" /* For GetSmallTextSize and GetMidTextSize */
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

// FrontEnd scope and these singleton names are descriptive; the Init/Destroy pairs establish ownership.
SetupLandscapeBox*     FrontEnd::LandscapeDialog;        // 00cd1664
SpellSetupBox*         FrontEnd::SpellDialog;            // 00cd1668
SetupOnlineLandscapes* FrontEnd::OnlineLandscapesDialog; // 00cd1670

// BW1W120 00546d00 void OpenSpellSetup(SetupBox *, SetupControl *)
static void OpenSpellSetup(SetupBox* box, SetupControl* control)
{
	// Descriptive callback name; two cdecl arguments supplied by 0054744e.
	FrontEnd::LandscapeDialog->SpellDialog->Show();
}

// BW1W120 00546280 BW1M100 105cd3c0 void SetupLandscapeBox::Init(unsigned int, unsigned int, void (*)(int, SetupBox *, SetupControl *, int, int))
void SetupLandscapeBox::Init(uint32_t width, uint32_t height,
                             void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::LandscapeDialog = this;
	Help = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x42) SetupEdit(1006, 150, 525, 500, 30, L" ", false);
	Help->text_size = GetSmallTextSize();
	Accept = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x47)
		SetupBigButton(0, 40, 520, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xa24), 40, 0, BBSTYLE_LEFT_ARROW);
	Cancel = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x48)
		SetupBigButton(1, 720, 520, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xa23), 40, 1, BBSTYLE_RIGHT_ARROW);
	Name = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x4f) SetupEdit(2, 100, 440, 100, 30, L"", true);
	NameLabel = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x50) SetupStaticText(
		999, 100, 410, 110, 40, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x115e), TEXTJUSTIFY_LEFT);
	PlayerCountLabel = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x51)
		SetupStaticText(999, 100, 80, 210, 40, L"", TEXTJUSTIFY_LEFT);
	swprintf(PlayerCountLabel->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10e7),
	         Settings.GuaranteedPlayers);
	PlayerCount = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x55) SetupSlider(3, 100, 100, 100, 20, 0.0f, L"");
	CitadelTowns = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x57) SetupCheckBox(
		4, 100, 130, false, BBSTYLE_CHECK_BOX_OFF, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10e5), 20);
	CitadelTowns->checked = false;
	NeutralTowns = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x59) SetupCheckBox(
		5, 400, 130, false, BBSTYLE_CHECK_BOX_OFF, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10e6), 20);
	NeutralTowns->checked = false;
	Creatures = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x5b) SetupCheckBox(
		6, 100, 160, false, BBSTYLE_CHECK_BOX_OFF, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10e8), 20);
	Creatures->checked = false;
	Rocks = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x5d) SetupCheckBox(
		7, 400, 160, false, BBSTYLE_CHECK_BOX_OFF, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10e9), 20);
	Rocks->checked = false;
	Trees = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x5f) SetupCheckBox(
		8, 100, 190, false, BBSTYLE_CHECK_BOX_OFF, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10ea), 20);
	Trees->checked = false;
	Fields = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x61) SetupCheckBox(
		9, 400, 190, false, BBSTYLE_CHECK_BOX_OFF, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10eb), 20);
	Fields->checked = false;
	Fish = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x63) SetupCheckBox(
		10, 100, 220, false, BBSTYLE_CHECK_BOX_OFF, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10ec), 20);
	Fish->checked = false;
	Slider0x478 = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x69) SetupSlider(12, 100, 290, 100, 20, 0.0f, L"");
	Label0x460 = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x6a)
		SetupStaticText(999, 100, 260, 250, 30, L"", TEXTJUSTIFY_LEFT);
	swprintf(Label0x460->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x115b),
	         get_type_string(Settings.field_0x41c));
	Slider0x47c = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x6d) SetupSlider(11, 320, 290, 100, 20, 0.0f, L"");
	Label0x464 = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x6e)
		SetupStaticText(999, 320, 260, 250, 30, L"", TEXTJUSTIFY_LEFT);
	swprintf(Label0x464->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x115c),
	         get_type_string(Settings.field_0x418));
	Slider0x480 = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x70) SetupSlider(13, 540, 290, 100, 20, 0.0f, L"");
	Label0x468 = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x71)
		SetupStaticText(999, 540, 260, 250, 30, L"", TEXTJUSTIFY_LEFT);
	// The original initialization uses +0x430 here, although slider 13 subsequently edits +0x438.
	swprintf(Label0x468->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x115d),
	         get_type_string(Settings.field_0x418));
	ListLabel0x46c = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x75) SetupStaticText(
		999, 100, 310, 250, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x12be), TEXTJUSTIFY_LEFT);
	List0x4a8 = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x76) SetupList(14, 100, 350, 200, 60);
	ListLabel0x470 = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x79) SetupStaticText(
		999, 320, 310, 250, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x12bf), TEXTJUSTIFY_LEFT);
	List0x4ac = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x7a) SetupList(15, 320, 350, 200, 60);
	SpellButton = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x7c)
		SetupButton(17, 320, 440, 200, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x12c0), 0);
	SpellButton->ContinueButtonCallback = (void*)OpenSpellSetup;
}

// BW1W120 00546c30 unsigned short * get_type_string(float)
char16_t* get_type_string(float value)
{
	// Returns shared frontend scratch storage, not the database entry itself.
	if (value < 0.3f)
	{
		wcscpy(FrontEnd::TypeString, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x1156));
		return FrontEnd::TypeString;
	}
	if (value > 0.6f)
	{
		wcscpy(FrontEnd::TypeString, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x1158));
		return FrontEnd::TypeString;
	}
	wcscpy(FrontEnd::TypeString, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x1157));
	return FrontEnd::TypeString;
}

// BW1W120 00546d10 BW1M100 105cd360 void SetupLandscapeBox::Destroy(void)
void SetupLandscapeBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::LandscapeDialog = NULL;
}

static inline void SetSliderValue(SetupSlider* slider, float value)
{
	// Source-level helper for the repeated inlined slider clamp.
	// Operand order preserves unordered comparisons.
	if (value > 0.0f)
	{
		if (value >= 1.0f)
			value = 1.0f;
	}
	else
		value = 0.0f;
	slider->value = value;
}

// BW1W120 00546d20 BW1M100 105cce40 void SetupLandscapeBox::InitControls(void)
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
	for (text = 0x12c1; text <= 0x12c5; ++text)
	{
		List0x4a8->InsertString(List0x4a8->NumItems, HelpTextDataBase::HelpTextDatabase.GetHelpText(text));
		List0x4a8->SetCol(List0x4a8->NumItems - 1, 0);
	}
	while (List0x4ac->NumItems > 0)
		List0x4ac->DeleteString(List0x4ac->NumItems - 1);
	for (text = 0x12c6; text <= 0x12c9; ++text)
	{
		List0x4ac->InsertString(List0x4ac->NumItems, HelpTextDataBase::HelpTextDatabase.GetHelpText(text));
		List0x4ac->SetCol(List0x4ac->NumItems - 1, 0);
	}
	List0x4ac->fn_00547150(Settings.field_0x428);
	List0x4a8->fn_00547150(Settings.field_0x424);
}

// BW1W120 005471c0 void SetupList::SetCol(int, unsigned int)
void SetupList::SetCol(int index, uint32_t value)
{
	if (index >= 0 && index < NumItems)
		color[index] = LH3DColor(value);
}

// BW1W120 00547970 BW1M100 105cc310 void SpellSetupBox::Init(unsigned int, unsigned int, void (*)(int, SetupBox *, SetupControl *, int, int))
void SpellSetupBox::Init(uint32_t width, uint32_t height,
                         void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::SpellDialog = this;
	Help = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x145) SetupEdit(1006, 150, 525, 500, 30, L" ", false);
	Help->text_size = GetSmallTextSize();
	Accept = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x14a)
		SetupBigButton(0, 40, 520, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xa24), 40, 0, BBSTYLE_LEFT_ARROW);
	Cancel = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x14b)
		SetupBigButton(1, 720, 520, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xa23), 40, 1, BBSTYLE_RIGHT_ARROW);
	OneShotLabel = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x150) SetupStaticText(
		999, 90, 100, 200, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10ed), TEXTJUSTIFY_LEFT);
	SpellLabel = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x151) SetupStaticText(
		999, 330, 100, 200, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10f9), TEXTJUSTIFY_LEFT);
	OneShotList = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x152) SetupMultiList(3, 90, 140, 230, 200, 10);
	// Both constructors really receive 10, although the second InitControls loop inserts eleven rows.
	SpellList = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x153) SetupMultiList(2, 330, 140, 200, 200, 10);
}

// BW1W120 00547c30 BW1M100 105cc2b0 void SpellSetupBox::Destroy(void)
void SpellSetupBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::SpellDialog = NULL;
}

// BW1W120 00547c40 BW1M100 105cc120 void SpellSetupBox::InitControls(void)
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
		OneShotList->InsertString(OneShotList->NumItems, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10ee + i));
		OneShotList->SetCol(OneShotList->NumItems - 1, 0);
		OneShotList->list[i] = Settings.OneShotSpells[i];
	}
	for (i = 0; i < 11; ++i)
	{
		SpellList->InsertString(SpellList->NumItems, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x10ee + i));
		SpellList->SetCol(SpellList->NumItems - 1, 0);
		SpellList->list[i] = Settings.Spells[i];
	}
}

// BW1W120 00547ff0 BW1M100 105cbb10 void SetupOnlineLandscapes::Init(unsigned int, unsigned int, void (*)(int, SetupBox *, SetupControl *, int, int))
void SetupOnlineLandscapes::Init(uint32_t width, uint32_t height,
                                 void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::OnlineLandscapesDialog = this;
	Help = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x1cc) SetupEdit(1006, 150, 525, 500, 30, L"", false);
	Help->text_size = 16;
	Back = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x1d0)
		SetupBigButton(0, 720, 520, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xa24), 40, 1, BBSTYLE_RIGHT_ARROW);
	LandscapeLabel = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x1d4)
		SetupStaticText(3, 80, 60, 200, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x12ca), TEXTJUSTIFY_LEFT);
	LandscapeLabel->text_size = 20;
	LandscapeList = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x1d6) SetupList(2, 80, 90, 250, 420);
	LandscapeList->text_size = 20;
	DescriptionLabel = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x1d8)
		SetupStaticText(6, 350, 350, 400, 30, L"", TEXTJUSTIFY_LEFT);
	DescriptionLabel->text_size = 20;
	DescriptionList = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x1da) SetupList(5, 350, 375, 400, 100);
	DescriptionList->text_size = 20;
	DescriptionList->Hide(true);
	Download = new ("C:\\dev\\MP\\Black\\FrontEndSetupGame.cpp", 0x1de)
		SetupButton(4, 350, 480, 200, 30, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x12cc), 0);
	Download->Hide(true);
	Download->text_size = 20;
}

// BW1W120 005482a0 BW1M100 105cbaa0 void SetupOnlineLandscapes::Destroy(void)
void SetupOnlineLandscapes::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::OnlineLandscapesDialog = NULL;
}

// BW1W120 005482b0 BW1M100 105cba40 void SetupOnlineLandscapes::InitControls(void)
void SetupOnlineLandscapes::InitControls()
{
	FrontEnd::OnlineLandscapesDialog->setup_box->DefaultTextSize = 16;
	Thumbnail = NULL;
	ThumbnailMaterial = NULL;
}

// BW1W120 00548860 ServerLandscapeMap::Point * FindThumbnailPoint(LHLinkedList<ServerLandscapeMap::Point *> const &, int, int)
ServerLandscapeMap::Point* FindThumbnailPoint(const LHLinkedList<ServerLandscapeMap::Point*>& points, int x, int y)
{
	// TODO: Recover the original name/signature. The list/point shapes agree with
	// ServerLandscapeMap::Point and its existing LHLinkedList storage; no allocation is performed here.
	for (LHLinkedNode<ServerLandscapeMap::Point*>* node = points.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->field_0x0 == (uint32_t)x && node->payload->field_0x4 == (uint32_t)y)
			return node->payload;
	}
	return NULL;
}

// BW1W120 00548890 void DrawThumbnailPoint(unsigned short *, int, int, int, unsigned short)
void DrawThumbnailPoint(uint16_t* pixels, int x, int y, int radius, uint16_t color)
{
	// Descriptive name. The original draws concentric rings into a 256-pixel stride.
	// TODO: x87 keeps the angular recurrence in extended precision; verify its source type/codegen.
	for (; radius != -1; --radius)
	{
		float angle = 6.2831855f;
		do
		{
			int row = (int)(cos(angle) * radius + y + 0.5f);
			int column = (int)(sin(angle) * radius + x + 0.5f);
			pixels[row * 256 + column] = color;
			angle -= 0.06981317f;
		} while (angle > 0.0f);
	}
}

// BW1W120 00548920 void SetupOnlineLandscapes::ReleaseThumbnail(void)
void SetupOnlineLandscapes::ReleaseThumbnail()
{
	// Descriptive method name, ECX instance and no stack arguments.
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

// BW1W120 00549910 BW1M100 105c9f10 void SetupOnlineLandscapes::Show(void)
void SetupOnlineLandscapes::Show()
{
	FrontEnd::OnlineLandscapesDialog->Download->Hide(false);
	DialogBoxBase::Show();
}

// TODO: 005471e0 landscape callback and 00547dc0 spell callback need the parent dialog refresh
// flags, dialog close API and setupgamedata spell setters. Do not replace them with partial dispatchers.
// TODO: 005482e0..0054990f also contains thumbnail loading, online-list scanning,
// the download state machine and progress-text formatting. Download/texture
// layouts and original names remain incomplete; retain extracted implementations pending recovery.
// TODO: Recover the CRT sentinel/ctype initializers and shared data ownership before TU linking.
