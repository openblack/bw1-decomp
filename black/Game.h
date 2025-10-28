#ifndef BW1_DECOMP_GAME_INCLUDED_H
#define BW1_DECOMP_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */
#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <lhall/released/headers/LHTimer.h> /* For struct LHTimer */
#include <lionhead/lhlib/ver5.0/LHMouse.h> /* For enum LH_MOUSE_EVENT_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

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

struct Base;
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

// Object Oriented datastructures

// win1.41 00bec358 mac inlined GGame::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5GGame asm("??_R0?AVGGame@@@8");
// win1.41 009ad010 mac inlined GGame::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5GGame asm("??_R1A@?0A@A@GGame@@8");
// win1.41 009ad028 mac inlined GGame::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5GGame asm("??_R2GGame@@8");
// win1.41 009ad038 mac inlined GGame::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5GGame asm("??_R3GGame@@8");
// win1.41 008df62c mac 10732e00 GGame::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__5GGame asm("??_R4GGame@@6B@");
// win1.41 008df630 mac 10732e08 GGame::`vftable'
extern const struct GameThingVftable __vt__5GGame asm("??_7GGame@@6B@");

// Static methods

// win1.41 0054cbd0 mac 101584c0 GGame::DoYesNoSkipTutorialRequestersIfNecessary(void)
void __cdecl DoYesNoSkipTutorialRequestersIfNecessary__5GGameFv(void) asm("?DoYesNoSkipTutorialRequestersIfNecessary@GGame@@SAXXZ");
// win1.41 0054ff80 mac 100a0cb0 GGame::KeyHandler(unsigned short, LH_KEY, unsigned short, unsigned short, void *)
void __stdcall KeyHandler__5GGameFUs6LH_KEYUsUsPv(struct GGame* this, unsigned short param_1, enum LH_KEY param_2, unsigned short param_3, unsigned short param_4, void* param_5) asm("?KeyHandler@GGame@@QAEXGW4LH_KEY@@GGPAX@Z");
// win1.41 0054ffe0 mac 100982b0 GGame::MouseHandler(void *, LH_MOUSE_EVENT_TYPE, unsigned long, unsigned long)
bool __stdcall MouseHandler__5GGameFPv19LH_MOUSE_EVENT_TYPEUlUl(struct GGame* this, void* param_1, enum LH_MOUSE_EVENT_TYPE param_2, unsigned long param_3, unsigned long param_4) asm("?MouseHandler@GGame@@QAE_NPAXW4LH_MOUSE_EVENT_TYPE@@KK@Z");

// Constructors

// win1.41 0054b240 mac 104fda10 GGame::GGame(void)
struct GGame* __fastcall __ct__5GGameFv(struct GGame* this) asm("??0GGame@@QAE@XZ");

// Non-virtual methods

