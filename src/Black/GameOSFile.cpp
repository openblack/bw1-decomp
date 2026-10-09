#include "GameOSFile.h"

#include "BaseInfo.h"
#include "Camera.h"
#include "CameraModeNew3.h"
#include "CalculateDrawPosInfo.h"
#include "ChainJoint.h"
#include "CollectionAndOwnership.h"
#include "Creature.h"
#include "CreatureReceiveSpell.h"
#include "Data.h"
#include "Game.h"
#include "GameStats.h"
#include "HelpSystem.h"
#include "HelpText.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Living.h"
#include "LeashStatus.h"
#include "LightningObjectInfo.h"
#include "Object.h"
#include "Persistent.h"
#include "PhysicsSaveInfo.h"
#include "PosScaleRotation.h"
#include "PSysAnimInfo.h"
#include "PSysBase.h"
#include "PSysProcessInfo.h"
#include "PSysSoundAction.h"
#include "Script.h"
#include "SaveGameRoom.h"
#include "SpellTargets.h"
#include "Utils.h"
#include "Town.h"
#include "TownDesire.h"
#include "TSphere.h"
#include "Abode.h"
#include "AnimalBat.h"
#include "AnimalCow.h"
#include "AnimalCrow.h"
#include "AnimalDove.h"
#include "AnimalGoat.h"
#include "AnimalHorse.h"
#include "AnimalLeopard.h"
#include "AnimalLion.h"
#include "AnimalPig.h"
#include "AnimalPigeon.h"
#include "AnimalSeagull.h"
#include "AnimalSheep.h"
#include "AnimalSwallow.h"
#include "AnimalTiger.h"
#include "AnimalTortoise.h"
#include "AnimalVulture.h"
#include "AnimalWolf.h"
#include "AnimalZebra.h"
#include "AnimatedStatic.h"
#include "Arena.h"
#include "Artifact.h"
#include "Ball.h"
#include "BigForest.h"
#include "Bonfire.h"
#include "Chain.h"
#include "Citadel.h"
#include "CitadelBuildingSite.h"
#include "CitadelEntrance.h"
#include "CitadelHeart.h"
#include "CitadelPart.h"
#include "Climate.h"
#include "Creche.h"
#include "Dance.h"
#include "DanceGroup.h"
#include "DanceKey.h"
#include "DataPath.h"
#include "DeadTree.h"
#include "DefensiveSphere.h"
#include "Feature.h"
#include "FelledTree.h"
#include "Field.h"
#include "FieldCrop.h"
#include "FireEffect.h"
#include "FireFly.h"
#include "FishFarm.h"
#include "Flock.h"
#include "Flowers.h"
#include "Football.h"
#include "Footpath.h"
#include "FootpathFinder.h"
#include "FootpathLink.h"
#include "FootpathLinkSave.h"
#include "FootpathNode.h"
#include "Forest.h"
#include "Fragment.h"
#include "GraveYard.h"
#include "GroupBehaviour.h"
#include "HanoiBlock.h"
#include "Influence.h"
#include "JPSysInterface.h"
#include "MagicFireBall.h"
#include "MagicFood.h"
#include "MagicHand.h"
#include "MagicShield.h"
#include "MagicTeleport.h"
#include "MagicTree.h"
#include "MagicVortex.h"
#include "MagicWood.h"
#include "Mist.h"
#include "MobileObject.h"
#include "MobileStatic.h"
#include "OneOffSpellSeed.h"
#include "PSysAtomCore.h"
#include "PSysManager.h"
#include "PSysModifiers.h"
#include "PSysPCreator.h"
#include "PSysProperties.h"
#include "PSysSound.h"
#include "Particle3DAnim.h"
#include "Particle3DAnimWithCamera.h"
#include "Particle3DObj.h"
#include "Particle3DObjAnimTextured.h"
#include "Particle3DPnt.h"
#include "Particle3DSprite.h"
#include "ParticleChainJoint.h"
#include "ParticleContainer.h"
#include "ParticleLightMap.h"
#include "ParticlePlayerSymbol.h"
#include "PhysicalShield.h"
#include "PileFood.h"
#include "PileWood.h"
#include "PlannedAbode.h"
#include "PlannedCitadelPart.h"
#include "PlannedFeature.h"
#include "PlannedMultiMapFixed.h"
#include "PlannedTownCentre.h"
#include "PlannedTownCitadelHeart.h"
#include "PlayerComputer.h"
#include "Poo.h"
#include "Pot.h"
#include "PuzzleGame.h"
#include "Reaction.h"
#include "Reward.h"
#include "Rock.h"
#include "Scaffold.h"
#include "ScriptHighlight.h"
#include "ScriptMarker.h"
#include "ScriptTimer.h"
#include "ShowNeeds.h"
#include "ShowNeedsVisuals.h"
#include "SpecialVillager.h"
#include "Spell.h"
#include "SpellCreature.h"
#include "SpellDispenser.h"
#include "SpellFlockFlying.h"
#include "SpellFlockGround.h"
#include "SpellForest.h"
#include "SpellHeal.h"
#include "SpellPointInf.h"
#include "SpellResource.h"
#include "SpellSeed.h"
#include "SpellSeedGraphic.h"
#include "SpellShield.h"
#include "SpellStormAndTornado.h"
#include "SpellTeleport.h"
#include "SpellWater.h"
#include "SpellWithObjects.h"
#include "StandardBuildingSite.h"
#include "StoragePit.h"
#include "Stream.h"
#include "StreetLantern.h"
#include "StreetLight.h"
#include "ThingMusicInfo.h"
#include "Totem.h"
#include "TotemStatue.h"
#include "TownCentre.h"
#include "TownDesireFlags.h"
#include "TownSpellIcon.h"
#include "Tree.h"
#include "Villager.h"
#include "VortexObjectInfo.h"
#include "VortexSave.h"
#include "Waterfall.h"
#include "WayPoint.h"
#include "WeatherThing.h"
#include "Whale.h"
#include "Windmill.h"
#include "Wonder.h"
#include "Workshop.h"
#include "WorkshopBuildingSite.h"
#include "WorshipSite.h"
#include "WorshipSpellIcon.h"
#include "WorshipTotem.h"
#include "PSysRules.h"

#include <stdio.h>
#include <string.h>

#include <Lionhead/LHLib/ver5.0/LHTimer.inl>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>

#if defined(VERSION_BW1W100)
#define GAME_OS_FILE_FILE "C:\\dev\\black\\GameOSFile.cpp"
#elif defined(VERSION_BW1W110)
#define GAME_OS_FILE_FILE "C:\\dev\\Black\\GameOSFile.cpp"
#else
#define GAME_OS_FILE_FILE "C:\\dev\\MP\\Black\\GameOSFile.cpp"
#endif

#define TEMPORARY_FILE_EXTENSION ".tmp"

// BW1W120 00558db0 BW1M119 null
void OldTypeWarning(const char* message);

char*    GameOSFile::RevisionPrefix = "$Revisio";
char*    GameOSFile::RevisionSuffix = "n: 183 $";
char*    GameOSFile::AutoSaveFilename = "20.sav";
uint32_t GameOSFile::AutoSaveInterval = 6000;
uint32_t GameOSFile::LastAutoSaveTurn;
uint32_t GameOSFile::SaveCount;
bool32_t GameOSFile::Saving;

bool32_t GameOSFile::WriteEnabled = true;
bool32_t GameOSFile::ReadEnabled = true;

unsigned char    GameOSFile::LoadedCreatureFlags;
uint32_t         GameOSFile::LoadCount;
bool32_t         GameOSFile::Loading;
PhysicsSaveInfo* PhysicsSaveInfo::Buffer;
int              PhysicsSaveInfo::Count;
int              PhysicsSaveInfo::ReadIndex;

// BW1W120 00557f90 BW1M119 01312b40
void GameLoadingBox(bool finished);

// BW1W120 00557fc0 BW1M119 01312ae0
void GameSavingBox(bool finished);
// BW1W120 005fa000 BW1M119 0110bf80
void InputReset();
// BW1W120 0054ca90 BW1M119 014367c0
void DoSaveProblemRequestor(char16_t* message);
// BW1W120 005580f0 BW1M119 01312550
void ResetCameraIfNecessary();

GameOSFile::GameOSFile()
{
	Checksum = 0;
	Status = 0;
}

GameOSFile::~GameOSFile()
{
	SaveLoadPtrList.DeleteAll();
	LHLinkedNode<GameThing*>* node;
	while ((node = GameThingList.GetStart()) != NULL)
	{
		GameThing* thing = node->payload;
		GameThingList.Remove(thing);
		delete thing;
	}
}

void ResetCameraIfNecessary()
{
	if (GGame::g_game->Initialised && GGame::g_game->GetCamera())
	{
		CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
		if (mode && mode->MouseButtons != CAMERA_MODE_MOUSE_STATUS_NONE)
		{
			mode->Reinitialise(true);
		}
	}
}

