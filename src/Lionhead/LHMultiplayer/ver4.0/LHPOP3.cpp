#define LH_MULTIPLAYER_EXPORTS
#include "LHPOP3.h"

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include "LHNetUser.h"
#include "LHSocketTCP.h"
#include "LHTransportInfo.h"

struct LHPOP3Month
{
	char          Name[5];
	unsigned char Number;
};

// TODO: name fabricated.
// BW1W120 10062920
static LHPOP3Month Months[12] = {
	{"Jan", 1}, {"Feb", 2}, {"Mar", 3}, {"Apr", 4},  {"May", 5},  {"Jun", 6},
	{"Jul", 7}, {"Aug", 8}, {"Sep", 9}, {"Oct", 10}, {"Nov", 11}, {"Dec", 12},
};

// Time of the last reply data, refreshed by SendCommandAsync but never read.
// TODO: name fabricated.
// BW1W120 1006a57c
static time_t LastReceiveTime;

// The Mac build has the helpers below as file statics, but here they are emitted in
// definition order ahead of LHPOP3's methods, which MSVC only does for external functions
// (it defers a static function until its first use).

// BW1W120 1001a360 BW1M119 0110acd0 (LHCombined Release)
LH_RETURN lookforfirstchars(char* text, char* prefix)
{
	unsigned long i;
	unsigned long length;

	if (text == NULL)
		return LH_ERROR;

	length = strlen(prefix);
	for (i = 0; i < length; i++)
	{
		if (text[i] == '\0')
			break;
		if (tolower(text[i]) != tolower(prefix[i]))
			return LH_FAIL;
	}
	return LH_OK;
}

// Decodes RFC 2047 "Q" encoded text up to the closing '?'.
// BW1W120 1001a3e0 BW1M119 0110abc0 (LHCombined Release)
LH_RETURN qdec(char* text, char* output, long* length)
{
	char hex[3];
	int  value = 0;

	output += *length;

	while (*text != '\0')
	{
		if (*text == '?')
			break;
		if (*text == '_')
		{
			*output = ' ';
		}
		else if (*text == '=')
		{
			hex[0] = *++text;
			hex[1] = *++text;
			hex[2] = '\0';
			sscanf(hex, "%x", &value);
			*output = (char)value;
		}
		else
		{
			*output = *text;
		}
		text++;
		output++;
		(*length)++;
	}
	return LH_OK;
}

// Decodes RFC 2047 "B" (base64) encoded text up to the closing '?'.
// BW1W120 1001a460 BW1M119 0110a980 (LHCombined Release)
LH_RETURN base64dec(char* text, char* output, long* length)
{
	int           count = 0;
	bool          done = false;
	long          position = *length;
	unsigned char in[4];
	char          c;
	bool          skip;

	memset(in, 0, sizeof(in));
	while (*text != '\0' && *text != '?')
	{
		c = *text;
		skip = false;
		if (done == true)
			break;
		if (c >= '0' && c <= '9')
		{
			c = c - '0' + 52;
		}
		else if (c >= 'A' && c <= 'Z')
		{
			c = c - 'A';
		}
		else if (c >= 'a' && c <= 'z')
		{
			c = c - 'a' + 26;
		}
		else if (c == '=')
		{
			if (done == true)
				break;
			count--;
			done = true;
			if (count < 0)
				count = 3;
		}
		else if (c == '+' || c == '/')
		{
			c = c == '+' ? 62 : 63;
		}
		else
		{
			skip = true;
		}

		if (!skip)
		{
			if (!done)
			{
				in[count] = c;
				count = (count + 1) & 3;
			}
			if (count == 0 || done == true)
			{
				char out0 = (in[0] << 2) | ((in[1] >> 4) & 0x3);
				char out1 = (in[1] << 4) | ((in[2] >> 2) & 0xf);
				char out2 = (in[2] << 6) | (in[3] & 0x3f);
				switch (count)
				{
				case 2:
					output[position++] = out0;
					output[position++] = out1;
					break;
				case 1:
					output[position++] = out0;
					break;
				default:
					output[position++] = out0;
					output[position++] = out1;
					output[position++] = out2;
					break;
				}
				memset(in, 0, sizeof(in));
			}
		}
		text++;
	}
	*length = position;
	return LH_OK;
}

