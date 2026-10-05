#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "Balance.h"

#include <io.h>     /* For _unlink */
#include <stdio.h>  /* For rename */
#include <stdlib.h> /* For getenv */

#include <re_common.h> /* For ARRAY_SIZE */

#include <Lionhead/LHFile/ver3.0/LHDir.h>            /* For struct LHDir */
#include <Lionhead/LHFile/ver3.0/LHFile.h>           /* For struct LHFile */
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h>   /* For struct LHReleasedFile */
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */
#include <Lionhead/LHLib/ver5.0/LHWin.h>             /* For operator new(size_t, const char*, uint32_t) */

#include "GameTimeConstants.h"
#include "ColourConstants.h" /* For White */

#include "AbodeInfo.h"
#include "AlignmentInfo.h"
#include "AnimalInfo.h"
#include "AnimalStateTableInfo.h"
#include "AnimatedStaticInfo.h"
#include "ArrowInfo.h"
#include "BallInfo.h"
#include "BeliefInfo.h"
#include "BigForestInfo.h"
#include "CitadelHeartInfo.h"
#include "CitadelInfo.h"
#include "ClimateInfo.h"
#include "Creature.h"
#include "CreatureAction.h"
#include "CreatureActionInfo.h"
#include "CreatureDevelopment.h"
#include "CreatureInfo.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureInitialSourceInfo.h"
#include "CreatureMentalDesire.h"
#include "CreatureMentalLearnAction.h"
#include "CreatureMimicInfo.h"
#include "CreaturePenInfo.h"
#include "CreatureSourceBoundsInfo.h"
#include "DanceInfo.h"
#include "DifferentCreatureInfo.h"
#include "EffectInfo.h"
#include "FeatureInfo.h"
#include "FieldInfo.h"
#include "FieldTypeInfo.h"
#include "FishFarmInfo.h"
#include "FlowersInfo.h"
#include "FootballInfo.h"
#include "FootballPositionInfo.h"
#include "FurnitureInfo.h"
#include "HelpSpiritInfo.h"
#include "HelpSpritesGuidance.h"
#include "HelpSystemInfo.h"
#include "InfluenceInfo.h"
#include "JobInfo.h"
#include "LeashSelectorInfo.h"
#include "LoaderAnon.h"
#include "MagicCreatureSpellInfo.h"
#include "MagicEffectInfo.h"
#include "MagicFireBallInfo.h"
#include "MagicFlockFlyingInfo.h"
#include "MagicFlockGroundInfo.h"
#include "MagicForestInfo.h"
#include "MagicHealInfo.h"
#include "MagicInfo.h"
#include "MagicResourceInfo.h"
#include "MagicShieldInfo.h"
#include "MagicStormAndTornadoInfo.h"
#include "MagicTeleportInfo.h"
#include "MagicWaterInfo.h"
#include "MapShieldInfo.h"
#include "MobileObjectInfo.h"
#include "MobileStaticInfo.h"
#include "ObjectInfo.h"
#include "PlayerInfo.h"
#include "PlaytimeInfo.h"
#include "PotInfo.h"
#include "PrayerIconInfo.h"
#include "PrayerSiteInfo.h"
#include "ReactionInfo.h"
#include "Reward.h"
#include "RewardInfo.h"
#include "ScaffoldInfo.h"
#include "Script.h"
#include "ScriptHighlightInfo.h"
#include "ShowNeedsInfo.h"
#include "SingleMapFixedInfo.h"
#include "SoundInfo.h"
#include "SpecialVillagerInfo.h"
#include "SpeedThreshold.h"
#include "SpellIconInfo.h"
#include "SpellSeedInfo.h"
#include "SpellSystemInfo.h"
#include "SpookyVoiceInfo.h"
#include "SpotVisualInfo.h"
#include "TerrainMaterialInfo.h"
#include "ToolTipsInfo.h"
#include "TotemStatueInfo.h"
#include "TownDesireInfo.h"
#include "TownInfo.h"
#include "TreeInfo.h"
#include "TribeInfo.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"
#include "VortexInfo.h"
#include "WeatherInfo.h"
#include "WorshipSiteInfo.h"
#include "WorshipSiteUpgradeInfo.h"

// Each info file missing from the older releases' table is a line less above load_variables.
#if defined(VERSION_BW1W100)
#define BALANCE_LOADER_LINE 529
#elif defined(VERSION_BW1W110)
#define BALANCE_LOADER_LINE 530
#else
#define BALANCE_LOADER_LINE 531
#endif

