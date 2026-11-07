#include "alexmfc.h"

#include <ctype.h>
#include <math.h>
#include <new>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>

#include <Lionhead/LH3DLib/development/LH3DAtmos.h>
#include <Lionhead/LH3DLib/development/LH3DLine.h>
#include <Lionhead/LH3DLib/development/LH3DMaterial.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DObject.h>
#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LH3DLib/development/LH3DTexture.h>
#include <Lionhead/LHLib/ver5.0/LHKey.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>

#include <chlasm/HelpTextEnums.h>

#include "Audio.h"
#include "DialogBoxBase.h"
#include "GJUtils.h"
#include "Game.h"
#include "Global.h"
#include "HalfLifeConstants.h"
#include "HelpText.h"
#include "Interface.h"

#define SETUP_MP3_ICON_UV ((float)SETUP_MP3_ICON_SIZE / LH3D_ATMOS_TEXTURE_SIZE)

int SetupThing::DrawAlpha = 0xff;

static Vertex3D QuadVertices[] = {
	{0.0f, 0.0f, 0.0f, 1.0f}, //
	{0.0f, 0.0f, 0.0f, 1.0f}, //
	{0.0f, 0.0f, 0.0f, 1.0f}, //
	{0.0f, 0.0f, 0.0f, 1.0f}, //
};
static uint16_t QuadIndices[] = {0, 1, 3, 1, 2, 3};

LH3DColor SetupThing::SelectedColour = LH3DColor(0xffffffff);
LH3DColor SetupThing::HighlightColour = LH3DColor(0xffc08020);
LH3DColor SetupThing::TextColour = LH3DColor(0xff000000);
LH3DColor SetupThing::ShadowColour = LH3DColor(0xff000000);
LH3DColor SetupThing::DefaultColor = LH3DColor(0xffffffff);
LH3DColor SetupThing::NormalColour = LH3DColor(0xffd0d0d0);

LH3DMaterial*  SetupThing::ButtonMaterial;
bool           SetupBox::CanEscape;
bool           SetupBox::WantKey;
SetupBox*      SetupBox::CurrentInitBox;
SetupBox*      SetupBox::CurrentActiveBox;
SetupBox*      SetupBox::CurrentFadeBox;
bool32_t       SetupThing::PrevLeftButton;
LH3DMesh*      SetupThing::Mesh;
LH3DObject*    SetupThing::Object;
bool32_t       SetupThing::IMEActive;
int            SetupThing::LeftClickCount;
int            SetupThing::RightClickCount;
bool32_t       SetupThing::MouseCaptured;
int            SetupThing::DoubleClicked;
int            SetupThing::RightClicked;
bool           SetupThing::Dragging;
int            SetupThing::MouseDownX;
int            SetupThing::MouseDownY;
SetupRect      SetupThing::TextBounds;
Zoomer         SetupBox::FadeIn;
bool32_t       SetupThing::Initialised;
GatheringText* SetupThing::Font;

bool NeedsBiggerText()
{
	if (GGame::g_game == NULL)
		return false;
	GAME_LANGUAGE language = GGame::g_game->CurrentLanguage;
	if (language == GAME_LANGUAGE_JAPANESE || language == GAME_LANGUAGE_SIMPLIFIED_CHINESE ||
	    language == GAME_LANGUAGE_TRADITIONAL_CHINESE || language == GAME_LANGUAGE_KOREAN ||
	    language == GAME_LANGUAGE_THAI)
		return true;
	return false;
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

void SetupBox::SetCurrentActiveBox(SetupBox* box)
{
	if (box != NULL)
	{
		FadeIn.SetPosition(0.0f);
		FadeIn.SetDestination(1.0f, 0.6f);
	}
	SetupThing::LeftClickCount = 0;
	SetupThing::RightClickCount = 0;
	if (CurrentActiveBox != NULL)
		CurrentActiveBox->SetFocusControl(NULL);
	if (box != NULL)
		box->SetFocusControl(NULL);
	if (CurrentActiveBox != NULL && CurrentActiveBox->OnHold)
		CurrentActiveBox->SetOffHold();
	if (CurrentActiveBox != NULL && CurrentActiveBox->Callback != NULL)
	{
		CurrentActiveBox->HeldOverWidget = NULL;
		CurrentActiveBox->FocusedWidget = NULL;
		CurrentActiveBox->SetOffHold();
		CurrentActiveBox->Callback(SETUP_MESSAGE_DEACTIVATE, CurrentActiveBox, CurrentActiveBox->FocusedWidget, 0, 0);
	}
	CurrentFadeBox = CurrentActiveBox;
	if (CurrentFadeBox != NULL)
	{
		CurrentFadeBox->HoldFade.SetPosition(0.0f);
		CurrentFadeBox->HoldFade.SetDestination(0.0f, 0.2f);
		CurrentFadeBox->Fade.SetDestination(0.0f, 0.2f);
	}
	CurrentActiveBox = box;
	LHSys::TheSystem.charRing.Clear();
	SetupThing::RightClickCount = 0;
	SetupThing::LeftClickCount = 0;
	SetupThing::PrevLeftButton = SetupThing::MouseCaptured = LHSys::TheSystem.mouse.Buttons & 1;
	if (box != NULL)
	{
		box->Fade.SetPosition(0.0f);
		box->HoldFade.SetPosition(0.0f);
		box->Fade.SetDestination(1.0f, 0.5f);
	}
	if (CurrentActiveBox != NULL)
	{
		CurrentActiveBox->SetOffHold();
		CurrentActiveBox->HeldOverWidget = NULL;
		CurrentActiveBox->FocusedWidget = NULL;
	}
	if (CurrentActiveBox != NULL && CurrentActiveBox->Callback != NULL)
		CurrentActiveBox->Callback(SETUP_MESSAGE_ACTIVATE, CurrentActiveBox, CurrentActiveBox->FocusedWidget, 0, 0);
	DialogBoxBase::UpdateLastShown(CurrentActiveBox);
}

SetupBox* SetupBox::GetCurrentActiveBox()
{
	return CurrentActiveBox;
}

SetupBox* SetupBox::GetCurrentFadeBox()
{
	return CurrentFadeBox;
}

void SetupBox::UpdateWantKey()
{
	WantKey = false;
	if (GetCurrentActiveBox() != NULL)
	{
		bool wantKey = true;
		bool canEscape = true;
		if (DialogBoxBase::LastShown != NULL && DialogBoxBase::LastShown->setup_box == GetCurrentActiveBox())
		{
			wantKey = DialogBoxBase::LastShown->WantsKeyControl();
			canEscape = wantKey && DialogBoxBase::LastShown->CanESCOut();
		}
		if (GetCurrentActiveBox()->OnHold)
			canEscape = false;
		CanEscape = canEscape;
		WantKey = wantKey;
	}
}

void __stdcall SetupBox::DefaultCB(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	int           controlId = control != NULL ? control->id : 0;
	int           pressed = -1;
	SetupControl* button;
	if (message == SETUP_MESSAGE_CHAR)
	{
		if (data2 == 0)
		{
			char16_t yes = *HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_120);
			char16_t no = *HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_119);
			if (yes != no)
			{
				if (toupper(data1) == toupper(yes) && toupper(data1) &&
				    (button = box->FindControl(SETUP_MESSAGE_BOX_ID_YES)) != NULL)
					pressed = button->id;
				if (toupper(data1) == toupper(no) && toupper(data1) &&
				    (button = box->FindControl(SETUP_MESSAGE_BOX_ID_NO)) != NULL)
					pressed = button->id;
			}
		}
	}
	else if (message == SETUP_MESSAGE_KEY)
	{
		switch (data1)
		{
		case LHKEY_RETURN:
		case LHKEY_RIGHT_RETURN:
			button = box->FindControl(SETUP_MESSAGE_BOX_ID_OK);
			if (button != NULL)
				pressed = button->id;
			break;
		case LHKEY_ESCAPE:
			button = box->FindControl(SETUP_MESSAGE_BOX_ID_CANCEL);
			if (button != NULL)
				pressed = button->id;
			else
			{
				button = box->FindControl(SETUP_MESSAGE_BOX_ID_OK);
				if (button != NULL)
					pressed = button->id;
			}
			break;
		}
	}
	if (controlId >= SETUP_MESSAGE_BOX_ID_OK && message == SETUP_MESSAGE_CLICK)
		pressed = controlId;
	if (pressed >= 0 && box->OnHold)
	{
		box->SetOffHold();
		if (box->Callback != NULL)
			box->Callback(SETUP_MESSAGE_MESSAGE_BOX_RESULT, box, control, pressed, box->HoldData);
	}
}

SetupControl* SetupBox::FindControl(int x, int y)
{
	SetupControl* hit = NULL;
	for (SetupControl* control = WidgetList; control != NULL; control = control->next)
	{
		if (control->HitTest(x, y) && !control->hidden &&
		    (hit == NULL || control->id == SETUP_IME_CANDIDATE_LIST_ID || control->OnTop))
			hit = control;
	}
	return hit;
}

SetupControl* SetupBox::FindControl(int id)
{
	SetupControl* control;
	for (control = WidgetList; control != NULL; control = control->next)
	{
		if (control->id == id)
			return control;
	}
	for (control = HoldWidgetList; control != NULL; control = control->next)
	{
		if (control->id == id)
			return control;
	}
	return NULL;
}

void SetupBox::SetOnHold(unsigned long data)
{
	HoldData = data;
	if (!OnHold)
	{
		SetFocusControl(NULL);
		HoverWidget = NULL;
		HeldOverWidget = NULL;
		if (Callback != NULL)
			Callback(SETUP_MESSAGE_ON_HOLD, this, FocusedWidget, 0, 0);
		SetupControl* list = WidgetList;
		OnHold = true;
		WidgetList = HoldWidgetList;
		HoldWidgetList = list;
		HoldFade.SetPosition(0.0f);
		HoldFade.SetDestination(1.0f, 0.5f);
		LHSys::TheSystem.keyboard.ClearKey();
		LHSys::TheSystem.charRing.Clear();
	}
}

void SetupBox::SetOffHold()
{
	if (OnHold)
	{
		SetFocusControl(NULL);
		SetupControl* list = WidgetList;
		WidgetList = HoldWidgetList;
		HoldWidgetList = list;
		OnHold = false;
		HoverWidget = NULL;
		HeldOverWidget = NULL;
		Fade.SetPosition(1.0f);
		HoldFade.SetPosition(0.0f);
		Fade.SetDestination(1.0f, 0.5f);
		HoldFade.SetDestination(0.0f, 0.2f);
		LHSys::TheSystem.keyboard.ClearKey();
		LHSys::TheSystem.charRing.Clear();
	}
}

void RussClickNoise()
{
	GGlobal::Global.audio->PlaySoundEffect(NULL, 159, 3, 0, 0, 0, GGlobal::Global.audio->AudioBanks[1]);
	if (GGame::g_game->MyInterface() != NULL)
		GGame::g_game->MyInterface()->StartImmersion(IMMERSION_EFFECT_TYPE_COMMAND_SUCCESS, 0x80000000);
}

void SetupBox::DrawAll(int x, int y, int left_button, int double_clicked, bool no_input)
{
	float dt = LH3DTech::g_delta_time * 0.001f;
	if (!no_input)
		FadeIn.Update(dt);
	Fade.Update(dt);
	HoldFade.Update(dt);
	if (Fade.CurrentTime == Fade.duration && HoldFade.CurrentTime == HoldFade.duration && CurrentFadeBox == this &&
	    Fade.CurrentValue == 0.0f)
		CurrentFadeBox = NULL;

	LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_global_alpha;
	SetupThing::unadjust(x, y);
	int alpha = (int)((Fade.GetCurrentValue() - HoldFade.GetCurrentValue() * 0.75f) * Alpha * 255.0f);
	CLAMP(alpha, 0, 255);
	SetupThing::DrawAlpha = alpha;
	if (Callback != NULL)
		Callback(SETUP_MESSAGE_PRE_DRAW, this, FocusedWidget, x, y);
	if (BackgroundStyle != SETUP_BACKGROUND_NONE && BackgroundWidth > 0 && BackgroundHeight > 0)
	{
		SetupThing::DrawAlpha = alpha;
		if (BackgroundStyle == SETUP_BACKGROUND_TABBED)
			SetupThing::DrawBg(400 - BackgroundWidth / 2, 300 - BackgroundHeight / 2, 400 + BackgroundWidth / 2,
			                   340 + BackgroundHeight / 2, 0xffffff, 0, 0);
		else if (TallBackground != 0)
			SetupThing::DrawBg(400 - BackgroundWidth / 2, 300 - BackgroundHeight / 2, 400 + BackgroundWidth / 2,
			                   340 + BackgroundHeight / 2, 0xffffff, 0, -1);
		else
			SetupThing::DrawBg(400 - BackgroundWidth / 2, 300 - BackgroundHeight / 2, 400 + BackgroundWidth / 2,
			                   300 + BackgroundHeight / 2, 0xffffff, 0, -1);
	}

	LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_global_alpha;
	if (OnHold)
	{
		SetupThing::DrawAlpha = alpha;
		for (SetupControl* held = HoldWidgetList; held != NULL; held = held->next)
		{
			if (!held->hidden)
				held->Draw(false, false);
		}
		if (Callback != NULL)
			Callback(SETUP_MESSAGE_POST_DRAW, this, FocusedWidget, x, y);
		SetupThing::DrawAlpha = (int)(HoldFade.CurrentValue * 255.0f);
		SetupThing::DrawBg(400 - HoldWidth / 2, 300 - HoldHeight / 2, 400 + HoldWidth / 2, 300 + HoldHeight / 2,
		                   HoldColour & 0xffffff, BackgroundWidth > 5 && BackgroundHeight > 5, -1);
	}
	else
	{
		SetupThing::DrawAlpha = alpha;
		CleanOld();
	}

	HoverWidget = no_input ? NULL : FindControl(x, y);
	SetupControl* control = WidgetList;
	if (left_button && FocusedWidget != NULL && left_button == SetupThing::PrevLeftButton &&
	    HoverWidget != FocusedWidget)
		HoverWidget = NULL;
	SetupControl* candidateList = NULL;
	while (control != NULL)
	{
		if (!control->hidden)
		{
			if (control->id == SETUP_IME_CANDIDATE_LIST_ID)
				candidateList = control;
			else
				control->Draw(control == HoverWidget, control == FocusedWidget);
		}
		control = control->next;
	}
	if (candidateList != NULL)
	{
		int drawAlpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = 255;
		candidateList->Draw(candidateList == HoverWidget, candidateList == FocusedWidget);
		SetupThing::DrawAlpha = drawAlpha;
	}

	if (!no_input)
	{
		SetupList* candidates = (SetupList*)FindControl(SETUP_IME_CANDIDATE_LIST_ID);
		if (candidates != NULL)
		{
			if (candidates->UsesIME && SetupThing::IMEActive)
			{
				int size = LHSys::TheSystem.TbIME->CandidateList_GetSize();
				if (size)
				{
					bool wasHidden = candidates->hidden;
					candidates->Hide(false);
					if (LHSys::TheSystem.TbIME->CandidateList_HasContentsChanged() || !wasHidden)
					{
						float scroll = candidates->ScrollPosition;
						while (candidates->NumItems > 0)
							candidates->DeleteString(candidates->NumItems - 1);
						for (int i = 0; i < size; i++)
						{
							char16_t text[256];
							_itow(i + 1, text, 10);
							wcscat(text, L": ");
							wcscat(text, LHSys::TheSystem.TbIME->CandidateList_GetItem(i));
							candidates->InsertString(candidates->NumItems, text);
							candidates->SetCol(candidates->NumItems - 1, 0);
						}
						candidates->SetSelected(LHSys::TheSystem.TbIME->CandidateList_GetSelectIdx());
						candidates->ScrollPosition =
							scroll > 0.0f ? min(scroll, (float)candidates->MaxScrollPosition) : 0.0f;
						candidates->AutoScroll(false);
					}
				}
				else
					candidates->Hide(true);
			}
			else
				candidates->Hide(true);
			if (!SetupThing::IMEActive)
				candidates->Hide(true);
		}

		if (double_clicked)
		{
			if (Callback != NULL && FocusedWidget != NULL)
			{
				Callback(SETUP_MESSAGE_DOUBLE_CLICK, FocusedWidget->setup_box, FocusedWidget, x, y);
				RussClickNoise();
			}
			if (!GGame::g_game->Initialised)
				LHSys::TheSystem.mouse.ButtonPressed &= ~0x10;
			SetupThing::DoubleClicked = 0;
		}

		if (SetupThing::LeftClickCount)
		{
			SetupThing::LeftClickCount = 0;
			if (SetupThing::PrevLeftButton == left_button && !left_button && HoverWidget != NULL)
			{
				SetFocusControl(HoverWidget);
				if (FocusedWidget != NULL)
					FocusedWidget->MouseDown(x, y, true);
				if (FocusedWidget != NULL && Callback != NULL)
					Callback(SETUP_MESSAGE_MOUSE_DOWN, FocusedWidget->setup_box, FocusedWidget, x, y);
				if (FocusedWidget != NULL)
					DefaultCB(SETUP_MESSAGE_MOUSE_DOWN, FocusedWidget->setup_box, FocusedWidget, x, y);
				if (FocusedWidget != NULL)
					FocusedWidget->MouseUp(x, y, true);
				if (FocusedWidget != NULL && Callback != NULL)
					Callback(SETUP_MESSAGE_MOUSE_UP, FocusedWidget->setup_box, FocusedWidget, x, y);
				if (FocusedWidget != NULL)
					DefaultCB(SETUP_MESSAGE_MOUSE_UP, FocusedWidget->setup_box, FocusedWidget, x, y);
				if (FocusedWidget != NULL)
					RussClickNoise();
				if (FocusedWidget != NULL)
					FocusedWidget->Click(x, y);
				if (FocusedWidget != NULL && Callback != NULL)
					Callback(SETUP_MESSAGE_CLICK, FocusedWidget->setup_box, FocusedWidget, x, y);
				if (FocusedWidget != NULL)
					DefaultCB(SETUP_MESSAGE_CLICK, FocusedWidget->setup_box, FocusedWidget, x, y);
			}
		}
		if (left_button != SetupThing::PrevLeftButton)
		{
			if (left_button)
			{
				SetupThing::LeftClickCount = 0;
				SetupThing::MouseDownX = x;
				SetupThing::MouseDownY = y;
				SetFocusControl(HoverWidget);
				if (HoverWidget != NULL)
					HoverWidget->RightButton = LHSys::TheSystem.mouse.Buttons & 2;
				if (Callback != NULL)
					Callback(SETUP_MESSAGE_MOUSE_DOWN, FocusedWidget != NULL ? FocusedWidget->setup_box : NULL,
					         FocusedWidget, x, y);
				if (HoverWidget != NULL)
				{
					SetupThing::Dragging = true;
					HoverWidget->MouseDown(x, y, true);
				}
			}
			else
			{
				if (FocusedWidget != NULL)
					FocusedWidget->MouseUp(x, y, true);
				if (Callback != NULL)
					Callback(SETUP_MESSAGE_MOUSE_UP, FocusedWidget != NULL ? FocusedWidget->setup_box : NULL,
					         FocusedWidget, x, y);
				if (FocusedWidget == HoverWidget && FocusedWidget != NULL)
				{
					RussClickNoise();
					if (FocusedWidget != NULL)
						FocusedWidget->Click(x, y);
					if (FocusedWidget != NULL && Callback != NULL)
						Callback(SETUP_MESSAGE_CLICK, FocusedWidget->setup_box, FocusedWidget, x, y);
					if (FocusedWidget != NULL)
						DefaultCB(SETUP_MESSAGE_CLICK, FocusedWidget->setup_box, FocusedWidget, x, y);
				}
				SetupThing::Dragging = false;
			}
		}
		else if (left_button)
		{
			if (SetupThing::Dragging && FocusedWidget != NULL)
				FocusedWidget->Drag(x, y);
			if (FocusedWidget != NULL)
				FocusedWidget->RightButton |= LHSys::TheSystem.mouse.Buttons & 2;
			if (Callback != NULL && FocusedWidget != NULL)
				Callback(SETUP_MESSAGE_DRAG, this, FocusedWidget, x, y);
			if (HoverWidget != HeldOverWidget)
			{
				if (HeldOverWidget != NULL && HeldOverWidget == FocusedWidget)
					HeldOverWidget->MouseUp(x, y, false);
				HeldOverWidget = HoverWidget;
				if (HeldOverWidget != NULL && HeldOverWidget == FocusedWidget)
					HeldOverWidget->MouseDown(x, y, false);
			}
		}
		if (LHSys::TheSystem.charRing.GetNumCharsInBuf())
			Char(LHSys::TheSystem.charRing.GetCharFromBuf());
		SetupThing::PrevLeftButton = left_button;
	}

	if ((!OnHold || ActiveWhileOnHold) && Callback != NULL)
		Callback(SETUP_MESSAGE_POST_DRAW, this, FocusedWidget, x, y);
	if (Callback != NULL)
		Callback(SETUP_MESSAGE_UPDATE, this, HoverWidget, x, y);
	LH3DMaterial::g_list_render_func = LH3DMaterial::g_list_render_func_normal;
}

