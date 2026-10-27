#include "CreatureMindVersion.h"
#include "GameTimeConstants.h"
#include "ColourConstants.h" /* For White */

#include <math.h>    /* For log */
#include <stdio.h>   /* For sprintf */
#include <string.h>  /* For strcpy, wcscpy, wcslen */
#include <windows.h> /* For min, max */

#include <Lionhead/LH3DLib/development/LH3DMem.h>     /* For LH3DMem */
#include <Lionhead/LHLib/ver5.0/LHWin.h>              /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHLogger.h>           /* For LHLogger */
#include <Lionhead/LHLog/ver4.0/LHVersion.h>          /* For LHVersion */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h> /* For LHNetGetCurrentUsedProfile */
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>   /* For LHPlayer */

#include "Alignment.h"
#include "Creature.h"
#include "Creature3D.h"
#include "CreatureActionsKnownAbout.h"
#include "CreatureFileName.h"
#include "CreatureInfo.h"
#include "CreatureLearning.h"
#include "CreatureMental.h"
#include "CreatureMentalAttributeTest.h"
#include "CreatureMentalBelief.h"
#include "CreaturePhysical.h"
#include "CreatureReceiveSpell.h"
#include "GJUtils.h" /* For boundf */
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "MPFEStartGameData.h"
#include "MusicMood.h"
#include "Player.h"
#include "PlayerSymbol.h"
#include "SaveGameRoom.h"
#include "Script.h"
#include "Serialise.h"
#include "Utils.h"

#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define FILEPATH "C:\\dev\\black\\CreatureMentalSaveAndLoad.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureMentalSaveAndLoad.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureMentalSaveAndLoad.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureMentalSaveAndLoad.cpp"
#endif

#define NO_SAVED_CREATURE          (-1)
#define NO_SAVED_PLAYER            0xff
#define DECISION_TREE_MAX_EXAMPLES 16

#define SAVED_CREATURE_PATH     "%s\\SavedCreature%d"
#define SAVE_SLOT_PATH          "%s\\%i"
#define CREATURE_PHYSIQUE_PATH  ".\\scripts\\CreatureMind\\Physique%s"
#define CREATURE_MIND_FILE_PATH ".\\scripts\\CreatureMind\\%s"
#define CREATURE_MIND_PATH      ".\\Scripts\\CreatureMind"

static float OneOverLogHalf = 1.0f / (float)log(0.5);

const uint32_t CreatureSaveVersion = CREATURE_MIND_VERSION_CURRENT;

bool32_t Creature::Save(GameOSFile& file)
{
	if (Living::Save(file))
	{
		file.WriteIt((uint32_t&)CreatureSaveVersion);
		uint32_t insideCitadel = GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL;
		file.WriteIt(insideCitadel);
		int                      index = 0;
		LHLinkedNode<Creature*>* node;
		for (node = CreatureList.GetStart(); node != NULL; node = node->next.Get())
		{
			if (node->payload == this)
			{
				break;
			}
			index++;
		}
		if (node == NULL)
		{
			index = NO_SAVED_CREATURE;
		}
		uint8_t creatureIndex = index;
		file.WriteIt(creatureIndex);
		uint8_t playerNumber;
		if (GetPlayer() != NULL)
		{
			playerNumber = (uint8_t)GetPlayer()->GetPlayerNumber();
		}
		else
		{
			playerNumber = NO_SAVED_PLAYER;
		}
		file.WriteIt(playerNumber);
		char path[256];
		char mindPath[260];
		GGame::g_game->path_creator.GetSaveGamePath(path);
		sprintf(path, SAVE_SLOT_PATH, path, SaveGameRoom::CurrentSlot);
		if (SaveGameRoom::CurrentSlot > SAVE_GAME_ROOM_LAST_NORMAL_SLOT &&
		    SaveGameRoom::CurrentSlot <= SAVE_GAME_ROOM_LAST_CIRCLE_SLOT)
		{
			sprintf(path, SAVE_SLOT_PATH, path, GGame::g_game->LandNumber);
		}
		sprintf(mindPath, SAVED_CREATURE_PATH, path, creatureIndex);
		mind->SaveMind(mindPath);
		for (int i = 0; i < CREATURE_RECEIVE_SPELL_SLOTS; i++)
		{
			file.WriteSafe(ReceiveSpell->data[i]);
		}
		file.WriteSafe(ReceiveSpell->queueData);
		file.WriteIt(mind->debug.IsProcessing);
		file.WriteIt(field_0x374);
		file.WriteIt(field_0x378);
		file.WriteIt(field_0x37c);
		if (ReceiveSpell->data[CREATURE_RECEIVE_SPELL_INVISIBLE].State == 0)
		{
			field_0x12b8 = 0;
			field_0x12b4 = 0;
			field_0x12b0 = 0;
		}
		file.WriteIt(field_0x12ac);
		file.WriteIt(field_0x12b0);
		file.WriteIt(field_0x12b4);
		file.WriteIt(field_0x12b8);
		file.WriteIt(field_0x12bc);
		file.WriteIt(IgnoredByVillagers);
		file.WritePtr(field_0x1078);
		file.WritePtr(field_0x1084);
		file.WritePtr(field_0x1088);
		file.WritePtr(ParticleContainer0x107c);
		file.WritePtr(ParticleContainer0x1080);
		file.WriteIt(field_0x11d8);
		file.WritePtr(ParticleContainer0x11e4);
		file.WritePtr(field_0x11e8);
		file.WriteIt(field_0x11f0);
		file.WritePtr(arena);
		file.WriteIt(HomePos);
		LH3DCreature* creature3d = GetCreature3D();
		file.WriteIt((uint32_t&)creature3d->field_0x4aa8);
		uint32_t autoFightStatus = GetAutoFightStatus();
		file.WriteIt(autoFightStatus);
		file.WriteSafe(ControlledVillagers);
		file.WritePtr(dance);
		file.WriteIt(field_0x1158);
		uint32_t strength = physical->strength;
		file.WriteIt(strength);
		file.WriteIt((uint32_t&)physical->Size);
		float alignment = this->alignment->Value;
		if (GetPlayer() == GGame::g_game->MyPlayer() && GGame::g_game->script->IsScriptRunning("CreatureCurse"))
		{
			alignment = GGame::g_game->script->GetGlobalVariableValue("OriginalAlignmentOfMyCreature");
		}
		file.WriteIt((uint32_t&)alignment);
		uint32_t size = physical->field_0x48;
		file.WriteIt(size);
		file.WriteIt(field_0x115c);
		file.WriteIt(field_0x1160);
		SubActionAgendaSaved = (Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) != 0 || IsFighting() ||
		                       ControlledVillagers.count != 0;
		file.WriteIt(SubActionAgendaSaved);
		if (SubActionAgendaSaved)
		{
			file.WriteIt(mind->agenda.CurrentPlan.CreatureDesire);
			file.WriteIt(mind->agenda.CurrentPlan.creature_action);
			file.WritePtr(mind->agenda.CurrentPlan.ActivityObject ? mind->agenda.CurrentPlan.ActivityObject->Pointer
			                                                      : NULL);
			file.WritePtr(mind->agenda.CurrentPlan.ObjectToActOn ? mind->agenda.CurrentPlan.ObjectToActOn->Pointer
			                                                     : NULL);
			file.WritePtr(mind->agenda.CurrentPlan.ObjectToUse ? mind->agenda.CurrentPlan.ObjectToUse->Pointer : NULL);
			if (mind->agenda.CurrentPlan.creature_action == CREATURE_DEAD_FOREVER)
			{
				mind->agenda.SubActionAgenda.CurrentSubAction = 0;
			}
			mind->agenda.SubActionAgenda.Save(file);
		}
		for (int glow = HAND_GLOW_TYPE_0; glow < HAND_GLOW_TYPE_LAST; glow++)
		{
			float scale;
			float power;
			GetCreedPower((HAND_GLOW_TYPE)glow, &scale, &power);
			file.WriteIt(scale);
			file.WriteIt(power);
		}
		return true;
	}
	return false;
}

