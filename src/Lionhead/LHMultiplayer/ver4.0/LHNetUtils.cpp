#define LH_MULTIPLAYER_EXPORTS
#include "LHNetUtils.h"

#include "LHSocket.h" /* Before <windows.h>: it includes <winsock2.h> */

#include <ctype.h>
#include <io.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>
#include <windows.h>
#include <ras.h>

#include <Lionhead/LHLog/ver4.0/LHRegistry.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include <Lionhead/LHLog/ver4.0/LHVersion.h>

#include "LHNetLog.h"
#include "LHNetEvent.h"
#include "LHNetTypes.h"
#include "LHSNMP.h"
#include "LHTransportInfo.h"

enum
{
	LH_NET_PROFILE_KEY_LENGTH = LH_MAX_NAME_LENGTH * 4,
	LH_NET_PROFILE_KEY_BUFFER_SIZE = 256,
	LH_NET_PROFILE_NAME_BUFFER_SIZE = 128,
	LH_NET_CONVERSION_BUFFER_SIZE = 1024,
	LH_NET_MAX_RAS_CONNECTIONS = 1024,
	LH_NET_MAX_RAS_DEVICES = 128,
};

const char* LH_NET_REGISTRY_KEY = "Software\\Lionhead Studios Ltd\\Black & White\\LHMultiplayer";
const char* LH_NET_PROFILES_KEY = "Software\\Lionhead Studios Ltd\\Black & White\\LHMultiplayer\\Profiles";
const char* LH_NET_MACHINE_DEFAULT_BROWSER = "SOFTWARE\\Classes\\htmlfile\\shell\\opennew\\command";
const char* LH_NET_BW_CURRENT_VERSION = "Software\\Lionhead Studios Ltd\\Black & White";
const char* LH_NET_PROFILE = "Profile";
const char* LH_NET_PROFILE_FILE_NAME = "file";
const char* LH_NET_PROFILE_LOGIN_NAME = "login name";
const char* LH_NET_REGISTRY_LOBBY = "lobby";
const char* LH_NET_REGISTRY_LOGIN_SERVER = "login";

static char* InternetTestHosts[] = {"www.bwgame.com", "www.lionhead.com", "www.ea.com", NULL};
char         CheckInternetConnectionOptions = -1;

static wchar_t CurrentProfile[LH_MAX_NAME_LENGTH + 1];
static char    CurrentProfileKey[LH_NET_PROFILE_KEY_LENGTH + 1];

// BW1W120 10019270 BW1M119 01103e80 (LHCombined Release)
char* ProfileNameToKey(wchar_t* profile);
// BW1W120 10019340 BW1M119 01103e00 (LHCombined Release)
int HEX2INT(char c);

inline unsigned char* LHNetEncodeULONG(unsigned char* buffer, unsigned long value)
{
	memcpy(buffer, &value, sizeof(value));
	return buffer + sizeof(value);
}

inline unsigned char* LHNetDecodeULONG(unsigned char* buffer, unsigned long* value)
{
	memcpy(value, buffer, sizeof(*value));
	return buffer + sizeof(*value);
}

inline unsigned char* LHNetEncodeString(unsigned char* buffer, char* string)
{
	if (string != NULL)
	{
		*buffer++ = 1;
		strcpy((char*)buffer, string);
		buffer += strlen(string) + 1;
	}
	else
	{
		*buffer++ = 0;
	}
	return buffer;
}

inline unsigned char* LHNetEncodeData(unsigned char* buffer, unsigned long length, void* data)
{
	memcpy(buffer, &length, sizeof(length));
	buffer += sizeof(length);
	if (length != 0)
	{
		if (data == NULL)
			return NULL;
		memcpy(buffer, data, length);
		buffer += length;
	}
	return buffer;
}

inline unsigned char* LHNetDecodeString(unsigned char* buffer, char** string)
{
	if (*buffer == 0)
	{
		buffer++;
		*string = NULL;
	}
	else
	{
		buffer++;
		*string = (char*)buffer;
		buffer += strlen((char*)buffer) + 1;
	}
	return buffer;
}

inline unsigned char* LHNetDecodeData(unsigned char* buffer, unsigned long* length, void** data)
{
	memcpy(length, buffer, sizeof(*length));
	buffer += sizeof(*length);
	if (*length != 0)
	{
		*data = buffer;
		buffer += *length;
	}
	else
	{
		*data = NULL;
	}
	return buffer;
}

