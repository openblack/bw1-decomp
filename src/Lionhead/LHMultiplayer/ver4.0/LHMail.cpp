#define LH_MULTIPLAYER_EXPORTS
#include "LHMail.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include <Lionhead/LHLog/ver4.0/LHRegistry.h>
#include "LHNetUser.h"
#include "LHNetUtils.h"

// TODO: names fabricated for the three registry keys LHMailOutlook::CheckForOutlook reads.
// They are the first data in this unit, ahead of every string literal.
// BW1W120 10061854
static char OutlookAccountManagerKey[] = "Software\\Microsoft\\Office\\Outlook\\OMI Account Manager";
// BW1W120 1006188c
static char Outlook8Key[] = "Software\\Microsoft\\Office\\8.0\\Outlook";
// BW1W120 100618b4
static char Outlook9Key[] = "Software\\Microsoft\\Office\\9.0\\Outlook";

// Header of a saved address book, ahead of its encoded contacts.
// TODO: name fabricated.
// BW1W120 10050688
static const char AddressBookSignature[] = "WhereTheWildRosesGrow";

unsigned long LHMail::SeedCounter;

void InetLogging(char* text)
{
	FILE* file;

	if (text != NULL)
	{
		file = fopen(".\\inetlog.txt", "at");
		if (file != NULL)
		{
			fprintf(file, "[INET]: %s", text);
			fclose(file);
		}
	}
}

// Windows product ID, the key EncodeMemory and DecodeMemory mix into the address book.
// TODO: names fabricated.
// BW1W120 1006907c
static char ProductId[150];

// BW1W120 100122a0
char* GetProductId()
{
	unsigned long   size = sizeof(ProductId);
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();

	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_0x02);
	memset(ProductId, 0, size);
	RegistryRetrieveString("Software\\Microsoft\\Windows\\CurrentVersion", "ProductId", ProductId, &size);
	LHRegistrySetCurrentKey(key);
	return ProductId;
}

void LHMail::DecodeMemory(char* data, char** decoded, unsigned long* length)
{
	char          key = (data[9] & 0xf0) | (data[*length - 3] & 0xc) | (data[*length - 19] & 0x3);
	char*         out = new char[*length];
	long          position;
	unsigned long i;
	unsigned char value;

	*decoded = out;
	memset(out, 0, *length - 40);
	data += 15;
	position = 0;
	GetProductId();
	// TODO: the target addresses data[i] as out + (data - *decoded); no spelling tried so far
	// reproduces that induction-variable choice.
	for (i = 0; i < *length - 25; i++, out++)
	{
		value = ProductId[position++] + data[i] - key;
		*out = (value << 4) | (value >> 4);
		if (ProductId[position] == '\0')
			position = 0;
	}
	*length -= 40;
}

void LHMail::EncodeMemory(char* data, char** encoded, unsigned long* length, char key)
{
	char*         out;
	time_t        now;
	long          i;
	unsigned long j;
	unsigned long k;
	long          position;

	*length += 40;
	out = new char[*length];
	*encoded = out;
	now = time(&now);
	if (SeedCounter == 0)
		srand((unsigned int)&out);
	SeedCounter++;

	for (i = 0; i < 15; i++)
	{
		out[i] = (char)rand() % 255 - SeedCounter;
		for (k = 0; k <= SeedCounter; k++)
			rand();
	}
	for (j = *length - 25; j < *length; j++)
	{
		out[j] = (char)rand() % 255 - SeedCounter;
		for (k = 0; k <= SeedCounter; k++)
			rand();
	}

	position = 0;
	out[*length - 19] = 0;
	out[*length - 3] = 0;
	out[9] = 0;
	out[9] |= key & 0xf0;
	out[*length - 3] |= key & 0xc;
	out[*length - 19] |= key & 0x3;
	GetProductId();
	for (j = 0; j < *length - 40; j++)
	{
		out[j + 15] = (data[j] << 4) | ((unsigned char)data[j] >> 4);
		out[j + 15] += key;
		out[j + 15] -= ProductId[position++];
		if (ProductId[position] == '\0')
			position = 0;
	}
}

LHMail::LHMail(char* address_book)
{
	SetAddressBookFile(address_book, false);
	LoadPersonalAddressBook(address_book);
	StartupTime = time(NULL);
	CurrentCheckStatus = false;
	CheckTime = 180000;
}

LHMail::~LHMail()
{
	SavePersonalAddressBook(AddressBookFile);
	CleanUp();
}

