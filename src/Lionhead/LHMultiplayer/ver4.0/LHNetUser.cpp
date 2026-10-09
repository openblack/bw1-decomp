#define LH_MULTIPLAYER_EXPORTS
#include "LHNetUser.h"

#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <wchar.h>

#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include "LHDatabase.h"
#include "LHHttp.h"
#include "LHNetErrors.h"
#include "LHNetUtils.h"
#include "LHTransportInfo.h"

enum
{
	LH_LOGIN_MAX_INPUT_LENGTH = 32,
	LH_LOGIN_URI_ENCODED_CHARACTER_LENGTH = 3,
	LH_LOGIN_DOCUMENT_PADDING = 15,
	LH_LOGIN_RESULT_NONE = -100,
	LH_LOGIN_RESULT_INVALID_PASSWORD = -3,
	LH_LOGIN_RESULT_UNKNOWN_USER = -2,
	LH_LOGIN_RESULT_FAILED = -1,
};

static char* UserIDToken = "bnwuserid:";

// BW1W120 100179c0 BW1M119 null
void LHNetCheckPrintable(char* string);

void LHNetCheckPrintable(char* string)
{
	for (unsigned long i = 0; i < strlen(string); i++)
		isprint(string[i]);
}

void LHNetUser::ClearAllData()
{
	memset(LoginText, 0, sizeof(LoginText));
	memset(Name, 0, sizeof(Name));
	memset(Password, 0, sizeof(Password));
	id = 0;
	LoginValue2 = 0;
	LoginValue1 = 0;
	Http = NULL;
	LoginDocument = NULL;
}

void LHNetUser::Logout()
{
	delete Http;
	delete LoginDocument;
	ClearAllData();
}

LH_RETURN LHNetUser::SetUserDetails(wchar_t* name, char* password)
{
	if ((name != NULL && name[0] != L'\0') == false)
		return LH_ERROR;
	wcsncpy(Name, name, LH_MAX_NAME_LENGTH);
	if (password != NULL)
		strncpy(Password, password, LH_MAX_PASSWORD_LENGTH);
	return LH_OK;
}

LHNetUser::~LHNetUser()
{
	delete Http;
	delete LoginDocument;
}

LH_RETURN LHNetUser::Login(char* name, char* password)
{
	id = 0;
	SetUserDetails(LIBCHAR2WCHAR(name), password);
	if (password != NULL && password[0] != '\0' && LHNetGetCurrentUsedProfile() != NULL &&
	    wcslen(LHNetGetCurrentUsedProfile()) != 0 && LHNetGetCurrentProfileUlong("ID", (unsigned long*)&id) == LH_OK &&
	    id != 0)
	{
		unsigned long size = LH_MAX_NAME_LENGTH * sizeof(wchar_t);
		LHNetGetCurrentProfileData("login name", (unsigned char*)Name, &size);
		return LH_OK;
	}

	id = 0;
	for (unsigned long i = 0; i < strlen(name); i++)
		((unsigned char*)&id)[i % sizeof(id)] += name[i];
	id = id | 0x10000000;
	id.Category = LH_USER_ID::CATEGORY_PLAYER;
	return LH_OK;
}

LH_RETURN LHNetUser::Login(char* name, char* password, LHTransportInfo* server)
{
	if (name == NULL)
		return LH_ERROR;
	if (strlen(name) > LH_LOGIN_MAX_INPUT_LENGTH)
		name[LH_LOGIN_MAX_INPUT_LENGTH] = '\0';
	if (strlen(password) > LH_LOGIN_MAX_INPUT_LENGTH)
		password[LH_LOGIN_MAX_INPUT_LENGTH] = '\0';
	SetUserDetails(LIBCHAR2WCHAR(name), password);

	LH_RETURN          result = LH_ERROR;
	LHHttp2*           http = new LHHttp2;
	LHHttpHeaderStatus status;
	unsigned long      userId;
	unsigned long      nameLength = (strlen(name) + 1) * LH_LOGIN_URI_ENCODED_CHARACTER_LENGTH;
	unsigned long      passwordLength = (strlen(password) + 1) * LH_LOGIN_URI_ENCODED_CHARACTER_LENGTH;
	char*              encodedName = new char[nameLength];
	char*              encodedPassword = new char[passwordLength];
	memset(encodedName, 0, nameLength);
	memset(encodedPassword, 0, passwordLength);
	URIEncode(name, encodedName);
	URIEncode(password, encodedPassword);

	LHSPrintf request;
	request.AppendString("/login/?username=%s&userpassword=%s", encodedName, encodedPassword);
	if (http->Open(server->GetIP(), server->GetPort()) == LH_OK &&
	    http->PrepareRequest(HTTP_REQUEST_TYPE_GET, request, NULL, NULL, 0) == LH_HTTP_STATUS_REQUEST_PREPARED &&
	    http->HelperGetDocument(false) == LH_HTTP_STATUS_RECEIVED)
	{
		unsigned long size = http->GetDocumentSize();
		char*         document = new char[size + 1];
		document[size] = '\0';
		memset(document, 0, size);
		http->GetDocument(document);
		result = ParseUserData(document, &userId) != LH_OK ? LH_FAIL : LH_OK;
		delete[] document;
	}
	http->Close();
	http->Reset();
	delete http;
	delete[] encodedName;
	delete[] encodedPassword;
	id.Number = userId;
	id.Category = LH_USER_ID::CATEGORY_PLAYER;
	return result;
}

