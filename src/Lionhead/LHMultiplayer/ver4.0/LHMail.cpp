#define LH_MULTIPLAYER_EXPORTS
#include "LHMail.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include <Lionhead/LHLog/ver4.0/LHRegistry.h>
#include "LHNetUser.h"
#include "LHNetUtils.h"

enum
{
	LH_MAIL_PRODUCT_ID_LENGTH = 150,
	LH_MAIL_PROFILE_DATA_LENGTH = 200,
	LH_MAIL_REGISTRY_VALUE_LENGTH = 100,
	LH_MAIL_CODE_HEADER_SIZE = 15,
	LH_MAIL_CODE_TRAILER_SIZE = 25,
	LH_MAIL_CODE_OVERHEAD = LH_MAIL_CODE_HEADER_SIZE + LH_MAIL_CODE_TRAILER_SIZE,
	LH_MAIL_KEY_HIGH_OFFSET = 9,
	LH_MAIL_KEY_MIDDLE_OFFSET = 3,
	LH_MAIL_KEY_LOW_OFFSET = 19,
	LH_MAIL_KEY_HIGH_MASK = 0xf0,
	LH_MAIL_KEY_MIDDLE_MASK = 0x0c,
	LH_MAIL_KEY_LOW_MASK = 0x03,
	LH_MAIL_KEY_RANGE = 255,
	LH_MAIL_CONTACT_LOG_LENGTH = 150,
	LH_MAIL_OUTLOOK_LOG_LENGTH = 1224,
	LH_MAIL_POP3_LOG_LENGTH = 200,
	LH_MAIL_POP3_MESSAGE_LENGTH = 400,
	LH_MAIL_STARTUP_DATE_LENGTH = 152,
	LH_MAIL_DATE_LENGTH = 50,
	LH_OUTLOOK_MAIL_SUBJECT_LENGTH = 300,
	LH_OUTLOOK_MAIL_NAME_LENGTH = 752,
};

static char OutlookAccountManagerKey[] = "Software\\Microsoft\\Office\\Outlook\\OMI Account Manager";
static char Outlook8Key[] = "Software\\Microsoft\\Office\\8.0\\Outlook";
static char Outlook9Key[] = "Software\\Microsoft\\Office\\9.0\\Outlook";

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

static char ProductId[LH_MAIL_PRODUCT_ID_LENGTH];

char* GetProductId()
{
	unsigned long   size = sizeof(ProductId);
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();

	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_LOCAL_MACHINE);
	memset(ProductId, 0, size);
	RegistryRetrieveString("Software\\Microsoft\\Windows\\CurrentVersion", "ProductId", ProductId, &size);
	LHRegistrySetCurrentKey(key);
	return ProductId;
}

void LHMail::DecodeMemory(char* data, char** decoded, unsigned long* length)
{
	char key = (data[LH_MAIL_KEY_HIGH_OFFSET] & LH_MAIL_KEY_HIGH_MASK) |
	           (data[*length - LH_MAIL_KEY_MIDDLE_OFFSET] & LH_MAIL_KEY_MIDDLE_MASK) |
	           (data[*length - LH_MAIL_KEY_LOW_OFFSET] & LH_MAIL_KEY_LOW_MASK);
	char*         out = new char[*length];
	long          position;
	unsigned long i;
	unsigned char value;

	*decoded = out;
	memset(out, 0, *length - LH_MAIL_CODE_OVERHEAD);
	data += LH_MAIL_CODE_HEADER_SIZE;
	position = 0;
	GetProductId();
	for (i = 0; i < *length - LH_MAIL_CODE_TRAILER_SIZE; i++, out++)
	{
		value = ProductId[position++] + data[i] - key;
		*out = (value << 4) | (value >> 4);
		if (ProductId[position] == '\0')
			position = 0;
	}
	*length -= LH_MAIL_CODE_OVERHEAD;
}

