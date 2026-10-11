#include <windows.h>
#include <ctype.h>
#include <process.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "LHVersion.h"
#include "LHLogMacros.h"
#include "LHRegistry.h"
#include "LHTemplate.h"

#define FILEPATH "LHVersion.cpp"

enum
{
	IDD_VERSION = 103,
	IDD_COPYRIGHT = 104,
	IDC_RESTORE = 1016,
	IDC_VERSION_LIST = 1027,
	IDC_VERSION_CHANGES = 1029,
	IDC_VERSION_ALL = 1031,
	IDC_PASSWORD = 1033,
	IDC_RECIPIENT = 1035,
	IDC_PASSWORD_PROMPT = 1036,
	IDC_COPYRIGHT_OK = 1037,
	IDC_COPYRIGHT_CANCEL = 1038,
	IDC_VERSION_OK = 1039,
	IDC_COPYRIGHT_NAME = 1039,
	IDC_PASSWORD_NAME = 1041,
};

enum
{
	LH_VERSION_LIST_CHANGES = 0,
	LH_VERSION_LIST_ALL = 1,
	LH_VERSION_LIST_COUNT = 2,
	LH_VERSION_CRYPT_SEED = 0x913,
	LH_VERSION_INVALID_CHECKSUM = 0xffffffff,
	LH_VERSION_REGISTRY_NAME_LENGTH = 128,
	LH_VERSION_REGISTRY_DATA_LENGTH = 100,
	LH_VERSION_PASSWORD_INPUT_LENGTH = 128,
	LH_VERSION_MAJOR_MINOR_TEXT_LENGTH = 12,
	LH_VERSION_EXPIRY_FIELDS = 3,
	LH_VERSION_EXPIRY_CENTURY_PIVOT = 45,
	LH_VERSION_EXPIRY_TWO_DIGIT_LIMIT = 100,
	LH_VERSION_EXPIRY_YEAR_1900 = 1900,
	LH_VERSION_EXPIRY_YEAR_2000 = 2000,
	LH_VERSION_MAJOR_SHIFT = 16,
};

#define LH_VERSION_ENCRYPTED_TAG    "31415927"
#define LH_VERSION_AUTHOR_KEYWORD   "$Author: "
#define LH_VERSION_REVISION_KEYWORD "$Revision: "
#define LH_VERSION_DATE_KEYWORD     "$Date: "
#define LH_VERSION_KEYWORD_END      '$'

int                       LHVersion::VersionDialogRunning;
unsigned long             LHVersion::CurrentListState;
LHLinkedList<LHVersion*>* LHVersion::VersionInfo;
unsigned long             LHVersion::ModuleChecksum;
char*                     LHVersion::ModuleChecksumString;

LH_VERSION_INFO("LHLog", "4", "$Revision: 9 $", "$Author: Ddeptford $", "$Date: 1/16/01 7:39p $", "9/1/99",
                "defaults to HK_LOCAL_MACHINE on registry changes");

static char* RegistryPath = "Software\\Lionhead Studios Ltd\\Black & White\\LHVersion";

static LHVersion* CopyrightVersion;
static char       MajorMinorText[LH_VERSION_MAJOR_MINOR_TEXT_LENGTH];

// BW1W120 10006300 BW1M119 011707b0 (LHCombined Release)
static bool32_t CheckForSameVersion(LHVersionBlock* block, LHVersionBlock* registry_block);
// BW1W120 100081b0 BW1M119 null
static BOOL CALLBACK CopyrightDialogCallback(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam);
// BW1W120 10008c50 BW1M119 null
static BOOL CALLBACK VersionDialogCallback(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam);
// BW1W120 10008c70 BW1M119 null
static void VersionDialogThread(void* argument);

