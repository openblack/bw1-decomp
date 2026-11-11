#ifndef BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H
#define BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SetupBigButton;
struct SetupEdit;
struct SetupList;
struct SetupStaticText;

enum MPFE_CHOOSE_CONNECTION_CONTROL_ID
{
	MPFE_CHOOSE_CONNECTION_CONTROL_ID_BACK = 1,
	MPFE_CHOOSE_CONNECTION_CONTROL_ID_TITLE = 2,
	MPFE_CHOOSE_CONNECTION_CONTROL_ID_LIST = 3,
	MPFE_CHOOSE_CONNECTION_CONTROL_ID_CONTINUE = 4,
	MPFE_CHOOSE_CONNECTION_CONTROL_ID_EDIT = 5,
};

class MPFEChooseConnection : public DialogBoxBase
{
public:
	// BW1W120 00d40998
	static bool AskedForIPAddress;
	// BW1W120 00d409a8
	static MPFEChooseConnection Instance;

	SetupBigButton*  BackButton;        /* 0x10 */
	SetupBigButton*  ContinueButton;    /* 0x14 */
	SetupStaticText* TitleText;         /* 0x18 */
	SetupList*       ConnectionList;    /* 0x1c */
	SetupEdit*       HiddenEdit;        /* 0x20 */
	SetupBox*        DialBox;           /* 0x24 */
	bool32_t         Connected;         /* 0x28 */
	uint8_t          field_0x2c[0x404]; /* 0x2c */
	int              field_0x430;       /* 0x430 */
	int              TimeoutStart;      /* 0x434 */
	uint32_t         Timeout;           /* 0x438 */

	// BW1W120 0062b030 BW1M119 013a7540
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0062b340 BW1M119 013a7500
	virtual void Destroy();
	// BW1W120 0062b350 BW1M119 013a6fe0
	virtual void InitControls();

	// BW1W120 0062b700 BW1M119 013a6e00
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);
	// BW1W120 0062adc0 BW1M119 null
	static void __stdcall DialCallback(int status, void* data);

	// Non-virtual methods

	// BW1W120 0062ada0 BW1M119 null
	void SetTimeout(uint32_t timeout);
	// BW1W120 0062ade0 BW1M119 null
	void __stdcall OnDialStatus(int status, wchar_t* text);

	// BW1W120 0062acd0 BW1M119 inlined
	MPFEChooseConnection();
	// BW1W120 0062ad30 BW1M119 013a7ae0
	~MPFEChooseConnection();
};

static_assert(sizeof(MPFEChooseConnection) == 0x43c, "MPFEChooseConnection size is incorrect");

#endif /* BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H */
