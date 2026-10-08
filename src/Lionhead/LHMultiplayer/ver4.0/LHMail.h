#ifndef BW1_DECOMP_LH_MAIL_INCLUDED_H
#define BW1_DECOMP_LH_MAIL_INCLUDED_H

#include <assert.h>  /* For static_assert */
#include <time.h>    /* For time_t */
#include <windows.h> /* For HMODULE */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"
#include "LHPOP3.h"

// A mail waiting to be shown in game.
struct LHMailEmail
{
	char Name[350];
	char Subject[1024]; /* 0x15e */
};
static_assert(sizeof(LHMailEmail) == 0x55e, "LHMailEmail size is incorrect");

// One sender name in the personal address book.
struct LHMailContacts
{
	char Name[350];
};
static_assert(sizeof(LHMailContacts) == 0x15e, "LHMailContacts size is incorrect");

// In-game email: watches the player's real inbox (through Outlook or POP3) and queues
// mails from known senders. Vtable: 100506a0.
class LH_MULTIPLAYER_API LHMail
{
public:
	long                          DriverType;           // 0 for LHMailOutlook, 1 for LHMailPOP3.
	bool                          SystemActive;         /* 0x8 */
	unsigned long                 StartupTime;          // +c; time(); older mails are skipped.
	LHLinkedList<LHMailEmail*>    MailQueue;            /* 0x10 */
	LHLinkedList<LHMailContacts*> ContactList;          /* 0x18 */
	char                          AddressBookFile[350]; /* 0x20 */
	bool                          CurrentCheckStatus;   /* 0x17e */
	unsigned long                 CheckTime;            // +180; milliseconds between checks.

	// BW1W120 10069118 BW1M119 null
	static unsigned long SeedCounter;

	// BW1W120 10012560 BW1M119 010fa660 (LHCombined Release)
	LHMail(char* address_book);
	// BW1W120 100125f0 BW1M119 010fa5d0 (LHCombined Release)
	virtual ~LHMail();
	// BW1W120 purecall BW1M119 purecall
	virtual bool ReloadDriver() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual bool CleanUpDriver() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual bool CallInitDriver() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN DriverCheckMails() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual bool DriverGetContactNames(unsigned long* count) = 0;

	// BW1W120 10012310 BW1M119 010facc0 (LHCombined Release)
	static void DecodeMemory(char* data, char** decoded, unsigned long* length);
	// BW1W120 100123d0 BW1M119 010fa9c0 (LHCombined Release)
	static void EncodeMemory(char* data, char** encoded, unsigned long* length, char key);
	// BW1W120 10012e00 BW1M119 010f90c0 (LHCombined Release)
	static void DeleteEnDeCodePointer(char* data);

	// BW1W120 10012640 BW1M119 010fa500 (LHCombined Release)
	void SetAddressBookFile(char* address_book, bool reload);
	// BW1W120 100126b0 BW1M119 010fa470 (LHCombined Release)
	LHMailEmail* GetNextMail();
	// BW1W120 100126d0 BW1M119 010fa350 (LHCombined Release)
	void DeleteMailFromQ(LHMailEmail* mail);
	// BW1W120 10012810 BW1M119 010f9fb0 (LHCombined Release)
	bool AddNameToContactList(LHMailContacts* contact);
	// BW1W120 10012940 BW1M119 010f9890 (LHCombined Release)
	void CleanUp();
	// BW1W120 10012d00 BW1M119 010f9270 (LHCombined Release)
	LH_RETURN CheckMails();
	// BW1W120 10012d50 BW1M119 010f91d0 (LHCombined Release)
	bool GetContactNames(unsigned long* count);
	// BW1W120 10012da0 BW1M119 010f9120 (LHCombined Release)
	bool ReloadSystem(char* address_book);
	// BW1W120 10012e10 BW1M119 010f9040 (LHCombined Release)
	bool InitDriver();
	// BW1W120 10012e30 BW1M119 010f8fe0 (LHCombined Release)
	void ReadRegistrySettings();

