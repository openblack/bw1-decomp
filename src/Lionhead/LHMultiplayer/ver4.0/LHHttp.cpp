#define LH_MULTIPLAYER_EXPORTS
#include "LHHttp.h"

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h>
#include <Lionhead/LHLog/ver4.0/LHRegistry.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include "LHNetUser.h"
#include "LHSocketTCP.h"
#include "LHTransportInfo.h"

LH_RETURN lookforfirstchars(char* text, char* prefix);

static char* UserAgent = "User-Agent: Lionhead Studios - Black&White";

LHHttp::LHHttp()
{
	Socket = NULL;
	DocumentReceived = 0;
}

LHHttp::~LHHttp()
{
	CleanData();
	Close();
}

LH_RETURN LHHttp::Open(char* host, unsigned short port)
{
	LH_RETURN result;

	Socket = new LHSocketTCP;
	LHTransportInfo transport_info(host, port);
	result = Socket->Connect(&transport_info);
	Socket->SetBlockingMode(false);
	if (result != LH_OK)
		return LH_FAIL;
	strcpy(Host, host);
	return LH_OK;
}

LH_RETURN LHHttp::Close()
{
	if (Socket != NULL && Socket->Disconnect() != LH_OK)
		return LH_FAIL;
	delete Socket;
	Socket = NULL;
	return LH_OK;
}

LH_RETURN LHHttp::SendRequest(HTTP_REQUEST_TYPE type, char* uri)
{
	char request[LH_HTTP_REQUEST_LENGTH];
	char host[LH_HTTP_HOST_LENGTH];

	if (Socket == NULL)
		return LH_FAIL;

	memset(request, 0, sizeof(request));
	switch (type)
	{
	default:
		strcpy(request, "GET ");
		break;
	case HTTP_REQUEST_TYPE_GET:
		strcpy(request, "GET ");
		break;
	case HTTP_REQUEST_TYPE_PUT:
		strcpy(request, "PUT ");
		break;
	case HTTP_REQUEST_TYPE_POST:
		strcpy(request, "POST ");
		break;
	}
	strcat(request, uri);
	strcat(request, " HTTP/1.1\r\n");
	if (Socket->Send(request, strlen(request)) != LH_OK)
		return LH_FAIL;

	strcpy(host, "Host: ");
	strcat(host, Host);
	if (SendHeaderInternal(host) != LH_OK)
		return LH_FAIL;
	return SendHeaderInternal(UserAgent) != LH_OK ? LH_FAIL : LH_OK;
}

LH_RETURN LHHttp::SendHeader(char* header)
{
	char* copy;

	if (Socket == NULL)
		return LH_FAIL;
	if (Socket->Send(header, strlen(header)) != LH_OK)
		return LH_FAIL;
	if (Socket->Send("\r\n", strlen("\r\n")) != LH_OK)
		return LH_FAIL;

	copy = new char[strlen(header) + 10];
	strcpy(copy, header);
	SentHeaders.Add(copy);
	return LH_OK;
}

LH_RETURN LHHttp::SendHeaderInternal(char* header)
{
	if (Socket == NULL)
		return LH_FAIL;
	if (Socket->Send(header, strlen(header)) != LH_OK)
		return LH_FAIL;
	return Socket->Send("\r\n", strlen("\r\n")) != LH_OK ? LH_FAIL : LH_OK;
}

LH_RETURN LHHttp::SendInternalEndOfRequest(bool32_t send_headers)
{
	if (send_headers)
	{
		for (LHLinkedListIterator<char*> it = SentHeaders.GetStart(); it; it++)
		{
			if (Socket->Send(it.Get(), strlen(it.Get())) == LH_FAIL)
				return LH_FAIL;
			if (Socket->Send("\r\n", strlen("\r\n")) != LH_OK)
				return LH_FAIL;
		}
	}
	SendEndOfRequest();
	return LH_OK;
}

LH_RETURN LHHttp::SendEndOfRequest()
{
	if (Socket == NULL)
		return LH_FAIL;
	if (Socket->Send("\r\n", strlen("\r\n")) != LH_OK)
		return LH_FAIL;

	DocumentSize = 0;
	memset(DocumentType, 0, sizeof(DocumentType));
	Chunked = false;
	CleanData();
	return LH_OK;
}

LH_RETURN LHHttp::SendRawData(char* data, unsigned long size, unsigned long* sent, bool wait)
{
	fd_set    writable;
	timeval   timeout;
	LH_RETURN result;

	if (Socket == NULL)
		return LH_FAIL;

	if (wait)
	{
		Socket->SetBlockingMode(false);
		FD_ZERO(&writable);
		FD_SET(Socket->Socket, &writable);
		timeout.tv_sec = 0;
		timeout.tv_usec = LH_HTTP_SELECT_TIMEOUT_USEC;
		if (select(Socket->Socket + 1, NULL, &writable, NULL, &timeout) == 0)
			return LH_FAIL;
	}

	result = Socket->Send(data, size);
	if (sent != NULL)
		*sent = Socket->GetSendBytes();
	if (wait)
		Socket->SetBlockingMode(true);
	return result;
}