// win1.41 00510630 mac 100c09f0 GGame::SetupDataTables(void)
void __fastcall SetupDataTables__5GGameFv(struct GGame* this) asm("?SetupDataTables@GGame@@QAEXXZ");
// win1.41 0054bf20 mac 104eff40 GGame::ClearVariables(void)
void __fastcall ClearVariables__5GGameFv(struct GGame* this) asm("?ClearVariables@GGame@@QAEXXZ");
// win1.41 0054c180 mac 1003a410 GGame::GetCamera(void)
struct GCamera* __fastcall GetCamera__5GGameFv(struct GGame* this) asm("?GetCamera@GGame@@QAEPAVGCamera@@XZ");
// win1.41 0054c190 mac 101c8360 GGame::StartGame(void)
void __fastcall StartGame__5GGameFv(struct GGame* this) asm("?StartGame@GGame@@QAEIXZ");
// win1.41 0054c340 mac 10079850 GGame::ProcessFrameInputs(void)
void __fastcall ProcessFrameInputs__5GGameFv(struct GGame* this) asm("?ProcessFrameInputs@GGame@@QAEXXZ");
// win1.41 0054c3d0 mac 1001e260 GGame::ProcessGameInputs(void)
void __fastcall ProcessGameInputs__5GGameFv(struct GGame* this) asm("?ProcessGameInputs@GGame@@QAEIXZ");
// win1.41 0054c420 mac 10083f50 GGame::ProcessBufferedKeys(void)
void __fastcall ProcessBufferedKeys__5GGameFv(struct GGame* this) asm("?ProcessBufferedKeys@GGame@@QAEIXZ");
// win1.41 0054c4a0 mac 10029760 GGame::LocalTimerSaysDoATurn(void)
bool __fastcall LocalTimerSaysDoATurn__5GGameFv(struct GGame* this) asm("?LocalTimerSaysDoATurn@GGame@@QAE_NXZ");
// win1.41 0054cc30 mac 10029320 GGame::ProcessNetworkPackets(void)
void __fastcall ProcessNetworkPackets__5GGameFv(struct GGame* this) asm("?ProcessNetworkPackets@GGame@@QAEIXZ");
// win1.41 0054ced0 mac 100dc070 GGame::DoNetworkStart(void)
void __fastcall DoNetworkStart__5GGameFv(struct GGame* this) asm("?DoNetworkStart@GGame@@QAEIXZ");
// win1.41 0054cf20 mac 100e23b0 GGame::Loop(void)
void __fastcall Loop__5GGameFv(struct GGame* this) asm("?Loop@GGame@@QAEIXZ");
// win1.41 0054d620 mac 1001e2f0 GGame::ProcessOneGameTurn(void)
void __fastcall ProcessOneGameTurn__5GGameFv(struct GGame* this) asm("?ProcessOneGameTurn@GGame@@QAEIXZ");
// win1.41 0054d820 mac 10083dd0 GGame::ProcessGameCode(void)
void __fastcall ProcessGameCode__5GGameFv(struct GGame* this) asm("?ProcessGameCode@GGame@@QAEIXZ");
// win1.41 0054d850 mac 10079980 GGame::ProcessGraphicsEngine(unsigned long, unsigned long)
void __fastcall ProcessGraphicsEngine__5GGameFUlUl(struct GGame* this, const void* edx, uint32_t param_1, uint32_t param_2) asm("?ProcessGraphicsEngine@GGame@@QAEXKK@Z");
// win1.41 0054da80 mac 10033dd0 GGame::ProcessGraphicsEngine(void)
void __fastcall Process3dEngine__5GGameFv(struct GGame* this) asm("?Process3dEngine@GGame@@QAEIXZ");
// win1.41 0054e4f0 mac 10083c70 GGame::StartTurn(void)
void __fastcall StartTurn__5GGameFv(struct GGame* this) asm("?StartTurn@GGame@@QAEIXZ");
// win1.41 0054e5c0 mac 100665c0 GGame::ProcessTurn(void)
void __fastcall ProcessTurn__5GGameFv(struct GGame* this) asm("?ProcessTurn@GGame@@QAEIXZ");
// win1.41 0054e960 mac 10070430 GGame::EndTurn(void)
void __fastcall EndTurn__5GGameFv(struct GGame* this) asm("?EndTurn@GGame@@QAEIXZ");
// win1.41 0054ef40 mac 10514230 GGame::InitOneTimeOnly(void)
uint32_t __fastcall InitOneTimeOnly__5GGameFv(struct GGame* this) asm("?InitOneTimeOnly@GGame@@QAEIXZ");
// win1.41 0054f3b0 mac 101b9770 GGame::Init(void)
bool __fastcall Init__5GGameFv(struct GGame* this) asm("?Init@GGame@@QAE_NXZ");
// win1.41 0054f421 mac inlined GGame::InitInner(void)
bool __fastcall InitInner__5GGameFv(struct GGame* this) asm("?InitInner@GGame@@QAE_NXZ");
// win1.41 00550080 mac 101c6850 GGame::UnfinishInitialisation(void)
void __fastcall UnfinishInitialisation__5GGameFv(struct GGame* this) asm("?UnfinishInitialisation@GGame@@QAEXXZ");
// win1.41 00550110 mac 10505500 GGame::FinishInitialisation(void)
void __fastcall FinishInitialisation__5GGameFv(struct GGame* this) asm("?FinishInitialisation@GGame@@QAEXXZ");
// win1.41 00550170 mac inlined GGame::CreateMeshPack(void)
void __fastcall CreateMeshPack__5GGameFv(struct GGame* this) asm("?CreateMeshPack@GGame@@QAEXXZ");
// win1.41 00550390 mac 10427340 GGame::LoadFiles(void)
bool __fastcall LoadFiles__5GGameFv(struct GGame* this) asm("?LoadFiles@GGame@@QAE_NXZ");
// win1.41 00550410 mac 1054a080 GGame::SetupPlayers(void)
void __fastcall SetupPlayers__5GGameFv(struct GGame* this) asm("?SetupPlayers@GGame@@QAEXXZ");
// win1.41 005507d0 mac inlined GGame::LoopThroughPlayers(void)
void __fastcall LoopThroughPlayers__5GGameFv(struct GGame* this) asm("?LoopThroughPlayers@GGame@@QAEXXZ");
// win1.41 005507f0 mac 10506220 GGame::Birthday(void)
void __fastcall Birthday__5GGameFv(struct GGame* this) asm("?Birthday@GGame@@QAEXXZ");
// win1.41 00550820 mac inlined GGame::MyPlayerID(unsigned long)
int __fastcall MyPlayerID__5GGameFUl(struct GGame* this, const void* edx, unsigned long param_1) asm("?MyPlayerID@GGame@@QAEHK@Z");
// win1.41 005508a0 mac 10064420 GGame::GetNextPlayer(GPlayer *)
struct GPlayer* __fastcall GetNextPlayer__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* param_1) asm("?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z");
// win1.41 005508d0 mac 100c0950 GGame::GetNextActivePlayer(GPlayer *)
struct GPlayer* __fastcall GetNextActivePlayer__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* param_1) asm("?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z");
// win1.41 00550930 mac 10095d40 GGame::GetNextActivePlayerAndNeutral(GPlayer *)
struct GPlayer* __fastcall GetNextActivePlayerAndNeutral__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* player) asm("?GetNextActivePlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z");
// win1.41 00550980 mac 1005c2a0 GGame::GetNextPlayerAndNeutral(GPlayer *)
struct GPlayer* __fastcall GetNextPlayerAndNeutral__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* player) asm("?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z");
// win1.41 005509b0 mac 100586e0 GGame::GetPlayer(unsigned long)
struct GPlayer* __fastcall GetPlayer__5GGameFUl(struct GGame* this, const void* edx, uint32_t param_1) asm("?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z");
// win1.41 005509e0 mac 1000be00 GGame::GetPlayerFromReal(unsigned long)
struct GPlayer* __fastcall GetPlayerFromReal__5GGameFUl(struct GGame* this, const void* edx, unsigned long param_1) asm("?GetPlayerFromReal@GGame@@QAEPAVGPlayer@@K@Z");
// win1.41 00550a10 mac inlined GGame::GetPlayerInterfaceFromReal(unsigned long)
struct GInterface* __fastcall GetPlayerInterfaceFromReal__5GGameFUl(struct GGame* this, const void* edx, unsigned long param_1) asm("?GetPlayerInterfaceFromReal@GGame@@QAEPAVGInterface@@K@Z");
// win1.41 00550a30 mac inlined GGame::GetNextPlayerWithNoCreature(GPlayer *)
struct GPlayer* __fastcall GetNextPlayerWithNoCreature__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* param_1) asm("?GetNextPlayerWithNoCreature@GGame@@QAEPAVGPlayer@@PAV2@@Z");
// win1.41 00550a60 mac inlined GGame::GetPlayer(PLAYER_NAME)
struct GPlayer* __fastcall GetPlayer__5GGameF11PLAYER_NAME(struct GGame* this, const void* edx, enum PLAYER_NAME param_1) asm("?GetPlayer@GGame@@QAEPAVGPlayer@@W4PLAYER_NAME@@@Z");
// win1.41 00552620 mac 1005cfb0 GGame::GetTribe(TRIBE_TYPE)
struct GTribeInfo* __fastcall GetTribe__5GGameF10TRIBE_TYPE(struct GGame* this, const void* edx, enum TRIBE_TYPE type) asm("?GetTribe@GGame@@QAEPAVGTribeInfo@@W4TRIBE_TYPE@@@Z");
// win1.41 00552640 mac 10073d30 GGame::AddPlayerSparkles(void)
void __fastcall AddPlayerSparkles__5GGameFv(struct GGame* this) asm("?AddPlayerSparkles@GGame@@QAEXXZ");
// win1.41 00552bb0 mac 10424170 GGame::ClearMap(void)
void __fastcall ClearMap__5GGameFv(struct GGame* this) asm("?ClearMap@GGame@@QAEXXZ");
// win1.41 00552f40 mac 1056f520 GGame::StartPlaygroundGame(char *)
void __fastcall StartPlaygroundGame__5GGameFPc(struct GGame* this, const void* edx, char* map_path) asm("?StartPlaygroundGame@GGame@@QAEXPAD@Z");
// win1.41 00552f80 mac 100369c0 GGame::IsMultiplayerGame(void) const
bool __fastcall IsMultiplayerGame__5GGameCFv(struct GGame* this) asm("?IsMultiplayerGame@GGame@@QBE_NXZ");
// win1.41 00552fa0 mac 10423f90 GGame::FindTownWithID(unsigned long)
struct Town* __fastcall FindTownWithID__5GGameFUl(struct GGame* this, const void* edx, int id) asm("?FindTownWithID@GGame@@QAEPAVTown@@K@Z");
// win1.41 005538e0 mac 10166f50 GGame::OnNewGame(void)
void __fastcall OnNewGame__5GGameFv(struct GGame* this) asm("?OnNewGame@GGame@@QAEXXZ");
// win1.41 00555280 mac 1008f570 GGame::Update3DInfluence(void)
struct GPlayer* __fastcall Update3DInfluence__5GGameFv(struct GGame* this) asm("?Update3DInfluence@GGame@@QAEPAVGPlayer@@XZ");
// win1.41 00555850 mac 10051560 GGame::MyInterface(void)
struct GInterface* __fastcall MyInterface__5GGameFv(struct GGame* this) asm("?MyInterface@GGame@@QAEPAVGInterface@@XZ");
// win1.41 00555890 mac 105996f0 GGame::SetLandBalance(unsigned long, float, GPlayer *)
void __fastcall SetLandBalance__5GGameFUlfP7GPlayer(struct GGame* this, const void* edx, int index, float balance, struct GPlayer* player) asm("?SetLandBalance@GGame@@QAEXKMPAVGPlayer@@@Z");
// win1.41 00555990 mac inlined GGame::ResetAndStartPlaygroundGame(char *)
void __fastcall ResetAndStartPlaygroundGame__5GGameFPc(struct GGame* this, const void* edx, char* path) asm("?ResetAndStartPlaygroundGame@GGame@@QAEXPAD@Z");
// win1.41 0063c3d0 mac 1001e1e0 GGame::ProcessOneSuperpacket(void)
void __fastcall ProcessOneSuperpacket__5GGameFv(struct GGame* this) asm("?ProcessOneSuperpacket@GGame@@QAEXXZ");
// win1.41 0063f830 mac 1009f340 GGame::ProcessBindableKeys(LH_KEY, LH_KEY, unsigned long)
uint32_t __fastcall ProcessBindableKeys__5GGameF6LH_KEY6LH_KEYUl(struct GGame* this, const void* edx, enum LH_KEY param_1, enum LH_KEY param_2, unsigned long param_3) asm("?ProcessBindableKeys@GGame@@QAEIW4LH_KEY@@0K@Z");
// win1.41 0063f940 mac 1009f4b0 GGame::DoAction(unsigned long)
uint32_t __fastcall DoAction__5GGameFUl(struct GGame* this, const void* edx, unsigned long param_1) asm("?DoAction@GGame@@QAEIK@Z");