bool32_t GameOSFile::SaveAllGame(char* filename)
{
	GameSavingBox(false);
	ResetCameraIfNecessary();
	GameOSFile file;
	SaveCount = 0;
	WriteEnabled = true;
	Saving = true;
	GGame::g_game->MyInterface()->StopAllImmersion();
	GGame::g_game->path_creator.CheckAndRecreateSaveGamePaths();

	char temporaryPath[260];
	strcpy(temporaryPath, filename);
	strcat(temporaryPath, TEMPORARY_FILE_EXTENSION);
	if (file.Open(temporaryPath, LH_FILE_MODE_READ_WRITE) != LH_FILE_RESULT_OK)
	{
		return false;
	}
	file.Reading = false;
	strcpy(file.Filename, temporaryPath);
	uint32_t attempts = 1;
	file.Write(&attempts, sizeof(attempts), NULL);
	file.SaveLoadPtrList.Add(new (GAME_OS_FILE_FILE, 340) GSaveLoadPtr(GGame::g_game));

	char revision[256];
	revision[0] = '\0';
	strcat(revision, RevisionPrefix);
	strcat(revision, RevisionSuffix);
	uint32_t length = strlen(revision) + 1;
	if (WriteEnabled)
	{
		file.WriteIt(length);
		for (uint32_t i = 0; i < length; ++i)
		{
			file.WriteIt(revision[i]);
			if (!WriteEnabled)
			{
				break;
			}
		}
	}
	char landscape[260];
	strcpy(landscape, GLandscape::Filename);
	length = strlen(landscape) + 1;
	if (WriteEnabled)
	{
		file.WriteIt(length);
		for (uint32_t i = 0; i < length; ++i)
		{
			file.WriteIt(landscape[i]);
			if (!WriteEnabled)
			{
				break;
			}
		}
	}
	GGame::g_game->Save(file);
	uint32_t position;
	file.Seek(0, LH_SEEK_CURRENT, &position);
	file.Seek(0, LH_SEEK_BEGIN, NULL);
	attempts = 0;
	file.Write(&attempts, sizeof(attempts), NULL);
	file.Seek(position, LH_SEEK_BEGIN, NULL);
	file.Close();
	if (WriteEnabled)
	{
		file.Delete(filename);
		file.Rename(temporaryPath, filename);
		char* basename = GUtils::GetFilenameFromPath(file.Filename);
		char  directory[260];
		GUtils::GetPathFromPath(file.Filename, directory);
		sprintf(temporaryPath, "%sScript_%s", directory, basename);
		temporaryPath[strlen(temporaryPath) - (sizeof(TEMPORARY_FILE_EXTENSION) - 1)] = '\0';
		file.Delete(temporaryPath);
		char scriptPath[260];
		strcpy(scriptPath, temporaryPath);
		strcat(temporaryPath, TEMPORARY_FILE_EXTENSION);
		file.Rename(temporaryPath, scriptPath);
	}
	else
	{
		DoSaveProblemRequestor(HelpTextDataBase::HelpTextDatabase.GetHelpText(0xd9c));
	}
	Saving = false;
	GameSavingBox(true);
	InputReset();
	ResetCameraIfNecessary();
	return true;
}

void PhysicsSaveInfo::ReadInfo(GameOSFile& file)
{
	if (Count < PHYSICS_SAVE_INFO_MAX)
	{
		PhysicsSaveInfo& info = Buffer[Count];
		file.ReadIt(info.Matrix);
		file.ReadIt(info.Velocity);
		file.ReadIt(info.AngularVelocity);
		++Count;
	}
}

bool32_t GameOSFile::LoadAllGame(char* filename)
{
	GameLoadingBox(false);
	PhysicsSaveInfo::Buffer =
		(PhysicsSaveInfo*)operator new(sizeof(PhysicsSaveInfo) * PHYSICS_SAVE_INFO_MAX, GAME_OS_FILE_FILE, 440);
	PhysicsSaveInfo::Count = 0;
	PhysicsSaveInfo::ReadIndex = 0;
	ReadEnabled = true;
	GameOSFile file;
	LoadCount = 0;
	if (file.Open(filename, LH_FILE_MODE_READ_WRITE_CREATE) != LH_FILE_RESULT_OK)
	{
		operator delete(PhysicsSaveInfo::Buffer);
		PhysicsSaveInfo::Buffer = NULL;
		return false;
	}

	// Persist an attempt before loading, so repeated crashes leave the save disabled.
	uint32_t attempts = GAME_OS_FILE_UNREAD_LOAD_ATTEMPTS;
	file.Seek(0, LH_SEEK_BEGIN, NULL);
	file.Read(&attempts, sizeof(attempts), NULL);
	if (attempts >= GAME_OS_FILE_MAX_LOAD_ATTEMPTS)
	{
		file.Close();
		operator delete(PhysicsSaveInfo::Buffer);
		PhysicsSaveInfo::Buffer = NULL;
		return false;
	}
	++attempts;
	file.Seek(0, LH_SEEK_END, NULL);
	uint32_t position = 0;
	file.Seek(0, LH_SEEK_CURRENT, &position);
	file.Seek(0, LH_SEEK_BEGIN, NULL);
	file.Write(&attempts, sizeof(attempts), NULL);
	file.Seek(position, LH_SEEK_BEGIN, NULL);
	file.Close();
	if (file.Open(filename, LH_FILE_MODE_READ_ONLY) != LH_FILE_RESULT_OK)
	{
		operator delete(PhysicsSaveInfo::Buffer);
		PhysicsSaveInfo::Buffer = NULL;
		return false;
	}
	file.Read(&attempts, sizeof(attempts), NULL);
	file.Reading = true;
	strcpy(file.Filename, filename);

	char revision[256];
	char landscape[260];
	if (ReadEnabled)
	{
		uint32_t length;
		file.ReadIt(length);
		for (uint32_t i = 0; i < length; ++i)
		{
			file.ReadIt(revision[i]);
		}
	}
	if (ReadEnabled)
	{
		uint32_t length;
		file.ReadIt(length);
		for (uint32_t i = 0; i < length; ++i)
		{
			file.ReadIt(landscape[i]);
		}
	}

	GGame::g_game->script->Reset(1);
	GGame::g_game->ClearMap();
	GPlayer* player = NULL;
	while ((player = GGame::g_game->GetNextPlayerAndNeutral(player)) != NULL)
	{
		if (player->ComputerPlayer)
		{
			((Base*)player->ComputerPlayer)->ToBeDeleted(0);
			player->ComputerPlayer = 0;
		}
		GameThing::ProcessDeadList(1);
	}
	GGame::g_game->landscape.Open(landscape);
	GameThing* game = NULL;
	Loading = true;
	file.LoadInstance(&game);
	file.ResolveAllLoads();
	Creature* creature = GGame::g_game->players[GGame::g_game->PlayerIndex].creature.Get();
	if (creature)
	{
		creature->ScriptFlag0 = (LoadedCreatureFlags & GAME_OS_FILE_CREATURE_FLAG_SCRIPT_0) > 0;
		creature->ScriptFlag1 = (LoadedCreatureFlags & GAME_OS_FILE_CREATURE_FLAG_SCRIPT_1) > 0;
		creature->ScriptFlag2 = (LoadedCreatureFlags & GAME_OS_FILE_CREATURE_FLAG_SCRIPT_2) > 0;
	}
	for (Living* living = GGame::g_game->GameLists.LivingList.head; living; living = living->next)
	{
		if (living->MoveState >= MOVE_TO_STATES_LINEAR && living->MoveState <= MOVE_TO_STATES_EXIT_CIRCLE_CW)
		{
			living->circle_hug_info.ResolveLoad(living);
		}
	}
	file.Close();
	if (file.Open(filename, LH_FILE_MODE_READ_WRITE_CREATE) == LH_FILE_RESULT_OK)
	{
		attempts = 0;
		file.Seek(0, LH_SEEK_END, NULL);
		uint32_t position = 0;
		file.Seek(0, LH_SEEK_CURRENT, &position);
		file.Seek(0, LH_SEEK_BEGIN, NULL);
		file.Write(&attempts, sizeof(attempts), NULL);
		file.Seek(position, LH_SEEK_BEGIN, NULL);
		file.Close();
	}

	uint32_t time = GGame::g_game->data.GameTurn * GAME_MILLISECONDS_PER_TURN;
	GGame::g_game->timer.Stop();
	GGame::g_game->timer.Reset(time);
	GGame::g_game->timer.Start();
	operator delete(PhysicsSaveInfo::Buffer);
	PhysicsSaveInfo::Buffer = NULL;
	Loading = false;
	GameLoadingBox(true);
	return true;
}

void OldTypeWarning(const char* message) {}