// Decodes an RFC 2047 encoded word, returning LH_ERROR when the text is not one.
// BW1W120 1001a590 BW1M119 0110a820 (LHCombined Release)
LH_RETURN lookfordecoding(char* text, char* output, long* length)
{
	char* start;
	char* encoded;
	char  encoding;

	if (lookforfirstchars(text, "Message-ID") != LH_OK && lookforfirstchars(text, "X-UIDL") != LH_OK)
	{
		start = strstr(text, "=?");
		if (start != NULL)
		{
			encoded = strstr(start + strlen("=?") + 1, "?") + 1;
			encoding = tolower(*encoded);
			encoded += 2;
			switch (encoding)
			{
			case 'q':
				qdec(encoded, output, length);
				return LH_FAIL;
			case 'b':
				base64dec(encoded, output, length);
				return LH_FAIL;
			}
		}
	}
	return LH_ERROR;
}

// Converts a "date: " header line to a time_t, normalising its zone to GMT.
// BW1W120 1001a650 BW1M119 0110a330 (LHCombined Release)
LH_RETURN LHParseMailDate(char* line, long* date)
{
	struct tm time;
	char      buffer[200];
	long      i;
	long      zone;
	long      hour;
	char*     text;

	*date = 0;
	if (strncmp("date: ", line, strlen("date: ")) != 0)
		return LH_FAIL;

	text = line + strlen("date: ");
	while (*text != '\0' && *text != ',')
		text++;
	text++;
	while (*text != '\0' && *text == ' ')
		text++;
	if (*text == '\0')
		return LH_FAIL;

	for (i = 0; *text != ' ' && *text != '\0'; text++)
		buffer[i++] = *text;
	buffer[i] = '\0';
	text++;
	time.tm_mday = atol(buffer);

	for (i = 0; *text != ' ' && *text != '\0'; text++)
		buffer[i++] = *text;
	buffer[i] = '\0';
	for (i = 0; i < 12; i++)
	{
		if (strcmp(buffer, Months[i].Name) == 0)
			time.tm_mon = Months[i].Number - 1;
	}

	text++;
	for (i = 0; *text != ' ' && *text != '\0'; text++)
		buffer[i++] = *text;
	buffer[i] = '\0';
	text++;
	time.tm_year = atol(buffer) - 1900;

	for (i = 0; *text != ':' && *text != '\0'; text++)
		buffer[i++] = *text;
	buffer[i] = '\0';
	text++;
	time.tm_hour = atol(buffer);

	for (i = 0; *text != ':' && *text != '\0'; text++)
		buffer[i++] = *text;
	buffer[i] = '\0';
	text++;
	time.tm_min = atol(buffer) - 1;

	for (i = 0; *text != ' ' && *text != '\0'; text++)
		buffer[i++] = *text;
	buffer[i] = '\0';
	text++;
	time.tm_sec = atol(buffer) - 1;

	for (i = 0; *text != ' ' && *text != '\0'; text++)
		buffer[i++] = *text;
	buffer[i] = '\0';
	time.tm_isdst = -1;
	zone = atol(buffer) / 100;

	_putenv("TZ=GMT+0GDT");
	_tzset();

	hour = time.tm_hour;
	if (zone > 0)
		hour = time.tm_hour - zone;
	else if (zone < 0)
		hour = time.tm_hour + zone;

	if (hour < 0)
	{
		if (time.tm_mday >= 2)
			time.tm_mday--;
		time.tm_mday += hour / 24;
		time.tm_hour = hour % 24 + 24;
		if (time.tm_mday < 1)
		{
			time.tm_mday = 30;
			if (--time.tm_mon < 1)
			{
				time.tm_mon = 12;
				time.tm_year--;
			}
		}
	}
	else if (hour > 24)
	{
		if (time.tm_mday < 31)
		{
			time.tm_mday += hour / 24;
			time.tm_hour += hour % 24;
		}
	}
	else
	{
		if (zone > 0)
			time.tm_hour -= zone;
		else if (zone < 0)
			time.tm_hour -= zone;
	}

	*date = mktime(&time);
	_putenv("TZ=");
	_tzset();
	return LH_OK;
}

