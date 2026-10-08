#ifndef BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <GameSpy/CEngine/goaceng.h> /* For GServer */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class LHLocalLobbyInfo;
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
	// BW1W120 00d40924
	static int MaxPlayers;

	SetupStaticText* title;
	SetupStaticText* instructions;
	SetupBigButton*  BackArrow;
	SetupBigButton*  NextArrow;
	SetupEdit*       field_0x20;
	SetupEdit*       field_0x24;
	SetupList*       field_0x28;
	SetupList*       field_0x2c;
	SetupButton*     JoinHelpChannelButton;
	SetupButton*     RefreshButton;
	SetupCheckBox*   ResumeCheckbox;
	SetupStaticText* CurrentGameLabel;
	SetupStaticText* PlayersInGameLabel;
	SetupStaticText* GameNameLabel;
	SetupStaticText* field_0x48;
	uint8_t          field_0x4c;
	uint32_t         field_0x50;
	uint32_t         field_0x54;

	// Override methods

	// BW1W120 00628450 BW1M119 013a5da0
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00628e20 BW1M119 013a5d60
	virtual void Destroy();
	// BW1W120 00628430 BW1M119 013a6330
	virtual void Show();
	// BW1W120 00628e30 BW1M119 013a59d0
	virtual void InitControls();

	// Constructors

	// BW1W120 00628330 BW1M119 013a6bc0
	MPFEChannelSelector();

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
	// BW1W120 00629c50 BW1M119 013a43e0
	void RefreshChannelList();
	// BW1W120 0062a100 BW1M119 013a4190
	void RemoveChannel(unsigned long id, wchar_t* name);
};

#endif /* BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H */
