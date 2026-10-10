#define LH_MULTIPLAYER_EXPORTS
#include "LHDatabase.h"

#include <io.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include "LHNetUser.h"
#include "LHNetUtils.h"
#include "LHTransportInfo.h"

static const char LH_SQLBWGAMEDATABASE_SERVER[] = "db.bwgame.com";
static const char LH_SQLBWGAMEDATABASE_URL[] = "/query/";

// BW1W120 10068640 BW1M119 011d1af4 (LHCombined Release)
char LH_SQLBWGAMEDATABASE_SERVER_USED[LH_DATABASE_SERVER_LENGTH];
// BW1W120 1006873c BW1M119 011d1bf0 (LHCombined Release)
char LH_SQLBWGAMEDATABASE_URL_USED[LH_DATABASE_URL_LENGTH];
// BW1W120 10061368 BW1M119 011d1ff0 (LHCombined Release)
unsigned short LH_SQLBWGAMEDATABASE_PORT_USED = LH_HTTP_DEFAULT_PORT;

// BW1W120 1006136c BW1M119 011d1ff4 (LHCombined Release)
unsigned long ctempone[4] = {0xaffa, 0x81c4, 0x310f, 0xa022};
// BW1W120 1006137c BW1M119 011d2004 (LHCombined Release)
unsigned long cryptkey[4] = {0x429c, 0x1d83, 0x7bca, 0x5d10};
// BW1W120 1006138c BW1M119 011d2014 (LHCombined Release)
unsigned long ctemptwo[4] = {0xf81b, 0x1a04, 0x2e44, 0x4c4c};
// BW1W120 1006139c BW1M119 011d2024 (LHCombined Release)
unsigned long cryptuse[4] = {0xaa9c, 0xccc3, 0xffcf, 0xbbbb};

// BW1W120 10007230 BW1M119 inlined
void ResetCryptKey();
// BW1W120 10007500 BW1M119 inlined
char* FindFieldStart(char* text);
// BW1W120 10007530 BW1M119 inlined
char* FindFieldEnd(char* text);
// BW1W120 10007560 BW1M119 inlined
void CopyURIWithoutQuery(char* destination, char* source);
// BW1W120 10007590 BW1M119 inlined
int URIEncodedLength(char* text);

void ResetCryptKey()
{
	memcpy(cryptuse, cryptkey, sizeof(cryptuse));
}

void encipher(unsigned long* v, unsigned long* w, const unsigned long* k)
{
	unsigned long y = v[0];
	unsigned long z = v[1];
	unsigned long sum = 0;
	unsigned long delta = 0x9e3779b9;
	unsigned long a = k[0];
	unsigned long b = k[1];
	unsigned long c = k[2];
	unsigned long d = k[3];
	unsigned long n = 32;

	while (n-- > 0)
	{
		sum += delta;
		y += ((z << 4) + a) ^ (z + sum) ^ ((z >> 5) + b);
		z += ((y << 4) + c) ^ (y + sum) ^ ((y >> 5) + d);
	}

	w[0] = y;
	w[1] = z;
}

void decipher(unsigned long* v, unsigned long* w, const unsigned long* k)
{
	unsigned long y = v[0];
	unsigned long z = v[1];
	unsigned long sum = 0xc6ef3720;
	unsigned long delta = 0x9e3779b9;
	unsigned long a = k[0];
	unsigned long b = k[1];
	unsigned long c = k[2];
	unsigned long d = k[3];
	unsigned long n = 32;

	while (n-- > 0)
	{
		z -= ((y << 4) + c) ^ (y + sum) ^ ((y >> 5) + d);
		y -= ((z << 4) + a) ^ (z + sum) ^ ((z >> 5) + b);
		sum -= delta;
	}

	w[0] = y;
	w[1] = z;
}