void GameOSFile::LoadInstance(GameThing** out_thing)
{
	GameThing*    thing = NULL;
	unsigned long type;
	unsigned long player;
	ReadIt(type);
	ReadIt(player);
	switch (type)
	{
	case GAME_THING_TYPE_SPELL_WOOD:
		OldTypeWarning("JEREMY: OLD TYPE FOR LOAD: SAVE_LOAD_SPELL_WOOD");
		break;
	case GAME_THING_TYPE_HELP_ORB:
		OldTypeWarning("JEREMY: OLD TYPE FOR LOAD: SAVE_LOAD_HELP_ORB");
		break;
	case GAME_THING_TYPE_HELP_ORB_HOLDER:
		OldTypeWarning("JEREMY: OLD TYPE FOR LOAD: SAVE_LOAD_HELP_ORB_HOLDER");
		break;
	case GAME_THING_TYPE_REWARD_SPELL_ICON:
		OldTypeWarning("JEREMY: OLD TYPE FOR LOAD: SAVE_LOAD_REWARD_SPELL_ICON");
		break;
	case GAME_THING_TYPE_SPELL_ICON:
		OldTypeWarning("JEREMY: OLD TYPE FOR LOAD: SAVE_LOAD_SPELL_ICON");
		break;
	case GAME_THING_TYPE_GAME_STATS_GRAPH_LINE:
		OldTypeWarning("JEREMY: OLD TYPE FOR LOAD: SAVE_LOAD_GAME_STATS_GRAPH_LINE");
		break;
	case GAME_THING_TYPE_BOOKMARK:
		OldTypeWarning("JEREMY: OLD TYPE FOR LOAD: SAVE_LOAD_BOOKMARK");
		break;
	case GAME_THING_TYPE_FURNITURE:
		OldTypeWarning("JEREMY: OLD TYPE FOR LOAD: SAVE_LOAD_FURNITURE");
		break;
	case GAME_THING_TYPE_VILLAGER:
		thing = new (GAME_OS_FILE_FILE, 666) Villager;
		break;
	case GAME_THING_TYPE_ABODE:
		thing = new (GAME_OS_FILE_FILE, 670) Abode;
		break;
	case GAME_THING_TYPE_STORAGE_PIT:
		thing = new (GAME_OS_FILE_FILE, 674) StoragePit;
		break;
	case GAME_THING_TYPE_SPELL:
		thing = new (GAME_OS_FILE_FILE, 678) Spell;
		break;
	case GAME_THING_TYPE_SPELL_RESOURCE:
		thing = new (GAME_OS_FILE_FILE, 682) SpellResource;
		break;
	case GAME_THING_TYPE_SPELL_FLOCK_FLYING:
		thing = new (GAME_OS_FILE_FILE, 686) SpellFlockFlying;
		break;
	case GAME_THING_TYPE_SPELL_FLOCK_GROUND:
		thing = new (GAME_OS_FILE_FILE, 690) SpellFlockGround;
		break;
	case GAME_THING_TYPE_SPELL_WATER:
		thing = new (GAME_OS_FILE_FILE, 694) SpellWater;
		break;
	case GAME_THING_TYPE_SPELL_FOREST:
		thing = new (GAME_OS_FILE_FILE, 698) SpellForest;
		break;
	case GAME_THING_TYPE_SPELL_STORM_AND_TORNADO:
		thing = new (GAME_OS_FILE_FILE, 702) SpellStormAndTornado;
		break;
	case GAME_THING_TYPE_SPELL_SHIELD:
		thing = new (GAME_OS_FILE_FILE, 706) SpellShield;
		break;
	case GAME_THING_TYPE_SPELL_HEAL:
		thing = new (GAME_OS_FILE_FILE, 710) SpellHeal;
		break;
	case GAME_THING_TYPE_SPELL_CREATURE:
		thing = new (GAME_OS_FILE_FILE, 714) SpellCreature;
		break;
	case GAME_THING_TYPE_SPELL_WITH_OBJECTS:
		thing = new (GAME_OS_FILE_FILE, 718) SpellWithObjects;
		break;
	case GAME_THING_TYPE_SPELL_TELEPORT:
		thing = new (GAME_OS_FILE_FILE, 722) SpellTeleport;
		break;
	case GAME_THING_TYPE_PSYS_SOUND:
		thing = new (GAME_OS_FILE_FILE, 726) PSysSound;
		break;
	case GAME_THING_TYPE_PHYSICAL_SHIELD:
		thing = new (GAME_OS_FILE_FILE, 730) PhysicalShield;
		break;
	case GAME_THING_TYPE_MAGIC_SHIELD:
		thing = new (GAME_OS_FILE_FILE, 734) MagicShield;
		break;
	case GAME_THING_TYPE_MAGIC_TELEPORT:
		thing = new (GAME_OS_FILE_FILE, 738) MagicTeleport;
		break;
	case GAME_THING_TYPE_LANDSCAPE_VORTEX_VOLC:
		thing = new (GAME_OS_FILE_FILE, 742) LandscapeVortexVolc;
		break;
	case GAME_THING_TYPE_LANDSCAPE_VORTEX_IN:
		thing = new (GAME_OS_FILE_FILE, 746) LandscapeVortexIn;
		break;
	case GAME_THING_TYPE_LANDSCAPE_VORTEX_OUT:
		thing = new (GAME_OS_FILE_FILE, 750) LandscapeVortexOut;
		break;
	case GAME_THING_TYPE_MAGIC_TREE:
		thing = new (GAME_OS_FILE_FILE, 754) MagicTree;
		break;
	case GAME_THING_TYPE_MAGIC_FIREBALL:
		thing = new (GAME_OS_FILE_FILE, 758) MagicFireBall;
		break;
	case GAME_THING_TYPE_MAGIC_FOOD:
		thing = new (GAME_OS_FILE_FILE, 762) MagicFood;
		break;
	case GAME_THING_TYPE_MAGIC_WOOD:
		thing = new (GAME_OS_FILE_FILE, 766) MagicWood;
		break;
	case GAME_THING_TYPE_SPELL_SEED_GRAPHIC:
		thing = new (GAME_OS_FILE_FILE, 770) SpellSeedGraphic;
		break;
	case GAME_THING_TYPE_SPELL_SEED:
		thing = new (GAME_OS_FILE_FILE, 774) SpellSeed;
		break;
	case GAME_THING_TYPE_ONE_OFF_SPELL_SEED:
		thing = new (GAME_OS_FILE_FILE, 778) OneOffSpellSeed;
		break;
	case GAME_THING_TYPE_REACTION:
		thing = new (GAME_OS_FILE_FILE, 782) Reaction;
		break;
	case GAME_THING_TYPE_DANCE:
		thing = new (GAME_OS_FILE_FILE, 786) Dance;
		break;
	case GAME_THING_TYPE_TOWN:
		thing = new (GAME_OS_FILE_FILE, 790) Town;
		break;
	case GAME_THING_TYPE_FIELD:
		thing = new (GAME_OS_FILE_FILE, 794) Field;
		break;
	case GAME_THING_TYPE_FIELD_CONTENTS:
		OldTypeWarning("Oliver: FieldContents cannot be instantiated.");
		break;
	case GAME_THING_TYPE_FIELD_CONTENTS_ROW:
		OldTypeWarning("Oliver: FieldContentsRow cannot be instantiated.");
		break;
	case GAME_THING_TYPE_CITADEL:
		thing = new (GAME_OS_FILE_FILE, 806) Citadel;
		break;
	case GAME_THING_TYPE_CITADEL_PART:
		thing = new (GAME_OS_FILE_FILE, 810) CitadelPart;
		break;
	case GAME_THING_TYPE_PLANNED_CITADEL_PART:
		thing = new (GAME_OS_FILE_FILE, 814) PlannedCitadelPart;
		break;
	case GAME_THING_TYPE_PLANNED_MULTI_MAP_FIXED:
		thing = new (GAME_OS_FILE_FILE, 818) PlannedMultiMapFixed;
		break;
	case GAME_THING_TYPE_PLANNED_TOWN_CITADEL_HEART:
		thing = new (GAME_OS_FILE_FILE, 822) PlannedTownCitadelHeart;
		break;
	case GAME_THING_TYPE_CITADEL_HEART_1:
		thing = new (GAME_OS_FILE_FILE, 826) CitadelHeart;
		break;
	case GAME_THING_TYPE_CITADEL_ENTRANCE:
		thing = new (GAME_OS_FILE_FILE, 830) CitadelEntrance;
		break;
	case GAME_THING_TYPE_CITADEL_HEART_2:
		thing = new (GAME_OS_FILE_FILE, 834) CitadelHeart;
		break;
	case GAME_THING_TYPE_WORSHIP_SITE:
		thing = new (GAME_OS_FILE_FILE, 838) WorshipSite;
		break;
	case GAME_THING_TYPE_FIRE_EFFECT:
		thing = new (GAME_OS_FILE_FILE, 842) FireEffect;
		break;
	case GAME_THING_TYPE_FIREFLY:
		thing = new (GAME_OS_FILE_FILE, 846) FireFly;
		break;
	case GAME_THING_TYPE_PUZZLE_GAME:
		thing = new (GAME_OS_FILE_FILE, 850) PuzzleGame;
		break;
	case GAME_THING_TYPE_PUZZLE_SHEEP:
		thing = new (GAME_OS_FILE_FILE, 855) PuzzleSheep;
		break;
	case GAME_THING_TYPE_PUZZLE_VILLAGER:
		thing = new (GAME_OS_FILE_FILE, 858) PuzzleVillager;
		break;
	case GAME_THING_TYPE_PUZZLE_LION:
		thing = new (GAME_OS_FILE_FILE, 862) PuzzleLion;
		break;
	case GAME_THING_TYPE_TOTEM:
		thing = new (GAME_OS_FILE_FILE, 866) Totem;
		break;
	case GAME_THING_TYPE_HANOI_BLOCK:
		thing = new (GAME_OS_FILE_FILE, 870) HanoiBlock;
		break;
	case GAME_THING_TYPE_PUZZLE_TOTEM:
		thing = new (GAME_OS_FILE_FILE, 874) PuzzleTotem;
		break;
	case GAME_THING_TYPE_PUZZLE_GRAIN:
		thing = new (GAME_OS_FILE_FILE, 878) PuzzleGrain;
		break;
	case GAME_THING_TYPE_SHOW_NEEDS_VISUALS:
		thing = new (GAME_OS_FILE_FILE, 882) ShowNeedsVisuals;
		break;
	case GAME_THING_TYPE_SHOW_NEEDS:
		thing = new (GAME_OS_FILE_FILE, 886) ShowNeeds;
		break;
	case GAME_THING_TYPE_SCRIPT_HIGHLIGHT:
		thing = new (GAME_OS_FILE_FILE, 890) ScriptHighlight;
		break;
	case GAME_THING_TYPE_GWATERFALL:
		thing = new (GAME_OS_FILE_FILE, 894) GWaterfall;
		break;
	case GAME_THING_TYPE_GARENA:
		thing = new (GAME_OS_FILE_FILE, 898) GArena;
		break;
	case GAME_THING_TYPE_ARENA_SPELL_ICON:
		thing = new (GAME_OS_FILE_FILE, 902) ArenaSpellIcon;
		break;
	case GAME_THING_TYPE_WEATHER_THING:
		thing = new (GAME_OS_FILE_FILE, 906) WeatherThing;
		break;
	case GAME_THING_TYPE_BALL:
		thing = new (GAME_OS_FILE_FILE, 910) Ball;
		break;
	case GAME_THING_TYPE_FOOTBALL:
		thing = new (GAME_OS_FILE_FILE, 914) Football;
		break;
	case GAME_THING_TYPE_REWARD:
		thing = new (GAME_OS_FILE_FILE, 918) Reward;
		break;
	case GAME_THING_TYPE_GSTREAM:
		thing = new (GAME_OS_FILE_FILE, 922) GStream;
		break;
	case GAME_THING_TYPE_MIST:
		thing = new (GAME_OS_FILE_FILE, 926) Mist;
		break;
	case GAME_THING_TYPE_GSTREET_LIGHT:
		thing = new (GAME_OS_FILE_FILE, 930) GStreetLight;
		break;
	case GAME_THING_TYPE_GSTREET_LANTERN:
		thing = new (GAME_OS_FILE_FILE, 933) GStreetLantern;
		break;
	case GAME_THING_TYPE_INFLUENCE_RING:
		thing = new (GAME_OS_FILE_FILE, 937) InfluenceRing;
		break;
	case GAME_THING_TYPE_TOWN_DESIRE_FLAGS:
		thing = new (GAME_OS_FILE_FILE, 941) TownDesireFlags;
		break;
	case GAME_THING_TYPE_BIG_FOREST:
		thing = new (GAME_OS_FILE_FILE, 945) BigForest;
		break;
	case GAME_THING_TYPE_FOREST:
		thing = new (GAME_OS_FILE_FILE, 949) Forest;
		break;
	case GAME_THING_TYPE_TREE:
		thing = new (GAME_OS_FILE_FILE, 953) Tree;
		break;
	case GAME_THING_TYPE_GFOOTPATH:
		thing = new (GAME_OS_FILE_FILE, 957) GFootpath;
		break;
	case GAME_THING_TYPE_GFOOTPATH_LINK:
		thing = new (GAME_OS_FILE_FILE, 961) GFootpathLink;
		break;
	case GAME_THING_TYPE_GFOOTPATH_NODE:
		thing = new (GAME_OS_FILE_FILE, 965) GFootpathNode;
		break;
	case GAME_THING_TYPE_GFOOTPATH_LINK_SAVE:
		thing = new (GAME_OS_FILE_FILE, 969) GFootpathLinkSave;
		break;
	case GAME_THING_TYPE_GFOOTPATH_FINDER:
		thing = new (GAME_OS_FILE_FILE, 973) GFootpathFinder;
		break;
	case GAME_THING_TYPE_CRECHE:
		thing = new (GAME_OS_FILE_FILE, 977) Creche;
		break;
	case GAME_THING_TYPE_GRAVEYARD:
		thing = new (GAME_OS_FILE_FILE, 981) Graveyard;
		break;
	case GAME_THING_TYPE_WORKSHOP:
		thing = new (GAME_OS_FILE_FILE, 985) Workshop;
		break;
	case GAME_THING_TYPE_MOBILE_OBJECT:
		thing = new (GAME_OS_FILE_FILE, 989) MobileObject;
		break;
	case GAME_THING_TYPE_MOBILE_STATIC:
		thing = new (GAME_OS_FILE_FILE, 993) MobileStatic;
		break;
	case GAME_THING_TYPE_TOWN_SPELL_ICON:
		thing = new (GAME_OS_FILE_FILE, 997) TownSpellIcon;
		break;
	case GAME_THING_TYPE_TOWN_CENTRE_SPELL_ICON:
		thing = new (GAME_OS_FILE_FILE, 1001) TownCentreSpellIcon;
		break;
	case GAME_THING_TYPE_POT:
		thing = new (GAME_OS_FILE_FILE, 1005) Pot;
		break;
	case GAME_THING_TYPE_PILE_FOOD:
		thing = new (GAME_OS_FILE_FILE, 1009) PileFood;
		break;
	case GAME_THING_TYPE_PILE_WOOD:
		thing = new (GAME_OS_FILE_FILE, 1013) PileWood;
		break;
	case GAME_THING_TYPE_PILE_FISH_FARM:
		thing = new (GAME_OS_FILE_FILE, 1017) FishFarm;
		break;
	case GAME_THING_TYPE_STANDARD_BUILDING_SITE:
		thing = new (GAME_OS_FILE_FILE, 1020) StandardBuildingSite;
		break;
	case GAME_THING_TYPE_CITADEL_BUILDING_SITE:
		thing = new (GAME_OS_FILE_FILE, 1023) CitadelBuildingSite;
		break;
	case GAME_THING_TYPE_WORKSHOP_BUILDING_SITE:
		thing = new (GAME_OS_FILE_FILE, 1026) WorkshopBuildingSite;
		break;
	case GAME_THING_TYPE_SCAFFOLD:
		thing = new (GAME_OS_FILE_FILE, 1029) Scaffold;
		break;
	case GAME_THING_TYPE_TOWN_CENTRE:
		thing = new (GAME_OS_FILE_FILE, 1033) TownCentre;
		break;
	case GAME_THING_TYPE_PLANNED_ABODE:
		thing = new (GAME_OS_FILE_FILE, 1037) PlannedAbode;
		break;
	case GAME_THING_TYPE_PLANNED_TOWN_CENTRE:
		thing = new (GAME_OS_FILE_FILE, 1041) PlannedTownCentre;
		break;
	case GAME_THING_TYPE_GPLAYER:
		thing = GGame::g_game->GetPlayer(player);
		break;
	case GAME_THING_TYPE_GPLAYER_INTERFACE:
		thing = GGame::g_game->GetPlayer(player)->GetRealInterface(player);
		break;
	case GAME_THING_TYPE_GPLAYER_INTERFACE_STATUS:
		thing = GGame::g_game->GetPlayer(player)->GetRealInterface(player)->status;
		break;
	case GAME_THING_TYPE_GCOMPUTER_PLAYER:
		thing = new (GAME_OS_FILE_FILE, 1069) GComputerPlayer;
		break;
	case GAME_THING_TYPE_GCOMPUTER_SEEN:
		thing = new (GAME_OS_FILE_FILE, 1074) GComputerSeen;
		break;
	case GAME_THING_TYPE_GCOMPUTER_SPELL_CAST:
		thing = new (GAME_OS_FILE_FILE, 1077) GComputerSpellCast;
		break;
	case GAME_THING_TYPE_CREATURE:
		thing = new (GAME_OS_FILE_FILE, 1081) Creature;
		break;
	case GAME_THING_TYPE_GGAME:
		thing = GGame::g_game;
		break;
	case GAME_THING_TYPE_POO:
		thing = new (GAME_OS_FILE_FILE, 1089) Poo;
		break;
	case GAME_THING_TYPE_CREED:
		thing = new (GAME_OS_FILE_FILE, 1093) Creed;
		break;
	case GAME_THING_TYPE_FIELD_CROP:
		thing = new (GAME_OS_FILE_FILE, 1097) FieldCrop;
		break;
	case GAME_THING_TYPE_GLEASH_STATUS:
		thing = GGame::g_game->GetPlayer(player)->GetRealInterface(player)->status->LeashStatus;
		break;
	case GAME_THING_TYPE_GPARTICLE_CONTAINER:
		thing = new (GAME_OS_FILE_FILE, 1107) GParticleContainer;
		break;
	case GAME_THING_TYPE_ROCK:
		thing = new (GAME_OS_FILE_FILE, 1111) Rock;
		break;
	case GAME_THING_TYPE_DEAD_TREE:
		thing = new (GAME_OS_FILE_FILE, 1115) DeadTree;
		break;
	case GAME_THING_TYPE_FELLED_TREE:
		thing = new (GAME_OS_FILE_FILE, 1119) FelledTree;
		break;
	case GAME_THING_TYPE_BONFIRE:
		thing = new (GAME_OS_FILE_FILE, 1123) Bonfire;
		break;
	case GAME_THING_TYPE_PLANNED_FEATURE:
		thing = new (GAME_OS_FILE_FILE, 1127) PlannedFeature;
		break;
	case GAME_THING_TYPE_FEATURE:
		thing = new (GAME_OS_FILE_FILE, 1131) Feature;
		break;
	case GAME_THING_TYPE_SPECIAL_VILLAGER:
		thing = new (GAME_OS_FILE_FILE, 1135) SpecialVillager;
		break;
	case GAME_THING_TYPE_GCAMERA:
		thing = GGame::g_game->GetCamera();
		break;
	case GAME_THING_TYPE_WORSHIP_SPELL_ICON:
		thing = new (GAME_OS_FILE_FILE, 1143) WorshipSpellIcon;
		break;
	case GAME_THING_TYPE_DANCE_KEY_ACTION:
		thing = new (GAME_OS_FILE_FILE, 1147) DanceKeyAction;
		break;
	case GAME_THING_TYPE_DANCE_KEY_FRAME:
		thing = new (GAME_OS_FILE_FILE, 1151) DanceKeyFrame;
		break;
	case GAME_THING_TYPE_DANCE_GROUP:
		thing = new (GAME_OS_FILE_FILE, 1155) DanceGroup;
		break;
	case GAME_THING_TYPE_SCRIPT_MARKER:
		thing = new (GAME_OS_FILE_FILE, 1159) ScriptMarker;
		break;
	case GAME_THING_TYPE_SCRIPT_TIMER:
		thing = new (GAME_OS_FILE_FILE, 1163) ScriptTimer;
		break;
	case GAME_THING_TYPE_FLOCK:
		thing = new (GAME_OS_FILE_FILE, 1167) Flock;
		break;
	case GAME_THING_TYPE_TOTEM_STATUE:
		thing = new (GAME_OS_FILE_FILE, 1171) TotemStatue;
		break;
	case GAME_THING_TYPE_WONDER:
		thing = new (GAME_OS_FILE_FILE, 1175) Wonder;
		break;
	case GAME_THING_TYPE_PIECE_LION:
		thing = new (GAME_OS_FILE_FILE, 1179) PieceLion;
		break;
	case GAME_THING_TYPE_PIECE_SHEEP:
		thing = new (GAME_OS_FILE_FILE, 1182) PieceSheep;
		break;
	case GAME_THING_TYPE_PIECE_WOLF:
		thing = new (GAME_OS_FILE_FILE, 1185) PieceWolf;
		break;
	case GAME_THING_TYPE_PIECE_VILLAGER:
		thing = new (GAME_OS_FILE_FILE, 1188) PieceVillager;
		break;
	case GAME_THING_TYPE_COW:
		thing = new (GAME_OS_FILE_FILE, 1191) Cow;
		break;
	case GAME_THING_TYPE_SHEEP:
		thing = new (GAME_OS_FILE_FILE, 1194) Sheep;
		break;
	case GAME_THING_TYPE_GOAT:
		thing = new (GAME_OS_FILE_FILE, 1197) Goat;
		break;
	case GAME_THING_TYPE_HORSE:
		thing = new (GAME_OS_FILE_FILE, 1200) Horse;
		break;
	case GAME_THING_TYPE_ZEBRA:
		thing = new (GAME_OS_FILE_FILE, 1203) Zebra;
		break;
	case GAME_THING_TYPE_PIG:
		thing = new (GAME_OS_FILE_FILE, 1206) Pig;
		break;
	case GAME_THING_TYPE_TORTOISE:
		thing = new (GAME_OS_FILE_FILE, 1209) Tortoise;
		break;
	case GAME_THING_TYPE_LION:
		thing = new (GAME_OS_FILE_FILE, 1212) Lion;
		break;
	case GAME_THING_TYPE_LEOPARD:
		thing = new (GAME_OS_FILE_FILE, 1215) Leopard;
		break;
	case GAME_THING_TYPE_TIGER:
		thing = new (GAME_OS_FILE_FILE, 1218) Tiger;
		break;
	case GAME_THING_TYPE_WOLF:
		thing = new (GAME_OS_FILE_FILE, 1221) Wolf;
		break;
	case GAME_THING_TYPE_SPELL_WOLF:
		thing = new (GAME_OS_FILE_FILE, 1224) SpellWolf;
		break;
	case GAME_THING_TYPE_DOVE:
		thing = new (GAME_OS_FILE_FILE, 1228) Dove;
		break;
	case GAME_THING_TYPE_SPELL_DOVE:
		thing = new (GAME_OS_FILE_FILE, 1231) SpellDove;
		break;
	case GAME_THING_TYPE_SPELL_BAT:
		thing = new (GAME_OS_FILE_FILE, 1234) SpellBat;
		break;
	case GAME_THING_TYPE_CROW:
		thing = new (GAME_OS_FILE_FILE, 1237) Crow;
		break;
	case GAME_THING_TYPE_SWALLOW:
		thing = new (GAME_OS_FILE_FILE, 1240) Swallow;
		break;
	case GAME_THING_TYPE_PIGEON:
		thing = new (GAME_OS_FILE_FILE, 1243) Pigeon;
		break;
	case GAME_THING_TYPE_SEAGULL:
		thing = new (GAME_OS_FILE_FILE, 1246) Seagull;
		break;
	case GAME_THING_TYPE_BAT:
		thing = new (GAME_OS_FILE_FILE, 1249) Bat;
		break;
	case GAME_THING_TYPE_VULTURE:
		thing = new (GAME_OS_FILE_FILE, 1252) Vulture;
		break;
	case GAME_THING_TYPE_WORSHIP_TOTEM:
		thing = new (GAME_OS_FILE_FILE, 1255) WorshipTotem;
		break;
	case GAME_THING_TYPE_WHALE:
		thing = new (GAME_OS_FILE_FILE, 1258) Whale;
		break;
	case GAME_THING_TYPE_GBASE_ONLY:
		thing = new (GAME_OS_FILE_FILE, 1261) GBaseOnly;
		break;
	case GAME_THING_TYPE_DATA_PATH:
		thing = new (GAME_OS_FILE_FILE, 1264) DataPath;
		break;
	case GAME_THING_TYPE_FRAGMENT:
		thing = new (GAME_OS_FILE_FILE, 1268) Fragment;
		break;
	case GAME_THING_TYPE_WINDMILL:
		thing = new (GAME_OS_FILE_FILE, 1272) Windmill;
		break;
	case GAME_THING_TYPE_GCLIMATE:
		thing = new (GAME_OS_FILE_FILE, 1276) GClimate;
		break;
	case GAME_THING_TYPE_PLAYER_ACTION_STATE:
		thing = new (GAME_OS_FILE_FILE, 1282) PlayerActionState;
		break;
	case GAME_THING_TYPE_PLAYER_SUB_ACTION:
		thing = new (GAME_OS_FILE_FILE, 1287) PlayerSubAction;
		break;
	case GAME_THING_TYPE_PLAYER_SUB_ACTION_ARGUMENT:
		thing = new (GAME_OS_FILE_FILE, 1291) PlayerSubActionArgument;
		break;
	case GAME_THING_TYPE_GMAGIC_HAND_1:
		thing = new (GAME_OS_FILE_FILE, 1296) GMagicHand;
		break;
	case GAME_THING_TYPE_GMAGIC_HAND_2:
		thing = new (GAME_OS_FILE_FILE, 1300) GMagicHand;
		break;
	case GAME_THING_TYPE_ANIMATED_STATIC:
		thing = new (GAME_OS_FILE_FILE, 1304) AnimatedStatic;
		break;
	case GAME_THING_TYPE_TOWN_ARTIFACT:
		thing = new (GAME_OS_FILE_FILE, 1308) TownArtifact;
		break;
	case GAME_THING_TYPE_VORTEX_SAVE:
		thing = new (GAME_OS_FILE_FILE, 1312) VortexSave;
		break;
	case GAME_THING_TYPE_THING_MUSIC_INFO:
		thing = new (GAME_OS_FILE_FILE, 1316) ThingMusicInfo;
		break;
	case GAME_THING_TYPE_DATA_FOR_SCRIPT_REMIND:
		thing = new (GAME_OS_FILE_FILE, 1320) DataForScriptRemind;
		break;
	case GAME_THING_TYPE_FLOWERS:
		thing = new (GAME_OS_FILE_FILE, 1324) Flowers;
		break;
	case GAME_THING_TYPE_SPELL_DISPENSER:
		thing = new (GAME_OS_FILE_FILE, 1328) SpellDispenser;
		break;
	case GAME_THING_TYPE_PUZZLE_MOBILE_OBJECT:
		thing = new (GAME_OS_FILE_FILE, 1332) PuzzleMobileObject;
		break;
	case GAME_THING_TYPE_GCOMPUTER_PLAYER_QUEUE:
		thing = new (GAME_OS_FILE_FILE, 1336) GComputerPlayerQueue;
		break;
	case GAME_THING_TYPE_GCOMPUTER_ATTITUDE_TO_PLAYER:
		thing = new (GAME_OS_FILE_FILE, 1340) GComputerAttitudeToPlayer;
		break;
	case GAME_THING_TYPE_GAME_STATS:
		thing = GGame::g_game->GetPlayer(player)->GetStats();
		break;
	case GAME_THING_TYPE_WAYPOINT:
		thing = new (GAME_OS_FILE_FILE, 1357) WayPoint;
		break;
	case GAME_THING_TYPE_MISSIONARY_CONTROL:
		thing = new (GAME_OS_FILE_FILE, 1361) MissionaryControl;
		break;
	case GAME_THING_TYPE_ATOM_CORE:
		thing = new (GAME_OS_FILE_FILE, 1364) AtomCore;
		break;
	case GAME_THING_TYPE_ATOM_COLLECTION:
		thing = new (GAME_OS_FILE_FILE, 1365) AtomCollection;
		break;
	case GAME_THING_TYPE_PSYS_MANAGER:
		thing = new (GAME_OS_FILE_FILE, 1366) PSysManager;
		break;
	case GAME_THING_TYPE_GJPSYS_INTERFACE:
		thing = new (GAME_OS_FILE_FILE, 1367) GJPSysInterface;
		break;
	case GAME_THING_TYPE_DRAW_OFFSET_LT:
		thing = new (GAME_OS_FILE_FILE, 1368) DrawOffsetLT;
		break;
	case GAME_THING_TYPE_DRAW_OFFSET_DECAY:
		thing = new (GAME_OS_FILE_FILE, 1369) DrawOffsetDecay;
		break;
	case GAME_THING_TYPE_PARTICLE_3D_PNT:
		thing = new (GAME_OS_FILE_FILE, 1370) Particle3DPnt;
		break;
	case GAME_THING_TYPE_PARTICLE_3D_OBJ:
		thing = new (GAME_OS_FILE_FILE, 1371) Particle3DObj;
		break;
	case GAME_THING_TYPE_PARTICLE_LIGHT_MAP:
		thing = new (GAME_OS_FILE_FILE, 1372) ParticleLightMap;
		break;
	case GAME_THING_TYPE_RENDER_PARTICLE_MIST:
		thing = new (GAME_OS_FILE_FILE, 1373) RenderParticleMist;
		break;
	case GAME_THING_TYPE_PARTICLE_3D_ANIM:
		thing = new (GAME_OS_FILE_FILE, 1374) Particle3DAnim;
		break;
	case GAME_THING_TYPE_PARTICLE_3D_ANIM_WITH_CAMERA:
		thing = new (GAME_OS_FILE_FILE, 1375) Particle3DAnimWithCamera;
		break;
	case GAME_THING_TYPE_PARTICLE_3D_OBJ_ANIM_TEXTURED:
		thing = new (GAME_OS_FILE_FILE, 1376) Particle3DObjAnimTextured;
		break;
	case GAME_THING_TYPE_RENDER_PARTICLE_CREATURE_REF:
		thing = new (GAME_OS_FILE_FILE, 1377) RenderParticleCreatureRef;
		break;
	case GAME_THING_TYPE_RENDER_PARTICLE_GAME_OBJECT_REF:
		thing = new (GAME_OS_FILE_FILE, 1378) RenderParticleGameObjectRef;
		break;
	case GAME_THING_TYPE_RENDER_PARTICLE_GOLDEN_SHOWER:
		thing = new (GAME_OS_FILE_FILE, 1379) RenderParticleGoldenShower;
		break;
	case GAME_THING_TYPE_RENDER_PARTICLE_GAME_OBJECT:
		thing = new (GAME_OS_FILE_FILE, 1380) RenderParticleGameObject;
		break;
	case GAME_THING_TYPE_RENDER_PARTICLE_CHAIN_JOINT:
		thing = new (GAME_OS_FILE_FILE, 1381) ParticleChainJoint;
		break;
	case GAME_THING_TYPE_RENDER_PARTICLE_3D_SPRITE:
		thing = new (GAME_OS_FILE_FILE, 1382) Particle3DSprite;
		break;
	case GAME_THING_TYPE_RENDER_PARTICLE_PLAYER_SYMBOL:
		thing = new (GAME_OS_FILE_FILE, 1383) ParticlePlayerSymbol;
		break;
	case GAME_THING_TYPE_CHAIN:
		thing = new (GAME_OS_FILE_FILE, 1384) Chain;
		break;
	case GAME_THING_TYPE_DEFENSIVE_SPHERE:
		thing = new (GAME_OS_FILE_FILE, 1385) DefensiveSphere;
		break;
	case GAME_THING_TYPE_UR_LIGHTNING_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1386) UR_Lightning_CollectionData(NULL);
		break;
	case GAME_THING_TYPE_VORTEX_OBJECT_INFO:
		thing = new (GAME_OS_FILE_FILE, 1387) VortexObjectInfo;
		break;
	case GAME_THING_TYPE_SPELL_POINT_INF:
		thing = new (GAME_OS_FILE_FILE, 1388) SpellPointInf;
		break;
	case GAME_THING_TYPE_UR_PLASMA_INF:
		thing = new (GAME_OS_FILE_FILE, 1389) UR_PlasmaInf;
		break;
	case GAME_THING_TYPE_UR_VOL_FX_ON_OBJECT_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1391) UR_VolFXOnObject::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_PLASMA_SUB_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1392) UR_Plasma::SubCollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_PLASMA_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1393) UR_Plasma::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_SIMPLE_BEAM_SUB_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1394) UR_SimpleBeam::SubCollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_SIMPLE_BEAM_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1395) UR_SimpleBeam::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_BELIEF_SPRITE_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1396) UR_BeliefSprite::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_MANA_PATH_NEW_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1397) UR_ManaPathNew::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_CREATURE_SPELL_GENERIC_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1398) UR_CreatureSpellGeneric::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_CREATURE_SPELL_GENERIC_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1399) UR_CreatureSpellGeneric::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_ORIENT_SPRITE_WITH_VELOCITY_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1400) UR_OrientSpriteWithVelocity::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_ATOMS_AT_EP_TARGET_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1401) UR_AtomsAtEPTarget::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_CREATURE_SPELL_COMPASSION_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1402) UR_CreatureSpellCompassion::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_CREATURE_SPELL_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1403) UR_CreatureSpell::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_CREATURE_SPELL_ITCH_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1404) UR_CreatureSpellItch::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_CREATURE_SPELL_FREEZE_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1405) UR_CreatureSpellFreeze::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_VORTEX_ATTRACT_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1406) UR_VortexAttract::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_SPHERE_SURFACE_TRACER_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1407) UR_SphereSurfaceTracer::AtomData(NULL);
		break;
	case GAME_THING_TYPE_CHECK_SHIELD_DEFLECTIONS_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1408) CheckShieldDeflections::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_FOREST_PATH_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1409) UR_ForestPath::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_EXPLOSION_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1410) UR_Explosion::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_EXPLOSION_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1411) UR_Explosion::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_FLOCKING_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1412) UR_Flocking::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_CLOUD_MOVER_NEW_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1413) UR_CloudMoverNew::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_CLOUD_GATHER_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1414) UR_CloudGather::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_CLOUD_GATHER_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1415) UR_CloudGather::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_TORNADO_FLYING_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1416) UR_Tornado::FlyingAtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_TORNADO_DEBRIS_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1417) UR_Tornado::DebrisCollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_TORNADO_FLYING_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1418) UR_Tornado::FlyingCollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_TORNADO_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1419) UR_Tornado::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_AR_FADE_OUT_ONCE_CONDITION_TRUE_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1420) AR_FadeOutOnceConditionTrue::AtomData(NULL);
		break;
	case GAME_THING_TYPE_ATTATCH_FIREBALL_TO_ATOM_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1421) AttatchFireBallToAtom::AtomData(NULL);
		break;
	case GAME_THING_TYPE_ADD_SOUND_TO_ATOM_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1422) AddSoundToAtom::AtomData(NULL);
		break;
	case GAME_THING_TYPE_REMOVE_SOUND_FROM_ATOM_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1423) RemoveSoundFromAtom::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UPDATE_RULE_GRAVITY_WITH_FLOOR_ATOM_DATA_RIPPLE:
		thing = new (GAME_OS_FILE_FILE, 1424) UpdateRuleGravityWithFloor::AtomDataRipple(NULL);
		break;
	case GAME_THING_TYPE_UR_BANKED_TURNING_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1425) UR_BankedTurning::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UPDATE_RULE_SHIELD_SPARK_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1426) UpdateRuleShieldSpark::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_VAPOUR_END_EFFECT_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1427) UR_VapourEndEffect::AtomData(NULL);
		break;
	case GAME_THING_TYPE_ADD_SUB_COLLECTIONS_TO_ATOM_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1428) AddSubCollectionsToAtom::AtomData(NULL);
		break;
	case GAME_THING_TYPE_CREATE_NEW_BASE_ATOM_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1429) CreateNewBaseAtom::AtomData(NULL);
		break;
	case GAME_THING_TYPE_ER_GLINTS_ON_TARGET_PARENT_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1430) ER_GlintsOnTarget::ParentAtomData(NULL);
		break;
	case GAME_THING_TYPE_ER_GLINTS_ON_TARGET_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1431) ER_GlintsOnTarget::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_ORIENT_SPRITE_WITH_RANDOM_ANGLE_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1432) UR_OrientSpriteWithRandomAngle::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_SIDE_SPIN_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1433) UR_SideSpin::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_INITIAL_SPIN_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1434) UR_InitialSpin::AtomData(NULL);
		break;
	case GAME_THING_TYPE_REMOVE_RULE_AFTER_CONDITION_TRUE_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1435) RemoveRuleAfterConditionTrue::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_ORIENT_WITH_VELOCITY_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1436) UR_OrientWithVelocity::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_FOLLOW_TARGETS_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1437) UR_FollowTargets::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_ADD_DEFENSIVE_SPHERE_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1438) UR_AddDefensiveSphere::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_EMITTER_RULE_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1439) EmitterRule::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_WILLOW_WISP_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1440) UR_WillowWisp::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_BURST_FROM_PARENT_ATOM_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1441) ER_BurstFromParentAtom::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_ER_EMIT_FROM_PARENT_ATOM_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1442) ER_EmitFromParentAtom::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_FOLLOW_TARGETS_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1443) UR_FollowTargets::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_HEAL_SPELL_CHAKRA_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1444) UR_HealSpellChakra::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_TRAIL_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1445) UR_Trail::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_LIGHTNING_FORK_FLICKER_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1446) LightningForkFlicker::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_EMITTER_RULE_LIGHTNING_SPRITE_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1447) EmitterRuleLightningSprite::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_HAND_SPRINKLE_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1448) UR_HandSprinkle::CollectionData(NULL);
		break;
	case GAME_THING_TYPE_UR_LIGHT_SHEET_ON_OBJECT_ATOM_DATA:
		thing = new (GAME_OS_FILE_FILE, 1449) UR_LightSheetOnObject::AtomData(NULL);
		break;
	case GAME_THING_TYPE_UR_LIGHT_SHEET_ON_OBJECT_COLLECTION_DATA:
		thing = new (GAME_OS_FILE_FILE, 1450) UR_LightSheetOnObject::CollectionData(NULL);
		break;
	default:
		if (type == GAME_THING_TYPE_UNUSED_000)
		{
			OldTypeWarning("Oliver: type not added.");
		}
		else
		{
			OldTypeWarning("Oliver: Invalid instance in save game file.");
		}
		break;
	}
	SaveLoadPtrList.Add(new (GAME_OS_FILE_FILE, 1472) GSaveLoadPtr(thing));
	*out_thing = thing;
	if (thing)
	{
		thing->Load(*this);
		GameThingList.Add(thing);
	}
}

