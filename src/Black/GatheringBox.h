#ifndef BW1_DECOMP_GATHERING_BOX_INCLUDED_H
#define BW1_DECOMP_GATHERING_BOX_INCLUDED_H

#include <stdint.h>  /* For uint32_t, uint8_t */
#include <string.h>  /* For memset */
#include <uchar.h>   /* For char16_t */
#include <wchar.h>   /* For wcsncpy */
#include <windows.h> /* For GetTickCount, HMODULE */

#include <Lionhead/LH3DLib/development/LH3DColor.h>        /* For struct LH3DColor */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>            /* For LHLinkedList */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>       /* For struct LH_USER_ID */
#include <Lionhead/LHMultiplayer/ver4.0/LHTransportInfo.h> /* For class LHTransportInfo */

#include <re_common.h> /* For bool32_t */

#include "DialogBoxBase.h"        /* For struct DialogBoxBase */
#include "MPFEData.h"             /* For MPFEData::TeamColors */
#include "Packet.h"               /* For enum PACKET_TYPE */
#include "SetupStaticTextNoHit.h" /* For struct SetupStaticTextNoHit */

class LHPlayer;
struct SetupBigButton;
struct SetupButton;
struct SetupControl;
struct SetupEdit;
struct SetupList;
struct SetupMP3Button;
struct SetupSlider;

// Moves each channel amount/256 of the way from one colour to the other; alpha is taken from the second.
// BW1W120 inlined BW1M119 0101e260
inline LH3DColor BlendColor(long amount, LH3DColor* from, LH3DColor* to)
{
	unsigned long a = *(unsigned long*)from;
	unsigned long b = *(unsigned long*)to;
	return LH3DColor((b & 0xff000000) |
	                 (((a & 0xff0000) + ((((b & 0xff0000) - (a & 0xff0000)) * amount) >> 8)) & 0xff0000) |
	                 (((a & 0xff00) + ((((b & 0xff00) - (a & 0xff00)) * amount) >> 8)) & 0xff00) |
	                 (((a & 0xff) + ((((b & 0xff) - (a & 0xff)) * amount) >> 8)) & 0xff));
}

// Gathering box palette, as 0xAARRGGBB.
#define GB_PLAYER_COLOUR        0x00afefff // Players with no team
#define GB_CATEGORY_COLOUR      0x00ffffff // Category headings; team colours are blended halfway towards it
#define GB_SPECIAL_USER_COLOUR  0xffffff00
#define GB_SELECTED_COLOUR_BITS 0xff000000 // Set on a player row's colour while it is selected
#define MUSIC_MOOD_GOOD_COLOUR  0xff00ff00
#define MUSIC_MOOD_BAD_COLOUR   0xffff0000

enum GATHERING_CONTROL_ID
{
	GATHERING_CONTROL_ID_SEND = 1,
	GATHERING_CONTROL_ID_QUICK_CHAT = 2,
	GATHERING_CONTROL_ID_CHAT_EDIT = 4,
	GATHERING_CONTROL_ID_LIST = 5,
	GATHERING_CONTROL_ID_FRIEND = 6,
	GATHERING_CONTROL_ID_INCOMING = 11,
	GATHERING_CONTROL_ID_OPEN = 12,
	GATHERING_CONTROL_ID_INCOMING_TEXT = 1000,
	GATHERING_CONTROL_ID_MP3_TOGGLE = 66600,
	GATHERING_CONTROL_ID_MP3_PLAY = 66601,
	GATHERING_CONTROL_ID_MP3_PAUSE = 66602,
	GATHERING_CONTROL_ID_MP3_STOP = 66603,
	GATHERING_CONTROL_ID_MP3_PREVIOUS = 66604,
	GATHERING_CONTROL_ID_MP3_NEXT = 66605,
	GATHERING_CONTROL_ID_MP3_REWIND = 66606,
	GATHERING_CONTROL_ID_MP3_FAST_FORWARD = 66607,
	GATHERING_CONTROL_ID_MP3_SHUFFLE = 66608,
	GATHERING_CONTROL_ID_MP3_REPEAT = 66609,
	GATHERING_CONTROL_ID_MP3_PLAYLIST_TOGGLE = 66610,
	GATHERING_CONTROL_ID_MP3_VOLUME = 66611,
	GATHERING_CONTROL_ID_MP3_POSITION = 66612,
	GATHERING_CONTROL_ID_MP3_SONG_NAME = 66613,
	GATHERING_CONTROL_ID_MP3_PLAYLIST = 66614,
	// One past the controls HideMP3Controls hides.
	GATHERING_CONTROL_ID_MP3_END = 66620,
	// Highest id MP3Callback handles.
	GATHERING_CONTROL_ID_MP3_LAST = 66666
};

