#include "ColourConstants.h" /* For White */
#include "FrontEnd.h"

#include <math.h>
#include <wchar.h>
#include <windows.h>

#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LH3DLib/development/LH3DTexture.h>
#include <Lionhead/LH3DLib/development/LHRandom.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>
#include <SetupThing/Setup.h> /* For GetMidTextSize */

#include "CDBox.h"
#include "EditingDebugBox.h"
#include "EndGameBox.h"
#include "HelpText.h"
#include "HistoryBox.h"
#include "LoadingBox.h"
#include "MainMenu.h"
#include "NewProfileBox.h"
#include "Plasma.h"
#include "PlayerProfile.h"
#include "ProfileEditor.h"
#include "RegisterBox.h"
#include "SetupBigButton.h"
#include "SetupBox.h"
#include "SetupCheckBox.h"
#include "SetupEdit.h"
#include "SetupList.h"
#include "SetupPicture.h"
#include "SetupStaticText.h"
#include "SetupThing.h"
#include "SkirmishGameBox.h"
#include "SkipBox.h"
#include "StartGameBox.h"
#include "TattooEditor.h"

Plasma* FrontEnd::Dat_00CD06E8;

// BW1W120 007faaf0 BW1M100 100304f0 angle_correct(float)
float angle_correct(float angle);
// BW1W120 0053f7b0 void AddMainMenuTabs(int)
void AddMainMenuTabs(int selected);

char* WCHAR2CHAR(char16_t* text)
{
	int length = WideCharToMultiByte(CP_ACP, 0, text, -1, FrontEnd::ConversionBuffer, 0x3ff, NULL, NULL);
	FrontEnd::ConversionBuffer[length] = '\0';
	return FrontEnd::ConversionBuffer;
}

bool NewProfileBox::CanESCOut()
{
	return false;
}

bool TattooEditor::CanESCOut()
{
	return false;
}

bool ProfileEditor::CanESCOut()
{
	// TODO: Resolve the full-EAX return here against the base and sibling AL-returning virtual methods.
	if (FrontEnd::ActiveProfileEditor != NULL && FrontEnd::ProfileEditorActive)
	{
		return false;
	}
	return true;
}

bool MainMenu::CanESCOut()
{
	return false;
}

bool SkipBox::CanESCOut()
{
	return false;
}

bool EndGameBox::CanESCOut()
{
	return false;
}

void FrontEnd::SetCursorOn()
{
	CursorOn = true;
	LHSys::TheSystem.mouse.SetCursor(NULL, LH_MOUSE_IMAGE_TYPE_0x01, 0);
}

void FrontEnd::SetCursorOff()
{
	CursorOn = false;
}

void Plasma::Init()
{
	PinTexture = LH3DTexture::Create("data\\textures\\pin.raw", 0x41, 0, NULL);
	PinMaterial = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_0x6, PinTexture);
	PinMaterial->cull_mode |= 4;
	int x;
	int y;
	for (x = 0; x < 41; ++x)
	{
		for (y = 0; y < 31; ++y)
		{
			int index = x * 31 + y;
			points[index].x = (LHSys::TheSystem.screen.width * x) / 40;
			points[index].y = (LHSys::TheSystem.screen.height * y) / 30;
			points[index].z = 10000.0f;
			uvs[index].x = x * 0.025f;
			uvs[index].y = y * (1.0f / 30.0f);
			colors[index] = LH3DColor(0xffffffff);
		}
	}
	// Two triangles for every cell in the column-major 41 by 31 point grid.
	int triangle = 0;
	for (x = 0; x < 40; ++x)
	{
		for (y = 0; y < 30; ++y)
		{
			int index = x * 31 + y;
			indices[triangle][0] = index;
			indices[triangle][1] = index + 31;
			indices[triangle][2] = index + 32;
			++triangle;
			indices[triangle][0] = index + 32;
			indices[triangle][1] = index + 1;
			indices[triangle][2] = index;
			++triangle;
		}
	}
	for (int i = 0; i < 16; ++i)
	{
		// MSVC6 evaluates the original three-coordinate constructor arguments
		// right to left. Keep the random stream in that observed z, y, x order.
		float z = Random(-1.0f, 1.0f);
		float y = Random(-1.0f, 1.0f);
		float x = Random(-1.0f, 1.0f);
		field_0xe868[i].x = x;
		field_0xe868[i].y = y;
		field_0xe868[i].z = z;
		z = Random(-8.0f, 8.0f);
		y = Random(-8.0f, 8.0f);
		x = Random(-8.0f, 8.0f);
		field_0xe7a8[i].x = x;
		field_0xe7a8[i].y = y;
		field_0xe7a8[i].z = z;
	}
}

