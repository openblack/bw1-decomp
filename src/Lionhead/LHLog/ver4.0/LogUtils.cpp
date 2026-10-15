#include <windows.h>
#include <stdlib.h>
#include <string.h>

#include "LHLogMacros.h"
#include "LHRegistry.h"

#define FILEPATH "LogUtils.cpp"

#define LH_REGISTRY_VALUE_NAME_SIZE 128

static HKEY CurrentKey = HKEY_CURRENT_USER;

void LHRegistrySetCurrentKey(LH_REG_KEY_TYPE key_type)
{
	switch (key_type)
	{
	case LH_REG_KEY_TYPE_CURRENT_USER:
		CurrentKey = HKEY_CURRENT_USER;
		break;
	case LH_REG_KEY_TYPE_USER:
		CurrentKey = HKEY_CURRENT_USER;
		break;
	case LH_REG_KEY_TYPE_LOCAL_MACHINE:
		CurrentKey = HKEY_LOCAL_MACHINE;
		break;
	}
}

LH_REG_KEY_TYPE LHRegistryGetCurrentKey()
{
	if (CurrentKey == HKEY_CURRENT_USER)
	{
		return LH_REG_KEY_TYPE_CURRENT_USER;
	}
	if (CurrentKey == HKEY_LOCAL_MACHINE)
	{
		return LH_REG_KEY_TYPE_LOCAL_MACHINE;
	}
	return LH_REG_KEY_TYPE_CURRENT_USER;
}

HKEY OpenRegistryKey(char* key)
{
	HKEY result;
	if (RegOpenKeyA(CurrentKey, key, &result) != ERROR_SUCCESS)
	{
		RegCloseKey(result);
		return NULL;
	}
	return result;
}

bool32_t RegistryCheckKey(char* key)
{
	HKEY result = OpenRegistryKey(key);
	if (result == NULL)
	{
		return false;
	}
	RegCloseKey(result);
	return true;
}

HKEY CreateRegistryKey(char* key)
{
	HKEY result;
	if (RegCreateKeyA(CurrentKey, key, &result) != ERROR_SUCCESS)
	{
		RegCloseKey(result);
		return NULL;
	}
	return result;
}

HKEY OpenOrCreateRegistryKey(char* key)
{
	HKEY result = OpenRegistryKey(key);
	if (result == NULL)
	{
		result = CreateRegistryKey(key);
	}
	return result;
}

LH_RETURN RegistryRetrieveVal(char* key, char* value, uint8_t* data, unsigned long* val_size, unsigned long type)
{
	LH_RETURN     result = LH_FAIL;
	unsigned long bufferSize = *val_size;

	// clang-format off
	LH_ASSERT_FORCED(*val_size<10000, "Tim: Have you passed an uninitialised length to a registry routine?", 125);
	// clang-format on

	uint8_t*      buffer = (uint8_t*)malloc(*val_size);
	unsigned long dataSize = *val_size;
	memset(buffer, 0, dataSize);

	HKEY hkey = OpenRegistryKey(key);
	if (hkey == NULL)
	{
		free(buffer);
		return LH_FAIL;
	}

	char          name[LH_REGISTRY_VALUE_NAME_SIZE];
	unsigned long nameSize;
	unsigned long valueType;
	for (unsigned long index = 0;; index++)
	{
		dataSize = bufferSize;
		nameSize = sizeof(name);
		LONG error = RegEnumValueA(hkey, index, name, &nameSize, NULL, &valueType, buffer, &dataSize);
		if (error == ERROR_MORE_DATA)
		{
			uint8_t* largeBuffer = (uint8_t*)operator new(dataSize);
			memset(largeBuffer, 0, dataSize);
			error = RegEnumValueA(hkey, index, name, &nameSize, NULL, &valueType, largeBuffer, &dataSize);
			if (error == ERROR_SUCCESS)
			{
				memcpy(buffer, largeBuffer, bufferSize);
				if (_stricmp(name, value) == 0)
				{
					LH_LOG_ERROR(LH_LOG_CODE_ERROR, LHSPrintf("Registry value truncated %s %s\n", key, value), 155);
				}
			}
			operator delete(largeBuffer);
			dataSize = bufferSize;
		}

		if (error != ERROR_SUCCESS)
		{
			if (error != ERROR_NO_MORE_ITEMS && _stricmp(name, value) == 0)
			{
				LH_LOG_ERROR(LH_LOG_CODE_ERROR, LHSPrintf("Problem retrieving registry item %s %s\n", key, value), 165);
			}
			break;
		}

		*val_size = bufferSize;
		if (valueType == type)
		{
			if (_stricmp(name, value) == 0 || (strlen(name) == 0 && strcmp("Default", value) == 0))
			{
				result = LH_OK;
				break;
			}
		}
	}
	RegCloseKey(hkey);

	if (result == LH_OK)
	{
		memset(data, 0, dataSize);
		memcpy(data, buffer, dataSize);
		*val_size = dataSize;
	}
	free(buffer);
	return result;
}

