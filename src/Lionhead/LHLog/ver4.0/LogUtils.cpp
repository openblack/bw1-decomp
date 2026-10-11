#include <windows.h>
#include <string.h>

#include "LHRegistry.h"

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

LH_RETURN RegistrySetVal(char* key, char* value, unsigned char* data, unsigned long size, unsigned long type);
LH_RETURN RegistryRetrieveVal(char* key, char* value, unsigned char* data, unsigned long* size, unsigned long type);

LH_RETURN RegistryRetrieveULong(char* key, char* value, unsigned long* out)
{
	unsigned long size = sizeof(unsigned long);
	return RegistryRetrieveVal(key, value, (unsigned char*)out, &size, REG_DWORD);
}

LH_RETURN RegistrySetULong(char* key, char* value, unsigned long data)
{
	return RegistrySetVal(key, value, (unsigned char*)&data, sizeof(data), REG_DWORD);
}

LH_RETURN RegistrySetString(char* key, char* value, char* data)
{
	return RegistrySetVal(key, value, (unsigned char*)data, strlen(data), REG_SZ);
}

LH_RETURN RegistryRetrieveWString(char* key, char* value, wchar_t* out, unsigned long* size)
{
	*size = *size * 2 + 2;
	LH_RETURN result = RegistryRetrieveVal(key, value, (unsigned char*)out, size, REG_BINARY);
	*size = *size / 2 - 1;
	out[*size] = L'\0';
	return result;
}