void Plasma::Render(int animate)
{
	float step = (int)LH3DTech::g_delta_time * 0.0000001f;
	if (!animate)
	{
		step = 0.0f;
	}
	for (int pass = 0; pass < 2; ++pass)
	{
		for (int x = 0; x < 41; ++x)
		{
			for (int y = 0; y < 31; ++y)
			{
				float u = 0.0f;
				float v = 0.0f;
				for (int i = pass * 8; i < pass * 8 + 8; ++i)
				{
					LHPoint& phase = field_0xe7a8[i];
					LHPoint& velocity = field_0xe868[i];
					double   dx = x - (sin(phase.x) + 1.0) * 20.0;
					float    dy = y - (cos(phase.y) + 1.0) * 20.0;
					double   contribution = (cos(phase.z) * 2.0 + 3.0) * 3.0f / (sqrt(dx * dx + dy * dy) + 10.0);
					if (i & 1)
					{
						u += contribution;
					}
					else
					{
						v += contribution;
					}
					// The target advances phases inside the vertex loop, not once per frame.
					phase.x += step * velocity.x;
					phase.y += step * velocity.y;
					phase.z += step * velocity.z;
					phase.x = angle_correct(phase.x);
					phase.y = angle_correct(phase.y);
					phase.z = angle_correct(phase.z);
				}
				uvs[x * 31 + y].x = u;
				uvs[x * 31 + y].y = v;
			}
		}
		// The Windows __fastcall interface passes point count/positions in ECX/EDX.
		LH3DTech::Draw3DScreenTriangle(0x4f7, points, colors, &uvs[0].x, 0x960, (long*)indices, PinMaterial, 0);
	}
}

void FrontEnd::JustDoNewProfileBox()
{
	JustDoABox(NewProfileDialog);
}

void NewProfileBox::Init(uint32_t width, uint32_t height,
                         void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::ActiveNewProfileDialog = this;
	SymbolPicture = new ("C:\\dev\\MP\\Black\\frontend.cpp", 536)
		SetupPicture(123, 368, 300, FrontEnd::PlayerSymbolsMaterial, 0, 4, true, 64, false);
	new ("C:\\dev\\MP\\Black\\frontend.cpp", 538) SetupStaticText(
		999, 100, 150, 600, 50, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xd7e), TEXTJUSTIFY_CENTRE);
	ContinueButton = new ("C:\\dev\\MP\\Black\\frontend.cpp", 540)
		SetupBigButton(2, 610, 400, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xa23), 40, 1, BBSTYLE_RIGHT_ARROW);
	CancelButton = new ("C:\\dev\\MP\\Black\\frontend.cpp", 541)
		SetupBigButton(1, 150, 400, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xa24), 40, 0, BBSTYLE_LEFT_ARROW);
	new ("C:\\dev\\MP\\Black\\frontend.cpp", 546) SetupStaticText(
		999, 100, 300, 250, 64, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xd7f), TEXTJUSTIFY_RIGHT);
	new ("C:\\dev\\MP\\Black\\frontend.cpp", 547) SetupStaticText(
		999, 450, 300, 250, 64, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xd80), TEXTJUSTIFY_LEFT);
	NameEdit = new ("C:\\dev\\MP\\Black\\frontend.cpp", 550) SetupEdit(3, 200, 230, 400, 50, L"", true);
	NameEdit->field_0x240 = 29;
	FrontEnd::ActiveNewProfileDialog->Completed = false;
}

void NewProfileBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::ActiveNewProfileDialog = NULL;
}

void NewProfileBox::InitControls()
{
	setup_box->SetFocusControl(NameEdit);
	wcsncpy(NameEdit->label, L"", 0xff);
	NameEdit->label[0xff] = 0;
	NameEdit->CursorPosition = NameEdit->SelectEnd = NameEdit->SelectStart = wcslen(NameEdit->label);
	NameEdit->field_0x258 = 0;
	ContinueButton->Hide(PlayerProfile::GetNumberOfProfiles() == 0);
	CancelButton->rect.p1.x = CancelButton->rect.p0.x + 40;
	ContinueButton->rect.p1.x = ContinueButton->rect.p0.x + 40;
	SymbolPicture->picture_index = 0u % (uint32_t)SymbolPicture->NumPictures;
	FrontEnd::ActiveNewProfileDialog->Completed = false;
}

void LoadingBox::Init(uint32_t width, uint32_t height,
                      void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::ActiveLoadingDialog = this;
}

void LoadingBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::ActiveLoadingDialog = NULL;
}

void LoadingBox::InitControls() {}

void EditingDebugBox::Init(uint32_t width, uint32_t height,
                           void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::ActiveEditingDebugDialog = this;
	Edit = new ("C:\\dev\\MP\\Black\\frontend.cpp", 705) SetupEdit(1, 200, 300, 400, 30, L"", true);
	Edit->text_size = GetMidTextSize();
	PromptText =
		new ("C:\\dev\\MP\\Black\\frontend.cpp", 708) SetupStaticText(2, 200, 250, 400, 30, L"", TEXTJUSTIFY_CENTRE);
	PromptText->text_size = GetMidTextSize();
	ContinueButton = new ("C:\\dev\\MP\\Black\\frontend.cpp", 712)
		SetupBigButton(3, 570, 350, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xa23), 30, 1, BBSTYLE_RIGHT_ARROW);
	CancelButton = new ("C:\\dev\\MP\\Black\\frontend.cpp", 713)
		SetupBigButton(4, 200, 350, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xa24), 30, 0, BBSTYLE_LEFT_ARROW);
	field_0x20 = 0;
	InitialText = NULL;
	wcscpy(Prompt, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x1a84));
}

void EditingDebugBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::ActiveEditingDebugDialog = NULL;
}

void EditingDebugBox::InitControls()
{
	wcsncpy(Edit->label, InitialText, 0xff);
	Edit->label[0xff] = 0;
	Edit->CursorPosition = Edit->SelectEnd = Edit->SelectStart = wcslen(Edit->label);
	Edit->field_0x258 = 0;
	wcscpy(PromptText->label, Prompt);
}

void RegisterBox::Init(uint32_t width, uint32_t height,
                       void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::ActiveRegisterDialog = this;
	new ("C:\\dev\\MP\\Black\\frontend.cpp", 776) SetupStaticText(
		999, 100, 150, 600, 250, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xd82), TEXTJUSTIFY_CENTRE_BREAK);
	LoginButton = new ("C:\\dev\\MP\\Black\\frontend.cpp", 777)
		SetupButton(2, 310, 430, 200, 50, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xd86), 0);
	RegisterButton = new ("C:\\dev\\MP\\Black\\frontend.cpp", 778)
		SetupButton(1, 100, 430, 200, 50, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xd85), 0);
	ContinueButton = new ("C:\\dev\\MP\\Black\\frontend.cpp", 779)
		SetupButton(3, 520, 430, 200, 50, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xa23), 0);
	NameEdit = new ("C:\\dev\\MP\\Black\\frontend.cpp", 781) SetupEdit(4, 250, 300, 300, 50, L"", true);
	PasswordEdit = new ("C:\\dev\\MP\\Black\\frontend.cpp", 782) SetupEdit(5, 250, 360, 300, 50, L"", true);
	PasswordEdit->MaskedText = true;
	new ("C:\\dev\\MP\\Black\\frontend.cpp", 785) SetupStaticText(
		999, 50, 300, 200, 50, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xd83), TEXTJUSTIFY_RIGHT);
	new ("C:\\dev\\MP\\Black\\frontend.cpp", 786) SetupStaticText(
		999, 50, 360, 200, 50, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xd84), TEXTJUSTIFY_RIGHT);
	Completed = false;
}

void RegisterBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::ActiveRegisterDialog = NULL;
}

void RegisterBox::InitControls()
{
	setup_box->SetFocusControl(NameEdit);
	wcsncpy(NameEdit->label, L"", 0xff);
	NameEdit->label[0xff] = 0;
	NameEdit->CursorPosition = NameEdit->SelectEnd = NameEdit->SelectStart = wcslen(NameEdit->label);
	NameEdit->field_0x258 = 0;
	wcsncpy(PasswordEdit->label, L"", 0xff);
	PasswordEdit->label[0xff] = 0;
	PasswordEdit->CursorPosition = PasswordEdit->SelectEnd = PasswordEdit->SelectStart = wcslen(PasswordEdit->label);
	PasswordEdit->field_0x258 = 0;
	Completed = false;
}

void ProfileEditor::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::ActiveProfileEditor = NULL;
}

// TODO: ProfileEditor/LoginBox initialization and callbacks depend on registry,
// IME selection, and the remaining frontend state globals.

void MainMenu::Init(uint32_t width, uint32_t height, void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::ActiveMainMenuDialog = this;
	char16_t currentProfile[0x100];
	PlayerProfile::GetCurrentProfile(currentProfile);
	TitleText = new ("C:\\dev\\MP\\Black\\frontend.cpp", 1653)
		SetupStaticText(999, 50, 65, 700, 90, L"", TEXTJUSTIFY_CENTRE_BREAK);
	Buttons[0] = new ("C:\\dev\\MP\\Black\\frontend.cpp", 1657) SetupButton(0, 180, 145, 440, 70, L"", 0);
	Buttons[1] = new ("C:\\dev\\MP\\Black\\frontend.cpp", 1658) SetupButton(1, 180, 225, 440, 70, L"", 0);
	Buttons[2] = new ("C:\\dev\\MP\\Black\\frontend.cpp", 1659) SetupButton(2, 180, 305, 440, 70, L"", 0);
	Buttons[3] = new ("C:\\dev\\MP\\Black\\frontend.cpp", 1660) SetupButton(3, 180, 385, 440, 70, L"", 0);
	Buttons[4] = new ("C:\\dev\\MP\\Black\\frontend.cpp", 1661) SetupButton(4, 180, 465, 440, 70, L"", 0);
	if (PlayerProfile::GetNumberOfProfiles() != 0)
	{
		PlayerProfile::SetCurrentProfile(LHNetGetCurrentProfileNameFromRegistry());
		LHNetUseProfile(LHNetGetCurrentProfileNameFromRegistry());
		char16_t selectedProfile[0x100];
		PlayerProfile::GetCurrentProfile(selectedProfile);
		PlayerProfile::GetProfileByName(selectedProfile, PlayerProfile::Profile);
	}
	// The tab implementation remains extracted while its state is recovered.
	AddMainMenuTabs(0);
}

void TattooEditor::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::ActiveTattooEditor = NULL;
}

void CDBox::Destroy()
{
	// TODO: CDBox's track-query controls and callback need the Redbook helper signatures.
	DialogBoxBase::Destroy();
	FrontEnd::ActiveCDDialog = NULL;
}

void SkipBox::InitControls()
{
	if (SelectedOption < 1)
	{
		SelectedOption = 0;
	}
	else if (SelectedOption > 2)
	{
		SelectedOption = 3;
	}
	for (int i = 0; i < 4; ++i)
	{
		Options[i]->style = i == SelectedOption ? BBSTYLE_CHECK_BOX_ON : BBSTYLE_CHECK_BOX_OFF;
	}
}

void SkipBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::ActiveSkipDialog = NULL;
}

