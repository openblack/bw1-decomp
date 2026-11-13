#ifndef BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <GameSpy/CEngine/goaceng.h>                   /* For GServer */
#include <Lionhead/LHLib/ver5.0/LHOrderedLinkedList.h> /* For LHOrderedLinkedList */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class LHLocalLobbyInfo;
struct MPFEChannelDetails;
struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupEdit;
struct SetupList;
struct SetupStaticText;

class MPFEChannelSelector : public DialogBoxBase
{
public:
	// BW1W120 00d40930
	static MPFEChannelSelector Instance;

	SetupStaticText* TitleText;        /* 0x10 */
	SetupStaticText* InstructionsText; /* 0x14 */
	SetupBigButton*  BackButton;       /* 0x18 */
	SetupBigButton*  NextButton;       /* 0x1c */
	SetupEdit*       NameEdit;         /* 0x20 */
	SetupEdit*       PasswordEdit;     /* 0x24 */
	SetupList*       ChannelList;      /* 0x28 */
	SetupList*       PlayerList;       /* 0x2c */
	SetupButton*     HelpButton;       /* 0x30 */
#if !defined(VERSION_BW1W100)
	SetupButton* RefreshButton; /* 0x34 */
#endif
	SetupCheckBox*   OOSCheckBox;      /* 0x38 */
	SetupStaticText* ChannelListTitle; /* 0x3c */
	SetupStaticText* PlayerListTitle;  /* 0x40 */
	SetupStaticText* NameLabel;        /* 0x44 */
	SetupStaticText* PasswordLabel;    /* 0x48 */
#if !defined(VERSION_BW1W100)
	bool CreatingChannel; /* 0x4c */
#endif
	LHOrderedLinkedList<MPFEChannelDetails> Channels; /* 0x50 */

	// Override methods

	// BW1W120 00628450 BW1M119 013a5da0
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00628e20 BW1M119 013a5d60
	virtual void Destroy();
	// BW1W120 00628430 BW1M119 013a6330
	virtual void Show();
	// BW1W120 00628e30 BW1M119 013a59d0
	virtual void InitControls();

	// Constructors

	// BW1W120 00628330 BW1M119 013a6bc0
	MPFEChannelSelector();
	// BW1W120 00628380 BW1M119 013a6a20
	~MPFEChannelSelector();

	// BW1W120 00629130 BW1M119 013a50a0
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// Non-virtual methods

	// BW1W120 006283e0 BW1M119 013a63b0
	void AddPlayerToMiniList(wchar_t* name, bool local);
	// BW1W120 006297b0 BW1M119 013a4de0
	void RemoveAllChannels();
#ifdef VERSION_BW1W100
	// BW1W120 00629860 BW1M119 013a4aa0
	void AddChannel(wchar_t* name, int num_players, bool closed, unsigned long game_version, bool has_password,
	                GServer server, LHLocalLobbyInfo* lobby_info, char* host);
	// BW1W120 00629b50 BW1M119 013a4920
	void UpdateChannel(wchar_t* name, int num_players, bool closed, unsigned long game_version, bool has_password,
	                   GServer server, char* host);
#else
	// BW1W120 00629860 BW1M119 013a4aa0
	void AddChannel(wchar_t* name, int num_players, bool closed, unsigned long game_version, bool has_password,
	                GServer server, LHLocalLobbyInfo* lobby_info, char* host, int max_players);
	// BW1W120 00629b50 BW1M119 013a4920
	void UpdateChannel(wchar_t* name, int num_players, bool closed, unsigned long game_version, bool has_password,
	                   GServer server, char* host, int max_players);
#endif
	// BW1W120 006299c0 BW1M119 null
	void SetHostPing(char* host, unsigned long ping);
	// BW1W120 00629c50 BW1M119 013a43e0
	void RefreshChannelList();
	// BW1W120 0062a100 BW1M119 013a4190
	void RemoveChannel(unsigned long id, wchar_t* name);
	// BW1W120 0062a1e0 BW1M119 null
	bool ChannelExists(wchar_t* name);
	// BW1W120 0062a220 BW1M119 013a40d0
	MPFEChannelDetails* GetChannelDetailsForName(wchar_t* name);
	// BW1W120 0062a260 BW1M119 null
	void SelectChannel(wchar_t* name);
};

#if defined(VERSION_BW1W100)
static_assert(sizeof(MPFEChannelSelector) == 0x50, "MPFEChannelSelector size is incorrect");
#else
static_assert(sizeof(MPFEChannelSelector) == 0x58, "MPFEChannelSelector size is incorrect");
#endif

#endif /* BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H */