void SetupBox::Key(int key, int mod)
{
	if (key == 0)
		return;
	if (key == LHKEY_TAB)
	{
		if (mod & LH_MOD_SHIFT)
			SetFocusPrev();
		else
			SetFocusNext();
	}
	else if (FocusedWidget != NULL)
	{
		FocusedWidget->KeyDown(key, LHSys::TheSystem.keyboard.ModifierFlags);
		if (FocusedWidget != NULL && (!OnHold || ActiveWhileOnHold) && Callback != NULL)
			Callback(SETUP_MESSAGE_KEY, FocusedWidget->setup_box, FocusedWidget, key, mod);
		if (FocusedWidget != NULL)
			DefaultCB(SETUP_MESSAGE_KEY, FocusedWidget->setup_box, FocusedWidget, key, mod);
	}
	else
	{
		if (Callback != NULL && (!OnHold || ActiveWhileOnHold))
			Callback(SETUP_MESSAGE_KEY, CurrentActiveBox, NULL, key, mod);
		DefaultCB(SETUP_MESSAGE_KEY, CurrentActiveBox, FocusedWidget, key, mod);
	}
}

void SetupBox::Char(int character)
{
	if (character == 0)
		return;
	if (FocusedWidget != NULL)
	{
		if ((!OnHold || ActiveWhileOnHold) && Callback != NULL)
			Callback(SETUP_MESSAGE_CHAR, FocusedWidget->setup_box, FocusedWidget, character, 0);
		if (FocusedWidget != NULL)
			DefaultCB(SETUP_MESSAGE_CHAR, FocusedWidget->setup_box, FocusedWidget, character, 0);
		if (FocusedWidget != NULL)
			FocusedWidget->Char(character);
	}
	else
	{
		if (Callback != NULL && (!OnHold || ActiveWhileOnHold))
			Callback(SETUP_MESSAGE_CHAR, CurrentActiveBox, NULL, character, 0);
		if (Callback != NULL && character == VK_ESCAPE)
			Callback(SETUP_MESSAGE_ESCAPE, NULL, NULL, VK_ESCAPE, 0);
		DefaultCB(SETUP_MESSAGE_CHAR, CurrentActiveBox, FocusedWidget, character, 0);
	}
}

void SetupBox::SetFocusControl(SetupControl* widget)
{
	if (FocusedWidget != widget)
	{
		if (FocusedWidget != NULL)
			FocusedWidget->SetFocus(false);
		FocusedWidget = widget;
		if (widget != NULL)
			widget->SetFocus(true);
	}
}

void SetupBox::ClickKeyDown(int key, int mod) {}

void SetupControl::SetFocus(bool focus)
{
	this->focus = focus;
	focus = focus && UsesIME && setup_box == SetupBox::GetCurrentActiveBox();
	if ((SetupThing::IMEActive != 0) != focus)
	{
		if (focus)
		{
			LHSys::TheSystem.TbIME->Activate(LHSys::GetScreen().MsWindowHandle);
			SetupThing::IMEActive = focus;
		}
		else
		{
			LHSys::TheSystem.TbIME->UnActivate();
			SetupThing::IMEActive = false;
		}
	}
}

void SetupControl::SetToolTip(uint32_t tooltip_id)
{
	tooltip = HelpTextDataBase::HelpTextDatabase.GetHelpText(tooltip_id);
}

SetupControl::SetupControl(int id, int x, int y, int width, int height, const char16_t* label)
{
	OnTop = false;
	tooltip = NULL;
	wcscpy(this->label, label);
	this->id = id;
	text_size = 0;
	rect.start.x = x;
	rect.start.y = y;
	rect.end.x = x + width;
	rect.end.y = y + height;
	setup_box = SetupBox::CurrentInitBox;
	next = SetupBox::CurrentInitBox->WidgetList;
	SetupBox::CurrentInitBox->WidgetList = this;
	hidden = false;
	focus = false;
	UsesIME = 0;
	Style = 0;
	ContinueButtonCallback = NULL;
	TabStop = true;
}

SetupControl::~SetupControl()
{
	if (setup_box->FocusedWidget == this)
		setup_box->SetFocusControl(NULL);
	if (setup_box->HeldOverWidget == this)
		setup_box->HeldOverWidget = NULL;
	SetupControl* control = setup_box->WidgetList;
	if (control == this)
	{
		setup_box->WidgetList = next;
		return;
	}
	while (control != NULL && control->next != NULL)
	{
		if (control->next == this)
		{
			control->next = next;
			break;
		}
		control = control->next;
	}
}

void SetupStaticText::Draw(bool hovered, bool selected)
{
	if (DisplayTextSize < 10)
		DisplayTextSize = GetTextSize();
	if (DisplayTextSize != GetTextSize())
	{
		for (DisplayTextSize = GetTextSize(); DisplayTextSize > 10; DisplayTextSize--)
		{
			if (text_justify >= TEXTJUSTIFY_LEFT_BREAK && text_justify <= TEXTJUSTIFY_CENTRE_BREAK)
			{
				float height =
					SetupThing::GetTextHeight(rect.start.x, rect.start.y, rect.end.x, rect.end.y + DisplayTextSize,
				                              rect.start.y, false, label, DisplayTextSize);
				if (height <= rect.end.y - rect.start.y)
					break;
			}
			else
			{
				float width = SetupThing::GetTextWidth(label, (float)DisplayTextSize, 0, 1.0f);
				if (width <= rect.end.x - rect.start.x)
					break;
			}
		}
	}
	int   y = (rect.start.y + rect.end.y) / 2 - DisplayTextSize / 2;
	float textWidth = rect.end.x - rect.start.x;
	float textHeight;
	switch (text_justify)
	{
	case TEXTJUSTIFY_LEFT:
		SetupThing::DrawTextA(rect.start.x + 2, y + 2, rect.end.x - rect.start.x, TEXTJUSTIFY_LEFT, label,
		                      DisplayTextSize, &SetupThing::ShadowColour, 0);
		textHeight = SetupThing::DrawTextA(rect.start.x, y, rect.end.x - rect.start.x, text_justify, label,
		                                   DisplayTextSize, &SetupThing::SelectedColour, 0);
		textWidth = SetupThing::GetTextWidth(label, (float)DisplayTextSize, 0, 1.0f);
		break;
	case TEXTJUSTIFY_LEFT_BREAK:
	case TEXTJUSTIFY_CENTRE_BREAK:
		SetupThing::DrawTextWrap(rect.start.x + 2, rect.start.y + 2, rect.end.x + 2, rect.end.y + 2, rect.start.y + 2,
		                         text_justify == TEXTJUSTIFY_CENTRE_BREAK, label, DisplayTextSize,
		                         &SetupThing::ShadowColour, Style != 0, false);
		textHeight = SetupThing::DrawTextWrap(rect.start.x, rect.start.y, rect.end.x, rect.end.y, rect.start.y,
		                                      text_justify == TEXTJUSTIFY_CENTRE_BREAK, label, DisplayTextSize,
		                                      &SetupThing::SelectedColour, Style != 0, false);
		break;
	case TEXTJUSTIFY_RIGHT:
		SetupThing::DrawTextA(rect.end.x + 2, y + 2, rect.end.x - rect.start.x, TEXTJUSTIFY_RIGHT, label,
		                      DisplayTextSize, &SetupThing::ShadowColour, 0);
		textHeight = SetupThing::DrawTextA(rect.end.x, y, rect.end.x - rect.start.x, text_justify, label,
		                                   DisplayTextSize, &SetupThing::SelectedColour, 0);
		textWidth = SetupThing::GetTextWidth(label, (float)DisplayTextSize, 0, 1.0f);
		break;
	default:
		SetupThing::DrawTextA((rect.start.x + rect.end.x) / 2 + 2, y + 2, rect.end.x - rect.start.x, text_justify,
		                      label, DisplayTextSize, &SetupThing::ShadowColour, 0);
		textHeight = SetupThing::DrawTextA((rect.start.x + rect.end.x) / 2, y, rect.end.x - rect.start.x, text_justify,
		                                   label, DisplayTextSize, &SetupThing::SelectedColour, 0);
		textWidth = SetupThing::GetTextWidth(label, (float)DisplayTextSize, 0, 1.0f);
		break;
	}
	if (textHeight > rect.end.y - rect.start.y || textWidth > rect.end.x - rect.start.x)
	{
		if (DisplayTextSize > 10)
			DisplayTextSize--;
	}
}

void SetupButton::Draw(bool hovered, bool selected)
{
	SetupThing::DrawBevBox(rect.start.x, rect.start.y, rect.end.x, rect.end.y, hovered ? 2 : 1, 16, -1, 0xffffffff);
	int size = GetTextSize();
	while (size > 10)
	{
		float width = SetupThing::GetTextWidth(label, (float)size, 0, 1.0f);
		if (width <= rect.end.x - rect.start.x)
			break;
		size--;
	}
	LH3DColor* color;
	if (hovered)
		color = &SetupThing::HighlightColour;
	else if (selected)
		color = &SetupThing::DefaultColor;
	else
		color = &SetupThing::NormalColour;
	SetupThing::DrawTextA((rect.start.x + rect.end.x) / 2 + pressed * 2,
	                      (rect.end.y + rect.start.y) / 2 - size / 2 + pressed * 2, rect.end.x - rect.start.x,
	                      TEXTJUSTIFY_CENTRE, label, size, color, 0);
}

SetupButton::SetupButton(int id, int x, int y, int width, int height, const char16_t* label, int param_8)
	: SetupControl(id, x, y, width, height, label)
{
	field_0x240 = param_8;
	pressed = false;
}

void SetupSlider::KeyDown(int key, int mod)
{
	bool changed = false;
	switch (key)
	{
	case LHKEY_HOME:
		value = 0.0f;
		changed = true;
		break;
	case LHKEY_END:
		value = 1.0f;
		changed = true;
		break;
	case LHKEY_LEFT:
		value -= 0.1f;
		changed = true;
		break;
	case LHKEY_RIGHT:
		value += 0.1f;
		changed = true;
		break;
	}
	value = value > 0.0f ? min(value, 1.0f) : 0.0f;
	DragStartValue = value;
	if (changed && setup_box->Callback != NULL)
		setup_box->Callback(SETUP_MESSAGE_DRAG, setup_box, this, 0, 0);
}

void SetupSlider::Draw(bool hovered, bool selected)
{
	SetupThing::DrawBevBox(rect.start.x, rect.start.y, rect.end.x, rect.end.y, 1, 16, -1, 0xffffffff);
	int x = rect.start.x + (int)((rect.end.x - height - rect.start.x) * value);
	if (Style & SETUP_SLIDER_STYLE_LABEL_ABOVE)
	{
		int size = rect.end.y - rect.start.y;
		SetupThing::DrawBevBox(x, rect.start.y + size / 2, x + height, rect.start.y + size - 2, 0, 16, -1, 0xffffffff);
		int textSize = size / 2 + 2;
		SetupThing::DrawTextA((rect.start.x + rect.end.x) / 2, rect.start.y + 2, rect.end.x - rect.start.x,
		                      TEXTJUSTIFY_CENTRE, label, textSize,

		                      selected ? &SetupThing::DefaultColor : &SetupThing::NormalColour, 0);
	}
	else
	{
		SetupThing::DrawBigButton(x + 3, rect.start.y + 3, true, hovered || selected, height - 6, BBSTYLE_CHECK_BOX_OFF,
		                          false, -SETUP_NO_CLIP, SETUP_NO_CLIP);
		LH3DColor* color = selected ? &SetupThing::DefaultColor : &SetupThing::NormalColour;
		SetupThing::DrawTextA((rect.start.x + rect.end.x) / 2, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize(),
		                      rect.end.x - rect.start.x, TEXTJUSTIFY_CENTRE, label, GetTextSize(), color, 0);
	}
}

SetupSlider::SetupSlider(int id, int x, int y, int width, int height, float value, char16_t* label)
	: SetupControl(id, x, y, width, height, label)
{
	DragStartValue = value;
	this->value = value;
	this->height = rect.end.y - y;
}

void SetupSlider::Drag(int x, int y)
{
	float travel = (float)(rect.end.x - rect.start.x - height);
	int   thumbLeft = rect.start.x + (int)(travel * DragStartValue);
	if (DragStart.x >= thumbLeft && DragStart.x < thumbLeft + height)
		value = (float)(x - DragStart.x) / travel + DragStartValue;
	else
	{
		if (DragStart.x < thumbLeft)
			value = DragStartValue - 0.1f;
		if (DragStart.x >= thumbLeft + height)
			value = DragStartValue + 0.1f;
	}
	value = value > 0.0f ? min(value, 1.0f) : 0.0f;
}

void SetupSlider::MouseDown(int x, int y, bool button_event)
{
	if (button_event)
	{
		DragStart.x = x;
		DragStart.y = y;
		DragStartValue = value;
	}
}

void SetupSlider::MouseUp(int x, int y, bool button_event)
{
	if (setup_box->Callback != NULL)
		setup_box->Callback(SETUP_MESSAGE_CLICK, setup_box, this, x, y);
	Click(x, y);
}

void SetupList::AutoScroll(bool to_bottom)
{
	if (to_bottom || SelectedIndex < 0)
	{
		ScrollPosition = MaxScrollPosition;
		return;
	}
	float top = 0.0f;
	float visibleHeight = (float)(rect.end.y - rect.start.y - ItemHeights[SelectedIndex]);
	for (int index = 0; index < NumItems; ++index)
	{
		if (index == SelectedIndex)
		{
			if (top < (float)ScrollPosition)
			{
				ScrollPosition = (int)top;
				ScrollPosition = ScrollPosition > 0 ? min(ScrollPosition, MaxScrollPosition) : 0;
				return;
			}
			if (top > (float)ScrollPosition + visibleHeight)
			{
				ScrollPosition = (int)(top - visibleHeight);
				ScrollPosition = ScrollPosition > 0 ? min(ScrollPosition, MaxScrollPosition) : 0;
				return;
			}
		}
		top += ItemHeights[index];
	}
}

void SetupList::KeyDown(int key, int mod)
{
	if (!IgnoreKeys && DrawHighlightBox)
	{
		switch (key)
		{
		case LHKEY_HOME:
			SetSelected(0);
			AutoScroll(false);
			break;
		case LHKEY_END:
			SetSelected(NumItems - 1);
			AutoScroll(false);
			break;
		case LHKEY_UP:
			if (SelectedIndex > 0)
				SetSelected(SelectedIndex - 1);
			else
				SetSelected(NumItems - 1);
			AutoScroll(false);
			break;
		case LHKEY_DOWN:
			if (SelectedIndex < NumItems - 1)
				SetSelected(SelectedIndex + 1);
			else
				SetSelected(0);
			AutoScroll(false);
			break;
		}
		PrevSelectedIndex = SelectedIndex;
		DragStartScroll = ScrollPosition;
	}
}

