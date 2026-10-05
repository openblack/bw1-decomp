// LHSystemSpecDialog.cpp : implementation file
//

#include "stdafx.h"
#include "LHDialogLib.h"
#include "LHSystemSpecDialog.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
// __FILE__ of the original build.
static char THIS_FILE[] = "C:\\Dev\\Libs\\LIONHEAD\\LHDialogLib\\VERSION 1.0\\LHSystemSpecDialog.cpp";
#endif

CLHSystemSpecDialog::CLHSystemSpecDialog(CWnd* parent /*=NULL*/) : CDialog(CLHSystemSpecDialog::IDD, parent)
{
	//{{AFX_DATA_INIT(CLHSystemSpecDialog)
	Memory = _T("");
	OS = _T("");
	Processor = _T("");
	Sound = _T("");
	Video = _T("");
	ScreenHeight = 0;
	EnableNetwork = FALSE;
	TestReference = _T("");
	Name = _T("");
	ScreenWidth = 0;
	Fullscreen = FALSE;
	ScreenDepth = 0;
	VideoDevice = 0;
	UseSoundHardware = FALSE;
	//}}AFX_DATA_INIT
}

void CLHSystemSpecDialog::DoDataExchange(CDataExchange* exchange)
{
	CDialog::DoDataExchange(exchange);
	//{{AFX_DATA_MAP(CLHSystemSpecDialog)
	DDX_Text(exchange, IDC_MEMORY, Memory);
	DDV_MaxChars(exchange, Memory, 64);
	DDX_Text(exchange, IDC_OS, OS);
	DDV_MaxChars(exchange, OS, 64);
	DDX_Text(exchange, IDC_PROCESSOR, Processor);
	DDV_MaxChars(exchange, Processor, 64);
	DDX_Text(exchange, IDC_SOUND, Sound);
	DDV_MaxChars(exchange, Sound, 64);
	DDX_Text(exchange, IDC_VIDEO, Video);
	DDV_MaxChars(exchange, Video, 64);
	DDX_Text(exchange, IDC_SCREEN_HEIGHT, ScreenHeight);
	DDX_Check(exchange, IDC_ENABLE_NETWORK, EnableNetwork);
	DDX_Text(exchange, IDC_TEST_REFERENCE, TestReference);
	DDX_Text(exchange, IDC_NAME, Name);
	DDX_Text(exchange, IDC_SCREEN_WIDTH, ScreenWidth);
	DDX_Check(exchange, IDC_FULLSCREEN, Fullscreen);
	DDX_Text(exchange, IDC_SCREEN_DEPTH, ScreenDepth);
	DDX_Text(exchange, IDC_VIDEO_DEVICE, VideoDevice);
	DDX_Check(exchange, IDC_USE_SOUND_HARDWARE, UseSoundHardware);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CLHSystemSpecDialog, CDialog)
//{{AFX_MSG_MAP(CLHSystemSpecDialog)
ON_WM_DESTROY()
ON_WM_CLOSE()
ON_BN_CLICKED(IDC_INTERACTIVE_MODE, OnInteractiveMode)
ON_BN_CLICKED(IDCANCEL, OnSelfTest)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

void CLHSystemSpecDialog::OnDestroy()
{
	CDialog::OnDestroy();
}

void CLHSystemSpecDialog::OnOK()
{
	UpdateData(TRUE);
	if (Memory.IsEmpty() || OS.IsEmpty() || Processor.IsEmpty() || Sound.IsEmpty() || Video.IsEmpty() || Name.IsEmpty())
	{
		return;
	}
	CDialog::OnOK();
}

void CLHSystemSpecDialog::OnClose()
{
	CDialog::OnClose();
}

BOOL CLHSystemSpecDialog::OnInitDialog()
{
	CDialog::OnInitDialog();

	return TRUE;
}

void CLHSystemSpecDialog::OnInteractiveMode()
{
	UpdateData(TRUE);
	if (Memory.IsEmpty() || OS.IsEmpty() || Processor.IsEmpty() || Sound.IsEmpty() || Video.IsEmpty() || Name.IsEmpty())
	{
		MessageBox("The OS, Processor, Memory, Sound, Video, Sound & Your Name fields must be filled in.");
	}
	else
	{
		Result = 1;
		CDialog::OnOK();
	}
}

void CLHSystemSpecDialog::OnSelfTest()
{
	UpdateData(TRUE);
	if (Memory.IsEmpty() || OS.IsEmpty() || Processor.IsEmpty() || Sound.IsEmpty() || Video.IsEmpty() || Name.IsEmpty())
	{
		MessageBox("The OS, Processor, Memory, Sound, Video, Sound & Your Name fields must be filled in.");
	}
	else
	{
		Result = 0;
		CDialog::OnOK();
	}
}
