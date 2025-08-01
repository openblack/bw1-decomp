#ifndef BW1_DECOMP_GAME_INCLUDED_H
#define BW1_DECOMP_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */
#include <lhall/released/headers/LHTimer.h> /* For struct LHTimer */

#include "CreatureDatabase.h" /* For struct CreatureDatabase */
#include "Data.h" /* For struct GData */
#include "GameThing.h" /* For struct GameThing */
#include "GlobalGameLists.h" /* For struct GlobalGameLists */
#include "KeyBuffer.h" /* For struct GKeyBuffer */
#include "Landscape.h" /* For struct GLandscape */
#include "Language.h" /* For struct GLanguage */
#include "Map.h" /* For struct GMap */
#include "MapCoords.h" /* For struct MapCoords */
#include "Network.h" /* For struct GNetwork */
#include "PathCreator.h" /* For struct PathCreator */
#include "Player.h" /* For enum PLAYER_NAME, struct GPlayer */
#include "PlayerInfo.h" /* For struct GPlayerInfo */
#include "ScriptCreatureCurse.h" /* For struct ScriptCreatureCurse */
#include "StatsDatabase.h" /* For struct StatsDatabase */
#include "TerrainMap.h" /* For struct GTerrainMap */

// Forward Declares

struct Config;
struct ControlMap;
struct DialogBoxKeyBinding;
struct DialogBoxOptions;
struct DialogBoxSaveMessage;
struct GCamera;
struct GClimate;
struct GInterface;
struct GScript;
struct GSoundMap;
struct GTribeInfo;
struct GameOSFile;
struct GestureSystem;
struct GestureSystemData;
struct GestureSystemDataList;
struct GestureSystemResult;
struct HelpProfile;
struct HelpSystem;
struct LHFilePath;
struct Settings;
struct Temple;
struct Town;

enum GAME_MODE
{
  GAME_MODE_RUNNING = 0x0,
  GAME_MODE_1 = 0x1,
  GAME_MODE_2 = 0x2,
  GAME_MODE_ONLINE = 0x3,
  GAME_MODE_4 = 0x4,
  GAME_MODE_SKIRMISH = 0x5,
  GAME_MODE_QUITTING = 0x6,
  _GAME_MODE_COUNT = 0x7
};
static_assert(sizeof(enum GAME_MODE) == 0x4, "Data type is of wrong size");

static const char* GAME_MODE_strs[_GAME_MODE_COUNT] = {
  "GAME_MODE_RUNNING",
  "GAME_MODE_1",
  "GAME_MODE_2",
  "GAME_MODE_ONLINE",
  "GAME_MODE_4",
  "GAME_MODE_SKIRMISH",
  "GAME_MODE_QUITTING",
};