GLeashSelectorInfo GLeashSelectorInfo::Instance;

template <class T>
void LoadMagic(T* dummy, LoaderAnon* loader, char* info_str, unsigned long count, GMagicInfo** infos,
               unsigned long start, bool use_binary, LHFile* file)
{
	if (use_binary)
	{
		for (unsigned long i = 0; i < count; i++)
		{
			T* info = new (INFO_SOURCE_PATH "Balance.cpp", 159) T;
			info->LoadBinary(file);
			infos[start + i] = info;
		}
	}
	else
	{
		for (unsigned long i = 0; i < count; i++)
		{
			T* info = new (INFO_SOURCE_PATH "Balance.cpp", 171) T;
			loader->Cursor = loader->TextBuffer;
			unsigned long size = loader->LoadData(info_str, i, (unsigned long*)loader->Cursor);
			if (size == 0)
				return;
			if (info->Load(&loader->Cursor, file) != size)
				loader->ErrorCount++;
			infos[start + i] = info;
		}
	}
}

template <class T>
void LoadIt(LoaderAnon* loader, char* info_str, T* info_array, unsigned long count, bool use_binary, LHFile* file)
{
	if (use_binary)
	{
		for (unsigned long i = 0; i < count; i++)
			info_array[i].LoadBinary(file);
	}
	else
	{
		for (unsigned long i = 0; i < count; i++)
		{
			loader->Cursor = loader->TextBuffer;
			unsigned long size = loader->LoadData(info_str, i, (unsigned long*)loader->Cursor);
			if (size)
			{
				if (info_array[i].Load(&loader->Cursor, file) != size)
					loader->ErrorCount++;
			}
			else
			{
				loader->ErrorCount++;
				return;
			}
		}
	}
}

char GInfoFileTable::InfoFiles[][GInfoFileTable::FILE_NAME_LENGTH] = {
	"scripts\\InfoHelp1.txt",
	"scripts\\InfoScript1.txt",
	"scripts\\Info1.txt",
	"scripts\\Info2.txt",
	"scripts\\Info3.txt",
	"scripts\\Info4.txt",
	"scripts\\Info5.txt",
	"scripts\\Info6.txt",
	"scripts\\Info7.txt",
	"scripts\\Info8.txt",
	"scripts\\Info9.txt",
	"scripts\\InfoCreature1.txt",
	"scripts\\InfoCreature2.txt",
#ifndef VERSION_BW1W100
	"scripts\\InfoScriptPatch1.txt",
#endif
#ifdef VERSION_BW1W120
	"scripts\\InfoScriptMultiplayer1.txt",
#endif
	"",
};

void generate_variable_ammendments(void)
{
	for (int i = MAGIC_TYPE_FIREBALL; i < MAGIC_TYPE_LAST; i++)
	{
		SPELL_SEED_TYPE seed = GSpellSeedInfo::GetFirstSpellSeedForMagicType((MAGIC_TYPE)i);
		if (seed != -1 && GMagicInfo::Infos[i] != NULL)
			GMagicInfo::Infos[i]->SpellSeedType = seed;

		POWER_UP_TYPE power_up = (POWER_UP_TYPE)-1;
		GESTURE_TYPE  gesture = GSpellSeedInfo::GetFirstGestureForMagicType((MAGIC_TYPE)i, &power_up);
		if (gesture != 0 && GMagicInfo::Infos[i] != NULL)
		{
			GMagicInfo::Infos[i]->GestureType = gesture;
			GMagicInfo::Infos[i]->PowerUpType = power_up;
		}
	}
}