void GameOSFile::ResolveAllLoads()
{
	LHLinkedNode<GameThing*>* node;
	while ((node = GameThingList.GetLastNode()) != NULL)
	{
		if (dynamic_cast<GameThing*>(node->payload))
		{
			node->payload->ResolveLoad();
		}
		GameThingList.Remove(node->payload, false);
	}

	LHLinkedNode<Creature*>* creatureNode = Creature::CreatureList.GetStart();
	while (creatureNode)
	{
		LHLinkedNode<Creature*>* next = creatureNode->next.Get();
		GPlayer*                 player = creatureNode->payload->GetPlayer();
		if (player)
		{
			player->GetLeaderInterfaceStatus()->GetInterface()->ResolveLoadForCreature();
		}
		creatureNode = next;
	}
#ifndef VERSION_BW1W100
	GGame::g_game->script_creature_curse.ResolveLoad(GGame::g_game->players[GGame::g_game->PlayerIndex].creature.Get());
#endif

	SaveLoadPtrList.DeleteAll();
	GameThingList.DeleteAll();
}

void GameOSFile::WritePtr(GameThing* ptr)
{
	uint32_t index = 0;
	if (!WriteEnabled)
	{
		return;
	}
	if (ptr)
	{
		if (ptr != (GameThing*)-1)
		{
			if (!dynamic_cast<GameThing*>(ptr))
			{
				OldTypeWarning("Jeremy: failed miserably save has - tell me.");
				WriteEnabled = 0;
				return;
			}
		}
		else
		{
			OldTypeWarning("Peter: invalid save Pointer");
		}
		if (ptr->GetSaveType())
		{
			index = SaveLoadPtrList.count;
			LHLinkedNode<GSaveLoadPtr*>* node = SaveLoadPtrList.GetStart();
			while (node)
			{
				if ((GameThing*)node->payload->ptr == ptr)
				{
					goto found;
				}
				node = node->next.Get();
				--index;
			}
			SaveLoadPtrList.Add(new (GAME_OS_FILE_FILE, 1654) GSaveLoadPtr(ptr));
			WriteIt(SaveLoadPtrList.count);
			ptr->Save(*this);
			return;
		found:
			WriteIt(index);
			return;
		}
		switch (ptr->GetSaveType())
		{
		case GAME_THING_TYPE_SPELL_WOOD:
			OldTypeWarning("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_SPELL_WOOD");
			break;
		case GAME_THING_TYPE_HELP_ORB:
			OldTypeWarning("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_HELP_ORB");
			break;
		case GAME_THING_TYPE_HELP_ORB_HOLDER:
			OldTypeWarning("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_HELP_ORB_HOLDER");
			break;
		case GAME_THING_TYPE_REWARD_SPELL_ICON:
			OldTypeWarning("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_REWARD_SPELL_ICON");
			break;
		case GAME_THING_TYPE_SPELL_ICON:
			OldTypeWarning("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_SPELL_ICON");
			break;
		case GAME_THING_TYPE_GAME_STATS_GRAPH_LINE:
			OldTypeWarning("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_GAME_STATS_GRAPH_LINE");
			break;
		case GAME_THING_TYPE_BOOKMARK:
			OldTypeWarning("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_BOOKMARK");
			break;
		case GAME_THING_TYPE_FURNITURE:
			OldTypeWarning("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_FURNITURE");
			break;
		}
		OldTypeWarning("Oliver: Invalid instance being saved");
	}
	WriteIt(index);
}