// Users with these ids are shown in yellow; ADMIN_USER_ID also opens the box and expands its category.
enum SPECIAL_USER_ID
{
	SPECIAL_USER_ID_BEFORE_FIRST = 9999998,
	ADMIN_USER_ID = 9999999,
	SPECIAL_USER_ID_AFTER_LAST = 10000015
};

enum INCOMINGTEXTTYPE
{
	INCOMINGTEXTTYPE_NONE = 0,
	INCOMINGTEXTTYPE_CHAT = 1,
	INCOMINGTEXTTYPE_MAIL = 2,
	INCOMINGTEXTTYPE_WEATHER = 3
};

struct IncomingBubbleInfo
{
	INCOMINGTEXTTYPE Type;
	char16_t         Text[0x400];
	char16_t         Name[0x200];
	char16_t         Message[0x200];
	int              Weather;
	unsigned long    Time;

	// BW1W120 00635cf0 BW1M119 01300c40
	IncomingBubbleInfo(INCOMINGTEXTTYPE type, char16_t* text)
	{
		Type = type;
		wcsncpy(Text, text, 0x3ff);
		Text[0x3ff] = 0;
		Weather = 0;
		Name[0] = 0;
		Message[0] = 0;
		Time = GetTickCount();
	}
};
struct GBPlayer
{
	bool            IsFriend;
	LH_USER_ID      UserID;
	LHTransportInfo TransportInfo;
	unsigned long   LastSeen;
	long            PlayerID;
	long            TeamNumber;
	long            TeamMemberNumber;
	bool            Online;
	bool            Selected;
	char16_t        Name[47];
	unsigned long   Colour;

	// BW1W120 inlined BW1M119 inlined
	GBPlayer(long team_member_number, long team_number, const char16_t* name, LH_USER_ID user_id, long player_id,
	         LHTransportInfo* transport_info)
	{
		Init(team_member_number, team_number, name, user_id, player_id, transport_info);
	}
	// BW1W120 inlined BW1M119 inlined
	GBPlayer(const GBPlayer& player) { *this = player; }

	// BW1W120 00573f70 BW1M119 0132b960
	void Init(long team_member_number, long team_number, const char16_t* name, LH_USER_ID user_id, long player_id,
	          LHTransportInfo* transport_info)
	{
		PlayerID = player_id;
		IsFriend = false;
		Selected = false;
		Online = false;
		LastSeen = 0;
		memset(Name, 0, sizeof(Name));
		if (name != NULL)
			wcsncpy(Name, name, 47);
		Colour = GB_PLAYER_COLOUR;
		UserID = user_id;
		if (transport_info != NULL)
			TransportInfo = *transport_info;
		TeamNumber = team_number;
		TeamMemberNumber = team_member_number;
		if (team_number >= 0 && team_number < MPFEData::MAX_TEAMS)
		{
			LH3DColor white(GB_CATEGORY_COLOUR);
			LH3DColor colour = BlendColor(128, (LH3DColor*)&MPFEData::TeamColors[team_number], &white);
			Colour = *(unsigned long*)&colour;
		}
	}
};
struct GBCategory
{
	bool                    MessagesEnabled;
	bool                    Expanded;
	char16_t                Name[65];
	unsigned long           Colour;
	LHLinkedList<GBPlayer*> Players;