void SetupList::Drag(int x, int y)
{
	if (!UsesIME)
	{
		if (DraggingScrollbar || HitTest(x, y))
		{
			if (DraggingScrollbar)
			{
				float startScroll = DragStartScroll;
				float scrollDistance = ScrollDistance;
				float height = rect.end.y - rect.start.y;
				float top = rect.start.y;
				int   thumbTop = (int)(startScroll / scrollDistance * height + top);
				if (DragStart.y < thumbTop ||
				    DragStart.y >=
				        (int)((rect.end.y - rect.start.y + DragStartScroll - 8) / scrollDistance * height + top))
				{
					int page = rect.end.x - rect.start.x - 20;
					if (page < 0)
						page = 0;
					if (DragStart.y < thumbTop)
						ScrollPosition = DragStartScroll - page;
					else
						ScrollPosition = DragStartScroll + page;
				}
				else
					ScrollPosition = (int)((y - DragStart.y) * scrollDistance / height + startScroll);
				ScrollPosition = ScrollPosition > 0 ? min(ScrollPosition, MaxScrollPosition) : 0;
			}
			else
			{
				SelectedIndex = -1;
				int itemY = rect.start.y - ScrollPosition;
				int i;
				for (i = 0; i < NumItems; i++)
				{
					if (y >= itemY && y < itemY + ItemHeights[i])
						break;
					itemY += ItemHeights[i];
				}
				if (i < NumItems)
					SetSelected(i);
			}
		}
	}
}

int SetupList::GetItemAt(int x, int y)
{
	int top = rect.start.y - ScrollPosition;
	int index;
	for (index = 0; index < NumItems; index++)
	{
		if (y >= top && y < top + ItemHeights[index])
			break;
		top += ItemHeights[index];
	}
	return index < NumItems ? index : -1;
}

void SetupList::Click(int x, int y) {}

void SetupList::MouseDown(int x, int y, bool button_event)
{
	if (UsesIME == 0 && button_event)
	{
		DragStart.x = x;
		DragStart.y = y;
		PrevSelectedIndex = SelectedIndex;
		DragStartScroll = ScrollPosition;
		DraggingScrollbar = x > rect.end.x - ScrollbackWidth && ShowScrollbar;
		if (DraggingScrollbar)
			SelectedIndex = -1;
		Drag(x, y);
	}
}

void SetupList::MouseUp(int x, int y, bool button_event)
{
	if (UsesIME != 0)
		return;
	if (DraggingScrollbar)
	{
		if (button_event)
			SelectedIndex = PrevSelectedIndex;
		DraggingScrollbar = false;
	}
	else if (button_event)
	{
		PrevSelectedIndex = SelectedIndex;
		DragStartScroll = ScrollPosition;
	}
	else
		SelectedIndex = PrevSelectedIndex;
}

SetupList::SetupList(int id, int x, int y, int width, int height) : SetupControl(id, x, y, width, height, L"")
{
	ListBoxDrawAfterText = false;
	field_0x29c = 0;
	SelectionColor = 0xffffffff;
	IgnoreKeys = false;
	PrevSelectedIndex = -1;
	SelectedIndex = -1;
	DragStartScroll = 0;
	NumItems = 0;
	Capacity = 0;
	item_labels = NULL;
	ItemHeights = NULL;
	ItemData = NULL;
	ListBoxDraw = NULL;
	color = NULL;
	TagData = NULL;
	ScrollDistance = 0;
	ShowScrollbar = false;
	ScrollPosition = 0;
	MaxScrollPosition = 0;
	CentredText = false;
	UseColorBackground = false;
	ScrollbackWidth = 24;
	DrawHighlightBox = true;
	BoxOutlineColor = 0xffffffff;
}

void SetupList::Draw(bool hovered, bool selected)
{
	int right = rect.end.x;
	if (ShowScrollbar)
		right -= ScrollbackWidth + 2;
	int y = rect.start.y - ScrollPosition;
	int style = UseColorBackground ? 0 : 1;
	if (UsesIME && SetupThing::IMEActive)
		style += 16;
	SetupThing::DrawBevBox(rect.start.x, rect.start.y, right, rect.end.y, style, 16, -1, BoxOutlineColor);
	SelectionRect.start.x = SelectionRect.end.x = rect.start.x;
	SelectionRect.start.y = SelectionRect.end.y = rect.start.y;
	for (int i = 0; i < NumItems; i++)
	{
		int      top = y;
		int      bottom = y + ItemHeights[i];
		bool32_t drawText = true;
		if (!ListBoxDrawAfterText && ListBoxDraw[i] != NULL)
			drawText = ListBoxDraw[i](this, i, rect.start.x, rect.start.y, right, rect.end.y, top, bottom);
		if (IsSelected(i) && DrawHighlightBox)
		{
			top = top > rect.start.y ? min(top, rect.end.y) : rect.start.y;
			bottom = bottom > rect.start.y ? min(bottom, rect.end.y) : rect.start.y;
			SelectionRect.start.x = rect.start.x;
			SelectionRect.end.x = right;
			SelectionRect.start.y = top;
			SelectionRect.end.y = bottom;
			if (top != bottom)
				SetupThing::DrawBevBox(rect.start.x, top, right, bottom, UseColorBackground ? 1 : 0, 16, -1,
				                       SelectionColor);
			if (bottom >= rect.start.y && top <= rect.end.y && drawText)
				SetupThing::DrawTextWrap(rect.start.x + 4, rect.start.y, right - 4, rect.end.y, y + 2, CentredText,
				                         item_labels[i], GetTextSize(), &SetupThing::DefaultColor, false, false);
		}
		else
		{
			int mouseX = LHSys::GetMouse().Pos().x;
			int mouseY = LHSys::GetMouse().Pos().y;
			SetupThing::unadjust(mouseX, mouseY);
			bool itemHovered = hovered && mouseY >= y && mouseY < y + ItemHeights[i];
			if (bottom >= rect.start.y && top <= rect.end.y && drawText)
			{
				unsigned long itemColour = GetCol(i);
				if (RGBA_GETALPHA(itemColour))
				{
					itemColour = RGB_TORGBA(itemColour);
					if (top != bottom)
						SetupThing::DrawBox(rect.start.x + 2, max(rect.start.y + 2, top), right - 2,
						                    min(rect.end.y - 2, bottom), itemColour, itemColour, itemColour, itemColour,
						                    1, 1);
					int size = GetTextSize();
					SetupThing::DrawTextWrap(rect.start.x + 4, rect.start.y, right - 4, rect.end.y, y + 2, CentredText,
					                         item_labels[i], size, &LH3DColor(0, 0, 0), false, false);
				}
				else
				{
					if (itemColour)
						itemColour = RGB_TORGBA(itemColour);
					SetupThing::DrawTextWrap(rect.start.x + 4, rect.start.y, right - 4, rect.end.y, y + 2, CentredText,
					                         item_labels[i], GetTextSize(),
					                         itemHovered  ? &SetupThing::HighlightColour
					                         : itemColour ? &LH3DColor(itemColour)
					                         : selected   ? &SetupThing::DefaultColor
					                                      : &SetupThing::NormalColour,
					                         false, false);
				}
			}
		}
		if (ListBoxDrawAfterText && bottom >= rect.start.y && top <= rect.end.y && ListBoxDraw[i] != NULL)
			ListBoxDraw[i](this, i, rect.start.x, rect.start.y, right, rect.end.y, top, bottom);
		y += ItemHeights[i];
	}
	if (ShowScrollbar)
	{
		right += 2;
		int thumbTop = (int)((float)ScrollPosition / ScrollDistance * (rect.end.y - rect.start.y - 6));
		int thumbBottom = (int)((float)(rect.end.y - rect.start.y + ScrollPosition - 8) / ScrollDistance *
		                        (rect.end.y - rect.start.y - 6));
		SetupThing::DrawBevBox(right, rect.start.y, right + ScrollbackWidth, rect.end.y, UseColorBackground ? 0 : 1, 16,
		                       -1, LH3D_COLOR_WHITE);
		SetupThing::DrawBevBox(right + 3, rect.start.y + thumbTop + 3, right + ScrollbackWidth - 3,
		                       rect.start.y + thumbBottom + 3, UseColorBackground ? 1 : 0, 16, -1, LH3D_COLOR_WHITE);
	}
}

void SetupList::UpdateHeights()
{
	int i;
	ShowScrollbar = false;
	MaxScrollPosition = 0;
	ScrollDistance = 0;
	for (i = 0; i < NumItems; i++)
	{
		ItemHeights[i] = (int)(SetupThing::Font->DrawTextA(
								   item_labels[i], (float)(rect.start.x + 4), (float)rect.start.y, (float)rect.start.y,
								   (float)(rect.end.x - 4), (float)rect.end.y, (float)rect.end.y, (float)rect.start.y,
								   5.0f, (float)GetTextSize(), &SetupThing::TextColour, 0, 0, 1) +
		                       6.0f);
		ScrollDistance += ItemHeights[i];
	}
	if (ScrollDistance > rect.end.y - rect.start.y - 8)
	{
		int x_max = rect.end.x - ScrollbackWidth - 2;
		ShowScrollbar = true;
		ScrollDistance = 0;
		for (i = 0; i < NumItems; i++)
		{
			ItemHeights[i] =
				(int)(SetupThing::Font->DrawTextA(item_labels[i], (float)(rect.start.x + 4), (float)rect.start.y,
			                                      (float)rect.start.y, (float)(x_max - 4), (float)rect.end.y,
			                                      (float)rect.end.y, (float)rect.start.y, 5.0f, (float)GetTextSize(),
			                                      &SetupThing::TextColour, 0, 0, 1) +
			          6.0f);
			ScrollDistance += ItemHeights[i];
		}
		MaxScrollPosition = ScrollDistance - rect.end.y + rect.start.y + 8;
	}
	ScrollPosition = ScrollPosition > 0 ? min(ScrollPosition, MaxScrollPosition) : 0;
}

void SetupList::DeleteString(int index)
{
	if (index >= 0 && index < NumItems)
	{
		memmove(item_labels + index, item_labels + index + 1, (NumItems - index - 1) * sizeof(*item_labels));
		memmove(ItemHeights + index, ItemHeights + index + 1, (NumItems - index - 1) * sizeof(*ItemHeights));
		memmove(ItemData + index, ItemData + index + 1, (NumItems - index - 1) * sizeof(*ItemData));
		memmove(ListBoxDraw + index, ListBoxDraw + index + 1, (NumItems - index - 1) * sizeof(*ListBoxDraw));
		memmove(color + index, color + index + 1, (NumItems - index - 1) * sizeof(*color));
		memmove(TagData + index, TagData + index + 1, (NumItems - index - 1) * sizeof(*TagData));
		SetNum(NumItems - 1);
	}
}

void SetupList::InsertString(int index, const char16_t* text)
{
	if (index >= 0 && index <= NumItems)
	{
		SetNum(NumItems + 1);
		memmove(item_labels + index + 1, item_labels + index, (NumItems - index - 1) * sizeof(*item_labels));
		memmove(ItemHeights + index + 1, ItemHeights + index, (NumItems - index - 1) * sizeof(*ItemHeights));
		memmove(ItemData + index + 1, ItemData + index, (NumItems - index - 1) * sizeof(*ItemData));
		memmove(ListBoxDraw + index + 1, ListBoxDraw + index, (NumItems - index - 1) * sizeof(*ListBoxDraw));
		memmove(color + index + 1, color + index, (NumItems - index - 1) * sizeof(*color));
		memmove(TagData + index + 1, TagData + index, (NumItems - index - 1) * sizeof(*TagData));
		SetString(index, text);
		if (index < NumItems)
			ItemData[index] = 0;
		if (index < NumItems)
			ListBoxDraw[index] = NULL;
		SetCol(index, 0);
		SetTagData(index, NULL);
	}
}

void SetupList::SetTagData(int index, void* data)
{
	if (index >= 0 && index < NumItems)
		TagData[index] = data;
}

void SetupList::SetString(int index, const char16_t* text)
{
	if (index >= 0 && index < NumItems)
	{
		wcsncpy(item_labels[index], text, 255);
		item_labels[index][255] = 0;
		UpdateHeights();
	}
}

void SetupList::SetNum(int num)
{
	if (num < 0)
		num = 0;
	if (num < Capacity / 2 || num > Capacity)
	{
		Capacity = num + 16;
		typedef char16_t          Label[256];
		Label*                    labels = new (FILEPATH, 1365) Label[Capacity];
		int*                      heights = new (FILEPATH, 1366) int[Capacity];
		uint32_t*                 data = new (FILEPATH, 1367) uint32_t[Capacity];
		SetupList__ListBoxDraw_t* callbacks = new (FILEPATH, 1368) SetupList__ListBoxDraw_t[Capacity];
		LH3DColor*                colors = (LH3DColor*)operator new(Capacity * sizeof(LH3DColor), FILEPATH, 1369);
		void**                    tags = new (FILEPATH, 1370) void*[Capacity];
		memset(labels, 0, Capacity * sizeof(Label));
		memset(heights, 0, Capacity * sizeof(int));
		memset(data, 0, Capacity * sizeof(uint32_t));
		memset(callbacks, 0, Capacity * sizeof(SetupList__ListBoxDraw_t));
		memset(colors, 0, Capacity * sizeof(LH3DColor));
		memset(tags, 0, Capacity * sizeof(void*));
		memcpy(labels, item_labels, min(num, NumItems) * sizeof(Label));
		memcpy(heights, ItemHeights, min(num, NumItems) * sizeof(int));
		memcpy(data, ItemData, min(num, NumItems) * sizeof(uint32_t));
		memcpy(callbacks, ListBoxDraw, min(num, NumItems) * sizeof(SetupList__ListBoxDraw_t));
		memcpy(colors, color, min(num, NumItems) * sizeof(LH3DColor));
		memcpy(tags, TagData, min(num, NumItems) * sizeof(void*));
		delete[] ItemHeights;
		delete[] item_labels;
		delete[] ItemData;
		delete[] ListBoxDraw;
		delete[] color;
		delete[] TagData;
		ItemData = data;
		ListBoxDraw = callbacks;
		color = colors;
		item_labels = labels;
		ItemHeights = heights;
		TagData = tags;
	}
	else if (num > NumItems)
	{
		int count = num - NumItems;
		memset(item_labels + NumItems, 0, count * sizeof(*item_labels));
		memset(ItemHeights + NumItems, 0, count * sizeof(*ItemHeights));
		memset(ItemData + NumItems, 0, count * sizeof(*ItemData));
		memset(ListBoxDraw + NumItems, 0, count * sizeof(*ListBoxDraw));
		memset(color + NumItems, 0, count * sizeof(*color));
		memset(TagData + NumItems, 0, count * sizeof(*TagData));
	}
	NumItems = num;
	if (SelectedIndex >= num)
		SelectedIndex = -1;
	UpdateHeights();
}

SetupMultiList::SetupMultiList(int id, int x, int y, int width, int height, int size)
	: SetupList(id, x, y, width, height)
{
	this->size = size;
	NumSelected = 0;
	list = new (FILEPATH, 1422) bool[size];
	for (int index = 0; index < this->size; ++index)
		list[index] = false;
}

SetupMultiList::~SetupMultiList()
{
	delete[] list;
}

bool SetupMultiList::IsSelected(int index)
{
	if (index < 0 || index > size)
		return false;
	return list[index];
}

void SetupMultiList::Click(int x, int y)
{
	int top = rect.start.y - ScrollPosition;
	if (!DraggingScrollbar)
	{
		int index;
		for (index = 0; index < NumItems; ++index)
		{
			if (y >= top && y < top + ItemHeights[index])
				break;
			top += ItemHeights[index];
		}
		if (index < NumItems)
		{
			list[index] = !list[index];
			if (list[index])
				++NumSelected;
			else
				--NumSelected;
		}
	}
}

void SetupEdit::Char(int character)
{
	if (!Editable)
		return;
	int selectionLength = SelectEnd - SelectStart;
	switch (character)
	{
	case '\r':
		if (setup_box != NULL && setup_box->Callback != NULL)
		{
			setup_box->Callback(SETUP_MESSAGE_CLICK, setup_box, this, 0, 0);
			setup_box->SetFocusNext();
		}
		break;
	case '\b':
		if (selectionLength != 0)
		{
			DeleteRange(SelectStart, SelectEnd);
			CursorPosition = SelectEnd = SelectStart;
		}
		else if (CursorPosition > 0)
		{
			DeleteRange(CursorPosition - 1, CursorPosition);
			CursorPosition = SelectEnd = SelectStart = CursorPosition - 1;
		}
		break;
	}
	if (character >= ' ')
	{
		int len = wcslen(label);
		if (selectionLength != 0)
		{
			DeleteRange(SelectStart, SelectEnd);
			CursorPosition = SelectEnd = SelectStart;
		}
		if (character != 0)
		{
			InsertChar(CursorPosition, character);
			SelectStart = SelectEnd = ++CursorPosition;
		}
		len = wcslen(label);
		SelectStart = SelectStart > 0 ? min(SelectStart, len) : 0;
		SelectEnd = SelectEnd > 0 ? min(SelectEnd, len) : 0;
		CursorPosition = CursorPosition > 0 ? min(CursorPosition, len) : 0;
		ScrollOffset = ScrollOffset > 0 ? min(ScrollOffset, len) : 0;
		FixCursor();
		FixSelect();
		if (ScrollOffset > CompositionEnd)
			ScrollOffset = CompositionEnd;
	}
}