LH_RETURN LHHttp::GetDocumentType(char* type)
{
	strcpy(type, DocumentType);
	return LH_OK;
}

LH_RETURN LHHttp::GetDocumentSize(unsigned long* size)
{
	unsigned long length;
	char          line[LH_HTTP_CHUNK_SIZE_LINE_LENGTH];

	if (Socket == NULL)
		return LH_FAIL;
	if (strcmp(DocumentType, "") == 0)
		return LH_FAIL;

	if (Chunked == true)
	{
		length = sizeof(line);
		if (GetUntilCRLF(line, &length) != LH_OK)
			return LH_FAIL;
		sscanf(line, "%x", &DocumentSize);
	}
	*size = DocumentSize;
	return LH_OK;
}

LH_RETURN LHHttp::GetDocument(char* document, unsigned long* size)
{
	LH_RETURN     result;
	unsigned long length;
	char          line[LH_HTTP_CHUNK_LINE_LENGTH];

	if (Socket == NULL || strcmp(DocumentType, "") == 0 || DocumentSize <= 0 || *size <= 0)
		return LH_FAIL;

	result = Socket->Receive(document, *size, 0);
	if (Chunked == true)
	{
		memset(line, 0, sizeof(line));
		length = LH_HTTP_CHUNK_END_LENGTH;
		GetUntilCRLF(line, &length);
		length = LH_HTTP_CHUNK_TRAILER_LENGTH;
		memset(line, 0, sizeof(line));
		if (strcmp("0", line) != 0)
			GetUntilCRLF(line, &length);
		length = LH_HTTP_CHUNK_TRAILER_LENGTH;
		result = GetUntilCRLF(line, &length);
	}
	return result != LH_OK ? LH_FAIL : LH_OK;
}

LH_RETURN LHHttp::GetServerResponseHeader(unsigned short* status)
{
	unsigned long  length;
	unsigned short port;
	char           host[LH_HTTP_REDIRECT_HOST_LENGTH];
	char           word[LH_HTTP_WORD_LENGTH];
	char           line[LH_HTTP_RESPONSE_LINE_LENGTH];
	char           uri[LH_HTTP_URI_LENGTH];
	char           original[LH_HTTP_RESPONSE_LINE_LENGTH];
	char*          header;

	if (Socket == NULL)
		return LH_FAIL;

	DocumentSize = 0;
	memset(DocumentType, 0, sizeof(DocumentType));
	Chunked = false;
	length = sizeof(line);
	if (GetUntilCRLF(line, &length) != LH_OK)
		return LH_FAIL;

	_strlwr(line);
	if (strncmp(line, "http/1.1", strlen("http/1.1")) == 0)
		sscanf(line, "%s %d", word, status);
	else if (strncmp(line, "http/1.0", strlen("http/1.0")) == 0)
		sscanf(line, "%s %d", word, status);

	length = sizeof(line);
	while (GetUntilCRLF(line, &length) == LH_OK)
	{
		if (length != 0 || strcmp(line, "") != 0)
		{
			strcpy(original, line);
			_strlwr(line);
			if (strncmp(line, "content-length:", strlen("content-length:")) == 0)
				sscanf(line, "%s %ld", word, &DocumentSize);
			if (strncmp(line, "content-type:", strlen("content-type:")) == 0)
				sscanf(line, "%s %s", word, DocumentType);
			if (strncmp(line, "transfer-encoding:", strlen("transfer-encoding:")) == 0)
			{
				sscanf(line, "%s %s", word, word);
				if (strcmp(word, "chunked") == 0)
					Chunked = true;
			}
			header = new char[strlen(line) + 10];
			strcpy(header, line);
			ReceivedHeaders.Add(header);
			if (strncmp(line, "location:", strlen("location:")) == 0 && *status >= LH_HTTP_CODE_MULTIPLE_CHOICES &&
			    *status < LH_HTTP_CODE_BAD_REQUEST)
			{
				port = LH_HTTP_DEFAULT_PORT;
				CleanData();
				Close();
				ParseURI(original + strlen("Location:"), host, &port, uri);
				if (Open(host, port) == LH_OK && SendRequest(HTTP_REQUEST_TYPE_GET, uri) == LH_OK &&
				    SendInternalEndOfRequest(true) == LH_OK)
					return GetServerResponseHeader(status);
				return LH_FAIL;
			}
		}
		if (strcmp(line, "") == 0)
		{
			HeaderReceived = true;
			return LH_OK;
		}
		length = sizeof(line);
	}
	return LH_FAIL;
}

LH_RETURN LHHttp::UploadFile(char* file, char* uri)
{
	FILE*     handle;
	long      size;
	char*     data;
	LH_RETURN result;
	char      header[LH_HTTP_HEADER_LENGTH];

	handle = fopen(file, "rb");
	if (handle == NULL)
		return LH_FAIL;

	fseek(handle, 0, SEEK_END);
	size = ftell(handle);
	fseek(handle, 0, SEEK_SET);
	data = new char[size + 50];
	fread(data, size, 1, handle);
	fclose(handle);

	if (SendRequest(HTTP_REQUEST_TYPE_PUT, uri) != LH_OK)
	{
		delete data;
		return LH_FAIL;
	}
	sprintf(header, "Content-Length: %ld", size);
	if (SendHeader(header) != LH_OK)
	{
		delete data;
		return LH_FAIL;
	}
	if (SendEndOfRequest() != LH_OK)
	{
		delete data;
		return LH_FAIL;
	}
	result = SendRawData(data, size, NULL, false);
	delete data;
	return result != LH_OK ? LH_FAIL : LH_OK;
}