bool32_t LHNetIsDisconnectionStatus(LH_NET_LOG_ERROR_LIST status)
{
	return status == LH_NET_LOG_ERROR_ALREADY_CONNECTED || status == LH_NET_LOG_ERROR_UNSUPPORTED_PROTOCOL ||
	       status == LH_NET_LOG_ERROR_UNSUPPORTED_APPLICATION;
}

LHLocalLobbyInfo* LHNetFindLocalLobby(LHLinkedList<LHLocalLobbyInfo*>* list, LHTransportInfo* transport_info)
{
	for (LHLinkedNode<LHLocalLobbyInfo*>* node = list->GetStart(); node != NULL; node = node->next.Get())
	{
		LHLocalLobbyInfo* lobby = node->payload;
		if (lobby->ConnectionAcceptor.Compare(transport_info) == 0)
			return lobby;
	}
	return NULL;
}

LHLocalLobbyInfo* LHNetFindLocalLobby(LHLinkedList<LHLocalLobbyInfo*>* list, char* name)
{
	for (LHLinkedNode<LHLocalLobbyInfo*>* node = list->GetStart(); node != NULL; node = node->next.Get())
	{
		LHLocalLobbyInfo* lobby = node->payload;
		if (strcmp(lobby->ConnectionAcceptor.GetIP(), name) == 0)
			return lobby;
	}
	return NULL;
}

unsigned long LHNetGetEncodedStringListLength(LHLinkedList<char*>* list)
{
	unsigned long length = sizeof(unsigned long);
	if (list == NULL)
		return length;
	for (LHLinkedNode<char*>* node = list->GetStart(); node != NULL; node = node->next.Get())
		length += node->payload != NULL ? strlen(node->payload) + 2 : 1;
	return length;
}

unsigned char* LHNetEncodeStringList(unsigned char* buffer, LHLinkedList<char*>* list)
{
	unsigned long count = list != NULL ? list->count : 0;
	memcpy(buffer, &count, sizeof(count));
	buffer += sizeof(count);
	if (list == NULL)
		return buffer;
	for (LHLinkedNode<char*>* node = list->GetStart(); node != NULL; node = node->next.Get())
	{
		buffer = LHNetEncodeString(buffer, node->payload);
	}
	return buffer;
}

unsigned char* LHNetDecodeStringList(unsigned char* buffer, LHLinkedList<char*>* list)
{
	for (LHLinkedNode<char*>* node = list->GetStart(); node != NULL; node = node->next.Get())
		free(node->payload);
	list->RemoveAll();

	unsigned long count;
	memcpy(&count, buffer, sizeof(count));
	buffer += sizeof(count);
	for (unsigned short i = 0; i < count; i++)
	{
		char* string;
		buffer = LHNetDecodeString(buffer, &string);
		list->Add(_strdup(string));
	}
	return buffer;
}

char* LHNetGetFormatDescriptor(long type, LHNetMessageFormatDescriptor* descriptors)
{
	for (unsigned short i = 0; descriptors[i].Format != NULL; i++)
	{
		if (descriptors[i].Type == type)
			return descriptors[i].Format;
	}
	return NULL;
}

bool32_t LHNetStringMatch(char* pattern, char* string)
{
	if (pattern == NULL || pattern[0] == '\0')
		return false;
	int i;
	for (i = 0; pattern[i] != '\0' && pattern[i] == string[i]; i++)
		;
	return pattern[i] != '\0';
}

unsigned long LHNetGetEncodedFileLength(char* file_name)
{
	char          path[MAX_PATH];
	unsigned long length = (file_name != NULL ? strlen(file_name) + 2 : 1) + sizeof(LH_USER_ID) + 1;
	if (file_name != NULL && file_name[0] != '\0')
	{
		sprintf(path, "%s%s", LHNetEvent::UserFileDirectory, file_name);
		HANDLE file = CreateFile(path, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_ALWAYS, 0, NULL);
		if (file != INVALID_HANDLE_VALUE)
		{
			length += GetFileSize(file, NULL) + sizeof(unsigned long);
			CloseHandle(file);
		}
	}
	return length;
}