// Override methods

// win1.41 0054c330 mac 10496be0 GGame::Delete(void)
void __fastcall Delete__5GGameFv(struct Base* this) asm("?Delete@GGame@@UAEXXZ");
// win1.41 0054bfd0 mac 103dcca0 GGame::ToBeDeleted(int)
void __fastcall ToBeDeleted__5GGameFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GGame@@UAEXH@Z");
// win1.41 00550780 mac 10560930 GGame::Dump(void)
void __fastcall Dump__5GGameFv(struct Base* this) asm("?Dump@GGame@@UAEXXZ");
// win1.41 0054b9a0 mac 1009d100 GGame::IsAvailable(void)
bool __fastcall IsAvailable__5GGameFv(struct GameThing* this) asm("?IsAvailable@GGame@@UAE_NXZ");
// win1.41 0054b9c0 mac 10496160 GGame::GetDebugText(void)
char* __fastcall GetDebugText__5GGameFv(struct GameThing* this) asm("?GetDebugText@GGame@@UAEPADXZ");
// win1.41 00554830 mac 10354cc0 GGame::Load(GameOSFile &)
uint32_t __fastcall Load__5GGameFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GGame@@UAEIAAVGameOSFile@@@Z");
// win1.41 00554090 mac 104935a0 GGame::Save(GameOSFile &)
int __fastcall Save__5GGameFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@Game@@QAEIAAVGGameOSFile@@@Z");
// win1.41 0054b9b0 mac 10512c00 GGame::GetSaveType(void)
uint32_t __fastcall GetSaveType__5GGameFv(struct GameThing* this) asm("?GetSaveType@GGame@@UAEIXZ");
// win1.41 00555080 mac 100c76b0 GGame::ResolveLoad(void)
void __fastcall ResolveLoad__5GGameFv(struct GameThing* this) asm("?ResolveLoad@GGame@@UAEXXZ");

// win1.41 00550180 mac 10147130 LoadAllAnimations(void)
void __cdecl LoadAllAnimations__Fv(void) asm("?LoadAllAnimations@@YAXXZ");
// win1.41 005f4c90 mac 10100360 StartTipOfTheDayText(void)
void __cdecl StartTipOfTheDayText__Fv(void) asm("?StartTipOfTheDayText@@YAXXZ");
// win1.41 0054a780 mac 10174ba0 InitStaticsValues(void)
void __cdecl InitStaticsValues__Fv(void) asm("?InitStaticsValues@@YAXXZ");
// win1.41 00555530 mac 101beee0 DoCitadelMultiplayer(void)
void __cdecl DoCitadelMultiplayer__Fv(void) asm("?DoCitadelMultiplayer@@YAXXZ");

#endif /* BW1_DECOMP_GAME_INCLUDED_H */