int MyCrypt(char* source, char* destination, int length, char decrypt)
{
	char* start = destination;

	while (length >= LH_DATABASE_CRYPT_BLOCK_SIZE)
	{
		if (!decrypt)
		{
			encipher((unsigned long*)source, (unsigned long*)destination, cryptuse);
		}
		else
		{
			decipher((unsigned long*)source, (unsigned long*)destination, cryptuse);
		}
		length -= LH_DATABASE_CRYPT_BLOCK_SIZE;
		source += LH_DATABASE_CRYPT_BLOCK_SIZE;
		destination += LH_DATABASE_CRYPT_BLOCK_SIZE;
		cryptuse[0] += 4;
		cryptuse[1] -= 74;
		cryptuse[2] += 172;
		cryptuse[3] -= 26;
	}

	if (length > 0)
	{
		unsigned long block[2] = {0, 0};
		memcpy(block, source, length);
		if (!decrypt)
		{
			encipher(block, (unsigned long*)destination, cryptuse);
		}
		else
		{
			decipher(block, (unsigned long*)destination, cryptuse);
		}
		destination += LH_DATABASE_CRYPT_BLOCK_SIZE;
	}

	return destination - start;
}

void DBInfo::Reset()
{
	if (Http != NULL)
	{
		Http->Close();
		delete Http;
		Http = NULL;
	}
	HeaderStatus.Reset();
	if (Result != NULL)
	{
		delete Result;
		Result = NULL;
	}
	if (Request != NULL)
	{
		delete Request;
		Request = NULL;
	}
	BytesSent = 0;
	Status = 0;
	State = DBINFO_STATE_IDLE;
	RequestSize = 0;
	Port = 0;
	ResultSize = 0;
	RequestTime = 0;
}

char* FindFieldStart(char* text)
{
	if (text == NULL)
	{
		return NULL;
	}
	while (*text != '\0' && *text != LH_DATABASE_FIELD_START)
	{
		text++;
	}
	if (text != NULL && *text == '\0')
	{
		return NULL;
	}
	return text;
}

char* FindFieldEnd(char* text)
{
	if (text == NULL)
	{
		return NULL;
	}
	while (*text != '\0' && *text != LH_DATABASE_FIELD_END)
	{
		text++;
	}
	if (text != NULL && *text == '\0')
	{
		return NULL;
	}
	return text;
}

void CopyURIWithoutQuery(char* destination, char* source)
{
	if (destination != NULL && source != NULL)
	{
		while (*source != '\0' && *source != '?')
		{
			*destination++ = *source++;
		}
		*destination = '\0';
	}
}

int URIEncodedLength(char* text)
{
	return (strlen(text) + 1) * LH_DATABASE_URI_ESCAPE_LENGTH;
}

LH_RETURN URIEncode(char* source, char* destination)
{
	while (*source != '\0')
	{
		if ((*source >= 'A' && *source <= 'Z') || (*source >= 'a' && *source <= 'z') ||
		    (*source >= '0' && *source <= '9'))
		{
			*destination = *source;
		}
		else
		{
			char escape[LH_DATABASE_URI_ESCAPE_BUFFER_SIZE];
			sprintf(escape, "%c%02X", '%', (unsigned char)*source);
			for (char* p = escape; *p != '\0'; p++, destination++)
			{
				*destination = *p;
			}
			destination--;
		}
		source++;
		destination++;
	}
	*destination = '\0';
	return LH_OK;
}

LH_RETURN LHWebEncode(char* data, unsigned long length, char** encoded, unsigned long* encoded_length)
{
	if (data == NULL)
	{
		return LH_ERROR;
	}

	*encoded_length = length * 2;
	*encoded = new char[length * 2];
	if (*encoded == NULL)
	{
		return LH_ERROR;
	}

	char* output = *encoded;
	for (unsigned long i = 0; i < length; i++)
	{
		*output++ = ((unsigned char)*data >> 4) + 'A';
		*output++ = (*data & 0xf) + 'A';
		data++;
	}
	return LH_OK;
}

LH_RETURN LHWebDecode(char* data, unsigned long length, char** decoded, unsigned long* decoded_length)
{
	if (data == NULL)
	{
		return LH_ERROR;
	}

	*decoded_length = length / 2 + 2;
	*decoded = new char[length / 2 + 2];
	if (*decoded == NULL)
	{
		return LH_ERROR;
	}

	char*         output = *decoded;
	unsigned long i = 0;
	while (i < *decoded_length)
	{
		*output = ((data[0] - 'A') << 4) + (data[1] - 'A');
		data += 2;
		i++;
		output++;
	}
	return LH_OK;
}

void LHWebEncodingFreePtr(char* data)
{
	if (data != NULL)
	{
		delete data;
	}
}

