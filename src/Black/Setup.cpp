#include "MapCellConstants.h"          /* For MetresPerMapCell */
#include "CreatureAttitudeConstants.h" /* For AttitudeFeedbackDecay */
#include "GameTimeConstants.h"         /* For SecondsPerYear */
#include "Town.h"
#include "Setup.h"
#include "SetupCommands.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */

#include <math.h>   /* For fabsf */
#include <stdio.h>  /* For sprintf, sscanf */
#include <string.h> /* For strcpy, strlen */
#include <windows.h>

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DRender.h> /* For RenderLoadingFrame */
#include <Lionhead/LH3DLib/development/LH3DStorm.h>  /* For LH3DStorm::CreateStorm */
#include <Lionhead/LH3DLib/development/LH3DText.h>   /* For CHAR2WCHAR */
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For class LHReleasedOSFile */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>          /* For LHSys::TheSystem */
#include <Lionhead/LHLib/ver5.0/LHWin.h>             /* For LHKeyToAsciiTable, operator new */

#include "Abode.h"
#include "AbodeInfo.h"
#include "Animal.h"
#include "AnimalInfo.h"
#include "AnimatedStatic.h"
#include "AnimatedStaticInfo.h"
#include "Arena.h"
#include "Artifact.h"
#include "BigForest.h"
#include "BigForestInfo.h"
#include "Bonfire.h"
#include "Citadel.h"
#include "CitadelHeart.h"
#include "CitadelHeartInfo.h"
#include "Climate.h"
#include "ClimateInfo.h"
#include "PlayerComputer.h"
#include "Config.h"
#include "ContainerInfo.h"
#include "Creature.h"
#include "CreatureInfo.h"
#include "CreaturePen.h"
#include "CreaturePenInfo.h"
#include "DeadTree.h"
#include "DialogBoxBase.h"
#include "EndGameBox.h"
#include "Feature.h"
#include "FeatureInfo.h"
#include "Field.h"
#include "FieldTypeInfo.h"
#include "FireFly.h"
#include "FishFarm.h"
#include "FishFarmInfo.h"
#include "Flock.h"
#include "Flowers.h"
#include "FlowersInfo.h"
#include "Footpath.h"
#include "FootpathLink.h"
#include "Forest.h"
#include "FrontEnd.h"
#include "Game.h"
#include "GameArea.h"
#include "GameInfo.h"
#include "GameVideo.h"
#include "Global.h"
#include "MapCoordsMeters.h"
#include "HelpText.h"
#include "Influence.h"
#include "LandBalance.h"
#include "Landscape.h"
#include "MagicInfo.h"
#include "Map.h"
#include "Mist.h"
#include "MobileObject.h"
#include "MobileObjectInfo.h"
#include "MobileStatic.h"
#include "MobileStaticInfo.h"
#include "OneOffSpellSeed.h"
#include "PlannedAbode.h"
#include "PlannedCitadelPart.h"
#include "PlannedCreaturePen.h"
#include "PlannedFeature.h"
#include "PlannedTownCentre.h"
#include "PlannedTownCitadelHeart.h"
#include "Player.h"
#include "Pot.h"
#include "PotInfo.h"
#include "Rand.h"
#include "RandomBuildingPlacement.h"
#include "Scaffold.h"
#include "ScaffoldInfo.h"
#include "Script.h"
#include "SpellDispenser.h"
#include "StartGameBox.h"
#include "SpellSeedInfo.h"
#include "Stream.h"
#include "StreetLantern.h"
#include "StreetLight.h"
#include "TotemStatue.h"
#include "TownCentre.h"
#include "TownDesire.h"
#include "TownInfo.h"
#include "Tree.h"
#include "TreeInfo.h"
#include "TribeInfo.h"
#include "Villager.h"
#include "VillagerInfo.h"
#include "Waterfall.h"
#include "WayPoint.h"
#include "WorshipSite.h"
#include "WorshipSiteInfo.h"
#include "alexmfc.h"
#ifdef VERSION_BW1WCI
#include "CreatureIslesBuilding.h"
#include "CreatureIslesBuildingInfo.h"
#include "Settings.h"
#endif

#if defined(VERSION_BW1W100)
#define CONFIG_LINE_SHIFT   4
#define TOWN_LINE_SHIFT     4
#define PLANNED_LINE_SHIFT  4
#define STREAM_LINE_SHIFT   4
#define ARTIFACT_LINE_SHIFT 4
#define TOWN_ID_LINE_SHIFT  4
#elif defined(VERSION_BW1W110)
#define CONFIG_LINE_SHIFT   0
#define TOWN_LINE_SHIFT     0
#define PLANNED_LINE_SHIFT  0
#define STREAM_LINE_SHIFT   0
#define ARTIFACT_LINE_SHIFT 0
#define TOWN_ID_LINE_SHIFT  0
#elif defined(VERSION_BW1WCI)
#define CONFIG_LINE_SHIFT   2
#define TOWN_LINE_SHIFT     23
#define PLANNED_LINE_SHIFT  23
#define STREAM_LINE_SHIFT   31
#define ARTIFACT_LINE_SHIFT 40
#define TOWN_ID_LINE_SHIFT  50
#else
#define CONFIG_LINE_SHIFT   0
#define TOWN_LINE_SHIFT     0
#define PLANNED_LINE_SHIFT  4
#define STREAM_LINE_SHIFT   4
#define ARTIFACT_LINE_SHIFT 4
#define TOWN_ID_LINE_SHIFT  4
#endif

#define NO_OFFSET (*(const MapCoords*)NULL)

#define MPM_3P_1_CAPPED_TOWN_ID  3
#define MPM_3P_1_TOWN_BELIEF_CAP 2.0f

#define FOOTPATH_LINK_EXTENSION_LENGTH 4

inline MapCoords::MapCoords(float meters_x, float meters_z)
{
	SetMetersX(meters_x);
	SetMetersZ(meters_z);
	SetAltitude(0.0f);
}

uint16_t   GameThing::GlobalSaveCount;
char       GSetup::MapFilename[200];
char       GLandscape::Filename[200];
float      GSetup::LoadedMapVersion;
char       GSetup::CommandText[500];
GameThing* GSetup::LastObject;
Object*    GSetup::LastDebugObject;
// BW1W120 00d99720
int              SetupUnused = 0;
const MapCoords* GSetup::ScriptPosOffset = NULL;

float    GSetup::MapVersion = 2.3f;
int      GSetup::ScriptPlayerOverride = SCRIPT_OVERRIDE_NONE;
int      GSetup::ScriptTribeOverride = SCRIPT_OVERRIDE_NONE;
bool32_t GSetup::CreateMultiplayerCreatures = true;

LHScriptCommandX<char> GSetup::MapCommands[] = {
	{"SET_NO_PLAYERS", "N         "},       //
	{"LOAD_TRIBE_DANCE", "AN        "},     //
	{"SET_DATE", "NNN       "},             //
	{"SET_TIME", "NNN       "},             //
	{"SET_TURNS_PER_YEAR", "N         "},   //
	{"SET_GAME_TICK_TIME", "N         "},   //
	{"LOAD_FEATURE_SCRIPT", "A         "},  //
	{"PAUSE_GAME", "          "},           //
	{"CREATE_CREATURE", "NNNN      "},      //
	{"OUTPUT_VILLAGERS", "          "},     //
	{"OUTPUT_TOWN", "          "},          //
	{"OUTPUT_CREATURES", "          "},     //
	{"OUTPUT_COLLIDE", "          "},       //
	{"OUTPUT_ALLOC", "          "},         //
	{"SAVE_FOR_NET_DEBUG", "NN        "},   //
	{"LOAD_FOR_NET_DEBUG", "N         "},   //
	{"LOAD_LANDSCAPE", "A         "},       //
	{"LOAD_GAME_SCRIPT", "A         "},     //
	{"LOAD_RAW_GAME_SCRIPT", "A         "}, //
	{"LOAD_LANGUAGE", "          "},        //
	{"LOAD_CHALLENGES", "A         "},      //
	{"OUTPUT_RAND", "          "},          //
	{"LOAD_OLD_CREATURE", "          "},    //
	{"CONFIG", "          "},               //
	{"KEYCONFIG", "A         "},            //
#ifdef VERSION_BW1WCI
	{"SET_STARTUP", "A         "}, //
#endif
	{NULL, ""}, //
};

