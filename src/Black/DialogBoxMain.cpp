#include "DialogBoxBase.h"

#include <string.h> /* For memset */

#include <Lionhead/LHLib/ver5.0/LHMouse.h>  /* For LH_MOUSE_IMAGE_TYPE_HIDDEN */
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys */
#include <Lionhead/LHLib/ver5.0/LHWin.h>    /* For NEW */

#include "Game.h"      /* For GGame */
#include "Interface.h" /* For GInterface */
#include "alexmfc.h"   /* For SetupBox */

#ifdef VERSION_BW1W100
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - 4)
#endif

uint32_t       DialogBoxBase::BoxStackCount;
DialogBoxBase* DialogBoxBase::LastShown;
DialogBoxBase* DialogBoxBase::First;
SetupBox*      DialogBoxBase::BoxStack[16];

// BW1W120 005133a0 BW1M119 012b5830
DialogBoxBase::DialogBoxBase()
{
	setup_box = 0;
	next = First;
	First = this;
}

// BW1W120 005133c0 BW1M119 012b5760
DialogBoxBase::~DialogBoxBase()
{
	if (First == this)
	{
		First = next;
		return;
	}
	for (DialogBoxBase* dialog = First; dialog != 0; dialog = dialog->next)
	{
		if (dialog->next == this)
		{
			dialog->next = next;
			return;
		}
	}
}

// BW1W120 00513400 BW1M119 012b55a0
void DialogBoxBase::Init(uint32_t width, uint32_t height,
                         void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	setup_box = NEW(42) SetupBox(width, height);
	SetupBox::CurrentInitBox = setup_box;
	setup_box->Callback = callback;
}

// BW1W120 inlined BW1M119 012b5520
inline void SetupBox::DeleteAll()
{
	while (WidgetList != NULL)
		delete WidgetList;
	WidgetList = HoldWidgetList;
	while (WidgetList != NULL)
		delete WidgetList;
}

// BW1W120 00513590 BW1M119 012b5480
void DialogBoxBase::Destroy()
{
	if (setup_box != NULL)
		delete setup_box;
}

// BW1W120 005135f0 BW1M119 012b53c0
void DialogBoxBase::Show()
{
	if (BoxStackCount < sizeof(BoxStack) / sizeof(BoxStack[0]) - 1 && SetupBox::GetCurrentActiveBox() != setup_box)
	{
		BoxStack[BoxStackCount++] = SetupBox::GetCurrentActiveBox();
		SetupBox::SetCurrentActiveBox(setup_box);
		BoxStack[BoxStackCount] = setup_box;
	}
}

// BW1W120 00513640 BW1M119 012b5310
void DialogBoxBase::Hide()
{
	if (LastShown != NULL)
		LastShown->CloseNotification();
	if (BoxStackCount > 0)
		SetupBox::SetCurrentActiveBox(BoxStack[--BoxStackCount]);
	else
		SetupBox::SetCurrentActiveBox(NULL);
}

// BW1W120 00513680 BW1M119 012b5290
void DialogBoxBase::UpdateLastShown(SetupBox* box)
{
	LastShown = NULL;
	for (DialogBoxBase* dialog = First; dialog != NULL; dialog = dialog->next)
	{
		if (dialog->setup_box == box)
		{
			LastShown = dialog;
			return;
		}
	}
}

// BW1W120 005136b0 BW1M119 012b5210
void DialogBoxBase::RestoreSetupBox()
{
	if (BoxStackCount > 0)
		SetupBox::SetCurrentActiveBox(BoxStack[BoxStackCount]);
	else
		SetupBox::SetCurrentActiveBox(NULL);
}

// BW1W120 005136e0 BW1M119 012b50d0
void DialogBoxBase::HideAll()
{
	memset(BoxStack, 0, sizeof(BoxStack));
	BoxStackCount = 0;
	SetupBox::SetCurrentActiveBox(NULL);
	if (GGame::g_game->MyPlayer() != NULL)
	{
		GInterface* game_interface = GGame::g_game->MyInterface();
		if (game_interface != NULL && GGame::g_game->Initialised)
			game_interface->SetActive(true);
	}
	if (GGame::g_game->IsInCitadel())
		LHSys::TheSystem.mouse.SetCursor(NULL, LH_MOUSE_IMAGE_TYPE_HIDDEN, 0);
	LastShown = NULL;
}

// BW1W120 00513770 BW1M119 012b5060
bool32_t DialogBoxBase::IsVisible()
{
	return SetupBox::GetCurrentActiveBox() == setup_box;
}
