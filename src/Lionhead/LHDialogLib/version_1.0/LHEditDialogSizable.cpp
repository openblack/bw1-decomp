// LHEditDialogSizable.cpp : implementation file
//

#include "stdafx.h"
#include "LHDialogLib.h"
#include "LHEditDialogSizable.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
// __FILE__ of the original build.
static char THIS_FILE[] = "C:\\Dev\\Libs\\LIONHEAD\\LHDialogLib\\VERSION 1.0\\LHEditDialogSizable.cpp";
#endif

CLHEditDialogSizable::CLHEditDialogSizable(CWnd* parent /*=NULL*/) : CDialog(CLHEditDialogSizable::IDD, parent)
{
	//{{AFX_DATA_INIT(CLHEditDialogSizable)
	EditText = _T("");
	//}}AFX_DATA_INIT
}

void CLHEditDialogSizable::DoDataExchange(CDataExchange* exchange)
{
	CDialog::DoDataExchange(exchange);
	//{{AFX_DATA_MAP(CLHEditDialogSizable)
	DDX_Control(exchange, IDC_EDIT, EditBox);
	DDX_Text(exchange, IDC_EDIT, EditText);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CLHEditDialogSizable, CDialog)
//{{AFX_MSG_MAP(CLHEditDialogSizable)
ON_WM_CLOSE()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

// CLHEditDialogSizable message handlers

BOOL CLHEditDialogSizable::OnInitDialog()
{
	CDialog::OnInitDialog();

	CPoint topLeft = Rect.TopLeft();
	CPoint bottomRight = Rect.BottomRight();
	CRect  client;

	SetWindowText(Caption);
	EditBox.SetWindowText(Text);
	EditBox.SetLimitText(MaxLength);

	// Move the dialog to Rect, then stretch the edit control over the client area.
	SetWindowPos(NULL, topLeft.x, topLeft.y, Rect.Width(), Rect.Height(), SWP_NOZORDER);
	GetClientRect(&client);
	EditBox.SetWindowPos(NULL, client.TopLeft().x, client.TopLeft().y, client.Width(), client.Height(), SWP_NOZORDER);
	UpdateData(TRUE);

	return TRUE;
}

void CLHEditDialogSizable::OnClose()
{
	UpdateData(TRUE);
	CDialog::OnClose();
}

BOOL CLHEditDialogSizable::PreCreateWindow(CREATESTRUCT& cs)
{
	cs.style |= ES_MULTILINE | ES_WANTRETURN;
	return CDialog::PreCreateWindow(cs);
}