void GameOSFile::ReadPtr(GameThing** ptr)
{
	uint32_t index = 0;
	ReadIt(index);
	if (index)
	{
		if (index > SaveLoadPtrList.count)
		{
			if (index == SaveLoadPtrList.count + 1)
			{
				LoadInstance(ptr);
			}
			else
			{
				OldTypeWarning("Jeremy: Non-sequential pointer references in save game file");
			}
		}
		else
		{
			LHLinkedNode<GSaveLoadPtr*>* node = SaveLoadPtrList.GetStart();
			for (uint32_t remaining = SaveLoadPtrList.count - index; remaining; --remaining)
			{
				node = node->next.Get();
			}
			*ptr = (GameThing*)node->payload->ptr;
		}
	}
	else
	{
		*ptr = NULL;
	}
}

GSaveLoadPtr::GSaveLoadPtr(void* ptr)
{
	this->ptr = (uintptr_t)ptr;
}

void GameOSFile::WritePtrArray(GameThing** ptr, uint32_t count)
{
	if (WriteEnabled)
	{
		WriteIt(count);
		for (uint32_t i = 0; i < count; ++i, ++ptr)
		{
			WritePtr(*ptr);
		}
	}
}

void GameOSFile::ReadPtrArray(GameThing** ptr)
{
	uint32_t count;
	ReadIt(count);
	for (uint32_t i = 0; i < count; ++i)
	{
		ReadPtr(&ptr[i]);
	}
}