bool32_t CreatureSubActionAgenda::Save(GameOSFile& file)
{
	file.WriteIt(field_0x8);
	file.WriteIt(CurrentSubAction);
	file.WriteIt(SubActionState);
	file.WriteIt(NumSubActions);
	file.WriteIt(field_0x18);
	file.WriteIt(MainSubAction);
	file.WriteIt(field_0x20);
	for (unsigned long i = CurrentSubAction; i < NumSubActions; i++)
	{
		CreatureSubAction& subAction = SubActions[i];
		file.WriteIt((uint32_t&)subAction.Action);
		if (subAction.Belief != NULL)
		{
			file.WritePtr(subAction.Belief->Pointer);
		}
		else
		{
			file.WritePtr(NULL);
		}
		file.WriteIt(subAction.field_0x10);
		file.WriteIt(subAction.field_0x14);
		file.WriteIt((uint32_t&)subAction.field_0x20);
		file.WriteIt(subAction.field_0x24);
		file.WriteIt(subAction.field_0x28);
		if (subAction.field_0x2c != NULL)
		{
			file.WritePtr(subAction.field_0x2c);
		}
		else
		{
			file.WritePtr(NULL);
		}
		file.WriteIt(subAction.field_0x30);
	}
	file.WritePtr(creature);
	file.WritePtr(Partner);
	return true;
}

bool32_t CreatureSubActionAgenda::Load(GameOSFile& file)
{
	file.ReadIt(field_0x8);
	field_0x8 = 1;
	file.ReadIt(CurrentSubAction);
	file.ReadIt(SubActionState);
	SubActionState = 0;
	file.ReadIt(NumSubActions);
	file.ReadIt(field_0x18);
	file.ReadIt(MainSubAction);
	file.ReadIt(field_0x20);
	field_0x20 = 1;
	for (unsigned long i = CurrentSubAction; i < NumSubActions; i++)
	{
		CreatureSubAction& subAction = SubActions[i];
		file.ReadIt((uint32_t&)subAction.Action);
		file.ReadPtr((GameThing**)&subAction.Belief);
		file.ReadIt(subAction.field_0x10);
		file.ReadIt(subAction.field_0x14);
		file.ReadIt((uint32_t&)subAction.field_0x20);
		file.ReadIt(subAction.field_0x24);
		file.ReadIt(subAction.field_0x28);
		GameThing* thing;
		file.ReadPtr(&thing);
		if (thing != NULL)
		{
			subAction.field_0x2c = thing;
		}
		else
		{
			subAction.field_0x2c = NULL;
		}
		file.ReadIt(subAction.field_0x30);
	}
	file.ReadPtr((GameThing**)&creature);
	file.ReadPtr((GameThing**)&Partner);
	return true;
}