DBSTATUS db_get_status_async(DBInfo* info)
{
	LH_HTTP_STATUS status;

	if (info == NULL || info->Request == NULL)
	{
		return DBSTATUS_ERROR;
	}

	switch (info->State)
	{
	case DBINFO_STATE_REDIRECTED:
		info->Http->Close();
		info->Http->Reset();
		info->Http->Open(info->HeaderStatus.GetLocationHost(), info->HeaderStatus.GetLocationPort());
		strcpy(LH_SQLBWGAMEDATABASE_SERVER_USED, info->HeaderStatus.GetLocationHost());
		CopyURIWithoutQuery(LH_SQLBWGAMEDATABASE_URL_USED, info->HeaderStatus.GetLocationURI());
		LH_SQLBWGAMEDATABASE_PORT_USED = info->HeaderStatus.GetLocationPort();
		if (info->Http != NULL &&
		    info->Http->PrepareRequest(HTTP_REQUEST_TYPE_PUT, LH_SQLBWGAMEDATABASE_URL_USED, NULL, info->Request,
		                               strlen(info->Request)) == LH_HTTP_STATUS_REQUEST_PREPARED)
		{
			info->State = DBINFO_STATE_SENDING_REQUEST;
			time(&info->RequestTime);
			return DBSTATUS_PENDING;
		}
		info->State = DBINFO_STATE_IDLE;
		info->Http->Reset();
		info->Http->Close();
		break;

	case DBINFO_STATE_SENDING_REQUEST:
		switch (info->Http->SendRequestAsync())
		{
		case LH_HTTP_STATUS_REQUEST_SENT:
			info->BytesSent += LH_HTTP_BLOCK_SIZE;
			time(&info->RequestTime);
			info->State = DBINFO_STATE_RECEIVING_HEADER;
			return DBSTATUS_PENDING;
		case LH_HTTP_STATUS_TIMED_OUT:
		case LH_HTTP_STATUS_SEND_FAILED:
			info->Http->Close();
			info->Reset();
			return DBSTATUS_PENDING;
		case LH_HTTP_STATUS_SENDING:
			return DBSTATUS_PENDING;
		}
		break;

	case DBINFO_STATE_RECEIVING_HEADER:
		if (info->Http == NULL)
		{
			return DBSTATUS_ERROR;
		}
		switch (info->Http->ReceiveHeaderAsync())
		{
		case LH_HTTP_STATUS_RECEIVING_HEADER:
			return DBSTATUS_PENDING;
		case LH_HTTP_STATUS_HEADER_RECEIVED:
			info->Http->GetHeader(info->HeaderStatus);
			if (info->HeaderStatus.Status == LH_HTTP_CODE_OK)
			{
				info->State = DBINFO_STATE_RECEIVING_DOCUMENT;
				return DBSTATUS_PENDING;
			}
			if (info->HeaderStatus.Status >= LH_HTTP_CODE_MULTIPLE_CHOICES &&
			    info->HeaderStatus.Status < LH_HTTP_CODE_BAD_REQUEST && info->HeaderStatus.Location != NULL)
			{
				time(&info->RequestTime);
				info->State = DBINFO_STATE_REDIRECTED;
				return DBSTATUS_PENDING;
			}
			return DBSTATUS_ERROR;
		default:
			info->Http->Close();
			info->Reset();
			return DBSTATUS_ERROR;
		}

	case DBINFO_STATE_RECEIVING_DOCUMENT:
		status = info->Http->ReceiveDocumentAsync();
		switch (status)
		{
		case LH_HTTP_STATUS_RECEIVING:
			return DBSTATUS_PENDING;
		case LH_HTTP_STATUS_RECEIVED:
			info->State = DBINFO_STATE_DOCUMENT_RECEIVED;
			return DBSTATUS_PENDING;
		}
		if (status == LH_HTTP_STATUS_RECEIVING)
			return DBSTATUS_PENDING;
		break;

	case DBINFO_STATE_DOCUMENT_RECEIVED:
		if (info->Http != NULL)
		{
			unsigned long size = info->Http->GetDocumentSize();
			if (size > 0)
			{
				info->Result = new char[size + 1];
				memset(info->Result, 0, size + 1);
				if (info->Http->GetDocument(info->Result) == LH_HTTP_STATUS_OK)
				{
					info->State = DBINFO_STATE_COMPLETE;
					return DBSTATUS_COMPLETE;
				}
			}
		}
		return DBSTATUS_ERROR;
	}

	info->Reset();
	return DBSTATUS_ERROR;
}

