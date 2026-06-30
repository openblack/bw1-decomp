#ifndef BW1_DECOMP_GAME_INCLUDED_H
#define BW1_DECOMP_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */
#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <Lionhead/LHLib/ver5.0/LHTimer.h> /* For LHTimer */
#include <Lionhead/LHLib/ver5.0/LHMouse.h> /* For enum LH_MOUSE_EVENT_TYPE */

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

// Forward Declares

class Base;
struct Config;
struct ControlMap;
class DialogBoxKeyBinding;
class DialogBoxOptions;
class DialogBoxSaveMessage;
class GCamera;
class GClimate;
class GInterface;
class GScript;
class GSoundMap;
class GTribeInfo;
class GameOSFile;
class GestureSystem;
class GestureSystemData;
class GestureSystemDataList;
struct GestureSystemResult;
class HelpProfile;
class HelpSystem;
struct LHFilePath;
struct Settings;
struct Temple;
class Town;

class GGame: public GameThing
{
public:
    // BW1W120 00d0195c
    static GGame* g_game;

    uint32_t field_0x14;
    GPlayer players[0x8];
    uint8_t field_0x5318[0x664];
    StatsDatabase stats_database; /* 0x597c */
    CreatureDatabase creature_database; /* 0x598c */
    bool field_0x599c;
    uint8_t field_0x599d;
    uint8_t field_0x599e;
    uint8_t field_0x599f;
    uint32_t field_0x59a0;
    uint32_t field_0x59a4;
    uint8_t field_0x59a8[0xc];
    Temple* temple; /* 0x59b4 */
    GMap map;
    int32_t land_number; /* 0x205a08 */
    uint32_t field_0x205a0c;
    int field_0x205a10;
    uint32_t field_0x205a14;
    int field_0x205a18;
    int field_0x205a1c;
    GLandscape landscape; /* 0x205a20 */
    uint32_t field_0x205a28;
    uint32_t field_0x205a2c;
    GData data; /* 0x205a30 */
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
    MapCoords coords_0x205a68;
    MapCoords coords_0x205a74;
    uint8_t field_0x205a80[0xf0];
    GNetwork network; /* 0x205b70 */
    uint8_t field_0x205b84[0x20];
    GlobalGameLists game_lists; /* 0x205ba4 */
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
    LHTimer timer;
    uint8_t field_0x205e78[0x14];
    GTerrainMap terrain_map; /* 0x205e8c */
    GPlayerInfo player_info; /* 0x24ffbc */
    GLanguage language; /* 0x25004c */
    GSoundMap* sound_map; /* 0x250058 */
    HelpSystem* help_system;
    HelpProfile* help_profile; /* 0x250060 */
    GestureSystemDataList* gesture_system_data_list;
    GestureSystemData* gesture_system_data;
    GestureSystem* gesture_system;
    GestureSystemResult* gesture_system_result; /* 0x250070 */
    Settings* settings;
    float town_influence_multiplier;
    float player_influence_multiplier;
    uint32_t field_0x250080;
    ScriptCreatureCurse script_creature_curse;
    GScript* script; /* 0x250090 */
    uint32_t field_0x250094;
    uint32_t field_0x250098;
    MapCoords start_camera_coords;
    uint8_t field_0x2500a8[0xc8];
    char* field_0x250170;
    uint32_t field_0x250174;
    Config* config;
    uint32_t enum_0x25017c;
    GAME_MODE game_mode; /* 0x250180 */
    uint8_t field_0x250184[0x124];
    GKeyBuffer key_buffer; /* 0x2502a8 */
    uint32_t field_0x2502b8;
    uint32_t field_0x2502bc;
    GCamera* camera; /* 0x2502c0 */
    uint32_t field_0x2502c4;
    uint32_t field_0x2502c8;
    uint8_t field_0x2502cc;
    uint8_t field_0x2502cd;
    uint8_t field_0x2502ce;
    uint8_t field_0x2502cf;
    uint8_t field_0x2502d0[0x14];
    LHFilePath* field_0x2502e4;
    uint8_t field_0x2502e8[0x18];
    ControlMap* control_map; /* 0x250300 */
    DialogBoxOptions* dialog_box_options;
    DialogBoxKeyBinding* dialog_box_key_binding;
    DialogBoxSaveMessage* dialog_box_save_message;
    PathCreator path_creator; /* 0x250310 */
    uint32_t field_0x250530;
    GClimate* climate;
    uint32_t field_0x250538;
    uint32_t field_0x25053c;
    int field_0x250540;

    // Override methods