void GameOSFile::WriteSafe(SpellTargets& value)
{
	if (!WriteEnabled)
	{
		return;
	}
	WriteSafe(value.Objects);
	WriteSafe(value.Points);
	WriteIt(value.CurrentTarget);
}

void GameOSFile::ReadSafe(SpellTargets& value)
{
	ReadSafe(value.Objects);
	ReadSafe(value.Points);
	ReadIt(value.CurrentTarget);
}

void GameOSFile::WriteSafe(CollectionAndOwnership& value)
{
	if (!WriteEnabled)
	{
		return;
	}
	WriteSafe(value.Collection);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.OwnsCollection);
}

void GameOSFile::ReadSafe(CollectionAndOwnership& value)
{
	ReadSafe(value.Collection);
	ReadIt(value.OwnsCollection);
}

void GameOSFile::WriteSafe(LightningObjectInfo& value)
{
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(reinterpret_cast<unsigned int&>(value.TargetGameTurn));
	WriteSafe(reinterpret_cast<GameThing* const&>(value.Target));
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.Position);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.Valid);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.InRange);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.Hit);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.ForkIndex);
}

void GameOSFile::ReadSafe(LightningObjectInfo& value)
{
	if (ReadEnabled)
	{
		ReadIt(reinterpret_cast<unsigned int&>(value.TargetGameTurn));
		ReadSafe(reinterpret_cast<GameThing*&>(value.Target));
	}
	ReadIt(value.Position);
	ReadIt(value.Valid);
	ReadIt(value.InRange);
	ReadIt(value.Hit);
	ReadIt(value.ForkIndex);
}

