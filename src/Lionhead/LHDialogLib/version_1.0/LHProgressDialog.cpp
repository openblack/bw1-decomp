// LHProgressDialog.cpp : implementation file
//

#include "stdafx.h"
#include "LHDialogLib.h"
#include "LHProgressDialog.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
// __FILE__ of the original build.
static char THIS_FILE[] = "C:\\Dev\\Libs\\LIONHEAD\\LHDialogLib\\VERSION 1.0\\LHProgressDialog.cpp";
#endif

CLHProgressDialog::CLHProgressDialog(CWnd* parent /*=NULL*/) : CDialog(CLHProgressDialog::IDD, parent)
{
	//{{AFX_DATA_INIT(CLHProgressDialog)
	// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}

void CLHProgressDialog::DoDataExchange(CDataExchange* exchange)
{
	CDialog::DoDataExchange(exchange);
	//{{AFX_DATA_MAP(CLHProgressDialog)
	DDX_Control(exchange, IDC_PROGRESS, ProgressBar);
	DDX_Control(exchange, IDC_PROMPT, PromptStatic);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CLHProgressDialog, CDialog)
//{{AFX_MSG_MAP(CLHProgressDialog)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

BOOL CLHProgressDialog::OnInitDialog()
{
	CDialog::OnInitDialog();

	SetWindowText(Title);
	PromptStatic.SetWindowText(Prompt);
	ProgressBar.SetRange(0, 100);

	return TRUE;
}