bool32_t Creature::Load(GameOSFile& file)
{
	if (Living::Load(file))
	{
		if (alignment == NULL)
		{
			alignment = new (FILEPATH, 281) GAlignment();
		}
		file.ReadIt(MindVersion);
		file.ReadIt(MindSavedInsideCitadel);
		file.ReadIt(SavedCreatureIndex);
		file.ReadIt(SavedPlayerNumber);
		GPlayer*          player = NULL;
		GInterfaceStatus* status;
		GInterface*       playerInterface;
		if (SavedPlayerNumber != NO_SAVED_PLAYER)
		{
			player = GGame::g_game->GetPlayer(SavedPlayerNumber);
		}
		if (!GGame::g_game->IsMultiplayerGame() && player == GGame::g_game->GetPlayer(0) &&
		    (status = player->GetLeaderInterfaceStatus()) != NULL &&
		    (playerInterface = status->GetInterface()) != NULL && playerInterface->player != NULL)
		{
			char path[260];
			sprintf(path, CREATURE_MIND_FILE_PATH, playerInterface->player->UserFilename);
			Archive  archive(path, LH_FILE_MODE_READ_ONLY);
			uint32_t length;
			if (archive.IsOpen && archive.File.Length(&length) == LH_FILE_RESULT_OK && length > 0)
			{
				unsigned long creatureType;
				archive >> MindVersion;
				archive >> creatureType;
				info = &CreatureInfo::Infos[creatureType];
			}
		}
		Initialise(Pos, GetInfo(), player);
		for (int i = 0; i < CREATURE_RECEIVE_SPELL_SLOTS; i++)
		{
			file.ReadSafe(ReceiveSpell->data[i]);
		}
		file.ReadSafe(ReceiveSpell->queueData);
		if (MindVersion >= CREATURE_MIND_VERSION_CREATURE_FLAGS)
		{
			file.ReadIt(mind->debug.IsProcessing);
		}
		file.ReadIt(field_0x374);
		file.ReadIt(field_0x378);
		file.ReadIt(field_0x37c);
		file.ReadIt(field_0x12ac);
		file.ReadIt(field_0x12b0);
		file.ReadIt(field_0x12b4);
		file.ReadIt(field_0x12b8);
		file.ReadIt(field_0x12bc);
		file.ReadIt(IgnoredByVillagers);
		file.ReadPtr((GameThing**)&field_0x1078);
		file.ReadPtr((GameThing**)&field_0x1084);
		file.ReadPtr((GameThing**)&field_0x1088);
		file.ReadPtr((GameThing**)&ParticleContainer0x107c);
		file.ReadPtr((GameThing**)&ParticleContainer0x1080);
		file.ReadIt(field_0x11d8);
		file.ReadPtr((GameThing**)&ParticleContainer0x11e4);
		file.ReadPtr((GameThing**)&field_0x11e8);
		file.ReadIt(field_0x11f0);
		file.ReadPtr((GameThing**)&arena);
		file.ReadIt(HomePos);
		LH3DCreature* creature3d = GetCreature3D();
		file.ReadIt((uint32_t&)creature3d->field_0x4aa8);
		uint32_t autoFightStatus;
		file.ReadIt(autoFightStatus);
		SetAutoFightStatus(autoFightStatus);
		file.ReadSafe(ControlledVillagers);
		file.ReadPtr((GameThing**)&dance);
		file.ReadIt(field_0x1158);
		float strength;
		file.ReadIt((uint32_t&)strength);
		physical->SetStrength(strength);
		file.ReadIt(physical->Size);
		float alignment;
		file.ReadIt(alignment);
		this->alignment->CrudeSet(alignment);
		float size;
		file.ReadIt(size);
		physical->field_0x48 = size;
		file.ReadIt(field_0x115c);
		file.ReadIt(field_0x1160);
		file.ReadIt(SubActionAgendaSaved);
		if (SubActionAgendaSaved)
		{
			file.ReadIt(SavedPlanDesire);
			file.ReadIt(SavedPlanAction);
			file.ReadPtr((GameThing**)&SavedActivityObject);
			file.ReadPtr((GameThing**)&SavedObjectToActOn);
			file.ReadPtr((GameThing**)&SavedObjectToUse);
			SubActionAgenda.Load(file);
		}
		for (int glow = HAND_GLOW_TYPE_0; glow < HAND_GLOW_TYPE_LAST; glow++)
		{
			float scale;
			float power;
			file.ReadIt(scale);
			file.ReadIt(power);
			SetCreedPower((HAND_GLOW_TYPE)glow, scale, power, 0.0f);
		}
		return true;
	}
	return false;
}

void Creature::ResolveLoad()
{
	uint32_t length = (uint32_t)arena;
	GPlayer* player = NULL;
	if (SavedPlayerNumber != NO_SAVED_PLAYER)
	{
		player = GGame::g_game->GetPlayer(SavedPlayerNumber);
	}
	char path[248];
	char mindPath[260];
	GGame::g_game->path_creator.GetSaveGamePath(path);
	sprintf(path, SAVE_SLOT_PATH, path, SaveGameRoom::CurrentSlot);
	if (SaveGameRoom::CurrentSlot > SAVE_GAME_ROOM_LAST_NORMAL_SLOT &&
	    SaveGameRoom::CurrentSlot <= SAVE_GAME_ROOM_LAST_CIRCLE_SLOT)
	{
		sprintf(path, SAVE_SLOT_PATH, path, GGame::g_game->LandNumber);
	}
	if (GGame::g_game->MyPlayer() == player)
	{
		sprintf(mindPath, CREATURE_MIND_FILE_PATH,
		        player->GetLeaderInterfaceStatus()->GetInterface()->player->UserFilename);
	}
	else
	{
		sprintf(mindPath, SAVED_CREATURE_PATH, path, SavedCreatureIndex);
	}
	Archive archive(mindPath, LH_FILE_MODE_READ_ONLY);
	if (archive.IsOpen && archive.File.Length(&length) == LH_FILE_RESULT_OK && length > 0)
	{
		unsigned long creatureType;
		archive >> MindVersion;
		archive >> creatureType;
		CheckValidation(archive);
		mind->LoadMind(archive);
		Living::ResolveLoad();
	}
	LH3DCreature* creature3d = GetCreature3D();
	if (Game3dObject != NULL)
	{
		Game3dObject->Release();
	}
	Game3dObject = (Game3DObject*)creature3d->DynamicShadow;
	if (SubActionAgendaSaved)
	{
		for (unsigned long i = SubActionAgenda.CurrentSubAction; i < SubActionAgenda.NumSubActions; i++)
		{
			if (SubActionAgenda.SubActions[i].Belief != NULL)
			{
				SubActionAgenda.SubActions[i].Belief =
					mind->AddBeliefAboutObject(this, (GameThingWithPos*)SubActionAgenda.SubActions[i].Belief);
			}
		}
		CreaturePlan plan;
		plan.CreatureDesire = SavedPlanDesire;
		plan.creature_action = SavedPlanAction;
		if (SavedActivityObject != NULL)
		{
			plan.ActivityObject = mind->AddBeliefAboutObject(this, SavedActivityObject);
		}
		if (SavedObjectToActOn != NULL)
		{
			plan.ObjectToActOn = mind->AddBeliefAboutObject(this, SavedObjectToActOn);
		}
		if (SavedObjectToUse != NULL)
		{
			plan.ObjectToUse = mind->AddBeliefAboutObject(this, SavedObjectToUse);
		}
		mind->agenda.CurrentPlan = plan;
		arena = (GArena*)length;
		mind->agenda.CommandState.Commanded = true;
		mind->agenda.SubActionAgenda = SubActionAgenda;
	}
#ifndef VERSION_BW1W100
	if (ConfinedToObject && field_0x129c != -1)
	{
		GPlayer*  owner = GGame::g_game->GetPlayer(field_0x129c);
		Creature* creature = owner->creature.Get();
		if (creature != NULL)
		{
			ConfinementObject = creature;
			creature->ConfinedCreatures.AddToEnd(this);
		}
	}
#endif // VERSION_BW1W100
}