void SetupEdit::KeyDown(int key, int mod)
{
	if (!Editable)
		return;
	int len = wcslen(label);
	int selectionLength = SelectEnd - SelectStart;
	switch (key)
	{
	case LHKEY_TAB:
		if (setup_box != NULL && setup_box->Callback != NULL)
		{
			setup_box->Callback(SETUP_MESSAGE_CLICK, setup_box, this, 0, 0);
			if (mod & LH_MOD_SHIFT)
				setup_box->SetFocusPrev();
			else
				setup_box->SetFocusNext();
		}
		break;
	case LHKEY_LEFT: {
		int position = CursorPosition - 1;
		if (mod & LH_MOD_SHIFT)
		{
			if (SelectStart == SelectEnd)
				SelectStart = position;
			else if (CursorPosition == SelectStart)
				SelectStart = position;
			else
				SelectEnd = position;
		}
		else
			SelectStart = SelectEnd = position;
		CursorPosition = position;
		break;
	}
	case LHKEY_RIGHT: {
		int position = CursorPosition + 1;
		if (mod & LH_MOD_SHIFT)
		{
			if (SelectStart == SelectEnd)
				SelectEnd = position;
			else if (CursorPosition == SelectStart)
				SelectStart = position;
			else
				SelectEnd = position;
		}
		else
			SelectStart = SelectEnd = position;
		CursorPosition = position;
		break;
	}
	case LHKEY_HOME:
		CursorPosition = 0;
		if (mod & LH_MOD_SHIFT)
			SelectStart = 0;
		else
			SelectStart = SelectEnd = CursorPosition;
		break;
	case LHKEY_END:
		CursorPosition = len;
		if (mod & LH_MOD_SHIFT)
			SelectEnd = len;
		else
			SelectStart = SelectEnd = CursorPosition;
		break;
	case LHKEY_DELETE:
		if (selectionLength != 0)
		{
			DeleteRange(SelectStart, SelectEnd);
			CursorPosition = SelectEnd = SelectStart;
		}
		else
		{
			DeleteRange(CursorPosition, CursorPosition + 1);
			SelectStart = SelectEnd = CursorPosition;
		}
		break;
	}
	len = wcslen(label);
	SelectStart = SelectStart > 0 ? min(SelectStart, len) : 0;
	SelectEnd = SelectEnd > 0 ? min(SelectEnd, len) : 0;
	CursorPosition = CursorPosition > 0 ? min(CursorPosition, len) : 0;
	ScrollOffset = ScrollOffset > 0 ? min(ScrollOffset, len) : 0;
	FixCursor();
	FixSelect();
	if (ScrollOffset > CompositionEnd)
		ScrollOffset = CompositionEnd;
}

int SetupEdit::CalcCharpos(int pos)
{
	int count;
	int result = wcslen(label);
	for (count = 1; count <= (int)wcslen(label) - ScrollOffset; count++)
	{
		int width = (int)SetupThing::Font->GetStringWidth(&label[ScrollOffset], count, (float)GetTextSize(), 1.0f);
		if (rect.start.x + width + 4 > pos)
		{
			result = count - 1;
			break;
		}
	}
	return result + ScrollOffset;
}

void SetupEdit::Drag(int x, int y)
{
	CursorPosition = CalcCharpos(x);
	SelectStart = CursorPosition;
}

void SetupEdit::MouseDown(int x, int y, bool button_event)
{
	if (button_event)
	{
		CursorPosition = CalcCharpos(x);
		SelectEnd = CursorPosition;
		SelectStart = CursorPosition;
	}
}

void SetupEdit::MouseUp(int x, int y, bool button_event)
{
	if (button_event)
	{
		CursorPosition = CalcCharpos(x);
		SelectStart = CursorPosition;
		if (SelectStart > SelectEnd)
		{
			int position = SelectStart;
			SelectStart = SelectEnd;
			SelectEnd = position;
		}
		if (SelectStart == SelectEnd && SelectAllOnClick != 0)
		{
			SelectStart = 0;
			CursorPosition = wcslen(label);
			SelectEnd = CursorPosition;
		}
		SelectAllOnClick = 0;
	}
}

SetupEdit::SetupEdit(int id, int x, int y, int width, int height, const char16_t* label, int editable)
	: SetupControl(id, x, y, width, height, label)
{
	MaxLength = SETUP_EDIT_MAX_LENGTH;
	Editable = editable;
	SelectStart = SelectEnd = CursorPosition = 0;
	MaskedText = false;
	CandidateList = (SetupList*)setup_box->FindControl(SETUP_IME_CANDIDATE_LIST_ID);
	if (CandidateList != NULL)
	{
		CandidateList->DeleteAll();
		CandidateList->Hide(true);
	}
	else
	{
		CandidateList =
			new (FILEPATH, 1658) SetupList(SETUP_IME_CANDIDATE_LIST_ID, 0, 0, SETUP_IME_CANDIDATE_LIST_INITIAL_SIZE,
		                                   SETUP_IME_CANDIDATE_LIST_INITIAL_SIZE);
		CandidateList->Hide(true);
		CandidateList->UsesIME = true;
		CandidateList->IgnoreKeys = true;
	}
	UsesIME = true;
	Style = 0;
	FixCursor();
}

void SetupEdit::Draw(bool hovered, bool selected)
{
	FixCursor();
	if (!Editable)
	{
		SetupThing::DrawAlpha /= 2;
		SetupThing::DrawBevBox(rect.start.x, rect.start.y, rect.end.x, rect.end.y, 1, 16, -1, 0xffffffff);
		SetupThing::DrawAlpha *= 2;
	}
	else
		SetupThing::DrawBevBox(rect.start.x, rect.start.y, rect.end.x, rect.end.y, 1, 16, -1, 0xffffffff);
	int len = wcslen(DisplayText);
	int maxScroll;
	for (maxScroll = 0; maxScroll < len; maxScroll++)
	{
		if ((int)SetupThing::Font->GetStringWidth(&DisplayText[maxScroll], len - maxScroll, (float)GetTextSize(),
		                                          1.0f) < rect.end.x - rect.start.x - 9)
			break;
	}
	ScrollOffset = ScrollOffset > 0 ? min(ScrollOffset, maxScroll) : 0;
	if (ScrollOffset > CompositionEnd)
		ScrollOffset = CompositionEnd;
	while ((int)SetupThing::Font->GetStringWidth(&DisplayText[ScrollOffset], CompositionEnd - ScrollOffset,
	                                             (float)GetTextSize(), 1.0f) >= rect.end.x - rect.start.x - 9 &&
	       ScrollOffset < maxScroll)
		ScrollOffset++;
	SetupThing::DrawTextA(rect.start.x + 4, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize(),
	                      rect.end.x - rect.start.x - 8, TEXTJUSTIFY_LEFT, &DisplayText[ScrollOffset], GetTextSize(),
	                      &SetupThing::SelectedColour, 0);
	if (selected)
	{
		int start = SelectStart;
		int end = SelectEnd;
		int compositionStart = CompositionStart;
		int compositionEnd = CompositionEnd;
		if (start < ScrollOffset)
			start = ScrollOffset;
		if (end < ScrollOffset)
			end = ScrollOffset;
		if (compositionStart < ScrollOffset)
			compositionStart = ScrollOffset;
		if (compositionEnd < ScrollOffset)
			compositionEnd = ScrollOffset;
		int startX = (int)SetupThing::Font->GetStringWidth(&DisplayText[ScrollOffset], start - ScrollOffset,
		                                                   (float)GetTextSize(), 1.0f);
		int endX = (int)SetupThing::Font->GetStringWidth(&DisplayText[ScrollOffset], end - ScrollOffset,
		                                                 (float)GetTextSize(), 1.0f);
		int compositionX = (int)SetupThing::Font->GetStringWidth(
			&DisplayText[ScrollOffset], compositionStart - ScrollOffset, (float)GetTextSize(), 1.0f);
		int cursorX = (int)SetupThing::Font->GetStringWidth(&DisplayText[ScrollOffset], compositionEnd - ScrollOffset,
		                                                    (float)GetTextSize(), 1.0f);
		if (startX > endX)
		{
			int x = startX;
			startX = endX;
			endX = x;
		}
		endX++;
		if (startX > rect.end.x - rect.start.x - 8)
			startX = rect.end.x - rect.start.x - 8;
		if (endX > rect.end.x - rect.start.x - 8)
			endX = rect.end.x - rect.start.x - 8;
		if (start > end)
		{
			int position = start;
			start = end;
			end = position;
		}
		if (endX > startX && Editable)
		{
			if ((GetTickCount() / SETUP_EDIT_CURSOR_BLINK_TIME) % 2 && cursorX >= 0 &&
			    cursorX < rect.end.x - rect.start.x - 8)
				SetupThing::DrawBox(rect.start.x + cursorX + 5, rect.start.y + 2, rect.start.x + cursorX + 7,
				                    rect.end.y - 2, 0x80ffffff, 0x80ffffff, 0x80ffffff, 0x80ffffff, 1, 1);
			if (start != end)
			{
				SetupThing::DrawBox(rect.start.x + startX + 4, rect.start.y + 2, rect.start.x + endX + 5,
				                    rect.end.y - 2, 0x80ffffff, 0x80ffffff, 0x80ffffff, 0x80ffffff, 1, 1);
				SetupThing::DrawTextA(rect.start.x + startX + 4, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize(),
				                      rect.end.x - rect.start.x - startX - 8, TEXTJUSTIFY_LEFT, &DisplayText[start],
				                      GetTextSize(), &SetupThing::TextColour, end - start);
			}
		}
		if (compositionEnd > compositionStart)
		{
			SetupThing::DrawTextA(rect.start.x + compositionX + 4, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize(),
			                      rect.end.x - rect.start.x - compositionX - 8, TEXTJUSTIFY_LEFT,
			                      &DisplayText[compositionStart], GetTextSize(), &SetupThing::HighlightColour,
			                      compositionEnd - compositionStart);
			CandidateList = setup_box != NULL ? (SetupList*)setup_box->FindControl(SETUP_IME_CANDIDATE_LIST_ID) : NULL;
			if (CandidateList != NULL)
			{
				CandidateList->rect.end.x -= CandidateList->rect.start.x;
				CandidateList->rect.start.x = rect.start.x + compositionX + 4;
				CandidateList->rect.end.x += CandidateList->rect.start.x;
			}
		}
	}
}

void SetupMP3Button::Draw(bool hovered, bool selected)
{
	if (ShowButton)
		SetupButton::Draw(hovered, selected);
	int x = (rect.start.x + rect.end.x) / 2 - (SETUP_MP3_ICON_SIZE / 2 + SETUP_MP3_ICON_PRESS_OFFSET);
	int y = (rect.start.y + rect.end.y) / 2 - (SETUP_MP3_ICON_SIZE / 2 + SETUP_MP3_ICON_PRESS_OFFSET);
	if (pressed || Style)
	{
		x += SETUP_MP3_ICON_PRESS_OFFSET;
		y += SETUP_MP3_ICON_PRESS_OFFSET;
	}
	float u = (IconIndex & (SETUP_MP3_ICON_COLUMNS - 1)) * SETUP_MP3_ICON_UV +
	          SETUP_MP3_ICON_FIRST_COLUMN * SETUP_MP3_ICON_UV;
	float v = ((IconIndex / SETUP_MP3_ICON_COLUMNS & (SETUP_MP3_ICON_ROWS - 1)) + SETUP_MP3_ICON_FIRST_ROW) *
	          SETUP_MP3_ICON_UV;
	SetupThing::DrawBox(x, y, x + SETUP_MP3_ICON_SIZE, y + SETUP_MP3_ICON_SIZE, u, v, u + SETUP_MP3_ICON_UV,
	                    v + SETUP_MP3_ICON_UV, LH3DAtmos::mat0,
	                    hovered || Style ? &SetupThing::HighlightColour : &color, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP,
	                    false, 100.0f);
}

void SetupBigButton::Draw(bool hovered, bool selected)
{
	SetupThing::TextBounds.p0.x = rect.start.x;
	SetupThing::TextBounds.p0.y = rect.start.y;
	SetupThing::TextBounds.p1.x = rect.end.x;
	SetupThing::TextBounds.p1.y = rect.end.y;
	SetupThing::DrawBigButton(rect.start.x, rect.start.y, pressed, hovered || (selected && !label[0]),
	                          rect.end.x - rect.start.x, style, true, -SETUP_NO_CLIP, SETUP_NO_CLIP);
	if (text_position == SETUP_TEXT_POSITION_BELOW)
	{
		SetupThing::DrawTextA((rect.start.x + rect.end.x) / 2 + 2, rect.end.y + 4, 1000, TEXTJUSTIFY_CENTRE, label,
		                      GetTextSize(), &SetupThing::ShadowColour, 0);
		SetupThing::DrawTextA(
			(rect.start.x + rect.end.x) / 2, rect.end.y + 2, 1000, TEXTJUSTIFY_CENTRE, label, GetTextSize(),
			hovered || (selected && !label[0]) ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, 0);
	}
	else if (text_position != SETUP_TEXT_POSITION_RIGHT)
	{
		SetupThing::DrawTextA(rect.start.x + 2, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize() + 2, 1000,
		                      TEXTJUSTIFY_RIGHT, label, GetTextSize(), &SetupThing::ShadowColour, 0);
		SetupThing::DrawTextA(
			rect.start.x, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize(), 1000, TEXTJUSTIFY_RIGHT, label,
			GetTextSize(),
			hovered || (selected && !label[0]) ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, 0);
	}
	else
	{
		SetupThing::DrawTextA(rect.end.x + 2, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize() + 2, 1000,
		                      TEXTJUSTIFY_LEFT, label, GetTextSize(), &SetupThing::ShadowColour, 0);
		SetupThing::DrawTextA(
			rect.end.x, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize(), 1000, TEXTJUSTIFY_LEFT, label,
			GetTextSize(),
			hovered || (selected && !label[0]) ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, 0);
	}
	InnerRect = SetupThing::TextBounds;
}

SetupBigButton::SetupBigButton(int id, int x, int y, const char16_t* label, int size, int text_position, int style)
	: SetupButton(id, x, y, size, size, label, 0)
{
	pressed = false;
	ClearStyle();
	this->text_position = (SETUP_TEXT_POSITION)text_position;
	if (text_position == SETUP_TEXT_POSITION_BELOW)
		text_size = GetMidTextSize();
	this->style = (BBSTYLE)style;
}

void SetupBigButton::ClearStyle()
{
	style = BBSTYLE_CHECK_BOX_OFF;
}

void SetupBigButton::SetCheckBoxStyle()
{
	style = BBSTYLE_CHECK_BOX_OFF;
}

void SetupBigButton::SetLeftArrowStyle()
{
	style = BBSTYLE_LEFT_ARROW;
}

void SetupBigButton::SetRightArrowStyle()
{
	style = BBSTYLE_RIGHT_ARROW;
}

void SetupHSBarGraph::Draw(bool hovered, bool selected)
{
	char16_t text[256];
	SetupThing::DrawBevBox(rect.start.x, rect.start.y, rect.end.x, rect.end.y, 1, 16, -1, LH3D_COLOR_WHITE);
	SetupThing::DrawTextWrap(rect.start.x + 1, rect.end.y + 1, rect.end.x + 1, rect.end.y + 1 + GetTextSize(),
	                         rect.end.y + 1, true, label, GetTextSize(), &SetupThing::ShadowColour, true, false);
	SetupThing::DrawTextWrap(
		rect.start.x, rect.end.y, rect.end.x, rect.end.y + GetTextSize(), rect.end.y, true, label, GetTextSize(),
		hovered || (selected && !label[0]) ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, true, false);
	zoomer.Update(LH3DTech::g_delta_time * 0.001f);

	int   barLeft = rect.start.x + 2;
	float total = 0.0f;
	for (VBarData* bar = BarDataList.FindNext(NULL); bar != NULL; bar = BarDataList.FindNext(bar))
	{
		total += fabs(bar->value);
		unsigned long solid = RGB_TORGBA(bar->color.GetColor());
		unsigned long faded = solid & 0x7fffffff;
		int           barRight =
			(int)(rect.start.x + 2 + (rect.end.x - rect.start.x - 4) * (total * zoomer.GetCurrentValue() / max_point));
		int middle = (rect.start.y + rect.end.y) / 2;
		barRight = SETUP_CLAMP(barRight, rect.start.x + 2, rect.end.x - 2);
		if (bar->value < 0.0f)
		{
			solid ^= faded;
			faded ^= solid;
			solid ^= faded;
		}
		SetupThing::DrawBox(barLeft, rect.start.y + 2, barRight, middle, faded, faded, solid, solid, 0, 1);
		SetupThing::DrawBox(barLeft, middle, barRight, rect.end.y - 2, solid, solid, faded, faded, 0, 1);
		barLeft = barRight;
	}

	float step = SETUP_GRAPH_GRID_MIN_STEP;
	while (max_point / step > (rect.end.x - rect.start.x) / SETUP_GRAPH_GRID_MIN_SPACING)
		step *= 2.0f;
	int gridLine = 1;
	for (float value = step; value < max_point; value += step)
	{
		unsigned long colour = (gridLine & (SETUP_GRAPH_GRID_MAJOR_INTERVAL - 1)) != 0 ? SETUP_GRAPH_GRID_COLOUR
		                                                                               : SETUP_GRAPH_GRID_MAJOR_COLOUR;
		gridLine++;
		int x = (int)(rect.start.x + 2 + (rect.end.x - rect.start.x - 4) * (value / max_point));
		SetupThing::DrawBox(x, rect.start.y + 2, x + 1, rect.end.y - 2, colour, colour, colour, colour, 0, 1);
	}

	if (hovered)
	{
		int mouseX = LHSys::GetMouse().Pos().x;
		int mouseY = LHSys::GetMouse().Pos().y;
		SetupThing::unadjust(mouseX, mouseY);
		float mouseValue = (float)(mouseX - (rect.start.x + 2)) / (rect.end.x - rect.start.x - 4) * max_point;
		mouseValue = SETUP_CLAMP(mouseValue, 0.0f, max_point);
		if (max_point <= SETUP_GRAPH_DECIMAL_LIMIT)
			swprintf(text, L"%0.1f", mouseValue);
		else
			swprintf(text, L"%d", (int)mouseValue);
		SetupThing::DrawTextA(mouseX + 1, rect.start.y - GetTextSize() - 1, 100, TEXTJUSTIFY_CENTRE, text,
		                      GetTextSize(), &SetupThing::ShadowColour, 0);
		SetupThing::DrawTextA(mouseX, rect.start.y - GetTextSize() - 2, 100, TEXTJUSTIFY_CENTRE, text, GetTextSize(),
		                      &SetupThing::DefaultColor, 0);
	}
}