static bool32_t CheckForSameVersion(LHVersionBlock* block, LHVersionBlock* registry_block)
{
	char          name[LH_VERSION_REGISTRY_NAME_LENGTH];
	unsigned char data[LH_VERSION_REGISTRY_DATA_LENGTH];
	DWORD         nameSize;
	DWORD         dataSize;
	DWORD         type;

	HKEY  key = OpenRegistryKey(LHSPrintf("%s\\%s", RegistryPath, block->Name));
	DWORD index = 0;
	if (key == NULL)
	{
		return false;
	}

	memcpy(registry_block, block, sizeof(LHVersionBlock));
	registry_block->Comments[0] = '\0';
	registry_block->Date[0] = '\0';
	registry_block->Author[0] = '\0';
	registry_block->Minor[0] = '\0';
	registry_block->Major[0] = '\0';

	nameSize = sizeof(name);
	dataSize = sizeof(data);
	while (RegEnumValue(key, index, name, &nameSize, NULL, &type, data, &dataSize) == ERROR_SUCCESS)
	{
		if (type == REG_SZ)
		{
			if (!_stricmp(name, "MajorVersionNumber") && data[0])
			{
				strcpy(registry_block->Major, (char*)data);
			}
			if (!_stricmp(name, "MinorVersionNumber") && data[0])
			{
				strcpy(registry_block->Minor, (char*)data);
			}
			if (!_stricmp(name, "Author") && data[0])
			{
				strcpy(registry_block->Author, (char*)data);
			}
			if (!_stricmp(name, "Date") && data[0])
			{
				strcpy(registry_block->Date, (char*)data);
			}
			if (!_stricmp(name, "Comments") && data[0])
			{
				strcpy(registry_block->Comments, (char*)data);
			}
		}
		index++;
		nameSize = sizeof(name);
		dataSize = sizeof(data);
	}

	if (atol(registry_block->Major) == atol(block->Major) && atol(registry_block->Minor) == atol(block->Minor))
	{
		return true;
	}
	return false;
}

bool32_t LHVersion::CheckForNewerVersion(LHVersionBlock* registry_block)
{
	char          name[LH_VERSION_REGISTRY_NAME_LENGTH];
	unsigned char data[LH_VERSION_REGISTRY_DATA_LENGTH];
	DWORD         nameSize;
	DWORD         dataSize;
	DWORD         type;

	HKEY  key = OpenRegistryKey(LHSPrintf("%s\\%s", RegistryPath, Block->Name));
	DWORD index = 0;
	if (key == NULL)
	{
		return true;
	}

	memcpy(registry_block, Block, sizeof(LHVersionBlock));
	registry_block->Comments[0] = '\0';
	registry_block->Date[0] = '\0';
	registry_block->Author[0] = '\0';
	registry_block->Minor[0] = '\0';
	registry_block->Major[0] = '\0';

	nameSize = sizeof(name);
	dataSize = sizeof(data);
	while (RegEnumValue(key, index, name, &nameSize, NULL, &type, data, &dataSize) == ERROR_SUCCESS)
	{
		if (type == REG_SZ)
		{
			if (!_stricmp(name, "MajorVersionNumber") && data[0])
			{
				strcpy(registry_block->Major, (char*)data);
			}
			if (!_stricmp(name, "MinorVersionNumber") && data[0])
			{
				strcpy(registry_block->Minor, (char*)data);
			}
			if (!_stricmp(name, "Author") && data[0])
			{
				strcpy(registry_block->Author, (char*)data);
			}
			if (!_stricmp(name, "Date") && data[0])
			{
				strcpy(registry_block->Date, (char*)data);
			}
			if (!_stricmp(name, "Comments") && data[0])
			{
				strcpy(registry_block->Comments, (char*)data);
			}
		}
		index++;
		nameSize = sizeof(name);
		dataSize = sizeof(data);
	}

	if (atol(registry_block->Major) == atol(Block->Major))
	{
		return atol(registry_block->Minor) < atol(Block->Minor);
	}
	return atol(registry_block->Major) < atol(Block->Major);
}