	// BW1W120 inlined BW1M119 inlined
	GBCategory(GBCategory* category, const char16_t* name) { Init(category, name); }

	// BW1W120 005740c0 BW1M119 01329fe0
	void Init(GBCategory* category, const char16_t* name)
	{
		if (category != NULL)
		{
			MessagesEnabled = category->MessagesEnabled;
			Expanded = category->Expanded;
			wcscpy(Name, category->Name);
			Colour = category->Colour;
		}
		else
		{
			MessagesEnabled = true;
			Expanded = true;
			if (name != NULL)
				wcscpy(Name, name);
			else
				Name[0] = 0;
			Colour = GB_CATEGORY_COLOUR;
		}
		Players = NULL;
	}
};
// A friend as it is stored in the player's profile.
struct love_baby
{
	LH_USER_ID      UserID;
	char16_t        Name[64];
	LHTransportInfo TransportInfo;
};
// A music player plug-in from BWAudioDLL. The plug-ins export these functions by ordinal, starting at 1.
struct MusicPlayer
{
	enum
	{
		NUM_FUNCTIONS = 22
	};

	int(__cdecl* Initialise)();
	unsigned long(__cdecl* GetCapabilities)();
	int(__cdecl* GetNumTracks)();
	void(__cdecl* GetTrackFileName)(int track, char* file_name, int size);
	int(__cdecl* GetCurrentTrack)();
	void(__cdecl* SetCurrentTrack)(int track);
	int(__cdecl* IsPlayerRunning)();
	int(__cdecl* GetPlayState)();
	void(__cdecl* GetSongName)(char* name, int size);
	int(__cdecl* GetPosition)();
	int(__cdecl* GetLength)();
	void(__cdecl* SetPosition)(int position);
	void(__cdecl* NextTrack)();
	void(__cdecl* PreviousTrack)();
	void(__cdecl* Play)();
	void(__cdecl* Pause)();
	void(__cdecl* Stop)();
	void(__cdecl* FastForward)();
	void(__cdecl* Rewind)();
	void(__cdecl* SetVolume)(int volume);
	void(__cdecl* SetShuffle)(int shuffle);
	void(__cdecl* SetRepeat)(int repeat);
	unsigned long Capabilities;
	int           NumTracks;
	int           TrackLength;
	int           TrackPosition;
	int           Volume;
	int           Shuffle;
	int           Repeat;
};
enum MUSIC_PLAYER_CAPABILITY
{
	MUSIC_PLAYER_CAPABILITY_PLAYLIST = 0x1,
	MUSIC_PLAYER_CAPABILITY_PAUSE = 0x2,
	MUSIC_PLAYER_CAPABILITY_FAST_FORWARD = 0x4,
	MUSIC_PLAYER_CAPABILITY_REWIND = 0x8,
	MUSIC_PLAYER_CAPABILITY_VOLUME = 0x10,
	MUSIC_PLAYER_CAPABILITY_SHUFFLE = 0x20,
	MUSIC_PLAYER_CAPABILITY_REPEAT = 0x40,
	MUSIC_PLAYER_CAPABILITY_LENGTH = 0x80,
	MUSIC_PLAYER_CAPABILITY_POSITION = 0x100,
	MUSIC_PLAYER_CAPABILITY_SEEK = 0x200
};

class GatheringBox : public DialogBoxBase
{
public:
	enum
	{
		MAX_FRIENDS = 25
	};

	// BW1W120 00d0643c
	static GatheringBox* Instance;

