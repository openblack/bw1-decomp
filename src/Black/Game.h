#ifndef BW1_DECOMP_GAME_INCLUDED_H
#define BW1_DECOMP_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */
#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <lhall/released/headers/LHTimer.h> /* For struct LHTimer */
#include <lionhead/lhlib/ver5.0/LHMouse.h> /* For enum LH_MOUSE_EVENT_TYPE */

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

    // win1.41 0054c330 mac 10496be0 GGame::Delete(void)
    virtual void Delete();
    // win1.41 0054bfd0 mac 103dcca0 GGame::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00550780 mac 10560930 GGame::Dump(void)
    virtual void Dump();
    // win1.41 0054b9a0 mac 1009d100 GGame::IsAvailable(void)
    virtual bool IsAvailable();
    // win1.41 0054b9c0 mac 10496160 GGame::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00554830 mac 10354cc0 GGame::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00554090 mac 104935a0 GGame::Save(GameOSFile &)
    virtual int Save(GameOSFile* file);
    // win1.41 0054b9b0 mac 10512c00 GGame::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00555080 mac 100c76b0 GGame::ResolveLoad(void)
    virtual void ResolveLoad();

    // Static methods

    // win1.41 0054cbd0 mac 101584c0 GGame::DoYesNoSkipTutorialRequestersIfNecessary(void)
    static void DoYesNoSkipTutorialRequestersIfNecessary();
    // win1.41 0054ff80 mac 100a0cb0 GGame::KeyHandler(unsigned short, LH_KEY, unsigned short, unsigned short, void *)
    static void KeyHandler(GGame* this, unsigned short param_1, LH_KEY param_2, unsigned short param_3, unsigned short param_4, void* param_5);
    // win1.41 0054ffe0 mac 100982b0 GGame::MouseHandler(void *, LH_MOUSE_EVENT_TYPE, unsigned long, unsigned long)
    static bool MouseHandler(GGame* this, void* param_1, LH_MOUSE_EVENT_TYPE param_2, unsigned long param_3, unsigned long param_4);

    // Constructors

    // win1.41 0054b240 mac 104fda10 GGame::GGame(void)
    GGame();

    // Non-virtual methods

    // win1.41 00510630 mac 100c09f0 GGame::SetupDataTables(void)
    void SetupDataTables();
    // win1.41 0054bf20 mac 104eff40 GGame::ClearVariables(void)
    void ClearVariables();
    // win1.41 0054c180 mac 1003a410 GGame::GetCamera(void)
    GCamera* GetCamera();
    // win1.41 0054c190 mac 101c8360 GGame::StartGame(void)
    void StartGame();
    // win1.41 0054c340 mac 10079850 GGame::ProcessFrameInputs(void)
    void ProcessFrameInputs();
    // win1.41 0054c3d0 mac 1001e260 GGame::ProcessGameInputs(void)
    void ProcessGameInputs();
    // win1.41 0054c420 mac 10083f50 GGame::ProcessBufferedKeys(void)
    void ProcessBufferedKeys();
    // win1.41 0054c4a0 mac 10029760 GGame::LocalTimerSaysDoATurn(void)
    bool LocalTimerSaysDoATurn();
    // win1.41 0054cc30 mac 10029320 GGame::ProcessNetworkPackets(void)
    void ProcessNetworkPackets();
    // win1.41 0054ced0 mac 100dc070 GGame::DoNetworkStart(void)
    void DoNetworkStart();
    // win1.41 0054cf20 mac 100e23b0 GGame::Loop(void)
    void Loop();
    // win1.41 0054d620 mac 1001e2f0 GGame::ProcessOneGameTurn(void)
    void ProcessOneGameTurn();
    // win1.41 0054d820 mac 10083dd0 GGame::ProcessGameCode(void)
    void ProcessGameCode();
    // win1.41 0054d850 mac 10079980 GGame::ProcessGraphicsEngine(unsigned long, unsigned long)
    void ProcessGraphicsEngine(uint32_t param_1, uint32_t param_2);
    // win1.41 0054da80 mac 10033dd0 GGame::ProcessGraphicsEngine(void)
    void Process3dEngine();
    // win1.41 0054e4f0 mac 10083c70 GGame::StartTurn(void)
    void StartTurn();
    // win1.41 0054e5c0 mac 100665c0 GGame::ProcessTurn(void)
    void ProcessTurn();
    // win1.41 0054e960 mac 10070430 GGame::EndTurn(void)
    void EndTurn();
    // win1.41 0054ef40 mac 10514230 GGame::InitOneTimeOnly(void)
    uint32_t InitOneTimeOnly();
    // win1.41 0054f3b0 mac 101b9770 GGame::Init(void)
    bool Init();
    // win1.41 0054f421 mac inlined GGame::InitInner(void)
    bool InitInner();
    // win1.41 00550080 mac 101c6850 GGame::UnfinishInitialisation(void)
    void UnfinishInitialisation();
    // win1.41 00550110 mac 10505500 GGame::FinishInitialisation(void)
    void FinishInitialisation();
    // win1.41 00550170 mac inlined GGame::CreateMeshPack(void)
    void CreateMeshPack();
    // win1.41 00550390 mac 10427340 GGame::LoadFiles(void)
    bool LoadFiles();
    // win1.41 00550410 mac 1054a080 GGame::SetupPlayers(void)
    void SetupPlayers();
    // win1.41 005507d0 mac inlined GGame::LoopThroughPlayers(void)
    void LoopThroughPlayers();
    // win1.41 005507f0 mac 10506220 GGame::Birthday(void)
    void Birthday();
    // win1.41 00550820 mac inlined GGame::MyPlayerID(unsigned long)
    int MyPlayerID(unsigned long param_1);
    // win1.41 005508a0 mac 10064420 GGame::GetNextPlayer(GPlayer *)
    GPlayer* GetNextPlayer(GPlayer* param_1);
    // win1.41 005508d0 mac 100c0950 GGame::GetNextActivePlayer(GPlayer *)
    GPlayer* GetNextActivePlayer(GPlayer* param_1);
    // win1.41 00550930 mac 10095d40 GGame::GetNextActivePlayerAndNeutral(GPlayer *)
    GPlayer* GetNextActivePlayerAndNeutral(GPlayer* player);
    // win1.41 00550980 mac 1005c2a0 GGame::GetNextPlayerAndNeutral(GPlayer *)
    GPlayer* GetNextPlayerAndNeutral(GPlayer* player);
    // win1.41 005509b0 mac 100586e0 GGame::GetPlayer(unsigned long)
    GPlayer* GetPlayer(uint32_t param_1);
    // win1.41 005509e0 mac 1000be00 GGame::GetPlayerFromReal(unsigned long)
    GPlayer* GetPlayerFromReal(unsigned long param_1);
    // win1.41 00550a10 mac inlined GGame::GetPlayerInterfaceFromReal(unsigned long)
    GInterface* GetPlayerInterfaceFromReal(unsigned long param_1);
    // win1.41 00550a30 mac inlined GGame::GetNextPlayerWithNoCreature(GPlayer *)
    GPlayer* GetNextPlayerWithNoCreature(GPlayer* param_1);
    // win1.41 00550a60 mac inlined GGame::GetPlayer(PLAYER_NAME)
    GPlayer* GetPlayer(PLAYER_NAME param_1);
    // win1.41 00552620 mac 1005cfb0 GGame::GetTribe(TRIBE_TYPE)
    GTribeInfo* GetTribe(TRIBE_TYPE type);
    // win1.41 00552640 mac 10073d30 GGame::AddPlayerSparkles(void)
    void AddPlayerSparkles();
    // win1.41 00552bb0 mac 10424170 GGame::ClearMap(void)
    void ClearMap();
    // win1.41 00552f40 mac 1056f520 GGame::StartPlaygroundGame(char *)
    void StartPlaygroundGame(char* map_path);
    // win1.41 00552f80 mac 100369c0 GGame::IsMultiplayerGame(void) const
    bool IsMultiplayerGame();
    // win1.41 00552fa0 mac 10423f90 GGame::FindTownWithID(unsigned long)
    Town* FindTownWithID(int id);
    // win1.41 005538e0 mac 10166f50 GGame::OnNewGame(void)
    void OnNewGame();
    // win1.41 00555280 mac 1008f570 GGame::Update3DInfluence(void)
    GPlayer* Update3DInfluence();
    // win1.41 00555850 mac 10051560 GGame::MyInterface(void)
    GInterface* MyInterface();
    // win1.41 00555890 mac 105996f0 GGame::SetLandBalance(unsigned long, float, GPlayer *)
    void SetLandBalance(int index, float balance, GPlayer* player);
    // win1.41 00555990 mac inlined GGame::ResetAndStartPlaygroundGame(char *)
    void ResetAndStartPlaygroundGame(char* path);
    // win1.41 0063c3d0 mac 1001e1e0 GGame::ProcessOneSuperpacket(void)
    void ProcessOneSuperpacket();
    // win1.41 0063f830 mac 1009f340 GGame::ProcessBindableKeys(LH_KEY, LH_KEY, unsigned long)
    uint32_t ProcessBindableKeys(LH_KEY param_1, LH_KEY param_2, unsigned long param_3);
    // win1.41 0063f940 mac 1009f4b0 GGame::DoAction(unsigned long)
    uint32_t DoAction(unsigned long param_1);
};

#endif /* BW1_DECOMP_GAME_INCLUDED_H */