unsigned char* LHNetEncodeFile(unsigned char* buffer, LH_USER_ID user_id, char* file_name)
{
	char          path[MAX_PATH];
	unsigned long bytesRead;

	buffer = LHNetEncodeULONG(buffer, user_id);
	buffer = LHNetEncodeString(buffer, file_name);

	if (file_name != NULL && file_name[0] != '\0')
	{
		sprintf(path, "%s%s", LHNetEvent::UserFileDirectory, file_name);
		HANDLE file = CreateFile(path, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_ALWAYS, 0, NULL);
		if (file != INVALID_HANDLE_VALUE)
		{
			*buffer++ = 1;
			unsigned long  size = GetFileSize(file, NULL);
			unsigned char* data = new unsigned char[size];
			if (!ReadFile(file, data, size, &bytesRead, NULL))
			{
				buffer[-1] = 0;
				CloseHandle(file);
				delete[] data;
				return buffer;
			}
			if (bytesRead != size)
				size = bytesRead;
			CloseHandle(file);
			buffer = LHNetEncodeData(buffer, size, data);
			delete[] data;
			return buffer;
		}
	}
	*buffer = 0;
	return buffer + 1;
}

unsigned long LHNetGetNetEventLength(LHNetEvent* net_event)
{
	return (unsigned short)(net_event->GetPacket()->GetDataLen() + sizeof(unsigned short));
}

unsigned char* LHNetDecodeNetEvent(unsigned char* buffer, LHNetEvent** net_event)
{
	*net_event = LHNetEvent::CreateFromPacket((LHPacket*)buffer);
	return buffer + (unsigned short)((*net_event)->GetPacket()->GetDataLen() + sizeof(unsigned short));
}

unsigned char* LHNetEncodeNetEvent(unsigned char* buffer, LHNetEvent* net_event)
{
	memcpy(buffer, net_event->GetPacket(),
	       (unsigned short)(net_event->GetPacket()->GetDataLen() + sizeof(unsigned short)));
	return buffer + (unsigned short)(net_event->GetPacket()->GetDataLen() + sizeof(unsigned short));
}

unsigned char* LHNetDecodeFile(unsigned char* buffer, char** file_name, LH_USER_ID* user_id)
{
	char          path[MAX_PATH];
	unsigned long bytesWritten;

	buffer = LHNetDecodeULONG(buffer, (unsigned long*)user_id);
	char* name;
	buffer = LHNetDecodeString(buffer, &name);
	*file_name = name;

	if (name == NULL || name[0] == '\0' || *buffer == 0)
		return buffer + 1;

	sprintf(path, "%s%s", LHNetEvent::UserFileDirectory, name);
	DWORD attributes = GetFileAttributes(path);
	if (attributes != (DWORD)-1)
	{
		SetFileAttributes(path, attributes & ~FILE_ATTRIBUTE_READONLY);
		_unlink(path);
	}
	HANDLE file = CreateFile(path, GENERIC_WRITE, FILE_SHARE_READ, NULL, OPEN_ALWAYS, 0, NULL);
	if (file == INVALID_HANDLE_VALUE)
	{
		*buffer = 0;
		return buffer + 1;
	}
	*buffer++ = 1;
	unsigned long size;
	void*         data;
	buffer = LHNetDecodeData(buffer, &size, &data);
	if (!WriteFile(file, data, size, &bytesWritten, NULL))
	{
		CloseHandle(file);
		return buffer;
	}
	CloseHandle(file);
	return buffer;
}

wchar_t* LHNetGetCurrentUsedProfile()
{
	return CurrentProfile;
}

wchar_t* LHNetCreateDefaultProfile(wchar_t* profile)
{
	static wchar_t DefaultProfileName[LH_MAX_NAME_LENGTH + 1];
	unsigned long  size;
	unsigned long  seed;

	memset(DefaultProfileName, 0, sizeof(DefaultProfileName));
	if (profile == NULL || profile[0] == 0)
	{
		size = sizeof(DefaultProfileName) - 1;
		if (!GetUserNameW(DefaultProfileName, &size))
			return NULL;
		profile = DefaultProfileName;
	}
	if (LHNetCheckProfileExists(profile))
	{
		LHNetUseProfile(profile);
		return profile;
	}

	seed = GetTickCount();
	LHVersion::EncryptBlock((unsigned char*)&seed, sizeof(seed));
	LHNetUseProfile(profile);
	LHNetSetCurrentProfileWString((char*)LH_NET_PROFILE_LOGIN_NAME, profile);
	LHNetSetCurrentProfileString((char*)LH_NET_PROFILE_FILE_NAME, LHSPrintf("C%x.erc", seed));
	wchar_t* registryProfile = LHNetGetCurrentProfileNameFromRegistry();
	if (registryProfile == NULL || registryProfile[0] == 0)
		LHNetSaveDefaultProfileNameInRegistry(profile);
	return profile;
}