void LHMail::SetAddressBookFile(char* address_book, bool reload)
{
	if (address_book == NULL)
		memset(AddressBookFile, 0, sizeof(AddressBookFile));
	if (reload && AddressBookFile[0] != '\0')
	{
		SavePersonalAddressBook(AddressBookFile);
		CleanUp();
		LoadPersonalAddressBook(address_book);
	}
	strcpy(AddressBookFile, address_book);
}

LHMailEmail* LHMail::GetNextMail()
{
	LHMailEmail* mail = NULL;

	if (MailQueue.count != 0)
		mail = MailQueue.GetHead();
	return mail;
}

void LHMail::DeleteMailFromQ(LHMailEmail* mail)
{
	if (mail != NULL)
	{
		MailQueue.Remove(mail);
		delete mail;
	}
}

bool LHMail::LookUpNameInContactList(char* name)
{
	LHLinkedNode<LHMailContacts*>* node;

	for (node = ContactList.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload != NULL && strcmp(node->payload->Name, name) == 0)
			return true;
	}
	return false;
}

bool LHMail::LookUpNameInMailQueue(char* name)
{
	LHLinkedNode<LHMailEmail*>* node;

	for (node = MailQueue.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload != NULL && strcmp(node->payload->Name, name) == 0)
			return true;
	}
	return false;
}

bool LHMail::AddNameToContactList(LHMailContacts* contact)
{
	if (contact == NULL || LookUpNameInContactList(contact->Name))
		return false;
	ContactList.Add(contact);
	return true;
}

bool LHMail::AddNewMailToList(LHMailEmail* mail)
{
	LHMailContacts*             contact;
	LHLinkedNode<LHMailEmail*>* node;

	if (mail != NULL)
	{
		contact = new LHMailContacts;
		strcpy(contact->Name, mail->Name);
		if (!AddNameToContactList(contact))
			delete contact;

		for (node = MailQueue.GetStart(); node != NULL; node = node->next.Get())
		{
			if (node->payload != NULL && strcmp(node->payload->Name, mail->Name) == 0 &&
			    strcmp(node->payload->Subject, mail->Subject) == 0)
				return false;
		}
		MailQueue.AddToEnd(mail);
		return true;
	}
	return false;
}

void LHMail::CleanUp()
{
	if (MailQueue.count != 0)
		MailQueue.DeleteAll();
	if (ContactList.count != 0)
		ContactList.DeleteAll();
}

bool LHMail::SavePersonalAddressBook(char* address_book)
{
	FILE*                          file;
	unsigned long                  length;
	char*                          data;
	char*                          encoded;
	char*                          out;
	LHLinkedNode<LHMailContacts*>* node;
	int                            random;
	char                           key;

	file = fopen(address_book, "wb");
	if (file == NULL)
		return false;

	length = strlen(AddressBookSignature) + 1 + ContactList.count * sizeof(LHMailContacts);
	data = new char[length + 10];
	encoded = NULL;
	strcpy(data, AddressBookSignature);
	out = data + strlen(AddressBookSignature) + 1;
	for (node = ContactList.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload != NULL)
		{
			memcpy(out, node->payload, sizeof(LHMailContacts));
			out += sizeof(LHMailContacts);
		}
	}

	srand(time(NULL));
	random = rand();
	if (random > 255)
		key = (char)random % 255;
	else
		key = (char)random;
	EncodeMemory(data, &encoded, &length, key);

	fwrite(encoded, length, 1, file);
	fclose(file);
	delete data;
	delete encoded;
	return true;
}

bool LHMail::LoadPersonalAddressBook(char* address_book)
{
	unsigned long   length = 0;
	char*           decoded = NULL;
	bool            result = false;
	FILE*           file;
	char*           data;
	char*           in;
	char*           signature;
	unsigned long   signature_length;
	unsigned long   i;
	LHMailContacts* contact;

	if (address_book == NULL)
		return true;

	file = fopen(address_book, "rb");
	if (file == NULL)
		return false;

	fseek(file, 0, SEEK_END);
	length = ftell(file);
	fseek(file, 0, SEEK_SET);
	data = new char[length + 10];
	if (data != NULL)
	{
		fread(data, length, 1, file);
		DecodeMemory(data, &decoded, &length);
		in = decoded;
		signature = new char[strlen(AddressBookSignature) + 11];
		signature_length = strlen(AddressBookSignature) + 1;
		memset(signature, 0, signature_length + 10);
		memcpy(signature, in, signature_length);
		if (strcmp(signature, AddressBookSignature) == 0)
		{
			in += signature_length;
			length -= signature_length;
			if (decoded != NULL)
			{
				for (i = 0; i != length; i += sizeof(LHMailContacts))
				{
					contact = new LHMailContacts;
					memcpy(contact, in, sizeof(LHMailContacts));
					AddNameToContactList(contact);
					in += sizeof(LHMailContacts);
				}
				result = true;
				delete decoded;
			}
		}
		delete signature;
		delete data;
	}
	return result;
}