LH_RETURN LHHttp::GetUntilCRLF(char* line, unsigned long* length)
{
	bool          carriage_return = false;
	unsigned long count = 0;
	char          received;
	long          received_length;
	char          buffer[LH_HTTP_RESPONSE_LINE_LENGTH];

	if (Socket == NULL)
		return LH_FAIL;

	memset(buffer, 0, sizeof(buffer));
	memset(line, 0, *length);
	do
	{
		received_length = 1;
		if (Socket->ReceiveRaw(&received, &received_length) != LH_OK)
			return LH_FAIL;
		if (received_length != 0)
		{
			if (received == '\n' || carriage_return)
				received_length = 0;
			else if (received == '\r')
				carriage_return = true;
			else
				buffer[count++] = received;
		}
	} while (received_length != 0);

	if (line == NULL)
		return LH_FAIL;
	strncpy(line, buffer, *length > count ? count : *length);
	*length = count;
	return LH_OK;
}

LH_RETURN LHHttp::IsDataAvailable()
{
	return Socket->IsReadData();
}

LH_RETURN LHHttp::CheckServerResponseHeader(unsigned short* status, HTTP_RECEIVED_STATUS* received)
{
	unsigned long length;
	char          word[LH_HTTP_WORD_LENGTH];
	char          line[LH_HTTP_LINE_LENGTH];

	if (Socket == NULL)
		return LH_FAIL;

	length = sizeof(line);
	memset(word, 0, sizeof(word));
	if (IsDataAvailable() == LH_FAIL)
	{
		*received = HTTP_RECEIVED_STATUS_NO_DATA;
		return LH_FAIL;
	}
	if (GetUntilCRLF(line, &length) != LH_OK)
		return LH_FAIL;

	_strlwr(line);
	if (strncmp(line, "http/1.1", strlen("http/1.1")) == 0)
		sscanf(line, "%s %d", word, &StatusCode);
	if (strncmp(line, "content-length:", strlen("content-length:")) == 0)
		sscanf(line, "%s %ld", word, &DocumentSize);
	if (strncmp(line, "content-type:", strlen("content-type:")) == 0)
		sscanf(line, "%s %s", word, DocumentType);
	if (strncmp(line, "transfer-encoding:", strlen("transfer-encoding:")) == 0)
	{
		sscanf(line, "%s %s", word, word);
		if (strcmp(word, "chunked") == 0)
			Chunked = true;
	}

	if (strcmp(line, "") == 0)
	{
		HeaderReceived = true;
		*status = StatusCode;
		*received = HTTP_RECEIVED_STATUS_HEADER_COMPLETE;
	}
	else
	{
		*received = HTTP_RECEIVED_STATUS_LINE_READ;
	}
	return LH_OK;
}

LH_RETURN LHHttp::ParseURI(char* url, char* host, unsigned short* port, char* uri)
{
	char slashes = 0;
	bool done = false;
	long i;
	char number[LH_HTTP_PORT_LENGTH];

	if (host == NULL || port == NULL || uri == NULL)
		return LH_FAIL;

	while (iswspace(*url) || *url == ':')
		url++;

	for (i = 0; *url != '\0' && !done; url++)
	{
		if (slashes == 2 && *url != ':' && *url != '/')
			host[i++] = *url;
		if (*url == '/' && slashes != 2)
			slashes++;
		else if ((*url == '/' && slashes == 2) || (*url == ':' && slashes == 2))
			done = true;
	}
	host[i] = '\0';

	if (*url != '\0' && url[-1] == ':')
	{
		memset(number, 0, sizeof(number));
		for (i = 0; i != sizeof(number); i++)
		{
			if (*url == '\0' || *url == '/')
				break;
			number[i] = *url++;
		}
		if (number[0] != '\0')
			*port = atoi(number);
	}

	if (url[-1] == '/')
		url--;
	for (i = 0; *url != '\0'; i++)
		uri[i] = *url++;
	if (i == 0)
		strcpy(uri, "/");
	else
		uri[i] = '\0';
	return LH_OK;
}

void LHHttp::CleanData()
{
	if (SentHeaders.count > 0)
		SentHeaders.DeleteAll();
	if (ReceivedHeaders.count > 0)
		ReceivedHeaders.DeleteAll();
	HeaderReceived = false;
	StatusCode = 0;
}