void CreatureMental::SaveMindToChosenFile()
{
	SaveMind(GUtils::GetFileNameFromDialog(false, "Save Mind", "", CREATURE_MIND_PATH));
}

void Creature::Save3D(char* path)
{
	Archive archive(path, LH_FILE_MODE_READ_WRITE);
	archive << (int)GetInfo()->CreatureType;
	archive << physical->Creature3d->GetSize();
	archive << physical->GetStrength();
	archive << physical->GetFatness();
	float alignment = ReceiveSpell->GetAlignmentToMentalSave();
	archive << alignment;
	physical->Creature3d->SaveDamage(archive);
}

bool Creature::CanLoad3D(char* name)
{
	char path[256];
	sprintf(path, CREATURE_PHYSIQUE_PATH, name);
	if (LHOSFile::Exists(path) == LH_FILE_RESULT_OK)
	{
		return true;
	}
	return false;
}

LH3DCreature* Creature::Load3D(char* name)
{
	char path[248];
	sprintf(path, CREATURE_PHYSIQUE_PATH, name);
	Archive archive(path, LH_FILE_MODE_READ_ONLY);
	if (archive.IsOpen)
	{
		unsigned long creatureType;
		archive >> creatureType;
		LH3DCreature* creature3d = new (FILEPATH, 577) LH3DCreature(NULL, LHPoint(0.0f, 0.0f, 0.0f), NULL);
		char          binaryName[260];
		sprintf(binaryName, "%s", CreatureFileName::Table[creatureType].BinaryName);
		if (!creature3d->LoadBinary(binaryName, 0))
		{
			return NULL;
		}
		{
			float size;
			float strength;
			float fatness;
			float alignment;
			archive >> size;
			archive >> strength;
			archive >> fatness;
			archive >> alignment;
			creature3d->SetSize(size);
			creature3d->WeakStrong = boundf(-1.0f, CreaturePhysical::ConvertStrengthTo3D(strength, creatureType), 1.0f);
			creature3d->ThinFat = boundf(-1.0f, fatness * 2.0f - 1.0f, 1.0f);
			creature3d->EvilGood = boundf(-1.0f, alignment, 1.0f);
			creature3d->LoadDamage(archive);
			creature3d->MorphTexture();
			creature3d->UpdateMorphing();
			return creature3d;
		}
	}
	return NULL;
}

unsigned long Creature::SaveMindToMemory(char** buffer)
{
	Archive archive(buffer, 0);
	mind->SaveMind(archive);
	archive.CloseMemory();
	return archive.Size;
}

void CreatureMental::SaveMind(char* path)
{
	if (creature.Get()->RemoteCreature != true)
	{
		Archive archive(path, LH_FILE_MODE_READ_WRITE);
		SaveMind(archive);
	}
}

