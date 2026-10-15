#include <windows.h>
#include <stdio.h>
#include <string.h>

#include "LHAssert.h"
#include "LHDebugStack.h"
#include "LHLogProps.h"
#include "LHLogger.h"
#include "LHLogMacros.h"

#define FILEPATH "LHAssert.cpp"

#define IDD_ASSERT_DIALOG         101
#define IDB_PRIORITY_HIGH         107
#define IDB_PRIORITY_MEDIUM       108
#define IDB_PRIORITY_LOW          109
#define IDC_CODE                  1000
#define IDC_IGNORE_AND_CONTINUE   1001
#define IDC_EXIT_PROGRAM          1002
#define IDC_DEBUG                 1003
#define IDC_TEXT                  1004
#define IDC_FILE                  1005
#define IDC_LINE                  1006
#define IDC_IGNORE_FILE           1007
#define IDC_CONTINUE              1008
#define IDC_IGNORE_THIS_ASSERTION 1011
#define IDC_IGNORE_LIST           1012
#define IDC_IGNORE_NON_LIBRARY    1013
#define IDC_IGNORE_LIBRARY        1014
#define IDC_IGNORE_ALL            1015
#define IDC_LOG_PROPERTIES        1021
#define IDC_CALL_STACK            1043
#define IDC_DETAILS               1044
#define IDC_PRIORITY              1045
#define IDC_IGNORE_ALL_GREEN      1046

#define LH_ASSERT_FILE_SIZE    50
#define LH_ASSERT_TEXT_SIZE    300
#define LH_ASSERT_DETAILS_SIZE 502

enum LH_ASSERT_ERROR
{
	LH_ASSERT_ERROR_DELETE_ASSERTION = 0,
	LH_ASSERT_ERROR_DIALOG_BOX_PARAM = 1,
};

struct LHAssertInfo
{
	char          File[LH_ASSERT_FILE_SIZE]; /* 0x0 */
	char          Text[LH_ASSERT_TEXT_SIZE]; /* 0x32 */
	unsigned long Line;                      /* 0x160 */
	char          Code[LH_ASSERT_TEXT_SIZE]; /* 0x164 */
	LHAssertInfo* Next;                      /* 0x290 */
	unsigned long Bitmap;                    /* 0x294 */
	HINSTANCE     Instance;                  /* 0x298 */
};

// BW1W120 10001220 BW1M119 null
static bool32_t IsAfter(LHAssertInfo* info, LHAssertInfo* node);
// BW1W120 10001290 BW1M119 null
static void AddAssertion(LHAssertInfo* info);
// BW1W120 100012f0 BW1M119 null
static void DeleteAssertion(LHAssertInfo* info);
// BW1W120 10001390 BW1M119 null
static void DeleteAssertion(short index);
// BW1W120 10001430 BW1M119 null
static LHAssertInfo* GetAssertion(short index);
// BW1W120 100014a0 BW1M119 null
static bool32_t IsAssertionIgnored(LHAssertInfo* info);
// BW1W120 10001560 BW1M119 null
static void FillIgnoreList(HWND dialog);
// BW1W120 100015e0 BW1M119 null
static BOOL CALLBACK AssertDialogProc(HWND dialog, UINT message, WPARAM wparam, LPARAM lparam);

char* LHAssertLogFilename = "C:\\lhassert.log";

static LHErrorCode LHAssertErrors[] = {
	{LH_ASSERT_ERROR_DELETE_ASSERTION, "DeleteAssertion failed"},
	{LH_ASSERT_ERROR_DIALOG_BOX_PARAM, "DialogBoxParam : Did you link with the resource file ?"},
	{0, NULL},
};
static LHErrorCode* LHAssertErrorCodes = LHAssertErrors;

static bool32_t     Forced;
int                 LHAssertIgnoreAllAsserts;
static bool32_t     IgnoreNonLibraryAsserts;
static bool32_t     IgnoreLibraryAsserts;
static bool32_t     ExitPressed;
static bool32_t     DebugPressed;
static LHDebugStack AssertDebugStack;

LHAssertCustomDrawFunc LHAssertCustomDraw;
LHAssertCallbackFunc   LHAssertAfterExitCallback;
LHAssertCallbackFunc   LHAssertAfterForceCallback;
LHAssertCallbackFunc   LHAssertBeforeForceCallback;