LH_RETURN LHMail::CheckMails()
{
	LH_RETURN result;

	if (!SystemActive)
		return LH_ERROR;

	result = DriverCheckMails();
	if (result == LH_OK)
		CurrentCheckStatus = false;
	else if (result == LH_ERROR)
		CurrentCheckStatus = false;
	else if (result == LH_FAIL && !CurrentCheckStatus)
		CurrentCheckStatus = true;
	return result;
}

bool LHMail::GetContactNames(unsigned long* count)
{
	char buffer[150];
	bool result = DriverGetContactNames(count);

	if (result == true)
		sprintf(buffer, "Contactnames for Special Villigers found: %ld\n", ContactList.count);
	return result;
}

bool LHMail::ReloadSystem(char* address_book)
{
	SavePersonalAddressBook(AddressBookFile);
	CleanUp();
	LoadPersonalAddressBook(address_book);
	strcpy(AddressBookFile, address_book);
	ReadRegistrySettings();
	return ReloadDriver();
}

void LHMail::DeleteEnDeCodePointer(char* data)
{
	delete data;
}

bool LHMail::InitDriver()
{
	ReadRegistrySettings();
	return CallInitDriver();
}

void LHMail::ReadRegistrySettings()
{
	LHNetGetCurrentProfileUlong("EmailCheckTime", &CheckTime);
}

bool LHMailOutlook::CheckForOutlook()
{
	unsigned long   account_size = 100;
	unsigned long   first_run_size = 100;
	unsigned long   first_run_dialog_size = 100;
	char            account[100];
	char            first_run[100];
	char            first_run_dialog[100];
	LH_REG_KEY_TYPE key;
	LH_RETURN       account_result;
	LH_RETURN       first_run_result;
	LH_RETURN       first_run_dialog_result;

	memset(account, 0, sizeof(account));
	memset(first_run, 0, sizeof(first_run));
	memset(first_run_dialog, 0, sizeof(first_run_dialog));
	key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_0x00);
	account_result = RegistryRetrieveString(OutlookAccountManagerKey, "Default Mail Account", account, &account_size);
	first_run_result = RegistryRetrieveString(Outlook8Key, "First-Run", first_run, &first_run_size);
	first_run_dialog_result =
		RegistryRetrieveString(Outlook9Key, "FirstRunDialog", first_run_dialog, &first_run_dialog_size);
	LHRegistrySetCurrentKey(key);

	if (account_result == LH_OK && account[0] != '\0')
		return true;
	if (first_run_result == LH_OK && strcmp(first_run, "False") == 0)
		return true;
	if (first_run_dialog_result == LH_OK && strcmp(first_run_dialog, "False") == 0)
		return true;
	return false;
}

bool LHMailOutlook::InitOutlook()
{
	Library = LoadLibraryA("outlookdll.dll");
	SystemActive = false;
	if (Library == NULL)
		return false;

	InitOutlookInterface = (bool (*)())GetProcAddress(Library, "InitOutlookInterface");
	ScanForNewEmails = (bool (*)())GetProcAddress(Library, "ScanForNewEmails");
	GetSomeNames = (void* (*)(unsigned long))GetProcAddress(Library, "GetSomeNames");
	GetMails = (void* (*)())GetProcAddress(Library, "GetMails");
	CloseOutlookInterface = (void (*)())GetProcAddress(Library, "CloseOutlookInterface");
	if (InitOutlookInterface == NULL || !InitOutlookInterface())
		return false;

	SystemActive = true;
	return true;
}

bool LHMailOutlook::CleanUpOutlook()
{
	CleanUp();
	if (Library != NULL)
	{
		CloseOutlookInterface();
		FreeLibrary(Library);
		Library = NULL;
		return true;
	}
	return false;
}