void StartGameBox::Init(uint32_t width, uint32_t height,
                        void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::ActiveStartGameDialog = this;
	setup_box->DefaultTextSize = GetBigTextSize();
	text = new ("C:\\dev\\MP\\Black\\frontend.cpp", 3533)
		SetupStaticText(1, 40, 30, 720, 40, L"", TEXTJUSTIFY_CENTRE_BREAK);
	button = new ("C:\\dev\\MP\\Black\\frontend.cpp", 3535)
		SetupButton(999, 320, 530, 160, 40, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x1a60), 1);
	list = new ("C:\\dev\\MP\\Black\\frontend.cpp", 3536) SetupList(0, 100, 110, 600, 380);
	list->DrawHighlightBox = false;
	BigButton =
		new ("C:\\dev\\MP\\Black\\frontend.cpp", 3539) SetupBigButton(999, 30, 530, L"", 40, 0, BBSTYLE_LEFT_ARROW);
}

void StartGameBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::ActiveStartGameDialog = NULL;
}

void StartGameBox::InitControls()
{
	wcscpy(BigButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(0xd7a));
}

void SkirmishGameBox::Init(uint32_t width, uint32_t height,
                           void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::ActiveSkirmishDialog = this;
	setup_box->DefaultTextSize = GetBigTextSize();
	TitleText = new ("C:\\dev\\MP\\Black\\frontend.cpp", 3596)
		SetupStaticText(1, 40, 30, 720, 40, L"", TEXTJUSTIFY_CENTRE_BREAK);
	BackButton =
		new ("C:\\dev\\MP\\Black\\frontend.cpp", 3598) SetupBigButton(999, 30, 530, L"", 40, 0, BBSTYLE_LEFT_ARROW);
	StartButton =
		new ("C:\\dev\\MP\\Black\\frontend.cpp", 3599) SetupBigButton(998, 730, 530, L"", 40, 1, BBSTYLE_RIGHT_ARROW);
	MapList = new ("C:\\dev\\MP\\Black\\frontend.cpp", 3600) SetupList(0, 100, 110, 600, 380);
	MapList->DrawHighlightBox = true;
}

void SkirmishGameBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::ActiveSkirmishDialog = NULL;
}

void FrontEnd::JustDoSkirmishGameBox()
{
	JustDoABox(SkirmishDialog);
}

void HistoryBox::Init(uint32_t width, uint32_t height,
                      void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(width, height, callback);
	FrontEnd::ActiveHistoryDialog = this;
	setup_box->field_0x94 = 0;
	setup_box->DefaultTextSize = GetBigTextSize();
	PreviousButton = new ("C:\\dev\\MP\\Black\\frontend.cpp", 3831)
		SetupBigButton(1, 60, 500, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x1a10), 40, 0, BBSTYLE_LEFT_ARROW);
	NextButton = new ("C:\\dev\\MP\\Black\\frontend.cpp", 3832)
		SetupBigButton(2, 700, 500, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x1a0f), 40, 1, BBSTYLE_RIGHT_ARROW);
	CloseButton = new ("C:\\dev\\MP\\Black\\frontend.cpp", 3833)
		SetupButton(999, 320, 500, 160, 40, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x1a73), 1);
	CloseButton->text_size = GetMidTextSize();
}

void HistoryBox::Destroy()
{
	DialogBoxBase::Destroy();
	FrontEnd::ActiveHistoryDialog = NULL;
}

void HistoryBox::InitControls() {}

bool HistoryBox::WantsKeyControl()
{
	return false;
}

bool HistoryBox::WantsMouseControl()
{
	if (!IsVisible())
	{
		return false;
	}
	int x = LHSys::TheSystem.mouse.DefaultPos.x;
	int y = LHSys::TheSystem.mouse.DefaultPos.y;
	SetupThing::unadjust(x, y);
	if (setup_box->FindControl(x, y) != NULL)
	{
		return true;
	}
	return SetupThing::MouseCaptured != 0;
}

bool HistoryBox::CanESCOut()
{
	return false;
}