	// BW1W120 10011c90
	bool GetCurrentCheckStatus() { return CurrentCheckStatus; }
	// BW1W120 10011ca0
	unsigned long GetMailCount() { return MailQueue.count; }
	// BW1W120 10011cb0
	void SetSystemState(bool active) { SystemActive = active; }
	// BW1W120 10011cc0
	LHLinkedList<LHMailContacts*>* GetContactList() { return &ContactList; }
	// BW1W120 10011cd0
	void SetCheckTime(unsigned long check_time) { CheckTime = check_time; }
	// BW1W120 10011ce0
	unsigned long GetCheckTime() { return CheckTime; }

protected:
	// BW1W120 10012730 BW1M119 010fa280 (LHCombined Release)
	bool LookUpNameInContactList(char* name);
	// BW1W120 100127a0 BW1M119 010fa1c0 (LHCombined Release)
	bool LookUpNameInMailQueue(char* name);
	// BW1W120 10012840 BW1M119 010f9bd0 (LHCombined Release)
	bool AddNewMailToList(LHMailEmail* mail);
	// BW1W120 100129f0 BW1M119 010f9550 (LHCombined Release)
	bool SavePersonalAddressBook(char* address_book);
	// BW1W120 10012b40 BW1M119 010f9330 (LHCombined Release)
	bool LoadPersonalAddressBook(char* address_book);
};
static_assert(sizeof(LHMail) == 0x184, "LHMail size is incorrect");

// Mail driver that talks to Outlook through outlookdll.dll. Vtable: 100506b8.
class LH_MULTIPLAYER_API LHMailOutlook : public LHMail
{
public:
	HMODULE Library; /* 0x184 */
	bool (*InitOutlookInterface)();
	bool (*ScanForNewEmails)();
	void (*CloseOutlookInterface)();
	void* (*GetMails)();
	void* (*GetSomeNames)(unsigned long count);

	// BW1W120 100130b0 BW1M119 010f8c20 (LHCombined Release)
	LHMailOutlook(char* address_book);
	// BW1W120 100130d0 BW1M119 010f8b80 (LHCombined Release)
	virtual ~LHMailOutlook();
	// BW1W120 10013320 BW1M119 010f8560 (LHCombined Release)
	virtual bool ReloadDriver();
	// BW1W120 10013130 BW1M119 010f8ac0 (LHCombined Release)
	virtual bool CleanUpDriver();
	// BW1W120 10013120 BW1M119 010f8b20 (LHCombined Release)
	virtual bool CallInitDriver();
	// BW1W120 10013140 BW1M119 010f87e0 (LHCombined Release)
	virtual LH_RETURN DriverCheckMails();
	// BW1W120 10013280 BW1M119 010f85a0 (LHCombined Release)
	virtual bool DriverGetContactNames(unsigned long* count);

	// BW1W120 10012e50 BW1M119 010f8e60 (LHCombined Release)
	static bool CheckForOutlook();
	// BW1W120 10012fd0 BW1M119 010f8d30 (LHCombined Release)
	bool InitOutlook();
	// BW1W120 10013070 BW1M119 010f8c90 (LHCombined Release)
	bool CleanUpOutlook();
};
static_assert(sizeof(LHMailOutlook) == 0x19c, "LHMailOutlook size is incorrect");

// Mail driver that polls a POP3 server with LHPOP3. Vtable: 100506d0.
class LH_MULTIPLAYER_API LHMailPOP3 : public LHMail
{
public:
	long                      State;        /* 0x184 */
	LHPOP3*                   POP3;         /* 0x188 */
	LHLinkedList<LHPOP3Mail*> Mails;        /* 0x18c */
	LH_POP3_ACTION            Action;       /* 0x194 */
	long                      OldMailCount; // +198; messages already on the server.
	long                      CurrentMail;  // +19c; message whose header is fetched next.

	// BW1W120 10013330 BW1M119 010f83a0 (LHCombined Release)
	LHMailPOP3(char* address_book);
	// BW1W120 10013360 BW1M119 010f8310 (LHCombined Release)
	virtual ~LHMailPOP3();
	// BW1W120 100139c0 BW1M119 010f7a90 (LHCombined Release)
	virtual bool ReloadDriver();
	// BW1W120 100139b0 BW1M119 010f7ae0 (LHCombined Release)
	virtual bool CleanUpDriver();
	// BW1W120 100139a0 BW1M119 010f7b30 (LHCombined Release)
	virtual bool CallInitDriver();
	// BW1W120 100135c0 BW1M119 010f7be0 (LHCombined Release)
	virtual LH_RETURN DriverCheckMails();
	// BW1W120 10013990 BW1M119 010f7b90 (LHCombined Release)
	virtual bool DriverGetContactNames(unsigned long* count);

	// BW1W120 100133b0 BW1M119 010f8170 (LHCombined Release)
	bool InitPOP3();
	// BW1W120 10013530 BW1M119 010f7f70 (LHCombined Release)
	bool CleanUpPOP3();
};
static_assert(sizeof(LHMailPOP3) == 0x1a0, "LHMailPOP3 size is incorrect");

// BW1W120 10012260 BW1M119 010fae40 (LHCombined Release)
LH_MULTIPLAYER_API void InetLogging(char* text);

#endif /* BW1_DECOMP_LH_MAIL_INCLUDED_H */