    // BW1W120 0054c330 BW1M100 10496be0 GGame::Delete(void)
    virtual void Delete();
    // BW1W120 0054bfd0 BW1M100 103dcca0 GGame::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00550780 BW1M100 10560930 GGame::Dump(void)
    virtual void Dump();
    // BW1W120 0054b9a0 BW1M100 1009d100 GGame::IsAvailable(void)
    virtual bool IsAvailable();
    // BW1W120 0054b9c0 BW1M100 10496160 GGame::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00554830 BW1M100 10354cc0 GGame::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 00554090 BW1M100 104935a0 GGame::Save(GameOSFile &)
    virtual int Save(GameOSFile* file);
    // BW1W120 0054b9b0 BW1M100 10512c00 GGame::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00555080 BW1M100 100c76b0 GGame::ResolveLoad(void)
    virtual void ResolveLoad();

    // Static methods

    // BW1W120 0054cbd0 BW1M100 101584c0 GGame::DoYesNoSkipTutorialRequestersIfNecessary(void)
    static void DoYesNoSkipTutorialRequestersIfNecessary();
    // BW1W120 0054ff80 BW1M100 100a0cb0 GGame::KeyHandler(unsigned short, LH_KEY, unsigned short, unsigned short, void *)
    static void KeyHandler(GGame* this, unsigned short param_1, LH_KEY param_2, unsigned short param_3, unsigned short param_4, void* param_5);
    // BW1W120 0054ffe0 BW1M100 100982b0 GGame::MouseHandler(void *, LH_MOUSE_EVENT_TYPE, unsigned long, unsigned long)
    static bool MouseHandler(GGame* this, void* param_1, LH_MOUSE_EVENT_TYPE param_2, unsigned long param_3, unsigned long param_4);

    // Constructors

    // BW1W120 0054b240 BW1M100 104fda10 GGame::GGame(void)
    GGame();

    // Non-virtual methods