void LHNetUseProfile(wchar_t* profile)
{
	if (profile == NULL)
		return;
	if (profile != CurrentProfile)
		wcsncpy(CurrentProfile, profile, LH_MAX_NAME_LENGTH);
	strcpy(CurrentProfileKey, ProfileNameToKey(CurrentProfile));
}

wchar_t* LHNetGetCurrentProfileNameFromRegistry()
{
	static wchar_t RegistryProfileName[LH_MAX_NAME_LENGTH + 1];

	memset(RegistryProfileName, 0, sizeof(RegistryProfileName));
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	unsigned long size = LH_MAX_NAME_LENGTH;
	LH_RETURN     result =
		RegistryRetrieveWString((char*)LH_NET_REGISTRY_KEY, (char*)LH_NET_PROFILE, RegistryProfileName, &size);
	LHRegistrySetCurrentKey(key);
	if (result == LH_OK)
		return wcslen(RegistryProfileName) != 0 ? RegistryProfileName : NULL;
	return NULL;
}

LH_RETURN LHNetSaveDefaultProfileNameInRegistry(wchar_t* profile)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	LH_RETURN result = RegistrySetWString((char*)LH_NET_REGISTRY_KEY, (char*)LH_NET_PROFILE, profile);
	LHRegistrySetCurrentKey(key);
	return result;
}

bool32_t LHNetCheckProfileExists(wchar_t* profile)
{
	if (profile == NULL || profile[0] == 0)
		return false;
	char*           profileKey = ProfileNameToKey(profile);
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	bool32_t exists = RegistryCheckKey(LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, profileKey));
	LHRegistrySetCurrentKey(key);
	return exists;
}

LH_RETURN LHNetGetCurrentProfileUlong(char* name, unsigned long* value)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	LH_RETURN result = RegistryRetrieveULong(LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, CurrentProfileKey), name, value);
	LHRegistrySetCurrentKey(key);
	return result;
}

LH_RETURN LHNetGetCurrentProfileString(char* name, char* value, unsigned long* size)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	LH_RETURN result =
		RegistryRetrieveString(LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, CurrentProfileKey), name, value, size);
	LHRegistrySetCurrentKey(key);
	return result;
}

LH_RETURN LHNetGetCurrentProfileWString(char* name, wchar_t* value, unsigned long* size)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	LH_RETURN result =
		RegistryRetrieveWString(LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, CurrentProfileKey), name, value, size);
	LHRegistrySetCurrentKey(key);
	return result;
}

LH_RETURN LHNetGetCurrentProfileDouble(char* name, double* value)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	LH_RETURN result = RegistryRetrieveDouble(LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, CurrentProfileKey), name, value);
	LHRegistrySetCurrentKey(key);
	return result;
}

LH_RETURN LHNetGetCurrentProfileData(char* name, unsigned char* data, unsigned long* size)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	LH_RETURN result =
		RegistryRetrieveData(LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, CurrentProfileKey), name, data, size);
	LHRegistrySetCurrentKey(key);
	return result;
}

LH_RETURN LHNetSetCurrentProfileUlong(char* name, unsigned long value)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	LH_RETURN result = RegistrySetULong(LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, CurrentProfileKey), name, value);
	LHRegistrySetCurrentKey(key);
	return result;
}

LH_RETURN LHNetSetCurrentProfileString(char* name, char* value)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	LH_RETURN result = RegistrySetString(LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, CurrentProfileKey), name, value);
	LHRegistrySetCurrentKey(key);
	return result;
}

LH_RETURN LHNetSetCurrentProfileWString(char* name, wchar_t* value)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	LH_RETURN result = RegistrySetWString(LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, CurrentProfileKey), name, value);
	LHRegistrySetCurrentKey(key);
	return result;
}

LH_RETURN LHNetSetCurrentProfileDouble(char* name, double value)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	LH_RETURN result = RegistrySetDouble(LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, CurrentProfileKey), name, value);
	LHRegistrySetCurrentKey(key);
	return result;
}

LH_RETURN LHNetSetCurrentProfileData(char* name, unsigned char* data, unsigned long size)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	LH_RETURN result = RegistrySetData(LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, CurrentProfileKey), name, data, size);
	LHRegistrySetCurrentKey(key);
	return result;
}

