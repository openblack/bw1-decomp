// LHCameraParamsDialog.cpp : implementation file
//

#include "stdafx.h"
#include "LHDialogLib.h"
#include "LHCameraParamsDialog.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = "C:\\Dev\\Libs\\LIONHEAD\\LHDialogLib\\VERSION 1.0\\LHCameraParamsDialog.cpp";
#endif

// CLHCameraParamsDialog dialog

CLHCameraParamsDialog::CLHCameraParamsDialog(CWnd* parent /*=NULL*/) : CDialog(CLHCameraParamsDialog::IDD, parent)
{
	//{{AFX_DATA_INIT(CLHCameraParamsDialog)
	// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	SavePressed = FALSE;
	LoadPressed = FALSE;
	ResetPressed = FALSE;
}

void CLHCameraParamsDialog::DoDataExchange(CDataExchange* exchange)
{
	// There is no CDialog::DoDataExchange call.
	//{{AFX_DATA_MAP(CLHCameraParamsDialog)
	// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CLHCameraParamsDialog, CDialog)
//{{AFX_MSG_MAP(CLHCameraParamsDialog)
ON_BN_CLICKED(IDC_SAVE, OnSave)
ON_BN_CLICKED(IDC_LOAD, OnLoad)
ON_BN_CLICKED(IDC_RESET, OnReset)
ON_WM_CLOSE()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

void CLHCameraParamsDialog::InitParam(int index, char* name, int value)
{
	CSliderCtrl* slider;
	CWnd*        label;

	label = GetDlgItem(IDC_PARAM_LABEL_0 + index);
	slider = (CSliderCtrl*)GetDlgItem(IDC_PARAM_SLIDER_0 + index);

	ASSERT(slider);
	ASSERT(label);

	label->SetWindowText(name);
	label->Invalidate();
	slider->SetRange(0, 100);
	slider->SetPageSize(1);
	slider->SetLineSize(1);

	RECT rect;
	slider->GetWindowRect(&rect);
	slider->SetWindowPos(NULL, 0, 0, rect.right - rect.left, 20, SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOOWNERZORDER);
	slider->SetPos(value);
}

int CLHCameraParamsDialog::GetValue(int index)
{
	CSliderCtrl* slider;

	slider = (CSliderCtrl*)GetDlgItem(IDC_PARAM_SLIDER_0 + index);

	ASSERT(slider);

	return slider->GetPos();
}

void CLHCameraParamsDialog::OnSave()
{
	SavePressed = TRUE;
}

void CLHCameraParamsDialog::OnLoad()
{
	LoadPressed = TRUE;
}

void CLHCameraParamsDialog::OnReset()
{
	ResetPressed = TRUE;
}

void CLHCameraParamsDialog::OnClose() {}

void CLHCameraParamsDialog::OnOK() {}

void CLHCameraParamsDialog::OnCancel() {}
