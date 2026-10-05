#include "stdafx.h"
#include "LHDialogLib.h"
#include "LHCameraParamsDialog.h"
#include "LHEditDialog.h"
#include "LHEditDialogSizable.h"
#include "LHProgressDialog.h"
#include "LHSystemSpecDialog.h"
#include "LHSystemSpecSummaryDialog.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = "C:\\Dev\\Libs\\LIONHEAD\\LHDialogLib\\VERSION 1.0\\LHDialogLib.cpp";
#endif

enum DIALOG_TYPE
{
	DIALOG_TYPE_NONE = 0,
	DIALOG_TYPE_PROGRESS = 1,
	DIALOG_TYPE_CAMERA_PARAMS = 2,
};

// BW1W120 1001bac8
static CLHProgressDialog ProgressDialog;
// BW1W120 1001ba58
static CLHCameraParamsDialog CameraParamsDialog;
// BW1W120 1001bbb0
static int DialogType;

// BW1W120 10001c10
UINT DialogThreadProc(LPVOID param)
{
	switch (DialogType)
	{
	case DIALOG_TYPE_PROGRESS:
		ProgressDialog.DoModal();
		break;
	case DIALOG_TYPE_CAMERA_PARAMS:
		CameraParamsDialog.DoModal();
		break;
	}
	return 1;
}

int LHEditBox(const char* caption, const char* prompt, const char* text, int max_length, char* result)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());
	CLHEditDialog dialog;

	dialog.SetCaption(caption);
	dialog.SetPrompt(prompt);
	dialog.SetText(text);
	dialog.SetMaxLength(max_length);
	if (dialog.DoModal() == IDOK)
	{
		strcpy(result, dialog.EditText);
		return TRUE;
	}
	return FALSE;
}

int LHEditBox(const char* caption, unsigned long x, unsigned long y, unsigned long width, unsigned long height,
              const char* text, int max_length, char* result)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());
	CRect                rect(x, y, x + width, y + height);
	CLHEditDialogSizable dialog;

	dialog.SetRect(rect);
	dialog.SetCaption(caption);
	dialog.SetText(text);
	dialog.SetMaxLength(max_length);
	dialog.DoModal();
	strcpy(result, dialog.EditText);
	return TRUE;
}

int LHProgressBox(const char* title, const char* prompt)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (ProgressDialog.GetSafeHwnd())
	{
		return FALSE;
	}
	ProgressDialog.SetTitle(title);
	ProgressDialog.SetPrompt(prompt);
	DialogType = DIALOG_TYPE_PROGRESS;
	AfxBeginThread(DialogThreadProc, NULL);
	return TRUE;
}

int LHProgressBoxPosition(int position)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (!ProgressDialog.GetSafeHwnd())
	{
		return FALSE;
	}
	ProgressDialog.SetPosition(position);
	return TRUE;
}

int LHProgressBoxPrompt(const char* prompt)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (!ProgressDialog.GetSafeHwnd())
	{
		return FALSE;
	}
	ProgressDialog.SetPromptText(prompt);
	return TRUE;
}

int LHProgressBoxDestroy()
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	ProgressDialog.EndDialog(0);
	return TRUE;
}

int LHSystemSpecBox(char* os, char* processor, char* memory, char* video, char* sound, char* name, char* test_reference,
                    unsigned long* screen_width, unsigned long* screen_height, unsigned long* screen_depth,
                    int* fullscreen, int* enable_network, unsigned long* video_device, int* use_sound_hardware)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());
	CLHSystemSpecDialog dialog;

	dialog.OS.Format("%s", os);
	dialog.Processor.Format("%s", processor);
	dialog.Memory.Format("%s", memory);
	dialog.Video.Format("%s", video);
	dialog.Sound.Format("%s", sound);
	dialog.ScreenHeight = *screen_height;
	dialog.ScreenWidth = *screen_width;
	dialog.ScreenDepth = *screen_depth;
	dialog.EnableNetwork = *enable_network;
	dialog.TestReference.Format("%s", test_reference);
	dialog.Name.Format("%s", name);
	dialog.Fullscreen = *fullscreen;
	dialog.VideoDevice = *video_device;
	dialog.UseSoundHardware = *use_sound_hardware;

	dialog.DoModal();

	// The CStrings go through the varargs bitwise, as their buffer pointers.
	sprintf(os, "%s", dialog.OS);
	sprintf(processor, "%s", dialog.Processor);
	sprintf(memory, "%s", dialog.Memory);
	sprintf(video, "%s", dialog.Video);
	sprintf(sound, "%s", dialog.Sound);
	*screen_height = dialog.ScreenHeight;
	*enable_network = dialog.EnableNetwork;
	*screen_width = dialog.ScreenWidth;
	*screen_depth = dialog.ScreenDepth;
	sprintf(test_reference, "%s", dialog.TestReference);
	sprintf(name, "%s", dialog.Name);
	*fullscreen = dialog.Fullscreen;
	*video_device = dialog.VideoDevice;
	*use_sound_hardware = dialog.UseSoundHardware;
	return dialog.Result;
}

void LHSystemSpecSummaryBox(char* text)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());
	CLHSystemSpecSummaryDialog dialog;

	dialog.DoModal();
	strcpy(text, dialog.Text);
}

void LHCameraParamsStart()
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (CameraParamsDialog.GetSafeHwnd())
	{
		return;
	}
	DialogType = DIALOG_TYPE_CAMERA_PARAMS;
	AfxBeginThread(DialogThreadProc, NULL);
}

void LHCameraParamsInit(int index, char* name, int value)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (!CameraParamsDialog.GetSafeHwnd())
	{
		return;
	}
	CameraParamsDialog.InitParam(index, name, value);
}

int LHCameraParamsGetValue(int index)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (!CameraParamsDialog.GetSafeHwnd())
	{
		return 0;
	}
	return CameraParamsDialog.GetValue(index);
}

int LHCameraParamsSavePressed()
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (!CameraParamsDialog.GetSafeHwnd())
	{
		return FALSE;
	}
	if (CameraParamsDialog.SavePressed)
	{
		CameraParamsDialog.SavePressed = FALSE;
		return TRUE;
	}
	return FALSE;
}

int LHCameraParamsLoadPressed()
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (!CameraParamsDialog.GetSafeHwnd())
	{
		return FALSE;
	}
	if (CameraParamsDialog.LoadPressed)
	{
		CameraParamsDialog.LoadPressed = FALSE;
		return TRUE;
	}
	return FALSE;
}

int LHCameraParamsResetPressed()
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (!CameraParamsDialog.GetSafeHwnd())
	{
		return FALSE;
	}
	if (CameraParamsDialog.ResetPressed)
	{
		CameraParamsDialog.ResetPressed = FALSE;
		return TRUE;
	}
	return FALSE;
}

void LHCameraParamsStop()
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (!CameraParamsDialog.GetSafeHwnd())
	{
		return;
	}
	CameraParamsDialog.EndDialog(0);
}

// CLHDialogLibApp

BEGIN_MESSAGE_MAP(CLHDialogLibApp, CWinApp)
//{{AFX_MSG_MAP(CLHDialogLibApp)
// NOTE - the ClassWizard will add and remove mapping macros here.
//    DO NOT EDIT what you see in these blocks of generated code!
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

// CLHDialogLibApp construction

CLHDialogLibApp::CLHDialogLibApp() {}

// The one and only CLHDialogLibApp object

// BW1W120 1001bc00
CLHDialogLibApp theApp;