struct GGame
{
  struct GameThing super;  /* 0x0 */
  uint32_t field_0x14;
  struct GPlayer players[0x8];
  uint8_t field_0x5318[0x664];
  struct StatsDatabase stats_database;  /* 0x597c */
  struct CreatureDatabase creature_database;  /* 0x598c */
  bool field_0x599c;
  uint8_t field_0x599d;
  uint8_t field_0x599e;
  uint8_t field_0x599f;
  uint32_t field_0x59a0;
  uint32_t field_0x59a4;
  uint8_t field_0x59a8[0xc];
  struct Temple* temple;  /* 0x59b4 */
  struct GMap map;
  int32_t land_number;  /* 0x205a08 */
  uint32_t field_0x205a0c;
  int field_0x205a10;
  uint32_t field_0x205a14;
  int field_0x205a18;
  int field_0x205a1c;
  struct GLandscape landscape;  /* 0x205a20 */
  uint32_t field_0x205a28;
  uint32_t field_0x205a2c;
  struct GData data;  /* 0x205a30 */
  uint8_t field_0x205a58;
  uint8_t player_index;
  uint8_t field_0x205a5a;
  uint8_t neutral_player_index;
  uint32_t field_0x205a5c;
  uint8_t field_0x205a60;
  uint8_t field_0x205a61;
  uint8_t field_0x205a62;
  uint8_t field_0x205a63;
  uint32_t field_0x205a64;
  struct MapCoords coords_0x205a68;
  struct MapCoords coords_0x205a74;
  uint8_t field_0x205a80[0xf0];
  struct GNetwork network;  /* 0x205b70 */
  uint8_t field_0x205b84[0x20];
  struct GlobalGameLists game_lists;  /* 0x205ba4 */
  uint32_t field_0x205d34;
  int fps_0x205d38;
  uint32_t field_0x205d3c;
  int field_0x205d40;
  uint32_t field_0x205d44;
  int field_0x205d48;
  uint8_t field_0x205d4c[0xc];
  int field_0x205d58;
  uint32_t field_0x205d5c;
  uint32_t field_0x205d60;
  float field_0x205d64;
  struct LHTimer timer;
  uint8_t field_0x205e78[0x14];
  struct GTerrainMap terrain_map;  /* 0x205e8c */
  struct GPlayerInfo player_info;  /* 0x24ffbc */
  struct GLanguage language;  /* 0x25004c */
  struct GSoundMap* sound_map;  /* 0x250058 */
  struct HelpSystem* help_system;
  struct HelpProfile* help_profile;  /* 0x250060 */
  struct GestureSystemDataList* gesture_system_data_list;
  struct GestureSystemData* gesture_system_data;
  struct GestureSystem* gesture_system;
  struct GestureSystemResult* gesture_system_result;  /* 0x250070 */
  struct Settings* settings;
  float town_influence_multiplier;
  float player_influence_multiplier;
  uint32_t field_0x250080;
  struct ScriptCreatureCurse script_creature_curse;
  struct GScript* script;  /* 0x250090 */
  uint32_t field_0x250094;
  uint32_t field_0x250098;
  struct MapCoords start_camera_coords;
  uint8_t field_0x2500a8[0xc8];
  char* field_0x250170;
  uint32_t field_0x250174;
  struct Config* config;
  uint32_t enum_0x25017c;
  enum GAME_MODE game_mode;  /* 0x250180 */
  uint8_t field_0x250184[0x124];
  struct GKeyBuffer key_buffer;  /* 0x2502a8 */
  uint32_t field_0x2502b8;
  uint32_t field_0x2502bc;
  struct GCamera* camera;  /* 0x2502c0 */
  uint32_t field_0x2502c4;
  uint32_t field_0x2502c8;
  uint8_t field_0x2502cc;
  uint8_t field_0x2502cd;
  uint8_t field_0x2502ce;
  uint8_t field_0x2502cf;
  uint8_t field_0x2502d0[0x14];
  struct LHFilePath* field_0x2502e4;
  uint8_t field_0x2502e8[0x18];
  struct ControlMap* control_map;  /* 0x250300 */
  struct DialogBoxOptions* dialog_box_options;
  struct DialogBoxKeyBinding* dialog_box_key_binding;
  struct DialogBoxSaveMessage* dialog_box_save_message;
  struct PathCreator path_creator;  /* 0x250310 */
  uint32_t field_0x250530;
  struct GClimate* climate;
  uint32_t field_0x250538;
  uint32_t field_0x25053c;
  int field_0x250540;
};
static_assert(sizeof(struct GGame) == 0x250544, "Data type is of wrong size");

static struct GameThingVftable* const __vt__5GGame = (struct GameThingVftable* const)0x008df630;

// Static methods

// win1.41 0054cbd0 mac 101584c0 GGame::DoYesNoSkipTutorialRequestersIfNecessary(void)
void __cdecl DoYesNoSkipTutorialRequestersIfNecessary__5GGameFv(void);
// win1.41 00552620 mac 1005cfb0 GGame::GetTribe(TRIBE_TYPE)
struct GTribeInfo* __stdcall GetTribe__5GGameF10TRIBE_TYPE(enum TRIBE_TYPE type);
// win1.41 00552f40 mac 1056f520 GGame::StartPlaygroundGame(char *)
void __stdcall StartPlaygroundGame__5GGameFPc(char* map_path);
// win1.41 00555890 mac 105996f0 GGame::SetLandBalance(unsigned long, float, GPlayer *)
void __stdcall SetLandBalance__5GGameFUlfP7GPlayer(int index, float balance, struct GPlayer* player);

// Constructors

// win1.41 0054b240 mac 104fda10 GGame::GGame(void)
struct GGame* __fastcall __ct__5GGameFv(struct GGame* this);

// Non-virtual methods