bool                    InAssertDialog;
static LHAssertInfo*    IgnoreList;
static bool             IgnoreAllGreen;
static HBITMAP          PriorityBitmap;
static LHAssertInfo*    FileIgnoreInfo;
static uint16_t         DialogY;
static uint16_t         DialogX;
static LHAssertInfo*    AssertIgnoreInfo;
static LHAssertInfo*    CurrentAssertion;
static CRITICAL_SECTION AssertLock;
static bool32_t         AssertLockInitialised;

static bool32_t IsAfter(LHAssertInfo* info, LHAssertInfo* node)
{
	int result = strcmp(info->File, node->File);
	if (result > 0)
	{
		return true;
	}
	if (result == 0)
	{
		return info->Line > node->Line;
	}
	return false;
}

static void AddAssertion(LHAssertInfo* info)
{
	LHAssertInfo* node = IgnoreList;
	LHAssertInfo* previous = NULL;
	while (node != NULL && IsAfter(info, node))
	{
		previous = node;
		node = node->Next;
	}

	if (node != NULL)
	{
		info->Next = node;
	}
	else
	{
		info->Next = NULL;
	}

	if (previous != NULL)
	{
		previous->Next = info;
	}
	else
	{
		IgnoreList = info;
	}
}

static void DeleteAssertion(LHAssertInfo* info)
{
	LHAssertInfo* node = IgnoreList;
	LHAssertInfo* previous = NULL;
	while (node != NULL && node != info)
	{
		previous = node;
		node = node->Next;
	}

	if (node == NULL)
	{
		if (LHLogger::LogErrorCodeS(LHLogLibraryName, FILEPATH, 102, LHAssertErrorCodes,
		                            LH_ASSERT_ERROR_DELETE_ASSERTION))
		{
			LHLogger::RawLogS(NULL);
		}
		return;
	}

	if (previous != NULL)
	{
		previous->Next = node->Next;
	}
	else
	{
		IgnoreList = node->Next;
	}
	delete info;
}

static void DeleteAssertion(short index)
{
	LHAssertInfo* node = IgnoreList;
	short         i = 0;
	LHAssertInfo* previous = NULL;
	while (node != NULL && i != index)
	{
		previous = node;
		node = node->Next;
		i++;
	}

	if (node == NULL)
	{
		if (LHLogger::LogErrorCodeS(LHLogLibraryName, FILEPATH, 121, LHAssertErrorCodes,
		                            LH_ASSERT_ERROR_DELETE_ASSERTION))
		{
			LHLogger::RawLogS(NULL);
		}
		return;
	}

	if (previous != NULL)
	{
		previous->Next = node->Next;
	}
	else
	{
		IgnoreList = node->Next;
	}
	delete node;
}

static LHAssertInfo* GetAssertion(short index)
{
	LHAssertInfo* node = IgnoreList;
	short         i = 0;
	while (node != NULL && i != index)
	{
		node = node->Next;
		i++;
	}

	if (node == NULL)
	{
		if (LHLogger::LogErrorCodeS(LHLogLibraryName, FILEPATH, 139, LHAssertErrorCodes,
		                            LH_ASSERT_ERROR_DELETE_ASSERTION))
		{
			LHLogger::RawLogS(NULL);
		}
		return NULL;
	}
	return node;
}

static bool32_t IsAssertionIgnored(LHAssertInfo* info)
{
	if (LHAssertIgnoreAllAsserts)
	{
		return true;
	}
	if (IgnoreLibraryAsserts && info->File[0] == 'L' && info->File[1] == 'H')
	{
		return true;
	}
	if (IgnoreNonLibraryAsserts && (info->File[0] != 'L' || info->File[1] != 'H'))
	{
		return true;
	}

	for (LHAssertInfo* node = IgnoreList; node != NULL; node = node->Next)
	{
		if (strcmp(node->File, info->File) == 0 && (node->Line == 0 || node->Line == info->Line))
		{
			return true;
		}
	}
	return false;
}