LH_RETURN db_get_result(DBInfo* info, unsigned long* num_columns, unsigned long* num_rows, char*** data)
{
	LH_RETURN result = LH_FAIL;

	if (info == NULL)
	{
		return LH_ERROR;
	}
	if (info->State == DBINFO_STATE_COMPLETE)
	{
		if (db_parse_sql_returnbuffer(info->Result, data, num_columns, num_rows) == LH_OK)
		{
			result = LH_OK;
		}
		info->Http->Close();
		info->Http->Reset();
		info->Reset();
	}
	return result;
}

DBSTATUS db_execute_transaction_async(DBInfo* info, char* transaction, LHNetUser* user, LHTransportInfo* transport)
{
	unsigned long version = LH_DATABASE_DEFAULT_BW_VERSION;

	if (info == NULL || transaction == NULL)
	{
		return DBSTATUS_ERROR;
	}

	if (info->State == DBINFO_STATE_IDLE)
	{
		info->Http = NULL;
		info->Result = NULL;
		info->RequestSize = 0;
		info->Port = 0;

		LHTransportInfo* server;
		if (transport == NULL)
		{
			if (LH_SQLBWGAMEDATABASE_SERVER_USED[0] == '\0')
			{
				char serverName[LH_DATABASE_SERVER_NAME_LENGTH];
				memset(serverName, 0, sizeof(serverName));
				strcpy(serverName, LH_SQLBWGAMEDATABASE_SERVER);
				FILE* file = fopen("dburl", "rt");
				if (file != NULL)
				{
					memset(serverName, 0, sizeof(serverName));
					fread(serverName, 1, _filelength((_fileno)(file)), file);
					fclose(file);
				}
				LH_SQLBWGAMEDATABASE_PORT_USED = LH_HTTP_DEFAULT_PORT;
				strcpy(LH_SQLBWGAMEDATABASE_SERVER_USED, serverName);
				strcpy(LH_SQLBWGAMEDATABASE_URL_USED, LH_SQLBWGAMEDATABASE_URL);
			}
			server = new LHTransportInfo(LH_SQLBWGAMEDATABASE_SERVER_USED, LH_SQLBWGAMEDATABASE_PORT_USED);
		}
		else
		{
			server = new LHTransportInfo(transport);
		}

		info->Http = new LHHttp2;
		info->Http->SetTimeOut(LH_DATABASE_TIME_OUT);
		if (info->Http->Open(server->GetIP(), server->GetPort()) != LH_OK)
		{
			delete server;
			return DBSTATUS_ERROR;
		}
		delete server;

		char language[LH_DATABASE_LANGUAGE_LENGTH];
		strcpy(language, "en");
		LHGetInstalledBWVersion(&version, language);

		char*         encrypted = new char[strlen(transaction) + LH_DATABASE_BUFFER_PADDING];
		char*         encoded = NULL;
		unsigned long encodedLength = 0;
		ResetCryptKey();
		int encryptedLength = MyCrypt(transaction, encrypted, strlen(transaction), 0);
		LHWebEncode(encrypted, encryptedLength, &encoded, &encodedLength);
		delete encrypted;

		unsigned long userId = user->GetID().Number;
		char* header = new char[strlen(LHSPrintf(
									"domode=1&dbflags=%ld&bwversion=%ld&bwlanguage=%s&uid=%ld&uname=%s&upass=%s&query=",
									strlen(transaction), version, language, userId, LIBWCHAR2CHAR(user->GetName()),
									user->GetPassword())) +
		                        1];
		strcpy(header, LHSPrintf("domode=1&dbflags=%ld&bwversion=%ld&bwlanguage=%s&uid=%ld&uname=%s&upass=%s&query=",
		                         strlen(transaction), version, language, userId, LIBWCHAR2CHAR(user->GetName()),
		                         user->GetPassword()));

		unsigned long requestLength = strlen(header) + encodedLength + LH_DATABASE_REQUEST_TRAILER_LENGTH;
		info->Request = new char[requestLength];
		memset(info->Request, 0, requestLength);
		memcpy(info->Request, header, strlen(header));
		memcpy(info->Request + strlen(header), encoded, encodedLength);
		memset(info->Request + strlen(header) + encodedLength, 0, 1);
		strcpy(info->Request + strlen(header) + encodedLength + 1, "\r\n");
		LHWebEncodingFreePtr(encoded);
		delete header;

		if (info->Http != NULL &&
		    info->Http->PrepareRequest(HTTP_REQUEST_TYPE_PUT, LH_SQLBWGAMEDATABASE_URL_USED, NULL, info->Request,
		                               strlen(info->Request)) == LH_HTTP_STATUS_REQUEST_PREPARED)
		{
			info->State = DBINFO_STATE_SENDING_REQUEST;
			time(&info->RequestTime);
			return DBSTATUS_PENDING;
		}
		info->State = DBINFO_STATE_IDLE;
		info->Http->Reset();
		info->Http->Close();
	}

	info->Reset();
	return DBSTATUS_ERROR;
}

