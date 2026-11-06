#ifndef BW1_DECOMP_LOGIN_BOX_INCLUDED_H
#define BW1_DECOMP_LOGIN_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t */
#include <wchar.h>  /* For wchar_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "Dialup.h"        /* For struct DIALUP_PROPERTIES */

class Dialup;
struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupEdit;
struct SetupList;
struct SetupStaticText;

#define LOGIN_BOX_STATIC_TEXT_ID    999
#define LOGIN_BOX_OPTION_TEXT_SIZE  12
#define LOGIN_BOX_REPLAY_TEXT_SIZE  16
#define LOGIN_BOX_INTERNET_Y        255
#define LOGIN_BOX_LOCAL_Y           445
#define LOGIN_BOX_CHECK_BOX_HEIGHT  20
#define LOGIN_BOX_LOGIN_SERVER_PORT 80
#define LOGIN_BOX_LOBBY_TIMEOUT     5000

enum LOGIN_BOX_CONTROL_ID
{
	LOGIN_BOX_CONTROL_ID_NAME = 0,
	LOGIN_BOX_CONTROL_ID_PASSWORD = 1,
	LOGIN_BOX_CONTROL_ID_SERVER = 2,
	LOGIN_BOX_CONTROL_ID_LOGIN = 3,
	LOGIN_BOX_CONTROL_ID_BACK = 4,
	LOGIN_BOX_CONTROL_ID_BYPASS_LOGIN = 5,
	LOGIN_BOX_CONTROL_ID_FULL_CHECKSUM = 6,
	LOGIN_BOX_CONTROL_ID_CONNECTIONS = 7,
	LOGIN_BOX_CONTROL_ID_INTERNET = 8,
	LOGIN_BOX_CONTROL_ID_TITLE = 9,
	LOGIN_BOX_CONTROL_ID_STATUS = 10,
	LOGIN_BOX_CONTROL_ID_RECORD = 13,
	LOGIN_BOX_CONTROL_ID_PLAYBACK = 14,
	LOGIN_BOX_CONTROL_ID_REPLAY_INFO = 15,
};

enum LOGIN_BOX_MESSAGE_BOX
{
	LOGIN_BOX_MESSAGE_BOX_CONNECTED = 11,
	LOGIN_BOX_MESSAGE_BOX_REGISTER = 12,
};

enum LOGIN_BOX_DIALUP_STATE
{
	LOGIN_BOX_DIALUP_STATE_NONE = -1,
	LOGIN_BOX_DIALUP_STATE_DISCONNECTED = 0,
	LOGIN_BOX_DIALUP_STATE_CONNECTED = 1,
};

class LoginBox : public DialogBoxBase
{
public:
	// BW1W120 00cd0b64
	static LoginBox* Instance;
	// BW1W120 00cd0b68
	static wchar_t* LocalNetworkName;
	// BW1W120 00cd0b6c
	static bool ConnectedMessageShown;
	// BW1W120 00bea288
	static char* RegisterURL;
	// BW1W120 00bea28c
	static char* LoginServer;
	// BW1W120 00bea29c
	static bool FirstShow;

	SetupEdit*        NameEdit;             /* 0x10 */
	SetupEdit*        PasswordEdit;         /* 0x14 */
	SetupEdit*        ServerEdit;           /* 0x18 */
	SetupList*        ConnectionList;       /* 0x1c */
	SetupEdit*        StatusEdit;           /* 0x20 */
	SetupBigButton*   LoginButton;          /* 0x24 */
	SetupBigButton*   BackButton;           /* 0x28 */
	SetupCheckBox*    BypassLoginCheckBox;  /* 0x2c */
	SetupCheckBox*    InternetCheckBox;     /* 0x30 */
	SetupCheckBox*    FullChecksumCheckBox; /* 0x34 */
	SetupButton*      RecordButton;         /* 0x38 */
	SetupButton*      PlaybackButton;       /* 0x3c */
	SetupButton*      ReplayInfoButton;     /* 0x40 */
	SetupStaticText*  ServerText;           /* 0x44 */
	SetupStaticText*  NameText;             /* 0x48 */
	SetupStaticText*  TitleText;            /* 0x4c */
	SetupStaticText*  PasswordText;         /* 0x50 */
	Dialup*           DialupConnection;     /* 0x54 */
	int               DialupEntry;          /* 0x58 */
	DIALUP_PROPERTIES DialupProperties;     /* 0x5c */
	int16_t           DialupState;          /* 0x898 */

	// BW1W120 00541040 BW1M119 015c58a0
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005417f0 BW1M119 015c5870
	virtual void Destroy();
	// BW1W120 00541840 BW1M119 015c53a0
	virtual void InitControls();

	// BW1W120 005402d0 BW1M119 null
	void __stdcall DialupStatus(int status, void* data);
	// BW1W120 005405b0 BW1M119 015c67d0
	void UpdateRegistrySettings();
	// BW1W120 00540660 BW1M119 015c5f90
	void DoLogin();
	// BW1W120 00540f80 BW1M119 inlined
	void ShowInternetControls(bool32_t show);
	// BW1W120 00541e70 BW1M119 null
	void HangUp();

	// BW1W120 005402b0 BW1M119 null
	static void __stdcall DialupCallback(int status, void* data);
	// BW1W120 00541eb0 BW1M119 015c4be0
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// BW1W120 00540260 BW1M119 015c6910
	LoginBox();

	// BW1W120 inlined
	~LoginBox() {}
};

static_assert(sizeof(LoginBox) == 0x89c, "LoginBox size is incorrect");

#endif /* BW1_DECOMP_LOGIN_BOX_INCLUDED_H */