LH_RETURN LHHttp::GetDocumentAsync(char* document, unsigned long* received)
{
	long          length = DocumentSize - *received;
	char*         data;
	LH_RETURN     result;
	unsigned long line_length;
	char          line[LH_HTTP_CHUNK_LINE_LENGTH];

	if (Socket == NULL)
		return LH_FAIL;
	if (strcmp(DocumentType, "") == 0)
		return LH_FAIL;
	if (DocumentSize <= 0)
		return LH_FAIL;

	data = document + *received;
	Socket->SetBlockingMode(false);
	result = Socket->ReceiveRaw(data, &length);
	Socket->SetBlockingMode(true);
	if (result != LH_OK)
		return LH_FAIL;

	*received += length;
	if (Chunked == true && *received == DocumentSize)
	{
		line_length = LH_HTTP_CHUNK_END_LENGTH;
		memset(line, 0, sizeof(line));
		GetUntilCRLF(line, &line_length);
		line_length = LH_HTTP_CHUNK_TRAILER_LENGTH;
		memset(line, 0, sizeof(line));
		if (strcmp("0", line) != 0)
			GetUntilCRLF(line, &line_length);
		line_length = LH_HTTP_CHUNK_TRAILER_LENGTH;
		GetUntilCRLF(line, &line_length);
	}
	return LH_OK;
}

void LHHttpHeaderStatus::Reset()
{
	Status = (unsigned long)-1;
	if (Headers.Headers.count > 0)
		Headers.Headers.DeleteAll();
	if (Location != NULL)
	{
		delete Location;
		Location = NULL;
	}
	if (LocationHost != NULL)
	{
		delete LocationHost;
		LocationHost = NULL;
	}
	if (LocationURI != NULL)
	{
		delete LocationURI;
		LocationURI = NULL;
	}
	LocationPort = 0;
}

void LHHttpHeaderStatus::ParseLocationData()
{
	char* text;
	char* start;
	long  i;
	char  port[LH_HTTP_HOST_LENGTH];

	if (LocationURI != NULL)
		return;
	text = Location;
	if (text == NULL)
		return;

	LocationPort = LH_HTTP_DEFAULT_PORT;
	if (lookforfirstchars(text, "http://") == LH_OK)
		text += strlen("http://");

	start = text;
	for (i = 0; *text != '\0'; i++)
	{
		if (*text == ':' || *text == '/')
			break;
		text++;
	}
	LocationHost = new char[i + 1];
	for (i = 0; *start != '\0'; i++)
	{
		if (*start == ':' || *start == '/')
			break;
		LocationHost[i] = *start++;
	}
	LocationHost[i] = '\0';

	if (*start == ':')
	{
		start++;
		for (i = 0; *start != '\0'; i++)
		{
			if (*start == '/')
				break;
			port[i] = *start++;
		}
		port[i] = '\0';
		LocationPort = atoi(port);
	}

	text = start;
	for (i = 0; *start != '\0'; i++)
		start++;
	LocationURI = new char[i + 1];
	for (i = 0; text[i] != '\0'; i++)
		LocationURI[i] = text[i];
	LocationURI[i] = '\0';
}

char* LHHttpHeaderStatus::GetLocationHost()
{
	ParseLocationData();
	return LocationHost;
}

char* LHHttpHeaderStatus::GetLocationURI()
{
	ParseLocationData();
	return LocationURI;
}

unsigned short LHHttpHeaderStatus::GetLocationPort()
{
	ParseLocationData();
	return LocationPort;
}

LHHttpDocumentParts::~LHHttpDocumentParts()
{
	if (Data != NULL)
	{
		delete Data;
		Data = NULL;
	}
	Size = 0;
}

void LHHttpHeaders::Reset()
{
	if (HeaderString != NULL)
	{
		delete HeaderString;
		HeaderString = NULL;
	}
	if (Headers.count > 0)
		Headers.DeleteAll();
}

void LHHttpHeaders::AddHeader(char* header)
{
	char* copy;

	if (header != NULL)
	{
		copy = new char[strlen(header) + 1];
		strcpy(copy, header);
		Headers.Add(copy);
	}
}

void LHHttpHeaders::AddHeader(char* name, char* value)
{
	char*  header;
	size_t length;

	if (name != NULL && value != NULL)
	{
		header = new char[strlen(name) + strlen(value) + 8];
		length = strlen(name);
		strcpy(header, name);
		if (name[length - 1] != ':')
			strcat(header, ":");
		strcat(header, " ");
		strcat(header, value);
		Headers.Add(header);
	}
}

char* LHHttpHeaders::GetHeader(char* name)
{
	LHLinkedNode<char*>* node;
	char*                header;
	char*                value;
	bool                 colon;

	for (node = Headers.GetStart(); node != NULL; node = node->next.Get())
	{
		header = node->payload;
		if (lookforfirstchars(header, name) == LH_OK)
		{
			value = header;
			colon = false;
			for (; *value != '\0'; value++)
			{
				if (*value == ':')
					colon = true;
				if (*value == ' ' && colon == true)
				{
					while (*value != '\0' && *value == ' ')
						value++;
					return value;
				}
			}
			return value;
		}
	}
	return NULL;
}

LHLinkedList<char*>* LHHttpHeaders::GetLinkedList()
{
	return &Headers;
}