void GameOSFile::WriteSafe(CreatureReceiveSpell::TPerSpellData& value)
{
	if (WriteEnabled)
	{
		WriteIt(value.SpellType);
		WriteIt(value.State);
		WriteIt(value.StartTime);
		WriteIt(value.Intensity);
		WriteIt(value.Duration);
		WritePtr(value.Caster);
	}
}

void GameOSFile::ReadSafe(CreatureReceiveSpell::TPerSpellData& value)
{
	ReadIt(value.SpellType);
	ReadIt(value.State);
	ReadIt(value.StartTime);
	ReadIt(value.Intensity);
	ReadIt(value.Duration);
	ReadPtr(&value.Caster);
}

void GameOSFile::WriteSafe(CreatureReceiveSpell::QueueData& value)
{
	if (WriteEnabled)
	{
		WriteIt(value.SpellType);
		WriteIt(value.Intensity);
		WritePtr(value.Caster);
	}
}

void GameOSFile::ReadSafe(CreatureReceiveSpell::QueueData& value)
{
	ReadIt(value.SpellType);
	ReadIt(value.Intensity);
	ReadPtr(&value.Caster);
}

void GameOSFile::WriteSafe(Persistent* const& ptr)
{
	if (WriteEnabled)
	{
		long fileId, index;
		Persistent::GetSaveID(ptr, &fileId, &index);
		WriteIt(fileId);
		WriteIt(index);
	}
}