LH_RETURN LHVersion::UpdateRegistry(LHVersionBlock* block)
{
	HKEY key = OpenRegistryKey(LHSPrintf("%s\\%s", RegistryPath, Block->Name));
	if (key == NULL)
	{
		key = CreateRegistryKey(LHSPrintf("%s\\%s", RegistryPath, Block->Name));
		if (key == NULL)
		{
			return LH_FAIL;
		}
	}

	if (RegSetValueEx(key, "MajorVersionNumber", 0, REG_SZ, (BYTE*)Block->Major, strlen(Block->Major)) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(154);
	if (RegSetValueEx(key, "MinorVersionNumber", 0, REG_SZ, (BYTE*)Block->Minor, strlen(Block->Minor)) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(155);
	if (RegSetValueEx(key, "Author", 0, REG_SZ, (BYTE*)Block->Author, strlen(Block->Author)) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(156);
	if (RegSetValueEx(key, "Date", 0, REG_SZ, (BYTE*)Block->Date, strlen(Block->Date)) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(157);
	if (RegSetValueEx(key, "Comments", 0, REG_SZ, (BYTE*)Block->Comments, strlen(Block->Comments)) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(158);
	if (RegSetValueEx(key, "MajorVersionNumber", 0, REG_SZ, (BYTE*)Block->Major, strlen(Block->Major)) != ERROR_SUCCESS)
		LH_LOG_WIN32_ERROR(159);

	RegCloseKey(key);
	return LH_OK;
}

unsigned long LHVersion::ChecksumBlock(unsigned char* block, unsigned short length)
{
	srand(LH_VERSION_CRYPT_SEED);
	unsigned long checksum = 0;
	for (unsigned short i = 0; i < length; i++)
	{
		checksum += block[i] + rand();
		srand(checksum);
	}
	return checksum;
}

void LHVersion::DecryptBlock(unsigned char* block, unsigned short length)
{
	srand(LH_VERSION_CRYPT_SEED);
	unsigned char* data = block;
	for (unsigned short i = 0; i < length; i++)
	{
		*data++ -= rand();
	}
}

void LHVersion::EncryptBlock(unsigned char* block, unsigned short length)
{
	srand(LH_VERSION_CRYPT_SEED);
	unsigned char* data = block;
	for (unsigned short i = 0; i < length; i++)
	{
		*data++ += rand();
	}
}

LH_RETURN LHVersion::ProcessFields()
{
	char* text = Block->Author;
	char* keyword = LH_VERSION_AUTHOR_KEYWORD;
	if (strstr(text, keyword))
	{
		for (; text[strlen(keyword)]; text++)
		{
			*text = text[strlen(keyword)];
		}
		while (isspace(*--text) || *text == LH_VERSION_KEYWORD_END)
		{
			*text = '\0';
		}
	}

	text = Block->Minor;
	keyword = LH_VERSION_REVISION_KEYWORD;
	if (strstr(text, keyword))
	{
		for (; text[strlen(keyword)]; text++)
		{
			*text = text[strlen(keyword)];
		}
		while (isspace(*--text) || *text == LH_VERSION_KEYWORD_END)
		{
			*text = '\0';
		}
	}

	text = Block->Date;
	keyword = LH_VERSION_DATE_KEYWORD;
	if (strstr(text, keyword))
	{
		for (; text[strlen(keyword)]; text++)
		{
			*text = text[strlen(keyword)];
		}
		while (isspace(*--text) || *text == LH_VERSION_KEYWORD_END)
		{
			*text = '\0';
		}
	}

	char terminator;
	if (sscanf(Block->Major, "%u%c", &MajorVersion, &terminator) != 1)
	{
		LH_ASSERT_FAIL("Tim: Major version number is not a valid integer", 194);
		return LH_FAIL;
	}
	if (sscanf(Block->Minor, "%u%c", &MinorVersion, &terminator) != 1)
	{
		LH_ASSERT_FAIL("Tim: Minor version number is not a valid integer", 199);
		return LH_FAIL;
	}
	return LH_OK;
}

LHVersion::LHVersion(LHVersionBlock* block)
{
	CurrentListState = IDC_VERSION_CHANGES;
	if (VersionInfo == NULL)
	{
		VersionInfo = new LHLinkedList<LHVersion*>[LH_VERSION_LIST_COUNT];
	}

	Block = block;
	if (LHLogger::DLLHModule == NULL)
	{
		LHLogger::DLLHModule = GetModuleHandle("LHLogR.dll");
	}

	VALIDATION validation = ValidateBlock();
	if (validation == VALIDATION_INVALID)
	{
		LH_ASSERT_FAIL(LHSPrintf("Tim: Invalid version block <%s>", block->Name), 224);
		exit(0);
	}

	if (ProcessFields() != LH_OK || FindKey(block->Name) != NULL)
	{
		return;
	}

	if (!_stricmp(LH_VERSION_NONE, block->Recipient))
	{
		block->Recipient[0] = '\0';
	}

	bool32_t hasPassword;
	if (!_stricmp(LH_VERSION_NONE, block->Password))
	{
		hasPassword = false;
		block->Password[0] = '\0';
	}
	else
	{
		hasPassword = true;
	}

	if (!_stricmp(LH_VERSION_NONE, block->Expiry))
	{
		block->Expiry[0] = '\0';
	}

	bool32_t isNewer;
	if (CheckForNewerVersion(&RegistryBlock))
	{
		VersionInfo[LH_VERSION_LIST_CHANGES].Add(this);
		isNewer = true;
	}
	else
	{
		isNewer = false;
	}

	if (CheckForSameVersion(Block, &RegistryBlock))
	{
		Block->Password[0] = '\0';
	}

	if (validation == VALIDATION_PLAIN && Block->Password[0])
	{
		LH_ASSERT_FORCED(0, "Tim: ***Warning: Unencrypted password block found", 272);
	}

	VersionInfo[LH_VERSION_LIST_ALL].Add(this);

	if (Block->Expiry[0] && !CheckExpiry() && hasPassword)
	{
		ShowCopyrightDialog();
		exit(0);
	}

	if (Block->Password[0] || strlen(Block->Recipient))
	{
		ShowCopyrightDialog();
		if (Declined == true)
		{
			exit(0);
		}
	}

	if (isNewer || hasPassword)
	{
		UpdateRegistry(Block);
	}

	if (ModuleChecksum == 0)
	{
		ComputeModuleChecksum();
	}
}

bool32_t LHVersion::CheckExpiry()
{
	int day;
	int month;
	int year;
	if (sscanf(Block->Expiry, "%d/%d/%d", &day, &month, &year) != LH_VERSION_EXPIRY_FIELDS)
	{
		LH_ASSERT_FAIL("Tim: Invalid expiry date specified use dd/mm/yy", 305);
	}

	if (year < LH_VERSION_EXPIRY_CENTURY_PIVOT)
	{
		year += LH_VERSION_EXPIRY_YEAR_2000;
	}
	else if (year < LH_VERSION_EXPIRY_TWO_DIGIT_LIMIT)
	{
		year += LH_VERSION_EXPIRY_YEAR_1900;
	}

	SYSTEMTIME time;
	GetSystemTime(&time);
	if (time.wYear > year)
	{
		return false;
	}
	if (time.wYear == year)
	{
		if (time.wMonth > month)
		{
			return false;
		}
		if (time.wMonth == month && time.wDay > day)
		{
			return false;
		}
	}
	return true;
}

void LHVersion::SetModuleChecksumError()
{
	LH_LOG_ERROR(LH_LOG_CODE_ERROR, "Could not compute module checksum", 334);
	SetModuleChecksumString("Could not compute module checksum");
	ModuleChecksum = LH_VERSION_INVALID_CHECKSUM;
}

void LHVersion::SetModuleChecksumString(char* string)
{
	ModuleChecksumString = (char*)malloc(strlen(string) + 1);
	if (ModuleChecksumString)
	{
		strcpy(ModuleChecksumString, string);
	}
	else
	{
		LH_LOG_ERROR(LH_LOG_CODE_NO_MEMORY, LH_LOG_NO_MEMORY_TEXT, 348);
		ModuleChecksum = LH_VERSION_INVALID_CHECKSUM;
	}
}

void LHVersion::ComputeModuleChecksum()
{
	char filename[MAX_PATH];
	if (!GetModuleFileName(NULL, filename, MAX_PATH))
	{
		SetModuleChecksumError();
		LH_LOG_WIN32_ERROR(367);
		return;
	}

	HANDLE file = CreateFile(filename, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, NULL);
	if (file == INVALID_HANDLE_VALUE)
	{
		LH_LOG_WIN32_ERROR(373);
		SetModuleChecksumError();
		return;
	}

	BY_HANDLE_FILE_INFORMATION information;
	if (!GetFileInformationByHandle(file, &information))
	{
		SetModuleChecksumError();
		return;
	}

	DWORD          size = GetFileSize(file, NULL);
	unsigned char* buffer = (unsigned char*)malloc(size);
	DWORD          bytesRead;
	if (!ReadFile(file, buffer, size, &bytesRead, NULL) || bytesRead != size)
	{
		SetModuleChecksumError();
		free(buffer);
		CloseHandle(file);
		return;
	}

	ModuleChecksum = 0;
	for (DWORD i = 0; i < size; i++)
	{
		ModuleChecksum += buffer[i];
	}
	free(buffer);

	FILETIME   localTime;
	SYSTEMTIME systemTime;
	if (!FileTimeToLocalFileTime(&information.ftLastWriteTime, &localTime) ||
	    !FileTimeToSystemTime(&localTime, &systemTime))
	{
		LH_LOG_WIN32_ERROR(402);
		SetModuleChecksumError();
		return;
	}

	SetModuleChecksumString(LHSPrintf("Module:%s Length:%d Date:%d/%d/%d %d:%d:%d Checksum:%08X",
	                                  LHLogger::GetFileName(filename), size, systemTime.wDay, systemTime.wMonth,
	                                  systemTime.wYear, systemTime.wHour, systemTime.wMinute, systemTime.wSecond,
	                                  ModuleChecksum));

	if (!CloseHandle(file))
	{
		LH_LOG_WIN32_ERROR(421);
	}
}

int LHVersion::CopyrightDialogProc(HWND__* hwnd, unsigned int msg, unsigned int wparam, long lparam)
{
	switch (msg)
	{
	case WM_INITDIALOG:
		SetDlgItemText(hwnd, IDC_COPYRIGHT_NAME, LHSPrintf("%s %s.%s", Block->Name, Block->Major, Block->Minor));
		if (!CheckExpiry())
		{
			ShowWindow(GetDlgItem(hwnd, IDC_COPYRIGHT_CANCEL), SW_HIDE);
			ShowWindow(GetDlgItem(hwnd, IDC_PASSWORD), SW_HIDE);
			ShowWindow(GetDlgItem(hwnd, IDC_PASSWORD_PROMPT), SW_HIDE);
			ShowWindow(GetDlgItem(hwnd, IDC_PASSWORD_NAME), SW_HIDE);
			SetDlgItemText(hwnd, IDC_RECIPIENT, "*** VERSION EXPIRED ***");
			break;
		}

		if (strlen(Block->Password) == 0)
		{
			ShowWindow(GetDlgItem(hwnd, IDC_PASSWORD_PROMPT), SW_HIDE);
			ShowWindow(GetDlgItem(hwnd, IDC_COPYRIGHT_CANCEL), SW_HIDE);
			ShowWindow(GetDlgItem(hwnd, IDC_PASSWORD), SW_HIDE);
			ShowWindow(GetDlgItem(hwnd, IDC_PASSWORD_NAME), SW_HIDE);
		}
		else
		{
			SetDlgItemText(hwnd, IDC_PASSWORD_NAME, LHSPrintf("%s %s.%s", Block->Name, Block->Major, Block->Minor));
		}

		if (strlen(Block->Recipient) != 0)
		{
			if (strlen(Block->Expiry) != 0)
			{
				SetDlgItemText(hwnd, IDC_RECIPIENT, LHSPrintf("%s (expires %s)", Block->Recipient, Block->Expiry));
			}
			else
			{
				SetDlgItemText(hwnd, IDC_RECIPIENT, Block->Recipient);
			}
		}
		break;

	case WM_COMMAND:
		switch (LOWORD(wparam))
		{
		case IDCANCEL:
			return false;

		case IDC_COPYRIGHT_OK:
			if (strlen(Block->Password) != 0)
			{
				char password[LH_VERSION_PASSWORD_INPUT_LENGTH];
				GetDlgItemText(hwnd, IDC_PASSWORD, password, sizeof(password));
				if (strcmp(password, Block->Password))
				{
					MessageBox(hwnd, "Please Re-enter Password", "Password", MB_OK);
					return false;
				}
			}
			Declined = false;
			EndDialog(hwnd, true);
			break;

		case IDC_COPYRIGHT_CANCEL:
			Declined = true;
			EndDialog(hwnd, true);
			break;
		}
		break;
	}
	return false;
}

static BOOL CALLBACK CopyrightDialogCallback(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
{
	if (CopyrightVersion == NULL)
	{
		CopyrightVersion = (LHVersion*)lparam;
	}
	return CopyrightVersion->CopyrightDialogProc(hwnd, msg, wparam, lparam);
}

void LHVersion::ShowCopyrightDialog()
{
	if (DialogBoxParam((HINSTANCE)LHLogger::DLLHModule, MAKEINTRESOURCE(IDD_COPYRIGHT), NULL, CopyrightDialogCallback,
	                   (LPARAM)this) == -1)
	{
		LH_LOG_WIN32_ERROR(437);
	}
}

LHVersion::VALIDATION LHVersion::ValidateBlock()
{
	VALIDATION validation;
	if (!strcmp(LH_VERSION_START_TAG, Block->StartTag))
	{
		validation = VALIDATION_PLAIN;
	}
	else if (!strcmp(LH_VERSION_ENCRYPTED_TAG, Block->StartTag))
	{
		validation = VALIDATION_ENCRYPTED;
		DecryptBlock((unsigned char*)Block->Build, sizeof(LHVersionBlock) - sizeof(Block->StartTag));
		strcpy(Block->StartTag, LH_VERSION_START_TAG);
		unsigned long checksum = ChecksumBlock((unsigned char*)Block, offsetof(LHVersionBlock, Checksum));
		if (*(unsigned long*)Block->Checksum != checksum)
		{
			validation = VALIDATION_INVALID;
		}
	}
	else
	{
		validation = VALIDATION_INVALID;
	}

	if (strcmp(LH_VERSION_END_TAG, Block->EndTag))
	{
		return VALIDATION_INVALID;
	}
	return validation;
}

LHVersion::~LHVersion()
{
	if (VersionInfo)
	{
		for (int i = 0; i < LH_VERSION_LIST_COUNT; i++)
		{
			LHLinkedList<LHVersion*>* list = &VersionInfo[i];
			while (list->GetStart())
			{
				list->Remove(list->GetStart()->Data);
			}
		}
		delete[] VersionInfo;
		VersionInfo = NULL;
	}

	if (ModuleChecksumString)
	{
		free(ModuleChecksumString);
		ModuleChecksumString = NULL;
	}
}

LHVersion* LHVersion::FindKey(char* name)
{
	for (LHLinkedNode<LHVersion*>* node = VersionInfo[LH_VERSION_LIST_ALL].GetStart(); node; node = node->Next.Get())
	{
		LHVersion* version = node->Data;
		if (!_stricmp(version->Block->Name, name))
		{
			return version;
		}
	}
	return NULL;
}

void LHVersion::RepopulateList(HWND__* hwnd, unsigned long state)
{
	LHSPrintf                 text;
	LHLinkedNode<LHVersion*>* node;
	if (state == IDC_VERSION_CHANGES)
	{
		node = VersionInfo[LH_VERSION_LIST_CHANGES].GetStart();
	}
	else
	{
		node = VersionInfo[LH_VERSION_LIST_ALL].GetStart();
	}

	SendDlgItemMessage(hwnd, IDC_VERSION_LIST, LB_RESETCONTENT, 0, 0);
	for (; node; node = node->Next.Get())
	{
		LHVersion* version = node->Data;
		text.SetString("%s (", version->Block->Name);
		if (state == IDC_VERSION_CHANGES && version->RegistryBlock.Major[0])
		{
			text.AppendString("%s.%s->", version->RegistryBlock.Major, version->RegistryBlock.Minor);
		}
		text.AppendString("%s.%s-%s)", version->Block->Major, version->Block->Minor, version->Block->Build);
		SendDlgItemMessage(hwnd, IDC_VERSION_LIST, LB_ADDSTRING, 0, (LPARAM)text);
	}
}

int LHVersion::VersionDialogProc(HWND__* hwnd, unsigned int msg, unsigned int wparam, long lparam)
{
	LHSPrintf text;
	switch (msg)
	{
	case WM_INITDIALOG:
		if (CurrentListState == IDC_VERSION_CHANGES)
		{
			SetWindowText(hwnd, "New Version Information");
			CheckDlgButton(hwnd, IDC_VERSION_CHANGES, BST_CHECKED);
			CheckDlgButton(hwnd, IDC_VERSION_ALL, BST_UNCHECKED);
		}
		else
		{
			SetWindowText(hwnd, "Current Version Information");
			CheckDlgButton(hwnd, IDC_VERSION_CHANGES, BST_UNCHECKED);
			CheckDlgButton(hwnd, IDC_VERSION_ALL, BST_CHECKED);
		}
		RepopulateList(hwnd, CurrentListState);
		break;

	case WM_COMMAND:
		switch (LOWORD(wparam))
		{
		case IDC_VERSION_CHANGES:
			SetWindowText(hwnd, "New Version Information");
			CurrentListState = IDC_VERSION_CHANGES;
			RepopulateList(hwnd, IDC_VERSION_CHANGES);
			break;

		case IDC_VERSION_ALL:
			SetWindowText(hwnd, "Current Version Information");
			CurrentListState = IDC_VERSION_ALL;
			RepopulateList(hwnd, IDC_VERSION_ALL);
			break;

		case IDCANCEL:
		case IDC_RESTORE:
		case IDC_VERSION_OK:
			EndDialog(hwnd, true);
			break;

		case IDC_VERSION_LIST:
			if (HIWORD(wparam) == LBN_DBLCLK)
			{
				short index = (short)SendMessage((HWND)lparam, LB_GETCURSEL, 0, 0);
				if (index != LB_ERR)
				{
					LHVersion* version = VersionInfo[CurrentListState == IDC_VERSION_CHANGES ? LH_VERSION_LIST_CHANGES
					                                                                         : LH_VERSION_LIST_ALL]
					                         .GetAtPosition(index);
					if (CurrentListState == IDC_VERSION_CHANGES && version->RegistryBlock.Major[0])
					{
						text.AppendString("---OLD VERSION %s.%s---\nAuthor:%s\nDate:%s\nComments:%s\n\n",
						                  version->RegistryBlock.Major, version->RegistryBlock.Minor,
						                  version->RegistryBlock.Author, version->RegistryBlock.Date,
						                  version->RegistryBlock.Comments);
					}
					text.AppendString("---CURRENT VERSION %s.%s---\nAuthor:%s\nDate:%s\nComments:%s\n\n",
					                  version->Block->Major, version->Block->Minor, version->Block->Author,
					                  version->Block->Date, version->Block->Comments);
					MessageBox(hwnd, text, LHSPrintf("%s version information", version->Block->Name), MB_OK);
				}
			}
			break;
		}
		break;
	}
	return false;
}

LH_RETURN LHVersion::GetMajorMinor(char* module, unsigned long* major, unsigned long* minor)
{
	LHVersion* version = FindKey(module);
	if (version == NULL)
	{
		return LH_FAIL;
	}
	*major = version->MajorVersion;
	*minor = version->MinorVersion;
	return LH_OK;
}

LH_RETURN LHVersion::GetMajorMinorText(char* module, char** text)
{
	char key[] = "Xbed6d040xTbW&N4xxls%1m9c$Rr~(Ff9>Z/Ptw]l{$S2ze39+bg^#t,*j6uKBMx";
	for (unsigned int i = 0; i < strlen(key); i++)
	{
		key[i]++;
	}

	unsigned long major;
	unsigned long minor;
	if (GetMajorMinor(module, &major, &minor) != LH_OK)
	{
		return LH_FAIL;
	}
	sprintf(MajorMinorText, "%d.%d", major, minor);
	*text = MajorMinorText;
	return LH_OK;
}

LH_RETURN LHVersion::GetMajorMinorULONG(char* module, unsigned long* version)
{
	unsigned long major;
	unsigned long minor;
	if (GetMajorMinor(module, &major, &minor) != LH_OK)
	{
		return LH_FAIL;
	}
	*version = (major << LH_VERSION_MAJOR_SHIFT) + minor;
	return LH_OK;
}

static BOOL CALLBACK VersionDialogCallback(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
{
	return LHVersion::VersionDialogProc(hwnd, msg, wparam, lparam);
}

static void VersionDialogThread(void* argument)
{
	DialogBoxParam((HINSTANCE)LHLogger::DLLHModule, MAKEINTRESOURCE(IDD_VERSION), NULL, VersionDialogCallback, 0);
	LHVersion::VersionDialogRunning = false;
}

void LHVersion::ShowVersionDialog(bool32_t show_all)
{
	if ((show_all || VersionInfo[LH_VERSION_LIST_CHANGES].Count) && !VersionDialogRunning)
	{
		VersionDialogRunning = true;
		if (show_all)
		{
			CurrentListState = IDC_VERSION_ALL;
			_beginthread(VersionDialogThread, 0, NULL);
		}
		else
		{
			VersionDialogThread(NULL);
		}
	}
}