	SetupList*                        PlayList;
	SetupSlider*                      VolumeSlider;
	SetupSlider*                      PositionSlider;
	SetupStaticTextNoHit*             SongName;
	SetupMP3Button*                   ShuffleButton;
	SetupMP3Button*                   RepeatButton;
	SetupMP3Button*                   MusicButton;
	HMODULE                           MusicLibrary;
	MusicPlayer                       Music;
	int                               LastMusicUpdate;
	bool                              QuickChatOpen;
	SetupEdit*                        ChatEdit;
	SetupList*                        PlayerList;
	SetupList*                        QuickChatList;
	SetupStaticTextNoHit*             IncomingText;
	SetupBigButton*                   SendButton;
	SetupBigButton*                   QuickChatButton;
	SetupBigButton*                   IncomingButton;
	SetupBigButton*                   OpenButton;
	SetupButton*                      FriendButton;
	LHLinkedList<GBCategory*>*        PeopleList;
	bool                              CloseAfterSend;
	int                               LastSelected;
	bool                              FriendButtonUsable;
	bool                              Open;
	int                               NumIncoming;
	bool                              ShowInterface;
	LHLinkedList<IncomingBubbleInfo*> IncomingList;

	// BW1W120 00570e90 BW1M119 0132f410
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00572530 BW1M119 0132ec50
	virtual void Destroy();
	// BW1W120 00573b90 BW1M119 0132d0e0
	virtual bool WantsKeyControl();
	// BW1W120 00573bf0 BW1M119 0132cf30
	virtual bool WantsMouseControl();
	// BW1W120 00573cc0 BW1M119 0132cef0
	virtual bool CanESCOut();
	// BW1W120 00572540 BW1M119 0132ebd0
	virtual void InitControls();

