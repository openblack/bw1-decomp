#ifndef BW1_DECOMP_CHANNEL_BOX_INCLUDED_H
#define BW1_DECOMP_CHANNEL_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LH3DLib/development/LHRegion.h> /* For struct LHRegion */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>    /* For LHLinkedList */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "MPFEData.h"      /* For MPFEData::MAX_TEAMS */
#include "TeamControls.h"  /* For struct TeamControls */

// Forward Declares

class MPFEClanDetails;
class MPFERequesterQ;
class WinCondition;
struct LH3DMaterial;
struct LH3DTexture;
struct MPFEPlayerDetails;
struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupEdit;
struct SetupList;
struct SetupStaticText;
struct SetupTabButton;

class ChannelBox : public DialogBoxBase
{
public:
	int                           CurrentTab;
	int                           SelectedTeam; /* 0x14 */
	bool                          HasMap;
	int                           NumTeams; /* 0x1c */
	SetupTabButton*               Tabs[4];
	SetupStaticText*              CaptionText; /* 0x30 */
	SetupStaticText*              PanelHeaderText;
	TeamControls                  Teams[MPFEData::MAX_TEAMS]; /* 0x38 */
	SetupBigButton*               BackButton;                 /* 0x114 */
	SetupBigButton*               StartButton;
	SetupBigButton*               ChooseLandButton;
	SetupButton*                  KickButton; /* 0x120 */
	SetupButton*                  InviteButton;
	SetupButton*                  LeaveTeamButton;
	int                           KickButtonWidth; /* 0x12c */
	int                           InviteButtonWidth;
	LHRegion                      TeamsRegion; /* 0x134 */
	SetupEdit*                    ChatEdit;    /* 0x144 */
	SetupList*                    ChatList;
	SetupStaticText*              ChatTitleText;
	bool                          NewChatMessage;      /* 0x150 */
	SetupCheckBox*                LockChannelCheckBox; /* 0x154 */
	SetupStaticText*              ClanPlayerText;
	SetupStaticText*              ClanTeamText;
	SetupList*                    ClanList; /* 0x160 */
	SetupList*                    ClanInfoList;
	SetupButton*                  SetClanButton;
	SetupButton*                  ClearClanButton;
	MPFEClanDetails*              SelectedClan;    /* 0x170 */
	SetupStaticText*              PlayerTitleText; /* 0x174 */
	SetupList*                    PlayerInfoList;
	SetupButton*                  JoinPlayerTeamButton;
	SetupButton*                  PlayerKickButton; /* 0x180 */
	SetupButton*                  PlayerInviteButton;
	SetupStaticText*              LandListTitle;
	SetupStaticText*              LandTitle;
	SetupStaticText*              LandInfoTitle; /* 0x190 */
	SetupList*                    LandList;
	SetupList*                    LandInfoList;
	SetupButton*                  SelectLandButton;
	unsigned long                 SelectedLandID;         /* 0x1a0 */
	wchar_t                       LandDescription[0x400]; /* 0x1a4 */
	LH3DTexture*                  ThumbnailTexture;       /* 0x9a4 */
	LH3DMaterial*                 ThumbnailMaterial;
	bool32_t                      ClanSymbolValid[16]; /* 0x9ac */
	void*                         ClanSymbolKeys[16];  /* 0x9ec */
	LH3DTexture*                  ClanSymbolTexture;   /* 0xa2c */
	LH3DMaterial*                 ClanSymbolMaterial;
	unsigned long                 ThumbnailMapID; /* 0xa34 */
	int                           ThumbnailSize;
	LHLinkedList<MPFERequesterQ*> Requesters;  /* 0xa3c */
	MPFEPlayerDetails*            LocalPlayer; /* 0xa44 */
	bool                          IsTeamLeader;
	MPFEData*                     Data;                    /* 0xa4c */
	SetupCheckBox*                ConditionCheckBoxes[15]; /* 0xa50 */
	SetupList*                    ConditionList;           /* 0xa8c */
	SetupBigButton*               ConditionIncreaseButton;
	SetupBigButton*               ConditionDecreaseButton;
	SetupStaticText*              ConditionValueText; /* 0xa98 */
	SetupStaticText*              ConditionValueLabel;
	SetupStaticText*              ConditionTitleText;
	SetupStaticText*              TimeLimitLabel;
	SetupStaticText*              TimeLimitText; /* 0xaa8 */
	SetupBigButton*               TimeLimitIncreaseButton;
	SetupBigButton*               TimeLimitDecreaseButton;
	SetupButton*                  LandChatToggleButton; /* 0xab4 */
	SetupCheckBox*                ReadyCheckBox;
	bool                          ShowChatOnLandTab;
	WinCondition*                 SelectedCondition;    /* 0xac0 */
	bool                          ConditionEnabled[15]; /* 0xac4 */

	// Override methods

	// BW1W120 0061bcd0 BW1M119 01396e20
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0061ca50 BW1M119 01396dc0
	virtual void Destroy();
	// BW1W120 0061ca60 BW1M119 01396ad0
	virtual void InitControls();

	// Non-virtual methods

	// BW1W120 0061cc80 BW1M119 inlined
	void UpdateAll();
};

static_assert(sizeof(ChannelBox) == 0xad4, "ChannelBox size is incorrect");

#endif /* BW1_DECOMP_CHANNEL_BOX_INCLUDED_H */
