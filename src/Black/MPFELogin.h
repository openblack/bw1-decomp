#ifndef BW1_DECOMP_MPFE_LOGIN_INCLUDED_H
#define BW1_DECOMP_MPFE_LOGIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "MPFEDatabase.h"  /* For struct MPFEDatabase */

class LHFileDownload;
struct SetupBigButton;
struct SetupEdit;
struct SetupStaticText;

#define MPFE_LOGIN_MAX_TEXT_LENGTH 32
#define MPFE_LOGIN_PORT            80

enum MPFE_LOGIN_CONTROL_ID
{
	MPFE_LOGIN_CONTROL_ID_BACK = 1,
	MPFE_LOGIN_CONTROL_ID_LOGIN = 2,
	MPFE_LOGIN_CONTROL_ID_TITLE = 3,
	MPFE_LOGIN_CONTROL_ID_EDIT = 4,
	MPFE_LOGIN_CONTROL_ID_LABEL = 7,
};

enum LOBBY_MESSAGE_BOX
{
	LOBBY_MESSAGE_BOX_NONE = 0,
	LOBBY_MESSAGE_BOX_ERROR = 1,
	LOBBY_MESSAGE_BOX_CONNECTING = 2,
	LOBBY_MESSAGE_BOX_REGISTER = 6,
	LOBBY_MESSAGE_BOX_LOGGING_IN = 9,
};

class MPFELoginDatabase : public MPFEDatabase
{
public:
	// BW1W120 006310b0 BW1M119 013af0e0
	virtual void DatabaseError();
	// BW1W120 006310f0 BW1M119 013af070
	virtual void DatabaseComplete();

	// BW1W120 00631050 BW1M119 013af260
	MPFELoginDatabase();
	// BW1W120 00631070 BW1M119 013af1d0
	~MPFELoginDatabase();

	// BW1W120 00631080 BW1M119 inlined
	void Start();
	// BW1W120 00631090 BW1M119 inlined
	void Stop();
	// BW1W120 006310a0 BW1M119 013af170
	void Refresh();
};

class MPFELogin : public DialogBoxBase
{
public:
	// BW1W120 00d40f38
	static MPFELogin Instance;

	SetupBigButton*   BackButton;   /* 0x10 */
	SetupBigButton*   LoginButton;  /* 0x14 */
	SetupEdit*        NameEdit;     /* 0x18 */
	SetupEdit*        PasswordEdit; /* 0x1c */
	SetupStaticText*  TitleText;    /* 0x20 */
	SetupStaticText*  PasswordText; /* 0x24 */
	SetupStaticText*  NameText;     /* 0x28 */
	MPFELoginDatabase Database;     /* 0x2c */
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	LHFileDownload* ConditionDownload; /* 0x38 */
#endif
	char LoginServer[0x100];

	// BW1W120 006307f0 BW1M119 013af520
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00630d60 BW1M119 013af4f0
	virtual void Destroy();
	// BW1W120 00630610 BW1M119 013afbc0
	virtual void InitControls();

	// BW1W120 00630dd0 BW1M119 013af2d0
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// BW1W120 00630d70 BW1M119 null
	bool CanLogin();
	// BW1W120 00630d80 BW1M119 013af450
	void SuccessfulLogin();

	// BW1W120 00630580 BW1M119 013afdf0
	MPFELogin();
	// BW1W120 006305f0 BW1M119 013afd40
	~MPFELogin();
};

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
static_assert(sizeof(MPFELogin) == 0x13c, "MPFELogin size is incorrect");
#else
static_assert(sizeof(MPFELogin) == 0x138, "MPFELogin size is incorrect");
#endif

#endif /* BW1_DECOMP_MPFE_LOGIN_INCLUDED_H */