// BW1W120 1001a990 BW1M119 0110a260 (LHCombined Release)
LHPOP3Mail* GetLastMail(LHLinkedList<LHPOP3Mail*>& mails)
{
	long                       highest = 0;
	LHPOP3Mail*                last = NULL;
	LHLinkedNode<LHPOP3Mail*>* node;

	for (node = mails.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload != NULL && node->payload->Number > highest)
		{
			highest = node->payload->Number;
			last = node->payload;
		}
	}
	return last;
}

LHPOP3::LHPOP3()
{
	Port = 0;
	memset(Server, 0, sizeof(Server));
	memset(User, 0, sizeof(User));
	memset(User, 0, sizeof(User));
	memset(Received, 0, sizeof(Received));
	ReceivedLength = 0;
	NrOfNewMails = 0;
	SubjectStatus = LH_OK;
	Socket = NULL;
	field_0x200 = false;
	CommandState = 0;
	ConnectState = 0;
	Response = NULL;
	FromLength = 200;
	SubjectLength = 200;
	Timeout = 45;
}

LHPOP3::~LHPOP3()
{
	Lines.DeleteAll();
	delete Socket;
}

LH_RETURN LHPOP3::SetLogin(char* user, char* password, char* server, long port)
{
	if (user == NULL || password == NULL || server == NULL || port == 0)
		return LH_ERROR;

	strcpy(User, user);
	strcpy(Password, password);
	Port = port;
	strcpy(Server, server);
	return LH_OK;
}

LH_RETURN LHPOP3::ParseLine(char* line, long length, char* output, long* output_length, LH_POP3_PARSE parse, long max)
{
	char*     text;
	long      i;
	LH_RETURN result;

	line[length - 1] = '\0';
	if (strstr(line, ": ") != NULL)
	{
		for (text = line; *text != '\0'; text++)
		{
			if (*text == ':')
				break;
			*text = tolower(*text);
		}
	}

	switch (parse)
	{
	case LH_POP3_PARSE_FROM:
		text = strstr(line, "from: ");
		if (text == NULL)
			break;
		text += strlen("from: ");
		result = lookfordecoding(text, output, output_length);
		if (result != LH_ERROR)
			return result;
		i = 0;
		while (*text != '<' && *text != '\0' && i < max)
		{
			if (*text != '"')
				*output = *text;
			else
				output--;
			text++;
			output++;
			i++;
		}
		while (*output == ' ')
			output--;
		output[-1] = '\0';
		*output_length = i;
		break;

	case LH_POP3_PARSE_SUBJECT:
		text = strstr(line, "subject: ");
		if (text == NULL && *output_length <= 0)
			break;
		if (*output_length == 0)
			text += strlen("subject: ");
		else
			text = line;
		result = lookfordecoding(text, output, output_length);
		if (result != LH_ERROR || text == line)
			return result;
		i = 0;
		while (*text != '\n' && *text != '\r' && *text != '\0' && i < max)
		{
			*output = *text;
			text++;
			output++;
			i++;
		}
		*output = '\0';
		*output_length = i;
		break;
	}
	return LH_OK;
}

LH_RETURN LHPOP3::ScanLines(char* data, long length, char* remainder, long* remainder_length, bool multi_line)
{
	char*       line_start = data;
	char*       out = remainder;
	long        line_length = 0;
	long        i;
	char*       text;
	LHPOP3Line* line;

	for (i = 0; i < length; i++, data++)
	{
		if (data[0] == '\r' && data[1] == '\n' && i + 2 != length - 1 && multi_line == true)
		{
			text = new char[line_length + 10];
			line = new LHPOP3Line;
			memcpy(text, line_start, line_length + 2);
			text[line_length + 2] = '\0';
			line->Length = line_length + 2;
			line->Data = text;
			Lines.Add(line);
			line_start = data + 2;
			if (data[-1] == '.' && data[-2] == '\n' && data[-3] == '\r')
			{
				data[-1] = '.';
			}
			else
			{
				line_length = -1;
				memset(remainder, 0, 1024);
				out = remainder - 1;
			}
			i++;
			data++;
		}
		else
		{
			*out = *data;
		}
		line_length++;
		out++;
	}
	*out = '\0';
	*remainder_length = line_length;
	return LH_OK;
}

