#ifndef BW1_DECOMP_FRONT_END_INCLUDED_H
#define BW1_DECOMP_FRONT_END_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

class CDBox;
class ChannelBox;
class DialogBoxBase;
class EditingDebugBox;
class EndGameBox;
class GSLobbyBox;
class GatheringBox;
class HistoryBox;
struct LH3DMaterial;
class LoadingBox;
class LobbyBox;
class LoginBox;
class MainMenu;
class MultiplayerConditionBox;
class NewProfileBox;
struct Plasma;
class ProfileEditor;
class RegisterBox;
class SetupMultiplayerMain;
class SetupOnlineLandscapes;
class SkipBox;
class SkirmishGameBox;
class StartGameBox;
class StatsBox;
class TattooEditor;

struct FrontEnd
{
    bool cursor_on; /* 0x0 */
    ChannelBox* channel_box;
    EditingDebugBox* editing_debug_box;
    SetupMultiplayerMain* setup_multiplayer_main;
    SetupOnlineLandscapes* setup_online_landscapes; /* 0x10 */
    SkipBox* skip_box;
    CDBox* cd_box;
    GatheringBox* gathering_box;
    LoadingBox* loading_box; /* 0x20 */
    GSLobbyBox* gs_lobby_box;
    LobbyBox* lobby_box;
    RegisterBox* register_box;
    LoginBox* login_box; /* 0x30 */
    TattooEditor* tattoo_editor;
    NewProfileBox* new_profile_box;
    MainMenu* main_menu;
    ProfileEditor* profile_editor; /* 0x40 */
    uint32_t field_0x44;
    uint32_t field_0x48;
    uint32_t field_0x4c;
    uint32_t field_0x50;
    uint32_t field_0x54;
    uint32_t field_0x58;
    uint32_t field_0x5c;
    uint32_t field_0x60;
    uint32_t field_0x64;
    uint32_t field_0x68;
    uint32_t field_0x6c;
    uint32_t field_0x70;
    uint32_t field_0x74;
    uint32_t field_0x78;
    uint8_t field_0x7c[0x40];
    bool field_0xbc;
    bool field_0xbd;
    uint8_t field_0xbe;
    uint8_t field_0xbf;
    uint32_t field_0xc0;
    uint32_t field_0xc4;
    Plasma* plasma;
    LH3DMaterial* field_0xcc;
    LH3DMaterial* field_0xd0;
    LH3DMaterial* field_0xd4;
    uint8_t field_0xd8[0x400];
    float field_0x4d8;
    int field_0x4dc;
    bool field_0x4e0;
    bool field_0x4e1;
    bool field_0x4e2;
    bool field_0x4e3;
    bool field_0x4e4;
    bool field_0x4e5;
    uint8_t field_0x4e6;
    uint8_t field_0x4e7;
    StatsBox* stats_box;
    EndGameBox* end_game_box;
    MultiplayerConditionBox* multiplayer_condition_box; /* 0x4f0 */
    StartGameBox* start_game_box;
    HistoryBox* history_box;
    SkirmishGameBox* skirmish_game_box;

    // Static methods

    // BW1W120 0053b4d0 BW1M100 105c4d10 FrontEnd::Init(void)
    static void Init();
    // BW1W120 0053c450 BW1M100 105c47d0 FrontEnd::SetCursorOn(void)
    static void SetCursorOn();
    // BW1W120 00544f90 BW1M100 105b9c50 FrontEnd::JustDoABox(DialogBoxBase *)
    static void JustDoABox(DialogBoxBase* this);
    // BW1W120 0053ce70 BW1M100 105c3cf0 FrontEnd::JustDoNewProfileBox(void)
    static void JustDoNewProfileBox(FrontEnd* this);
    // BW1W120 00544f80 BW1M100 105ba050 FrontEnd::JustDoSkirmishGameBox(void)
    static void JustDoSkirmishGameBox(FrontEnd* this);
};

#endif /* BW1_DECOMP_FRONT_END_INCLUDED_H */
