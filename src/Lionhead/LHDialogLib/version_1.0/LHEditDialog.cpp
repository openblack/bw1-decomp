// LHEditDialog.cpp : implementation file
//

#include "stdafx.h"
#include "LHDialogLib.h"
#include "LHEditDialog.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
// __FILE__ of the original build.
static char THIS_FILE[] = "C:\\Dev\\Libs\\LIONHEAD\\LHDialogLib\\VERSION 1.0\\LHEditDialog.cpp";
#endif

// CLHEditDialog dialog

CLHEditDialog::CLHEditDialog(CWnd* parent /*=NULL*/) : CDialog(CLHEditDialog::IDD, parent)
{
	//{{AFX_DATA_INIT(CLHEditDialog)
	EditText = _T("");
	//}}AFX_DATA_INIT
}

void CLHEditDialog::DoDataExchange(CDataExchange* exchange)
{
	CDialog::DoDataExchange(exchange);
	//{{AFX_DATA_MAP(CLHEditDialog)
	DDX_Control(exchange, IDC_PROMPT, PromptStatic);
	DDX_Control(exchange, IDC_EDIT, EditBox);
	DDX_Text(exchange, IDC_EDIT, EditText);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CLHEditDialog, CDialog)
//{{AFX_MSG_MAP(CLHEditDialog)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

// CLHEditDialog message handlers

BOOL CLHEditDialog::OnInitDialog()
{
	CDialog::OnInitDialog();

	SetWindowText(Caption);
	PromptStatic.SetWindowText(Prompt);
	EditBox.SetWindowText(Text);
	EditBox.SetLimitText(MaxLength);
	UpdateData(TRUE);

	return TRUE;
}