void SetupHSBarGraph::SetScale(float scale)
{
	if (scale <= 0.0f)
	{
		scale = 0.0f;
		for (VBarData* bar = BarDataList.FindNext(NULL); bar != NULL; bar = BarDataList.FindNext(bar))
			scale += fabs(bar->value);
		if (scale <= 0.0f)
			scale = 1.0f;
	}
	max_point = scale;
}

void HLineData::SetNum(int num)
{
	if (num < 0)
		num = 0;
	float* newPoints = new (FILEPATH, 1901) float[num];
	memset(newPoints, 0, num * sizeof(float));
	memcpy(newPoints, points, min(num, PointCount) * sizeof(float));
	delete[] points;
	PointCount = num;
	points = newPoints;
}

void SetupHLineGraph::Draw(bool hovered, bool selected)
{
	char16_t text[256];
	SetupThing::DrawBevBox(rect.start.x, rect.start.y, rect.end.x, rect.end.y, 1, 16, -1, LH3D_COLOR_WHITE);
	SetupThing::DrawTextWrap(rect.start.x + 1, rect.end.y + 1, rect.end.x + 1, rect.end.y + 1 + GetTextSize(),
	                         rect.end.y + 1, true, label, GetTextSize(), &SetupThing::ShadowColour, true, false);
	SetupThing::DrawTextWrap(
		rect.start.x, rect.end.y, rect.end.x, rect.end.y + GetTextSize(), rect.end.y, true, label, GetTextSize(),
		hovered || (selected && !label[0]) ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, true, false);
	float range = max_point - min_point;

	if (percent_mode)
	{
		int pointCount = 0;
		for (HLineData* line = LineDataList.FindNext(NULL); line != NULL; line = LineDataList.FindNext(line))
		{
			if (line->PointCount < pointCount || pointCount == 0)
				pointCount = line->PointCount;
		}
		if (pointCount >= 2)
		{
			float x = rect.start.x + 2;
			float step = (float)(rect.end.x - rect.start.x - 4) / (pointCount - 1);
			for (int i = 0; i < pointCount - 1; i++)
			{
				float scale = 0.0f;
				float nextScale = 0.0f;
				for (HLineData* line = LineDataList.FindNext(NULL); line != NULL; line = LineDataList.FindNext(line))
				{
					scale += line->points[i];
					nextScale += line->points[i + 1];
				}
				if (scale != 0.0f)
					scale = 1.0f / scale;
				if (nextScale != 0.0f)
					nextScale = 1.0f / nextScale;
				int   bottom = rect.end.y - 2;
				int   nextBottom = rect.end.y - 2;
				float total = 0.0f;
				float nextTotal = 0.0f;
				for (line = LineDataList.FindNext(NULL); line != NULL; line = LineDataList.FindNext(line))
				{
					unsigned long solid = RGB_TORGBA(line->color.GetColor());
					unsigned long clear = solid & LH3D_COLOR_RGB_MASK;
					total += scale * line->points[i];
					nextTotal += nextScale * line->points[i + 1];
					int top = (int)((rect.end.y - 2) - (rect.end.y - rect.start.y - 4) * total);
					int nextTop = (int)((rect.end.y - 2) - (rect.end.y - rect.start.y - 4) * nextTotal);
					SetupThing::DrawQuad((int)x, bottom, (int)(x + step), nextBottom, (int)(x + step), nextTop, (int)x,
					                     top, clear, clear, solid, solid, 0, 1);
					bottom = top;
					nextBottom = nextTop;
				}
				x += step;
			}
		}
	}
	else
	{
		for (HLineData* line = LineDataList.FindNext(NULL); line != NULL; line = LineDataList.FindNext(line))
		{
			unsigned long solid = RGB_TORGBA(line->color.GetColor());
			unsigned long clear = solid & LH3D_COLOR_RGB_MASK;
			if (line->PointCount > 1)
			{
				float x = rect.start.x + 2;
				float step = (float)(rect.end.x - rect.start.x - 4) / (line->PointCount - 1);
				int   y =
					(int)((rect.end.y - 2) - (rect.end.y - rect.start.y - 4) * ((line->points[0] - min_point) / range));
				y = SETUP_CLAMP(y, rect.start.y + 4, rect.end.y - 4);
				int index;
				for (index = 1; index < line->PointCount; index++)
				{
					int nextY = (int)((rect.end.y - 2) -
					                  (rect.end.y - rect.start.y - 4) * ((line->points[index] - min_point) / range));
					nextY = SETUP_CLAMP(nextY, rect.start.y + 4, rect.end.y - 4);
					SetupThing::DrawLine((int)x, y, (int)(x + step), nextY, solid, 1, 0.0f, 100.0f);
					x += step;
					y = nextY;
				}
				x = rect.start.x + 2;
				y = (int)((rect.end.y - 2) - (rect.end.y - rect.start.y - 4) * ((line->points[0] - min_point) / range));
				y = SETUP_CLAMP(y, rect.start.y + 4, rect.end.y - 4);
				for (index = 1; index < line->PointCount; index++)
				{
					int nextY = (int)((rect.end.y - 2) -
					                  (rect.end.y - rect.start.y - 4) * ((line->points[index] - min_point) / range));
					nextY = SETUP_CLAMP(nextY, rect.start.y + 4, rect.end.y - 4);
					SetupThing::DrawQuad((int)x, y - 2, (int)(x + step), nextY - 2, (int)(x + step), nextY, (int)x, y,
					                     clear, clear, solid, solid, 0, 1);
					SetupThing::DrawQuad((int)x, y + 2, (int)(x + step), nextY + 2, (int)(x + step), nextY, (int)x, y,
					                     clear, clear, solid, solid, 0, 1);
					x += step;
					y = nextY;
				}
			}
		}
	}

	if (!percent_mode)
	{
		float step = SETUP_GRAPH_GRID_MIN_STEP;
		while (range / step > (rect.end.y - rect.start.y) / SETUP_GRAPH_GRID_MIN_SPACING)
			step *= 2.0f;
		float value = (int)(min_point / step) * step;
		int   gridLine = (int)(value / step);
		for (; value < max_point; value += step)
		{
			unsigned long colour = (gridLine & (SETUP_GRAPH_GRID_MAJOR_INTERVAL - 1)) != 0
			                           ? SETUP_GRAPH_GRID_COLOUR
			                           : SETUP_GRAPH_GRID_MAJOR_COLOUR;
			if (gridLine == 0)
				colour = LH3D_COLOR_WHITE;
			gridLine++;
			int y = (int)((rect.end.y - 2) - (rect.end.y - rect.start.y - 4) * ((value - min_point) / range));
			if (y > rect.start.y + 2 && y < rect.end.y - 2)
				SetupThing::DrawBox(rect.start.x + 2, y, rect.end.x - 2, y + 1, colour, colour, colour, colour, 0, 1);
		}
	}

	if (hovered)
	{
		int mouseX = LHSys::GetMouse().Pos().x;
		int mouseY = LHSys::GetMouse().Pos().y;
		SetupThing::unadjust(mouseX, mouseY);
		float mouseValue;
		if (percent_mode)
		{
			mouseValue = (float)(rect.end.y - 2 - mouseY) / (rect.end.y - rect.start.y - 4);
			mouseValue = SETUP_CLAMP(mouseValue, 0.0f, 1.0f);
		}
		else
		{
			mouseValue = (float)(rect.end.y - 2 - mouseY) / (rect.end.y - rect.start.y - 4) * range + min_point;
			mouseValue = SETUP_CLAMP(mouseValue, min_point, max_point);
		}
		if (percent_mode)
			swprintf(text, L"%d%%", (int)(mouseValue * 100.0f));
		else if (max_point <= SETUP_GRAPH_DECIMAL_LIMIT)
			swprintf(text, L"%0.2f", mouseValue);
		else
			swprintf(text, L"%d", (int)mouseValue);
		SetupThing::DrawTextA(rect.start.x - 1, mouseY - GetTextSize() / 2 + 1, 100, TEXTJUSTIFY_RIGHT, text,
		                      GetTextSize(), &SetupThing::ShadowColour, 0);
		SetupThing::DrawTextA(rect.start.x - 2, mouseY - GetTextSize() / 2, 100, TEXTJUSTIFY_RIGHT, text, GetTextSize(),
		                      &SetupThing::DefaultColor, 0);
	}
}

SetupHLineGraph::SetupHLineGraph(int id, int x, int y, int width, int height, const char16_t* label, bool percent_mode)
	: SetupButton(id, x, y, width, height, label, 0)
{
	pressed = false;
	text_size = GetSmallTextSize();
	this->percent_mode = percent_mode;
	Reset();
}

void SetupHLineGraph::Reset()
{
	LineDataList.DeleteAll();
}

void SetupHLineGraph::SetScale(float max_point, float min_point, bool centered_at_zero)
{
	if (max_point <= 0.0f)
	{
		max_point = -1.0e10f;
		min_point = 1.0e10f;
		for (HLineData* line = LineDataList.FindNext(NULL); line != NULL; line = LineDataList.FindNext(line))
		{
			for (int index = 0; index < line->PointCount; ++index)
			{
				if (max_point < line->points[index])
					max_point = line->points[index];
				if (line->points[index] < min_point)
					min_point = line->points[index];
			}
		}
	}
	if (min_point >= max_point || centered_at_zero)
		min_point = 0.0f;
	if (max_point <= min_point)
		max_point = min_point + 1.0f;
	this->max_point = max_point;
	this->min_point = min_point;
}

void SetupHLineGraph::AddLine(HLineData& line)
{
	LineDataList.AddToEnd(new (FILEPATH, 2084) HLineData(line));
}

void SetupHLineGraph::SetLine(int index, HLineData& line)
{
	if (index >= 0 && index < (int)LineDataList.count)
	{
		LHLinkedNode<HLineData*>* node = LineDataList.GetNodeAtPosition(index);
		HLineData*                data = node != NULL ? node->payload : NULL;
		if (data != NULL)
			*data = line;
	}
}

void SetupHLineGraph::GetLine(int index, HLineData& result)
{
	if (index >= 0 && index < (int)LineDataList.count)
	{
		LHLinkedNode<HLineData*>* node = LineDataList.GetNodeAtPosition(index);
		HLineData*                data = node != NULL ? node->payload : NULL;
		if (data != NULL)
			result = *data;
	}
}

void SetupVBarGraph::Draw(bool hovered, bool selected)
{
	char16_t text[256];
	SetupThing::DrawBevBox(rect.start.x, rect.start.y, rect.end.x, rect.end.y, 1, 16, -1, LH3D_COLOR_WHITE);
	SetupThing::DrawTextWrap(rect.start.x + 1, rect.end.y + 1, rect.end.x + 1, rect.end.y + 1 + GetTextSize(),
	                         rect.end.y + 1, true, label, GetTextSize(), &SetupThing::ShadowColour, true, false);
	SetupThing::DrawTextWrap(
		rect.start.x, rect.end.y, rect.end.x, rect.end.y + GetTextSize(), rect.end.y, true, label, GetTextSize(),
		hovered || (selected && !label[0]) ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, true, false);
	float barWidth = (float)(rect.end.x - rect.start.x - 4) / (int)BarDataList.count;
	float barLeft = rect.start.x + 2;
	zoomer.Update(LH3DTech::g_delta_time * 0.001f);

	float range = max_point - min_point;
	for (VBarData* bar = BarDataList.FindNext(NULL); bar != NULL; bar = BarDataList.FindNext(bar))
	{
		unsigned long solid = RGB_TORGBA(bar->color.GetColor());
		unsigned long faded = solid & 0x3fffffff;
		int           top = (int)((rect.end.y - 2) - (rect.end.y - rect.start.y - 4) *
		                                                 ((bar->value - min_point) * zoomer.GetCurrentValue() / range));
		int zeroY = (int)((rect.end.y - 2) -
		                  (rect.end.y - rect.start.y - 4) * ((0.0f - min_point) * zoomer.GetCurrentValue() / range));
		top = SETUP_CLAMP(top, rect.start.y + 2, rect.end.y - 2);
		SetupThing::DrawBox((int)(barLeft + 2.0f), top, (int)(barLeft + barWidth - 2.0f), zeroY - 2, solid, solid,
		                    faded, faded, 0, 1);
		barLeft += barWidth;
	}

	float step = SETUP_GRAPH_GRID_MIN_STEP;
	while (range / step > (rect.end.y - rect.start.y) / SETUP_GRAPH_GRID_MIN_SPACING)
		step *= 2.0f;
	float value = (int)(min_point / step) * step;
	int   gridLine = (int)(value / step) & 1;
	for (; value < max_point; value += step)
	{
		unsigned long colour = (gridLine & (SETUP_GRAPH_GRID_MAJOR_INTERVAL - 1)) != 0 ? SETUP_GRAPH_GRID_COLOUR
		                                                                               : SETUP_GRAPH_GRID_MAJOR_COLOUR;
		gridLine++;
		int y = (int)((rect.end.y - 2) - (rect.end.y - rect.start.y - 4) * ((value - min_point) / range));
		y = SETUP_CLAMP(y, rect.start.y + 2, rect.end.y - 2);
		SetupThing::DrawBox(rect.start.x + 2, y, rect.end.x - 2, y + 1, colour, colour, colour, colour, 0, 1);
	}

	if (hovered)
	{
		int mouseX = LHSys::GetMouse().Pos().x;
		int mouseY = LHSys::GetMouse().Pos().y;
		SetupThing::unadjust(mouseX, mouseY);
		float mouseValue = (float)(rect.end.y - 2 - mouseY) / (rect.end.y - rect.start.y - 4) * range + min_point;
		mouseValue = SETUP_CLAMP(mouseValue, min_point, max_point);
		if (fabs(range) <= SETUP_GRAPH_DECIMAL_LIMIT)
			swprintf(text, L"%0.1f", mouseValue);
		else
			swprintf(text, L"%d", (int)mouseValue);
		SetupThing::DrawTextA(rect.start.x - 1, mouseY - GetTextSize() / 2 + 1, 100, TEXTJUSTIFY_RIGHT, text,
		                      GetTextSize(), &SetupThing::ShadowColour, 0);
		SetupThing::DrawTextA(rect.start.x - 2, mouseY - GetTextSize() / 2, 100, TEXTJUSTIFY_RIGHT, text, GetTextSize(),
		                      &SetupThing::DefaultColor, 0);
	}
}

SetupVBarGraph::SetupVBarGraph(int id, int x, int y, int width, int height, const char16_t* label)
	: SetupButton(id, x, y, width, height, label, 0)
{
	pressed = false;
	min_point = 0.0f;
	max_point = 0.0f;
	text_size = GetSmallTextSize();
	Reset();
}

void SetupVBarGraph::Reset()
{
	BarDataList.DeleteAll();
	zoomer.SetPosition(0.0f);
	zoomer.SetDestination(1.0f, 0.5f);
	min_point = 0.0f;
	max_point = 0.0f;
}

void SetupVBarGraph::SetScale(float scale)
{
	VBarData* bar;
	if (scale <= 0.0f)
	{
		scale = 0.0f;
		for (bar = BarDataList.FindNext(NULL); bar != NULL; bar = BarDataList.FindNext(bar))
		{
			if (scale < bar->value)
				scale = bar->value;
		}
		if (scale <= 0.0f)
			scale = 1.0f;
	}
	max_point = scale;
	min_point = 0.0f;
	for (bar = BarDataList.FindNext(NULL); bar != NULL; bar = BarDataList.FindNext(bar))
	{
		if (min_point > bar->value)
			min_point = bar->value;
	}
}

void SetupVBarGraph::AddBar(const VBarData& bar)
{
	BarDataList.AddToEnd(new (FILEPATH, 2192) VBarData(bar));
}

void SetupVBarGraph::SetBar(int index, const VBarData& bar)
{
	if (index >= 0 && index < (int)BarDataList.count)
	{
		LHLinkedNode<VBarData*>* node = BarDataList.GetNodeAtPosition(index);
		VBarData*                data = node != NULL ? node->payload : NULL;
		if (data != NULL)
			*data = bar;
	}
}

void SetupVBarGraph::GetBar(int index, VBarData& result)
{
	if (index >= 0 && index < (int)BarDataList.count)
	{
		LHLinkedNode<VBarData*>* node = BarDataList.GetNodeAtPosition(index);
		VBarData*                data = node != NULL ? node->payload : NULL;
		if (data != NULL)
			result = *data;
	}
}