char* LHHttpHeaders::GetHeaderString()
{
	unsigned long        length = 0;
	LHLinkedNode<char*>* node;

	if (HeaderString != NULL)
	{
		delete HeaderString;
		HeaderString = NULL;
	}
	if (GetHeader("User-Agent") == NULL)
		AddHeader(UserAgent);

	for (node = Headers.GetStart(); node != NULL; node = node->next.Get())
		length += strlen(node->payload) + 10;

	HeaderString = new char[length];
	strcpy(HeaderString, "");
	for (LHLinkedListIterator<char*> it = Headers.GetStart(); it; it++)
		strcat(HeaderString, LHSPrintf("%s\r\n", it.Get()).Text);
	return HeaderString;
}

void LHHttpHeaders::DeleteHeaderString()
{
	if (HeaderString != NULL)
	{
		delete HeaderString;
		HeaderString = NULL;
	}
}

LHHttp2::LHHttp2()
{
	Socket = NULL;
	Request = NULL;
	Port = 0;
	strcpy(Host, "");
	TimeOut = LH_HTTP_DEFAULT_TIME_OUT;
	LastActivity = 0;
	RequestState = LH_HTTP_REQUEST_STATE_IDLE;
	HeaderLineLength = 0;
	ReadSize = 0;
	Waiting = false;
	ChunkReceived = 0;
	MaxForwardings = LH_HTTP_DEFAULT_MAX_FORWARDINGS;
	Forwardings = 0;
	ChunkSize = 0;
	memset(ChunkLine, 0, sizeof(ChunkLine));
	ChunkLineLength = 0;
	ChunkHeaderRead = false;
	CurrentPart = NULL;
	RequestHeaders = new LHHttpHeaders;
	ResponseHeaders = new LHHttpHeaders;
}

LHHttp2::~LHHttp2()
{
	Close();
	Reset();
	delete RequestHeaders;
	RequestHeaders = NULL;
	delete ResponseHeaders;
	ResponseHeaders = NULL;
}

void LHHttp2::Reset()
{
	if (Socket != NULL)
	{
		delete Socket;
		Socket = NULL;
	}
	if (Request != NULL)
	{
		delete Request;
		Request = NULL;
	}
	if (RequestHeaders != NULL)
		RequestHeaders->Reset();
	if (ResponseHeaders != NULL)
		ResponseHeaders->Reset();
	if (DocumentParts.count > 0)
		DocumentParts.DeleteAll();

	SendSize = 0;
	strcpy(Host, "");
	LastActivity = 0;
	ReadSize = 0;
	RequestState = LH_HTTP_REQUEST_STATE_IDLE;
	Waiting = false;
	HeaderLineLength = 0;
	ChunkReceived = 0;
	ChunkSize = 0;
	memset(ChunkLine, 0, sizeof(ChunkLine));
	ChunkLineLength = 0;
	ChunkHeaderRead = false;
}

LH_RETURN LHHttp2::Open(char* host, unsigned short port)
{
	unsigned long server_port = 0;
	LH_RETURN     result;

	Socket = new LHSocketTCP;
	if (RegistryRetrieveULong("Software\\Lionhead Studios Ltd\\Black & White\\BWSetup", "ServerPort", &server_port) ==
	        LH_OK &&
	    server_port != 0 && port == LH_HTTP_DEFAULT_PORT)
		port = (unsigned short)server_port;

	LHTransportInfo transport_info(host, port);
	result = Socket->Connect(&transport_info);
	Socket->SetBlockingMode(false);
	if (result == LH_OK)
	{
		strcpy(Host, host);
		Port = port;
	}
	return result;
}

LH_RETURN LHHttp2::Close()
{
	if (Socket != NULL)
	{
		Socket->Disconnect();
		delete Socket;
		Socket = NULL;
	}
	Reset();
	return LH_OK;
}

LH_HTTP_STATUS LHHttp2::PrepareRequest(HTTP_REQUEST_TYPE type, char* uri, LHHttpHeaders* headers, char* data,
                                       unsigned long data_length)
{
	unsigned long extra = 20;
	char*         request_line = new char[strlen(uri) + 30];
	char*         header_string = NULL;
	char*         own_headers;
	unsigned long size;

	if (Request != NULL)
	{
		delete Request;
		Request = NULL;
	}
	SendSize = 0;

	switch (type)
	{
	case HTTP_REQUEST_TYPE_GET:
		strcpy(request_line, "GET ");
		break;
	case HTTP_REQUEST_TYPE_PUT:
		strcpy(request_line, "PUT ");
		break;
	case HTTP_REQUEST_TYPE_POST:
		strcpy(request_line, "POST ");
		break;
	default:
		strcpy(request_line, "GET ");
		break;
	}
	strcat(request_line, uri);
	strcat(request_line, " HTTP/1.1\r\n");

	if (headers != NULL)
	{
		header_string = headers->GetHeaderString();
		extra = strlen(header_string) + 20;
	}
	RequestHeaders->AddHeader("Host", Host);
	RequestHeaders->AddHeader("Connection: close");
	if (data != NULL)
	{
		RequestHeaders->AddHeader("Content-Length:", LHSPrintf("%ld", data_length).Text);
		extra += data_length + LH_HTTP_CRLF_LENGTH;
	}

	own_headers = RequestHeaders->GetHeaderString();
	size = strlen(own_headers) + extra + strlen(request_line);
	Request = new char[size];
	memset(Request, 0, size);
	strcpy(Request, request_line);
	if (header_string != NULL)
		strcat(Request, header_string);
	strcat(Request, own_headers);
	strcat(Request, "\r\n");
	RequestLength = strlen(Request);
	if (data != NULL)
	{
		memcpy(Request + RequestLength, data, data_length);
		RequestLength += data_length;
		strcat(Request, "\r\n");
	}

	RequestHeaders->DeleteHeaderString();
	if (headers != NULL)
		headers->DeleteHeaderString();
	delete request_line;
	return LH_HTTP_STATUS_REQUEST_PREPARED;
}