LHScriptCommandX<char> GSetup::FeatureMapCommands[] = {
	{"CREATE_MIST", {'A', 'F', 'N', 'F', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                   //
	{"CREATE_PATH", {'N', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                   //
	{"CREATE_TOWN", {'N', 'A', 'L', 'N', 'L', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                   //
	{"SET_TOWN_BELIEF", {'N', 'L', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},               //
	{"SET_TOWN_BELIEF_CAP", {'N', 'L', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},           //
	{"SET_TOWN_UNINHABITABLE", {'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},        //
	{"SET_TOWN_CONGREGATION_POS", {'N', 'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},     //
	{"CREATE_ABODE", {'N', 'A', 'L', 'N', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' '}},                  //
	{"CREATE_PLANNED_ABODE", {'N', 'A', 'L', 'N', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' '}},          //
	{"CREATE_TOWN_CENTRE", {'N', 'A', 'L', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' '}},            //
	{"CREATE_TOWN_SPELL", {'N', 'L', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},             //
	{"CREATE_NEW_TOWN_SPELL", {'N', 'L', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},         //
	{"CREATE_TOWN_CENTRE_SPELL_ICON", {'N', 'L', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}}, //
	{"CREATE_SPELL_ICON", {'A', 'L', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},             //
	{"CREATE_PLANNED_SPELL_ICON", {'N', 'A', 'L', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' '}},     //
	{"CREATE_VILLAGER", {'A', 'A', 'L', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},               //
	{"CREATE_TOWN_VILLAGER", {'N', 'A', 'A', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},          //
	{"CREATE_SPECIAL_TOWN_VILLAGER", {'N', 'A', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},  //
	{"CREATE_VILLAGER_POS", {'A', 'A', 'L', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},           //
	{"CREATE_CITADEL", {'A', 'N', 'L', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                //
	{"CREATE_PLANNED_CITADEL", {'N', 'A', 'N', 'L', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' '}},        //
	{"CREATE_CREATURE_PEN", {'A', 'N', 'N', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' '}},           //
	{"CREATE_WORSHIP_SITE", {'A', 'N', 'L', 'L', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' '}},           //
	{"CREATE_PLANNED_WORSHIP_SITE", {'A', 'N', 'L', 'L', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' '}},   //
	{"CREATE_ANIMAL", {'A', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                 //
	{"CREATE_NEW_ANIMAL", {'A', 'N', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},             //
	{"CREATE_FOREST", {'N', 'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                 //
	{"CREATE_TREE", {'N', 'A', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                   //
	{"CREATE_NEW_TREE", {'N', 'A', 'N', 'N', 'F', 'F', 'F', ' ', ' ', ' ', ' ', ' '}},               //
	{"CREATE_FIELD", {'A', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                  //
	{"CREATE_TOWN_FIELD", {'N', 'A', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},             //
	{"CREATE_FISH_FARM", {'A', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},              //
	{"CREATE_TOWN_FISH_FARM", {'N', 'A', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},         //
	{"CREATE_FEATURE", {'A', 'N', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                //
	{"CREATE_FLOWERS", {'A', 'N', 'F', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                //
	{"CREATE_WALL_SECTION", {'A', 'N', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},           //
	{"CREATE_PLANNED_WALL_SECTION", {'A', 'N', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},   //
	{"CREATE_PITCH", {'A', 'N', 'N', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' '}},                  //
	{"CREATE_POT", {'A', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                    //
	{"CREATE_TOWN_TEMPORARY_POTS", {'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},    //
	{"CREATE_MOBILEOBJECT", {'A', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},           //
	{"CREATE_MOBILESTATIC", {'A', 'N', 'F', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},           //
	{"CREATE_MOBILE_STATIC", {'A', 'N', 'F', 'F', 'F', 'F', 'F', ' ', ' ', ' ', ' ', ' '}},          //
	{"CREATE_DEAD_TREE", {'A', 'L', 'N', 'F', 'F', 'F', 'F', ' ', ' ', ' ', ' ', ' '}},              //
	{"CREATE_SCAFFOLD", {'N', 'A', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},               //
	{"COUNTRY_CHANGE", {'A', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                //
	{"HEIGHT_CHANGE", {'A', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                 //
	{"CREATE_CREATURE", {'A', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},               //
	{"CREATE_CREATURE_FROM_FILE", {'L', 'N', 'A', 'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},     //
	{"CREATE_FLOCK", {'N', 'A', 'A', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' '}},                  //
	{"LOAD_LANDSCAPE", {'L', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                //
	{"VERSION", {'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                       //
	{"CREATE_AREA", {'A', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                   //
	{"START_CAMERA_POS", {'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},              //
	{"FLY_BY_FILE", {'L', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                   //
	{"TOWN_NEEDS_POS", {'N', 'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                //
	{"CREATE_FURNITURE", {'A', 'N', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},              //
	{"CREATE_BIG_FOREST", {'A', 'N', 'F', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},             //
	{"CREATE_NEW_BIG_FOREST", {'A', 'N', 'N', 'F', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},         //
	{"CREATE_INFLUENCE_RING", {'A', 'N', 'F', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},         //
	{"CREATE_WEATHER_CLIMATE", {'N', 'N', 'A', 'F', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},        //
	{"CREATE_WEATHER_CLIMATE_RAIN", {'N', 'F', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},   //
	{"CREATE_WEATHER_CLIMATE_TEMP", {'N', 'F', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},   //
	{"CREATE_WEATHER_CLIMATE_WIND", {'N', 'F', 'F', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},   //
	{"CREATE_WEATHER_STORM", {'N', 'A', 'F', 'N', 'A', 'A', 'A', 'F', 'A', ' ', ' ', ' '}},          //
	{"BRUSH_SIZE", {'F', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                    //
	{"CREATE_STREAM", {'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                 //
	{"CREATE_STREAM_POINT", {'N', 'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},           //
	{"CREATE_WATERFALL", {'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},              //
	{"CREATE_ARENA", {'A', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                  //
	{"CREATE_FOOTPATH", {'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},               //
	{"CREATE_FOOTPATH_NODE", {'N', 'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},          //
	{"LINK_FOOTPATH", {'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                 //
	{"CREATE_BONFIRE", {'A', 'F', 'F', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                //
	{"CREATE_BASE", {'A', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                   //
#ifdef VERSION_BW1WCI
	{"CREATE_BASE_WITH_ANGLE", {'A', 'N', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}}, //
#endif
	{"CREATE_NEW_FEATURE", {'A', 'L', 'N', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                //
	{"SET_INTERACT_DESIRE", {'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},               //
	{"TOGGLE_COMPUTER_PLAYER", {'L', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},            //
	{"SET_COMPUTER_PLAYER_CREATURE_LIKE", {'L', 'L', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}}, //
	{"MULTIPLAYER_DEBUG", {'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                 //
	{"CREATE_STREET_LANTERN", {'A', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},             //
	{"CREATE_STREET_LIGHT", {'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},               //
	{"SET_LAND_NUMBER", {'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                   //
	{"CREATE_ONE_SHOT_SPELL", {'A', 'L', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},             //
	{"CREATE_ONE_SHOT_SPELL_PU", {'A', 'L', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},          //
	{"CREATE_FIRE_FLY", {'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                   //
	{"TOWN_DESIRE_BOOST", {'N', 'L', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                 //
	{"CREATE_ANIMATED_STATIC", {'A', 'L', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},            //
	{"FIRE_FLY_SPELL_REWARD_PROB", {'A', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},        //
	{"CREATE_NEW_TOWN_FIELD", {'N', 'A', 'N', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},             //
	{"CREATE_SPELL_DISPENSER", {'N', 'A', 'L', 'L', 'F', 'F', 'F', ' ', ' ', ' ', ' ', ' '}},            //
	{"LOAD_COMPUTER_PLAYER_PERSONALLTY", {'N', 'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},  //
	{"SET_COMPUTER_PLAYER_PERSONALLTY", {'L', 'A', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},   //
	{"SET_GLOBAL_LAND_BALANCE", {'N', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},           //
	{"SET_LAND_BALANCE", {'L', 'N', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                  //
	{"CREATE_DRINK_WAYPOINT", {'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},             //
	{"SET_TOWN_INFLUENCE_MULTIPLIER", {'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},     //
#ifdef VERSION_BW1WCI
	{"SET_A_TOWNS_INFLUENCE_MULTIPLIER", {'N', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}}, //
#endif
	{"SET_PLAYER_INFLUENCE_MULTIPLIER", {'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}}, //
	{"SET_TOWN_BALANCE_BELIEF_SCALE", {'N', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},   //
	{"START_GAME_MESSAGE", {'A', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},              //
	{"ADD_GAME_MESSAGE_LINE", {'A', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},           //
	{"EDIT_LEVEL", {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                      //
	{"SET_NIGHTTIME", {'F', 'F', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},                   //
	{"MAKE_LAST_OBJECT_ARTIFACT", {'N', 'L', 'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},       //
	{"SET_LOST_TOWN_SCALE", {'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}},             //
#ifdef VERSION_BW1WCI
	{"CREATE_CREATURE_ISLES_BUILDING", {'A', 'L', 'N', 'N', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}}, //
#endif
	{NULL, ""}, //
};

LHScriptCommandX<wchar_t> GSetup::FeatureTextCommands[] = {
	{L"NUM_ENTRIES", "N     "}, //
	{L"ADD_TEXT", "NNNA  "},    //
	{NULL, ""},                 //
};

// BW1W120 00718060 BW1M119 01510b50
bool32_t GetFileUpdateTime(char* file_name, FILETIME& time);
// BW1W120 007191f0 BW1M119 0150f960
void wcscpy_with_return_convert(wchar_t* dst, wchar_t* src);
// BW1W120 007192e0 BW1M119 0150f830
static LH_RETURN feature_text_command_process(long command, LHScriptPramX<wchar_t>* params);
// BW1W120 007193f0 BW1M119 0150f6c0
#ifndef VERSION_BW1W100
static LH_RETURN feature_text_command_process_patch(long command, LHScriptPramX<wchar_t>* params);
#endif
// BW1W120 00719500 BW1M119 null
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
static LH_RETURN feature_text_command_process_multiplayer(long command, LHScriptPramX<wchar_t>* params);
#endif

LH_RETURN __cdecl GSetup::MapCommandProcess(long command, LHScriptPramX<char>* params)
{
	RenderLoadingFrame(true);
	switch (command)
	{
	case SCRIPT_MAP_COMMANDS_SET_DATE:
		GGameInfo::Info.SetStartDate(params->number[0], params->number[1], params->number[2]);
		break;
	case SCRIPT_MAP_COMMANDS_SET_TIME:
		GGameInfo::Info.SetStartTime(params->number[0], params->number[1], params->number[2]);
		break;
	case SCRIPT_MAP_COMMANDS_SET_TURNS_PER_YEAR:
		GGameInfo::Info.ElapsedDays = (float)(unsigned long)params->number[0];
		break;
	case SCRIPT_MAP_COMMANDS_SET_GAME_TICK_TIME:
		GGameInfo::Info.MillisecondsPerGameTurn = params->number[0];
		break;
	case SCRIPT_MAP_COMMANDS_LOAD_FEATURE_SCRIPT:
		LoadMapFeatures(params->text[0]);
		break;
	case SCRIPT_MAP_COMMANDS_LOAD_LANDSCAPE: {
		GLandscape& landscape = GGame::g_game->landscape;
		strcpy(GLandscape::Filename, params->text[0]);
		landscape.Open(params->text[0]);
	}
	break;
	case SCRIPT_MAP_COMMANDS_PAUSE_GAME:
		PauseGame(true);
		break;
	case SCRIPT_MAP_COMMANDS_CREATE_CREATURE:
		Creature::CreateCreature(MapCoords((unsigned short)params->number[0], (unsigned short)params->number[1]),
		                         &CreatureInfo::GetInfo()[params->number[2]],
		                         GGame::g_game->GetPlayer(params->number[3]));
		break;
	case SCRIPT_MAP_COMMANDS_OUTPUT_VILLAGERS:
		GGlobal::Global.debug.LogVillagers = true;
		break;
	case SCRIPT_MAP_COMMANDS_OUTPUT_TOWN:
		GGlobal::Global.debug.LogTownDesire = true;
		break;
	case SCRIPT_MAP_COMMANDS_OUTPUT_CREATURES:
		GGlobal::Global.debug.LogCreatures = true;
		break;
	case SCRIPT_MAP_COMMANDS_OUTPUT_COLLIDE:
		GGlobal::Global.debug.LogCollide = true;
		break;
	case SCRIPT_MAP_COMMANDS_OUTPUT_ALLOC:
		GGlobal::Global.debug.LogAllocations = true;
		break;
	case SCRIPT_MAP_COMMANDS_OUTPUT_RAND:
		GGlobal::Global.debug.LogRand = true;
		break;
	case SCRIPT_MAP_COMMANDS_SAVE_FOR_NET_DEBUG:
		GGame::g_game->SetPacket(PACKET_TYPE_SAVE_FOR_NET_DEBUG, params->number[0], params->number[1]);
		break;
	case SCRIPT_MAP_COMMANDS_LOAD_FOR_NET_DEBUG:
		GGame::g_game->SetPacket(PACKET_TYPE_LOAD_FOR_NET_DEBUG, params->number[0], 0L);
		break;
	case SCRIPT_MAP_COMMANDS_LOAD_GAME_SCRIPT:
		GGame::g_game->script->Load(params->text[0]);
		break;
	case SCRIPT_MAP_COMMANDS_LOAD_RAW_GAME_SCRIPT:
		GGame::g_game->script->LoadBinary(params->text[0]);
		break;
	case SCRIPT_MAP_COMMANDS_LOAD_LANGUAGE:
		GGame::g_game->language.Load();
		break;
	case SCRIPT_MAP_COMMANDS_LOAD_OLD_CREATURE:
		GGlobal::Global.LoadNewCreature = false;
		break;
	case SCRIPT_MAP_COMMANDS_CONFIG:
		GGame::g_game->config = NEW(192 + CONFIG_LINE_SHIFT) Config;
		break;
#ifdef VERSION_BW1WCI
	case SCRIPT_MAP_COMMANDS_SET_STARTUP:
		if (_stricmp(params->text[0], "AllowSkip") == 0)
		{
			GGame::g_game->GameFlags =
				(GGame::g_game->GameFlags & ~GAME_FLAG_STARTUP_FORCE_INTRO) | GAME_FLAG_STARTUP_ALLOW_SKIP;
			return LH_OK;
		}
		if (_stricmp(params->text[0], "ForceIntro") == 0)
		{
			GGame::g_game->GameFlags =
				(GGame::g_game->GameFlags & ~GAME_FLAG_STARTUP_ALLOW_SKIP) | GAME_FLAG_STARTUP_FORCE_INTRO;
			return LH_OK;
		}
		if (_stricmp(params->text[0], "Default") == 0)
		{
			GGame::g_game->GameFlags &= ~(GAME_FLAG_STARTUP_ALLOW_SKIP | GAME_FLAG_STARTUP_FORCE_INTRO);
			return LH_OK;
		}
		break;
#endif
	case SCRIPT_MAP_COMMANDS_KEYCONFIG:
		_strlwr(params->text[0]);
		for (int key = 0; key < LH_KEY_TO_ASCII_TABLE_SIZE; key++)
		{
			if (LHKeyToAsciiTable[key] == params->text[0][0])
			{
				GGame::g_game->SwitchProfile((LH_KEY)key);
				break;
			}
		}
		break;
	}
	return LH_OK;
}

bool32_t GSetup::LoadMapScript()
{
#ifdef VERSION_BW1WCI
	return LHSys::TheSystem.script.Load(GGame::g_game->settings->MapPath, MapCommands, MapCommandProcess, NULL) ==
	       LH_OK;
#else
	return LHSys::TheSystem.script.Load(".\\Scripts\\Map.txt", MapCommands, MapCommandProcess, NULL) == LH_OK;
#endif
}

bool32_t GSetup::LoadEmptyMapScript()
{
	return LHSys::TheSystem.script.Load(".\\Scripts\\EmptyMap.txt", MapCommands, MapCommandProcess, NULL) == LH_OK;
}

void GSetup::SaveVersion(LHOSFile& file)
{
	char text[100];
	sprintf(text, "VERSION(%f)\n", MapVersion);
	file.Write(text, strlen(text), NULL);
}

char* GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS command)
{
	return FeatureMapCommands[command].GetCommandAsText(CommandText);
}

LH_RETURN GSetup::ProcessOneMapLine(char* line)
{
	LHSys::TheSystem.script.SetVariables(FeatureMapCommands, FeatureMapCommandProcess, NULL);
	return LHSys::TheSystem.script.ScanLine(line);
}

LH_RETURN __cdecl GSetup::FeatureMapCommandProcess(long command, LHScriptPramX<char>* params)
{
	MapCoords coords;
	char      text[200];
	wchar_t   message[260];
	GPlayer*  player;

	RenderLoadingFrame(true);
	sprintf(text, "%s(", FeatureMapCommands[command].name);
	for (uint32_t i = 0; i < ARRAY_SIZE(FeatureMapCommands[command].params); i++)
	{
		switch (FeatureMapCommands[command].params[i])
		{
		case 'A':
			sprintf(&text[strlen(text)], "%s,", params->text[i]);
			break;
		case 'L':
			sprintf(&text[strlen(text)], "\"%s\",", params->text[i]);
			break;
		case 'N':
			sprintf(&text[strlen(text)], "%d,", params->number[i]);
			break;
		case 'F':
			sprintf(&text[strlen(text)], "%.02f,", params->flt[i]);
			break;
		}
	}
	if (text[strlen(text) - 1] == ',')
	{
		text[strlen(text) - 1] = '\0';
	}
	if (LastDebugObject != NULL)
	{
		sprintf(&text[strlen(text)], ")%d\n", LastDebugObject->ObjectCreationIndex);
	}
	else
	{
		strcat(text, ")\n");
	}
	switch (command)
	{
	case SCRIPT_FEATURE_COMMANDS_CREATE_TOWN: {
		GPlayer* player = GPlayer::GetPlayerFromText(params->text[2]);
		if (RandomBuildingPlacement::PlacementPlayer != NULL)
		{
			player = RandomBuildingPlacement::PlacementPlayer;
		}
#ifdef VERSION_BW1W100
		Town* town = NEW(442 + TOWN_LINE_SHIFT)
			Town(GetScriptPos(params->text[1]), GTownInfo::GetInfo(), player,
		         GTribeInfo::GetTribeFromText(params->text[4])->GetTribeType(), NULL, params->number[0]);
#else
		Town* town = NEW(442 + TOWN_LINE_SHIFT)
			Town(GetScriptPos(params->text[1]), GTownInfo::GetInfo(), player,
		         GTribeInfo::GetTribeFromText(params->text[4])->GetTribeType(), NULL, params->number[0], false);
#endif
		LastObject = town;
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_SET_TOWN_BELIEF: {
		GPlayer* player = GPlayer::GetPlayerFromText(params->text[1]);
		Town*    town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			town->SetBeliefInPlayer(player, params->flt[2]);
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_SET_TOWN_BELIEF_CAP: {
		player = GPlayer::GetPlayerFromText(params->text[1]);
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			town->belief.SetBeliefInPlayerCap(player, params->flt[2]);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
			if (strcmp(MapFilename, ".\\mpm_3p_1.txt") == 0 && GGame::g_game->IsMultiplayerGame() &&
			    town->ID == MPM_3P_1_CAPPED_TOWN_ID && !player->IsNeutral())
			{
				town->belief.SetBeliefInPlayerCap(player, MPM_3P_1_TOWN_BELIEF_CAP);
			}
#endif
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_SET_TOWN_UNINHABITABLE: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			town->Uninhabitable = true;
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_SET_TOWN_CONGREGATION_POS: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			town->CongregationPos = GetScriptPos(params->text[1]);
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_MIST:
		coords = GetScriptPos(params->text[0]);
		coords.SetAltitude(params->flt[1]);
		LastObject = Mist::Create(coords, params->flt[3], params->number[2], params->flt[4]);
		return LH_OK;
	case SCRIPT_FEATURE_COMMANDS_CREATE_ABODE:
	case SCRIPT_FEATURE_COMMANDS_CREATE_PLANNED_ABODE: {
		const GAbodeInfo* info = &GAbodeInfo::GetInfo()[GAbodeInfo::GetInfoFromText(params->text[2])];
		MapCoords         pos = GetScriptPos(params->text[1]);
		long              food = params->number[5];
		long              wood = params->number[6];
		float             yAngle = GetSaveFloat(params->number[3]);
		float             scale = GetSaveFloat(params->number[4]);
		Town*             town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town == NULL)
		{
			town = GGame::g_game->FindClosestTown(pos);
		}
		if (town != NULL && info != NULL)
		{
			if (command == SCRIPT_FEATURE_COMMANDS_CREATE_PLANNED_ABODE)
			{
				if (info->AbodeType == ABODE_TYPE_TOWN_CENTRE)
				{
					LastObject = PlannedTownCentre::Create(pos, info, town, yAngle, scale);
				}
				else
				{
					LastObject = PlannedAbode::Create(pos, info, town, yAngle, scale);
				}
			}
			else
			{
				bool32_t isStoragePit = info->AbodeType == ABODE_TYPE_STORAGE_PIT;
				Abode*   abode = Abode::Create(pos, info, town, yAngle, scale, food, wood, 1.0f, false, isStoragePit);
				LastObject = abode;
				if (abode != NULL)
				{
					LastDebugObject = abode;
					LastObject = abode;
				}
			}
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_TOWN_CENTRE: {
		const GAbodeInfo* info = &GAbodeInfo::GetInfo()[GAbodeInfo::GetInfoFromText(params->text[2])];
		MapCoords         pos = GetScriptPos(params->text[1]);
		float             yAngle = GetSaveFloat(params->number[3]);
		float             scale = GetSaveFloat(params->number[4]);
		float             worship = GetSaveFloat(params->number[5]);
		Town*             town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town == NULL)
		{
			town = GGame::g_game->FindClosestTown(pos);
		}
		if (town != NULL && info != NULL && info->IsOkToCreateAtPos(pos, yAngle, scale, town) == true)
		{
			Abode* abode = Abode::Create(pos, info, town, yAngle, scale, 0, 0, 1.0f, false, false);
			LastObject = abode;
			if (abode != NULL)
			{
				TownCentre* centre = dynamic_cast<TownCentre*>(abode);
				if (centre != NULL)
				{
					LastObject = abode;
					if (town->town_centre == NULL)
					{
						town->town_centre = (TownCentre*)abode;
					}
					if (centre->GetTown() != NULL)
					{
						centre->GetTown()->SetWorshipPercentage(worship);
					}
					else
					{
						centre->totem_statue.Get()->SetWorshipPercentage(worship);
						centre->totem_statue.Get()->WorshipSpeed2 = centre->totem_statue.Get()->GetWorshipSpeed();
					}
				}
				LastDebugObject = abode;
			}
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_PLANNED_SPELL_ICON: {
		SPELL_SEED_TYPE seed = (SPELL_SEED_TYPE)GSpellSeedInfo::GetInfoFromText(params->text[2]);
		Town*           town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			town->AddMagicTypesHeld(GSpellSeedInfo::GetInfo()[seed].MagicTypes[0]);
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_TOWN_SPELL:
	case SCRIPT_FEATURE_COMMANDS_CREATE_TOWN_CENTRE_SPELL_ICON: {
		SPELL_SEED_TYPE seed = GSpellSeedInfo::GetInfoFromText(params->text[1]);
		Town*           town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			town->AddMagicTypesHeld(GSpellSeedInfo::GetInfo()[seed].MagicTypes[0]);
			if (town->town_centre != NULL)
			{
				town->town_centre->AddSpell(
					(SPELL_SEED_TYPE)(&GSpellSeedInfo::GetInfo()[seed] - GSpellSeedInfo::GetInfo()));
			}
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_NEW_TOWN_SPELL: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			MAGIC_TYPE magic = GMagicInfo::GetInfoFromText(params->text[1]);
			if (magic < MAGIC_TYPE_LAST && magic > MAGIC_TYPE_NONE)
			{
				MAGIC_TYPE powerUp = GSpellSeedInfo::GetInfo()[GSpellSeedInfo::GetFirstSpellSeedForMagicType(magic)]
				                         .GetMagicTypeFromPULevel(POWER_UP_TYPE_NONE);
				town->AddMagicTypesHeld(magic);
				if (!town->IsMagicTypeHeld(powerUp))
				{
					town->AddMagicTypesHeld(powerUp);
				}
			}
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_TOWN_VILLAGER: {
		Villager* villager = Villager::Create(
			GetScriptPos(params->text[1]), &GVillagerInfo::GetInfo()[GVillagerInfo::GetInfoFromText(params->text[2])],
			params->number[3], false);
		LastObject = villager;
		if (villager != NULL)
		{
			Town* town = GGame::g_game->FindTownWithID(params->number[0]);
			if (town == NULL)
			{
				town = GGame::g_game->FindClosestTown(GetScriptPos(params->text[1]));
			}
			if (town != NULL)
			{
				town->AddVillagerToTown(villager);
			}
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_SPECIAL_TOWN_VILLAGER: {
		const GVillagerInfo* info = &GVillagerInfo::GetInfo()[params->number[2]];
		Villager*            villager = Villager::Create(GetScriptPos(params->text[1]), info, params->number[3], false);
		LastObject = villager;
		if (villager != NULL)
		{
			Town* town = GGame::g_game->FindTownWithID(params->number[0]);
			if (town == NULL)
			{
				town = GGame::g_game->FindClosestTown(GetScriptPos(params->text[1]));
			}
			if (town != NULL)
			{
				town->AddVillagerToTown(villager);
			}
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_VILLAGER:
	case SCRIPT_FEATURE_COMMANDS_CREATE_VILLAGER_POS: {
		int       infoIndex;
		long      age;
		MapCoords homePos;
		Town*     homeTown = NULL;
		if (command == SCRIPT_FEATURE_COMMANDS_CREATE_VILLAGER)
		{
			infoIndex = GVillagerInfo::GetInfoFromText(params->text[1]);
			age = params->number[2];
			homePos = GetScriptPos(params->text[0]);
			coords = homePos;
		}
		else if (command == SCRIPT_FEATURE_COMMANDS_CREATE_VILLAGER_POS)
		{
			infoIndex = GVillagerInfo::GetInfoFromText(params->text[2]);
			age = params->number[3];
			homePos = GetScriptPos(params->text[0]);
			coords = GetScriptPos(params->text[1]);
		}
		player = NULL;
		Abode* home;
		while ((player = GGame::g_game->GetNextPlayerAndNeutral(player)) != NULL)
		{
			for (Town* town = player->towns.Get(); town != NULL; town = town->next)
			{
				for (home = town->AbodeList.Get(); home != NULL; home = home->next.Get())
				{
					if (home->GetDoorPos().MapX() == homePos.MapX() && home->GetDoorPos().MapZ() == homePos.MapZ())
					{
						homeTown = home->GetTown();
						if (((const GAbodeInfo*)home->info)->MaxVillagersInAbode - home->villagers.count == 0)
						{
							home = NULL;
						}
						goto found_home;
					}
				}
			}
		}
	found_home:
		const GVillagerInfo* info = &GVillagerInfo::GetInfo()[infoIndex];
		coords.SetAltitude(0.0f);
		if (ScriptTribeOverride != SCRIPT_OVERRIDE_NONE)
		{
			const GVillagerInfo* tribeInfo = GVillagerInfo::Find((TRIBE_TYPE)ScriptTribeOverride, info->VillagerNumber);
			if (tribeInfo != NULL)
			{
				info = tribeInfo;
			}
		}
		Villager* villager = Villager::Create(coords, info, age, false);
		LastObject = villager;
		if (villager != NULL)
		{
			LastDebugObject = villager;
			LastObject = villager;
			if (home == NULL)
			{
				if (homeTown != NULL)
				{
					home = homeTown->FindAbodeWithSpaceInTown(villager, 0.0f);
					if (home == NULL)
					{
						homeTown->AddVillagerToTown(villager);
						break;
					}
				}
				else
				{
					GGame::g_game->GameLists.VillagersWithoutTown.AddToFirst(villager);
					break;
				}
			}
			home->AddVillagerToAbode(villager);
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_CITADEL: {
		GPlayer* player = GPlayer::GetPlayerFromText(params->text[2]);
		if (player != NULL)
		{
			Citadel::CreateCitadel(GetScriptPos(params->text[0]), &GCitadelHeartInfo::GetInfo()[params->number[1]],
			                       player->GetPlayerNumber(), GetSaveFloat(params->number[3]),
			                       GetSaveFloat(params->number[4]));
			LastObject = player->GetCitadel()->heart.Get();
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_PLANNED_CITADEL: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL && GPlayer::GetPlayerFromText(params->text[3]) != NULL)
		{
			PlannedTownCitadelHeart* heart = NEW(776 + PLANNED_LINE_SHIFT)
				PlannedTownCitadelHeart(GetScriptPos(params->text[1]), &GCitadelHeartInfo::GetInfo()[params->number[2]],
			                            town, GetSaveFloat(params->number[4]), GetSaveFloat(params->number[5]));
			LastObject = heart;
			if (heart != NULL)
			{
				PlannedTownCitadelHeart::ScriptPos = heart->Pos;
			}
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_CREATURE_PEN: {
		GPlayer* player = GPlayer::GetPlayerFromText(params->text[2]);
		long     flags = params->number[5];
		if (player != NULL)
		{
			const LHPTR<Citadel>& citadelPtr = GGame::g_game->GetPlayer(player->GetPlayerNumber())->citadel;
			Citadel*              citadel = citadelPtr.Get();
			if (citadel != NULL)
			{
				if (flags & SCRIPT_CREATURE_PEN_PLANNED)
				{
					PlannedCreaturePen* pen = NEW(797 + PLANNED_LINE_SHIFT) PlannedCreaturePen(
						GetScriptPos(params->text[0]), &GCreaturePenInfo::GetInfo()[params->number[1]], citadel,
						GetSaveFloat(params->number[3]), GetSaveFloat(params->number[4]));
					LastObject = pen;
				}
				else
				{
					LastDebugObject = CreaturePen::Create(
						GetScriptPos(params->text[0]), &GCreaturePenInfo::GetInfo()[params->number[1]], citadel,
						GetSaveFloat(params->number[3]), GetSaveFloat(params->number[4]), 1.0f, false);
					LastObject = LastDebugObject;
				}
			}
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_WORSHIP_SITE: {
		GPlayer* player = GPlayer::GetPlayerFromText(params->text[2]);
		if (player != NULL)
		{
			Citadel* citadel = player->GetCitadel();
			if (citadel != NULL && citadel->heart.Get() != NULL)
			{
				const GTribeInfo* tribe = GTribeInfo::GetTribeFromText(params->text[3]);
				LastDebugObject = citadel->heart.Get()->CreateBuiltWorshipSite(
					GetScriptPos(params->text[0]), &GWorshipSiteInfo::GetInfo()[params->number[1]], citadel, tribe);
				LastObject = LastDebugObject;
			}
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_FOREST: {
		Forest* forest = NEW(838 + PLANNED_LINE_SHIFT) Forest(GetScriptPos(params->text[1]), params->number[0]);
		LastObject = forest;
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_TREE: {
		float            yAngle = GetSaveFloat(params->number[3]);
		const GTreeInfo* info = &GTreeInfo::GetInfo()[params->number[2]];
		float            scale = GetSaveFloat(params->number[4]);
		coords = GetScriptPos(params->text[1]);
		Forest* forest;
		for (forest = GGame::g_game->GameLists.forests.Get(); forest != NULL; forest = forest->next.Get())
		{
			if (forest->id == params->number[0])
			{
				break;
			}
		}
		if (info->IsOkToCreateAtPos(coords, yAngle, scale))
		{
			LastDebugObject = Tree::Create(coords, info, forest, scale, yAngle, scale);
			LastObject = LastDebugObject;
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_NEW_TREE: {
		const GTreeInfo* info = &GTreeInfo::GetInfo()[params->number[2]];
		float            yAngle = params->flt[4];
		float            scale = params->flt[5];
		coords = GetScriptPos(params->text[1]);
		Forest* forest;
		for (forest = GGame::g_game->GameLists.forests.Get(); forest != NULL; forest = forest->next.Get())
		{
			if (forest->id == params->number[0])
			{
				break;
			}
		}
		if (info->IsOkToCreateAtPos(coords, yAngle, scale))
		{
			Tree* tree = Tree::Create(coords, info, forest, params->flt[6], yAngle, scale);
			LastDebugObject = tree;
			LastObject = LastDebugObject;
			tree->NonScenic = params->number[3] == 1;
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_FLOCK: {
		int    townParam = 4;
		int    distanceParam = 0;
		Flock* flock = NEW(889 + PLANNED_LINE_SHIFT)
			Flock(GetScriptPos(params->text[1]), (const GFlockInfo*)&GContainerInfo::GetInfo()[CONTAINER_INFO_FLOCK],
		          &GGame::g_game->players[GGame::g_game->NeutralPlayerIndex], params->number[0]);
		LastObject = flock;
		if (flock != NULL)
		{
			if (LoadedMapVersion >= MAP_VERSION_FLOCK_DISTANCE)
			{
				townParam = 5;
				distanceParam = 4;
			}
			Town* town = GGame::g_game->FindTownWithID(params->number[townParam]);
			if (town != NULL)
			{
				flock->town = town;
				town->FlockList.Add(flock);
			}
			flock->SetDomainCentrePos(GetScriptPos(params->text[2]));
			if (params->number[3] != 0)
			{
				flock->DomainRadius = params->number[3];
			}
			else
			{
				flock->DomainRadius = FLOCK_DEFAULT_DOMAIN_RADIUS;
			}
			if (distanceParam != 0)
			{
				flock->FlockDistance = params->number[distanceParam];
			}
			else
			{
				flock->FlockDistance = FLOCK_DEFAULT_DISTANCE;
			}
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_ANIMAL: {
		Flock* flock;
		for (flock = GGame::g_game->GameLists.flocks.FindNext(NULL); flock != NULL;
		     flock = GGame::g_game->GameLists.flocks.FindNext(flock))
		{
			if (flock->ID == params->number[2])
			{
				break;
			}
		}
		Town* town = GGame::g_game->FindTownWithID(params->number[3]);
		LastDebugObject = Animal::CreateFromType(GetScriptPos(params->text[0]),
		                                         &GAnimalInfo::GetInfo()[params->number[1]], town, flock, 0);
		LastObject = LastDebugObject;
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_NEW_ANIMAL: {
		Flock* flock;
		for (flock = GGame::g_game->GameLists.flocks.FindNext(NULL); flock != NULL;
		     flock = GGame::g_game->GameLists.flocks.FindNext(flock))
		{
			if (flock->ID == params->number[2])
			{
				break;
			}
		}
		Town* town = GGame::g_game->FindTownWithID(params->number[3]);
		LastDebugObject = Animal::CreateFromType(
			GetScriptPos(params->text[0]), &GAnimalInfo::GetInfo()[params->number[1]], town, flock, params->number[4]);
		LastObject = LastDebugObject;
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_FIELD:
		LastObject = Field::Create(GetScriptPos(params->text[0]), &GFieldTypeInfo::GetInfo()[params->number[1]], NULL,
		                           0.0f, 1.0f, false);
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_DRINK_WAYPOINT:
		LastObject = WayPoint::Create(GetScriptPos(params->text[0]));
		return LH_OK;
	case SCRIPT_FEATURE_COMMANDS_CREATE_TOWN_FIELD: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			LastObject = Field::Create(GetScriptPos(params->text[1]), &GFieldTypeInfo::GetInfo()[params->number[2]],
			                           town, 0.0f, 1.0f, false);
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_NEW_TOWN_FIELD: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			LastObject = Field::Create(GetScriptPos(params->text[1]), &GFieldTypeInfo::GetInfo()[params->number[2]],
			                           town, params->flt[3], 1.0f, false);
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_FISH_FARM:
		LastObject =
			FishFarm::Create(GetScriptPos(params->text[0]), &GFishFarmInfo::GetInfo()[params->number[1]], NULL);
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_TOWN_FISH_FARM: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			LastObject =
				FishFarm::Create(GetScriptPos(params->text[1]), &GFishFarmInfo::GetInfo()[params->number[2]], town);
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_FEATURE:
		if (params->number[4] != 0)
		{
			PlannedFeature* planned = NEW(970 + PLANNED_LINE_SHIFT)
				PlannedFeature(GetScriptPos(params->text[0]), &GFeatureInfo::GetInfo()[params->number[1]], NULL,
			                   GetSaveFloat(params->number[2]), GetSaveFloat(params->number[3]));
			LastObject = planned;
		}
		else
		{
			LastDebugObject =
				Feature::Create(GetScriptPos(params->text[0]), &GFeatureInfo::GetInfo()[params->number[1]],
			                    GetSaveFloat(params->number[2]), GetSaveFloat(params->number[3]), 1.0f, false);
			LastObject = LastDebugObject;
		}
		return LH_OK;
	case SCRIPT_FEATURE_COMMANDS_CREATE_FLOWERS:
		LastDebugObject = Flowers::Create(GetScriptPos(params->text[0]), &GFlowersInfo::GetInfo()[params->number[1]],
		                                  params->flt[2], params->flt[3]);
		LastObject = LastDebugObject;
		return LH_OK;
	case SCRIPT_FEATURE_COMMANDS_CREATE_SPELL_DISPENSER: {
		const GAbodeInfo* info = &GAbodeInfo::GetInfo()[GAbodeInfo::GetInfoFromText(params->text[2])];
		MapCoords         pos = GetScriptPos(params->text[1]);
		float             yAngle = params->flt[4];
		float             scale = params->flt[5];
		MAGIC_TYPE        magic = GMagicInfo::GetInfoFromText(params->text[3]);
		Town*             town = GGame::g_game->FindTownWithID(params->number[0]);
		float             recharge = params->flt[6];
		if (town == NULL)
		{
			town = GGame::g_game->FindClosestTown(pos);
		}
		SpellDispenser* dispenser = SpellDispenser::Create(pos, info, town, yAngle, scale, 1.0f, false);
		LastDebugObject = dispenser;
		LastObject = dispenser;
		if (dispenser != NULL)
		{
			dispenser->DispensedMagicType = magic;
			dispenser->SetActive(true);
			dispenser->SetProduceEvery(recharge);
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_NEW_FEATURE:
		if (params->number[4] != 0)
		{
			PlannedFeature* planned = NEW(1007 + PLANNED_LINE_SHIFT)
				PlannedFeature(GetScriptPos(params->text[0]), &GFeatureInfo::GetInfo()[params->number[1]], NULL,
			                   GetSaveFloat(params->number[2]), GetSaveFloat(params->number[3]));
			LastObject = planned;
		}
		else
		{
			LastDebugObject = Feature::Create(
				GetScriptPos(params->text[0]), &GFeatureInfo::GetInfo()[Feature::GetInfoFromText(params->text[1])],
				GetSaveFloat(params->number[2]), GetSaveFloat(params->number[3]), 1.0f, false);
			LastObject = LastDebugObject;
		}
		return LH_OK;
	case SCRIPT_FEATURE_COMMANDS_CREATE_ANIMATED_STATIC:
		LastDebugObject =
			AnimatedStatic::Create(GetScriptPos(params->text[0]),
		                           &GAnimatedStaticInfo::GetInfo()[AnimatedStatic::GetInfoFromText(params->text[1])],
		                           GetSaveFloat(params->number[2]), GetSaveFloat(params->number[3]), 1.0f, false);
		LastObject = LastDebugObject;
		return LH_OK;
#ifdef VERSION_BW1WCI
	case SCRIPT_FEATURE_COMMANDS_CREATE_CREATURE_ISLES_BUILDING:
		LastDebugObject = CreatureIslesBuilding::Create(
			GetScriptPos(params->text[0]),
			&GCreatureIslesBuldingsInfo::GetInfo()[CreatureIslesBuilding::GetInfoFromText(params->text[1])],
			GetSaveFloat(params->number[2]), GetSaveFloat(params->number[3]));
		LastObject = LastDebugObject;
		return LH_OK;
#endif
	case SCRIPT_FEATURE_COMMANDS_CREATE_POT: {
		coords = GetScriptPos(params->text[0]);
		const GPotInfo* info = &GPotInfo::GetInfo()[params->number[1]];
		if (info->IsOkToCreateAtPos(coords, 0.0f, 1.0f))
		{
			long resource = params->number[3];
			if (resource > 0)
			{
				LastDebugObject = Pot::Create(coords, info, resource, NULL, NULL, true, 0.0f, 1.0f, false);
				LastObject = LastDebugObject;
			}
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_TOWN_TEMPORARY_POTS: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			MapCoords from;
			MapCoords to;
			Pot*      foodPot = (Pot*)town->GetTemporaryResourceStorePotOrPos(from, to, RESOURCE_TYPE_FOOD);
			Pot*      woodPot = (Pot*)town->GetTemporaryResourceStorePotOrPos(from, to, RESOURCE_TYPE_WOOD);
			if (foodPot != NULL)
			{
				foodPot->AddResource(RESOURCE_TYPE_FOOD, params->number[1], NULL, false, NULL, false);
			}
			if (woodPot != NULL)
			{
				woodPot->AddResource(RESOURCE_TYPE_WOOD, params->number[2], NULL, false, NULL, false);
			}
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_MOBILEOBJECT: {
		coords = GetScriptPos(params->text[0]);
		const GMobileObjectInfo* info = &GMobileObjectInfo::GetInfo()[params->number[1]];
		float                    yAngle = GetSaveFloat(params->number[2]);
		float                    scale = GetSaveFloat(params->number[3]);
		if (info->IsOkToCreateAtPos(coords, yAngle, scale))
		{
			LastDebugObject = MobileObject::Create(coords, info, NULL, yAngle, scale);
			LastObject = LastDebugObject;
		}
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_SCAFFOLD: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		coords = GetScriptPos(params->text[1]);
		const GScaffoldInfo* info = &GScaffoldInfo::GetInfo()[params->number[2]];
		float                yAngle = GetSaveFloat(params->number[3]);
		float                scale = GetSaveFloat(params->number[4]);
		LastDebugObject = Scaffold::Create(coords, info, town, NULL, yAngle, scale);
		LastObject = LastDebugObject;
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_MOBILESTATIC: {
		coords = GetScriptPos(params->text[0]);
		const GMobileStaticInfo* info = &GMobileStaticInfo::GetInfo()[params->number[1]];
		float                    yAngle = params->flt[2];
		float                    scale = params->flt[3];
		LastDebugObject = MobileStatic::Create(coords, info, NULL, NULL, yAngle, scale);
		LastObject = LastDebugObject;
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_MOBILE_STATIC: {
		coords = GetScriptPos(params->text[0]);
		coords.SetAltitude(params->flt[2]);
		const GMobileStaticInfo* info = &GMobileStaticInfo::GetInfo()[params->number[1]];
		float                    yAngle = params->flt[3];
		float                    scale = params->flt[4];
		float                    xAngle = params->flt[5];
		float                    zAngle = params->flt[6];
		LastDebugObject = MobileStatic::Create(coords, info, NULL, NULL, yAngle, scale, xAngle, zAngle);
		LastObject = LastDebugObject;
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_DEAD_TREE: {
		coords = GetScriptPos(params->text[0]);
		GPlayer*         player = GPlayer::GetPlayerFromText(params->text[1]);
		const GTreeInfo* info = &GTreeInfo::GetInfo()[params->number[2]];
		float            yAngle = params->flt[3];
		float            scale = params->flt[4];
		float            xAngle = params->flt[5];
		float            zAngle = params->flt[6];
		LastDebugObject = DeadTree::Create(coords, info, player, yAngle, scale, xAngle, zAngle, NULL);
		LastObject = LastDebugObject;
		return LH_OK;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_CREATURE:
		LastObject =
			Creature::CreateCreature(GetScriptPos(params->text[0]), &CreatureInfo::GetInfo()[params->number[1]],
		                             GGame::g_game->GetPlayer(params->number[2]));
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_CREATURE_FROM_FILE: {
		GPlayer* player = GPlayer::GetPlayerFromText(params->text[0]);
		if (player != NULL && player->ComputerPlayer != NULL)
		{
			CREATURE_TYPE type = (CREATURE_TYPE)params->number[1];
			player->ComputerPlayer->CreateCreatureFromFile(type, GetScriptPos(params->text[3]), params->text[2]);
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_LOAD_LANDSCAPE: {
		GLandscape& landscape = GGame::g_game->landscape;
		strcpy(GLandscape::Filename, params->text[0]);
		landscape.Open(params->text[0]);
	}
	break;
	case SCRIPT_FEATURE_COMMANDS_VERSION:
		LoadedMapVersion = params->flt[0];
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_AREA:
		GameArea::Create(GetScriptPos(params->text[0]), params->flt[1]);
		LastObject = NULL;
		break;
	case SCRIPT_FEATURE_COMMANDS_START_CAMERA_POS:
		GGame::g_game->StartCameraCoords = GetScriptPos(params->text[0]);
		break;
	case SCRIPT_FEATURE_COMMANDS_FLY_BY_FILE:
		strcpy(GGame::g_game->FlyByFilename, params->text[0]);
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_BIG_FOREST: {
		coords = GetScriptPos(params->text[0]);
		const GBigForestInfo* info = &GBigForestInfo::GetInfo()[params->number[1]];
		float                 yAngle = params->flt[2];
		float                 scale = params->flt[3];
		LastDebugObject = BigForest::Create(coords, info, 0, yAngle, scale);
		LastObject = LastDebugObject;
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_NEW_BIG_FOREST: {
		coords = GetScriptPos(params->text[0]);
		const GBigForestInfo* info = &GBigForestInfo::GetInfo()[params->number[1]];
		float                 yAngle = params->flt[3];
		float                 scale = params->flt[4];
		LastDebugObject = BigForest::Create(coords, info, params->number[2], yAngle, scale);
		LastObject = LastDebugObject;
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_INFLUENCE_RING:
		LastObject = InfluenceRing::Create(GetScriptPos(params->text[0]), GGame::g_game->GetPlayer(params->number[1]),
		                                   params->flt[2], (long)params->flt[3]);
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_WEATHER_CLIMATE:
		GClimate::Create(GetScriptPos(params->text[2]), &GClimateInfo::GetInfo()[params->number[1]], params->flt[3],
		                 params->flt[4], 0.0f, params->number[0]);
		LastObject = NULL;
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_WEATHER_CLIMATE_RAIN: {
		RainInfo rain;
		float    amount = params->flt[1];
		rain.Rain = amount;
		rain.TurnsSinceRain = params->number[2];
		rain.TurnsRaining = params->number[3];
		rain.Raining = params->number[4];
		GClimate::AttachRainInfo(rain, params->number[0]);
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_WEATHER_CLIMATE_TEMP: {
		TempInfo temp;
		float    actualTemp = params->flt[1];
		float    goalTemp = params->flt[2];
		temp.ActualTemp = actualTemp;
		temp.GoalTemp = goalTemp;
		GClimate::AttachTempInfo(temp, params->number[0]);
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_WEATHER_CLIMATE_WIND: {
		WindInfo wind;
		float    x = params->flt[1];
		float    z = params->flt[2];
		float    angle = params->flt[3];
		wind.X = x;
		wind.Z = z;
		wind.Angle = angle;
		GClimate::AttachWindInfo(wind, params->number[0]);
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_WEATHER_STORM: {
		LHPoint point;
		GLandscape::ConvertMapCoordToLandscapePoint(GetScriptPos(params->text[1]), point);
		StormInfo info(point, 0.0f, 0.0f);
		info.Clouds = params->number[3];
		sscanf(params->text[4], "%f,%f,%f,%f,%f,%f", &info.InnerRadius, &info.OuterRadius, &info.Fade, &info.Time,
		       &info.Intensity, &info.FallSpeed);
		sscanf(params->text[5], "%f,%f,%f,%f,%f,%f", &info.Shade, &info.Height, &info.ForkLightningMin,
		       &info.ForkLightningMax, &info.SheetLightningMin, &info.SheetLightningMax);
		sscanf(params->text[6], "%d,%d,%d,%d,%d,%d", &info.Weather.Cloud, &info.Weather.Snow, &info.Weather.Temperature,
		       &info.Weather.Rain, &info.Weather.WindX, &info.Weather.WindZ);
		GClimate* climate = GClimate::GetClimateWithId(params->number[0]);
		if (climate != NULL)
		{
			LH3DStorm* storm = LH3DStorm::CreateStorm(info);
			storm->Lifetime = params->flt[2];
			LastObject = NULL;
			storm->Radius = params->flt[7];
			LHPoint destination;
			GLandscape::ConvertMapCoordToLandscapePoint(GetScriptPos(params->text[8]), destination);
			storm->Destination = destination;
			climate->Storms.Add(storm);
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_STREAM:
		NEW(1345 + STREAM_LINE_SHIFT) GStream(params->number[0]);
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_STREAM_POINT: {
		GStream* stream = NULL;
		for (;;)
		{
			stream = GGame::g_game->GameLists.streams.GetNext(stream);
			if (stream == NULL)
			{
				break;
			}
			if (stream->ID == params->number[0])
			{
				LHPoint point;
				GLandscape::ConvertMapCoordToLandscapePoint(GetScriptPos(params->text[1]), point);
				stream->AddPoint(point);
			}
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_WATERFALL:
		LastObject = GWaterfall::Create(GetScriptPos(params->text[0]));
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_ARENA:
		LastObject = GArena::Create(GetScriptPos(params->text[0]), params->flt[1]);
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_FOOTPATH:
		NEW(1370 + STREAM_LINE_SHIFT) GFootpath(NULL, NULL);
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_FOOTPATH_NODE: {
		GFootpath* footpath = NULL;
		for (;;)
		{
			footpath = GGame::g_game->GameLists.footpaths.GetNext(footpath);
			if (footpath == NULL)
			{
				break;
			}
			if (footpath->GetID() == params->number[0])
			{
				footpath->AddPos(GetScriptPos(params->text[1]));
			}
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_BONFIRE:
		LastObject = Bonfire::Create(GetScriptPos(params->text[0]), params->flt[1], params->flt[2], params->flt[3]);
		break;
#ifdef VERSION_BW1WCI
	case SCRIPT_FEATURE_COMMANDS_CREATE_BASE:
		LastObject = GBaseOnly::Create(GetScriptPos(params->text[0]), &GMobileStaticInfo::GetInfo()[params->number[1]],
		                               1.0f, 1.0f);
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_BASE_WITH_ANGLE:
		LastObject = GBaseOnly::Create(GetScriptPos(params->text[0]), &GMobileStaticInfo::GetInfo()[params->number[1]],
		                               params->flt[2], 1.0f);
		break;
#else
	case SCRIPT_FEATURE_COMMANDS_CREATE_BASE:
		LastObject = GBaseOnly::Create(GetScriptPos(params->text[0]),
		                               &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_WATER_JUG]);
		break;
#endif
	case SCRIPT_FEATURE_COMMANDS_CREATE_STREET_LANTERN:
#ifdef VERSION_BW1WCI
		LastObject = GStreetLantern::Create(GetScriptPos(params->text[0]),
		                                    &GMobileStaticInfo::GetInfo()[params->number[1]], 1.0f);
#else
		LastObject =
			GStreetLantern::Create(GetScriptPos(params->text[0]), &GMobileStaticInfo::GetInfo()[params->number[1]]);
#endif
		break;
	case SCRIPT_FEATURE_COMMANDS_CREATE_STREET_LIGHT:
		coords = GetScriptPos(params->text[0]);
		LastObject = GStreetLight::Create(coords);
		break;
	case SCRIPT_FEATURE_COMMANDS_SET_LAND_NUMBER:
		GGame::g_game->LandNumber = params->number[0];
		break;
	case SCRIPT_FEATURE_COMMANDS_LINK_FOOTPATH:
		if (LastObject != NULL)
		{
			long       index = 0;
			GFootpath* footpath = GGame::g_game->GameLists.footpaths.Get();
			while (footpath != NULL)
			{
				if (params->number[0] == index)
				{
					break;
				}
				footpath = footpath->next.Get();
				index++;
			}
			if (footpath != NULL)
			{
				LastObject->AddFootpath(footpath);
			}
		}
		break;
	case SCRIPT_FEATURE_COMMANDS_SET_INTERACT_DESIRE:
		GGame::g_game->data.InteractDesire = params->flt[0];
		break;
	case SCRIPT_FEATURE_COMMANDS_TOGGLE_COMPUTER_PLAYER:
		if (CreateMultiplayerCreatures)
		{
			GPlayer* player = GPlayer::GetPlayerFromText(params->text[0]);
			player->ToggleComputerPlayer(params->number[1]);
		}
		break;
	case SCRIPT_FEATURE_COMMANDS_SET_COMPUTER_PLAYER_CREATURE_LIKE: {
		GPlayer* player = GPlayer::GetPlayerFromText(params->text[0]);
		GPlayer* liked = GPlayer::GetPlayerFromText(params->text[1]);
		if (player != NULL && liked != NULL)
		{
			GComputerPlayer* computerPlayer = player->ComputerPlayer;
			if (computerPlayer != NULL)
			{
				computerPlayer->CreatureSizeMode = liked->GetPlayerNumber();
			}
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_ONE_SHOT_SPELL: {
		coords = GetScriptPos(params->text[0]);
		SPELL_SEED_TYPE seed = GSpellSeedInfo::GetInfoFromText(params->text[1]);
		LastDebugObject = OneOffSpellSeed::Create(coords, seed, POWER_UP_TYPE_NONE, 1.0f);
		LastObject = LastDebugObject;
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_ONE_SHOT_SPELL_PU: {
		coords = GetScriptPos(params->text[0]);
		MAGIC_TYPE magic = GMagicInfo::GetInfoFromText(params->text[1]);
		if (magic > MAGIC_TYPE_NONE && magic < MAGIC_TYPE_LAST)
		{
			SPELL_SEED_TYPE seed = GSpellSeedInfo::GetFirstSpellSeedForMagicType(magic);
			if (seed > SPELL_SEED_TYPE_NONE && seed < SPELL_SEED_TYPE_LAST)
			{
				POWER_UP_TYPE powerUp = GSpellSeedInfo::GetInfo()[seed].GetPowerUpFromMagicType(magic);
				LastDebugObject = OneOffSpellSeed::Create(coords, seed, powerUp, 1.0f);
				LastObject = LastDebugObject;
			}
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_FIRE_FLY_SPELL_REWARD_PROB: {
		MAGIC_TYPE magic = GMagicInfo::GetInfoFromText(params->text[0]);
		float      probability = params->flt[1];
		FireFly::SetSpellRewardProbability(magic, probability);
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_CREATE_FIRE_FLY:
		coords = GetScriptPos(params->text[0]);
		FireFly::Create(coords);
	case SCRIPT_FEATURE_COMMANDS_TOWN_DESIRE_BOOST: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		int   desire = TownDesire::GetDesireFromText(params->text[1]);
		if (town != NULL && desire != TOWN_DESIRE_INFO_NONE)
		{
			town->desire.DesireBoost[desire] = params->flt[2];
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_LOAD_COMPUTER_PLAYER_PERSONALLTY:
		GGame::g_game->GetPlayer(params->number[0])->ComputerPlayer->LoadPersonalltyTree(params->text[1]);
		break;
	case SCRIPT_FEATURE_COMMANDS_SET_COMPUTER_PLAYER_PERSONALLTY: {
		GPlayer* player = GPlayer::GetPlayerFromText(params->text[0]);
		player->ComputerPlayer->SetPersonality(params->text[1], params->flt[2]);
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_SET_GLOBAL_LAND_BALANCE:
		GGame::g_game->SetLandBalance(params->number[0], params->flt[1], NULL);
		break;
	case SCRIPT_FEATURE_COMMANDS_SET_LAND_BALANCE: {
		long  land = params->number[1];
		float balance = params->flt[2];
		if (_strnicmp(params->text[0], "all", sizeof("all") - 1) == 0)
		{
			for (GPlayer* player = GGame::g_game->GetNextPlayer(NULL); player != NULL;
			     player = GGame::g_game->GetNextPlayer(player))
			{
				GGame::g_game->SetLandBalance(land, balance, player);
			}
		}
		else
		{
			GPlayer* player = GPlayer::GetPlayerFromText(params->text[0]);
			if (player != NULL)
			{
				GGame::g_game->SetLandBalance(land, balance, player);
			}
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_SET_TOWN_INFLUENCE_MULTIPLIER:
		GGame::g_game->TownInfluenceMultiplier = params->flt[0];
		break;
#ifdef VERSION_BW1WCI
	case SCRIPT_FEATURE_COMMANDS_SET_A_TOWNS_INFLUENCE_MULTIPLIER: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			town->InfluenceMultiplier = params->flt[1];
			return LH_OK;
		}
		break;
	}
#endif
	case SCRIPT_FEATURE_COMMANDS_SET_PLAYER_INFLUENCE_MULTIPLIER:
		GGame::g_game->PlayerInfluenceMultiplier = params->flt[0];
		break;
	case SCRIPT_FEATURE_COMMANDS_SET_TOWN_BALANCE_BELIEF_SCALE: {
		Town* town = GGame::g_game->FindTownWithID(params->number[0]);
		if (town != NULL)
		{
			town->BalanceBeliefScale = params->flt[1];
		}
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_START_GAME_MESSAGE: {
		if (params->number[1] == SCRIPT_GAME_MESSAGE_TEXT)
		{
			wcscpy(message, CHAR2WCHAR(params->text[0]));
		}
		else
		{
			unsigned long id = HELP_TEXT_LAST_LINES_01;
			switch (params->number[1])
			{
			case SCRIPT_GAME_MESSAGE_ADVISOR:
				id = HELP_TEXT_LAST_LINES_01;
				break;
			case SCRIPT_GAME_MESSAGE_END_OF_GAME_1:
				id = HELP_TEXT_LAST_LINES_02;
				break;
			case SCRIPT_GAME_MESSAGE_END_OF_GAME_2:
				id = HELP_TEXT_LAST_LINES_03;
				break;
			}
			wcscpy(message, HelpTextDataBase::HelpTextDatabase.GetHelpText(id));
		}
		StartGameBox* box = FrontEnd::StartGameDialog;
		DialogBoxBase::HideAll();
		wcscpy(box->text->label, message);
		box->list->DeleteAll();
		box->Show();
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_ADD_GAME_MESSAGE_LINE: {
		if (params->number[1] == SCRIPT_GAME_MESSAGE_TEXT)
		{
			wcscpy(message, CHAR2WCHAR(params->text[0]));
		}
		else
		{
			unsigned long id = HELP_TEXT_LAST_LINES_01;
			switch (params->number[1])
			{
			case SCRIPT_GAME_MESSAGE_ADVISOR:
				id = HELP_TEXT_LAST_LINES_01;
				break;
			case SCRIPT_GAME_MESSAGE_END_OF_GAME_1:
				id = HELP_TEXT_LAST_LINES_02;
				break;
			case SCRIPT_GAME_MESSAGE_END_OF_GAME_2:
				id = HELP_TEXT_LAST_LINES_03;
				break;
			}
			wcscpy(message, HelpTextDataBase::HelpTextDatabase.GetHelpText(id));
		}
		SetupList* list = FrontEnd::StartGameDialog->list;
		list->InsertString(list->NumItems, message);
		list->SetCol(list->NumItems - 1, 0);
		break;
	}
	case SCRIPT_FEATURE_COMMANDS_SET_NIGHTTIME:
		GGameInfo::Info.SetVisualTimeCycleFromMapEditor(params->flt[0], params->flt[1], params->flt[2]);
		break;
	case SCRIPT_FEATURE_COMMANDS_MAKE_LAST_OBJECT_ARTIFACT:
		if (LastObject != NULL && LastObject->IsAvailable() && LastObject->CanBecomeArtifact())
		{
			Fixed* fixed = dynamic_cast<Fixed*>(LastObject);
			if (fixed != NULL)
			{
				Town*         town = GGame::g_game->FindTownWithID(params->number[0]);
				GPlayer*      player = GPlayer::GetPlayerFromText(params->text[1]);
				TownArtifact* artifact;
				if (town == NULL)
				{
					town = GGame::g_game->FindClosestTown(fixed->Pos);
					if (town != NULL && town->GetPlayer() != player)
					{
						town = NULL;
					}
				}
				if (town != NULL)
				{
					artifact = town->AddArtifact(fixed, player);
				}
				else
				{
					artifact = NEW(1653 + ARTIFACT_LINE_SHIFT) TownArtifact(fixed, (Town*)NULL, player);
					fixed->town_artifact = artifact;
				}
				if (artifact != NULL)
				{
					artifact->SetValue(params->flt[2]);
				}
			}
		}
		break;
	case SCRIPT_FEATURE_COMMANDS_SET_LOST_TOWN_SCALE:
		GLandBalance::LostTownScale = params->flt[0];
		break;
	}
	return LH_OK;
}

bool32_t GetFileUpdateTime(char* file_name, FILETIME& time)
{
	WIN32_FIND_DATAA findData;
	HANDLE           handle = FindFirstFileA(file_name, &findData);
	if (handle == INVALID_HANDLE_VALUE)
	{
		return false;
	}
	FindClose(handle);
	time = findData.ftLastWriteTime;
	return true;
}

LH_RETURN GSetup::LoadMapFeatures(char* file_name)
{
	MPDebugLoadState = 0;
	char* pendingName = GGame::g_game->PendingMapFeaturesFile;
	if (pendingName != NULL)
	{
		GGame::g_game->PendingMapFeaturesFile = NULL;
	}
	else
	{
		pendingName = file_name;
	}
	strcpy(MapFilename, pendingName);
	ScriptPosOffset = NULL;
	ScriptPlayerOverride = SCRIPT_OVERRIDE_NONE;
	ScriptTribeOverride = SCRIPT_OVERRIDE_NONE;
	LoadedMapVersion = 0.0f;
	LastObject = NULL;
	GLandBalance::Init();
	LH_RETURN result = LHSys::TheSystem.script.Load(pendingName, FeatureMapCommands, FeatureMapCommandProcess, NULL);
	Town::AsssignTownFeature();
	GGame::g_game->Birthday();
	GPlayer::PostLoadCleanup();
	GStream::CreateAll();
	char* separator = strrchr(MapFilename, '\\');
	if (separator == NULL)
	{
		separator = strrchr(MapFilename, '/');
	}
	if (separator != NULL)
	{
		int index = separator - MapFilename;
		if (index >= 0)
		{
			strcpy(GFootpath::LinkFilename, "data\\landscape\\");
			strcat(GFootpath::LinkFilename, &MapFilename[index + 1]);
			int length = strlen(GFootpath::LinkFilename);
			if (length > FOOTPATH_LINK_EXTENSION_LENGTH)
			{
				GFootpath::LinkFilename[length - FOOTPATH_LINK_EXTENSION_LENGTH] = '.';
				GFootpath::LinkFilename[length - 3] = 'f';
				GFootpath::LinkFilename[length - 2] = 'o';
				GFootpath::LinkFilename[length - 1] = 't';
			}
			GFootpath::LinksLoaded = false;
			FILETIME time;
			if (GetFileUpdateTime(GFootpath::LinkFilename, time) == true)
			{
				GFootpathLink::LoadAll(GFootpath::LinkFilename);
				GFootpath::LinksLoaded = true;
			}
		}
	}
	return result;
}

MapCoords GSetup::GetScriptPos(char* text)
{
	MapCoords coords(text);
	if (ScriptPosOffset != NULL)
	{
		coords += *ScriptPosOffset;
	}
	return coords;
}

int GSetup::GetScriptTribe(int tribe)
{
	return ScriptTribeOverride != SCRIPT_OVERRIDE_NONE ? ScriptTribeOverride : tribe;
}

GPlayer* GSetup::GetScriptPlayer(int player_number)
{
	if (ScriptPlayerOverride != SCRIPT_OVERRIDE_NONE)
	{
		return GGame::g_game->GetPlayer(ScriptPlayerOverride);
	}
	if (player_number >= 0)
	{
		return GGame::g_game->GetPlayer(player_number);
	}
	return NULL;
}

LH_RETURN GSetup::LoadMapFeaturesAt(const MapCoords* offset, int player_number, int tribe, char* file_name)
{
	ScriptPosOffset = offset;
	ScriptPlayerOverride = player_number;
	ScriptTribeOverride = tribe;
	LastObject = NULL;
	return LHSys::TheSystem.script.Load(file_name, FeatureMapCommands, FeatureMapCommandProcess, NULL);
}

bool32_t GSetup::SaveAllMap(char* file_name)
{
	LHReleasedOSFile file;
	unsigned long    numTrees = 0;
	int              numFlockMembers = 0;
	unsigned long    numFeatures = 0;
	unsigned long    numPots = 0;
	unsigned long    numMobileObjects = 0;
	unsigned long    numBigForests = 0;
	if (file.Open(file_name, LH_FILE_MODE_READ_WRITE) != LH_FILE_RESULT_OK)
	{
		return false;
	}
	strcpy(MapFilename, file_name);
	GameThing::GlobalSaveCount++;
	SaveVersion(file);
	GGame::g_game->SaveObject(file, NO_OFFSET);
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		player->SaveObject(file, NO_OFFSET);
	}
	GFootpath::SaveAll(file, NULL);
	int    flockId = 0;
	Flock* flock = NULL;
	while ((flock = GGame::g_game->GameLists.flocks.FindNext(flock)) != NULL)
	{
		flock->ID = flockId++;
		if (flock->SaveObject(file, NO_OFFSET) && flock->GetFlockMembers()->GetSize() != 0)
		{
			flock->GetFlockMembers()->Current = flock->GetFlockMembers()->First;
			Living* member;
			while ((member = flock->GetFlockMembers()->GetCurrent()) != NULL)
			{
				if (member->SaveObject(file, NULL))
				{
					numFlockMembers++;
				}
				flock->GetFlockMembers()->MoveForward();
			}
		}
	}
	for (GBaseOnly* base = GBaseOnly::AllBases.Get(); base != NULL; base = base->next)
	{
		base->SaveObject(file, NULL);
	}
	for (Forest* forest = GGame::g_game->GameLists.forests.GetLast(); forest != NULL;
	     forest = GGame::g_game->GameLists.forests.GetPrevious(forest))
	{
		if (forest->Trees0.GetSize() + forest->Trees1.GetSize() != 0)
		{
			if (forest->SaveObject(file, NO_OFFSET))
			{
				for (Tree* tree = forest->GetNextTree(NULL); tree != NULL; tree = forest->GetNextTree(tree))
				{
					if (tree->SaveObject(file, NULL))
					{
						numTrees++;
					}
				}
			}
		}
	}
	for (Field* field = GGame::g_game->GameLists.fields.GetLast(); field != NULL;
	     field = GGame::g_game->GameLists.fields.GetPrevious(field))
	{
		field->SaveObject(file, NULL);
	}
	for (FishFarm* farm = GGame::g_game->GameLists.FishFarms.Get(); farm != NULL;
	     farm = GGame::g_game->GameLists.FishFarms.GetPrevious(farm))
	{
		farm->SaveObject(file, NULL);
	}
	AnimatedStatic* animated = NULL;
	while ((animated = GGame::g_game->GameLists.AnimatedStatics.FindNext(animated)) != NULL)
	{
		animated->SaveObject(file, NULL);
	}
	GStream::SaveAll(file);
	GWaterfall::SaveAll(file);
	GArena::SaveAll(file);
	for (InfluenceRing* ring = GGame::g_game->GameLists.InfluenceRingList.GetLast(); ring != NULL;
	     ring = GGame::g_game->GameLists.InfluenceRingList.GetPrevious(ring))
	{
		ring->SaveObject(file, NO_OFFSET);
	}
	for (FireFly* fly = GGame::g_game->GameLists.FireFlies.GetLast(); fly != NULL;
	     fly = GGame::g_game->GameLists.FireFlies.GetPrevious(fly))
	{
		fly->SaveObject(file, NULL);
	}
	FireFly::SaveSpellRewardProbs(file);
	for (MapCell* cell = GGame::g_game->map.ToMap(0, 0);
	     cell <=
	     GGame::g_game->map.ToMap(GGame::g_game->map.CellExtentZx[0] - 1, GGame::g_game->map.CellExtentZx[1] - 1);
	     cell++)
	{
		SaveMapCell(file, cell, numFeatures, numPots, numMobileObjects, numTrees, numBigForests, NO_OFFSET);
	}
	Mist::SaveAllMists(file, NO_OFFSET);
	GameArea::SaveAll(file, NO_OFFSET);
	GClimate::SaveAllObjectTextFile(file, NO_OFFSET);
	BigForest::SaveAll(file, NO_OFFSET);
	for (GStreetLantern* lantern = GGame::g_game->GameLists.StreetLanterns.GetLast(); lantern != NULL;
	     lantern = GGame::g_game->GameLists.StreetLanterns.GetPrevious(lantern))
	{
		lantern->SaveObject(file, NULL);
	}
	GStreetLight::SaveAllStreetLights(file, NO_OFFSET);
	for (WayPoint* waypoint = GGame::g_game->GameLists.waypoints.Get(); waypoint != NULL;
	     waypoint = waypoint->next.Get())
	{
		waypoint->SaveObject(file, NO_OFFSET);
	}
	file.Close();
	return true;
}

void GSetup::SaveMapCell(LHOSFile& file, MapCell* cell, unsigned long& num_features, unsigned long& num_pots,
                         unsigned long& num_mobile_objects, unsigned long& num_trees, unsigned long& num_big_forests,
                         const MapCoords& coords)
{
	for (Feature* feature = dynamic_cast<Feature*>(cell->FindTypeOnMap(OBJECT_TYPE_FEATURE, NULL)); feature != NULL;
	     feature = dynamic_cast<Feature*>(cell->FindTypeOnMap(OBJECT_TYPE_FEATURE, feature)))
	{
		if (feature->MultiChildrenArray.array->coords.x == cell->GetX() &&
		    feature->MultiChildrenArray.array->coords.z == cell->GetZ() && feature->SaveObject(file, &coords))
		{
			num_features++;
		}
	}
	for (Pot* pot = dynamic_cast<Pot*>(cell->FindTypeOnMap(OBJECT_TYPE_POT, NULL)); pot != NULL;
	     pot = dynamic_cast<Pot*>(cell->FindTypeOnMap(OBJECT_TYPE_POT, pot)))
	{
		if (pot->SaveObject(file, &coords))
		{
			num_pots++;
		}
	}
	for (MobileObject* mobile = dynamic_cast<MobileObject*>(cell->FindTypeOnMap(OBJECT_TYPE_MOBILE_OBJECT, NULL));
	     mobile != NULL; mobile = dynamic_cast<MobileObject*>(cell->FindTypeOnMap(OBJECT_TYPE_MOBILE_OBJECT, mobile)))
	{
		if (mobile->SaveObject(file, &coords))
		{
			num_mobile_objects++;
		}
	}
	for (MobileStatic* mobileStatic = dynamic_cast<MobileStatic*>(cell->FindTypeOnMap(OBJECT_TYPE_MOBILE_STATIC, NULL));
	     mobileStatic != NULL;
	     mobileStatic = dynamic_cast<MobileStatic*>(cell->FindTypeOnMap(OBJECT_TYPE_MOBILE_STATIC, mobileStatic)))
	{
		if (mobileStatic->Player == NULL)
		{
			mobileStatic->SaveObject(file, &coords);
		}
	}
	for (OneOffSpellSeed* seed = dynamic_cast<OneOffSpellSeed*>(cell->FindTypeOnMap(OBJECT_TYPE_ONE_OFF_SPELL, NULL));
	     seed != NULL; seed = dynamic_cast<OneOffSpellSeed*>(cell->FindTypeOnMap(OBJECT_TYPE_ONE_OFF_SPELL, seed)))
	{
		seed->SaveObject(file, &coords);
	}
	for (Tree* tree = dynamic_cast<Tree*>(cell->FindTypeOnMap(OBJECT_TYPE_FOREST_TREE, NULL)); tree != NULL;
	     tree = dynamic_cast<Tree*>(cell->FindTypeOnMap(OBJECT_TYPE_FOREST_TREE, tree)))
	{
		if (tree->GetForest() == NULL && tree->Pos.IsEqual(cell) && tree->SaveObject(file, &coords))
		{
			num_trees++;
		}
	}
	for (BigForest* forest = dynamic_cast<BigForest*>(cell->FindTypeOnMap(OBJECT_TYPE_BIG_FOREST, NULL));
	     forest != NULL; forest = dynamic_cast<BigForest*>(cell->FindTypeOnMap(OBJECT_TYPE_BIG_FOREST, forest)))
	{
		if (forest->SaveObject(file, &coords))
		{
			num_big_forests++;
		}
	}
#ifdef VERSION_BW1WCI
	for (CreatureIslesBuilding* building =
	         dynamic_cast<CreatureIslesBuilding*>(cell->FindTypeOnMap(OBJECT_TYPE_CREATURE_ISLES_BUILDING, NULL));
	     building != NULL; building = dynamic_cast<CreatureIslesBuilding*>(
							   cell->FindTypeOnMap(OBJECT_TYPE_CREATURE_ISLES_BUILDING, building)))
	{
		if (building->MultiChildrenArray.array->coords.x == cell->GetX() &&
		    building->MultiChildrenArray.array->coords.z == cell->GetZ())
		{
			building->SaveObject(file, &coords);
		}
	}
#endif
}

LH_RETURN __cdecl GSetup::BrushSizeCommandProcess(long command, LHScriptPramX<char>* params)
{
	if (command != SCRIPT_FEATURE_COMMANDS_BRUSH_SIZE)
	{
		return LH_OK;
	}
	RandomBuildingPlacement::BrushWidth = params->flt[0];
	RandomBuildingPlacement::BrushDepth = params->flt[1];
	if (RandomBuildingPlacement::BrushWidth < RandomBuildingPlacement::BrushDepth)
	{
		RandomBuildingPlacement::BrushRadius = RandomBuildingPlacement::BrushWidth * 0.5f;
	}
	else
	{
		RandomBuildingPlacement::BrushRadius = RandomBuildingPlacement::BrushDepth * 0.5f;
	}
	return LH_FAIL;
}

bool32_t GSetup::LoadBrushSize(char* file_name)
{
	return LHSys::TheSystem.script.Load(file_name, FeatureMapCommands, BrushSizeCommandProcess, NULL) == LH_OK;
}

bool32_t GSetup::SaveMapRegion(char* file_name, const MapCoords& corner_a, const MapCoords& corner_b)
{
	LHReleasedOSFile      file;
	char                  text[100];
	LHLinkedList<Town*>   towns;
	LHLinkedList<Object*> objects;
	if (file.Open(file_name, LH_FILE_MODE_READ_WRITE) != LH_FILE_RESULT_OK)
	{
		return false;
	}
	GameThing::GlobalSaveCount++;
	uint32_t cellMinX = min(corner_a.MapX(), corner_b.MapX());
	uint32_t cellMaxX = max(corner_a.MapX(), corner_b.MapX());
	uint32_t cellMinZ = min(corner_a.MapZ(), corner_b.MapZ());
	uint32_t cellMaxZ = max(corner_a.MapZ(), corner_b.MapZ());
	float    minX = min(corner_a.MetersX(), corner_b.MetersX());
	float    minZ = min(corner_a.MetersZ(), corner_b.MetersZ());
	sprintf(text, GetCommandAsText(SCRIPT_FEATURE_COMMANDS_BRUSH_SIZE), fabs(corner_b.MetersX() - corner_a.MetersX()),
	        fabs(corner_b.MetersZ() - corner_a.MetersZ()));
	file.Write(text, strlen(text), NULL);
	MapCoords origin(minX, minZ);
	for (unsigned short x = cellMinX; x <= cellMaxX; x++)
	{
		for (unsigned short z = cellMinZ; z <= cellMaxZ; z++)
		{
			MapCoords cell(x, z);
			for (Object* object = cell.FindType(OBJECT_TYPE_ANY, NULL); object != NULL;
			     object = cell.FindType(OBJECT_TYPE_ANY, object))
			{
				if (object->IsTouching(corner_a, corner_b) && !objects.Contains(object))
				{
					objects.Add(object);
				}
			}
		}
	}
	for (Object* object = objects.FindNext(NULL); object != NULL; object = objects.FindNext(object))
	{
		if (object->GetTown() != NULL && !towns.Contains(object->GetTown()))
		{
			towns.Add(object->GetTown());
		}
	}
	for (Town* town = towns.FindNext(NULL); town != NULL; town = towns.FindNext(town))
	{
		town->SaveObject(file, origin);
	}
	towns.RemoveAll();
	for (Object* saved = objects.FindNext(NULL); saved != NULL; saved = objects.FindNext(saved))
	{
		saved->SaveObject(file, &origin);
	}
	objects.RemoveAll();
	file.Close();
	return true;
}

bool32_t GSetup::LoadMapFeaturesForPlayer(char* file_name, const MapCoords* offset, GPlayer* player)
{
	ScriptPosOffset = offset;
	if (player != NULL)
	{
		ScriptPlayerOverride = player->GetPlayerNumber();
	}
	else
	{
		ScriptPlayerOverride = PLAYER_NAME_NEUTRAL;
	}
	ScriptTribeOverride = SCRIPT_OVERRIDE_NONE;
	LastObject = NULL;
	return LHSys::TheSystem.script.Load(file_name, FeatureMapCommands, FeatureMapCommandProcess, NULL) == LH_OK;
}

bool32_t GSetup::SaveTownFile(char* file_name, Town* town)
{
	LHReleasedOSFile file;
	if (town == NULL || file.Open(file_name, LH_FILE_MODE_READ_WRITE) != LH_FILE_RESULT_OK)
	{
		return false;
	}
	GameThing::GlobalSaveCount++;
	uint32_t savedId = town->ID;
	town->ID = town->Pos.WholeX() + GGame::g_game->data.GameTurn + GAME_RAND(2170 + TOWN_ID_LINE_SHIFT, 10000);
	MapCoords centre = town->GetAreaCentre();
	town->SaveTown(file, centre);
	town->ID = savedId;
	file.Close();
	return true;
}

void wcscpy_with_return_convert(wchar_t* dst, wchar_t* src)
{
	while (*src != L'\0')
	{
		if (*src == L' ' && src[1] == L'~')
		{
			*dst++ = SCRIPT_TEXT_NON_BREAKING_SPACE;
			src += 2;
		}
		else if (*src == L'~' && src[1] == L' ')
		{
			*dst++ = SCRIPT_TEXT_NON_BREAKING_SPACE;
			src += 2;
		}
		else if (*src == L'\\' && src[1] == L'n')
		{
			*dst++ = L'\n';
			src += 2;
		}
		else
		{
			if (*src == L'~')
			{
				*dst = SCRIPT_TEXT_NON_BREAKING_SPACE;
			}
			else
			{
				*dst = *src;
			}
			dst++;
			src++;
		}
	}
	*dst = 0;
}

bool32_t GSetup::LoadTextScripts()
{
#ifdef VERSION_BW1W100
	return LHSys::TheSystem.wscript.Load("scripts/InfoScript2.txt", FeatureTextCommands, feature_text_command_process,
	                                     NULL) == LH_OK;
#else
#if defined(VERSION_BW1W130)
	if (LHSys::TheSystem.GloveActive)
	{
		if (LHSys::TheSystem.wscript.Load("scripts/InfoScript2Glove.txt", FeatureTextCommands,
		                                  feature_text_command_process, NULL) == LH_OK)
		{
			LHSys::TheSystem.wscript.Load("scripts/InfoScriptPatch2.txt", FeatureTextCommands,
			                              feature_text_command_process_patch, NULL);
			LHSys::TheSystem.wscript.Load("scripts/InfoScriptMultiplayer2.txt", FeatureTextCommands,
			                              feature_text_command_process_multiplayer, NULL);
			return true;
		}
	}
	else
#endif
	{
		if (LHSys::TheSystem.wscript.Load("scripts/InfoScript2.txt", FeatureTextCommands, feature_text_command_process,
		                                  NULL) == LH_OK)
		{
			LHSys::TheSystem.wscript.Load("scripts/InfoScriptPatch2.txt", FeatureTextCommands,
			                              feature_text_command_process_patch, NULL);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
			LHSys::TheSystem.wscript.Load("scripts/InfoScriptMultiplayer2.txt", FeatureTextCommands,
			                              feature_text_command_process_multiplayer, NULL);
#endif
			return true;
		}
	}
	return false;
#endif
}

static LH_RETURN feature_text_command_process(long command, LHScriptPramX<wchar_t>* params)
{
	wchar_t speech[SCRIPT_TEXT_BUFFER_LENGTH];
	wchar_t text[SCRIPT_TEXT_BUFFER_LENGTH];
	switch (command)
	{
	case SCRIPT_TEXT_COMMANDS_NUM_ENTRIES:
		HelpTextDataBase::HelpTextDatabase.Init(params->number[0]);
		HelpTextDataBase::CurrentEntry = 0;
		break;
	case SCRIPT_TEXT_COMMANDS_ADD_TEXT:
		wcscpy_with_return_convert(text, params->text[2]);
		wcscpy_with_return_convert(speech, params->text[3]);
		HelpTextDataBase::HelpTextDatabase.SetData(params->number[0], HelpTextDataBase::CurrentEntry++,
		                                           (HELP_TEXT_NARRATOR)params->number[1], text, speech);
		break;
	}
	return LH_OK;
}

#ifndef VERSION_BW1W100
static LH_RETURN feature_text_command_process_patch(long command, LHScriptPramX<wchar_t>* params)
{
	wchar_t speech[SCRIPT_TEXT_BUFFER_LENGTH];
	wchar_t text[SCRIPT_TEXT_BUFFER_LENGTH];
	switch (command)
	{
	case SCRIPT_TEXT_COMMANDS_NUM_ENTRIES:
		HelpTextDataBase::PatchTextDatabase.Init(params->number[0]);
		HelpTextDataBase::CurrentPatchEntry = 0;
		break;
	case SCRIPT_TEXT_COMMANDS_ADD_TEXT:
		wcscpy_with_return_convert(text, params->text[2]);
		wcscpy_with_return_convert(speech, params->text[3]);
		HelpTextDataBase::PatchTextDatabase.SetData(params->number[0], HelpTextDataBase::CurrentPatchEntry++,
		                                            (HELP_TEXT_NARRATOR)params->number[1], text, speech);
		break;
	}
	return LH_OK;
}
#endif

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
static LH_RETURN feature_text_command_process_multiplayer(long command, LHScriptPramX<wchar_t>* params)
{
	wchar_t speech[SCRIPT_TEXT_BUFFER_LENGTH];
	wchar_t text[SCRIPT_TEXT_BUFFER_LENGTH];
	switch (command)
	{
	case SCRIPT_TEXT_COMMANDS_NUM_ENTRIES:
		HelpTextDataBase::MultiplayerTextDatabase.Init(params->number[0]);
		HelpTextDataBase::CurrentMultiplayerEntry = 0;
		break;
	case SCRIPT_TEXT_COMMANDS_ADD_TEXT:
		wcscpy_with_return_convert(text, params->text[2]);
		wcscpy_with_return_convert(speech, params->text[3]);
		HelpTextDataBase::MultiplayerTextDatabase.SetData(params->number[0],
		                                                  HelpTextDataBase::CurrentMultiplayerEntry++,
		                                                  (HELP_TEXT_NARRATOR)params->number[1], text, speech);
		break;
	}
	return LH_OK;
}
#endif

uint32_t GSetup::WriteToFile(void* thing, LHOSFile& file, void* data, unsigned long size)
{
	return file.Write(data, size, NULL);
}