void SetupTabButton::Draw(bool hovered, bool selected)
{
	SetupThing::DrawTab(rect.start.x, rect.start.y, rect.end.x, rect.end.y, this->selected, first_in_row, last_in_row,
	                    label, color, 0);
	int drawAlpha = SetupThing::DrawAlpha;
	if (!this->selected)
		SetupThing::DrawAlpha = (int)(SetupThing::DrawAlpha / 1.5f);
	GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
	int            size = GetTextSize();
	while (size > GetSmallTextSize() / 2)
	{
		LH3DColor white(255, 255, 255, 255);
		float     height =
			font->DrawTextA(label, (float)(rect.start.x + 9), (float)(rect.start.y + 7), (float)(rect.start.y + 7),
		                    (float)(rect.end.x - 7), (float)(rect.end.y + 100), (float)(rect.end.y + 100),
		                    (float)(rect.start.y + 7), 20.0f, (float)size, &white, 1, 0, 0);
		if (height < rect.end.y - rect.start.y - 6)
			break;
		size--;
	}
	SetupThing::DrawTextWrap(rect.start.x + 9, rect.start.y + 8, rect.end.x - 7, rect.end.y + 2, rect.start.y + 8, true,
	                         label, size, &SetupThing::ShadowColour, true, false);
	SetupThing::DrawTextWrap(rect.start.x + 9, rect.start.y + 8, rect.end.x - 7, rect.end.y + 2, rect.start.y + 8, true,
	                         label, size, &SetupThing::ShadowColour, true, false);
	SetupThing::DrawTextWrap(
		rect.start.x + 8, rect.start.y + 7, rect.end.x - 8, rect.end.y + 1, rect.start.y + 7, true, label, size,
		hovered || (selected && !label[0]) ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, true, false);
	SetupThing::DrawAlpha = drawAlpha;
}

SetupTabButton::SetupTabButton(int id, int x, int y, int width, int height, const char16_t* label, int selected,
                               int first_in_row, int last_in_row)
	: SetupButton(id, x, y, width, height, label, 0)
{
	color = 0xffffffff;
	this->first_in_row = first_in_row;
	this->last_in_row = last_in_row;
	pressed = false;
	text_size = GetMidTextSize();
	this->selected = selected;
	if (setup_box != NULL)
		setup_box->BackgroundStyle = SETUP_BACKGROUND_TABBED;
}

void SetupPicture::MouseDown(int x, int y, bool button_event)
{
	HoveredPictureIndex = -1;
	pressed = true;
	if (button_event)
	{
		if (draggable)
			dragging = true;
		if (clickable)
			zoomer.SetDestination(1.0f, 0.5f);
	}
}

void SetupPicture::MouseUp(int x, int y, bool button_event)
{
	pressed = false;
	if (button_event)
	{
		if (draggable)
		{
			if (dragging && setup_box->Callback != NULL)
				setup_box->Callback(SETUP_MESSAGE_DROP, setup_box, this, x, y);
			dragging = false;
		}
		if (clickable)
		{
			if (HoveredPictureIndex >= 0)
				picture_index = HoveredPictureIndex % NumPictures;
			zoomer.SetDestination(0.0f, 1.0f);
		}
	}
}

void SetupPicture::Drag(int x, int y) {}