void CreatureMental::SaveMind(Archive& archive)
{
	wchar_t name[256];
	archive << (unsigned long)CREATURE_MIND_VERSION_CURRENT;
	archive << (int)creature.Get()->GetInfo()->CreatureType;
	const char* profileName;
	if (creature.Get()->GetPlayer() != NULL && creature.Get()->GetPlayer()->GetLeaderInterfaceStatus() != NULL &&
	    creature.Get()->GetPlayer()->GetLeaderInterfaceStatus()->GetInterface()->player != NULL)
	{
		profileName = creature.Get()->GetPlayer()->GetLeaderInterfaceStatus()->GetInterface()->player->UserFilename;
	}
	else
	{
		profileName = "Graeme";
	}
	strcpy((char*)name, profileName);
	unsigned char length = strlen((char*)name) + 1;
	LHVersion::EncryptBlock((uint8_t*)name, length);
	archive << length;
	unsigned long i;
	for (i = 0; i < length; i++)
	{
		archive << ((char*)name)[i];
	}
	wcscpy(name, LHNetGetCurrentUsedProfile());
	length = (wcslen(name) + 1) * sizeof(wchar_t);
	LHVersion::EncryptBlock((uint8_t*)name, length);
	archive << length;
	for (i = 0; i < length; i++)
	{
		archive << ((char*)name)[i];
	}
	unsigned long nameLength = wcslen((wchar_t*)creature.Get()->name);
	archive << nameLength;
	for (i = 0; i < nameLength; i++)
	{
		archive << (unsigned short)creature.Get()->name[i];
	}
	archive << (unsigned long)creature.Get()->NumPeopleKilled;
	archive << (unsigned long)creature.Get()->NumAnimalsKilled;
	archive << (unsigned long)creature.Get()->NumCreaturesKilled;
	archive << (unsigned long)creature.Get()->NumBattlesFought;
	archive << (unsigned long)creature.Get()->NumBattlesWon;
	archive << (unsigned long)creature.Get()->NumPoos;
	archive << (unsigned long)creature.Get()->NumMushroomsEaten;
	archive << (int)NUM_CREATURE_DESIRES;
	for (i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		archive << (int)desires.Activated[i];
		archive << desires.Levels[i];
		archive << desires.MaxLevels[i];
		archive << desires.IncreaseTime[i];
		archive << (unsigned long)desires.SourceLists[i].count;
		for (LHLinkedNode<CreatureDesireSource*>* node = desires.SourceLists[i].GetStart(); node != NULL;
		     node = node->next.Get())
		{
			archive << node->payload->Value;
			archive << node->payload->Threshold;
			archive << (int)node->payload->Type;
		}
	}
	decision_tree_collection.Save(archive);
	ActionOpinions.Save(archive);
	for (i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		archive << learning.DesireFeedback[i].Feedback;
		archive << learning.DesireFeedback[i].GameTurn;
	}
	archive << (int)CREATURE_ACTION_KNOWN_ABOUT_LAST;
	for (i = 0; i < CREATURE_ACTION_KNOWN_ABOUT_LAST; i++)
	{
		archive << (unsigned long)learning.NumTimesNormalActionSeen[i];
		archive << (unsigned long)learning.GameTurnNormalActionFirstSeen[i];
	}
	archive << (int)MAGIC_TYPE_LAST;
	for (i = 0; i < MAGIC_TYPE_LAST; i++)
	{
		archive << (unsigned long)learning.NumTimesMagicActionSeen[i];
		archive << (unsigned long)learning.GameTurnMagicActionLastSeen[i];
	}
	archive << (unsigned long)AttitudeToPlayer.TotalNumGameTicksPlayerHasBeenWatchingMe;
	archive << AttitudeToPlayer.HowNicePlayerHasBeenToMe;
	for (i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		archive << AttitudeToPlayer.PerceivedPlayerDesires.Desires[i];
	}
	for (i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		archive << AttitudeToPlayer.PerceivedPlayerDesires.TownDesires[i];
	}
	ActionsKnownAbout.Save(archive);
	archive << (int)AvoidOwnPlayersThingsWhenAngry;
	float alignment = creature.Get()->ReceiveSpell->GetAlignmentToMentalSave();
	if (creature.Get()->GetPlayer() == GGame::g_game->MyPlayer() &&
	    GGame::g_game->script->IsScriptRunning("CreatureCurse"))
	{
		alignment = GGame::g_game->script->GetGlobalVariableValue("OriginalAlignmentOfMyCreature");
	}
	archive << alignment;
	archive << (unsigned long)creature.Get()->field_0x126c;
	archive << (int)creature.Get()->DevelopmentPhase;
	creature.Get()->physical->SaveBody(archive);
	MusicMoodController::WriteDatabase(&archive);
	archive << (int)creature.Get()->field_0x10c0;
	for (i = 0; i < ARRAY_SIZE(creature.Get()->LeashEnabled); i++)
	{
		archive << (int)creature.Get()->LeashEnabled[i];
	}
	for (i = 0; i < ARRAY_SIZE(creature.Get()->field_0x1170); i++)
	{
		archive << (unsigned long)creature.Get()->field_0x1170[i];
	}
	if (creature.Get()->TattooData != NULL)
	{
		archive << (long)*creature.Get()->TattooData;
		for (i = 0; i < *creature.Get()->TattooData; i++)
		{
			archive << ((char*)creature.Get()->TattooData)[i];
		}
	}
	else
	{
		archive << (long)0;
	}
	for (i = 0; i < OBJECT_TYPE_LAST; i++)
	{
		archive << (unsigned long)learning.HeldObjectActionCounts[i];
		archive << (unsigned long)learning.field_0x15984[i];
		archive << (unsigned long)learning.field_0x15a38[i];
	}
	archive << creature.Get()->GetCreature3D()->field_0x4aa8;
	archive << learning.field_0x1522c;
#ifndef VERSION_BW1W100
	archive << (int)creature.Get()->ConfinedToObject;
	archive << (long)creature.Get()->field_0x129c;
#endif // VERSION_BW1W100
}

void Creature::Load(char* name, const MapCoords& coords, GPlayer* player, MPFEStartGameData* data)
{
	char path[256];
	sprintf(path, CREATURE_MIND_FILE_PATH, name);
	LoadFullyQualified(path, coords, player, data);
}

void Creature::LoadFullyQualified(char* path, const MapCoords& coords, GPlayer* player, MPFEStartGameData* data)
{
	uint32_t length = 0;
	if (LHFileLength(path, &length) != LH_FILE_RESULT_OK)
	{
		length = 0;
	}
	Archive* archive;
	if (data == NULL)
	{
		archive = new (FILEPATH, 882) Archive(path, LH_FILE_MODE_READ_ONLY);
	}
	else
	{
		char* memory = data->CreatureData;
		if (memory == NULL || data->CreatureLength == 0)
		{
			return;
		}
		archive = new (FILEPATH, 890) Archive(&memory, data->CreatureLength);
	}
	if (archive != NULL)
	{
		if (archive->IsOpen && (length > 0 || data != NULL))
		{
			unsigned long creatureType;
			*archive >> MindVersion;
			*archive >> creatureType;
			if (creatureType >= CREATURE_TYPE_LAST)
			{
				return;
			}
			Creature* creature = CreateCreature(coords, &CreatureInfo::Infos[creatureType], player);
			if (creature != NULL)
			{
				if (data != NULL)
				{
					creature->RemoteCreature = data->LocalCreature != true;
				}
				else
				{
					creature->RemoteCreature = false;
				}
				strcpy(creature->MindFileName, path);
				if (MindVersion >= CREATURE_MIND_VERSION_VALIDATION)
				{
					creature->CheckValidation(*archive);
				}
				creature->mind->LoadMind(*archive);
			}
		}
		delete archive;
	}
}

bool32_t Creature::CheckValidation(Archive& archive)
{
	wchar_t       name[256];
	unsigned char length;
	unsigned long i;
	archive >> length;
	for (i = 0; i < length; i++)
	{
		archive >> ((char*)name)[i];
	}
	LHVersion::DecryptBlock((uint8_t*)name, length);
	LHLogger::GetFileName(archive.Name);
	archive >> length;
	for (i = 0; i < length; i++)
	{
		archive >> ((char*)name)[i];
	}
	LHVersion::DecryptBlock((uint8_t*)name, length);
	if (GetPlayer() == GGame::g_game->MyPlayer())
	{
		if (wcscmp(name, LHNetGetCurrentUsedProfile()) != 0)
		{
			return false;
		}
	}
	return true;
}

