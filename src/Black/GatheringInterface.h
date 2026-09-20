#ifndef BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H
#define BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H

#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <uchar.h>

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHTransportInfo.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>

class GatheringBox;
class SetupBigButton;
class SetupButton;
class SetupControl;
class SetupEdit;
class SetupList;
class SetupMP3Button;
class LHPlayer;
class SetupSlider;

// GBPlayer/GBCategory and their Init/assignment names are recovered Mac names.
// Member names are descriptive.
// Windows allocations at 00573e30/00574400 establish the complete 0xf0/0x90 sizes.
struct GBPlayer
{
	bool            IsFriend;  /* 0x0 */
	LH_USER_ID      UserId;    /* 0x4; comparisons ignore the upper three bits */
	LHTransportInfo Transport; /* 0x8 */
	uint32_t        LastSeen;  /* 0x7c; gathering timer milliseconds */
	long            PlayerId;
	long            TeamNumber;
	long            TeamMemberNumber;
	bool            Online; /* 0x8c */
	bool            Selected;
	char16_t        Name[47]; /* 0x8e; original bounded copies need not terminate */
	uint32_t        Color;    /* 0xec */

	// BW1W120 00573f70 BW1M100 103234f0 GBPlayer::Init(long, long, const wchar_t*, LH_USER_ID, long, LHTransportInfo*)
	void Init(long team_member_number, long team_number, const char16_t* name, LH_USER_ID user_id, long player_id,
	          LHTransportInfo* transport);
	// BW1W120 005749d0 BW1M100 10321670 GBPlayer::operator=(const GBPlayer&)
	GBPlayer& operator=(const GBPlayer& player);
	// BW1W120 inlined GBPlayer::GBPlayer(long, long, const wchar_t*, LH_USER_ID, long, LHTransportInfo*)
	GBPlayer(long team_member_number, long team_number, const char16_t* name, LH_USER_ID user_id, long player_id,
	         LHTransportInfo* transport)
	{
		UserId.field_0x0 = 0;
		Init(team_member_number, team_number, name, user_id, player_id, transport);
	}
	// BW1W120 inlined GBPlayer::GBPlayer(const GBPlayer&)
	GBPlayer(const GBPlayer& player)
	{
		UserId.field_0x0 = 0;
		*this = player;
	}
};

struct GBCategory
{
	bool                    ReceiveMessages; /* 0x0 */
	bool                    Expanded;
	char16_t                Name[65]; /* 0x2 */
	uint32_t                Color;    /* 0x84 */
	LHLinkedList<GBPlayer*> Players;  /* 0x88 */

	// BW1W120 005740c0 BW1M100 10321b50 GBCategory::Init(GBCategory*, const wchar_t*)
	void Init(GBCategory* group, const char16_t* name);
	// BW1W120 inlined GBCategory::GBCategory(GBCategory*, const wchar_t*)
	GBCategory(GBCategory* group, const char16_t* name) { Init(group, name); }
};

// Recovered message prefix only; do not allocate using this sizeof until its
// constructor is recovered. The update path reads through +0x1008.
struct GatheringMessage
{
	int      Type;
	char16_t Text[0x800];
	int      field_0x1004;
	uint32_t Time;
};

// Typed state replacing the former GatheringBox::field_0x10[0xe0].
// Offsets below are relative to GatheringBox, not this member aggregate.
// DLL exports are cdecl: 005707f0 explicitly restores the argument stack.
struct GatheringBoxState
{
	SetupList*      PlayList; /* 0x10 */
	SetupSlider*    VolumeSlider;
	SetupSlider*    PositionSlider;
	SetupControl*   SongName;
	SetupMP3Button* ShuffleButton;
	SetupMP3Button* RepeatButton;
	SetupMP3Button* MusicButton;
	void*           MusicModule;     /* 0x2c */
	int(__cdecl* InitialiseMusic)(); /* DLL ordinal 1, 0x30 */
	uint32_t(__cdecl* GetMusicCapabilities)();
	int(__cdecl* GetTrackCount)();
	void(__cdecl* GetTrackPath)(int, char*, int);
	int(__cdecl* GetTrackIndex)();
	void(__cdecl* SetTrackIndex)(int);
	int(__cdecl* MusicAvailable)(); /* 0x48 */
	int(__cdecl* GetPlaybackState)();
	void(__cdecl* GetSongName)(char*, int);
	int(__cdecl* GetTrackPosition)();
	int(__cdecl* GetTrackLength)();
	void(__cdecl* SetTrackPosition)(int); /* 0x5c */
	void(__cdecl* field_0x60)();          // TODO: Recover the DLL's original command names.
	void(__cdecl* field_0x64)();
	void(__cdecl* field_0x68)();
	void(__cdecl* field_0x6c)();
	void(__cdecl* field_0x70)();
	void(__cdecl* field_0x74)();
	void(__cdecl* field_0x78)();
	void(__cdecl* SetVolume)(int);
	void(__cdecl* SetShuffle)(int);
	void(__cdecl* SetRepeat)(int);                     /* ordinal 22, 0x84 */
	uint32_t                        MusicCapabilities; /* 0x88 */
	int                             TrackCount;
	int                             TrackLength;
	int                             TrackPosition;
	int                             Volume;
	int                             Shuffle;
	int                             Repeat;
	uint32_t                        LastMusicUpdate;
	bool                            QuickChat; /* 0xa8 */
	SetupEdit*                      ChatEdit;  /* 0xac */
	SetupList*                      PlayerList;
	SetupList*                      QuickChatList;
	SetupControl*                   MessageText;
	SetupBigButton*                 SendButton;
	SetupBigButton*                 field_0xc0;
	SetupBigButton*                 MessageButton;
	SetupBigButton*                 ChatButton;
	SetupButton*                    FriendButton;
	LHLinkedList<GBCategory*>*      Groups;         /* 0xd0 */
	bool                            CloseAfterSend; /* 0xd4 */
	int                             SelectedPlayer;
	bool                            CanChangeFriend; /* 0xdc */
	bool                            ChatOpen;
	int                             MessageCount; /* 0xe0 */
	bool                            ShowInterface;
	LHLinkedList<GatheringMessage*> Messages; /* 0xe8 */
};

// GatheringBox's static storage declarations are in GatheringBox.h.
// The first globals (00d060ec..00d06318) are currently extracted into GameThing's
// .bss; reconcile ownership before source linking instead of duplicating storage.

// Windows-only helpers whose original names were not found in Mac traceback data.
// BW1W120 00573cd0 LHPlayer * GatheringFindGamePlayer(unsigned int)
LHPlayer* GatheringFindGamePlayer(uint32_t user_id);
// BW1W120 00574140 bool GatheringContainsPlayer(LH_USER_ID)
bool GatheringContainsPlayer(LH_USER_ID user_id);
// BW1W120 005741d0 GBPlayer * GatheringFindPlayer(LH_USER_ID)
GBPlayer* GatheringFindPlayer(LH_USER_ID user_id);
// BW1W120 00575c30 void GatheringSetFriendOnline(LH_USER_ID, bool)
void GatheringSetFriendOnline(LH_USER_ID user_id, bool online);

#endif /* BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H */