LH_RETURN LHPOP3::SearchForSpecialChar(char* data, long length, char* line, char* remainder, long* line_length,
                                       long* remainder_length)
{
	long count = 0;
	bool found = false;
	long i;

	for (i = 0; i != length; i++)
	{
		if (data[0] == '\r' && data[1] == '\n' && i + 2 != length)
		{
			line[0] = '\r';
			line[1] = '\n';
			line[2] = '\0';
			found = true;
			*line_length = count;
			line = remainder;
			count = 0;
		}
		else
		{
			*line = *data;
		}
		data++;
		line++;
		count++;
	}
	*line = '\0';
	if (found == true)
	{
		*remainder_length = count;
		return LH_OK;
	}
	*line_length = count;
	return LH_OK;
}

LH_RETURN LHPOP3::SendCommandAsync(char* command, char** response, bool multi_line)
{
	char                       buffer[2048];
	char                       previous[2048];
	unsigned long              length = 1024;
	time_t                     now = 0;
	LH_RETURN                  result;
	long                       total;
	long                       offset;
	char*                      text;
	LHLinkedNode<LHPOP3Line*>* node;
	LHPOP3Line*                line;

	switch (CommandState)
	{
	case 0:
		if (Socket == NULL)
		{
			Socket = NULL;
			return LH_ERROR;
		}
		if (strcmp(command, "") != 0)
			Socket->Send(LHSPrintf("%s\r\n", command).Text, strlen(LHSPrintf("%s\r\n", command).Text));
		CommandState = 2;
		ReceivedLength = 0;
		memset(Received, 0, sizeof(Received));
		Lines.DeleteAll();
		time(&LastReceiveTime);
		return LH_FAIL;

	case 2:
		if (Socket->IsReadData() != LH_OK)
			return LH_FAIL;
		result = Socket->ReceiveRaw(buffer, (long*)&length);
		if (result == LH_ERROR)
		{
			if (length == 1024)
			{
				ReceivedLength = 0;
				delete Socket;
				Socket = NULL;
				return LH_ERROR;
			}
			return LH_FAIL;
		}
		if (result != LH_OK)
			return LH_FAIL;
		if (length > 0)
		{
			time(&LastReceiveTime);

			if (ReceivedLength > 0)
			{
				memcpy(previous, buffer, sizeof(previous));
				memset(buffer, 0, sizeof(buffer));
				memcpy(buffer, Received, ReceivedLength);
				memcpy(buffer + ReceivedLength, previous, length);
			}
			memset(Received, 0, sizeof(Received));
			if (buffer[0] == '-')
			{
				if (tolower(buffer[1]) == 'e' && tolower(buffer[2]) == 'r' && tolower(buffer[3]) == 'r')
					multi_line = false;
			}
			ScanLines(buffer, length + ReceivedLength, Received, (long*)&ReceivedLength, multi_line);

			if (Received[ReceivedLength - 1] == '\n' && Received[ReceivedLength - 2] == '\r' && !multi_line)
			{
				CommandState = 3;
				*response = new char[ReceivedLength + 10];
				memset(*response, 0, ReceivedLength + 10);
				memcpy(*response, Received, ReceivedLength);
				ReceivedLength = 0;
				return LH_OK;
			}
			if (Received[0] != '.' || Received[1] != '\0' || multi_line != true)
				return LH_FAIL;

			ReceivedLength = 0;
			CommandState = 3;
			total = 0;
			for (node = Lines.GetStart(); node != NULL; node = node->next.Get())
			{
				line = node->payload;
				if (line != NULL && line->Length != 0 && line->Data != NULL)
					total += line->Length;
			}
			text = new char[total + 100];
			*response = text;
			offset = 0;
			for (node = Lines.GetStart(); node != NULL; node = node->next.Get())
			{
				line = node->payload;
				if (line != NULL)
				{
					memcpy(text + offset, line->Data, line->Length);
					offset += line->Length;
				}
			}
			return LH_OK;
		}
		else
		{
			time(&now);
		}
		return LH_FAIL;

	case 3:
		CommandState = 0;
		return LH_FAIL;
	}
	return LH_FAIL;
}