	// BW1W120 00572d00 BW1M119 0132d590
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y);
	// BW1W120 00573db0 BW1M119 0132cc30
	static void RemoveFromList(GBCategory* category, LH_USER_ID user_id);
	// BW1W120 00573e30 BW1M119 0132ca10
	static void AddToOtherList(char16_t* name, LH_USER_ID user_id, LHTransportInfo* transport_info);
	// BW1W120 00574140
	static bool IsUserInAnyList(LH_USER_ID user_id);
	// BW1W120 00574190 BW1M119 0132c910
	static bool IsUserInList(GBCategory* category, LH_USER_ID user_id);
	// BW1W120 005741d0
	static GBPlayer* FindUserInAnyList(LH_USER_ID user_id);
	// BW1W120 00574210 BW1M119 0132c650
	static void UpdatePlayerOnlineInAllLists(LHTransportInfo* transport_info, char16_t* name, LH_USER_ID user_id);
	// BW1W120 005743c0 BW1M119 0132c550
	static GBPlayer* FindUserInList(GBCategory* category, LH_USER_ID user_id);
	// BW1W120 00574400 BW1M119 0132be50
	static void RebuildList(LHLinkedList<LHPlayer*>* players, GBCategory** category, const char16_t* name);
	// BW1W120 00574ab0 BW1M119 0132bd80
	static void RebuildPlayerList();
	// BW1W120 00574b00 BW1M119 0132bba0
	static void WriteFriendListToRegistry();
	// BW1W120 00574c90 BW1M119 0132b680
	static void ReadFriendListFromRegistry();
	// BW1W120 00574f10 BW1M119 0132b2a0
	static void RelinkPeopleList();
	// BW1W120 00575040 BW1M119 0132aff0
	static void SortPlayerList();
	// BW1W120 00575140 BW1M119 0132af10
	static void SetFriendFlags();
	// BW1W120 00575190 BW1M119 0132ae20
	static void SetFriendFlags(GBCategory* category, LH_USER_ID user_id);
	// BW1W120 005751d0 BW1M119 0132ac40
	static void InitialiseForCurrentGame();
	// BW1W120 00575260 BW1M119 0132ab30
	static void SendMessageA(GBCategory* category, char16_t* text);
	// BW1W120 005752d0 BW1M119 0132aa70
	static void SendIAmHereToFriends();
	// BW1W120 00575300 BW1M119 0132a790
	static void SendPacketToPlayers(PACKET_TYPE type, unsigned long size, void* data, bool selected_only);
	// BW1W120 005754b0 BW1M119 0132a720
	static void MakeFriends();
	// BW1W120 00575670 BW1M119 0132a440
	static void UpdateOnlineStatus(long* status, long count);
	// BW1W120 00575880 BW1M119 0132a370
	static int GetFriendArray(long* user_ids);
	// BW1W120 005758f0 BW1M119 01329ae0
	static void MakeFriends(GBCategory* category);
	// BW1W120 00575ad0 BW1M119 013299e0
	static GBPlayer* FindFriend(GBPlayer* player);
	// BW1W120 00575b10 BW1M119 013298d0
	static void RemoveUnlovedFriends();
	// BW1W120 00575b80 BW1M119 013297b0
	static bool IsUserInAnyEnabledList(LH_USER_ID user_id);
	// BW1W120 00575bf0 BW1M119 013295a0
	static bool IsAtLeastOnePlayerSelected();
	// BW1W120 00575c30
	static void SetFriendOnline(LH_USER_ID user_id, bool online);

	// BW1W120 005707f0 BW1M119 01330dd0
	unsigned long GetMusicID();
	// BW1W120 00570890 BW1M119 01330d10
	bool32_t MusicMoodActive();
	// BW1W120 005708d0 BW1M119 inlined
	void HideMP3Controls(int hide);
	// BW1W120 00570930 BW1M119 01330af0
	void UpdatePlayList();
	// BW1W120 00570ae0 BW1M119 inlined
	char16_t* GetTimeText(int milliseconds);
	// BW1W120 00570b40 BW1M119 01330550
	void UpdateMP3();
	// BW1W120 00571f50 BW1M119 0132f300
	void ClearSelection(bool rebuild);
	// BW1W120 00571ff0 BW1M119 0132f1e0
	void Select(int first, int last);
	// BW1W120 00572090 BW1M119 0132ee10
	void RebuildList();
	// BW1W120 00572460 BW1M119 0132ecb0
	void UpdateFriendButton();
	// BW1W120 005725b0 BW1M119 0132e6e0
	void UpdateShow();
	// BW1W120 005729e0 BW1M119 0132e250
	void MP3Callback(int message, SetupBox* box, SetupControl* control, int x, int y);
	// BW1W120 00573840 BW1M119 0132d4b0
	void OpenDialog(bool close_after_send);
	// BW1W120 00573890 BW1M119 0132d2b0
	void SendMessageA(bool close, int quick_chat);
	// BW1W120 005739f0 BW1M119 0107b560
	void UpdateFrame();
	// BW1W120 00635d40 BW1M119 013840c0
	void UpdateIncomingText()
	{
		NumIncoming = IncomingList.count;
		if (NumIncoming > 0 && IncomingList.GetHead() != NULL)
		{
			wcsncpy(IncomingText->label, IncomingList.GetHead()->Text, 0xff);
			IncomingText->label[0xff] = 0;
		}
	}
	// BW1W120 inlined BW1M119 0132e160
	INCOMINGTEXTTYPE GetTopIncomingType()
	{
		IncomingBubbleInfo* info = IncomingList.GetHead();
		if (info != NULL)
			return info->Type;
		return INCOMINGTEXTTYPE_NONE;
	}
	// BW1W120 inlined BW1M119 0132e1d0
	IncomingBubbleInfo* GetTopIncoming()
	{
		if (IncomingList.head.Get() != NULL)
			return IncomingList.head.Get()->payload;
		return NULL;
	}
};
// BW1W120 00573cd0 BW1M119 0132cdb0
LHPlayer* GetLHPlayerFromNetID(unsigned long net_id);

#endif /* BW1_DECOMP_GATHERING_BOX_INCLUDED_H */
