#ifndef BW1_DECOMP_SETUP_INCLUDED_H
#define BW1_DECOMP_SETUP_INCLUDED_H

#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHScript.h> /* For struct LHScriptCommandX, struct LHScriptPramX */

#include <re_common.h> /* For bool32_t */

#include "Script.h" /* For enum SCRIPT_FEATURE_COMMANDS */

// Forward Declares

class GameThing;
class GPlayer;
class LHOSFile;
struct MapCell;
struct MapCoords;
class Object;
class Town;

#define MAP_VERSION_FLOCK_DISTANCE  2.1f
#define SCRIPT_OVERRIDE_NONE        (-1)
#define SCRIPT_SAVE_FLOAT_SCALE     1000.0f
#define SCRIPT_CREATURE_PEN_PLANNED 0x1

#define SCRIPT_TEXT_BUFFER_LENGTH      2000
#define SCRIPT_TEXT_NON_BREAKING_SPACE 0xf8fe

enum SCRIPT_GAME_MESSAGE
{
	SCRIPT_GAME_MESSAGE_TEXT = 0x0,
	SCRIPT_GAME_MESSAGE_ADVISOR = 0x2,
	SCRIPT_GAME_MESSAGE_END_OF_GAME_1 = 0x3,
	SCRIPT_GAME_MESSAGE_END_OF_GAME_2 = 0x4,
};

class GSetup
{
public:
	// BW1W120 00c20d50
	static float MapVersion;
	// BW1W120 00c20d54
	static int ScriptPlayerOverride;
	// BW1W120 00c20d58
	static int ScriptTribeOverride;
	// BW1W120 00c20d5c
	static bool32_t CreateMultiplayerCreatures;
	// BW1W120 00c20d60
	static LHScriptCommandX<char> MapCommands[];
	// BW1W120 00c20f00
	static LHScriptCommandX<char> FeatureMapCommands[];
	// BW1W120 00c215a0
	static LHScriptCommandX<wchar_t> FeatureTextCommands[];
	// BW1W120 00d01968
	static int MPDebugLoadState;
	// BW1W120 00d99380
	static Object* LastDebugObject;
	// BW1W120 00d99384
	static GameThing* LastObject;
	// BW1W120 00d99388
	static char CommandText[];
	// BW1W120 00d9957c
	static float LoadedMapVersion;
	// BW1W120 00d99648
	static char MapFilename[];
	// BW1W120 00d99724
	static const MapCoords* ScriptPosOffset;

	// BW1W120 inlined BW1M119 01513c70
	static float GetSaveFloat(long value) { return (float)value / SCRIPT_SAVE_FLOAT_SCALE; }

	// BW1W120 00714d10 BW1M119 01513e60
	static LH_RETURN __cdecl MapCommandProcess(long command, LHScriptPramX<char>* params);
	// BW1W120 00715080 BW1M119 01513de0
	bool32_t LoadMapScript();
	// BW1W120 007150b0 BW1M119 null
	bool32_t LoadEmptyMapScript();
	// BW1W120 007150e0 BW1M119 inlined
	static void SaveVersion(LHOSFile& file);
	// BW1W120 00715130 BW1M119 01513d60
	static char* GetCommandAsText(SCRIPT_FEATURE_COMMANDS command);
	// BW1W120 00715150 BW1M119 01513cd0
	static LH_RETURN ProcessOneMapLine(char* line);
	// BW1W120 00715180 BW1M119 01510c00
	static LH_RETURN __cdecl FeatureMapCommandProcess(long command, LHScriptPramX<char>* params);
	// BW1W120 007180b0 BW1M119 01510900
	static LH_RETURN LoadMapFeatures(char* file_name);
	// BW1W120 00718250 BW1M119 01510830
	static MapCoords GetScriptPos(char* text);
	// BW1W120 007182a0 BW1M119 null
	static int GetScriptTribe(int tribe);
	// BW1W120 007182b0 BW1M119 null
	static GPlayer* GetScriptPlayer(int player_number);
	// BW1W120 007182e0 BW1M119 null
	static LH_RETURN LoadMapFeaturesAt(const MapCoords* offset, int player_number, int tribe, char* file_name);
	// BW1W120 00718330 BW1M119 0150fe60
	static bool32_t SaveAllMap(char* file_name);
	// BW1W120 00718870 BW1M119 0150fa70
	static void SaveMapCell(LHOSFile& file, MapCell* cell, unsigned long& num_features, unsigned long& num_pots,
	                        unsigned long& num_mobile_objects, unsigned long& num_trees, unsigned long& num_big_forests,
	                        const MapCoords& coords);
	// BW1W120 00718ba0 BW1M119 null
	static LH_RETURN __cdecl BrushSizeCommandProcess(long command, LHScriptPramX<char>* params);
	// BW1W120 00718c10 BW1M119 null
	static bool32_t LoadBrushSize(char* file_name);
	// BW1W120 00718c40 BW1M119 null
	static bool32_t SaveMapRegion(char* file_name, const MapCoords& corner_a, const MapCoords& corner_b);
	// BW1W120 007190b0 BW1M119 null
	static bool32_t LoadMapFeaturesForPlayer(char* file_name, const MapCoords* offset, GPlayer* player);
	// BW1W120 00719110 BW1M119 null
	static bool32_t SaveTownFile(char* file_name, Town* town);
	// BW1W120 00719280 BW1M119 0150f510
	static bool32_t LoadTextScripts();
	// BW1W120 00719610 BW1M119 0150f4a0
	static uint32_t WriteToFile(void* thing, LHOSFile& file, void* data, unsigned long size);
};

#endif /* BW1_DECOMP_SETUP_INCLUDED_H */
