#include <windows.h>
#include <stdlib.h>
#include <string.h>

#include "LHLogProps.h"
#include "LHLogger.h"
#include "LHLogMacros.h"

#define FILEPATH "LHLogProps.cpp"

enum
{
	IDD_LOG_DIALOG = 102,
	IDC_CLOSE = 1000,
	IDC_LOG_FILENAME = 1001,
	IDC_SOURCE_FLAG = 1002,
	IDC_LINE_FLAG = 1003,
	IDC_TIME_FLAG = 1004,
	IDC_PID_FLAG = 1005,
	IDC_DEBUGGER_FLAG = 1006,
	IDC_FILE_FLAG = 1007,
	IDC_WINDOW_FLAG = 1008,
	IDC_LEVEL_0 = 1009,
	IDC_HOST_IP = 1010,
	IDC_LOG_FILTER = 1011,
	IDC_REMOTE_FLAG = 1012,
	IDC_LEVEL_1 = 1013,
	IDC_LEVEL_2 = 1014,
	IDC_ASSERT_FLAG = 1015,
	IDC_RESTORE = 1016,
	IDC_INVERT_LOG_FILTER_FLAG = 1017,
	IDC_MESSAGES = 1018,
	IDC_CLEAR_MESSAGES = 1019,
	IDC_ASSERT_FILTER = 1020,
	IDC_INVERT_ASSERT_FILTER_FLAG = 1021,
	IDC_TRUNCATE_FLAG = 1022,
	IDC_AUTO_SCROLL_FLAG = 1023,
	IDC_DISPLAY_ON_START_FLAG = 1024,
	IDC_THREAD_FLAG = 1025,
	IDC_SYS_TIME_FLAG = 1026,
	IDC_ASSERT_FILTER_AS_LOG_FLAG = 1027,
	IDC_SHOW_ASSERT_FILTERS = 1028,
	IDC_DISABLE_FILTER_FLAG = 1042,
};

enum
{
	WM_LH_LOG_CLOSE_DIALOG = WM_USER + 1,
};

enum
{
	LH_LOG_LINE_SIZE = 256,
	LH_LOG_LINE_BUFFER_SIZE = 276,
	LH_LOG_DIALOG_SCROLL_LINES = 20,
	LH_LOG_DIALOG_STARTING = -2,
	LH_LOG_DIALOG_CLOSE_TIMEOUT = 300,
	LH_LOG_DIALOG_THREAD_PRIORITY = -255,
};

char* RegistryKey = "Software\\Lionhead Studios Ltd\\LHLog";
char* DefaultLogFilename = "./lhlog.txt";

static char             LineBuffer[LH_LOG_LINE_BUFFER_SIZE];
static int              LineLength;
static CRITICAL_SECTION MessageLock;

void* LHLogPropsSet::DialogHandle;

LHLogPropsSet::LHLogPropsSet()
{
	MessageIndex = 0;
	memset(Messages, 0, sizeof(Messages));
	SourceFlag = true;
	LineFlag = true;
	SysTimeFlag = false;
	ThreadFlag = false;
	TimeFlag = false;
	PidFlag = false;
	DebuggerFlag = true;
	FileFlag = false;
	WindowFlag = true;
	RemoteFlag = false;
	AssertFlag = false;
	AutoScrollFlag = true;
	DisplayOnStartFlag = false;
	TruncateFlag = true;
	InvertAssertFilterFlag = false;
	InvertActiveAssertFilterFlag = false;
	AssertFilterAsLogFlag = true;
	InvertLogFilterFlag = false;
	DisableFilterFlag = true;
	LogFilter[0] = '\0';
	AssertFilter[0] = '\0';
	ActiveAssertFilter[0] = '\0';
	Level = LH_LOG_PROPS_LEVEL_NONE;
	DialogHandle = INVALID_HANDLE_VALUE;
	MessageCount = 0;
	strcpy(LogFilename, DefaultLogFilename);
	Uninitialised = true;
	HostIP[0] = '\0';
}

void LHLogPropsSet::ClearLogMessageBuffer()
{
	MessageIndex = 0;
	for (int i = 0; i < LH_LOG_PROPS_MAX_MESSAGES; i++)
	{
		if (Messages[i] != NULL)
		{
			free(Messages[i]);
			Messages[i] = NULL;
		}
	}
	memset(Messages, 0, sizeof(Messages));
	MessageCount = 0;
}