void SetupPicture::Draw(bool hovered, bool selected)
{
	zoomer.Update(LH3DTech::g_delta_time * 0.001f);
	int       index = HoveredPictureIndex >= 0 ? HoveredPictureIndex : picture_index;
	float     u = (float)(index % num_rows) / num_rows + 1.0f / 512;
	float     v = (float)(index / num_rows) / num_rows + 1.0f / 512;
	float     size = 1.0f / num_rows - 1.0f / 256;
	LH3DColor colour(tint);
	if (tint == 0)
		colour = selected ? SetupThing::DefaultColor : SetupThing::NormalColour;
	if (material != NULL && tint == 0)
		SetupThing::DrawBox(rect.start.x + 2, rect.start.y + 2, rect.end.x + 2, rect.end.y + 2, u, v, u + size,
		                    v + size, material, &SetupThing::ShadowColour, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false,
		                    100.0f);
	if (material != NULL)
	{
		SetupThing::DrawBox(rect.start.x, rect.start.y, rect.end.x, rect.end.y, u, v, u + size, v + size, material,
		                    hovered ? &SetupThing::HighlightColour : &colour, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false,
		                    100.0f);
		float zoom = zoomer.GetCurrentValue() * 255.0f;
		int   zoomAlpha = (int)(zoom > 0.0f ? min(zoom, 255.0f) : 0.0f);
		float spin = (255 - zoomAlpha) * (HALF_PI_F / 255);
		if (zoomAlpha > SETUP_PICTURE_RING_MIN_ALPHA)
		{
			int mouseX = LHSys::GetMouse().Pos().x;
			int mouseY = LHSys::GetMouse().Pos().y;
			SetupThing::unadjust(mouseX, mouseY);
			int           radius = (rect.end.y - rect.start.y) / 2;
			int           iconRadius = (int)(radius * 0.75f);
			int           iconSize = iconRadius * zoomAlpha >> 8;
			int           outerRadius = radius + iconRadius * 4;
			int           edgeRadius = outerRadius + SETUP_PICTURE_SHADOW_FADE;
			int           centreX = (rect.start.x + rect.end.x) / 2;
			int           centreY = (rect.start.y + rect.end.y) / 2;
			int           innerRadius = radius - SETUP_PICTURE_SHADOW_FADE;
			unsigned long shadow = RGBA_MAKE(0, 0, 0, zoomAlpha / 2);
			unsigned long clear = RGBA_TORGB(shadow);
			for (int i = 0; i < SETUP_PICTURE_RING_SEGMENTS; i++)
			{
				float angle = i * TWO_PI / SETUP_PICTURE_RING_SEGMENTS;
				SetupThing::DrawQuad(
					(int)(centreX + sin(angle) * radius), (int)(centreY + cos(angle) * radius),
					(int)(centreX + sin((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * radius),
					(int)(centreY + cos((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * radius),
					(int)(centreX + sin((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * outerRadius),
					(int)(centreY + cos((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * outerRadius),
					(int)(centreX + sin(angle) * outerRadius), (int)(centreY + cos(angle) * outerRadius), shadow,
					shadow, shadow, shadow, 0, 1);
				SetupThing::DrawQuad(
					(int)(centreX + sin(angle) * edgeRadius), (int)(centreY + cos(angle) * edgeRadius),
					(int)(centreX + sin((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * edgeRadius),
					(int)(centreY + cos((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * edgeRadius),
					(int)(centreX + sin((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * outerRadius),
					(int)(centreY + cos((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * outerRadius),
					(int)(centreX + sin(angle) * outerRadius), (int)(centreY + cos(angle) * outerRadius), clear, clear,
					shadow, shadow, 0, 1);
				SetupThing::DrawQuad(
					(int)(centreX + sin(angle) * innerRadius), (int)(centreY + cos(angle) * innerRadius),
					(int)(centreX + sin((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * innerRadius),
					(int)(centreY + cos((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * innerRadius),
					(int)(centreX + sin((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * radius),
					(int)(centreY + cos((i + 1.0f) * TWO_PI / SETUP_PICTURE_RING_SEGMENTS) * radius),
					(int)(centreX + sin(angle) * radius), (int)(centreY + cos(angle) * radius), clear, clear, shadow,
					shadow, 0, 1);
			}
			radius += iconRadius;
			int innerCount = (int)NumPictures / 3 + 1;
			int drawAlpha = SetupThing::DrawAlpha;
			SetupThing::DrawAlpha = drawAlpha * zoomAlpha >> 8;
			float step = TWO_PI / innerCount;
			if ((centreX - mouseX) * (centreX - mouseX) + (centreY - mouseY) * (centreY - mouseY) >
			    edgeRadius * edgeRadius)
				HoveredPictureIndex = -1;
			int j;
			for (j = 0; j < innerCount; j++)
			{
				float iconU = (float)(j % num_rows) / num_rows + 1.0f / 512;
				float iconV = (float)(j / num_rows) / num_rows + 1.0f / 512;
				float angle = j * step + spin;
				int   x = (int)(centreX + sin(angle) * radius);
				int   y = (int)(centreY - cos(angle) * radius);
				bool  iconHovered = (x - mouseX) * (x - mouseX) + (y - mouseY) * (y - mouseY) < iconSize * iconSize;
				SetupThing::DrawBox(x - iconSize + 2, y - iconSize + 2, x + iconSize + 2, y + iconSize + 2, iconU,
				                    iconV, iconU + size, iconV + size, material, &SetupThing::ShadowColour, 1,
				                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
				SetupThing::DrawBox(x - iconSize, y - iconSize, x + iconSize, y + iconSize, iconU, iconV, iconU + size,
				                    iconV + size, material,
				                    iconHovered ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, 1,
				                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
				if (iconHovered && zoomAlpha > SETUP_PICTURE_RING_SELECT_ALPHA)
					HoveredPictureIndex = j;
			}
			radius += iconRadius * 2;
			int outerCount = NumPictures - innerCount;
			step = TWO_PI / outerCount;
			for (j = 0; j < outerCount; j++)
			{
				float iconU = (float)((j + innerCount) % num_rows) / num_rows + 1.0f / 512;
				float iconV = (float)((j + innerCount) / num_rows) / num_rows + 1.0f / 512;
				float angle = j * step - spin;
				int   x = (int)(centreX + sin(angle) * radius);
				int   y = (int)(centreY - cos(angle) * radius);
				bool  iconHovered = (x - mouseX) * (x - mouseX) + (y - mouseY) * (y - mouseY) < iconSize * iconSize;
				SetupThing::DrawBox(x - iconSize + 2, y - iconSize + 2, x + iconSize + 2, y + iconSize + 2, iconU,
				                    iconV, iconU + size, iconV + size, material, &SetupThing::ShadowColour, 1,
				                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
				SetupThing::DrawBox(x - iconSize, y - iconSize, x + iconSize, y + iconSize, iconU, iconV, iconU + size,
				                    iconV + size, material,
				                    iconHovered ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, 1,
				                    -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
				if (iconHovered && zoomAlpha > SETUP_PICTURE_RING_SELECT_ALPHA)
					HoveredPictureIndex = j + innerCount;
			}
			SetupThing::DrawAlpha = drawAlpha;
		}
	}
	if (dragging)
	{
		int width = rect.end.x - rect.start.x;
		int height = rect.end.y - rect.start.y;
		int x = LHSys::GetMouse().Pos().x;
		int y = LHSys::GetMouse().Pos().y;
		SetupThing::unadjust(x, y);
		x -= SETUP_PICTURE_DRAG_OFFSET;
		y -= SETUP_PICTURE_DRAG_OFFSET;
		int right = x + width;
		int bottom = y + height;
		if (material != NULL && tint == 0)
			SetupThing::DrawBox(x - 2, y + 2, right - 2, bottom + 2, u, v, u + size, v + size, material,
			                    &SetupThing::ShadowColour, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
		bool32_t  blink = (GetTickCount() / SETUP_PICTURE_DRAG_FLASH_TIME) & 1;
		LH3DColor inverse(colour.GetColor() ^ LH3D_COLOR_RGB_MASK);
		if (material != NULL)
			SetupThing::DrawBox(x, y, right, bottom, u, v, u + size, v + size, material,
			                    Style >= 0 && blink ? &inverse : &colour, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false,
			                    100.0f);
		if (setup_box != NULL)
			setup_box->SetFocusControl(this);
	}
}

SetupPicture::SetupPicture(int id, int x, int y, LH3DMaterial* material, int picture_index, int num_rows,
                           bool clickable, int size, bool draggable)
	: SetupButton(id, x, y, size, size, L"", 0)
{
	HoveredPictureIndex = -1;
	zoomer.SetPosition(0.0f);
	zoomer.SetDestination(0.0f, 0.0f);
	pressed = false;
	tint = 0;
	this->picture_index = picture_index;
	this->material = material;
	this->num_rows = num_rows;
	NumPictures = this->num_rows * this->num_rows;
	this->clickable = clickable;
	this->draggable = draggable;
	dragging = false;
}

void SetupPicture::SetFocus(bool focus)
{
	if (!focus)
	{
		HoveredPictureIndex = -1;
		zoomer.SetPosition(0.0f);
		zoomer.SetDestination(0.0f, 0.0f);
	}
}

void SetupColourPicker::MouseDown(int x, int y, bool button_event)
{
	pressed = true;
}

void SetupColourPicker::MouseUp(int x, int y, bool button_event)
{
	pressed = false;
}

void SetupColourPicker::Drag(int x, int y)
{
	SliderPosition = (float)(y - rect.start.y) / (float)(rect.end.y - rect.start.y);
	SliderPosition = SliderPosition > 0.0f ? min(SliderPosition, 1.0f) : 0.0f;
}

void SetupColourPicker::Draw(bool hovered, bool selected)
{
	int mouseX = LHSys::GetMouse().Pos().x;
	int mouseY = LHSys::GetMouse().Pos().y;
	SetupThing::unadjust(mouseX, mouseY);
	SetupThing::DrawBevBox(rect.start.x + 14, rect.start.y - 2, rect.end.x - 14, rect.end.y + 2, hovered ? 2 : 1, 16,
	                       -1, 0xffffffff);
	SliderPosition = SliderPosition > 0.0f ? min(SliderPosition, 1.0f) : 0.0f;
	int y = (int)(SliderPosition * (rect.end.y - rect.start.y) + rect.start.y);
	if (brightness_slider)
	{
		unsigned long c = color;
		int           middle = (rect.start.y + rect.end.y) / 2;
		SetupThing::DrawBox(rect.start.x + 16, rect.start.y, rect.end.x - 16, middle, 0, 0, c, c, 1, 1);
		SetupThing::DrawBox(rect.start.x + 16, middle, rect.end.x - 16, rect.end.y, c, c, 0xffffffff, 0xffffffff, 1, 1);
		hovered = hovered && mouseX > rect.end.x - 16;
		SetupThing::DrawBigButton(rect.end.x - 16, y - 8, true, hovered, 16, BBSTYLE_LEFT_ARROW, false, -SETUP_NO_CLIP,
		                          SETUP_NO_CLIP);
	}
	else
	{
		hovered = hovered && mouseX < rect.start.x + 16;
		if (material != NULL)
		{
			LH3DColor white(0xffffffff);
			SetupThing::DrawBox(rect.start.x + 16, rect.start.y, rect.end.x - 16, rect.end.y, 1.0f / 512, 65.0f / 512,
			                    63.0f / 512, 511.0f / 512, material, &white, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false,
			                    100.0f);
		}
		SetupThing::DrawBigButton(rect.start.x, y - 8, true, hovered, 16, BBSTYLE_RIGHT_ARROW, false, -SETUP_NO_CLIP,
		                          SETUP_NO_CLIP);
	}
}

SetupColourPicker::SetupColourPicker(int id, int x, int y, int width, int height, int brightness_slider,
                                     LH3DMaterial* material)
	: SetupButton(id, x, y, width, height, L"", 0)
{
	this->brightness_slider = brightness_slider;
	this->material = material;
	Color0x244 = LH3DColor(0xff000000);
	color = 0x00808080;
	SliderPosition = 0.5f;
}

void SetupCheckBox::Draw(bool hovered, bool selected)
{
	SetupThing::TextBounds.p0.x = rect.start.x;
	SetupThing::TextBounds.p0.y = rect.start.y;
	SetupThing::TextBounds.p1.x = rect.end.x;
	SetupThing::TextBounds.p1.y = rect.end.y;
	SetupThing::DrawBigButton(rect.start.x, rect.start.y, pressed, hovered, rect.end.x - rect.start.x,
	                          style ? BBSTYLE_CHECK_BOX_ON : BBSTYLE_CHECK_BOX_OFF, true, -SETUP_NO_CLIP,
	                          SETUP_NO_CLIP);
	if (text_position == SETUP_TEXT_POSITION_BELOW)
	{
		SetupThing::DrawTextA((rect.start.x + rect.end.x) / 2 + 2, rect.end.y + 4, 1000, TEXTJUSTIFY_CENTRE, label,
		                      GetTextSize(), &SetupThing::ShadowColour, 0);
		SetupThing::DrawTextA(
			(rect.start.x + rect.end.x) / 2, rect.end.y + 2, 1000, TEXTJUSTIFY_CENTRE, label, GetTextSize(),
			hovered || (selected && !label[0]) ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, 0);
	}
	else if (text_position != SETUP_TEXT_POSITION_RIGHT)
	{
		SetupThing::DrawTextA(rect.start.x - 2, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize() + 2, 1000,
		                      TEXTJUSTIFY_RIGHT, label, GetTextSize(), &SetupThing::ShadowColour, 0);
		SetupThing::DrawTextA(
			rect.start.x - 4, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize(), 1000, TEXTJUSTIFY_RIGHT, label,
			GetTextSize(),
			hovered || (selected && !label[0]) ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, 0);
	}
	else
	{
		SetupThing::DrawTextA(rect.end.x + 6, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize() + 2, 1000,
		                      TEXTJUSTIFY_LEFT, label, GetTextSize(), &SetupThing::ShadowColour, 0);
		SetupThing::DrawTextA(
			rect.end.x + 4, (rect.start.y + rect.end.y) / 2 - GetHalfTextSize(), 1000, TEXTJUSTIFY_LEFT, label,
			GetTextSize(),
			hovered || (selected && !label[0]) ? &SetupThing::HighlightColour : &SetupThing::DefaultColor, 0);
	}
	InnerRect = SetupThing::TextBounds;
}

SetupCheckBox::SetupCheckBox(int id, int x, int y, bool radio_button, int style, const char16_t* label, int size)
	: SetupButton(id, x, y, size, size, label, 0)
{
	pressed = false;
	this->style = style;
	RadioButton = radio_button;
	text_size = GetMidTextSize();
	text_position = SETUP_TEXT_POSITION_BELOW;
}

void SetupBox::SetFocusNext()
{
	SetupControl* control = FocusedWidget;
	SetupControl* original = control;
	do
	{
		for (SetupControl* scan = WidgetList; scan != NULL; scan = scan->next)
		{
			if (scan->next == FocusedWidget)
			{
				control = scan;
				break;
			}
			if (scan->next == NULL)
				control = scan;
		}
		if (control == NULL)
			control = WidgetList;
		if (control == FocusedWidget)
			break;
		SetFocusControl(control);
		if (control == original || control == NULL)
			break;
	} while (!control->TabStop || control->hidden == true);
}

void SetupBox::SetFocusPrev()
{
	SetupControl* original = FocusedWidget;
	SetupControl* control = original;
	do
	{
		if (control != NULL)
			control = control->next;
		if (control == NULL)
			control = WidgetList;
		if (control == FocusedWidget)
			break;
		SetFocusControl(control);
		if (control == original || control == NULL)
			break;
	} while (!control->TabStop || control->hidden == true);
}

void SetupBox::CleanOld()
{
	if (HoldWidgetList != NULL)
	{
		SetupControl* list = WidgetList;
		WidgetList = HoldWidgetList;
		HoldWidgetList = list;
		while (WidgetList != NULL)
			delete WidgetList;
		WidgetList = HoldWidgetList;
		HoldWidgetList = NULL;
	}
}

void SetupBox::MessageBoxA(char16_t* text, MSGBOXSTYLE style, unsigned long hold_data)
{
	if (OnHold)
		SetOffHold();
	CleanOld();
	HoldColour = LH3D_COLOR_WHITE;
	HoldWidth = 500;
	HoldHeight = 200;
	SetOnHold(hold_data);
	CurrentInitBox = this;
	SetupStaticText* message = new (FILEPATH, 2564)
		SetupStaticText(SETUP_MESSAGE_BOX_ID_TEXT, 200, 220, 400, 130, text, TEXTJUSTIFY_CENTRE_BREAK);
	MessageText = message;
	message->text_size = GetBigTextSize() + 1;
	do
		message->text_size--;
	while ((int)SetupThing::Font->DrawTextA(text, 0.0f, 0.0f, 0.0f, 400.0f, 530.0f, 530.0f, 0.0f, 5.0f,
	                                        (float)message->text_size, &LH3DColor(255, 255, 255, 255), 1, 0,
	                                        1) >= 125 &&
	       message->text_size > GetSmallTextSize());
	int           textSize = GetMidTextSize();
	SetupControl* button;
	switch (style)
	{
	default:
		button = new (FILEPATH, 2615) SetupButton(SETUP_MESSAGE_BOX_ID_OK, 325, 338, 150, 32,
		                                          HelpTextData::GetTextL(SETUP_MESSAGE_BOX_TEXT_OK), 0);
		button->text_size = textSize;
		break;
	case MSGBOXSTYLE_CANCEL:
		button = new (FILEPATH, 2618) SetupButton(SETUP_MESSAGE_BOX_ID_CANCEL, 325, 338, 150, 32,
		                                          HelpTextData::GetTextL(SETUP_MESSAGE_BOX_TEXT_CANCEL), 0);
		button->text_size = textSize;
		break;
	case MSGBOXSTYLE_OK_CANCEL:
		button = new (FILEPATH, 2621)
			SetupBigButton(SETUP_MESSAGE_BOX_ID_CANCEL, 200, 338,
		                   HelpTextDataBase::HelpTextDatabase.GetHelpText(SETUP_MESSAGE_BOX_TEXT_CANCEL), 32,
		                   SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
		button->text_size = textSize;
		button = new (FILEPATH, 2622)
			SetupBigButton(SETUP_MESSAGE_BOX_ID_OK, 568, 338,
		                   HelpTextDataBase::HelpTextDatabase.GetHelpText(SETUP_MESSAGE_BOX_TEXT_OK), 32,
		                   SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
		button->text_size = textSize;
		break;
	case MSGBOXSTYLE_YES_NO:
		button = new (FILEPATH, 2626)
			SetupBigButton(SETUP_MESSAGE_BOX_ID_YES, 200, 338,
		                   HelpTextDataBase::HelpTextDatabase.GetHelpText(SETUP_MESSAGE_BOX_TEXT_YES), 32,
		                   SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
		button->text_size = textSize;
		button = new (FILEPATH, 2627)
			SetupBigButton(SETUP_MESSAGE_BOX_ID_NO, 568, 338,
		                   HelpTextDataBase::HelpTextDatabase.GetHelpText(SETUP_MESSAGE_BOX_TEXT_NO), 32,
		                   SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
		button->text_size = textSize;
		break;
	case MSGBOXSTYLE_YES_NO_CANCEL:
		button = new (FILEPATH, 2635)
			SetupBigButton(SETUP_MESSAGE_BOX_ID_YES, 200, 338,
		                   HelpTextDataBase::HelpTextDatabase.GetHelpText(SETUP_MESSAGE_BOX_TEXT_YES), 32,
		                   SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
		button->text_size = textSize;
		button = new (FILEPATH, 2636)
			SetupBigButton(SETUP_MESSAGE_BOX_ID_NO, 568, 338,
		                   HelpTextDataBase::HelpTextDatabase.GetHelpText(SETUP_MESSAGE_BOX_TEXT_NO), 32,
		                   SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
		button->text_size = textSize;
		button = new (FILEPATH, 2641) SetupButton(SETUP_MESSAGE_BOX_ID_CANCEL, 340, 338, 120, 32,
		                                          HelpTextData::GetTextL(SETUP_MESSAGE_BOX_TEXT_CANCEL), 0);
		button->text_size = textSize;
		break;
	case MSGBOXSTYLE_NO_BUTTONS:
		break;
	}
}

float SetupThing::GetTextHeight(int x_min, int y_min, int x_max, int y_max, int start_y, bool centered, char16_t* text,
                                int line_height)
{
	if (*text == 0)
		return 0.0f;
	LH3DColor color = 0xffffffff;
	return Font->DrawTextA(text, (float)x_min, (float)y_min, (float)y_min, (float)x_max, (float)y_max, (float)y_max,
	                       (float)start_y, LH3DTech::g_info_transform.NearClip * 1.5f, (float)line_height, &color,
	                       centered, 0, 0);
}

float SetupThing::GetTextWidth(char16_t* text, float size, int length, float scale)
{
	if (length == 0)
		length = wcslen(text);
	return Font->GetStringWidth(text, length, size, scale);
}

float SetupThing::DrawTextWrap(int x_min, int y_min, int x_max, int y_max, int start_y, bool centered, char16_t* text,
                               int size, LH3DColor* p_color, bool centre_vertically, bool no_z_test)
{
	if (!text[0])
		return 0.0f;
	LH3DColor color(0xff000000);
	if (p_color != NULL)
		color = *p_color;
	float textSize = size;
	color.a = DrawAlpha;
	x_max -= x_min;
	y_max -= y_min;
	start_y -= y_min;
	float scale = adjust(x_min, y_min);
	if (scale != 0.0f)
	{
		textSize /= scale;
		start_y = (int)(start_y / scale);
		x_max = (int)(x_max / scale);
		y_max = (int)(y_max / scale);
	}
	start_y += y_min;
	x_max += x_min;
	y_max += y_min;
	if (centre_vertically)
	{
		float height = Font->DrawTextA(text, (float)x_min, (float)y_min, (float)y_min, (float)x_max, (float)y_max,
		                               (float)y_max, (float)start_y, LH3DTech::g_info_transform.NearClip * 1.5f,
		                               textSize, &color, centered, 0, no_z_test);
		if (height < y_max - y_min)
			start_y = (int)((y_max - y_min - height) * 0.5f + y_min);
	}
	float height = Font->DrawTextA(text, (float)x_min, (float)y_min, (float)y_min, (float)x_max, (float)y_max,
	                               (float)y_max, (float)start_y, LH3DTech::g_info_transform.NearClip * 1.5f, textSize,
	                               &color, centered, 1, no_z_test);
	TextBounds.p0.x = x_min;
	TextBounds.p0.y = y_min;
	TextBounds.p1.x = x_max;
	TextBounds.p1.y = y_max;
	unadjust(TextBounds.p0.x, TextBounds.p0.y);
	unadjust(TextBounds.p1.x, TextBounds.p1.y);
	return unadjustsize(height);
}

float SetupThing::DrawTextA(int x, int y, int width, TEXTJUSTIFY justify, char16_t* text, int size, LH3DColor* p_color,
                            int length)
{
	if (!text[0])
		return 0.0f;
	LH3DColor color(0xff000000);
	if (p_color != NULL)
		color = *p_color;
	color.a = DrawAlpha;
	float textSize = size;
	float maxWidth = width;
	float scale = adjust(x, y);
	if (scale != 0.0f)
	{
		textSize /= scale;
		maxWidth /= scale;
	}
	int count = length;
	if (count == 0)
		count = wcslen(text);
	int textWidth;
	while (true)
	{
		textWidth = (int)Font->GetStringWidth(text, count, textSize);
		if (count == 0 || textWidth <= maxWidth)
			break;
		count--;
	}
	if (justify == TEXTJUSTIFY_RIGHT)
		x -= textWidth;
	if (justify == TEXTJUSTIFY_CENTRE)
		x -= textWidth / 2;
	Font->DrawTextRaw(text, count, (float)x, (float)y, LH3DTech::g_info_transform.NearClip * 1.5f, textSize, &color, 0,
	                  NULL, 0.0f, 4096.0f);
	TextBounds.p0.x = x;
	TextBounds.p0.y = y;
	TextBounds.p1.x = x + textWidth;
	TextBounds.p1.y = (int)(y + textSize);
	unadjust(TextBounds.p0.x, TextBounds.p0.y);
	unadjust(TextBounds.p1.x, TextBounds.p1.y);
	return unadjustsize(textSize);
}

float SetupThing::adjust(int& x, int& y)
{
	int width = LHSys::GetScreen().width;
	int height = LHSys::GetScreen().height;
	if (width >= 800 && height >= 600)
	{
		x += (width - 800) / 2;
		y += (height - 600) / 2;
		return 1.0f;
	}
	float scale = max(850.0f / width, 650.0f / height);
	x = (int)((width - 800.0f / scale) * 0.5f + x / scale);
	y = (int)((height - 600.0f / scale) * 0.5f + y / scale);
	return scale;
}

float SetupThing::unadjust(int& x, int& y)
{
	int width = LHSys::GetScreen().width;
	int height = LHSys::GetScreen().height;
	if (width >= 800 && height >= 600)
	{
		x -= (width - 800) / 2;
		y -= (height - 600) / 2;
		return 1.0f;
	}
	float scale = max(850.0f / width, 650.0f / height);
	x = (int)(x - (width - 800.0f / scale) * 0.5f);
	y = (int)(y - (height - 600.0f / scale) * 0.5f);
	x = (int)(x * scale);
	y = (int)(y * scale);
	return scale;
}

int SetupThing::adjustx(int x)
{
	int width = LHSys::GetScreen().width;
	int height = LHSys::GetScreen().height;
	if (width >= 800 && height >= 600)
		return x + (width - 800) / 2;
	float scale = max(850.0f / width, 650.0f / height);
	return (int)((width - 800.0f / scale) * 0.5f + x / scale);
}

int SetupThing::unadjustx(int x)
{
	int width = LHSys::GetScreen().width;
	int height = LHSys::GetScreen().height;
	if (width >= 800 && height >= 600)
		return x - (width - 800) / 2;
	float scale = max(850.0f / width, 650.0f / height);
	x = (int)(x - (width - 800.0f / scale) * 0.5f);
	return (int)(x * scale);
}

int SetupThing::adjusty(int y)
{
	int width = LHSys::GetScreen().width;
	int height = LHSys::GetScreen().height;
	if (width >= 800 && height >= 600)
		return y + (height - 600) / 2;
	float scale = max(850.0f / width, 650.0f / height);
	return (int)((height - 600.0f / scale) * 0.5f + y / scale);
}

int SetupThing::unadjusty(int y)
{
	int width = LHSys::GetScreen().width;
	int height = LHSys::GetScreen().height;
	if (width >= 800 && height >= 600)
		return y - (height - 600) / 2;
	float scale = max(850.0f / width, 650.0f / height);
	y = (int)(y - (height - 600.0f / scale) * 0.5f);
	return (int)(y * scale);
}

int SetupThing::unadjustsize(int size)
{
	int width = LHSys::GetScreen().width;
	int height = LHSys::GetScreen().height;
	if (width >= 800 && height >= 600)
		return size;
	float scale = max(850.0f / width, 650.0f / height);
	return (int)(size * scale);
}

float SetupThing::unadjustsize(float size)
{
	int width = LHSys::GetScreen().width;
	int height = LHSys::GetScreen().height;
	if (width >= 800 && height >= 600)
		return size;
	float scale = max(850.0f / width, 650.0f / height);
	return size * scale;
}

void SetupThing::Init()
{
	Font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
	TextureFormat format;
	format.Type = LH3DTexture::g_b_use_low_res ? 3 : 0;
	ButtonMaterial = LH3DRender::CreateMaterial(
		LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ,
		LH3DTexture::Create((void*)"data\\textures\\Front_end_buttons.raw", 0x41, 0xffffffff, &format));
	Initialised = true;
}

void SetupThing::Close()
{
	Initialised = false;
	Font = NULL;
	if (Mesh != NULL)
		Mesh->Release();
	Mesh = NULL;
	if (Object != NULL)
		Object->Release();
	Object = NULL;
	ButtonMaterial->texture->Release();
	ButtonMaterial->texture = NULL;
	ButtonMaterial = NULL;
}

void SetupThing::DrawLine(int x_start, int y_start, int x_end, int y_end, unsigned long color, bool32_t adjust,
                          float depth, float distance)
{
	if (adjust)
	{
		SetupThing::adjust(x_start, y_start);
		SetupThing::adjust(x_end, y_end);
	}
	color = (color & LH3D_COLOR_RGB_MASK) + (DrawAlpha << 24);
	QuadVertices[0].x = x_start + 0.5f;
	QuadVertices[0].y = y_start + 0.5f;
	QuadVertices[0].uv.x = 0.0f;
	QuadVertices[0].uv.y = 0.0f;
	QuadVertices[0].color = color;
	QuadVertices[1].x = x_end + 0.5f;
	QuadVertices[1].y = y_end + 0.5f;
	QuadVertices[1].uv.x = 0.0f;
	QuadVertices[1].uv.y = 0.0f;
	QuadVertices[1].color = color;
	if (LH3DLine::g_material_line != NULL)
		LH3DRender::SetMaterial(LH3DLine::g_material_line, 0);
	unsigned long zWriteEnable;
	unsigned long zFunc;
	LH3DRender::GetRenderState(D3DRENDERSTATE_ZWRITEENABLE, zWriteEnable);
	LH3DRender::GetRenderState(D3DRENDERSTATE_ZFUNC, zFunc);
	if (depth == 0.0f)
	{
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, false);
	}
	else
	{
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, false);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		float rhw = LH3DTech::g_info_transform.NearClip / distance;
		QuadVertices[0].z = QuadVertices[1].z = QuadVertices[2].z = QuadVertices[3].z = 1.0f - rhw;
		QuadVertices[0].rhw = QuadVertices[1].rhw = QuadVertices[2].rhw = QuadVertices[3].rhw = rhw;
	}
	uint16_t      indices[] = {0, 1};
	unsigned long lastPixel;
	LH3DRender::GetRenderState(D3DRENDERSTATE_LASTPIXEL, lastPixel);
	LH3DRender::SetRenderState(D3DRENDERSTATE_LASTPIXEL, true);
	DrawAndClip(D3DPT_LINELIST, D3DFVF_TLVERTEX, QuadVertices, ARRAY_SIZE(indices), indices, ARRAY_SIZE(indices));
	LH3DRender::SetRenderState(D3DRENDERSTATE_LASTPIXEL, lastPixel);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, zFunc);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, zWriteEnable);
	QuadVertices[0].z = QuadVertices[1].z = QuadVertices[2].z = QuadVertices[3].z = 0.0f;
	QuadVertices[0].rhw = QuadVertices[1].rhw = QuadVertices[2].rhw = QuadVertices[3].rhw = 1.0f;
}

void SetupThing::DrawBox(int x_min, int y_min, int x_max, int y_max, float u_min, float v_min, float u_max, float v_max,
                         LH3DMaterial* material, LH3DColor* color, bool32_t adjust, int clip_y_start, int clip_y_end,
                         bool depth_test, float distance)
{
	if (adjust)
	{
		SetupThing::adjust(x_min, y_min);
		SetupThing::adjust(x_max, y_max);
		clip_y_start = adjusty(clip_y_start);
		clip_y_end = adjusty(clip_y_end);
	}
	unsigned long vertexColor = LH3D_COLOR_WHITE;
	if (color != NULL)
		vertexColor = color->GetColor();
	vertexColor = (vertexColor & LH3D_COLOR_RGB_MASK) + (DrawAlpha << 24);
	if (y_min > y_max)
	{
		int temp = y_min;
		y_min = y_max;
		y_max = temp;
		float tempUV = v_min;
		v_min = v_max;
		v_max = tempUV;
		temp = x_min;
		x_min = y_max;
		x_max = temp;
		tempUV = u_min;
		u_min = v_max;
		u_max = tempUV;
	}
	if (x_min > x_max)
	{
		int temp = x_min;
		x_min = y_max;
		x_max = temp;
		float tempUV = u_min;
		u_min = v_max;
		u_max = tempUV;
	}
	if (y_min >= clip_y_end || y_max <= clip_y_start)
		return;
	float vPerPixel = 0.0f;
	if (y_max > y_min)
		vPerPixel = (v_max - v_min) / (y_max - y_min);
	if (y_min < clip_y_start)
	{
		v_min += (clip_y_start - y_min) * vPerPixel;
		y_min = clip_y_start;
	}
	if (y_max > clip_y_end)
	{
		v_max -= (y_max - clip_y_end) * vPerPixel;
		y_max = clip_y_end;
	}
	if (y_min > y_max)
		return;
	QuadVertices[0].x = x_min + 0.5f;
	QuadVertices[0].y = y_min + 0.5f;
	QuadVertices[0].uv.x = u_min;
	QuadVertices[0].uv.y = v_min;
	QuadVertices[0].color = vertexColor;
	QuadVertices[1].x = x_max + 0.5f;
	QuadVertices[1].y = y_min + 0.5f;
	QuadVertices[1].uv.x = u_max;
	QuadVertices[1].uv.y = v_min;
	QuadVertices[1].color = vertexColor;
	QuadVertices[2].x = x_max + 0.5f;
	QuadVertices[2].y = y_max + 0.5f;
	QuadVertices[2].uv.x = u_max;
	QuadVertices[2].uv.y = v_max;
	QuadVertices[2].color = vertexColor;
	QuadVertices[3].x = x_min + 0.5f;
	QuadVertices[3].y = y_max + 0.5f;
	QuadVertices[3].uv.x = u_min;
	QuadVertices[3].uv.y = v_max;
	QuadVertices[3].color = vertexColor;
	LH3DRender::SetMaterial(material, 0);
	unsigned long zWriteEnable;
	unsigned long zFunc;
	LH3DRender::GetRenderState(D3DRENDERSTATE_ZWRITEENABLE, zWriteEnable);
	LH3DRender::GetRenderState(D3DRENDERSTATE_ZFUNC, zFunc);
	if (!depth_test)
	{
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, false);
	}
	else
	{
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, false);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
		float rhw = LH3DTech::g_info_transform.NearClip / distance;
		QuadVertices[0].z = QuadVertices[1].z = QuadVertices[2].z = QuadVertices[3].z = 1.0f - rhw;
		QuadVertices[0].rhw = QuadVertices[1].rhw = QuadVertices[2].rhw = QuadVertices[3].rhw = rhw;
	}
	unsigned long lastPixel;
	LH3DRender::GetRenderState(D3DRENDERSTATE_LASTPIXEL, lastPixel);
	LH3DRender::SetRenderState(D3DRENDERSTATE_LASTPIXEL, false);
	DrawAndClip2D(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, QuadVertices, ARRAY_SIZE(QuadVertices), QuadIndices,
	              ARRAY_SIZE(QuadIndices));
	LH3DRender::SetRenderState(D3DRENDERSTATE_LASTPIXEL, lastPixel);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, zFunc);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, zWriteEnable);
	QuadVertices[0].z = QuadVertices[1].z = QuadVertices[2].z = QuadVertices[3].z = 0.0f;
	QuadVertices[0].rhw = QuadVertices[1].rhw = QuadVertices[2].rhw = QuadVertices[3].rhw = 1.0f;
}

void SetupThing::DrawQuad(int x_1, int y_1, int x_2, int y_2, int x_3, int y_3, int x_4, int y_4, unsigned long color_1,
                          unsigned long color_2, unsigned long color_3, unsigned long color_4, unsigned long use_alpha,
                          unsigned long adjust)
{
	if (adjust)
	{
		SetupThing::adjust(x_1, y_1);
		SetupThing::adjust(x_2, y_2);
		SetupThing::adjust(x_3, y_3);
		SetupThing::adjust(x_4, y_4);
	}
	if (use_alpha)
	{
		color_1 = (color_1 & LH3D_COLOR_RGB_MASK) + (DrawAlpha << 24);
		color_2 = (color_2 & LH3D_COLOR_RGB_MASK) + (DrawAlpha << 24);
		color_3 = (color_3 & LH3D_COLOR_RGB_MASK) + (DrawAlpha << 24);
		color_4 = (color_4 & LH3D_COLOR_RGB_MASK) + (DrawAlpha << 24);
	}
	else
	{
		unsigned long alpha = (RGBA_GETALPHA(color_1) * DrawAlpha) >> 8;
		color_1 = (color_1 & LH3D_COLOR_RGB_MASK) + (alpha << 24);
		alpha = (RGBA_GETALPHA(color_2) * DrawAlpha) >> 8;
		color_2 = (color_2 & LH3D_COLOR_RGB_MASK) + (alpha << 24);
		alpha = (RGBA_GETALPHA(color_3) * DrawAlpha) >> 8;
		color_3 = (color_3 & LH3D_COLOR_RGB_MASK) + (alpha << 24);
		alpha = (RGBA_GETALPHA(color_4) * DrawAlpha) >> 8;
		color_4 = (color_4 & LH3D_COLOR_RGB_MASK) + (alpha << 24);
	}
	QuadVertices[0].x = x_1 + 0.5f;
	QuadVertices[0].y = y_1 + 0.5f;
	QuadVertices[0].uv.x = 0.0f;
	QuadVertices[0].uv.y = 0.0f;
	QuadVertices[0].color = color_1;
	QuadVertices[1].x = x_2 + 0.5f;
	QuadVertices[1].y = y_2 + 0.5f;
	QuadVertices[1].uv.x = 0.0f;
	QuadVertices[1].uv.y = 0.0f;
	QuadVertices[1].color = color_2;
	QuadVertices[2].x = x_3 + 0.5f;
	QuadVertices[2].y = y_3 + 0.5f;
	QuadVertices[2].uv.x = 0.0f;
	QuadVertices[2].uv.y = 0.0f;
	QuadVertices[2].color = color_3;
	QuadVertices[3].x = x_4 + 0.5f;
	QuadVertices[3].y = y_4 + 0.5f;
	QuadVertices[3].uv.x = 0.0f;
	QuadVertices[3].uv.y = 0.0f;
	QuadVertices[3].color = color_4;
	LH3DRender::SetMaterial(LH3DLine::g_material_line, 0);
	unsigned long zWriteEnable;
	unsigned long zFunc;
	unsigned long lastPixel;
	LH3DRender::GetRenderState(D3DRENDERSTATE_ZWRITEENABLE, zWriteEnable);
	LH3DRender::GetRenderState(D3DRENDERSTATE_ZFUNC, zFunc);
	LH3DRender::GetRenderState(D3DRENDERSTATE_LASTPIXEL, lastPixel);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, false);
	LH3DRender::SetRenderState(D3DRENDERSTATE_LASTPIXEL, false);
	DrawAndClip2D(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, QuadVertices, ARRAY_SIZE(QuadVertices), QuadIndices,
	              ARRAY_SIZE(QuadIndices));
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, zWriteEnable);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, zFunc);
	LH3DRender::SetRenderState(D3DRENDERSTATE_LASTPIXEL, lastPixel);
}

void SetupThing::DrawBox(int x_min, int y_min, int x_max, int y_max, unsigned long color_1, unsigned long color_2,
                         unsigned long color_3, unsigned long color_4, unsigned long use_alpha, unsigned long adjust)
{
	if (x_min > x_max)
	{
		x_min ^= x_max;
		x_max ^= x_min;
		x_min ^= x_max;
		color_1 ^= color_2;
		color_2 ^= color_1;
		color_1 ^= color_2;
		color_3 ^= color_4;
		color_4 ^= color_3;
		color_3 ^= color_4;
	}
	if (y_min > y_max)
	{
		y_min ^= y_max;
		y_max ^= y_min;
		y_min ^= y_max;
		color_1 ^= color_3;
		color_3 ^= color_1;
		color_1 ^= color_3;
		color_2 ^= color_4;
		color_4 ^= color_2;
		color_2 ^= color_4;
	}
	DrawQuad(x_min, y_min, x_max, y_min, x_max, y_max, x_min, y_max, color_1, color_2, color_3, color_4, use_alpha,
	         adjust);
}

void SetupThing::DrawTab(int x_min, int y_min, int x_max, int y_max, bool32_t selected, bool32_t first_in_row,
                         bool32_t last_in_row, char16_t* label, int color, bool32_t opaque)
{
	int drawAlpha = DrawAlpha;
	if (!opaque)
		DrawAlpha = (int)(DrawAlpha * (5.0f / 6.0f));
	LH3DRender::SetTextureStageState(0, D3DTSS_MAGFILTER, D3DTFG_POINT);
	LH3DRender::SetTextureStageState(1, D3DTSS_MAGFILTER, D3DTFG_POINT);
	LH3DRender::SetTextureStageState(0, D3DTSS_MINFILTER, D3DTFN_POINT);
	LH3DRender::SetTextureStageState(1, D3DTSS_MINFILTER, D3DTFN_POINT);
	LH3DRender::SetTextureStageState(0, D3DTSS_MAGFILTER, D3DTFG_POINT);
	LH3DRender::SetTextureStageState(1, D3DTSS_MAGFILTER, D3DTFG_POINT);
	LH3DRender::SetTextureStageState(0, D3DTSS_MINFILTER, D3DTFN_POINT);
	LH3DRender::SetTextureStageState(1, D3DTSS_MINFILTER, D3DTFN_POINT);
	if (!selected)
	{
		DrawLine(x_min + (first_in_row ? 2 : 0), y_max + 2, x_max - (last_in_row ? 2 : 0), y_max + 2, 0x00ffffff, 1,
		         0.0f, 100.0f);
	}
	else
	{
		DrawLine(x_min + (first_in_row ? 2 : 0), y_max + 2, x_min + 10, y_max + 2, 0x00ffffff, 1, 0.0f, 100.0f);
		DrawLine(x_max - 10, y_max + 2, x_max - (last_in_row ? 2 : 0), y_max + 2, 0x00ffffff, 1, 0.0f, 100.0f);
	}
	float cornerTop = 0.0f;
	float cornerBottom = 6.0f / 256;
	float cornerVMin = cornerTop + (selected ? 32.0f / 256 : 40.0f / 256);
	float cornerVMax = cornerBottom + (selected ? 32.0f / 256 : 40.0f / 256);
	if (!selected)
	{
		DrawBox(x_min, y_max - 8, x_max, y_max, 54.0f / 256, 0.0f, 74.0f / 256, 6.0f / 256, ButtonMaterial, NULL, 1,
		        -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
		DrawAlpha = (int)(DrawAlpha * 0.5f);
	}
	if (label[0])
	{
		DrawBox(x_min + 8, y_min, x_max - 8, y_min + 8, 54.0f / 256, 0.0f, 74.0f / 256, 6.0f / 256, ButtonMaterial,
		        NULL, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
		DrawBox(x_min, y_min + 8, x_min + 8, y_max - 8, 48.0f / 256, 6.0f / 256, 54.0f / 256, 26.0f / 256,
		        ButtonMaterial, NULL, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
		DrawBox(x_max - 8, y_min + 8, x_max, y_max - 8, 74.0f / 256, 6.0f / 256, 80.0f / 256, 26.0f / 256,
		        ButtonMaterial, NULL, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
		DrawBox(x_min, y_min, x_min + 8, y_min + 8, 48.0f / 256, 0.0f, 54.0f / 256, 6.0f / 256, ButtonMaterial, NULL, 1,
		        -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
		DrawBox(x_max - 8, y_min, x_max, y_min + 8, 74.0f / 256, 0.0f, 80.0f / 256, 6.0f / 256, ButtonMaterial, NULL, 1,
		        -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
		DrawBox(x_min, y_max - 8, x_min + 8, y_max, 240.0f / 256, cornerVMin, 246.0f / 256, cornerVMax, ButtonMaterial,
		        NULL, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
		DrawBox(x_max - 8, y_max - 8, x_max, y_max, 250.0f / 256, cornerVMin, 256.0f / 256, cornerVMax, ButtonMaterial,
		        NULL, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
		DrawBevBox(x_min + 8, y_min + 8, x_max - 8, y_max, opaque ? 16 : 0, 16, 1, color);
		DrawLine(x_max - 10, y_max + 2, x_max - 10, y_max - 4, 0x00ffffff, 1, 0.0f, 100.0f);
		DrawLine(x_min + 10, y_max + 2, x_min + 10, y_max - 4, 0x00ffffff, 1, 0.0f, 100.0f);
	}
	LH3DRender::SetTextureStageState(0, D3DTSS_MAGFILTER, D3DTFG_LINEAR);
	LH3DRender::SetTextureStageState(1, D3DTSS_MAGFILTER, D3DTFG_LINEAR);
	LH3DRender::SetTextureStageState(0, D3DTSS_MINFILTER, D3DTFN_LINEAR);
	LH3DRender::SetTextureStageState(1, D3DTSS_MINFILTER, D3DTFN_LINEAR);
	DrawAlpha = drawAlpha;
}

void SetupThing::DrawBg(int x_min, int y_min, int x_max, int y_max, int color, int opaque, int top_border)
{
	int drawAlpha = DrawAlpha;
	if (!opaque)
		DrawAlpha = (int)(DrawAlpha * (5.0f / 6.0f));
	DrawBevBox(x_min, y_min, x_max, y_max, opaque ? 16 : 0, 16, top_border ? -1 : 2, color);
	x_min -= 8;
	y_min -= 8;
	x_max += 8;
	y_max += 8;
	DrawBox(x_min, y_min, x_min + 8, y_min + 8, 48.0f / 256, 0.0f, 54.0f / 256, 6.0f / 256, ButtonMaterial, NULL, 1,
	        -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
	DrawBox(x_max - 8, y_min, x_max, y_min + 8, 74.0f / 256, 0.0f, 80.0f / 256, 6.0f / 256, ButtonMaterial, NULL, 1,
	        -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
	DrawBox(x_min, y_max - 8, x_min + 8, y_max, 48.0f / 256, 26.0f / 256, 54.0f / 256, 32.0f / 256, ButtonMaterial,
	        NULL, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
	DrawBox(x_max - 8, y_max - 8, x_max, y_max, 74.0f / 256, 26.0f / 256, 80.0f / 256, 32.0f / 256, ButtonMaterial,
	        NULL, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
	if (top_border)
		DrawBox(x_min + 8, y_min, x_max - 8, y_min + 8, 54.0f / 256, 0.0f, 74.0f / 256, 6.0f / 256, ButtonMaterial,
		        NULL, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
	DrawBox(x_min + 8, y_max - 8, x_max - 8, y_max, 54.0f / 256, 26.0f / 256, 74.0f / 256, 32.0f / 256, ButtonMaterial,
	        NULL, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
	DrawBox(x_min, y_min + 8, x_min + 8, y_max - 8, 48.0f / 256, 6.0f / 256, 54.0f / 256, 26.0f / 256, ButtonMaterial,
	        NULL, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
	DrawBox(x_max - 8, y_min + 8, x_max, y_max - 8, 74.0f / 256, 6.0f / 256, 80.0f / 256, 26.0f / 256, ButtonMaterial,
	        NULL, 1, -SETUP_NO_CLIP, SETUP_NO_CLIP, false, 100.0f);
	DrawAlpha = drawAlpha;
}

// The bevel outline colours, indexed by the low two style bits.
const unsigned long BevelColours[4] = {0xffffffff, 0xffffffff, 0xffff8000, 0xff000000};

void SetupThing::DrawBevBox(int x_min, int y_min, int x_max, int y_max, int style, int outline_thickness,
                            int horizontal_outline, unsigned long color)
{
	float uStart;
	float vStart;
	float uEnd;
	float vEnd;
	if (outline_thickness != 16)
	{
		vStart = 0.0f;
		uStart = 0.0f;
		vEnd = 1.0f / outline_thickness;
		uEnd = vEnd;
	}
	else
	{
		vEnd = 1.0f / 32;
		vStart = 1.0f / 32;
		uEnd = 1.0f / 32;
		uStart = 1.0f / 32;
	}
	int column = style & 15;
	int row = style / 16;
	uStart += column * (1.0f / 16);
	uEnd += column * (1.0f / 16);
	vStart += row * (1.0f / 16);
	vEnd += row * (1.0f / 16);

	LH3DColor boxColor(color);
	LH3DRender::SetTextureStageState(0, D3DTSS_MAGFILTER, D3DTFG_POINT);
	LH3DRender::SetTextureStageState(1, D3DTSS_MAGFILTER, D3DTFG_POINT);
	LH3DRender::SetTextureStageState(0, D3DTSS_MINFILTER, D3DTFN_POINT);
	LH3DRender::SetTextureStageState(1, D3DTSS_MINFILTER, D3DTFN_POINT);
	DrawBox(x_min, y_min, x_max, y_max, uStart, vStart, uEnd, vEnd, ButtonMaterial, &boxColor, 1, -SETUP_NO_CLIP,
	        SETUP_NO_CLIP, false, 100.0f);
	if (outline_thickness == 16 ||
	    (outline_thickness == 8 && (style == 13 || style == 11 || style == 45 || style == 43)))
	{
		unsigned long tint = BevelColours[style & 3];
		if (outline_thickness == 8)
		{
			tint = BevelColours[0];
			if ((style & 0x1f) == 13)
				tint = BevelColours[2];
		}
		unsigned long lineColor = (GJUtils::ModulateColor(tint, boxColor.GetColor()) & LH3D_COLOR_RGB_MASK) ^
		                          (boxColor.GetColor() & 0xff000000);
		if (horizontal_outline & 1)
		{
			DrawLine(x_min + 2, y_min + 2, x_max - 2, y_min + 2, lineColor, 1, 0.0f, 100.0f);
		}
		else
		{
			DrawLine(x_min + 2, y_min + 2, x_min + 4, y_min + 2, lineColor, 1, 0.0f, 100.0f);
			DrawLine(x_max - 4, y_min + 2, x_max - 2, y_min + 2, lineColor, 1, 0.0f, 100.0f);
		}
		if (horizontal_outline & 2)
			DrawLine(x_max - 2, y_max - 2, x_min + 2, y_max - 2, lineColor, 1, 0.0f, 100.0f);
		DrawLine(x_min + 2, y_max - 2, x_min + 2, y_min + 2, lineColor, 1, 0.0f, 100.0f);
		DrawLine(x_max - 2, y_min + 2, x_max - 2, y_max - 2, lineColor, 1, 0.0f, 100.0f);
	}
	LH3DRender::SetTextureStageState(0, D3DTSS_MAGFILTER, D3DTFG_LINEAR);
	LH3DRender::SetTextureStageState(1, D3DTSS_MAGFILTER, D3DTFG_LINEAR);
	LH3DRender::SetTextureStageState(0, D3DTSS_MINFILTER, D3DTFN_LINEAR);
	LH3DRender::SetTextureStageState(1, D3DTSS_MINFILTER, D3DTFN_LINEAR);
}
