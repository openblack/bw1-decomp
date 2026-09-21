#ifndef BW1_DECOMP_GAME_INCLUDED_H
#define BW1_DECOMP_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */
#include <stdio.h>
#include <time.h>
#include <windows.h>

#include <chlasm/Enum.h>                   /* For enum TRIBE_TYPE */
#include <chlasm/LHKeyBoard.h>             /* For enum LH_KEY */
#include <Lionhead/LHLib/ver5.0/LHTimer.h> /* For LHTimer */
#include <Lionhead/LHLib/ver5.0/LHMouse.h> /* For enum LH_MOUSE_EVENT_TYPE */

#include "BindableAction.h"   /* For struct CMouse */
#include "CreatureDatabase.h" /* For struct CreatureDatabase */
#include "Data.h"             /* For struct GData */
#include "GameThing.h"        /* For struct GameThing */
#include "GlobalGameLists.h"  /* For struct GlobalGameLists */
#include "KeyBuffer.h"        /* For struct GKeyBuffer */
#include "Landscape.h"        /* For struct GLandscape */
#include "Language.h"         /* For struct GLanguage */
#include "Map.h"              /* For struct GMap */
#include "MapCoords.h"        /* For struct MapCoords */
#include "Network.h"          /* For struct GNetwork */
#include "Packet.h"
#include "PathCreator.h"         /* For struct PathCreator */
#include "Player.h"              /* For enum PLAYER_NAME, struct GPlayer */
#include "PlayerInfo.h"          /* For struct GPlayerInfo */
#include "ScriptCreatureCurse.h" /* For struct ScriptCreatureCurse */
#include "StatsDatabase.h"       /* For struct StatsDatabase */
#include "Setup.h"
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
class HelpEditor;
struct CreatureDanceLineInput;
class HelpSystem;
struct LHFilePath;
struct Settings;
struct Temple;
class Town;
class LHVideoPlayer;
class LHMail;
class FallingSpell;

class GGame : public GameThing
{
public:
	// BW1W120 00d0195c
	static GGame* g_game;
	// Video lifecycle storage. Descriptive identifiers; storage remains extracted.
	static int           VideoFinished;      // 00d0198c
	static int           VideoFramesReady;   // 00d01988
	static int           VideoPreviousPause; // 00d0199c
	static FallingSpell* FallingSpellVideo;  // 00cd3b10
	// Single-reader globals: original names/scope unknown, provisional Game association.
	static float VideoLetterboxScale; // 00bec16c, initial 1.0f
	static char  VideoStatistics[];   // 00cd3618, extent unknown
	// TODO: Original static member name is unrecovered.
	// BW1W120 00d019a9
	static bool ScriptRebootRequested;
	// TODO: Original names are unrecovered; shared with tutorial and packet processing.
	// BW1W120 00d019a4
	static uint32_t TutorialState;
	// BW1W120 00d019ac
	static uint32_t StartTime;
	// BW1W120 00d019b0
	static uint32_t MemoryState;
	// TODO: Descriptive name and provisional scope; no writer found in either target.
	// BW1W120 00d0197c
	static uint32_t RepairMissingMothers;
	// TODO: Descriptive names/scope for game lifecycle globals, confirmed by constructor and teardown.
	// BW1W120 00cd3af8
	static CRITICAL_SECTION VideoTimerSection;
	// BW1W120 00d01834
	static bool SavingMap;
	// BW1W120 00bec1f4
	static bool SystemExit;
	// Descriptive shared scheduler names; original spellings are unrecovered.
	// BW1W120 00d0143c
	static int PacketTimeHistory[10];
	// BW1W120 00d01464
	static unsigned long IncomingQueueHistory[100];
	// BW1W120 00d01978
	static uint32_t NetworkTurnsThisFrame;
	// BW1W120 00bec280
	static bool RenderLoopEnabled;
	// Descriptive name for the Windows-only line-input object.
	// BW1W120 00d01964
	static CreatureDanceLineInput* CreatureDanceLineIn;
	// Descriptive shared lifecycle names; original spellings are unrecovered.
	// BW1W120 00d01970
	static LHMail* Mail;
	// BW1W120 00d01974
	static bool InternetAvailable;
	// TODO: Original names are unrecovered; initialization and loading-screen state.
	// BW1W120 00d019c4
	static bool Initialising;
	// BW1W120 00d01980
	static int LoadingFrameEnabled;
	// BW1W120 00d0196c
	static int FootballEnabled;
	// Extracted filename storage; full extent not established.
	// BW1W120 00d01838
	static char LoadGameFilename[];
	// Loading-screen video; descriptive name and provisional scope.
	// BW1W120 00d318d4
	static LHVideoPlayer* TipVideo;
	// Extracted storage; full array extent is not established.
	// BW1W120 00bea9a0
	static uint8_t RealPlayerMap[];
	// BW1W120 008df608
	static char* const NetworkApplication;
	// BW1W120 008df60c
	static char* const NetworkChannel;
	// BW1W120 008df610
	static char* const NetworkPassword;

