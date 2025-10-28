#ifndef BW1_DECOMP_FRONT_END_INCLUDED_H
#define BW1_DECOMP_FRONT_END_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct CDBox;
struct ChannelBox;
struct DialogBoxBase;
struct EditingDebugBox;
struct EndGameBox;
struct GSLobbyBox;
struct GatheringBox;
struct HistoryBox;
struct LH3DMaterial;
struct LoadingBox;
struct LobbyBox;
struct LoginBox;
struct MainMenu;
struct MultiplayerConditionBox;
struct NewProfileBox;
struct Plasma;
struct ProfileEditor;
struct RegisterBox;
struct SetupMultiplayerMain;
struct SetupOnlineLandscapes;
struct SkipBox;
struct SkirmishGameBox;
struct StartGameBox;
struct StatsBox;
struct TattooEditor;

struct FrontEnd
{
  bool cursor_on;  /* 0x0 */
  struct ChannelBox* channel_box;
  struct EditingDebugBox* editing_debug_box;
  struct SetupMultiplayerMain* setup_multiplayer_main;
  struct SetupOnlineLandscapes* setup_online_landscapes;  /* 0x10 */
  struct SkipBox* skip_box;
  struct CDBox* cd_box;
  struct GatheringBox* gathering_box;
  struct LoadingBox* loading_box;  /* 0x20 */
  struct GSLobbyBox* gs_lobby_box;
  struct LobbyBox* lobby_box;
  struct RegisterBox* register_box;
  struct LoginBox* login_box;  /* 0x30 */
  struct TattooEditor* tattoo_editor;
  struct NewProfileBox* new_profile_box;
  struct MainMenu* main_menu;
  struct ProfileEditor* profile_editor;  /* 0x40 */
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
  struct Plasma* plasma;
  struct LH3DMaterial* field_0xcc;
  struct LH3DMaterial* field_0xd0;
  struct LH3DMaterial* field_0xd4;
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
  struct StatsBox* stats_box;
  struct EndGameBox* end_game_box;
  struct MultiplayerConditionBox* multiplayer_condition_box;  /* 0x4f0 */
  struct StartGameBox* start_game_box;
  struct HistoryBox* history_box;
  struct SkirmishGameBox* skirmish_game_box;
};
static_assert(sizeof(struct FrontEnd) == 0x500, "Data type is of wrong size");

// Static methods

// win1.41 0053b4d0 mac 105c4d10 FrontEnd::Init(void)
void __cdecl Init__8FrontEndFv(void) asm("?Init@FrontEnd@@SAXXZ");
// win1.41 0053c450 mac 105c47d0 FrontEnd::SetCursorOn(void)
void __cdecl SetCursorOn__8FrontEndFv(void) asm("?SetCursorOn@FrontEnd@@SAXXZ");
// win1.41 00544f90 mac 105b9c50 FrontEnd::JustDoABox(DialogBoxBase *)
void __cdecl JustDoABox__8FrontEndFP13DialogBoxBase(struct DialogBoxBase* this) asm("?JustDoABox@FrontEnd@@SAXPAVDialogBoxBase@@@Z");
// win1.41 0053ce70 mac 105c3cf0 FrontEnd::JustDoNewProfileBox(void)
void __cdecl JustDoNewProfileBox__8FrontEndFv(struct FrontEnd* this) asm("?JustDoNewProfileBox@FrontEnd@@QAEXXZ");
// win1.41 00544f80 mac 105ba050 FrontEnd::JustDoSkirmishGameBox(void)
void __cdecl JustDoSkirmishGameBox__8FrontEndFv(struct FrontEnd* this) asm("?JustDoSkirmishGameBox@FrontEnd@@QAEXXZ");

#endif /* BW1_DECOMP_FRONT_END_INCLUDED_H */
