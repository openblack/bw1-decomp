// LHSystemSpecSummaryDialog.cpp : implementation file
//

#include "stdafx.h"
#include "LHDialogLib.h"
#include "LHSystemSpecSummaryDialog.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
// __FILE__ of the original build.
static char THIS_FILE[] = "C:\\Dev\\Libs\\LIONHEAD\\LHDialogLib\\VERSION 1.0\\LHSystemSpecSummaryDialog.cpp";
#endif

CLHSystemSpecSummaryDialog::CLHSystemSpecSummaryDialog(CWnd* parent /*=NULL*/)
	: CDialog(CLHSystemSpecSummaryDialog::IDD, parent)
{
	//{{AFX_DATA_INIT(CLHSystemSpecSummaryDialog)
	Text = _T("");
	//}}AFX_DATA_INIT
}

void CLHSystemSpecSummaryDialog::DoDataExchange(CDataExchange* exchange)
{
	CDialog::DoDataExchange(exchange);
	//{{AFX_DATA_MAP(CLHSystemSpecSummaryDialog)
	DDX_Control(exchange, IDC_EDIT, EditBox);
	DDX_Text(exchange, IDC_EDIT, Text);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CLHSystemSpecSummaryDialog, CDialog)
//{{AFX_MSG_MAP(CLHSystemSpecSummaryDialog)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

BOOL CLHSystemSpecSummaryDialog::OnInitDialog()
{
	CDialog::OnInitDialog();

	EditBox.SetFocus();

	return TRUE;
}