LH_RETURN RegistrySetVal(char* key, char* value, uint8_t* data, unsigned long size, unsigned long type)
{
	HKEY hkey = OpenOrCreateRegistryKey(key);
	if (hkey == NULL)
	{
		return LH_FAIL;
	}
	if (RegSetValueExA(hkey, value, 0, type, data, size) != ERROR_SUCCESS)
	{
		LH_LOG_WIN32_ERROR(202);
		return LH_FAIL;
	}
	RegCloseKey(hkey);
	return LH_OK;
}

LH_RETURN RegistryRetrieveULong(char* key, char* value, unsigned long* out)
{
	unsigned long size = sizeof(unsigned long);
	return RegistryRetrieveVal(key, value, (uint8_t*)out, &size, REG_DWORD);
}

LH_RETURN RegistrySetULong(char* key, char* value, unsigned long data)
{
	return RegistrySetVal(key, value, (uint8_t*)&data, sizeof(data), REG_DWORD);
}

LH_RETURN RegistryRetrieveDouble(char* key, char* value, double* out)
{
	unsigned long size = sizeof(double);
	return RegistryRetrieveVal(key, value, (uint8_t*)out, &size, REG_BINARY);
}

LH_RETURN RegistrySetDouble(char* key, char* value, double data)
{
	return RegistrySetVal(key, value, (uint8_t*)&data, sizeof(data), REG_BINARY);
}

LH_RETURN RegistryRetrieveINT64(char* key, char* value, __int64* out)
{
	unsigned long size = sizeof(__int64);
	return RegistryRetrieveVal(key, value, (uint8_t*)out, &size, REG_BINARY);
}

LH_RETURN RegistrySetINT64(char* key, char* value, __int64 data)
{
	return RegistrySetVal(key, value, (uint8_t*)&data, sizeof(data), REG_BINARY);
}

LH_RETURN RegistryRetrieveString(char* key, char* value, char* out, unsigned long* size)
{
	return RegistryRetrieveVal(key, value, (uint8_t*)out, size, REG_SZ);
}

LH_RETURN RegistrySetString(char* key, char* value, char* data)
{
	return RegistrySetVal(key, value, (uint8_t*)data, strlen(data), REG_SZ);
}

LH_RETURN RegistryRetrieveWString(char* key, char* value, wchar_t* out, unsigned long* size)
{
	*size = *size * 2 + 2;
	LH_RETURN result = RegistryRetrieveVal(key, value, (uint8_t*)out, size, REG_BINARY);
	*size = *size / 2 - 1;
	out[*size] = L'\0';
	return result;
}

LH_RETURN RegistrySetWString(char* key, char* value, wchar_t* data)
{
	return RegistrySetVal(key, value, (uint8_t*)data, wcslen(data) * 2 + 2, REG_BINARY);
}

LH_RETURN RegistryRetrieveGUID(char* key, char* value, GUID* out)
{
	unsigned long size = sizeof(GUID);
	return RegistryRetrieveVal(key, value, (uint8_t*)out, &size, REG_BINARY);
}

LH_RETURN RegistrySetGUID(char* key, char* value, GUID* data)
{
	return RegistrySetVal(key, value, (uint8_t*)data, sizeof(GUID), REG_BINARY);
}

LH_RETURN RegistryRetrieveData(char* key, char* value, uint8_t* out, unsigned long* size)
{
	return RegistryRetrieveVal(key, value, out, size, REG_BINARY);
}

LH_RETURN RegistrySetData(char* key, char* value, uint8_t* data, unsigned long size)
{
	return RegistrySetVal(key, value, data, size, REG_BINARY);
}