void LHMail::EncodeMemory(char* data, char** encoded, unsigned long* length, char key)
{
	char*         out;
	time_t        now;
	long          i;
	unsigned long j;
	unsigned long k;
	long          position;

	*length += LH_MAIL_CODE_OVERHEAD;
	out = new char[*length];
	*encoded = out;
	now = time(&now);
	if (SeedCounter == 0)
		srand((unsigned int)&out);
	SeedCounter++;

	for (i = 0; i < LH_MAIL_CODE_HEADER_SIZE; i++)
	{
		out[i] = (char)rand() % LH_MAIL_KEY_RANGE - SeedCounter;
		for (k = 0; k <= SeedCounter; k++)
			rand();
	}
	for (j = *length - LH_MAIL_CODE_TRAILER_SIZE; j < *length; j++)
	{
		out[j] = (char)rand() % LH_MAIL_KEY_RANGE - SeedCounter;
		for (k = 0; k <= SeedCounter; k++)
			rand();
	}

	position = 0;
	out[*length - LH_MAIL_KEY_LOW_OFFSET] = 0;
	out[*length - LH_MAIL_KEY_MIDDLE_OFFSET] = 0;
	out[LH_MAIL_KEY_HIGH_OFFSET] = 0;
	out[LH_MAIL_KEY_HIGH_OFFSET] |= key & LH_MAIL_KEY_HIGH_MASK;
	out[*length - LH_MAIL_KEY_MIDDLE_OFFSET] |= key & LH_MAIL_KEY_MIDDLE_MASK;
	out[*length - LH_MAIL_KEY_LOW_OFFSET] |= key & LH_MAIL_KEY_LOW_MASK;
	GetProductId();
	for (j = 0; j < *length - LH_MAIL_CODE_OVERHEAD; j++)
	{
		out[j + LH_MAIL_CODE_HEADER_SIZE] = (data[j] << 4) | ((unsigned char)data[j] >> 4);
		out[j + LH_MAIL_CODE_HEADER_SIZE] += key;
		out[j + LH_MAIL_CODE_HEADER_SIZE] -= ProductId[position++];
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
	CheckTime = LH_MAIL_DEFAULT_CHECK_TIME;
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
	if (random > LH_MAIL_KEY_RANGE)
		key = (char)random % LH_MAIL_KEY_RANGE;
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
	char buffer[LH_MAIL_CONTACT_LOG_LENGTH];
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
	unsigned long   account_size = LH_MAIL_REGISTRY_VALUE_LENGTH;
	unsigned long   first_run_size = LH_MAIL_REGISTRY_VALUE_LENGTH;
	unsigned long   first_run_dialog_size = LH_MAIL_REGISTRY_VALUE_LENGTH;
	char            account[LH_MAIL_REGISTRY_VALUE_LENGTH];
	char            first_run[LH_MAIL_REGISTRY_VALUE_LENGTH];
	char            first_run_dialog[LH_MAIL_REGISTRY_VALUE_LENGTH];
	LH_REG_KEY_TYPE key;
	LH_RETURN       account_result;
	LH_RETURN       first_run_result;
	LH_RETURN       first_run_dialog_result;

	memset(account, 0, sizeof(account));
	memset(first_run, 0, sizeof(first_run));
	memset(first_run_dialog, 0, sizeof(first_run_dialog));
	key = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_CURRENT_USER);
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
	DriverType = LH_MAIL_DRIVER_TYPE_OUTLOOK;
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

struct LHOutlookMail
{
	char Subject[LH_OUTLOOK_MAIL_SUBJECT_LENGTH];
	char Name[LH_OUTLOOK_MAIL_NAME_LENGTH]; /* 0x12c */
	long Time;                              /* 0x41c */
	bool Displayed;                         /* 0x420 */
};

LH_RETURN LHMailOutlook::DriverCheckMails()
{
	char                          buffer[LH_MAIL_OUTLOOK_LOG_LENGTH];
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
	DriverType = LH_MAIL_DRIVER_TYPE_POP3;
}

LHMailPOP3::~LHMailPOP3()
{
	CleanUpPOP3();
}

bool LHMailPOP3::InitPOP3()
{
	bool          result = false;
	unsigned long size = LH_MAIL_PROFILE_DATA_LENGTH;
	char*         user;
	char*         server;
	char*         password;
	char          data[LH_MAIL_PROFILE_DATA_LENGTH];

	POP3 = new LHPOP3;
	if (POP3 == NULL)
		return false;

	if (LHNetGetCurrentProfileData("POP3ServerName", (unsigned char*)data, &size) == LH_OK)
	{
		DecodeMemory(data, &server, &size);
		size = sizeof(data);
		if (LHNetGetCurrentProfileData("POP3UserName", (unsigned char*)data, &size) == LH_OK)
		{
			DecodeMemory(data, &user, &size);
			size = sizeof(data);
			if (LHNetGetCurrentProfileData("POP3UserPassword", (unsigned char*)data, &size) == LH_OK)
			{
				DecodeMemory(data, &password, &size);
				size = sizeof(data);
				if (user[0] != '\0' && server[0] != '\0')
				{
					POP3->SetLogin(user, password, server, LH_POP3_DEFAULT_PORT);
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
	char         buffer[LH_MAIL_POP3_LOG_LENGTH];
	char         startup[LH_MAIL_STARTUP_DATE_LENGTH];
	char         message[LH_MAIL_POP3_MESSAGE_LENGTH];
	LH_RETURN    result = LH_FAIL;
	LH_RETURN    status;
	LHMailEmail* email;

	switch (State)
	{
	case LH_MAIL_POP3_STATE_CONNECT:
		Action = LH_POP3_ACTION_START;
		status = POP3->OpenConnectionAsync();
		if (status == LH_OK)
		{
			State = LH_MAIL_POP3_STATE_LOGIN;
			Action = LH_POP3_ACTION_START;
		}
		else if (status == LH_ERROR)
		{
			State = LH_MAIL_POP3_STATE_FINISHED;
			Action = LH_POP3_ACTION_START;
			result = status;
		}
		break;

	case LH_MAIL_POP3_STATE_LOGIN:
		status = POP3->LoginAsync(&Action);
		if (status == LH_ERROR)
		{
			State = LH_MAIL_POP3_STATE_FINISHED;
			Action = LH_POP3_ACTION_START;
			result = LH_ERROR;
		}
		else if (status == LH_OK)
		{
			State = LH_MAIL_POP3_STATE_LIST;
		}
		break;

	case LH_MAIL_POP3_STATE_LIST:
		status = POP3->GetMsgListAsync(Mails, &Action);
		if (status == LH_ERROR)
		{
			State = LH_MAIL_POP3_STATE_FINISHED;
			Action = LH_POP3_ACTION_START;
			result = LH_ERROR;
		}
		else if (status == LH_OK)
		{
			if (POP3->GetNrOfNewMails() > 0)
			{
				OldMailCount = POP3->GetNrofAllMails() - POP3->GetNrOfNewMails();
				CurrentMail = POP3->GetNrofAllMails();
				State = LH_MAIL_POP3_STATE_GET_HEADERS;
				sprintf(buffer, "POP3 Email: New mails found! Number: %ld\n", POP3->GetNrOfNewMails());
			}
			else
			{
				State = LH_MAIL_POP3_STATE_LOGOUT;
			}
		}
		break;

	case LH_MAIL_POP3_STATE_GET_HEADERS:
		if (CurrentMail > OldMailCount)
		{
			status = POP3->GetMailNameSubject(CurrentMail, mail, &Action);
			if (status == LH_ERROR)
			{
				State = LH_MAIL_POP3_STATE_FINISHED;
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
					strftime(buffer, LH_MAIL_DATE_LENGTH, "%d.%m.%Y %H:%M", gmtime(&mail.Date));
					strftime(startup, LH_MAIL_DATE_LENGTH, "%d.%m.%Y %H:%M", gmtime((time_t*)&StartupTime));
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
			State = LH_MAIL_POP3_STATE_LOGOUT;
		}
		break;

	case LH_MAIL_POP3_STATE_LOGOUT:
		status = POP3->LogoutAsync(&Action);
		if (status == LH_ERROR || status == LH_OK)
		{
			State = LH_MAIL_POP3_STATE_FINISHED;
			Action = LH_POP3_ACTION_START;
			result = status;
		}
		break;

	case LH_MAIL_POP3_STATE_IDLE:
		State = LH_MAIL_POP3_STATE_CONNECT;
		break;

	case LH_MAIL_POP3_STATE_FINISHED:
		State = LH_MAIL_POP3_STATE_IDLE;
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
	State = LH_MAIL_POP3_STATE_IDLE;
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