void GameOSFile::ReadSafe(Persistent*& ptr)
{
	long fileId, index;
	ReadIt(fileId);
	ReadIt(index);
	ptr = Persistent::GetFromSaveID(fileId, index);
}

void GameOSFile::WriteSafe(PSysSoundAction& value)
{
	WriteIt(value);
}

void GameOSFile::WriteSafe(PosScaleRotation& value)
{
	WriteIt(value);
}

void GameOSFile::WriteSafe(ChainJoint& value)
{
	WriteIt(value);
}

void GameOSFile::WriteSafe(CalculateDrawPosInfo& value)
{
	WriteIt(value);
}

void GameOSFile::WriteSafe(PSysAnimInfo& value)
{
	WriteIt(value);
}

void GameOSFile::ReadSafe(PSysSoundAction& value)
{
	ReadIt(value);
}

void GameOSFile::ReadSafe(PosScaleRotation& value)
{
	ReadIt(value);
}

void GameOSFile::ReadSafe(ChainJoint& value)
{
	ReadIt(value);
}

void GameOSFile::ReadSafe(CalculateDrawPosInfo& value)
{
	ReadIt(value);
}

void GameOSFile::ReadSafe(PSysAnimInfo& value)
{
	ReadIt(value);
}

void GameOSFile::WriteSafe(TSphere& value)
{
	WriteIt(value);
}

void GameOSFile::WriteSafe(PSysProcessInfo& value)
{
	WriteIt(value);
}

void GameOSFile::ReadSafe(TSphere& value)
{
	ReadIt(value);
}

void GameOSFile::ReadSafe(PSysProcessInfo& value)
{
	ReadIt(value);
}

void GameOSFile::ReadSafe(PSysBase*& ptr)
{
	ReadPtr((GameThing**)&ptr);
}

void GameOSFile::WriteSafe(PSysBase* const& ptr)
{
	WritePtr(ptr);
}

void GameOSFile::ReadSafe(GameThing*& ptr)
{
	ReadPtr(&ptr);
}

void GameOSFile::WriteSafe(GameThing* const& ptr)
{
	WritePtr(ptr);
}

void GameOSFile::WriteSafe(GData& value)
{
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.RandSeed);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.InitialRandSeed);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.GameTurn);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.RealGameTurn);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.NumCreatedObjects);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.FrameCount);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.MapLoadCount);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.WorldPopulation);
}

void GameOSFile::ReadSafe(GData& value)
{
	ReadIt(value.RandSeed);
	ReadIt(value.InitialRandSeed);
	ReadIt(value.GameTurn);
	ReadIt(value.RealGameTurn);
	ReadIt(value.NumCreatedObjects);
	ReadIt(value.FrameCount);
	ReadIt(value.MapLoadCount);
	ReadIt(value.WorldPopulation);
}

void GameOSFile::ReadSafe(TownDesire& value)
{
	ReadArray(value.BaseDesire);
	ReadArray(value.DesireModifier);
	ReadArray(value.DesireCheat);
	ReadArray(value.DesireBoost);
	ReadArray(value.Desire);
	ReadIt(value.LastProcessTurn);
	ReadPtr((GameThing**)&value.town);
	ReadIt(value.OverallDesire);
	ReadArray(value.RawDesire);
	ReadArray(value.DesireFunctionMinimum);
	ReadArray(value.DesireFunctionMaximum);
	ReadArray(value.DesireChange);
	ReadArray(value.sorts);
	ReadArray(value.sorts2);
	ReadArray(value.AlignmentChangeCount);
	ReadArray(value.PreviousVillagerStateAmount);
	ReadArray(value.PreviousVillagerStateCount);
	ReadArray(value.VillagerStateAmount);
	ReadArray(value.VillagerStateCount);
}

void GameOSFile::WriteSafe(TownDesire& value)
{
	WriteArray(value.BaseDesire, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.DesireModifier, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.DesireCheat, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.DesireBoost, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.Desire, TOWN_DESIRE_INFO_LAST);
	WriteIt(value.LastProcessTurn);
	WritePtr(value.town);
	WriteIt(value.OverallDesire);
	WriteArray(value.RawDesire, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.DesireFunctionMinimum, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.DesireFunctionMaximum, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.DesireChange, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.sorts, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.sorts2, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.AlignmentChangeCount, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.PreviousVillagerStateAmount, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.PreviousVillagerStateCount, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.VillagerStateAmount, TOWN_DESIRE_INFO_LAST);
	WriteArray(value.VillagerStateCount, TOWN_DESIRE_INFO_LAST);
}

void GameOSFile::WriteInfo(const GBaseInfo* info)
{
	unsigned long index = info->GetInfoID();
	WriteIt(index);
}

void GameOSFile::ReadInfo(const GBaseInfo** info)
{
	unsigned long index;
	ReadIt(index);
	*info = GBaseInfo::GetInfoPtr(index);
}

void GameOSFile::WriteCheckSum(GameThing* thing)
{
	if (WriteEnabled)
	{
		WriteIt(Checksum);
	}
}

void GameOSFile::ReadCheckSum(GameThing* thing)
{
	uint32_t checksum;
	ReadIt(checksum);
}

bool32_t GameOSFile::AutoLoad()
{
	char filename[260];
	GGame::g_game->path_creator.GetAutoSavePath(filename);
	sprintf(filename, "%s\\%s", filename, AutoSaveFilename);
	SaveGameRoom::CurrentSlot = SAVE_GAME_ROOM_AUTO_SAVE_SLOT;
	return LoadAllGame(filename);
}

bool32_t GameOSFile::AutoSave(bool32_t force)
{
	if ((!GGame::g_game->help_system->WideScreen || !GGame::g_game->help_system->WideScreenControl) &&
	    !GGame::g_game->IsMultiplayerGame() && GGame::g_game->LandNumber != GAME_LAND_NUMBER_PLAYGROUND &&
	    ((GGame::g_game->data.GameTurn - LastAutoSaveTurn > AutoSaveInterval &&
	      !(GGame::g_game->GameFlags & GAME_FLAG_PAUSED)) ||
	     force))
	{
		LastAutoSaveTurn = GGame::g_game->data.GameTurn;
		GGame::g_game->AutoSaved = true;
		unsigned long slot = 0;
		char          key[128];
		sprintf(key, "CircleSlot(%d)", GGame::g_game->LandNumber);
		if (LHNetGetCurrentProfileUlong(key, &slot) != LH_OK)
		{
			slot = 0;
		}
		SaveGameRoom::InstantSaveGame(slot % SAVE_GAME_ROOM_CIRCLE_SLOT_COUNT + SAVE_GAME_ROOM_CIRCLE_FIRST_SLOT);
		++slot;
		LHNetSetCurrentProfileUlong(key, slot);
		return true;
	}
	return false;
}

bool32_t GameOSFile::IsAutoSaveValid()
{
	char filename[260];
	GGame::g_game->path_creator.GetAutoSavePath(filename);
	sprintf(filename, "%s\\%s", filename, AutoSaveFilename);
	if (LHOSFile::Exists(filename) == LH_FILE_RESULT_NOT_FOUND)
	{
		return false;
	}
	GameOSFile file;
	if (file.Open(filename, LH_FILE_MODE_READ_ONLY) != LH_FILE_RESULT_OK)
	{
		return false;
	}
	uint32_t attempts;
	file.Read(&attempts, sizeof(attempts), NULL);
	LoadCount = 0;
	file.Reading = true;
	char revision[256];
	if (ReadEnabled)
	{
		uint32_t length;
		file.ReadIt(length);
		for (uint32_t i = 0; i < length; ++i)
		{
			file.ReadIt(revision[i]);
		}
	}
	file.Close();
	return true;
}