LH_RETURN db_parse_sql_returnbuffer(char* buffer, char*** data, unsigned long* num_columns, unsigned long* num_rows)
{
	unsigned long totalColumns = 0;
	unsigned long count = 0;

	if (buffer == NULL)
	{
		return LH_ERROR;
	}

	char* text = strstr(buffer, "[rows]:");
	if (text == NULL)
	{
		return LH_ERROR;
	}
	sscanf(text + strlen("[rows]:"), "%ld", num_rows);

	text = strstr(buffer, "[columns]:");
	if (text == NULL)
	{
		return LH_ERROR;
	}
	sscanf(text + strlen("[columns]:"), "%ld", num_columns);

	text = strstr(buffer, "[totalcolumns]:");
	if (text == NULL)
	{
		return LH_ERROR;
	}
	sscanf(text + strlen("[totalcolumns]:"), "%ld", &totalColumns);

	if (totalColumns > 0)
	{
		char** fields = new char*[totalColumns + 1];
		for (unsigned long i = 0; i < totalColumns + 1; i++)
		{
			fields[i] = NULL;
		}
		*data = fields;

		char** field = fields;
		char*  start;
		char*  end;
		do
		{
			start = FindFieldStart(buffer);
			end = FindFieldEnd(buffer);
			if (start != NULL && end != NULL)
			{
				start++;
				unsigned long length = end - start;
				*field = new char[length + 1];
				memcpy(*field, start, length);
				(*field)[length] = '\0';
				count++;
				field++;
				buffer = end + 1;
			}
		} while (end != NULL && start != NULL);
		fields[count] = NULL;
	}

	return LH_OK;
}

void db_free_data(char** data)
{
	for (int i = 0; data[i] != NULL; i++)
	{
		delete data[i];
	}
	delete data;
}

LH_RETURN db_execute_transaction(char* transaction, unsigned long* num_columns, unsigned long* num_rows, char*** data,
                                 LHTransportInfo* transport)
{
	LH_RETURN      result = LH_ERROR;
	unsigned short status = 0;
	unsigned long  size = 0;
	char*          document = NULL;
	char*          encoded;
	unsigned long  version;
	char           language[LH_DATABASE_LANGUAGE_LENGTH];

	LHGetInstalledBWVersion(&version, language);

	LHHttp* http = new LHHttp;

	LHTransportInfo* server;
	if (transport == NULL)
	{
		server = new LHTransportInfo((char*)LH_SQLBWGAMEDATABASE_SERVER, LH_HTTP_DEFAULT_PORT);
	}
	else
	{
		server = new LHTransportInfo(transport);
	}

	if (http != NULL && http->Open(server->GetIP(), server->GetPort()) == LH_OK)
	{
		encoded = new char[URIEncodedLength(transaction) + LH_DATABASE_BUFFER_PADDING];
		URIEncode(transaction, encoded);
		if (http->SendRequest(HTTP_REQUEST_TYPE_GET, LHSPrintf("%s?query=%s&bwversion=%ld&bwlanguage=%s",
		                                                       LH_SQLBWGAMEDATABASE_URL, encoded, version, language)) ==
		        LH_OK &&
		    http->SendEndOfRequest() == LH_OK && http->GetServerResponseHeader(&status) == LH_OK &&
		    status == LH_HTTP_CODE_OK && http->GetDocumentSize(&size) == LH_OK)
		{
			document = new char[size + LH_DATABASE_BUFFER_PADDING];
			if (http->GetDocument(document, &size) == LH_OK &&
			    db_parse_sql_returnbuffer(document, data, num_columns, num_rows) == LH_OK)
			{
				result = LH_OK;
			}
		}
	}

	delete encoded;
	delete document;
	delete server;
	delete http;
	return result;
}
