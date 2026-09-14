#ifndef BW1_DECOMP_GATHERING_BOX_INCLUDED_H
#define BW1_DECOMP_GATHERING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "GatheringInterface.h"

struct LHTimer;

class GatheringBox : public DialogBoxBase
{
public:
	GatheringBoxState State; /* 0x10 */

	// Descriptive static names. Some storage is currently split into GameThing;
	// reconcile extracted ownership before linking this source replacement.
	static GBCategory*               GatheringCurrentPlayers;     // 00d060ec
	static GBCategory*               GatheringRecentPlayers;      // 00d060f4
	static GBCategory*               GatheringFriends;            // 00d060f8
	static LHLinkedList<GBCategory*> GatheringGroups;             // 00d06100
	static char16_t                  GatheringTimeText[256];      // 00d06108
	static const char16_t*           GatheringAddFriendText;      // 00d06308
	static const char16_t*           GatheringRemoveFriendText;   // 00d0630c
	static const char16_t*           GatheringCurrentPlayersText; // 00d06310
	static const char16_t*           GatheringRecentPlayersText;  // 00d06314
	static const char16_t*           GatheringFriendsText;        // 00d06318
	static LHTimer                   GatheringPresenceTimer;      // 00d06320
	static unsigned int              GatheringMusicPlayerEnabled; // 00d06434
	static GatheringBox*             GatheringActiveBox;          // 00d0643c
	static bool                      GatheringMouseCaptured;      // 00d06440

	// Override methods

	// BW1W120 00570e90 BW1M100 10326ea0 GatheringBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00572530 BW1M100 103266d0 GatheringBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 00573b90. Original returns AL, despite the provisional void symbol.
	virtual bool WantsKeyControl();
	// BW1W120 00573bf0
	virtual bool WantsMouseControl();
	// BW1W120 00573cc0
	virtual bool CanESCOut();
	// BW1W120 00572540. Vtable +0x20 at 008deb4c.
	virtual void InitControls();

	// Names corroborated by Mac traceback strings unless marked descriptive.
	// BW1W120 005707f0
	uint32_t GetMusicID();
	// BW1W120 00570890
	bool MusicMoodActive();
	// BW1W120 005708d0. Descriptive Windows helper name.
	void HideMusicControls(int hidden);
	// BW1W120 00570930
	void UpdatePlayList();
	// BW1W120 00570ae0. Descriptive Windows helper name; thiscall, RET 4.
	const char16_t* FormatTime(int milliseconds);
	// BW1W120 00570b40
	void UpdateMP3();
	// BW1W120 00571f50
	void ClearSelection(bool rebuild);
	// BW1W120 00571ff0
	void Select(int first, int last);
	// BW1W120 00572090
	void RebuildList();
	// BW1W120 00572460
	void UpdateFriendButton();
	// BW1W120 005725b0
	void UpdateShow();
	// BW1W120 005729e0. Thiscall method, five explicit arguments, RET 14h.
	void MP3Callback(int event, SetupBox* box, SetupControl* control, int x, int y);
	// BW1W120 00573840
	void OpenDialog(bool close_after_send);

	// Windows cdecl/caller cleanup establishes static methods. Mac traceback
	// names establish GatheringBox ownership and LH_USER_ID by-value arguments.
	// BW1W120 00573db0
	static void RemoveFromList(GBCategory* group, LH_USER_ID user_id);
	// BW1W120 00573e30. Not LH_USER_ID::operator== as the provisional map claims.
	static void AddToOtherList(char16_t* name, LH_USER_ID user_id, LHTransportInfo* transport);
	// BW1W120 00574190
	static bool IsUserInList(GBCategory* group, LH_USER_ID user_id);
	// BW1W120 00574210
	static void UpdatePlayerOnlineInAllLists(LHTransportInfo* transport, char16_t* name, LH_USER_ID user_id);
	// BW1W120 005743c0
	static GBPlayer* FindUserInList(GBCategory* group, LH_USER_ID user_id);
	// BW1W120 00574400. Deferred original implementation; no replacement stub.
	static void RebuildList(LHLinkedList<LHPlayer*>* players, GBCategory** group, const char16_t* name);
	// BW1W120 00574ab0
	static void RebuildPlayerList();
	// BW1W120 00574b00
	static void WriteFriendListToRegistry();
	// BW1W120 00574c90
	static void ReadFriendListFromRegistry();
	// BW1W120 00574f10
	static void RelinkPeopleList();
	// BW1W120 00575040
	static void SortPlayerList();
	// BW1W120 00575140
	static void SetFriendFlags();
	// BW1W120 00575190
	static void SetFriendFlags(GBCategory* group, LH_USER_ID user_id);
	// BW1W120 005751d0 BW1M100 103227e0
	static void InitialiseForCurrentGame();
	// BW1W120 005754b0
	static void MakeFriends();
	// BW1W120 00575670. Mac FPll: signed long pairs/count; Windows cdecl.
	static void UpdateOnlineStatus(long* status, long count);
	// BW1W120 00575880
	static int GetFriendArray(long* user_ids);
	// BW1W120 005758f0
	static void MakeFriends(GBCategory* group);
	// BW1W120 00575ad0
	static GBPlayer* FindFriend(GBPlayer* player);
	// BW1W120 00575b10
	static void RemoveUnlovedFriends();
	// BW1W120 00575b80
	static bool IsUserInAnyEnabledList(LH_USER_ID user_id);
	// BW1W120 00575bf0
	static bool IsAtLeastOnePlayerSelected();
};

static_assert(offsetof(GatheringBox, State) == 0x10, "GatheringBox state offset is incorrect");
static_assert(sizeof(GatheringBox) == 0xf0, "GatheringBox size is incorrect");

#endif /* BW1_DECOMP_GATHERING_BOX_INCLUDED_H */
