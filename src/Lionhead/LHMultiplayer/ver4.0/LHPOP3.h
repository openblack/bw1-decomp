#ifndef BW1_DECOMP_LH_POP3_INCLUDED_H
#define BW1_DECOMP_LH_POP3_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <string.h> /* For memset */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

class LHSocketTCP;

// Progress of one asynchronous POP3 exchange; callers start at 0 and poll until a call
// returns something other than LH_FAIL.
// TODO: enumerator names unknown. 1 is never used.
enum LH_POP3_ACTION
{
	LH_POP3_ACTION_START = 0,
	LH_POP3_ACTION_SEND = 2,
	LH_POP3_ACTION_DONE = 3,
	LH_POP3_ACTION_RECEIVED = 4,
	LH_POP3_ACTION_SEND_2 = 5,
	LH_POP3_ACTION_RECEIVED_2 = 6,
};

// Header field LHPOP3::ParseLine extracts.
enum LH_POP3_PARSE
{
	LH_POP3_PARSE_FROM = 0,
	LH_POP3_PARSE_SUBJECT = 1,
};

class LH_MULTIPLAYER_API LHPOP3Mail
{
public:
	long Number;
	long Size;
	char UIDL[50];     /* 0x8 */
	char From[200];    /* 0x3a */
	char Subject[200]; /* 0x102 */
	bool New;          /* 0x1ca */
	long Date;         /* 0x1cc */

	// BW1W120 10011b90
	LHPOP3Mail()
	{
		Number = 0;
		Size = 0;
		memset(UIDL, 0, sizeof(UIDL));
		memset(From, 0, sizeof(From));
		memset(Subject, 0, sizeof(Subject));
		New = false;
		Date = 0;
	}
};
static_assert(sizeof(LHPOP3Mail) == 0x1d0, "LHPOP3Mail size is incorrect");

// One line of a server reply, as split by LHPOP3::ScanLines.
class LH_MULTIPLAYER_API LHPOP3Line
{
public:
	char* Data;
	long  Length;

	// BW1W120 10011c00
	LHPOP3Line()
	{
		Data = NULL;
		Length = 0;
	}
	// BW1W120 10011c10 BW1M119 01108520 (LHCombined Release)
	~LHPOP3Line()
	{
		delete Data;
		Data = NULL;
		Length = 0;
	}
};
static_assert(sizeof(LHPOP3Line) == 0x8, "LHPOP3Line size is incorrect");

class LH_MULTIPLAYER_API LHPOP3
{
public:
	char                      Server[200];
	long                      Port;          /* 0xc8 */
	char                      User[150];     /* 0xcc */
	char                      Password[150]; /* 0x162 */
	long                      Timeout;       /* 0x1f8 */
	LHSocketTCP*              Socket;        /* 0x1fc */
	bool                      field_0x200;
	unsigned long             NrOfNewMails;   /* 0x204 */
	unsigned long             NrOfAllMails;   /* 0x208 */
	long                      CommandState;   /* 0x20c */
	long                      ConnectState;   /* 0x210 */
	LHLinkedList<LHPOP3Line*> Lines;          /* 0x214 */
	char                      Received[1024]; /* 0x21c */
	unsigned long             ReceivedLength; /* 0x61c */
	char*                     Response;       /* 0x620 */
	LH_RETURN                 SubjectStatus;  /* 0x624 */
	char                      From[1024];     /* 0x628 */
	char                      Subject[1024];  /* 0xa28 */
	long                      FromLength;     /* 0xe28 */
	long                      SubjectLength;  /* 0xe2c */

	// BW1W120 1001a9c0 BW1M119 0110a160 (LHCombined Release)
	LHPOP3();
	// BW1W120 1001aa70 BW1M119 0110a0a0 (LHCombined Release)
	~LHPOP3();

	// BW1W120 1001ab40 BW1M119 01109fc0 (LHCombined Release)
	LH_RETURN SetLogin(char* user, char* password, char* server, long port);
	// BW1W120 1001af90 BW1M119 01109520 (LHCombined Release)
	LH_RETURN SendCommandAsync(char* command, char** response, bool multi_line);
	// BW1W120 1001b3c0 BW1M119 01109380 (LHCombined Release)
	LH_RETURN OpenConnectionAsync();
	// BW1W120 1001b5a0 BW1M119 011091a0 (LHCombined Release)
	LH_RETURN LoginAsync(LH_POP3_ACTION* action);
	// BW1W120 1001b740 BW1M119 01108b90 (LHCombined Release)
	LH_RETURN GetMsgListAsync(LHLinkedList<LHPOP3Mail*>& mails, LH_POP3_ACTION* action);
	// BW1W120 1001baa0 BW1M119 01108a50 (LHCombined Release)
	LH_RETURN LogoutAsync(LH_POP3_ACTION* action);
	// BW1W120 1001bb70 BW1M119 01108120 (LHCombined Release)
	LH_RETURN GetMailNameSubject(long number, LHPOP3Mail& mail, LH_POP3_ACTION* action);

	// BW1W120 10011c50
	unsigned long GetNrOfNewMails() { return NrOfNewMails; }
	// BW1W120 10011c60
	unsigned long GetNrofAllMails() { return NrOfAllMails; }

private:
	// BW1W120 1001ac10 BW1M119 01109d40 (LHCombined Release)
	LH_RETURN ParseLine(char* line, long length, char* output, long* output_length, LH_POP3_PARSE parse, long max);
	// BW1W120 1001ad80 BW1M119 01109b50 (LHCombined Release)
	LH_RETURN ScanLines(char* data, long length, char* remainder, long* remainder_length, bool multi_line);
	// BW1W120 1001af10 BW1M119 01109a60 (LHCombined Release)
	LH_RETURN SearchForSpecialChar(char* data, long length, char* line, char* remainder, long* line_length,
	                               long* remainder_length);
};
static_assert(sizeof(LHPOP3) == 0xe30, "LHPOP3 size is incorrect");

#endif /* BW1_DECOMP_LH_POP3_INCLUDED_H */