LH_RETURN LHNetUser::SendLogin(char* name, char* password, LHTransportInfo* server)
{
	if ((name != NULL && strlen(name) != 0) == false)
		return LH_ERROR;
	SetUserDetails(LIBCHAR2WCHAR(name), password);

	LHSPrintf request;
	request.AppendString("/login/?username=%s&userpassword=%s", name, password);
	Http = new LHHttp;
	if (Http->Open(server->GetIP(), server->GetPort()) != LH_OK)
		return LH_ERROR;
	if (Http->SendRequest(HTTP_REQUEST_TYPE_GET, request) != LH_OK)
		return LH_ERROR;
	if (Http->SendEndOfRequest() != LH_OK)
		return LH_ERROR;
	LoginState = LH_LOGIN_CHECK_NONE;
	LoginDocumentReceived = 0;
	delete LoginDocument;
	LoginDocumentSize = 0;
	LoginDocument = NULL;
	LoginDocumentReceived = 0;
	return LH_OK;
}

LH_RETURN LHNetUser::ParseUserData(char* document, unsigned long* user_id)
{
	long  result = LH_LOGIN_RESULT_NONE;
	char* data = strstr(document, UserIDToken);
	if (data == NULL)
		return LH_FAIL;

	data += strlen(UserIDToken);
	int fields = sscanf(data, "%d %d %d %s", &result, &LoginValue1, &LoginValue2, LoginText);
	if (fields == 1)
	{
		LoginValue1 = 0;
		LoginValue2 = 0;
	}
	if (fields == 2)
		LoginValue2 = 0;

	if (result == LH_LOGIN_RESULT_NONE)
		return LH_FAIL;
	if (result == LH_LOGIN_RESULT_UNKNOWN_USER)
		return LH_FAIL;
	if (result == LH_LOGIN_RESULT_INVALID_PASSWORD)
		return LH_FAIL;
	if (result == LH_LOGIN_RESULT_FAILED)
		return LH_FAIL;

	*user_id = result;
	LH_USER_ID userId;
	userId.Number = result;
	userId.Category = LH_USER_ID::CATEGORY_PLAYER;
	if (LHNetGetCurrentUsedProfile() != NULL && LHNetGetCurrentUsedProfile()[0] != L'\0')
		LHNetSetCurrentProfileUlong("ID", userId);
	return LH_OK;
}

LH_LOGIN_CHECK LHNetUser::CheckLogin()
{
	if (id.IsValid())
		return LH_LOGIN_CHECK_LOGGED_IN;
	if (Http == NULL)
		return LH_LOGIN_CHECK_CONNECTION_ERROR;

	if ((LoginState == LH_LOGIN_CHECK_NONE || LoginState == LH_LOGIN_CHECK_LOGGED_IN ||
	     LoginState == LH_LOGIN_CHECK_FAILED) &&
	    Http->IsDataAvailable() == LH_OK)
	{
		Http->GetServerResponseHeader(&HttpResponseCode);
		LoginState = LH_LOGIN_CHECK_IN_PROGRESS;
		if (HttpResponseCode != LH_HTTP_CODE_OK)
		{
			delete Http;
			Http = NULL;
			return LH_LOGIN_CHECK_CONNECTION_ERROR;
		}
		Http->GetDocumentSize(&LoginDocumentSize);
		LoginDocument = new char[LoginDocumentSize + LH_LOGIN_DOCUMENT_PADDING];
		return LH_LOGIN_CHECK_IN_PROGRESS;
	}

	if (LoginDocumentReceived < LoginDocumentSize && LoginState == LH_LOGIN_CHECK_IN_PROGRESS)
	{
		Http->GetDocumentAsync(LoginDocument, &LoginDocumentReceived);
		return LH_LOGIN_CHECK_IN_PROGRESS;
	}
	if (LoginState != LH_LOGIN_CHECK_IN_PROGRESS)
		return LH_LOGIN_CHECK_IN_PROGRESS;

	unsigned long userId;
	if (ParseUserData(LoginDocument, &userId) != LH_OK)
		return LH_LOGIN_CHECK_FAILED;
	id.Number = userId;
	id.Category = LH_USER_ID::CATEGORY_PLAYER;
	if (Http != NULL)
	{
		Http->Close();
		delete Http;
		Http = NULL;
	}
	if (LoginDocument != NULL)
	{
		delete LoginDocument;
		LoginDocument = NULL;
	}
	LoginState = LH_LOGIN_CHECK_NONE;
	LoginDocumentSize = 0;
	LoginDocumentReceived = 0;
	return LH_LOGIN_CHECK_LOGGED_IN;
}

LH_RETURN LHNetUser::Login(LHNetUser* user, LH_USER_ID::CATEGORY category)
{
	if (category == LH_USER_ID::CATEGORY_PLAYER)
		return LH_FAIL;
	id = user->id;
	id.Category = category;
	switch (category)
	{
	case LH_USER_ID::CATEGORY_MESSAGE_SERVER:
		SetUserDetails(L"INTERNAL_MESSAGE_SERVER", NULL);
		break;
	case LH_USER_ID::CATEGORY_LOBBY_SERVER:
		SetUserDetails(L"INTERNAL_LOBBY_SERVER", NULL);
		break;
	case LH_USER_ID::CATEGORY_GLOBAL_SERVER:
		SetUserDetails(L"GLOBAL_LOBBY_SERVER", NULL);
		break;
	}
	return LH_OK;
}