static void FillIgnoreList(HWND dialog)
{
	SendDlgItemMessageA(dialog, IDC_IGNORE_LIST, LB_RESETCONTENT, 0, 0);
	for (LHAssertInfo* node = IgnoreList; node != NULL; node = node->Next)
	{
		SendDlgItemMessageA(dialog, IDC_IGNORE_LIST, LB_ADDSTRING, 0,
		                    (LPARAM)(char*)LHSPrintf("%15s: \t%4d \t%s", node->File, node->Line, node->Code));
	}
}

static BOOL CALLBACK AssertDialogProc(HWND dialog, UINT message, WPARAM wparam, LPARAM lparam)
{
	RECT rect;

	switch (message)
	{
	case WM_INITDIALOG: {
		char* forced = "***FORCED***  ";
		if (!Forced)
		{
			forced = "";
		}
		if (!SetWindowTextA(dialog, LHSPrintf("%s%s", forced, LHLogger::GetFileName(NULL))))
		{
			if (LHLogger::LogWin32ErrorS(LHLogLibraryName, FILEPATH, 193))
			{
				LHLogger::RawLogS(NULL);
			}
		}
		if (!GetWindowRect(dialog, &rect))
		{
			if (LHLogger::LogWin32ErrorS(LHLogLibraryName, FILEPATH, 196))
			{
				LHLogger::RawLogS(NULL);
			}
		}
		SetWindowPos(dialog, NULL, DialogX, DialogY, rect.right - rect.left, rect.bottom - rect.top, 0);

		CurrentAssertion = (LHAssertInfo*)lparam;
		FileIgnoreInfo = NULL;
		AssertIgnoreInfo = NULL;
		FillIgnoreList(dialog);

		if (Forced)
		{
			EnableWindow(GetDlgItem(dialog, IDC_IGNORE_FILE), FALSE);
			EnableWindow(GetDlgItem(dialog, IDC_IGNORE_THIS_ASSERTION), FALSE);
		}

		if (PriorityBitmap != NULL)
		{
			DeleteObject(PriorityBitmap);
		}
		PriorityBitmap = LoadBitmapA(CurrentAssertion->Instance, MAKEINTRESOURCE(CurrentAssertion->Bitmap));
		HWND item = GetDlgItem(dialog, IDC_PRIORITY);
		if (item != NULL)
		{
			SendMessageA(item, STM_SETIMAGE, IMAGE_BITMAP, (LPARAM)PriorityBitmap);
		}
		if (IgnoreAllGreen)
		{
			item = GetDlgItem(dialog, IDC_IGNORE_ALL_GREEN);
			if (item != NULL)
			{
				SendMessageA(item, BM_SETCHECK, BST_CHECKED, 0);
			}
		}

		SetDlgItemTextA(dialog, IDC_FILE, CurrentAssertion->File);
		SetDlgItemTextA(dialog, IDC_LINE, LHSPrintf("%d", CurrentAssertion->Line));
		SetDlgItemTextA(dialog, IDC_CODE, CurrentAssertion->Code);
		SetDlgItemTextA(dialog, IDC_TEXT, CurrentAssertion->Text);
		CheckDlgButton(dialog, IDC_IGNORE_NON_LIBRARY, IgnoreNonLibraryAsserts != 0);
		CheckDlgButton(dialog, IDC_IGNORE_LIBRARY, IgnoreLibraryAsserts != 0);
		CheckDlgButton(dialog, IDC_IGNORE_ALL, LHAssertIgnoreAllAsserts != 0);

		for (int i = 1; i < AssertDebugStack.GetFunctionCount() - 1; i++)
		{
			SendDlgItemMessageA(dialog, IDC_CALL_STACK, LB_ADDSTRING, 0, (LPARAM)AssertDebugStack.GetFunctionName(i));
		}
		return FALSE;
	}

	case WM_COMMAND:
		switch (LOWORD(wparam))
		{
		case IDC_DEBUG:
			DebugPressed = true;
			EndDialog(dialog, TRUE);
			return FALSE;

		case IDCANCEL:
		case IDC_IGNORE_AND_CONTINUE:
			AssertIgnoreInfo = new LHAssertInfo;
			*AssertIgnoreInfo = *CurrentAssertion;
			AddAssertion(AssertIgnoreInfo);
			FillIgnoreList(dialog);
		case IDC_CONTINUE:
			if (!GetWindowRect(dialog, &rect))
			{
				if (LHLogger::LogWin32ErrorS(LHLogLibraryName, FILEPATH, 260))
				{
					LHLogger::RawLogS(NULL);
				}
			}
			DialogX = (uint16_t)rect.left;
			DialogY = (uint16_t)rect.top;
			EndDialog(dialog, TRUE);
			return FALSE;

		case IDC_EXIT_PROGRAM:
			ExitPressed = true;
			EndDialog(dialog, TRUE);
			return FALSE;

		case IDC_IGNORE_FILE:
			if (IsDlgButtonChecked(dialog, IDC_IGNORE_FILE) && FileIgnoreInfo == NULL)
			{
				LHAssertInfo* info = new LHAssertInfo;
				*info = *CurrentAssertion;
				info->Line = 0;
				FileIgnoreInfo = info;
				strcpy(info->Code, "All assertions in this file");
				AddAssertion(info);
				FillIgnoreList(dialog);
			}
			if (!IsDlgButtonChecked(dialog, IDC_IGNORE_FILE) && FileIgnoreInfo != NULL)
			{
				DeleteAssertion(FileIgnoreInfo);
				FileIgnoreInfo = NULL;
				FillIgnoreList(dialog);
			}
			return FALSE;

		case IDC_IGNORE_THIS_ASSERTION:
			if (IsDlgButtonChecked(dialog, IDC_IGNORE_THIS_ASSERTION) && AssertIgnoreInfo == NULL)
			{
				AssertIgnoreInfo = new LHAssertInfo;
				*AssertIgnoreInfo = *CurrentAssertion;
				AddAssertion(AssertIgnoreInfo);
				FillIgnoreList(dialog);
			}
			if (!IsDlgButtonChecked(dialog, IDC_IGNORE_THIS_ASSERTION) && AssertIgnoreInfo != NULL)
			{
				DeleteAssertion(AssertIgnoreInfo);
				AssertIgnoreInfo = NULL;
				FillIgnoreList(dialog);
			}
			return FALSE;

		case IDC_IGNORE_LIST:
			if (HIWORD(wparam) == LBN_DBLCLK)
			{
				short index = (short)SendMessageA((HWND)lparam, LB_GETCURSEL, 0, 0);
				if (GetAssertion(index) == AssertIgnoreInfo)
				{
					AssertIgnoreInfo = NULL;
					CheckDlgButton(dialog, IDC_IGNORE_THIS_ASSERTION, BST_UNCHECKED);
				}
				if (GetAssertion(index) == FileIgnoreInfo)
				{
					FileIgnoreInfo = NULL;
					CheckDlgButton(dialog, IDC_IGNORE_FILE, BST_UNCHECKED);
				}
				DeleteAssertion(index);
				FillIgnoreList(dialog);
			}
			return FALSE;

		case IDC_IGNORE_ALL_GREEN:
			IgnoreAllGreen = !IgnoreAllGreen;
			return FALSE;

		case IDC_LOG_PROPERTIES:
			LHSyslog.ShowLogPropsDialog();
			return FALSE;

		case IDC_DETAILS: {
			char text[LH_ASSERT_DETAILS_SIZE];
			char code[LH_ASSERT_DETAILS_SIZE];
			GetDlgItemTextA(dialog, IDC_TEXT, text, sizeof(text));
			GetDlgItemTextA(dialog, IDC_CODE, code, sizeof(code));
			MessageBoxA(NULL, LHSPrintf("Text:%s\nCode:%s\n", text, code), "Assert Details", MB_TASKMODAL);
			return FALSE;
		}

		case IDC_IGNORE_NON_LIBRARY:
			IgnoreNonLibraryAsserts = IsDlgButtonChecked(dialog, IDC_IGNORE_NON_LIBRARY);
			return FALSE;

		case IDC_IGNORE_LIBRARY:
			IgnoreLibraryAsserts = IsDlgButtonChecked(dialog, IDC_IGNORE_LIBRARY);
			return FALSE;

		case IDC_IGNORE_ALL:
			LHAssertIgnoreAllAsserts = IsDlgButtonChecked(dialog, IDC_IGNORE_ALL);
			return FALSE;
		}
		break;
	}
	return FALSE;
}