LH_RETURN LHHttp2::SendRawData(char* data, unsigned long size, unsigned long* sent, bool wait)
{
	fd_set    writable;
	timeval   timeout;
	LH_RETURN result;

	if (Socket == NULL)
		return LH_FAIL;

	if (wait)
	{
		Socket->SetBlockingMode(false);
		FD_ZERO(&writable);
		FD_SET(Socket->Socket, &writable);
		timeout.tv_sec = 0;
		timeout.tv_usec = LH_HTTP2_SELECT_TIMEOUT_USEC;
		if (select(Socket->Socket + 1, NULL, &writable, NULL, &timeout) == 0)
			return LH_FAIL;
	}

	result = Socket->Send(data, size);
	if (sent != NULL && result == LH_OK)
		*sent = Socket->GetSendBytes();
	if (wait)
		Socket->SetBlockingMode(true);
	return result;
}

void LHHttp2::ResetRequest()
{
	delete Request;
	Request = NULL;
	SendSize = 0;
	RequestLength = 0;
	ChunkSize = 0;
	ChunkReceived = 0;
}

LH_HTTP_STATUS LHHttp2::SendRequestAsync()
{
	unsigned long size;
	unsigned long sent;

	if (Request == NULL)
		return LH_HTTP_STATUS_NO_REQUEST;

	if (SendSize >= RequestLength)
	{
		ResetRequest();
		ResponseHeaders->Reset();
		RequestState = LH_HTTP_REQUEST_STATE_SENT;
		Waiting = false;
		return LH_HTTP_STATUS_REQUEST_SENT;
	}

	size = RequestLength - SendSize;
	if (size >= LH_HTTP_BLOCK_SIZE)
		size = LH_HTTP_BLOCK_SIZE;
	sent = 0;
	if (SendRawData(Request + SendSize, size, &sent, true) == LH_ERROR)
	{
		ResetRequest();
		memset(HeaderLine, 0, sizeof(HeaderLine));
		HeaderLineLength = 0;
		return LH_HTTP_STATUS_SEND_FAILED;
	}

	if (sent != 0 || !Waiting)
	{
		time(&LastActivity);
		Waiting = true;
	}
	else if ((unsigned long)time(NULL) > TimeOut + LastActivity)
	{
		ResetRequest();
		return LH_HTTP_STATUS_TIMED_OUT;
	}
	SendSize += sent;
	return LH_HTTP_STATUS_SENDING;
}

LH_RETURN LHHttp2::IsDataAvailable()
{
	if (Socket != NULL)
		return Socket->IsReadData();
	return LH_ERROR;
}

LH_HTTP_STATUS LHHttp2::ReceiveHeaderAsync()
{
	long           count = 1;
	bool           carriage_return = false;
	LH_HTTP_STATUS result = LH_HTTP_STATUS_RECEIVING_HEADER;
	unsigned short i;

	if (RequestState != LH_HTTP_REQUEST_STATE_SENT)
		return LH_HTTP_STATUS_NOT_WAITING_FOR_HEADER;

	if (HeaderLineLength == 0 && ResponseHeaders->Headers.count == 0 && !Waiting)
	{
		Waiting = true;
		time(&LastActivity);
	}

	if (IsDataAvailable() == LH_OK)
	{
		for (i = 0; i < LH_HTTP_BLOCK_SIZE && count != 0; i++)
		{
			if (Socket->ReceiveRaw(HeaderLine + HeaderLineLength, &count) != LH_OK)
				return LH_HTTP_STATUS_TIMED_OUT;
			if (count != 0)
			{
				if (HeaderLine[HeaderLineLength] == '\r')
					carriage_return = true;
				if (HeaderLine[HeaderLineLength] == '\n' && carriage_return)
				{
					HeaderLine[HeaderLineLength - 1] = '\0';
					if (strcmp(HeaderLine, "") == 0)
					{
						RequestState = LH_HTTP_REQUEST_STATE_HEADER_RECEIVED;
						Waiting = false;
						ChunkSize = 0;
						ChunkReceived = 0;
						memset(ChunkLine, 0, sizeof(ChunkLine));
						ChunkLineLength = 0;
						ChunkHeaderRead = false;
						if (CurrentPart != NULL)
						{
							delete CurrentPart;
							CurrentPart = NULL;
						}
						return LH_HTTP_STATUS_HEADER_RECEIVED;
					}
					if (lookforfirstchars(HeaderLine, "http/1.") == LH_OK)
					{
						ResponseHeaders->AddHeader("ServerCode", HeaderLine);
						HeaderLineLength = 0;
						memset(HeaderLine, 0, sizeof(HeaderLine));
					}
					else
					{
						ResponseHeaders->AddHeader(HeaderLine);
						HeaderLineLength = 0;
						memset(HeaderLine, 0, sizeof(HeaderLine));
					}
				}
				else
				{
					HeaderLineLength += count;
				}
			}
			else if ((unsigned long)time(NULL) > TimeOut + LastActivity)
			{
				ResponseHeaders->Reset();
				HeaderLineLength = 0;
				ChunkSize = 0;
				ChunkReceived = 0;
				ChunkLineLength = 0;
				result = LH_HTTP_STATUS_TIMED_OUT;
				memset(HeaderLine, 0, sizeof(HeaderLine));
				ChunkHeaderRead = false;
			}
		}
		if (i != 0)
			time(&LastActivity);
	}
	else if ((unsigned long)time(NULL) > TimeOut + LastActivity)
	{
		ResponseHeaders->Reset();
		HeaderLineLength = 0;
		memset(HeaderLine, 0, sizeof(HeaderLine));
		result = LH_HTTP_STATUS_TIMED_OUT;
	}
	return result;
}