	uint32_t         field_0x14;
	GPlayer          players[0x8];
	uint8_t          field_0x5318[0x660];
	uint8_t          field_0x5978;
	uint8_t          field_0x5979;
	uint8_t          field_0x597a[2];
	StatsDatabase    stats_database;    /* 0x597c */
	CreatureDatabase creature_database; /* 0x598c */
	bool             field_0x599c;
	uint8_t          field_0x599d;
	uint8_t          field_0x599e;
	uint8_t          field_0x599f;
#ifdef VERSION_BW1W120
	uint32_t field_0x59a0;
#endif
	uint32_t               field_0x59a4;
	uint32_t               field_0x59a8;
	time_t                 field_0x59ac;
	float                  field_0x59b0;
	Temple*                temple; /* 0x59b4 */
	GMap                   map;
	int32_t                LandNumber; /* 0x205a08 */
	int                    field_0x205a0c;
	int                    field_0x205a10;
	int                    field_0x205a14;
	uint32_t               field_0x205a18;
	int                    field_0x205a1c;
	GLandscape             landscape; /* 0x205a20 */
	uint32_t               field_0x205a28;
	uint32_t               field_0x205a2c;
	GData                  data;  /* 0x205a30 */
	GSetup                 setup; /* 0x205a58; empty utility member occupies one byte. */
	uint8_t                PlayerIndex;
	uint8_t                field_0x205a5a;
	uint8_t                NeutralPlayerIndex;
	uint8_t                field_0x205a5c;
	uint8_t                field_0x205a5d;
	uint8_t                field_0x205a5e;
	uint8_t                field_0x205a5f;
	GPacket                Packet;
	GNetwork               network; /* 0x205b70 */
	uint32_t               field_0x205ba0;
	GlobalGameLists        GameLists; /* 0x205ba4 */
	uint32_t               field_0x205d34;
	int                    Fps0x205d38;
	uint32_t               field_0x205d3c;
	int                    field_0x205d40;
	uint32_t               field_0x205d44;
	int                    field_0x205d48;
	uint32_t               field_0x205d4c;
	uint32_t               field_0x205d50;
	uint32_t               field_0x205d54;
	int                    field_0x205d58;
	uint32_t               field_0x205d5c;
	uint32_t               field_0x205d60;
	float                  field_0x205d64;
	LHTimer                timer;
	uint32_t               field_0x205e78;
	uint8_t                field_0x205e7c[0x10];
	GTerrainMap            terrain_map; /* 0x205e8c */
	GPlayerInfo            player_info; /* 0x24ffbc */
	GLanguage              language;    /* 0x25004c */
	GSoundMap*             SoundMap;    /* 0x250058 */
	HelpSystem*            help_system;
	HelpProfile*           help_profile; /* 0x250060 */
	GestureSystemDataList* gesture_system_data_list;
	GestureSystemData*     gesture_system_data;
	GestureSystem*         gesture_system;
	GestureSystemResult*   gesture_system_result; /* 0x250070 */
	Settings*              settings;
	float                  TownInfluenceMultiplier;
	float                  PlayerInfluenceMultiplier;
	uint32_t               field_0x250080;
	ScriptCreatureCurse    script_creature_curse;
	GScript*               script; /* 0x250090 */
	HelpEditor*            field_0x250094;
	uint32_t               field_0x250098;
	MapCoords              StartCameraCoords;
	uint8_t                field_0x2500a8[0xc8];
	char*                  field_0x250170;
	uint8_t                field_0x250174;
	Config*                config;
	uint32_t               Enum0x25017c; // TODO: Original enum identity is unrecovered; serialized as four bytes.
	GAME_MODE              GameMode;     /* 0x250180 */
	uint32_t               field_0x250184;
	LHVideoPlayer*         VideoPlayer;
	int                    field_0x25018c;
	int                    field_0x250190;
	float                  field_0x250194;
	uint8_t                field_0x250198[0x10c];
	uint32_t               field_0x2502a4; /* Set before an automatic save. */
	GKeyBuffer             key_buffer;     /* 0x2502a8 */
	CMouse                 Mouse;          /* 0x2502b8 */
	uint32_t               field_0x2502bc;
	GCamera*               camera; /* 0x2502c0 */
	uint32_t               field_0x2502c4;
	uint8_t                field_0x2502c8;
	uint8_t                field_0x2502c9[3];
	uint8_t                field_0x2502cc;
	uint8_t                field_0x2502cd;
	uint8_t                field_0x2502ce;
	uint8_t                field_0x2502cf;
	FILE*                  field_0x2502d0;
	FILE*                  field_0x2502d4;
	FILE*                  field_0x2502d8;
	FILE*                  field_0x2502dc;
	FILE*                  field_0x2502e0;
	FILE*                  field_0x2502e4;
	uint32_t               field_0x2502e8;
	uint32_t               field_0x2502ec;
	uint8_t                field_0x2502f0[0x10];
	ControlMap*            control_map; /* 0x250300 */
	DialogBoxOptions*      dialog_box_options;
	DialogBoxKeyBinding*   dialog_box_key_binding;
	DialogBoxSaveMessage*  dialog_box_save_message;
	PathCreator            path_creator; /* 0x250310 */
	uint32_t               field_0x250530;
	GClimate*              climate;
	uint32_t               field_0x250538;
	uint32_t               field_0x25053c;
	int                    field_0x250540;

