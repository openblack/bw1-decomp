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

	// BW1W120 00570e90 BW1M100 10326ea0 GatheringBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox*, SetupControl*, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00572530 BW1M100 103266d0 GatheringBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 00573b90 BW1M100 10324b80 GatheringBox::WantsKeyControl(void)
	virtual bool WantsKeyControl();
	// BW1W120 00573bf0 BW1M100 103249d0 GatheringBox::WantsMouseControl(void)
	virtual bool WantsMouseControl();
	// BW1W120 00573cc0 BW1M100 10324990 GatheringBox::CanESCOut(void)
	virtual bool CanESCOut();
	// BW1W120 00572540 BW1M100 10326610 GatheringBox::InitControls(void)
	virtual void InitControls();

	// Names corroborated by Mac traceback strings unless marked descriptive.
	// BW1W120 005707f0 BW1M100 10328860 GatheringBox::GetMusicID(void)
	uint32_t GetMusicID();
	// BW1W120 00570890 BW1M100 103287a0 GatheringBox::MusicMoodActive(void)
	bool MusicMoodActive();
	// BW1W120 005708d0 void GatheringBox::HideMusicControls(int)
	void HideMusicControls(int hidden);
	// BW1W120 00570930 BW1M100 10328580 GatheringBox::UpdatePlayList(void)
	void UpdatePlayList();
	// BW1W120 00570ae0 unsigned short const * GatheringBox::FormatTime(int)
	const char16_t* FormatTime(int milliseconds);
	// BW1W120 00570b40 BW1M100 10327fe0 GatheringBox::UpdateMP3(void)
	void UpdateMP3();
	// BW1W120 00571f50 BW1M100 10326d90 GatheringBox::ClearSelection(bool)
	void ClearSelection(bool rebuild);
	// BW1W120 00571ff0 BW1M100 10326c70 GatheringBox::Select(int, int)
	void Select(int first, int last);
	// BW1W120 00572090 BW1M100 10326890 GatheringBox::RebuildList(void)
	void RebuildList();
	// BW1W120 00572460 BW1M100 10326730 GatheringBox::UpdateFriendButton(void)
	void UpdateFriendButton();
	// BW1W120 005725b0 BW1M100 10326120 GatheringBox::UpdateShow(void)
	void UpdateShow();
	// BW1W120 005729e0 BW1M100 10325c90 GatheringBox::MP3Callback(int, SetupBox*, SetupControl*, int, int)
	void MP3Callback(int event, SetupBox* box, SetupControl* control, int x, int y);
	// BW1W120 00573840 BW1M100 10324ec0 GatheringBox::OpenDialog(bool)
	void OpenDialog(bool close_after_send);

	// Windows cdecl/caller cleanup establishes static methods. Mac traceback
	// names establish GatheringBox ownership and LH_USER_ID by-value arguments.
	// BW1W120 00573db0 BW1M100 10324720 GatheringBox::RemoveFromList(GBCategory*, LH_USER_ID)
	static void RemoveFromList(GBCategory* group, LH_USER_ID user_id);
	// BW1W120 00573e30 BW1M100 10324530 GatheringBox::AddToOtherList(wchar_t*, LH_USER_ID, LHTransportInfo*)
	static void AddToOtherList(char16_t* name, LH_USER_ID user_id, LHTransportInfo* transport);
	// BW1W120 00574190 BW1M100 10324450 GatheringBox::IsUserInList(GBCategory*, LH_USER_ID)
	static bool IsUserInList(GBCategory* group, LH_USER_ID user_id);
	// BW1W120 00574210 BW1M100 103241d0 GatheringBox::UpdatePlayerOnlineInAllLists(LHTransportInfo*, wchar_t*, LH_USER_ID)
	static void UpdatePlayerOnlineInAllLists(LHTransportInfo* transport, char16_t* name, LH_USER_ID user_id);
	// BW1W120 005743c0 BW1M100 103240f0 GatheringBox::FindUserInList(GBCategory*, LH_USER_ID)
	static GBPlayer* FindUserInList(GBCategory* group, LH_USER_ID user_id);
	// BW1W120 00574400 BW1M100 103239f0 GatheringBox::RebuildList(LHLinkedList<LHPlayer*>*, GBCategory**, const wchar_t*)
	static void RebuildList(LHLinkedList<LHPlayer*>* players, GBCategory** group, const char16_t* name);
	// BW1W120 00574ab0 BW1M100 10323920 GatheringBox::RebuildPlayerList(void)
	static void RebuildPlayerList();
	// BW1W120 00574b00 BW1M100 10323760 GatheringBox::WriteFriendListToRegistry(void)
	static void WriteFriendListToRegistry();
	// BW1W120 00574c90 BW1M100 10323200 GatheringBox::ReadFriendListFromRegistry(void)
	static void ReadFriendListFromRegistry();
	// BW1W120 00574f10 BW1M100 10322e20 GatheringBox::RelinkPeopleList(void)
	static void RelinkPeopleList();
	// BW1W120 00575040 BW1M100 10322b70 GatheringBox::SortPlayerList(void)
	static void SortPlayerList();
	// BW1W120 00575140 BW1M100 10322a90 GatheringBox::SetFriendFlags(void)
	static void SetFriendFlags();
	// BW1W120 00575190 BW1M100 103229c0 GatheringBox::SetFriendFlags(GBCategory*, LH_USER_ID)
	static void SetFriendFlags(GBCategory* group, LH_USER_ID user_id);
	// BW1W120 005751d0 BW1M100 103227e0 GatheringBox::InitialiseForCurrentGame(void)
	static void InitialiseForCurrentGame();
	// BW1W120 005754b0 BW1M100 10322330 GatheringBox::MakeFriends(void)
	static void MakeFriends();
	// BW1W120 00575670 BW1M100 10322020 GatheringBox::UpdateOnlineStatus(long*, long)
	static void UpdateOnlineStatus(long* status, long count);
	// BW1W120 00575880 BW1M100 10321f60 GatheringBox::GetFriendArray(long*)
	static int GetFriendArray(long* user_ids);
	// BW1W120 005758f0 BW1M100 10321420 GatheringBox::MakeFriends(GBCategory*)
	static void MakeFriends(GBCategory* group);
	// BW1W120 00575ad0 BW1M100 10321340 GatheringBox::FindFriend(GBPlayer*)
	static GBPlayer* FindFriend(GBPlayer* player);
	// BW1W120 00575b10 BW1M100 10321230 GatheringBox::RemoveUnlovedFriends(void)
	static void RemoveUnlovedFriends();
	// BW1W120 00575b80 BW1M100 10321110 GatheringBox::IsUserInAnyEnabledList(LH_USER_ID)
	static bool IsUserInAnyEnabledList(LH_USER_ID user_id);
	// BW1W120 00575bf0 BW1M100 10320f00 GatheringBox::IsAtLeastOnePlayerSelected(void)
	static bool IsAtLeastOnePlayerSelected();
};

#endif /* BW1_DECOMP_GATHERING_BOX_INCLUDED_H */