LH_RETURN LHNetGetProfileList(LHLinkedList<wchar_t*>* list)
{
	HKEY  key;
	DWORD subKeyCount;
	DWORD maxSubKeyLength;

	if (RegOpenKey(HKEY_CURRENT_USER, LH_NET_PROFILES_KEY, &key) != ERROR_SUCCESS)
		return LH_ERROR;
	if (RegQueryInfoKey(key, NULL, NULL, NULL, &subKeyCount, &maxSubKeyLength, NULL, NULL, NULL, NULL, NULL, NULL) !=
	    ERROR_SUCCESS)
		return LH_ERROR;
	for (DWORD i = 0; i < subKeyCount; i++)
	{
		wchar_t* profile = new wchar_t[maxSubKeyLength + 1];
		if (profile == NULL)
			return LH_ERROR;
		if (RegEnumKey(key, i, (char*)profile, maxSubKeyLength + 1) != ERROR_SUCCESS)
			return LH_ERROR;
		wcscpy(profile, KeyToProfileName((char*)profile));
		list->Add(profile);
	}
	RegCloseKey(key);
	return LH_OK;
}

LH_RETURN LHNetFreeProfileList(LHLinkedList<wchar_t*>* list)
{
	LHLinkedNode<wchar_t*>* node;
	while ((node = list->head.Get()) != NULL)
	{
		wchar_t* profile = node->payload;
		list->Remove(profile);
		delete[] profile;
	}
	return LH_OK;
}

LH_RETURN LHNetDeleteProfile(wchar_t* profile)
{
	LHRegistryGetCurrentKey();
	if (RegDeleteKey(HKEY_CURRENT_USER, LHSPrintf("%s\\%s", LH_NET_PROFILES_KEY, ProfileNameToKey(profile))) !=
	    ERROR_SUCCESS)
	{
		LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
		return LH_FAIL;
	}
	return LH_OK;
}

char* ProfileNameToKey(wchar_t* profile)
{
	static char ProfileKey[LH_NET_PROFILE_KEY_BUFFER_SIZE];
	char*       hexDigits = "0123456789abcdef";
	int         length = 0;

	for (int i = 0; i < (int)wcslen(profile); i++)
	{
		if (profile[i] < 0x80 && isalnum((char)profile[i]))
		{
			ProfileKey[length++] = '_';
			ProfileKey[length] = (char)profile[i];
		}
		else
		{
			ProfileKey[length++] = hexDigits[profile[i] >> 12];
			ProfileKey[length++] = hexDigits[(profile[i] >> 8) & 0xf];
			ProfileKey[length++] = hexDigits[(profile[i] >> 4) & 0xf];
			ProfileKey[length] = hexDigits[profile[i] & 0xf];
		}
		if (++length >= LH_NET_PROFILE_KEY_BUFFER_SIZE - 4)
			break;
	}
	ProfileKey[length] = '\0';
	return ProfileKey;
}

int HEX2INT(char c)
{
	c = toupper(c);
	if (c >= 'A' && c <= 'F')
		return c - 'A' + 10;
	if (c >= '0' && c <= '9')
		return c - '0';
	return 0;
}

wchar_t* KeyToProfileName(char* key)
{
	static wchar_t ProfileName[LH_NET_PROFILE_NAME_BUFFER_SIZE];
	int            length;

	if (!isxdigit(key[0]) && key[0] != '_')
	{
		for (length = 0; length < (int)strlen(key); length++)
			ProfileName[length] = key[length];
		ProfileName[length] = 0;
		return ProfileName;
	}

	length = 0;
	for (int i = 0; i < (int)strlen(key);)
	{
		if (key[i] == '_')
		{
			ProfileName[length++] = key[i + 1];
			i += 2;
		}
		else
		{
			ProfileName[length++] =
				(HEX2INT(key[i]) << 12) + (HEX2INT(key[i + 1]) << 8) + (HEX2INT(key[i + 2]) << 4) + HEX2INT(key[i + 3]);
			i += 4;
		}
		if (length >= LH_NET_PROFILE_NAME_BUFFER_SIZE - 1)
			break;
	}
	ProfileName[length] = 0;
	return ProfileName;
}

void ICQinttoLHTransportInfo(unsigned long address, LHTransportInfo* transport_info)
{
	LHSPrintf ip;
	for (int i = 0; i < 4; i++)
	{
		ip.AppendString("%d", address & 0xff);
		address >>= 8;
		if (i == 3)
			break;
		ip.AppendString(".");
	}
	transport_info->Set(ip, LH_TRANSPORT_DEFAULT_PORT);
}