LH_RETURN LHPOP3::OpenConnectionAsync()
{
	char      reply[200];
	char*     response = reply;
	LH_RETURN result;

	switch (ConnectState)
	{
	case 0: {
		if (Socket != NULL)
		{
			delete Socket;
			Socket = NULL;
		}
		Socket = new LHSocketTCP;
		LHTransportInfo transport_info(Server, (unsigned short)Port);
		if (Socket->Connect(&transport_info) != LH_OK)
		{
			delete Socket;
			Socket = NULL;
			ConnectState = 0;
			return LH_ERROR;
		}
		Socket->SetBlockingMode(false);
		ConnectState = 2;
		return LH_FAIL;
	}

	case 2:
		result = SendCommandAsync("", &response, false);
		if (result == LH_OK)
		{
			ConnectState = 3;
			return LH_FAIL;
		}
		if (result == LH_ERROR)
			return result;
		break;

	case 3:
		ConnectState = 0;
		return LH_OK;
	}
	return LH_FAIL;
}

LH_RETURN LHPOP3::LoginAsync(LH_POP3_ACTION* action)
{
	LH_RETURN result;

	if (Socket == NULL)
		return LH_ERROR;

	switch (*action)
	{
	case LH_POP3_ACTION_START:
		if (Response != NULL)
		{
			delete Response;
			Response = NULL;
		}
	case LH_POP3_ACTION_RECEIVED:
		result = SendCommandAsync(LHSPrintf("USER %s", User).Text, &Response, false);
		if (result == LH_OK)
		{
			*action = LH_POP3_ACTION_SEND_2;
			return LH_FAIL;
		}
		if (result != LH_FAIL)
			return LH_ERROR;
		*action = LH_POP3_ACTION_RECEIVED;
		return result;

	case LH_POP3_ACTION_SEND_2:
		result = SendCommandAsync(LHSPrintf("PASS %s", Password).Text, &Response, false);
		if (result == LH_OK)
		{
			*action = LH_POP3_ACTION_RECEIVED_2;
			return LH_FAIL;
		}
		if (result == LH_ERROR)
			break;
		return LH_FAIL;

	case LH_POP3_ACTION_RECEIVED_2:
		if (strncmp(_strlwr(Response), "+ok", 3) == 0)
		{
			*action = LH_POP3_ACTION_DONE;
			return LH_OK;
		}
		delete Socket;
		Socket = NULL;
		break;

	default:
		delete Socket;
		Socket = NULL;
		break;
	}
	return LH_ERROR;
}

LH_RETURN LHPOP3::GetMsgListAsync(LHLinkedList<LHPOP3Mail*>& mails, LH_POP3_ACTION* action)
{
	LH_RETURN                  result;
	LHPOP3Mail*                last;
	LHPOP3Mail*                mail;
	LHLinkedNode<LHPOP3Mail*>* mail_node;
	LHLinkedNode<LHPOP3Line*>* node;
	LHPOP3Line*                line;
	long                       number;
	long                       size;

	if (Socket == NULL)
		return LH_ERROR;

	switch (*action)
	{
	case LH_POP3_ACTION_START:
		if (Response != NULL)
		{
			delete Response;
			Response = NULL;
		}
		*action = LH_POP3_ACTION_SEND;
		return LH_FAIL;

	case LH_POP3_ACTION_SEND:
		result = SendCommandAsync("LIST", &Response, true);
		if (result == LH_OK)
		{
			*action = LH_POP3_ACTION_RECEIVED;
			return LH_FAIL;
		}
		if (result == LH_ERROR)
			break;
		return LH_FAIL;

	case LH_POP3_ACTION_DONE:
		*action = LH_POP3_ACTION_START;
		return LH_FAIL;

	case LH_POP3_ACTION_RECEIVED:
		last = GetLastMail(mails);
		if (last == NULL)
		{
			last = new LHPOP3Mail;
			last->Number = 0;
			NrOfAllMails = 0;
		}
		NrOfNewMails = 0;
		for (mail_node = mails.GetStart(); mail_node != NULL; mail_node = mail_node->next.Get())
		{
			if (mail_node->payload != NULL)
				mail_node->payload->New = false;
		}
		for (node = Lines.GetStart(); node != NULL; node = node->next.Get())
		{
			line = node->payload;
			if (line != NULL && strncmp(_strlwr(line->Data), "+ok", 3) != 0 &&
			    strncmp(_strlwr(line->Data), ".", 1) != 0)
			{
				sscanf(line->Data, "%ld %ld\r\n", &number, &size);
				if (number > last->Number)
				{
					mail = new LHPOP3Mail;
					mail->Number = number;
					mail->Size = size;
					mail->New = true;
					mails.Add(mail);
					NrOfNewMails++;
				}
			}
		}
		if (last->Number == 0)
			delete last;
		NrOfAllMails = mails.count;
		*action = LH_POP3_ACTION_START;
		return LH_OK;

	case LH_POP3_ACTION_SEND_2:
		if (SendCommandAsync("UIDL", &Response, true) == LH_OK)
			*action = LH_POP3_ACTION_RECEIVED_2;
		return LH_FAIL;

	case LH_POP3_ACTION_RECEIVED_2:
		if (strncmp(_strlwr(Response), "+ok", 3) == 0)
		{
		}
		*action = LH_POP3_ACTION_DONE;
		return LH_OK;

	default:
		delete Socket;
		Socket = NULL;
		break;
	}
	return LH_ERROR;
}

