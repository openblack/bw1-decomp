#ifndef BW1_DECOMP_DIALUP_INCLUDED_H
#define BW1_DECOMP_DIALUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <wchar.h>  /* For wchar_t */

#include <re_common.h> /* For bool32_t */

enum DIALUP_STATUS
{
	DIALUP_STATUS_FAILED = -3,
	DIALUP_STATUS_ABORTED = -2,
	DIALUP_STATUS_DISCONNECTED = -1,
	DIALUP_STATUS_IDLE = 0,
	DIALUP_STATUS_OPENING_PORT = 1,
	DIALUP_STATUS_CONNECTED = 2,
	DIALUP_STATUS_DIALING = 3,
	DIALUP_STATUS_AUTHENTICATING = 4,
	DIALUP_STATUS_AUTHENTICATED = 5,
	DIALUP_STATUS_CONNECTING = 6,
};

struct DIALUP_PROPERTIES
{
	bool32_t AlreadyConnected; /* 0x0 */
	uint8_t  field_0x4[0xc];
	wchar_t  EntryName[0x101]; /* 0x10 */
	wchar_t  IPAddress[0x11];  /* 0x212 */
	wchar_t  UserName[0x101];  /* 0x234 */
	wchar_t  Password[0x101];  /* 0x436 */
	uint8_t  field_0x638[0x204];
};

static_assert(sizeof(DIALUP_PROPERTIES) == 0x83c, "DIALUP_PROPERTIES size is incorrect");

typedef void(__stdcall* DialupCallback_t)(int status, void* data);

class __declspec(dllimport) Dialup
{
public:
	uint8_t field_0x0[0x8];

	// BW1W120 00898432 BW1M119 null
	Dialup();
	// BW1W120 0089840e BW1M119 null
	~Dialup();

	// BW1W120 0089842c BW1M119 null
	bool32_t Initialise();
	// BW1W120 00898414 BW1M119 null
	void Release();
	// BW1W120 00898426 BW1M119 null
	unsigned long GetNoDialUpConnections();
	// BW1W120 00898420 BW1M119 null
	int GetDefaultEntryIndex();
	// BW1W120 0089841a BW1M119 null
	bool32_t GetDialupProperties(int index, DIALUP_PROPERTIES* properties);
	// BW1W120 0089843e BW1M119 null
	bool32_t Connect(int index, DialupCallback_t callback, wchar_t* user_name, wchar_t* password, void* data);
	// BW1W120 00898438 BW1M119 null
	void Disconnect(int index);
};

#endif /* BW1_DECOMP_DIALUP_INCLUDED_H */