LHMailOutlook::LHMailOutlook(char* address_book) : LHMail(address_book)
{
	DriverType = 0;
}

LHMailOutlook::~LHMailOutlook()
{
	CleanUpOutlook();
}

bool LHMailOutlook::CallInitDriver()
{
	return InitOutlook();
}

bool LHMailOutlook::CleanUpDriver()
{
	return CleanUpOutlook();
}

// A mail as outlookdll.dll's GetMails reports it.
// TODO: layout recovered only as far as DriverCheckMails reads it.
struct LHOutlookMail
{
	char Subject[300];
	char Name[752]; /* 0x12c */
	long Time;      /* 0x41c */
	bool Displayed; /* 0x420 */
};

LH_RETURN LHMailOutlook::DriverCheckMails()
{
	char                          buffer[1224];
	char                          result;
	LHLinkedList<LHOutlookMail*>* mails;
	LHLinkedNode<LHOutlookMail*>* node;
	LHOutlookMail*                outlook_mail;
	LHMailEmail*                  mail;

	if (ScanForNewEmails == NULL)
		return LH_ERROR;

	result = ScanForNewEmails();
	if (result == 1)
	{
		mails = (LHLinkedList<LHOutlookMail*>*)GetMails();
		if (mails != NULL && mails->count != 0)
		{
			for (node = mails->GetStart(); node != NULL; node = node->next.Get())
			{
				outlook_mail = node->payload;
				if (outlook_mail == NULL)
					continue;
				if (outlook_mail->Time <= StartupTime || outlook_mail->Displayed)
				{
					if (outlook_mail->Displayed == true)
						sprintf(buffer,
						        "Outlook mail with subject \"%s\" and name \"%s\" will not be displayed.\n"
						        "Mailtime is lower than Blacks startup time!\n",
						        outlook_mail->Subject, outlook_mail->Name);
				}
				else
				{
					mail = new LHMailEmail;
					strcpy(mail->Name, outlook_mail->Subject);
					strcpy(mail->Subject, outlook_mail->Name);
					AddNewMailToList(mail);
					outlook_mail->Displayed = true;
				}
			}
		}
		return LH_OK;
	}
	return result != 0 ? LH_ERROR : LH_FAIL;
}

bool LHMailOutlook::DriverGetContactNames(unsigned long* count)
{
	LHLinkedList<char*>* names;
	LHLinkedNode<char*>* node;
	char*                name;
	LHMailContacts*      contact;

	if (GetSomeNames != NULL)
	{
		names = (LHLinkedList<char*>*)GetSomeNames(*count);
		if (names != NULL)
		{
			*count = names->count;
			for (node = names->GetStart(); node != NULL; node = node->next.Get())
			{
				name = node->payload;
				if (name != NULL)
				{
					contact = new LHMailContacts;
					strcpy(contact->Name, name);
					if (!AddNameToContactList(contact))
						delete contact;
				}
			}
			return true;
		}
		*count = 0;
	}
	return false;
}

bool LHMailOutlook::ReloadDriver()
{
	return true;
}

LHMailPOP3::LHMailPOP3(char* address_book) : LHMail(address_book)
{
	DriverType = 1;
}

LHMailPOP3::~LHMailPOP3()
{
	CleanUpPOP3();
}

bool LHMailPOP3::InitPOP3()
{
	bool          result = false;
	unsigned long size = 200;
	char*         user;
	char*         server;
	char*         password;
	char          data[200];

	POP3 = new LHPOP3;
	if (POP3 == NULL)
		return false;

	if (LHNetGetCurrentProfileData("POP3ServerName", (unsigned char*)data, &size) == LH_OK)
	{
		DecodeMemory(data, &server, &size);
		size = 200;
		if (LHNetGetCurrentProfileData("POP3UserName", (unsigned char*)data, &size) == LH_OK)
		{
			DecodeMemory(data, &user, &size);
			size = 200;
			if (LHNetGetCurrentProfileData("POP3UserPassword", (unsigned char*)data, &size) == LH_OK)
			{
				DecodeMemory(data, &password, &size);
				size = 200;
				if (user[0] != '\0' && server[0] != '\0')
				{
					POP3->SetLogin(user, password, server, 110);
					result = true;
					SystemActive = true;
				}
				delete password;
			}
			delete user;
		}
		delete server;
	}
	return result;
}

bool LHMailPOP3::CleanUpPOP3()
{
	Mails.DeleteAll();
	delete POP3;
	POP3 = NULL;
	return true;
}