void LHLogPropsSet::WriteToRegistry()
{
	HKEY key;
	if (RegOpenKeyExA(HKEY_CURRENT_USER, RegistryKey, 0, KEY_SET_VALUE, &key) != ERROR_SUCCESS)
	{
		LH_LOG_WIN32_ERROR(106);
		return;
	}

	if (RegSetValueExA(key, "AssertFilter", 0, REG_SZ, (BYTE*)AssertFilter, strlen(AssertFilter)) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(109);
	if (RegSetValueExA(key, "LogFilter", 0, REG_SZ, (BYTE*)LogFilter, strlen(LogFilter)) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(110);
	if (RegSetValueExA(key, "InvertAssertFilterFlag", 0, REG_SZ, (BYTE*)(InvertAssertFilterFlag ? "TRUE" : "FALSE"),
	                   InvertAssertFilterFlag ? 4 : 5) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(111);
	if (RegSetValueExA(key, "AssertFilterAsLogFlag", 0, REG_SZ, (BYTE*)(AssertFilterAsLogFlag ? "TRUE" : "FALSE"),
	                   AssertFilterAsLogFlag ? 4 : 5) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(112);
	if (RegSetValueExA(key, "InvertLogFilterFlag", 0, REG_SZ, (BYTE*)(InvertLogFilterFlag ? "TRUE" : "FALSE"),
	                   InvertLogFilterFlag ? 4 : 5) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(113);
	if (RegSetValueExA(key, "DisableFilterFlag", 0, REG_SZ, (BYTE*)(DisableFilterFlag ? "TRUE" : "FALSE"),
	                   DisableFilterFlag ? 4 : 5) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(114);
	if (RegSetValueExA(key, "LogFilename", 0, REG_SZ, (BYTE*)LogFilename, strlen(LogFilename)) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(115);
	if (RegSetValueExA(key, "HostIP", 0, REG_SZ, (BYTE*)HostIP, strlen(HostIP)) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(116);
	if (RegSetValueExA(key, "SourceFlag", 0, REG_SZ, (BYTE*)(SourceFlag ? "TRUE" : "FALSE"), SourceFlag ? 4 : 5) !=
	    ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(117);
	if (RegSetValueExA(key, "LineFlag", 0, REG_SZ, (BYTE*)(LineFlag ? "TRUE" : "FALSE"), LineFlag ? 4 : 5) !=
	    ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(118);
	if (RegSetValueExA(key, "SysTimeFlag", 0, REG_SZ, (BYTE*)(SysTimeFlag ? "TRUE" : "FALSE"), SysTimeFlag ? 4 : 5) !=
	    ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(119);
	if (RegSetValueExA(key, "ThreadFlag", 0, REG_SZ, (BYTE*)(ThreadFlag ? "TRUE" : "FALSE"), ThreadFlag ? 4 : 5) !=
	    ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(120);
	if (RegSetValueExA(key, "TimeFlag", 0, REG_SZ, (BYTE*)(TimeFlag ? "TRUE" : "FALSE"), TimeFlag ? 4 : 5) !=
	    ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(121);
	if (RegSetValueExA(key, "PidFlag", 0, REG_SZ, (BYTE*)(PidFlag ? "TRUE" : "FALSE"), PidFlag ? 4 : 5) !=
	    ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(122);
	if (RegSetValueExA(key, "AssertFlag", 0, REG_SZ, (BYTE*)(AssertFlag ? "TRUE" : "FALSE"), AssertFlag ? 4 : 5) !=
	    ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(123);
	if (RegSetValueExA(key, "AutoScrollFlag", 0, REG_SZ, (BYTE*)(AutoScrollFlag ? "TRUE" : "FALSE"),
	                   AutoScrollFlag ? 4 : 5) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(124);
	if (RegSetValueExA(key, "DisplayOnStartFlag", 0, REG_SZ, (BYTE*)(DisplayOnStartFlag ? "TRUE" : "FALSE"),
	                   DisplayOnStartFlag ? 4 : 5) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(125);
	if (RegSetValueExA(key, "TruncateFlag", 0, REG_SZ, (BYTE*)(TruncateFlag ? "TRUE" : "FALSE"),
	                   TruncateFlag ? 4 : 5) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(126);
	if (RegSetValueExA(key, "DebuggerFlag", 0, REG_SZ, (BYTE*)(DebuggerFlag ? "TRUE" : "FALSE"),
	                   DebuggerFlag ? 4 : 5) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(127);
	if (RegSetValueExA(key, "FileFlag", 0, REG_SZ, (BYTE*)(FileFlag ? "TRUE" : "FALSE"), FileFlag ? 4 : 5) !=
	    ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(128);
	if (RegSetValueExA(key, "WindowFlag", 0, REG_SZ, (BYTE*)(WindowFlag ? "TRUE" : "FALSE"), WindowFlag ? 4 : 5) !=
	    ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(129);
	if (RegSetValueExA(key, "RemoteFlag", 0, REG_SZ, (BYTE*)(RemoteFlag ? "TRUE" : "FALSE"), RemoteFlag ? 4 : 5) !=
	    ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(130);
	if (RegSetValueExA(key, "Level", 0, REG_DWORD, (BYTE*)&Level, sizeof(Level)) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(131);
	RegCloseKey(key);
}

void LHLogPropsSet::WriteToDialog(void* dialog)
{
	HWND hwnd = (HWND)dialog;
	if (!SetDlgItemTextA(hwnd, IDC_ASSERT_FILTER, AssertFilter))
		LH_LOG_WIN32_ERROR(137);
	if (!SetDlgItemTextA(hwnd, IDC_LOG_FILTER, LogFilter))
		LH_LOG_WIN32_ERROR(138);
	if (!SetDlgItemTextA(hwnd, IDC_LOG_FILENAME, LogFilename))
		LH_LOG_WIN32_ERROR(139);
	if (!SetDlgItemTextA(hwnd, IDC_HOST_IP, HostIP))
		LH_LOG_WIN32_ERROR(140);
	if (!CheckDlgButton(hwnd, IDC_INVERT_ASSERT_FILTER_FLAG, InvertAssertFilterFlag != false))
		LH_LOG_WIN32_ERROR(141);
	if (!CheckDlgButton(hwnd, IDC_ASSERT_FILTER_AS_LOG_FLAG, AssertFilterAsLogFlag != false))
		LH_LOG_WIN32_ERROR(142);
	if (!CheckDlgButton(hwnd, IDC_INVERT_LOG_FILTER_FLAG, InvertLogFilterFlag != false))
		LH_LOG_WIN32_ERROR(143);
	if (!CheckDlgButton(hwnd, IDC_DISABLE_FILTER_FLAG, DisableFilterFlag != false))
		LH_LOG_WIN32_ERROR(144);
	if (!CheckDlgButton(hwnd, IDC_SOURCE_FLAG, SourceFlag != false))
		LH_LOG_WIN32_ERROR(145);
	if (!CheckDlgButton(hwnd, IDC_LINE_FLAG, LineFlag != false))
		LH_LOG_WIN32_ERROR(146);
	if (!CheckDlgButton(hwnd, IDC_TIME_FLAG, TimeFlag != false))
		LH_LOG_WIN32_ERROR(147);
	if (!CheckDlgButton(hwnd, IDC_THREAD_FLAG, ThreadFlag != false))
		LH_LOG_WIN32_ERROR(148);
	if (!CheckDlgButton(hwnd, IDC_SYS_TIME_FLAG, SysTimeFlag != false))
		LH_LOG_WIN32_ERROR(149);
	if (!CheckDlgButton(hwnd, IDC_PID_FLAG, PidFlag != false))
		LH_LOG_WIN32_ERROR(150);
	if (!CheckDlgButton(hwnd, IDC_ASSERT_FLAG, AssertFlag != false))
		LH_LOG_WIN32_ERROR(151);
	if (!CheckDlgButton(hwnd, IDC_AUTO_SCROLL_FLAG, AutoScrollFlag != false))
		LH_LOG_WIN32_ERROR(152);
	if (!CheckDlgButton(hwnd, IDC_DISPLAY_ON_START_FLAG, DisplayOnStartFlag != false))
		LH_LOG_WIN32_ERROR(153);
	if (!CheckDlgButton(hwnd, IDC_TRUNCATE_FLAG, TruncateFlag != false))
		LH_LOG_WIN32_ERROR(154);
	if (!CheckDlgButton(hwnd, IDC_DEBUGGER_FLAG, DebuggerFlag != false))
		LH_LOG_WIN32_ERROR(155);
	if (!CheckDlgButton(hwnd, IDC_FILE_FLAG, FileFlag != false))
		LH_LOG_WIN32_ERROR(156);
	if (!CheckDlgButton(hwnd, IDC_WINDOW_FLAG, WindowFlag != false))
		LH_LOG_WIN32_ERROR(157);
	if (!CheckDlgButton(hwnd, IDC_REMOTE_FLAG, RemoteFlag != false))
		LH_LOG_WIN32_ERROR(158);

	if (!CheckDlgButton(hwnd, IDC_LEVEL_0, BST_UNCHECKED))
		LH_LOG_WIN32_ERROR(160);
	if (!CheckDlgButton(hwnd, IDC_LEVEL_1, BST_UNCHECKED))
		LH_LOG_WIN32_ERROR(161);
	if (!CheckDlgButton(hwnd, IDC_LEVEL_2, BST_UNCHECKED))
		LH_LOG_WIN32_ERROR(162);
	switch (Level)
	{
	case LH_LOG_PROPS_LEVEL_ALL:
		if (!CheckDlgButton(hwnd, IDC_LEVEL_0, BST_CHECKED))
			LH_LOG_WIN32_ERROR(166);
		break;
	case LH_LOG_PROPS_LEVEL_ERRORS:
		if (!CheckDlgButton(hwnd, IDC_LEVEL_1, BST_CHECKED))
			LH_LOG_WIN32_ERROR(169);
		break;
	case LH_LOG_PROPS_LEVEL_NONE:
		if (!CheckDlgButton(hwnd, IDC_LEVEL_2, BST_CHECKED))
			LH_LOG_WIN32_ERROR(172);
		break;
	}
}

// BW1W120 10004f90 BW1M119 null
bool32_t AddToLineBuffer(char* text);

bool32_t AddToLineBuffer(char* text)
{
	int      length = strlen(text);
	bool32_t complete = false;
	while (length != 0 && (text[length - 1] == '\n' || text[length - 1] == '\r'))
	{
		length--;
	}
	if (text[length] == '\n' || text[length] == '\r')
	{
		complete = true;
	}
	int i = 0;
	while (i < length && LineLength < LH_LOG_LINE_SIZE)
	{
		LineBuffer[LineLength] = text[i];
		i++;
		LineLength++;
	}
	if (LineLength >= LH_LOG_LINE_SIZE)
	{
		complete = true;
	}
	LineBuffer[LineLength] = '\0';
	if (complete)
	{
		LineLength = 0;
	}
	return complete;
}

void LHLogPropsSet::ClearMessages()
{
	SendDlgItemMessageA((HWND)DialogHandle, IDC_MESSAGES, LB_RESETCONTENT, 0, 0);
	ClearLogMessageBuffer();
}

void LHLogPropsSet::SaveText(char* text)
{
	EnterCriticalSection(&MessageLock);
	if (Messages[MessageIndex] != NULL)
	{
		free(Messages[MessageIndex]);
		Messages[MessageIndex] = NULL;
	}
	Messages[MessageIndex] = (char*)malloc(strlen(text) + 2);
	char* message = Messages[MessageIndex];
	if (message == NULL)
	{
		LeaveCriticalSection(&MessageLock);
		return;
	}
	strcpy(message, text);
	strcat(message, "\n");
	MessageIndex = (MessageIndex + 1) % LH_LOG_PROPS_MAX_MESSAGES;
	LeaveCriticalSection(&MessageLock);
}

void LHLogPropsSet::ReadFromDialog(void* dialog)
{
	HWND hwnd = (HWND)dialog;
	LogFilter[0] = '\0';
	GetDlgItemTextA(hwnd, IDC_LOG_FILTER, LogFilter, sizeof(LogFilter));
	AssertFilter[0] = '\0';
	GetDlgItemTextA(hwnd, IDC_ASSERT_FILTER, AssertFilter, sizeof(AssertFilter));
	LogFilename[0] = '\0';
	GetDlgItemTextA(hwnd, IDC_LOG_FILENAME, LogFilename, sizeof(LogFilename));
	HostIP[0] = '\0';
	GetDlgItemTextA(hwnd, IDC_HOST_IP, HostIP, sizeof(HostIP));
	InvertLogFilterFlag = IsDlgButtonChecked(hwnd, IDC_INVERT_LOG_FILTER_FLAG) == BST_CHECKED;
	DisableFilterFlag = IsDlgButtonChecked(hwnd, IDC_DISABLE_FILTER_FLAG) == BST_CHECKED;
	InvertAssertFilterFlag = IsDlgButtonChecked(hwnd, IDC_INVERT_ASSERT_FILTER_FLAG) == BST_CHECKED;
	AssertFilterAsLogFlag = IsDlgButtonChecked(hwnd, IDC_ASSERT_FILTER_AS_LOG_FLAG) == BST_CHECKED;
	SourceFlag = IsDlgButtonChecked(hwnd, IDC_SOURCE_FLAG) == BST_CHECKED;
	LineFlag = IsDlgButtonChecked(hwnd, IDC_LINE_FLAG) == BST_CHECKED;
	TimeFlag = IsDlgButtonChecked(hwnd, IDC_TIME_FLAG) == BST_CHECKED;
	ThreadFlag = IsDlgButtonChecked(hwnd, IDC_THREAD_FLAG) == BST_CHECKED;
	SysTimeFlag = IsDlgButtonChecked(hwnd, IDC_SYS_TIME_FLAG) == BST_CHECKED;
	PidFlag = IsDlgButtonChecked(hwnd, IDC_PID_FLAG) == BST_CHECKED;
	AssertFlag = IsDlgButtonChecked(hwnd, IDC_ASSERT_FLAG) == BST_CHECKED;
	AutoScrollFlag = IsDlgButtonChecked(hwnd, IDC_AUTO_SCROLL_FLAG) == BST_CHECKED;
	DisplayOnStartFlag = IsDlgButtonChecked(hwnd, IDC_DISPLAY_ON_START_FLAG) == BST_CHECKED;
	TruncateFlag = IsDlgButtonChecked(hwnd, IDC_TRUNCATE_FLAG) == BST_CHECKED;
	DebuggerFlag = IsDlgButtonChecked(hwnd, IDC_DEBUGGER_FLAG) == BST_CHECKED;
	FileFlag = IsDlgButtonChecked(hwnd, IDC_FILE_FLAG) == BST_CHECKED;
	WindowFlag = IsDlgButtonChecked(hwnd, IDC_WINDOW_FLAG) == BST_CHECKED;
	RemoteFlag = IsDlgButtonChecked(hwnd, IDC_REMOTE_FLAG) == BST_CHECKED;
	Level = LH_LOG_PROPS_LEVEL_ALL;
	if (IsDlgButtonChecked(hwnd, IDC_LEVEL_1) == BST_CHECKED)
	{
		Level = LH_LOG_PROPS_LEVEL_ERRORS;
	}
	if (IsDlgButtonChecked(hwnd, IDC_LEVEL_2) == BST_CHECKED)
	{
		Level = LH_LOG_PROPS_LEVEL_NONE;
	}
}

void LHLogPropsSet::CopyFrom(LHLogPropsSet* other)
{
	strcpy(LogFilename, other->LogFilename);
	strcpy(LogFilter, other->LogFilter);
	strcpy(AssertFilter, other->AssertFilter);
	strcpy(ActiveAssertFilter, other->ActiveAssertFilter);
	strcpy(HostIP, other->HostIP);
	SourceFlag = other->SourceFlag;
	LineFlag = other->LineFlag;
	TimeFlag = other->TimeFlag;
	SysTimeFlag = other->SysTimeFlag;
	ThreadFlag = other->ThreadFlag;
	PidFlag = other->PidFlag;
	DebuggerFlag = other->DebuggerFlag;
	FileFlag = other->FileFlag;
	WindowFlag = other->WindowFlag;
	RemoteFlag = other->RemoteFlag;
	AssertFlag = other->AssertFlag;
	AutoScrollFlag = other->AutoScrollFlag;
	DisplayOnStartFlag = other->DisplayOnStartFlag;
	TruncateFlag = other->TruncateFlag;
	InvertLogFilterFlag = other->InvertLogFilterFlag;
	DisableFilterFlag = other->DisableFilterFlag;
	InvertAssertFilterFlag = other->InvertAssertFilterFlag;
	InvertActiveAssertFilterFlag = other->InvertActiveAssertFilterFlag;
	AssertFilterAsLogFlag = other->AssertFilterAsLogFlag;
	Level = other->Level;
}

void LHLogPropsSet::ReadFromRegistry()
{
	HKEY  createdKey;
	HKEY  key;
	DWORD type;
	DWORD nameSize;
	DWORD dataSize;
	char  name[128];
	BYTE  data[128];

	if (RegCreateKeyA(HKEY_CURRENT_USER, RegistryKey, &createdKey) == ERROR_SUCCESS)
	{
		RegCloseKey(createdKey);
	}
	if (RegOpenKeyA(HKEY_CURRENT_USER, RegistryKey, &key) == ERROR_SUCCESS)
	{
		DWORD index = 0;
		nameSize = sizeof(name);
		dataSize = sizeof(data);
		while (RegEnumValueA(key, index, name, &nameSize, NULL, &type, data, &dataSize) == ERROR_SUCCESS)
		{
			if (type == REG_SZ)
			{
				if (_stricmp(name, "LogFilter") == 0 && data[0] != '\0' && dataSize != 0)
				{
					strcpy(LogFilter, (char*)data);
				}
				if (_stricmp(name, "AssertFilter") == 0 && data[0] != '\0' && dataSize != 0)
				{
					strcpy(AssertFilter, (char*)data);
				}
				if (_stricmp(name, "LogFilename") == 0 && data[0] != '\0' && dataSize != 0)
				{
					strcpy(LogFilename, (char*)data);
				}
				if (_stricmp(name, "HostIP") == 0 && data[0] != '\0' && dataSize != 0)
				{
					strcpy(HostIP, (char*)data);
				}
				if (_stricmp(name, "InvertLogFilterFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					InvertLogFilterFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "DisableFilterFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					DisableFilterFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "InvertAssertFilterFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					InvertAssertFilterFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "AssertFilterAsLogFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					AssertFilterAsLogFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "SourceFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					SourceFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "LineFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					LineFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "TimeFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					TimeFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "SysTimeFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					SysTimeFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "ThreadFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					ThreadFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "PidFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					PidFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "AssertFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					AssertFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "AutoScrollFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					AutoScrollFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "DisplayOnStartFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					DisplayOnStartFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "TruncateFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					TruncateFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "DebuggerFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					DebuggerFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "FileFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					FileFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "WindowFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					WindowFlag = _stricmp((char*)data, "TRUE") == 0;
				}
				if (_stricmp(name, "RemoteFlag") == 0 && data[0] != '\0' && dataSize != 0)
				{
					RemoteFlag = _stricmp((char*)data, "TRUE") == 0;
				}
			}
			if (type == REG_DWORD && _stricmp(name, "Level") == 0)
			{
				Level = *(unsigned long*)data;
			}
			index++;
			nameSize = sizeof(name);
			dataSize = sizeof(data);
		}
		RegCloseKey(key);
	}

	if (AssertFilterAsLogFlag)
	{
		strcpy(ActiveAssertFilter, LogFilter);
		InvertActiveAssertFilterFlag = InvertLogFilterFlag;
	}
	else
	{
		strcpy(ActiveAssertFilter, AssertFilter);
		InvertActiveAssertFilterFlag = InvertAssertFilterFlag;
	}
}

void LHLogPropsSet::Initialise()
{
	InitializeCriticalSection(&MessageLock);
	Uninitialised = false;
	DialogClosedEvent = CreateEventA(NULL, FALSE, FALSE, NULL);
	ReadFromRegistry();
}

LHLogPropsSet::~LHLogPropsSet()
{
	if (!Uninitialised)
	{
		ClearLogMessageBuffer();
		if (IsWindow((HWND)DialogHandle))
		{
			SendMessageA((HWND)DialogHandle, WM_LH_LOG_CLOSE_DIALOG, 0, 0);
			WaitForSingleObject(DialogClosedEvent, LH_LOG_DIALOG_CLOSE_TIMEOUT);
		}
	}
}

void LHLogPropsSet::InsertString(char* text, bool32_t save)
{
	bool32_t first = true;
	if (AddToLineBuffer(text))
	{
		if (save)
		{
			SaveText(LineBuffer);
		}
		if (IsWindow((HWND)DialogHandle) && text != NULL)
		{
			MessageCount++;
			if (SendDlgItemMessageA((HWND)DialogHandle, IDC_MESSAGES, LB_ADDSTRING, 0, (LPARAM)LineBuffer) == LB_ERR)
			{
				int topIndex;
				do
				{
					if (first)
					{
						topIndex = SendDlgItemMessageA((HWND)DialogHandle, IDC_MESSAGES, LB_GETTOPINDEX, 0, 0);
						first = false;
					}
					SendDlgItemMessageA((HWND)DialogHandle, IDC_MESSAGES, LB_DELETESTRING, 0, 0);
					MessageCount--;
					topIndex--;
				} while (SendDlgItemMessageA((HWND)DialogHandle, IDC_MESSAGES, LB_ADDSTRING, 0, (LPARAM)LineBuffer) ==
				         LB_ERR);
				if (!first && !AutoScrollFlag)
				{
					SendDlgItemMessageA((HWND)DialogHandle, IDC_MESSAGES, LB_SETTOPINDEX, topIndex, 0);
				}
			}
			if (AutoScrollFlag)
			{
				if (MessageCount > LH_LOG_DIALOG_SCROLL_LINES)
				{
					SendDlgItemMessageA((HWND)DialogHandle, IDC_MESSAGES, LB_SETTOPINDEX, 0, 0);
				}
				SendDlgItemMessageA((HWND)DialogHandle, IDC_MESSAGES, LB_SETTOPINDEX, MessageCount - 1, 0);
			}
		}
	}
}

// BW1W120 10005e10 BW1M119 null
static BOOL CALLBACK LogDialogProc(HWND dialog, UINT message, WPARAM wparam, LPARAM lparam);

BOOL CALLBACK LogDialogProc(HWND dialog, UINT message, WPARAM wparam, LPARAM lparam)
{
	static bool32_t       ready;
	static LHLogPropsSet* props;
	static LHLogPropsSet  backup;

	switch (message)
	{
	case WM_INITDIALOG: {
		if (!SetWindowTextA(dialog, LHLogger::GetFileName(NULL)))
			LH_LOG_WIN32_ERROR(416);
		LHLogPropsSet::DialogHandle = dialog;
		props = (LHLogPropsSet*)lparam;
		uint16_t index = props->MessageIndex;
		backup.CopyFrom(props);
		props->WriteToDialog(dialog);
		props->MessageCount = 0;
		for (int i = 0; i < LH_LOG_PROPS_MAX_MESSAGES; i++)
		{
			if (props->Messages[index] != NULL)
			{
				props->InsertString(props->Messages[index], false);
			}
			index = (index + 1) % LH_LOG_PROPS_MAX_MESSAGES;
		}
		ShowWindow(dialog, SW_SHOW);
		if (IsDlgButtonChecked(dialog, IDC_ASSERT_FILTER_AS_LOG_FLAG))
		{
			EnableWindow(GetDlgItem(dialog, IDC_ASSERT_FILTER), FALSE);
			EnableWindow(GetDlgItem(dialog, IDC_INVERT_ASSERT_FILTER_FLAG), FALSE);
			strcpy(props->ActiveAssertFilter, props->LogFilter);
			props->InvertActiveAssertFilterFlag = props->InvertLogFilterFlag;
		}
		else
		{
			strcpy(props->ActiveAssertFilter, props->AssertFilter);
			props->InvertActiveAssertFilterFlag = props->InvertAssertFilterFlag;
		}
		if (IsDlgButtonChecked(dialog, IDC_DISABLE_FILTER_FLAG))
		{
			EnableWindow(GetDlgItem(dialog, IDC_ASSERT_FILTER_AS_LOG_FLAG), FALSE);
			EnableWindow(GetDlgItem(dialog, IDC_ASSERT_FILTER), FALSE);
			EnableWindow(GetDlgItem(dialog, IDC_INVERT_ASSERT_FILTER_FLAG), FALSE);
			EnableWindow(GetDlgItem(dialog, IDC_LOG_FILTER), FALSE);
			EnableWindow(GetDlgItem(dialog, IDC_INVERT_LOG_FILTER_FLAG), FALSE);
		}
		ready = true;
		break;
	}

	case WM_COMMAND:
		switch (LOWORD(wparam))
		{
		case IDC_RESTORE:
			props->CopyFrom(&backup);
			props->WriteToRegistry();
		case IDCANCEL:
		case IDC_CLOSE:
			EndDialog(dialog, TRUE);
			break;

		case IDC_CLEAR_MESSAGES:
			props->ClearMessages();
			break;

		case IDC_SHOW_ASSERT_FILTERS:
			LHAssertStatement(NULL, 0, "--- Current Assert filters ---", NULL, 0,
			                  "These settings are not stored in the registry", true, LH_ASSERT_PRIORITY_HIGH);
			break;

		default:
			if (ready && (HIWORD(wparam) == EN_KILLFOCUS || HIWORD(wparam) == BN_CLICKED))
			{
				ready = false;
				props->ReadFromDialog(dialog);
				props->WriteToRegistry();
				ready = true;
				if (IsDlgButtonChecked(dialog, IDC_ASSERT_FILTER_AS_LOG_FLAG))
				{
					EnableWindow(GetDlgItem(dialog, IDC_ASSERT_FILTER), FALSE);
					EnableWindow(GetDlgItem(dialog, IDC_INVERT_ASSERT_FILTER_FLAG), FALSE);
					strcpy(props->ActiveAssertFilter, props->LogFilter);
					props->InvertActiveAssertFilterFlag = props->InvertLogFilterFlag;
				}
				else
				{
					EnableWindow(GetDlgItem(dialog, IDC_ASSERT_FILTER), TRUE);
					EnableWindow(GetDlgItem(dialog, IDC_INVERT_ASSERT_FILTER_FLAG), TRUE);
					strcpy(props->ActiveAssertFilter, props->AssertFilter);
					props->InvertActiveAssertFilterFlag = props->InvertAssertFilterFlag;
				}
				if (IsDlgButtonChecked(dialog, IDC_DISABLE_FILTER_FLAG))
				{
					EnableWindow(GetDlgItem(dialog, IDC_ASSERT_FILTER_AS_LOG_FLAG), FALSE);
					EnableWindow(GetDlgItem(dialog, IDC_ASSERT_FILTER), FALSE);
					EnableWindow(GetDlgItem(dialog, IDC_INVERT_ASSERT_FILTER_FLAG), FALSE);
					EnableWindow(GetDlgItem(dialog, IDC_LOG_FILTER), FALSE);
					EnableWindow(GetDlgItem(dialog, IDC_INVERT_LOG_FILTER_FLAG), FALSE);
				}
				else
				{
					EnableWindow(GetDlgItem(dialog, IDC_ASSERT_FILTER_AS_LOG_FLAG), TRUE);
					EnableWindow(GetDlgItem(dialog, IDC_LOG_FILTER), TRUE);
					EnableWindow(GetDlgItem(dialog, IDC_INVERT_LOG_FILTER_FLAG), TRUE);
					if (IsDlgButtonChecked(dialog, IDC_ASSERT_FILTER_AS_LOG_FLAG))
					{
						EnableWindow(GetDlgItem(dialog, IDC_ASSERT_FILTER), FALSE);
						EnableWindow(GetDlgItem(dialog, IDC_INVERT_ASSERT_FILTER_FLAG), FALSE);
					}
					else
					{
						EnableWindow(GetDlgItem(dialog, IDC_ASSERT_FILTER), TRUE);
						EnableWindow(GetDlgItem(dialog, IDC_INVERT_ASSERT_FILTER_FLAG), TRUE);
					}
				}
			}
			break;
		}
		break;

	case WM_LH_LOG_CLOSE_DIALOG:
		SetEvent(props->DialogClosedEvent);
		EndDialog(dialog, TRUE);
		break;
	}
	return FALSE;
}

// BW1W120 100062a0 BW1M119 null
static void LogDialogThread(void* props);

void LogDialogThread(void* props)
{
	DialogBoxParamA((HINSTANCE)LHLogger::DLLHModule, MAKEINTRESOURCEA(IDD_LOG_DIALOG), NULL, LogDialogProc,
	                (LPARAM)props);
	LHLogPropsSet::DialogHandle = INVALID_HANDLE_VALUE;
}

void LHLogPropsSet::ShowDialog()
{
	if (DialogHandle == INVALID_HANDLE_VALUE)
	{
		DialogHandle = (void*)LH_LOG_DIALOG_STARTING;
		_lhbeginthread("Log Dialog", LogDialogThread, 0, this, LH_LOG_DIALOG_THREAD_PRIORITY);
	}
}