void CreatureMental::LoadMindIntoPreexistingCreature(Archive& archive)
{
	unsigned long creatureType;
	archive >> MindVersion;
	archive >> creatureType;
	creature.Get()->CheckValidation(archive);
	LoadMind(archive);
	creature.Get()->SendCandidateHelpScript(
		(CREATURE_HELP_TYPE)(CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_INITIAL + creature.Get()->DevelopmentPhase), 0, NULL,
		NULL, 0);
}

void CreatureMental::LoadMind(Archive& archive)
{
	wchar_t       name[64];
	unsigned long nameLength;
	unsigned long i;
	archive >> nameLength;
	for (i = 0; i < nameLength; i++)
	{
		archive >> (unsigned short&)name[i];
	}
	name[i] = 0;
	if (creature.Get() == NULL || creature.Get()->GetPlayer() == NULL ||
	    creature.Get()->GetPlayer()->type != PLAYER_TYPE_COMPUTER)
	{
		for (i = 0; i < nameLength; i++)
		{
			creature.Get()->name[i] = name[i];
		}
		creature.Get()->name[i] = 0;
	}
	archive >> (unsigned long&)creature.Get()->NumPeopleKilled;
	archive >> (unsigned long&)creature.Get()->NumAnimalsKilled;
	archive >> (unsigned long&)creature.Get()->NumCreaturesKilled;
	archive >> (unsigned long&)creature.Get()->NumBattlesFought;
	archive >> (unsigned long&)creature.Get()->NumBattlesWon;
	archive >> (unsigned long&)creature.Get()->NumPoos;
	if (MindVersion >= CREATURE_MIND_VERSION_MUSHROOMS)
	{
		archive >> (unsigned long&)creature.Get()->NumMushroomsEaten;
	}
	unsigned long numDesires;
	archive >> numDesires;
	for (i = 0; i < numDesires; i++)
	{
		float value;
		archive >> (int&)desires.Activated[i];
		archive >> desires.Levels[i];
		archive >> desires.MaxLevels[i];
		archive >> desires.IncreaseTime[i];
		if (MindVersion < CREATURE_MIND_VERSION_DESIRE_SOURCE_LEVELS)
		{
			archive >> value;
		}
		if (MindVersion >= CREATURE_MIND_VERSION_DESIRE_SOURCE_THRESHOLDS &&
		    MindVersion < CREATURE_MIND_VERSION_DESIRE_SOURCE_SUMMARY)
		{
			archive >> value;
		}
		if (MindVersion >= CREATURE_MIND_VERSION_DESIRE_SOURCE_LISTS)
		{
			LHLinkedNode<CreatureDesireSource*>* node;
			while ((node = desires.SourceLists[i].GetStart()) != NULL)
			{
				CreatureDesireSource* source = node->payload;
				desires.SourceLists[i].Remove(source);
				delete source;
			}
			unsigned long numSources;
			archive >> numSources;
			for (unsigned long j = 0; j < numSources; j++)
			{
				float threshold;
				long  type;
				archive >> value;
				archive >> threshold;
				archive >> type;
				CreatureDesireSource* source =
					new (FILEPATH, 1056) CreatureDesireSource((CREATURE_DESIRE_SOURCE)type, creature.Get());
				source->Value = value;
				source->Threshold = threshold;
				desires.SourceLists[i].AddToEnd(source);
			}
			if (MindVersion < CREATURE_MIND_VERSION_DESIRE_SOURCE_DECAY)
			{
				long decay;
				archive >> decay;
			}
		}
	}
	if (MindVersion >= CREATURE_MIND_VERSION_DESIRE_SOURCE_THRESHOLDS &&
	    MindVersion < CREATURE_MIND_VERSION_DESIRE_SOURCE_SUMMARY)
	{
		float value;
		archive >> value;
		archive >> value;
		archive >> value;
		archive >> value;
		archive >> value;
	}
	decision_tree_collection.Load(archive);
	if (MindVersion >= CREATURE_MIND_VERSION_ACTION_OPINIONS)
	{
		ActionOpinions.Load(archive);
	}
	for (i = 0; i < numDesires; i++)
	{
		archive >> learning.DesireFeedback[i].Feedback;
		archive >> learning.DesireFeedback[i].GameTurn;
	}
	unsigned long numActions;
	archive >> numActions;
	for (i = 0; i < numActions; i++)
	{
		archive >> (unsigned long&)learning.NumTimesNormalActionSeen[i];
		if (MindVersion >= CREATURE_MIND_VERSION_ACTION_SEEN_TURNS)
		{
			archive >> (unsigned long&)learning.GameTurnNormalActionFirstSeen[i];
		}
	}
	archive >> numActions;
	for (i = 0; i < numActions; i++)
	{
		archive >> (unsigned long&)learning.NumTimesMagicActionSeen[i];
		if (MindVersion >= CREATURE_MIND_VERSION_ACTION_SEEN_TURNS)
		{
			archive >> (unsigned long&)learning.GameTurnMagicActionLastSeen[i];
		}
	}
	archive >> (unsigned long&)AttitudeToPlayer.TotalNumGameTicksPlayerHasBeenWatchingMe;
	archive >> AttitudeToPlayer.HowNicePlayerHasBeenToMe;
	if (MindVersion >= CREATURE_MIND_VERSION_PERCEIVED_PLAYER_DESIRES)
	{
		for (i = 0; i < NUM_CREATURE_DESIRES; i++)
		{
			archive >> AttitudeToPlayer.PerceivedPlayerDesires.Desires[i];
		}
		for (i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
		{
			archive >> AttitudeToPlayer.PerceivedPlayerDesires.TownDesires[i];
		}
	}
	ActionsKnownAbout.Load(archive);
	if (MindVersion >= CREATURE_MIND_VERSION_AVOID_OWN_PLAYERS_THINGS)
	{
		archive >> (int&)AvoidOwnPlayersThingsWhenAngry;
	}
	AvoidOwnPlayersThingsWhenAngry = true;
	if (MindVersion < CREATURE_MIND_VERSION_ALIGNMENT)
	{
		unsigned long numAlignments;
		archive >> numAlignments;
		for (i = 0; i < numAlignments; i++)
		{
			float alignment;
			archive >> alignment;
		}
		creature.Get()->alignment->Value = 0.0f;
	}
	else
	{
		float alignment;
		archive >> alignment;
		creature.Get()->ReceiveSpell->SetAlignmentMentalLoaded(alignment);
	}
	archive >> (unsigned long&)creature.Get()->field_0x126c;
	archive >> (long&)creature.Get()->DevelopmentPhase;
	creature.Get()->physical->LoadBody(archive);
	creature.Get()->Update3DCreatureFromAttributes();
	if (MindVersion < CREATURE_MIND_VERSION_MUSIC_MOOD)
	{
		MusicMoodController::ReadDatabase(NULL, false);
	}
	else
	{
		MusicMoodController::ReadDatabase(&archive, creature.Get()->GetPlayer() == GGame::g_game->MyPlayer());
	}
	if (MindVersion >= CREATURE_MIND_VERSION_DIRECT_CONTROL)
	{
		archive >> (int&)creature.Get()->field_0x10c0;
	}
	if (MindVersion >= CREATURE_MIND_VERSION_LEASH_ENABLED)
	{
		for (i = 0; i < ARRAY_SIZE(creature.Get()->LeashEnabled); i++)
		{
			archive >> (int&)creature.Get()->LeashEnabled[i];
		}
	}
	if (MindVersion >= CREATURE_MIND_VERSION_TATTOOS)
	{
		for (i = 0; i < ARRAY_SIZE(creature.Get()->field_0x1170); i++)
		{
			archive >> (unsigned long&)creature.Get()->field_0x1170[i];
		}
		unsigned long tattooSize;
		archive >> tattooSize;
		if (tattooSize == 0)
		{
			creature.Get()->TattooData = NULL;
		}
		else
		{
			creature.Get()->TattooData = (uint32_t*)LH3DMem::Alloc(tattooSize);
			*creature.Get()->TattooData = tattooSize;
			for (i = 0; i < *creature.Get()->TattooData; i++)
			{
				archive >> ((char*)creature.Get()->TattooData)[i];
			}
		}
	}
	if (creature.Get()->GetPlayer() != NULL)
	{
		PlayerSymbol::RebuildLocalTattoo(NULL, creature.Get(), creature.Get()->GetPlayer()->GetPlayerNumber(), 0, NULL);
		creature.Get()->GetCreature3D()->MorphTexture();
	}
	if (MindVersion >= CREATURE_MIND_VERSION_HELD_OBJECT_COUNTS)
	{
		for (i = 0; i < OBJECT_TYPE_LAST; i++)
		{
			archive >> (unsigned long&)learning.HeldObjectActionCounts[i];
			archive >> (unsigned long&)learning.field_0x15984[i];
			if (MindVersion >= CREATURE_MIND_VERSION_OBJECT_COUNTS)
			{
				archive >> (unsigned long&)learning.field_0x15a38[i];
			}
		}
	}
	if (MindVersion >= CREATURE_MIND_VERSION_FIGHT_HEALTH)
	{
		archive >> creature.Get()->GetCreature3D()->field_0x4aa8;
	}
	if (MindVersion >= CREATURE_MIND_VERSION_LESSON_FEEDBACK)
	{
		archive >> learning.field_0x1522c;
	}
#ifndef VERSION_BW1W100
	if (MindVersion >= CREATURE_MIND_VERSION_CONFINEMENT)
	{
		archive >> (int&)creature.Get()->ConfinedToObject;
		archive >> (long&)creature.Get()->field_0x129c;
	}
#endif // VERSION_BW1W100
}

void CreatureActionsKnownAbout::Save(Archive& archive)
{
	for (int type = 0; type < CREATURE_ACTION_LEARNING_TYPE_LAST; type++)
	{
		archive << (unsigned long)ActionsKnown[type].count;
		for (LHLinkedNode<CreatureActionKnownAbout*>* node = ActionsKnown[type].GetStart(); node != NULL;
		     node = node->next.Get())
		{
			archive << node->payload->Action;
		}
	}
}

void CreatureActionsKnownAbout::Load(Archive& archive)
{
	for (int type = 0; type < CREATURE_ACTION_LEARNING_TYPE_LAST; type++)
	{
		unsigned long numActions;
		archive >> numActions;
		for (unsigned long i = 0; i < numActions; i++)
		{
			CreatureActionKnownAbout* action = new (FILEPATH, 1264) CreatureActionKnownAbout();
			archive >> action->Action;
			if (MindVersion < CREATURE_MIND_VERSION_ACTIONS_KNOWN_ABOUT)
			{
				unsigned long unused;
				archive >> unused;
			}
			if (!KnowsAction((CREATURE_ACTION_LEARNING_TYPE)type, action->Action))
			{
				ActionsKnown[type].AddToEnd(action);
			}
		}
	}
}

void CreatureBelief::Save(Archive& archive)
{
	archive << (int)GetType();
	archive << (unsigned long)Pos.x;
	archive << (unsigned long)Pos.z;
	archive << (unsigned long)GetNumAttributes();
	for (unsigned long i = 0; i < GetNumAttributes(); i++)
	{
		archive << (unsigned long)GetNthAttribute(i)->Value;
	}
}

void CreatureBelief::Load(Archive& archive)
{
	unsigned long x;
	unsigned long z;
	unsigned long numAttributes;
	archive >> x;
	archive >> z;
	Pos.SetWholeX(x);
	Pos.SetWholeZ(z);
	archive >> numAttributes;
	for (unsigned long i = 0; i < numAttributes; i++)
	{
		archive >> (unsigned long&)GetNthAttribute(i)->Value;
	}
}

void CreaturePhysical::SaveBody(Archive& archive)
{
	float height = creature->ReceiveSpell->GetPhysicalHeightToMentalSave();
	float strength = creature->ReceiveSpell->GetPhysicalStrengthToMentalSave();
	if (creature->GetPlayer() == GGame::g_game->MyPlayer() && GGame::g_game->script->IsScriptRunning("CreatureCurse"))
	{
		height = GGame::g_game->script->GetGlobalVariableValue("OriginalSizeOfMyCreature") * CREATURE_HEIGHT_TO_SIZE;
		strength = GGame::g_game->script->GetGlobalVariableValue("OriginalStrengthOfMyCreature");
	}
	archive << (unsigned long)field_0x70;
	archive << (unsigned long)Age;
	archive << strength;
	archive << Fatness;
	archive << field_0x18;
	archive << Energy;
	archive << Itchiness;
	archive << field_0x24;
	archive << AmountOfPoo;
	archive << Exhaustion;
	archive << Dehydration;
	archive << field_0x38;
	archive << DefaultSpeedInMetres;
	archive << RunningSpeedInMetres;
	archive << EnvMapped;
	archive << height;
	Creature3d->SaveDamage(archive);
}

void CreaturePhysical::LoadBody(Archive& archive)
{
	float strength;
	float height;
	archive >> (unsigned long&)field_0x70;
	archive >> (unsigned long&)Age;
	archive >> strength;
	archive >> Fatness;
	archive >> field_0x18;
	if (MindVersion < CREATURE_MIND_VERSION_BODY_AGE)
	{
		float unused;
		archive >> unused;
	}
	archive >> Energy;
	if (MindVersion >= CREATURE_MIND_VERSION_DESIRE_SOURCE_THRESHOLDS)
	{
		archive >> Itchiness;
	}
	archive >> field_0x24;
	archive >> AmountOfPoo;
	archive >> Exhaustion;
	archive >> Dehydration;
	archive >> field_0x38;
	archive >> DefaultSpeedInMetres;
	archive >> RunningSpeedInMetres;
	if (MindVersion >= CREATURE_MIND_VERSION_ENV_MAPPED)
	{
		int envMapped;
		archive >> envMapped;
		SetEnvMapped(envMapped);
		if (MindVersion >= CREATURE_MIND_VERSION_ENV_MAPPED)
		{
			archive >> height;
		}
	}
	creature->ReceiveSpell->SetPhysicalHeightMentalLoaded(height);
	creature->ReceiveSpell->SetPhysicalStrengthMentalLoaded(strength);
	Creature3d->SetSize(Size);
	Creature3d->LoadDamage(archive);
	creature->Update3DCreatureFromAttributes();
	Creature3d->MorphTexture();
	Creature3d->UpdateMorphing();
}

void DecisionTreeCollection::Save(Archive& archive)
{
	archive << (int)NUM_CREATURE_DESIRES;
	for (int desire = 0; desire < NUM_CREATURE_DESIRES; desire++)
	{
		agendas[DECISION_TREE_TYPE_ACTIVITY_OBJECT].contents[desire]->Save(archive);
		agendas[DECISION_TREE_TYPE_ACTION_OBJECT].contents[desire]->Save(archive);
	}
}

void DecisionTreeCollection::Load(Archive& archive)
{
	CleanUp();
	long numDesires;
	archive >> numDesires;
	for (long desire = 0; desire < numDesires; desire++)
	{
		agendas[DECISION_TREE_TYPE_ACTIVITY_OBJECT].contents[desire]->Load(archive);
		agendas[DECISION_TREE_TYPE_ACTION_OBJECT].contents[desire]->Load(archive);
	}
}

void CreatureActionOpinions::Save(Archive& archive)
{
	archive << (int)NUM_CREATURE_ACTIONS;
	for (int action = 0; action < NUM_CREATURE_ACTIONS; action++)
	{
		archive << entries[action];
	}
}

void CreatureActionOpinions::Load(Archive& archive)
{
	unsigned long numActions;
	archive >> numActions;
	for (unsigned long action = 0; action < numActions; action++)
	{
		archive >> entries[action];
	}
}

void DecisionTreeAgenda::Save(Archive& archive)
{
	archive << (long)tree_type;
	archive << (long)creature_desires;
	archive << (long)creature_desires;
	SaveExamples(archive);
}

void DecisionTreeAgenda::Load(Archive& archive)
{
	archive >> (long&)tree_type;
	archive >> (long&)creature_desires;
	archive >> (long&)creature_desires;
	LoadExamples(archive);
	ConstructBestTreeForExamples();
}

void DecisionTreeAgenda::SaveExamples(Archive& archive)
{
	archive << (unsigned long)Examples.count;
	for (LHLinkedNode<CreatureLearningEpisode*>* node = Examples.GetStart(); node != NULL; node = node->next.Get())
	{
		CreatureLearningEpisode* episode = node->payload;
		archive << (int)episode->Context->Type;
		archive << (int)episode->Context->Goal;
		archive << (int)episode->Context->Action;
		episode->Context->Belief->Save(archive);
		archive << episode->Feedback;
	}
}

void DecisionTreeAgenda::LoadExamples(Archive& archive)
{
	unsigned long numExamples;
	archive >> numExamples;
	for (unsigned long i = 0; i < numExamples; i++)
	{
		CreatureLearningEpisode* episode = new (FILEPATH, 1484) CreatureLearningEpisode();
		CreatureLearningContext* context = new (FILEPATH, 1486) CreatureLearningContext();
		int                      type;
		int                      beliefType;
		archive >> type;
		archive >> (int&)context->Goal;
		archive >> (int&)context->Action;
		archive >> beliefType;
		context->Belief = CreateBelief((CREATURE_BELIEF_TYPE)beliefType);
		context->Belief->Load(archive);
		episode->Context = context;
		archive >> episode->Feedback;
		if (Examples.count < DECISION_TREE_MAX_EXAMPLES)
		{
			Examples.AddToEnd(episode);
		}
		else
		{
			delete episode;
		}
	}
}