unsigned long LHTransportInfotoICQint(LHTransportInfo* transport_info)
{
	unsigned long a;
	unsigned long b;
	unsigned long c;
	unsigned long d;

	if (transport_info == NULL || transport_info->GetIP() == NULL)
		return 0;
	if (sscanf(transport_info->GetIP(), "%d.%d.%d.%d", &a, &b, &c, &d) != 4)
		return 0;
	return (d << 24) + (c << 16) + (b << 8) + a;
}

wchar_t* LIBCHAR2WCHAR(char* string)
{
	static wchar_t WideString[LH_NET_CONVERSION_BUFFER_SIZE];
	WideString[MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, string, -1, WideString, ARRAY_SIZE(WideString) - 1)] = 0;
	return WideString;
}

char* LIBWCHAR2CHAR(wchar_t* string)
{
	static char MultiByteString[LH_NET_CONVERSION_BUFFER_SIZE];
	MultiByteString[WideCharToMultiByte(CP_ACP, 0, string, -1, MultiByteString, sizeof(MultiByteString) - 1, NULL,
	                                    NULL)] = '\0';
	return MultiByteString;
}

LH_RETURN LHGetInstalledBWVersion(unsigned long* version, char* country)
{
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_CURRENT_USER);
	LH_RETURN result = RegistryRetrieveULong((char*)LH_NET_BW_CURRENT_VERSION, "GameVersion", version);
	FILE*     file = fopen("country.txt", "rb");
	if (file != NULL)
	{
		fread(country, 2, 1, file);
		country[2] = '\0';
		fclose(file);
	}
	else
	{
		strcpy(country, "UK");
	}
	LHRegistrySetCurrentKey(key);
	return result;
}

typedef DWORD(APIENTRY* LHRasEnumConnectionsFunction)(LPRASCONN, LPDWORD, LPDWORD);
typedef DWORD(APIENTRY* LHRasEnumDevicesFunction)(LPRASDEVINFO, LPDWORD, LPDWORD);

bool LHCheckForInternetConnection(char options)
{
	DWORD         connectionCount;
	DWORD         deviceCount;
	DWORD         devicesSize;
	DWORD         connectionsSize;
	int           isModem;
	OSVERSIONINFO version;
	RASDEVINFO    devices[LH_NET_MAX_RAS_DEVICES];
	RASCONN       connections[LH_NET_MAX_RAS_CONNECTIONS];

	CheckInternetConnectionOptions = options;
	if (options == 1)
		return true;
	if (options == 2)
		return false;

	LHSocket::Startup();
	version.dwOSVersionInfoSize = sizeof(version);
	GetVersionEx(&version);

	HMODULE rasLibrary = LoadLibrary("rasapi32.dll");
	if (rasLibrary != NULL)
	{
		connectionCount = 0;
		connectionsSize = sizeof(connections);
		connections[0].dwSize = sizeof(RASCONN);
		LHRasEnumConnectionsFunction enumConnections =
			(LHRasEnumConnectionsFunction)GetProcAddress(rasLibrary, "RasEnumConnectionsA");
		if (enumConnections == NULL)
			enumConnections = (LHRasEnumConnectionsFunction)GetProcAddress(rasLibrary, "RasEnumConnections");
		if (enumConnections != NULL)
		{
			enumConnections(connections, &connectionsSize, &connectionCount);
			if (connectionCount > 0)
				return true;
		}

		LHRasEnumDevicesFunction enumDevices = (LHRasEnumDevicesFunction)GetProcAddress(rasLibrary, "RasEnumDevicesA");
		if (enumDevices == NULL)
			enumDevices = (LHRasEnumDevicesFunction)GetProcAddress(rasLibrary, "RasEnumDevices");
		if (enumDevices != NULL)
		{
			memset(devices, 0, sizeof(devices));
			devicesSize = sizeof(devices);
			deviceCount = 0;
			devices[0].dwSize = sizeof(RASDEVINFO);
			enumDevices(devices, &devicesSize, &deviceCount);
			if (deviceCount != 0)
			{
				for (DWORD i = 0; i < deviceCount; i++)
					isModem = strcmp(devices[i].szDeviceType, RASDT_Modem);
			}
		}
	}

	LHSNMPNetworkUtils* networkUtils = new LHSNMPNetworkUtils(NULL);
	if (networkUtils != NULL)
	{
		LH_RETURN result = networkUtils->IsDefaultGatewayPrivate();
		if (result != LH_OK && result != LH_ERROR)
		{
			for (char i = 0; InternetTestHosts[i] != NULL; i++)
			{
				if (gethostbyname(InternetTestHosts[i]) != NULL)
					return true;
			}
		}
		delete networkUtils;
	}
	return false;
}