LH_RETURN LHPOP3::LogoutAsync(LH_POP3_ACTION* action)
{
	LH_RETURN result;

	if (Socket == NULL)
		return LH_ERROR;

	switch (*action)
	{
	case LH_POP3_ACTION_START:
		if (Response != NULL)
		{
			delete Response;
			Response = NULL;
		}
		*action = LH_POP3_ACTION_SEND;
	case LH_POP3_ACTION_SEND:
		result = SendCommandAsync("QUIT", &Response, false);
		// TODO: the redundant assignment reproduces the target's "mov eax, 3" after the
		// compare; plainer spellings fold into a sete.
		if (result == LH_OK)
			*action = LH_POP3_ACTION_DONE;
		else if (result == LH_ERROR)
			result = LH_ERROR;
		else
			return LH_FAIL;
		return result;

	case LH_POP3_ACTION_DONE:
		*action = LH_POP3_ACTION_START;
		return LH_FAIL;
	}

	delete Socket;
	Socket = NULL;
	return LH_ERROR;
}

LH_RETURN LHPOP3::GetMailNameSubject(long number, LHPOP3Mail& mail, LH_POP3_ACTION* action)
{
	LH_RETURN                  result;
	LHLinkedNode<LHPOP3Line*>* node;
	LHPOP3Line*                line;
	long                       date;

	if (Socket == NULL)
		return LH_ERROR;

	switch (*action)
	{
	case LH_POP3_ACTION_START:
		if (Response != NULL)
		{
			delete Response;
			Response = NULL;
		}
		*action = LH_POP3_ACTION_SEND;
	case LH_POP3_ACTION_SEND:
		result = SendCommandAsync(LHSPrintf("TOP %ld 15", number).Text, &Response, true);
		if (result == LH_OK)
		{
			*action = LH_POP3_ACTION_RECEIVED;
			return LH_FAIL;
		}
		if (result == LH_ERROR)
			break;
		return LH_FAIL;

	case LH_POP3_ACTION_RECEIVED: {
		memset(From, 0, sizeof(From));
		memset(Subject, 0, sizeof(Subject));
		SubjectLength = 0;
		FromLength = 0;

		LHLinkedList<LHPOP3Line*> lines;
		for (node = Lines.GetStart(); node != NULL; node = node->next.Get())
			lines.Add(node->payload);
		Lines.RemoveAll();

		for (node = lines.GetStart(); node != NULL; node = node->next.Get())
		{
			line = node->payload;
			if (line != NULL && strncmp(line->Data, "+OK", 3) != 0 && strncmp(line->Data, "+Ok", 3) != 0 &&
			    strncmp(line->Data, "+ok", 3) != 0 && strncmp(line->Data, ".", 1) != 0)
			{
				ParseLine(line->Data, line->Length, From, &FromLength, LH_POP3_PARSE_FROM, 1024);
				SubjectStatus =
					ParseLine(line->Data, line->Length, Subject, &SubjectLength, LH_POP3_PARSE_SUBJECT, 1024);
				if (LHParseMailDate(line->Data, &date) == LH_OK)
					mail.Date = date;
			}
		}
		lines.DeleteAll();

		strcpy(mail.From, From);
		strcpy(mail.Subject, Subject);
		*action = LH_POP3_ACTION_START;
		return LH_OK;
	}

	case LH_POP3_ACTION_DONE:
		if (Response != NULL)
		{
			delete Response;
			Response = NULL;
		}
		*action = LH_POP3_ACTION_START;
		return LH_FAIL;

	default:
		delete Socket;
		Socket = NULL;
		break;
	}
	return LH_ERROR;
}