void load_variables(void)
{
	char dat_name[] = "scripts\\info.dat";
	char tmp_name[] = "scripts\\info.tmp";

	LHReleasedFile file;
	file.SetName(dat_name);

	unsigned long num_files = GInfoFileTable::GetNoOfElementsInInfoFileTable();

	LHReleasedOSFile os_file;
	bool             use_binary = true;
	bool             had_errors = false;
	LHDir            tmp_dir;
	if (os_file.DirFindFirst(tmp_name, &tmp_dir, -1) != LH_FILE_RESULT_OK)
	{
		num_files = 0;
		use_binary = false;
	}
	os_file.DirFindEnd(&tmp_dir);

	LHDir dir;
	if (os_file.DirFindFirst("Balance.cpp", &dir, -1) == LH_FILE_RESULT_OK)
	{
		if (dir.WriteTime.year != tmp_dir.WriteTime.year)
		{
			if (dir.WriteTime.year > tmp_dir.WriteTime.year)
				use_binary = false;
		}
		else if (dir.WriteTime.month != tmp_dir.WriteTime.month)
		{
			if (dir.WriteTime.month > tmp_dir.WriteTime.month)
				use_binary = false;
		}
		else if (dir.WriteTime.day != tmp_dir.WriteTime.day)
		{
			if (dir.WriteTime.day > tmp_dir.WriteTime.day)
				use_binary = false;
		}
		else if (dir.WriteTime.hour != tmp_dir.WriteTime.hour)
		{
			if (dir.WriteTime.hour > tmp_dir.WriteTime.hour)
				use_binary = false;
		}
		else if (dir.WriteTime.minute != tmp_dir.WriteTime.minute)
		{
			if (dir.WriteTime.minute > tmp_dir.WriteTime.minute)
				use_binary = false;
		}
		else if (dir.WriteTime.second != tmp_dir.WriteTime.second)
		{
			if (dir.WriteTime.second > tmp_dir.WriteTime.second)
				use_binary = false;
		}
		os_file.DirFindEnd(&dir);
	}

	bool searched = false;
	if (os_file.DirFindFirst(".\\scripts\\info*.txt", &dir, -1) != LH_FILE_RESULT_OK)
		num_files = 0;
	while (num_files > 0)
	{
		searched = true;
		if (GInfoFileTable::FindInfoFile(dir.name) != -1)
		{
			if (dir.WriteTime.year != tmp_dir.WriteTime.year)
			{
				if (dir.WriteTime.year > tmp_dir.WriteTime.year)
				{
					use_binary = false;
					break;
				}
			}
			else if (dir.WriteTime.month != tmp_dir.WriteTime.month)
			{
				if (dir.WriteTime.month > tmp_dir.WriteTime.month)
				{
					use_binary = false;
					break;
				}
			}
			else if (dir.WriteTime.day != tmp_dir.WriteTime.day)
			{
				if (dir.WriteTime.day > tmp_dir.WriteTime.day)
				{
					use_binary = false;
					break;
				}
			}
			else if (dir.WriteTime.hour != tmp_dir.WriteTime.hour)
			{
				if (dir.WriteTime.hour > tmp_dir.WriteTime.hour)
				{
					use_binary = false;
					break;
				}
			}
			else if (dir.WriteTime.minute != tmp_dir.WriteTime.minute)
			{
				if (dir.WriteTime.minute > tmp_dir.WriteTime.minute)
				{
					use_binary = false;
					break;
				}
			}
			else if (dir.WriteTime.second != tmp_dir.WriteTime.second)
			{
				if (dir.WriteTime.second > tmp_dir.WriteTime.second)
				{
					use_binary = false;
					break;
				}
			}
			num_files--;
		}
		if (os_file.DirFindNext(&dir) != LH_FILE_RESULT_OK && num_files != 0)
			break;
	}
	if (searched)
		os_file.DirFindEnd(&dir);

	char*       load_id = getenv("LH_LOADID");
	LoaderAnon* loader =
		new (INFO_SOURCE_PATH "Balance.cpp", BALANCE_LOADER_LINE) LoaderAnon((char*)"DETAIL_", (char*)"ENUM_", load_id);

	if (use_binary)
	{
		file.Open(LH_FILE_MODE_READ_ONLY);
	}
	else
	{
		for (unsigned long i = 0; i < (unsigned long)GInfoFileTable::GetNoOfElementsInInfoFileTable(); i++)
			loader->ReadVariableFile(GInfoFileTable::GetInfoFile() + i * GInfoFileTable::FILE_NAME_LENGTH);
		file.SetName(tmp_name);
		file.Open(LH_FILE_MODE_READ_WRITE);
	}
	file.OpenSegment((char*)"Info");

	LoadMagic((GMagicInfo*)NULL, loader, (char*)"DETAIL_MAGIC_GENERAL_INFO", 10, GMagicInfo::Infos, MAGIC_TYPE_NONE,
	          use_binary, &file);
	LoadMagic((GMagicHealInfo*)NULL, loader, (char*)"DETAIL_MAGIC_HEAL_INFO", 2, GMagicInfo::Infos, MAGIC_TYPE_HEAL,
	          use_binary, &file);
	LoadMagic((GMagicTeleportInfo*)NULL, loader, (char*)"DETAIL_MAGIC_TELEPORT_INFO", 1, GMagicInfo::Infos,
	          MAGIC_TYPE_TELEPORT, use_binary, &file);
	LoadMagic((GMagicForestInfo*)NULL, loader, (char*)"DETAIL_MAGIC_FOREST_INFO", 1, GMagicInfo::Infos,
	          MAGIC_TYPE_FOREST, use_binary, &file);
	LoadMagic((GMagicResourceInfo*)NULL, loader, (char*)"DETAIL_MAGIC_FOOD_INFO", 2, GMagicInfo::Infos, MAGIC_TYPE_FOOD,
	          use_binary, &file);
	LoadMagic((GMagicStormAndTornadoInfo*)NULL, loader, (char*)"DETAIL_MAGIC_STORM_AND_TORNADO_INFO", 3,
	          GMagicInfo::Infos, MAGIC_TYPE_STORM_WIND_RAIN, use_binary, &file);
	LoadMagic((GMagicShieldInfo*)NULL, loader, (char*)"DETAIL_MAGIC_SHIELD_ONE_INFO", 2, GMagicInfo::Infos,
	          MAGIC_TYPE_SHIELD, use_binary, &file);
	LoadMagic((GMagicResourceInfo*)NULL, loader, (char*)"DETAIL_MAGIC_WOOD_INFO", 1, GMagicInfo::Infos, MAGIC_TYPE_WOOD,
	          use_binary, &file);
	LoadMagic((GMagicWaterInfo*)NULL, loader, (char*)"DETAIL_MAGIC_WATER_INFO", 2, GMagicInfo::Infos, MAGIC_TYPE_WATER,
	          use_binary, &file);
	LoadMagic((GMagicFlockFlyingInfo*)NULL, loader, (char*)"DETAIL_MAGIC_FLOCK_FLYING_INFO", 1, GMagicInfo::Infos,
	          MAGIC_TYPE_FLOCK_FLYING, use_binary, &file);
	LoadMagic((GMagicFlockGroundInfo*)NULL, loader, (char*)"DETAIL_MAGIC_FLOCK_GROUND_INFO", 1, GMagicInfo::Infos,
	          MAGIC_TYPE_FLOCK_GROUND, use_binary, &file);
	LoadMagic((GMagicCreatureSpellInfo*)NULL, loader, (char*)"DETAIL_MAGIC_CREATURE_SPELL_INFO", 16, GMagicInfo::Infos,
	          MAGIC_TYPE_CREATURE_SPELL_FREEZE, use_binary, &file);
	if (loader->ErrorCount)
		had_errors = true;

#define LOAD_INFO_ARRAY(info_str, info_array)                                                                          \
	LoadIt(loader, (char*)info_str, info_array, ARRAY_SIZE(info_array), use_binary, &file)
	LOAD_INFO_ARRAY("DETAIL_MAGIC_EFFECT_INFO", GMagicEffectInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_SPELL_SEEDS", GSpellSeedInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_ANIMAL_INFO", GAnimalInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_INFO", CreatureInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_BALANCE", DifferentCreatureInfo::Infos);
	Creature::CopyDifferentCreatureInfoToCreatureInfo();
	LOAD_INFO_ARRAY("DETAIL_CREATURE_DESIRE_INITIAL_CYCLE_TIME", CreatureDesireForType::InitialIncreaseTime);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_DEVELOPMENT", CreatureDevelopmentPhaseEntry::Infos);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_DEVELOPS_TIME", CreatureDevelopmentDurationEntry::Infos);
	LOAD_INFO_ARRAY("DETAIL_CITADEL_INFO", GCitadelInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_CITADEL_HEART_INFO", GCitadelHeartInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_PEN_INFO", GCreaturePenInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_WORSHIP_SITE_INFO", GWorshipSiteInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_SPELL_ICON_INFO", GSpellIconInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_ABODE_INFO", GAbodeInfo::AbodeInfos);
	LOAD_INFO_ARRAY("DETAIL_VILLAGER_INFO", GVillagerInfo::InfoList);
	LOAD_INFO_ARRAY("DETAIL_SPECIAL_VILLAGER_INFO", GSpecialVillagerInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_TREE_INFO", GTreeInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_MISC_INFO", GSingleMapFixedInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_HIGHLIGHT_INFO", GScriptHighlightInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_MAP_SHIELD_INFO", GMapShieldInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_BALL_INFO", GBallInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_TOWN_INFO", GTownInfo::Definitions);
	LOAD_INFO_ARRAY("DETAIL_JOB_INFO", GJobInfo::InfoList);
	LOAD_INFO_ARRAY("DETAIL_FEATURE_INFO", GFeatureInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_FLOWERS_INFO", GFlowersInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_ANIMATED_STATIC_INFO", GAnimatedStaticInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_MOBILE_OBJECT_INFO", GMobileObjectInfo::InfoList);
	LOAD_INFO_ARRAY("DETAIL_SCAFFOLD_INFO", GScaffoldInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_MOBILE_STATIC_INFO", GMobileStaticInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_POT_INFO", GPotInfo::InfoList);
	LOAD_INFO_ARRAY("DETAIL_PRAYER_ICON_INFO", GPrayerIconInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_PRAYER_SITE_INFO", GPrayerSiteInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_SHOW_NEEDS_INFO", GShowNeedsInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_TOWN_DESIRE_INFO", GTownDesireInfo::InfoList);
	LOAD_INFO_ARRAY("DETAIL_WORSHIP_SITE_UPGRADE_INFO", GWorshipSiteUpgradeInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_HELP_SPIRIT_INFO", HelpSpiritInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_SHOT_INFO", GArrowInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_SPOT_VISUAL", GSpotVisualInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_EFFECT_INFO", GEffectInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_FIELD_INFO", GFieldInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_FIELD_TYPE_INFO", GFieldTypeInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_FISH_FARM_INFO", GFishFarmInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_FOOTBALL_POSITION_INFO", GFootballPositionInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_PLAYTIME_INFO", GPlaytimeInfo::Infos);
	LoadIt(loader, (char*)"DETAIL_PLAYER_INFO", &GPlayerInfo::Info, 1, use_binary, &file);

	if (use_binary)
	{
		GSoundInfo::Info.LoadBinary(&file);
	}
	else
	{
		loader->Cursor = loader->TextBuffer;
		unsigned long size = loader->LoadData((char*)"DETAIL_SOUND_INFO", 0, (unsigned long*)loader->Cursor);
		if (size == 0 || GSoundInfo::Info.Load(&loader->Cursor, &file) != size)
			loader->ErrorCount++;
	}
	if (use_binary)
	{
		GBeliefInfo::Info.LoadBinary(&file);
	}
	else
	{
		loader->Cursor = loader->TextBuffer;
		unsigned long size = loader->LoadData((char*)"DETAIL_BELIEF_INFO", 0, (unsigned long*)loader->Cursor);
		if (size == 0 || GBeliefInfo::Info.Load(&loader->Cursor, &file) != size)
			loader->ErrorCount++;
	}
	LOAD_INFO_ARRAY("DETAIL_HELP_SPRITES_GUIDANCE", GHelpSpritesGuidance::Infos);
	if (use_binary)
	{
		GInfluenceInfo::Info.LoadBinary(&file);
	}
	else
	{
		loader->Cursor = loader->TextBuffer;
		unsigned long size = loader->LoadData((char*)"DETAIL_INFLUENCE_INFO", 0, (unsigned long*)loader->Cursor);
		if (size == 0 || GInfluenceInfo::Info.Load(&loader->Cursor, &file) != size)
			loader->ErrorCount++;
	}
	if (use_binary)
	{
		HelpSystemInfo::Info.LoadBinary(&file);
	}
	else
	{
		loader->Cursor = loader->TextBuffer;
		unsigned long size = loader->LoadData((char*)"DETAIL_HELP_SYSTEM_INFO", 0, (unsigned long*)loader->Cursor);
		if (size == 0 || HelpSystemInfo::Info.Load(&loader->Cursor, &file) != size)
			loader->ErrorCount++;
	}

	LOAD_INFO_ARRAY("DETAIL_ALIGNMENT_INFO", GAlignmentInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_REACTION", GInfoArrays::ReactionInfos);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_ACTION", CreatureActionInfo::g_CreatureActionInfos);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_DESIRE_ACTION_TABLE", CreatureDesireActionEntry::g_CreatureDesireActionEntries);
	Creature::ComputeActionIndices();
	LOAD_INFO_ARRAY("DETAIL_CREATURE_COMPASSION_FOR_TOWN_ACTION_TABLE",
	                CreatureDesireActionEntry::g_CompassionForTownActionTable);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_COMPASSION_FOR_CREATURE_ACTION_TABLE",
	                CreatureDesireActionEntry::g_CompassionForCreatureActionTable);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_DESIRE_DEPENDENCIES", CreatureDesireDependency::g_CreatureDesireDependency);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_DESIRE_TABLE", CreatureInitialDesireInfo::g_CreatureInitialDesireInfos);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_DESIRE_SOURCE_TABLE", CreatureDesireSourceTable::Table);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_INITIAL_DESIRE_SOURCE_VALUE", CreatureInitialSourceInfo::InitialValue);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_INITIAL_DESIRE_SOURCE_THRESHOLD", CreatureInitialSourceInfo::InitialThreshold);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_DESIRE_SOURCE_THRESHOLD_BOUNDS", CreatureSourceBoundsInfo::ThresholdBounds);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_DESIRE_ATTRIBUTE_TABLE",
	                CreatureDesireAttributeEntry::g_CreatureDesireAttributeEntries);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_NORMAL_ACTION_KNOWN_ABOUT_TABLE",
	                CreatureActionKnownAboutEntry::NormalActionKnownAboutInfo);
	LOAD_INFO_ARRAY("DETAIL_CREATURE_MAGIC_ACTION_KNOWN_ABOUT_TABLE",
	                CreatureMagicActionKnownAboutEntry::MagicActionKnownAboutInfo);
	LOAD_INFO_ARRAY("DETAIL_MIMIC_PLAYER_ACTION_TABLE", CreatureMimicInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_TERRAIN_MATERIAL_INFO", GTerrainMaterialInfo::Infos);
	GObjectInfo::DefaultAIPlayerObjectInfo.type = OBJECT_TYPE_COMPUTER_PLAYER;
	LOAD_INFO_ARRAY("DETAIL_TRIBE_INFO", GTribeInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_SPEED_THRESHOLD", GSpeedThreshold::InfoList);
	LOAD_INFO_ARRAY("DETAIL_PBALL_INFO", GPBallInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_PFOOTBALL_INFO", GPFootballInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_PFOOTBALL_POSITION_INFO", GPFootballPositionInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_DANCE_INFO", GDanceInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_VILLAGER_STATE_TABLE_INFO", GVillagerStateTableInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_ANIMAL_STATE_TABLE_INFO", GAnimalStateTableInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_TOTEM_STATUE_INFO", GTotemStatueInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_BIG_FOREST_INFO", GBigForestInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_FURNITURE_INFO", GFurnitureInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_WEATHER_INFO", GWeatherInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_CLIMATE_INFO", GClimateInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_SPELL_SYSTEM_INFO", GSpellSystemInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_VORTEX_TYPE", GVortexInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_MAGIC_FIREBALL_TYPE", GMagicFireBallInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_REWARD_INFO", GRewardInfo::Infos);
	LoadIt(loader, (char*)"DETAIL_LEASH_SELECTOR_INFO", &GLeashSelectorInfo::Instance, 1, use_binary, &file);
	LOAD_INFO_ARRAY("DETAIL_REWARD_PROGRESS_GOOD_TYPE", GRewardProgress::InfosGood);
	LOAD_INFO_ARRAY("DETAIL_REWARD_PROGRESS_EVIL_TYPE", GRewardProgress::InfosEvil);
	LOAD_INFO_ARRAY("DETAIL_SPOOKY_NAMES", GSpookyVoiceInfo::Infos);
	LOAD_INFO_ARRAY("DETAIL_OPPOSING_PLAYERS_CREATURE", GInfoArrays::ScriptOpposingCreatures);
	LOAD_INFO_ARRAY("DETAIL_HELP_SYSTEM_TOOLTIPS_INFO", GToolTipsInfo::Infos);
#undef LOAD_INFO_ARRAY

	if (loader->ErrorCount)
		had_errors = true;
	delete loader;
	file.Close();

	if (!use_binary)
	{
		_unlink(dat_name);
		if (!had_errors)
			rename(tmp_name, dat_name);
	}

	generate_variable_ammendments();
}