// win1.41 0054c180 mac 1003a410 GGame::GetCamera(void)
struct GCamera* __fastcall GetCamera__5GGameFv(struct GGame* this);
// win1.41 0054c190 mac 101c8360 GGame::StartGame(void)
void __fastcall StartGame__5GGameFv(struct GGame* this);
// win1.41 0054c3d0 mac 1001e260 GGame::ProcessGameInputs(void)
void __fastcall ProcessGameInputs__5GGameFv(struct GGame* this);
// win1.41 0054c420 mac 10083f50 GGame::ProcessBufferedKeys(void)
void __fastcall ProcessBufferedKeys__5GGameFv(struct GGame* this);
// win1.41 0054c4a0 mac 10029760 GGame::LocalTimerSaysDoATurn(void)
bool __fastcall LocalTimerSaysDoATurn__5GGameFv(struct GGame* this);
// win1.41 0054cc30 mac 10029320 GGame::ProcessNetworkPackets(void)
void __fastcall ProcessNetworkPackets__5GGameFv(struct GGame* this);
// win1.41 0054ced0 mac 100dc070 GGame::DoNetworkStart(void)
void __fastcall DoNetworkStart__5GGameFv(struct GGame* this);
// win1.41 0054cf20 mac 100e23b0 GGame::Loop(void)
void __fastcall Loop__5GGameFv(struct GGame* this);
// win1.41 0054d620 mac 1001e2f0 GGame::ProcessOneGameTurn(void)
void __fastcall ProcessOneGameTurn__5GGameFv(struct GGame* this);
// win1.41 0054d820 mac 10083dd0 GGame::ProcessGameCode(void)
void __fastcall ProcessGameCode__5GGameFv(struct GGame* this);
// win1.41 0054d840 mac inline GGame::DisplayPlayerTextMessages(void)
void __fastcall DisplayPlayerTextMessages__5GGameFv(struct GGame* this);
// win1.41 0054d850 mac 10079980 GGame::ProcessGraphicsEngine(unsigned long, unsigned long)
void __fastcall ProcessGraphicsEngine__5GGameFUlUl(struct GGame* this, const void* edx, uint32_t param_1, uint32_t param_2);
// win1.41 0054da80 mac 10033dd0 GGame::ProcessGraphicsEngine(void)
void __fastcall Process3dEngine__5GGameFv(struct GGame* this);
// win1.41 0054e4f0 mac 10083c70 GGame::StartTurn(void)
void __fastcall StartTurn__5GGameFv(struct GGame* this);
// win1.41 0054e960 mac 10070430 GGame::EndTurn(void)
void __fastcall EndTurn__5GGameFv(struct GGame* this);
// win1.41 0054e5c0 mac 100665c0 GGame::ProcessTurn(void)
void __fastcall ProcessTurn__5GGameFv(struct GGame* this);
// win1.41 0054ef40 mac 10514230 GGame::InitOneTimeOnly(void)
uint32_t __fastcall InitOneTimeOnly__5GGameFv(struct GGame* this) asm("?InitOneTimeOnly@GGame@@QAEIXZ");
// win1.41 0054f3b0 mac 101b9770 GGame::Init(void)
bool __fastcall Init__5GGameFv(struct GGame* this);
// win1.41 00550390 mac 10427340 GGame::LoadFiles(void)
int __fastcall LoadFiles__5GGameFv(struct GGame* this);
// win1.41 005507f0 mac 10506220 GGame::Birthday(void)
void __fastcall Birthday__5GGameFv(struct GGame* this);
// win1.41 00550930 mac 10095d40 GGame::GetNextActivePlayerAndNeutral(GPlayer *)
struct GPlayer* __fastcall GetNextActivePlayerAndNeutral__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* player);
// win1.41 00550980 mac 1005c2a0 GGame::GetNextPlayerAndNeutral(GPlayer *)
struct GPlayer* __fastcall GetNextPlayerAndNeutral__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* player);
// win1.41 005509b0 mac 100586e0 GGame::GetPlayer(unsigned long)
struct GPlayer* __fastcall GetPlayer__5GGameFUl(struct GGame* this, const void* edx, enum PLAYER_NAME param_1);
// win1.41 00552640 mac 10073d30 GGame::AddPlayerSparkles(void)
void __fastcall AddPlayerSparkles__5GGameFv(struct GGame* this);
// win1.41 00552bb0 mac 10424170 GGame::ClearMap(void)
void __fastcall ClearMap__5GGameFv(struct GGame* this);
// win1.41 00552f80 mac 100369c0 GGame::IsMultiplayerGame(void)
bool __fastcall IsMultiplayerGame__5GGameCFv(struct GGame* this);
// win1.41 00552fa0 mac 10423f90 GGame::FindTownWithID(unsigned long)
struct Town* __fastcall FindTownWithID__5GGameFUl(struct GGame* this, const void* edx, int id);
// win1.41 005538e0 mac 10166f50 GGame::OnNewGame(void)
void __fastcall OnNewGame__5GGameFv(struct GGame* this);
// win1.41 00555280 mac 1008f570 GGame::Update3DInfluence(void)
struct GPlayer* __fastcall Update3DInfluence__5GGameFv(struct GGame* this);
// win1.41 00555850 mac 10051560 GGame::MyInterface(void)
struct GInterface* __fastcall MyInterface__5GGameFv(struct GGame* this);
// win1.41 00555990 mac inlined GGame::ResetAndStartPlaygroundGame(char *)
void __fastcall ResetAndStartPlaygroundGame__5GGameFPc(struct GGame* this, const void* edx, char* path);
// win1.41 0063c3d0 mac 1001e1e0 GGame::ProcessOneSuperpacket(void)
void __fastcall ProcessOneSuperpacket__5GGameFv(struct GGame* this);

// Override methods

// win1.41 00554090 mac 104935a0 GGame::Save(GameOSFile &)
int __fastcall Save__5GGameFR10GameOSFile(struct GGame* this, const void* edx, struct GameOSFile* file);

#endif /* BW1_DECOMP_GAME_INCLUDED_H */