    // BW1W120 00510630 BW1M100 100c09f0 GGame::SetupDataTables(void)
    void SetupDataTables();
    // BW1W120 0054bf20 BW1M100 104eff40 GGame::ClearVariables(void)
    void ClearVariables();
    // BW1W120 0054c180 BW1M100 1003a410 GGame::GetCamera(void)
    GCamera* GetCamera();
    // BW1W120 0054c190 BW1M100 101c8360 GGame::StartGame(void)
    void StartGame();
    // BW1W120 0054c340 BW1M100 10079850 GGame::ProcessFrameInputs(void)
    void ProcessFrameInputs();
    // BW1W120 0054c3d0 BW1M100 1001e260 GGame::ProcessGameInputs(void)
    void ProcessGameInputs();
    // BW1W120 0054c420 BW1M100 10083f50 GGame::ProcessBufferedKeys(void)
    void ProcessBufferedKeys();
    // BW1W120 0054c4a0 BW1M100 10029760 GGame::LocalTimerSaysDoATurn(void)
    bool LocalTimerSaysDoATurn();
    // BW1W120 0054cc30 BW1M100 10029320 GGame::ProcessNetworkPackets(void)
    void ProcessNetworkPackets();
    // BW1W120 0054ced0 BW1M100 100dc070 GGame::DoNetworkStart(void)
    void DoNetworkStart();
    // BW1W120 0054cf20 BW1M100 100e23b0 GGame::Loop(void)
    void Loop();
    // BW1W120 0054d620 BW1M100 1001e2f0 GGame::ProcessOneGameTurn(void)
    void ProcessOneGameTurn();
    // BW1W120 0054d820 BW1M100 10083dd0 GGame::ProcessGameCode(void)
    void ProcessGameCode();
    // BW1W120 0054d850 BW1M100 10079980 GGame::ProcessGraphicsEngine(unsigned long, unsigned long)
    void ProcessGraphicsEngine(uint32_t param_1, uint32_t param_2);
    // BW1W120 0054da80 BW1M100 10033dd0 GGame::ProcessGraphicsEngine(void)
    void Process3dEngine();
    // BW1W120 0054e4f0 BW1M100 10083c70 GGame::StartTurn(void)
    void StartTurn();
    // BW1W120 0054e5c0 BW1M100 100665c0 GGame::ProcessTurn(void)
    void ProcessTurn();
    // BW1W120 0054e960 BW1M100 10070430 GGame::EndTurn(void)
    void EndTurn();
    // BW1W120 0054ef40 BW1M100 10514230 GGame::InitOneTimeOnly(void)
    uint32_t InitOneTimeOnly();
    // BW1W120 0054f3b0 BW1M100 101b9770 GGame::Init(void)
    bool Init();
    // BW1W120 0054f421 BW1M100 inlined GGame::InitInner(void)
    bool InitInner();
    // BW1W120 00550080 BW1M100 101c6850 GGame::UnfinishInitialisation(void)
    void UnfinishInitialisation();
    // BW1W120 00550110 BW1M100 10505500 GGame::FinishInitialisation(void)
    void FinishInitialisation();
    // BW1W120 00550170 BW1M100 inlined GGame::CreateMeshPack(void)
    void CreateMeshPack();
    // BW1W120 00550390 BW1M100 10427340 GGame::LoadFiles(void)
    bool LoadFiles();
    // BW1W120 00550410 BW1M100 1054a080 GGame::SetupPlayers(void)
    void SetupPlayers();
    // BW1W120 005507d0 BW1M100 inlined GGame::LoopThroughPlayers(void)
    void LoopThroughPlayers();
    // BW1W120 005507f0 BW1M100 10506220 GGame::Birthday(void)
    void Birthday();
    // BW1W120 00550820 BW1M100 inlined GGame::MyPlayerID(unsigned long)
    int MyPlayerID(unsigned long param_1);
    // BW1W120 005508a0 BW1M100 10064420 GGame::GetNextPlayer(GPlayer *)
    GPlayer* GetNextPlayer(GPlayer* param_1);
    // BW1W120 005508d0 BW1M100 100c0950 GGame::GetNextActivePlayer(GPlayer *)
    GPlayer* GetNextActivePlayer(GPlayer* param_1);
    // BW1W120 00550930 BW1M100 10095d40 GGame::GetNextActivePlayerAndNeutral(GPlayer *)
    GPlayer* GetNextActivePlayerAndNeutral(GPlayer* player);
    // BW1W120 00550980 BW1M100 1005c2a0 GGame::GetNextPlayerAndNeutral(GPlayer *)
    GPlayer* GetNextPlayerAndNeutral(GPlayer* player);
    // BW1W120 005509b0 BW1M100 100586e0 GGame::GetPlayer(unsigned long)
    GPlayer* GetPlayer(uint32_t param_1);
    // BW1W120 005509e0 BW1M100 1000be00 GGame::GetPlayerFromReal(unsigned long)
    GPlayer* GetPlayerFromReal(unsigned long param_1);
    // BW1W120 00550a10 BW1M100 inlined GGame::GetPlayerInterfaceFromReal(unsigned long)
    GInterface* GetPlayerInterfaceFromReal(unsigned long param_1);
    // BW1W120 00550a30 BW1M100 inlined GGame::GetNextPlayerWithNoCreature(GPlayer *)
    GPlayer* GetNextPlayerWithNoCreature(GPlayer* param_1);
    // BW1W120 00550a60 BW1M100 inlined GGame::GetPlayer(PLAYER_NAME)
    GPlayer* GetPlayer(PLAYER_NAME param_1);
    // BW1W120 00552620 BW1M100 1005cfb0 GGame::GetTribe(TRIBE_TYPE)
    GTribeInfo* GetTribe(TRIBE_TYPE type);
    // BW1W120 00552640 BW1M100 10073d30 GGame::AddPlayerSparkles(void)
    void AddPlayerSparkles();
    // BW1W120 00552bb0 BW1M100 10424170 GGame::ClearMap(void)
    void ClearMap();
    // BW1W120 00552f40 BW1M100 1056f520 GGame::StartPlaygroundGame(char *)
    void StartPlaygroundGame(char* map_path);
    // BW1W120 00552f80 BW1M100 100369c0 GGame::IsMultiplayerGame(void) const
    bool IsMultiplayerGame();
    // BW1W120 00552fa0 BW1M100 10423f90 GGame::FindTownWithID(unsigned long)
    Town* FindTownWithID(int id);
    // BW1W120 005538e0 BW1M100 10166f50 GGame::OnNewGame(void)
    void OnNewGame();
    // BW1W120 00555280 BW1M100 1008f570 GGame::Update3DInfluence(void)
    GPlayer* Update3DInfluence();
    // BW1W120 00555850 BW1M100 10051560 GGame::MyInterface(void)
    GInterface* MyInterface();
    // BW1W120 00555890 BW1M100 105996f0 GGame::SetLandBalance(unsigned long, float, GPlayer *)
    void SetLandBalance(int index, float balance, GPlayer* player);
    // BW1W120 00555990 BW1M100 inlined GGame::ResetAndStartPlaygroundGame(char *)
    void ResetAndStartPlaygroundGame(char* path);
    // BW1W120 0063c3d0 BW1M100 1001e1e0 GGame::ProcessOneSuperpacket(void)
    void ProcessOneSuperpacket();
    // BW1W120 0063f830 BW1M100 1009f340 GGame::ProcessBindableKeys(LH_KEY, LH_KEY, unsigned long)
    uint32_t ProcessBindableKeys(LH_KEY param_1, LH_KEY param_2, unsigned long param_3);
    // BW1W120 0063f940 BW1M100 1009f4b0 GGame::DoAction(unsigned long)
    uint32_t DoAction(unsigned long param_1);
};

#endif /* BW1_DECOMP_GAME_INCLUDED_H */