LH_HTTP_STATUS LHHttp2::GetHeader(LHHttpHeaderStatus& status)
{
	LHLinkedNode<char*>* node;
	char*                header;
	char                 word[LH_HTTP_WORD_LENGTH];

	if (ResponseHeaders->Headers.count > 0)
	{
		for (node = ResponseHeaders->Headers.GetStart(); node != NULL; node = node->next.Get())
			status.Headers.AddHeader(node->payload);

		header = status.Headers.GetHeader("ServerCode");
		if (header != NULL)
			sscanf(header, "%s %ld", word, &status.Status);

		header = status.Headers.GetHeader("Location:");
		if (header != NULL)
		{
			if (status.Location != NULL)
			{
				delete status.Location;
				status.Location = NULL;
			}
			status.Location = new char[strlen(header) + 1];
			strcpy(status.Location, header);
		}

		Chunked = false;
		header = status.Headers.GetHeader("Content-Length");
		if (header != NULL)
			status.ContentLength = atol(header);
		else
			status.ContentLength = -1;

		header = status.Headers.GetHeader("Transfer-Encoding");
		if (header != NULL && lookforfirstchars(header, "chunked") == LH_OK)
			Chunked = true;
	}
	return LH_HTTP_STATUS_OK;
}

LH_HTTP_STATUS LHHttp2::GetUntilCRLF(char* line, unsigned long* length)
{
	long           count = 1;
	bool           carriage_return;
	unsigned short i;

	if (IsDataAvailable() == LH_OK)
	{
		for (i = 0; i < LH_HTTP_BLOCK_SIZE && count != 0; i++)
		{
			if (Socket->ReceiveRaw(line + *length, &count) != LH_OK)
				return LH_HTTP_STATUS_TIMED_OUT;
			if (count != 0)
			{
				if (line[*length] == '\r')
					carriage_return = true;
				if (line[*length] == '\n' && carriage_return)
				{
					line[*length - 1] = '\0';
					return LH_HTTP_STATUS_RECEIVED;
				}
				*length += count;
			}
		}
	}
	return LH_HTTP_STATUS_RECEIVING;
}

void LHHttp2::ResetDocumentRecv()
{
	HeaderLineLength = 0;
	ChunkSize = 0;
	ChunkReceived = 0;
	memset(HeaderLine, 0, sizeof(HeaderLine));
	memset(ChunkLine, 0, sizeof(ChunkLine));
	ChunkHeaderRead = false;
	if (DocumentParts.count != 0)
		DocumentParts.DeleteAll();
}