	// Override methods

	// BW1W120 0054c330 BW1M119 010e7580
	virtual void Delete();
	// BW1W120 0054bfd0 BW1M119 013c9a40
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00550780 BW1M119 010c8970
	virtual void Dump();
	// BW1W120 0054b9a0 BW1M119 0109ee50
	virtual bool32_t IsAvailable();
	// BW1W120 0054b9c0 BW1M119 0116e6c0
	virtual char* GetDebugText();
	// BW1W120 00554830 BW1M119 0154ca00
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00554090 BW1M119 01366f90
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0054b9b0 BW1M119 01357d50
	virtual uint32_t GetSaveType();
	// BW1W120 00555080 BW1M119 01367ec0
	virtual void ResolveLoad();

	// Static methods

	// BW1W120 0054cbd0 BW1M119 010cca10
	static void DoYesNoSkipTutorialRequestersIfNecessary();

	// Constructors

	// BW1W120 0054b240 BW1M119 010ccb00
	GGame();
	// (scalar deleting destructor)
	// Allocated resources are owned by ToBeDeleted; only embedded members are destroyed here.
	// BW1W120 0054bba0
	virtual ~GGame() {}

	// Non-virtual methods

	// BW1W120 00510630 BW1M119 010c3ef0
	void SetupDataTables();
	// BW1W120 0054bf20 BW1M119 0111c2b0
	void ClearVariables();
	// BW1W120 0054ec80 BW1M119 013bd6a0
	// Both targets return 1 in the full result register; original Boolean spelling is unknown.
	bool32_t Close();
	// BW1W120 005557a0 BW1M119 010cc4c0
	void ResetState();
	// BW1W120 0054c180 BW1M119 0103cd90
	GCamera* GetCamera();
	// BW1W120 0054c190 BW1M119 010e7270
	void StartGame();
	// BW1W120 0054c340 BW1M119 0107be10
	void ProcessFrameInputs();
	// BW1W120 0054c3d0 BW1M119 01020dd0
	void ProcessGameInputs();
	// BW1W120 0054c420 BW1M119 01086330
	void ProcessBufferedKeys();
	// BW1W120 0054c4a0 BW1M119 0102c2e0
	bool32_t LocalTimerSaysDoATurn();
	// BW1W120 0054cc30 BW1M119 0102be90
	void ProcessNetworkPackets();
	// BW1W120 0054ced0 BW1M119 0149e1d0
	void DoNetworkStart();
	// BW1W120 0054cf20 BW1M119 01106610
	void Loop();
	// BW1W120 0054d800 BW1M119 010e5f60
	void FlipScreen();
	// Original name unrecovered; increments rendered-frame count.
	// BW1W120 0054d7f0
	void fn_0054D7F0();
	// Original name unrecovered; selects online game mode.
	// BW1W120 00555400
	void fn_00555400();
	// Original name unrecovered; flushes packed network data.
	// BW1W120 005525e0
	void fn_005525E0();
	// BW1W120 0054d620 BW1M119 01020e60
	void ProcessOneGameTurn();
	// BW1W120 0054d820 BW1M119 010861b0
	void ProcessGameCode();
	// BW1W120 0054d850 BW1M119 0107bf40
	void ProcessGraphicsEngine(uint32_t param_1, uint32_t param_2);
	// BW1W120 0054da80 BW1M119 01036750
	void Process3dEngine();
	// BW1W120 0054d8d0 BW1M119 0117c3a0
	void FinishedVideo();
	// BW1W120 005533b0 BW1M119 01016c50
	void Draw();
	void fn_00553A60(); // 00553a60, original helper name unknown
	// BW1W120 00553a10 BW1M119 0159ec40
	void EndFallingSpellVideo();
	// BW1W120 0054e4f0 BW1M119 01086050
	void StartTurn();
	// BW1W120 0054e5c0 BW1M119 01068d80
	void ProcessTurn();
	// BW1W120 0054e960 BW1M119 01072bb0
	void EndTurn();
	// BW1W120 0054ef40 BW1M119 0117b9a0
	uint32_t InitOneTimeOnly();
	// BW1W120 0054f3b0 BW1M119 014e1990
	// 0054f421 is a continuation in this function's exception frame, not another entry.
	bool32_t Init();
	// BW1W120 005550f0 BW1M119 013ecea0
	void ReadRegistrySettings();
	// BW1W120 00555a80 BW1M119 013ca140
	void SetUnusedCitadelComputerPlayers();
	// BW1W120 00550ba0 BW1M119 0142e3c0
	void SetPacket(PACKET_TYPE type, short x, short z, long value);
	// BW1W120 0054ff80 BW1M119 010a2a00
	static void KeyHandler(unsigned short param_1, LH_KEY param_2, unsigned short param_3, unsigned short param_4,
	                       void* param_5);
	// BW1W120 0054ffe0 BW1M119 0109a1f0
	static uint32_t MouseHandler(void* param_1, LH_MOUSE_EVENT_TYPE param_2, unsigned long param_3,
	                             unsigned long param_4);
	// BW1W120 00550080 BW1M119 0149ac40
	void UnfinishInitialisation();
	// BW1W120 00550110 BW1M119 010d8f80
	void FinishInitialisation();
	// BW1W120 00550170 BW1M119 inlined
	static void CreateMeshPack();
	// BW1W120 00550390 BW1M119 01509420
	bool32_t LoadFiles();
	// BW1W120 00550410 BW1M119 01567850
	void SetupPlayers();
	// BW1W120 005507d0 BW1M119 inlined
	void LoopThroughPlayers();
	// BW1W120 005507f0 BW1M119 010c8560
	void Birthday();
	// BW1W120 00550820 BW1M119 inlined
	int MyPlayerID(unsigned long param_1);
	// BW1W120 005508a0 BW1M119 01066be0
	GPlayer* GetNextPlayer(GPlayer* player);
	// BW1W120 005508d0 BW1M119 014ffa10
	GPlayer* GetNextActivePlayer(GPlayer* player);
	// BW1W120 00550930 BW1M119 01097c90
	GPlayer* GetNextActivePlayerAndNeutral(GPlayer* player);
	// BW1W120 00550980 BW1M119 0105ef60
	GPlayer* GetNextPlayerAndNeutral(GPlayer* player);
	// BW1W120 005509b0 BW1M119 0105b3b0
	GPlayer* GetPlayer(uint32_t player_index);
	// BW1W120 005509e0 BW1M119 0100e8b0
	GPlayer* GetPlayerFromReal(unsigned long param_1);
	// BW1W120 00550a10 BW1M119 inlined
	GInterface* GetPlayerInterfaceFromReal(unsigned long param_1);
	// BW1W120 00550a30 BW1M119 inlined
	// TODO: Windows takes no argument; recover the original Mac signature before implementing.
	GPlayer* GetNextPlayerWithNoCreature(GPlayer* param_1);
	// BW1W120 00550a60 BW1M119 inlined
	GPlayer* GetPlayer(PLAYER_NAME player_name);
	// BW1W120 00550dd0 BW1M119 0157b2a0
	void SetPacket(PACKET_TYPE type);
	// BW1W120 00551690 BW1M119 010086d0
	void SendPacketCompressed(PACKET_TYPE type, SETPACKET_FUNCTION_NUMBER function_number);
	// BW1W120 00552620 BW1M119 0105fc60
	GTribeInfo* GetTribe(TRIBE_TYPE type);
	// BW1W120 00552640 BW1M119 010764a0
	void AddPlayerSparkles();
	// BW1W120 00552bb0 BW1M119 01172c70
	void ClearMap();
	// BW1W120 00552f40 BW1M119 01115890
	void StartPlaygroundGame(char* map_path);
	// BW1W120 00552f80 BW1M119 01039330
	bool32_t IsMultiplayerGame() const;
	// BW1W120 00552fa0 BW1M119 010adff0
	Town* FindTownWithID(unsigned long id);
	// BW1W120 005538e0 BW1M119 010e8430
	void OnNewGame();
	// BW1W120 005537f0 BW1M119 01367db0
	void SetSpeed(float speed);
	// BW1W120 00555280 BW1M119 01091800
	void Update3DInfluence();
	// BW1W120 00555270 BW1M119 0151aec0
	void ForceNeedUpdateInfluence();
	// BW1W120 00555850 BW1M119 01053ef0
	GInterface* MyInterface();
	// BW1W120 00555880 BW1M119 01062630
	GInterfaceStatus* MyInterfaceStatus();
	// BW1W120 00555890 BW1M119 0117d380
	void SetLandBalance(int index, float balance, GPlayer* player);
	// BW1W120 00555990 BW1M119 inlined
	void ResetAndStartPlaygroundGame(char* path);
	// BW1W120 0063c3d0 BW1M119 01020d50
	void ProcessOneSuperpacket();
	// BW1W120 0063ef20 BW1M119 013e32d0
	void ProcessKey(LH_KEY key, unsigned short modifier);
	// BW1W120 0063f710 BW1M119 0102af40
	void ProcessMapKeys();
	// TODO: Original name unknown; callers supply this, callee selects LHInetWeather singleton.
	// BW1W120 005557d0
	void fn_005557D0();
	// BW1W120 0063f830 BW1M119 010a1090
	uint32_t ProcessBindableKeys(LH_KEY param_1, LH_KEY param_2, unsigned long param_3);
	// BW1W120 0063f940 BW1M119 010a1200
	uint32_t DoAction(unsigned long param_1);
};

#endif /* BW1_DECOMP_GAME_INCLUDED_H */