LH_ASSERT_RETURN LHAssertStatement(char* library, unsigned long ignore, char* text, char* file, uint16_t line,
                                   char* code, int forced, long priority)
{
	if (IgnoreAllGreen && priority == LH_ASSERT_PRIORITY_LOW)
	{
		return LH_ASSERT_RETURN_CONTINUE;
	}

	Forced = forced;
	char*     fileName = LHLogger::GetFileName(file);
	LHLogger* logger = LHLogger::FindLHLogger("", 0);
	if (!forced)
	{
		LHLogPropsSet* props = logger->GetLogProps();
		if (!props->AssertFlag)
		{
			return LH_ASSERT_RETURN_CONTINUE;
		}
		if (!props->DisableFilterFlag && !PassesFilter(props->ActiveAssertFilter, props->InvertActiveAssertFilterFlag,
		                                               text, fileName, library, logger, NULL))
		{
			return LH_ASSERT_RETURN_CONTINUE;
		}
	}

	if (!AssertLockInitialised)
	{
		AssertLockInitialised = true;
		InitializeCriticalSection(&AssertLock);
	}
	EnterCriticalSection(&AssertLock);

	LHAssertInfo info;
	strcpy(info.File, fileName);
	strcpy(info.Code, code);
	strcpy(info.Text, text);
	switch (priority)
	{
	case LH_ASSERT_PRIORITY_MEDIUM:
		info.Bitmap = IDB_PRIORITY_MEDIUM;
		break;
	case LH_ASSERT_PRIORITY_HIGH:
		info.Bitmap = IDB_PRIORITY_HIGH;
		break;
	default:
		info.Bitmap = IDB_PRIORITY_LOW;
		break;
	}
	info.Line = line;
	DebugPressed = false;

	if (ignore)
	{
		goto ignored;
	}

	if (LHAssertCustomDraw != NULL)
	{
		LHAssertIgnoreAllAsserts = false;
	}

	if (ExitPressed || (!forced && IsAssertionIgnored(&info)))
	{
		goto ignored;
	}

	if (LHAssertCustomDraw != NULL)
	{
		FILE* log = fopen(LHAssertLogFilename, "a");
		if (log != NULL)
		{
			fprintf(log, LHSPrintf("File %s Line %d Text %s\n", fileName, line, text));
			fflush(log);
			fclose(log);
		}

		LH_ASSERT_RETURN result = LHAssertCustomDraw(text, fileName, line, code, forced);
		if (result == LH_ASSERT_RETURN_IGNORE)
		{
			LHAssertInfo* entry = new LHAssertInfo;
			*entry = info;
			AddAssertion(entry);
		}
		LeaveCriticalSection(&AssertLock);
		return result;
	}

	if (forced && LHAssertBeforeForceCallback != NULL)
	{
		LHAssertBeforeForceCallback();
	}

	LHDebugStack::Initialise();
	AssertDebugStack.UpdateStackInformation();
	info.Instance = (HINSTANCE)LHLogger::DLLHModule;
	InAssertDialog = true;
	if (DialogBoxParamA((HINSTANCE)LHLogger::DLLHModule, MAKEINTRESOURCE(IDD_ASSERT_DIALOG), NULL, AssertDialogProc,
	                    (LPARAM)&info) == -1)
	{
		if (LHLogger::LogErrorCodeS(LHLogLibraryName, FILEPATH, 421, LHAssertErrorCodes,
		                            LH_ASSERT_ERROR_DIALOG_BOX_PARAM))
		{
			LHLogger::RawLogS(NULL);
		}
	}
	InAssertDialog = false;
	LHDebugStack::CloseDown();

	if (forced && LHAssertBeforeForceCallback != NULL)
	{
		LHAssertAfterForceCallback();
	}

	if (DebugPressed)
	{
		LeaveCriticalSection(&AssertLock);
		return LH_ASSERT_RETURN_DEBUG;
	}
	if (ExitPressed)
	{
		LeaveCriticalSection(&AssertLock);
		return LH_ASSERT_RETURN_EXIT;
	}

ignored:
	LeaveCriticalSection(&AssertLock);
	return LH_ASSERT_RETURN_CONTINUE;
}

LH_ASSERT_RETURN LHAssertStatement(char* library, unsigned long ignore, char* text, char* file, uint16_t line,
                                   char* code, int forced)
{
	return LHAssertStatement(library, ignore, text, file, line, code, forced, LH_ASSERT_PRIORITY_HIGH);
}