LH_HTTP_STATUS LHHttp2::ReceiveDocumentAsync()
{
	unsigned long  size;
	LH_HTTP_STATUS result = LH_HTTP_STATUS_RECEIVING;
	LH_HTTP_STATUS status;

	switch (Chunked)
	{
	case true:
		if (!ChunkHeaderRead)
		{
			status = GetUntilCRLF(ChunkLine, &ChunkLineLength);
			if (status == LH_HTTP_STATUS_RECEIVED)
			{
				size = 0;
				ChunkHeaderRead = true;
				sscanf(ChunkLine, "%X", &size);
				if (size > 0)
				{
					size += LH_HTTP_CRLF_LENGTH;
					CurrentPart = new LHHttpDocumentParts;
					CurrentPart->Data = new char[size];
					CurrentPart->Size = size;
				}
				else
				{
					Waiting = false;
					result = LH_HTTP_STATUS_RECEIVED;
				}
				memset(ChunkLine, 0, sizeof(ChunkLine));
				ChunkLineLength = 0;
			}
			else if (status == LH_HTTP_STATUS_TIMED_OUT)
				return status;
		}
		else if (CurrentPart != NULL)
		{
			if (CurrentPart->Received < CurrentPart->Size)
			{
				if (IsDataAvailable() == LH_OK)
				{
					size = CurrentPart->Size - CurrentPart->Received;
					if (size >= LH_HTTP_BLOCK_SIZE)
						size = LH_HTTP_BLOCK_SIZE;
					if (Socket->ReceiveRaw(CurrentPart->Data + CurrentPart->Received, (long*)&size) != LH_OK)
						return LH_HTTP_STATUS_RECEIVE_FAILED;
					CurrentPart->Received += size;
					ReadSize += size;
					time(&LastActivity);
				}
				else if (!Waiting)
				{
					time(&LastActivity);
					Waiting = true;
				}
				else if ((unsigned long)time(NULL) > TimeOut + LastActivity)
				{
					if (CurrentPart != NULL)
					{
						delete CurrentPart;
						CurrentPart = NULL;
					}
					ResetDocumentRecv();
					result = LH_HTTP_STATUS_TIMED_OUT;
				}
			}
			else if (CurrentPart->Received >= CurrentPart->Size)
			{
				CurrentPart->Size -= LH_HTTP_CRLF_LENGTH;
				DocumentParts.Add(CurrentPart);
				ChunkHeaderRead = false;
			}
		}
		else
			result = LH_HTTP_STATUS_RECEIVED;
		break;

	default:
		if (IsDataAvailable() == LH_OK)
		{
			CurrentPart = new LHHttpDocumentParts;
			CurrentPart->Data = new char[LH_HTTP_BLOCK_SIZE];
			size = LH_HTTP_BLOCK_SIZE;
			if (Socket->ReceiveRaw(CurrentPart->Data, (long*)&size) == LH_ERROR)
				size = 0;
			if (size == 0)
			{
				delete CurrentPart;
				CurrentPart = NULL;
				Waiting = false;
				result = LH_HTTP_STATUS_RECEIVED;
			}
			else
			{
				CurrentPart->Size = size;
				ReadSize += size;
				DocumentParts.Add(CurrentPart);
				time(&LastActivity);
			}
		}
		else if (!Waiting)
		{
			time(&LastActivity);
			Waiting = true;
		}
		else if ((unsigned long)time(NULL) > TimeOut + LastActivity)
		{
			if (CurrentPart != NULL)
			{
				delete CurrentPart;
				CurrentPart = NULL;
			}
			ResetDocumentRecv();
			result = LH_HTTP_STATUS_TIMED_OUT;
		}
		break;
	}
	return result;
}

unsigned long LHHttp2::GetDocumentSize()
{
	unsigned long                       size = 0;
	LHLinkedNode<LHHttpDocumentParts*>* node;

	for (node = DocumentParts.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload != NULL)
			size += node->payload->Size;
	}
	return size;
}

LH_HTTP_STATUS LHHttp2::GetDocument(char* document)
{
	unsigned long                       size = GetDocumentSize();
	unsigned long                       offset = 0;
	LHLinkedNode<LHHttpDocumentParts*>* node;

	for (node = DocumentParts.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload != NULL)
		{
			offset += node->payload->Size;
			memcpy(document + size - offset, node->payload->Data, node->payload->Size);
		}
	}
	return LH_HTTP_STATUS_OK;
}

LH_HTTP_STATUS LHHttp2::HelperGetDocument(bool redirected)
{
	LHHttpHeaderStatus status;
	LH_HTTP_STATUS     result;

	if (!redirected)
		Forwardings = 0;

	do
		result = SendRequestAsync();
	while (result != LH_HTTP_STATUS_NO_REQUEST && result != LH_HTTP_STATUS_REQUEST_SENT &&
	       result != LH_HTTP_STATUS_SEND_FAILED);

	if (result == LH_HTTP_STATUS_REQUEST_SENT)
	{
		do
			result = ReceiveHeaderAsync();
		while (result != LH_HTTP_STATUS_HEADER_RECEIVED && result != LH_HTTP_STATUS_RECEIVE_FAILED &&
		       result != LH_HTTP_STATUS_TIMED_OUT);

		if (result == LH_HTTP_STATUS_HEADER_RECEIVED)
		{
			GetHeader(status);
			if (status.Status == LH_HTTP_CODE_OK)
			{
				do
					result = ReceiveDocumentAsync();
				while (result != LH_HTTP_STATUS_RECEIVED && result != LH_HTTP_STATUS_RECEIVE_FAILED &&
				       result != LH_HTTP_STATUS_TIMED_OUT);
			}
			else if (status.Status >= LH_HTTP_CODE_MULTIPLE_CHOICES && status.Status < LH_HTTP_CODE_BAD_REQUEST)
			{
				if (status.Location != NULL)
				{
					Close();
					Reset();
					if (Open(status.GetLocationHost(), status.GetLocationPort()) == LH_OK &&
					    PrepareRequest(HTTP_REQUEST_TYPE_GET, status.GetLocationURI(), NULL, NULL, 0) ==
					        LH_HTTP_STATUS_REQUEST_PREPARED)
					{
						status.Reset();
						result = HelperGetDocument(true);
					}
				}
			}
		}
	}
	return result;
}