LH_RETURN LHMailPOP3::DriverCheckMails()
{
	LHPOP3Mail   mail;
	char         buffer[200];
	char         startup[152];
	char         message[400];
	LH_RETURN    result = LH_FAIL;
	LH_RETURN    status;
	LHMailEmail* email;

	switch (State)
	{
	case 1:
		Action = LH_POP3_ACTION_START;
		status = POP3->OpenConnectionAsync();
		if (status == LH_OK)
		{
			State = 2;
			Action = LH_POP3_ACTION_START;
		}
		else if (status == LH_ERROR)
		{
			State = 6;
			Action = LH_POP3_ACTION_START;
			result = status;
		}
		break;

	case 2:
		status = POP3->LoginAsync(&Action);
		if (status == LH_ERROR)
		{
			State = 6;
			Action = LH_POP3_ACTION_START;
			result = LH_ERROR;
		}
		else if (status == LH_OK)
		{
			State = 3;
		}
		break;

	case 3:
		status = POP3->GetMsgListAsync(Mails, &Action);
		if (status == LH_ERROR)
		{
			State = 6;
			Action = LH_POP3_ACTION_START;
			result = LH_ERROR;
		}
		else if (status == LH_OK)
		{
			if (POP3->GetNrOfNewMails() > 0)
			{
				OldMailCount = POP3->GetNrofAllMails() - POP3->GetNrOfNewMails();
				CurrentMail = POP3->GetNrofAllMails();
				State = 4;
				sprintf(buffer, "POP3 Email: New mails found! Number: %ld\n", POP3->GetNrOfNewMails());
			}
			else
			{
				State = 5;
			}
		}
		break;

	case 4:
		if (CurrentMail > OldMailCount)
		{
			status = POP3->GetMailNameSubject(CurrentMail, mail, &Action);
			if (status == LH_ERROR)
			{
				State = 6;
				Action = LH_POP3_ACTION_START;
				result = LH_ERROR;
			}
			else if (status == LH_OK)
			{
				if (mail.Date > StartupTime)
				{
					email = new LHMailEmail;
					strcpy(email->Name, mail.From);
					strcpy(email->Subject, mail.Subject);
					if (!AddNewMailToList(email))
						delete email;
					Action = LH_POP3_ACTION_START;
					CurrentMail--;
				}
				else
				{
					strftime(buffer, 50, "%d.%m.%Y %H:%M", gmtime(&mail.Date));
					strftime(startup, 50, "%d.%m.%Y %H:%M", gmtime((time_t*)&StartupTime));
					sprintf(message,
					        "POP3 Email: Mail with Subject \"%s\" and Name: \"%s\"  will not be displayed.\n"
					        "Servertime of Mail:%s is lower than Black Startuptime: %s!!\n",
					        mail.Subject, mail.From, buffer, startup);
					CurrentMail--;
				}
			}
		}
		else
		{
			State = 5;
		}
		break;

	case 5:
		status = POP3->LogoutAsync(&Action);
		if (status == LH_ERROR || status == LH_OK)
		{
			State = 6;
			Action = LH_POP3_ACTION_START;
			result = status;
		}
		break;

	case 0:
		State = 1;
		break;

	case 6:
		State = 0;
		break;
	}
	return result;
}

bool LHMailPOP3::DriverGetContactNames(unsigned long* count)
{
	return true;
}

bool LHMailPOP3::CallInitDriver()
{
	State = 0;
	return InitPOP3();
}

bool LHMailPOP3::CleanUpDriver()
{
	return CleanUpPOP3();
}

bool LHMailPOP3::ReloadDriver()
{
	return InitDriver();
}

LHMail* LHLoadInGameEmailSystem(char* address_book)
{
	unsigned long grab_email = (unsigned long)-1;
	unsigned long use_outlook = (unsigned long)-1;
	LHMail*       mail = NULL;

	if (LHNetGetCurrentProfileUlong("GrabEmail", &grab_email) == LH_FAIL ||
	    LHNetGetCurrentProfileUlong("UseOutlook", &use_outlook) == LH_FAIL)
		return NULL;

	if (grab_email != 0)
	{
		if (use_outlook != 0 && LHMailOutlook::CheckForOutlook() == true)
			mail = new LHMailOutlook(address_book);
		else if (grab_email != 0)
			mail = new LHMailPOP3(address_book);
	}
	return mail;
}
