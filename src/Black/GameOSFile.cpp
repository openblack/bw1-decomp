#include "GameOSFile.h"

#include "BaseInfo.h"
#include "CalculateDrawPosInfo.h"
#include "ChainJoint.h"
#include "CollectionAndOwnership.h"
#include "Creature.h"
#include "CreatureReceiveSpell.h"
#include "Data.h"
#include "Game.h"
#include "HelpSystem.h"
#include "HelpText.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Living.h"
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

#include <stdio.h>
#include <string.h>

#include <Lionhead/LHLib/ver5.0/LHTimer.inl>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>

// TODO: Original name unknown. The release diagnostic at 00558db0 is an empty
// cdecl function; callers pass a message and discard the result.
void fn00558db0(const char* message);

char*    GameOSFile::RevisionPrefix = "$Revisio";
char*    GameOSFile::RevisionSuffix = "n: 183 $";
char*    GameOSFile::AutoSaveFilename = "20.sav";
uint32_t GameOSFile::AutoSaveInterval = 6000;
uint32_t GameOSFile::LastAutoSaveTurn;
uint32_t GameOSFile::SaveCount;
int      GameOSFile::Saving;

int GameOSFile::WriteEnabled = true;
int GameOSFile::ReadEnabled = true;

unsigned char    GameOSFile::LoadedCreatureFlags;
uint32_t         GameOSFile::LoadCount;
int              GameOSFile::Loading;
PhysicsSaveInfo* PhysicsSaveInfo::Buffer;
int              PhysicsSaveInfo::Count;
int              PhysicsSaveInfo::ReadIndex;

// BW1W120 00557f90 BW1M119 01312b40
void GameLoadingBox(bool finished);

// BW1W120 00557fc0 BW1M119 01312ae0
void GameSavingBox(bool finished);
// BW1W120 005580f0 BW1M119 01312550
void ResetCameraIfNecessary();
// BW1W120 005fa000 BW1M119 0110bf80
void InputReset();
// BW1W120 0054ca90 BW1M119 014367c0
void DoSaveProblemRequestor(char16_t* message);

// BW1W120 00557ff0 BW1M119 01312760
GameOSFile::GameOSFile()
{
	Checksum = 0;
	field_0x10c = 0;
}

// BW1W120 00558050 BW1M119 01312630
GameOSFile::~GameOSFile()
{
	while (SaveLoadPtrList.GetStart())
	{
		GSaveLoadPtr* ptr = SaveLoadPtrList.GetStart()->payload;
		SaveLoadPtrList.Remove(ptr, false);
		delete ptr;
	}
	while (GameThingList.GetStart())
	{
		GameThing* thing = GameThingList.GetStart()->payload;
		GameThingList.Remove(thing, false);
		delete thing;
	}
}

// BW1W120 00558160 BW1M119 01312040
int GameOSFile::SaveAllGame(char* filename)
{
	GameSavingBox(false);
	ResetCameraIfNecessary();
	GameOSFile file;
	SaveCount = 0;
	WriteEnabled = 1;
	Saving = 1;
	GGame::g_game->MyInterface()->StopAllImmersion();
	GGame::g_game->path_creator.CheckAndRecreateSaveGamePaths();

	char temporaryPath[260];
	strcpy(temporaryPath, filename);
	strcat(temporaryPath, ".tmp");
	if (file.Open(temporaryPath, LH_FILE_MODE_READ_WRITE) != LH_FILE_RESULT_OK)
	{
		return 0;
	}
	file.field_0x218 = 0;
	strcpy(file.Filename, temporaryPath);
	uint32_t attempts = 1;
	file.Write(&attempts, sizeof(attempts), NULL);
	file.SaveLoadPtrList.Add(new ("C:\\dev\\MP\\Black\\GameOSFile.cpp", 0x154) GSaveLoadPtr(GGame::g_game));

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
		temporaryPath[strlen(temporaryPath) - 4] = '\0';
		file.Delete(temporaryPath);
		char scriptPath[260];
		strcpy(scriptPath, temporaryPath);
		strcat(temporaryPath, ".tmp");
		file.Rename(temporaryPath, scriptPath);
	}
	else
	{
		DoSaveProblemRequestor(HelpTextDataBase::HelpTextDatabase.GetHelpText(0xd9c));
	}
	Saving = 0;
	GameSavingBox(true);
	InputReset();
	ResetCameraIfNecessary();
	return 1;
}

// BW1W120 005587b0 BW1M119 01311810
int GameOSFile::LoadAllGame(char* filename)
{
	GameLoadingBox(false);
	PhysicsSaveInfo::Buffer =
		(PhysicsSaveInfo*)operator new(sizeof(PhysicsSaveInfo) * 256, "C:\\dev\\MP\\Black\\GameOSFile.cpp", 0x1b8);
	PhysicsSaveInfo::Count = 0;
	PhysicsSaveInfo::ReadIndex = 0;
	ReadEnabled = 1;
	GameOSFile file;
	LoadCount = 0;
	if (file.Open(filename, LH_FILE_MODE_READ_WRITE_CREATE) != LH_FILE_RESULT_OK)
	{
		operator delete(PhysicsSaveInfo::Buffer);
		PhysicsSaveInfo::Buffer = NULL;
		return false;
	}

	// Persist an attempt before loading, so repeated crashes leave the save disabled.
	uint32_t attempts = 1000;
	file.Seek(0, LH_SEEK_BEGIN, NULL);
	file.Read(&attempts, sizeof(attempts), NULL);
	if (attempts >= 2)
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
	file.field_0x218 = 1;
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
		if (player->field_0x944)
		{
			((Base*)player->field_0x944)->ToBeDeleted(0);
			player->field_0x944 = 0;
		}
		GameThing::ProcessDeadList(1);
	}
	GGame::g_game->landscape.Open(landscape);
	GameThing* game = NULL;
	Loading = 1;
	file.LoadInstance(&game);
	file.ResolveAllLoads();
	Creature* creature = GGame::g_game->players[GGame::g_game->PlayerIndex].creature;
	if (creature)
	{
		creature->field_0x110c = (LoadedCreatureFlags & 1) != 0;
		creature->field_0x1110 = (LoadedCreatureFlags & 2) != 0;
		creature->field_0x1114 = (LoadedCreatureFlags & 4) != 0;
	}
	for (Living* living = GGame::g_game->GameLists.LivingList.head; living; living = living->next)
	{
		if (living->MoveState >= MOVE_TO_STATES_LINEAR && living->MoveState < _MOVE_TO_STATES_COUNT)
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

	uint32_t time = GGame::g_game->data.GameTurn * 100;
	GGame::g_game->timer.Stop();
	GGame::g_game->timer.Reset(time);
	GGame::g_game->timer.Start();
	operator delete(PhysicsSaveInfo::Buffer);
	PhysicsSaveInfo::Buffer = NULL;
	Loading = 0;
	GameLoadingBox(true);
	return true;
}

// BW1W120 00561c60 BW1M119 01307010
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
	GGame::g_game->script_creature_curse.ResolveLoad(GGame::g_game->players[GGame::g_game->PlayerIndex].creature);

	while (SaveLoadPtrList.GetStart())
	{
		GSaveLoadPtr* ptr = SaveLoadPtrList.GetStart()->payload;
		SaveLoadPtrList.Remove(ptr, false);
		delete ptr;
	}
	while (GameThingList.GetStart())
	{
		GameThing* thing = GameThingList.GetStart()->payload;
		GameThingList.Remove(thing, false);
		delete thing;
	}
}

// BW1W120 00561e10 BW1M119 01306750
void GameOSFile::WritePtr(GameThing* ptr)
{
	uint32_t index = 0;
	if (!WriteEnabled)
	{
		return;
	}
	if (ptr)
	{
		if (ptr == (GameThing*)-1)
		{
			fn00558db0("Peter: invalid save Pointer");
		}
		else if (!dynamic_cast<GameThing*>(ptr))
		{
			fn00558db0("Jeremy: failed miserably save has - tell me.");
			WriteEnabled = 0;
			return;
		}
		if (ptr->GetSaveType())
		{
			index = SaveLoadPtrList.count;
			LHLinkedNode<GSaveLoadPtr*>* node = SaveLoadPtrList.GetStart();
			while (node)
			{
				if ((GameThing*)node->payload->ptr == ptr)
				{
					WriteIt(index);
					return;
				}
				node = node->next.Get();
				--index;
			}
			SaveLoadPtrList.Add(new ("C:\\dev\\MP\\Black\\GameOSFile.cpp", 0x676) GSaveLoadPtr(ptr));
			WriteIt(SaveLoadPtrList.count);
			ptr->Save(*this);
			return;
		}
		switch (ptr->GetSaveType())
		{
		case 0xb:
			fn00558db0("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_SPELL_WOOD");
			break;
		case 0x21:
			fn00558db0("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_HELP_ORB");
			break;
		case 0x22:
			fn00558db0("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_HELP_ORB_HOLDER");
			break;
		case 0x57:
			fn00558db0("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_REWARD_SPELL_ICON");
			break;
		case 0x81:
			fn00558db0("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_SPELL_ICON");
			break;
		case 0xa0:
			fn00558db0("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_GAME_STATS_GRAPH_LINE");
			break;
		case 0x100:
			fn00558db0("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_BOOKMARK");
			break;
		case 0x104:
			fn00558db0("JEREMY: OLD TYPE FOR SAVE: SAVE_LOAD_FURNITURE");
			break;
		}
		fn00558db0("Oliver: Invalid instance being saved");
	}
	WriteIt(index);
}

// BW1W120 00562180 BW1M119 013061b0
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
				fn00558db0("Jeremy: Non-sequential pointer references in save game file");
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

// BW1W120 00562320 BW1M119 inlined
GSaveLoadPtr::GSaveLoadPtr(void* ptr)
{
	this->ptr = (uintptr_t)ptr;
}

// BW1W120 00562240 BW1M119 013060b0
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

// BW1W120 005622b0 BW1M119 01305fc0
void GameOSFile::ReadPtrArray(GameThing** ptr)
{
	// The original leaves count uninitialized when reads are disabled.
	uint32_t count;
	ReadIt(count);
	for (uint32_t i = 0; i < count; ++i)
	{
		ReadPtr(&ptr[i]);
	}
}

// BW1W120 00562330 BW1M119 01305d00
void GameOSFile::WriteSafe(SpellTargets& value)
{
	if (!WriteEnabled)
	{
		return;
	}
	long count = value.Objects.Size;
	WriteIt(count);
	for (long i = 0; i < count; ++i)
	{
		GTPointer<GameThing>& target = value.Objects.Data[i];
		WriteIt(target.GameTurnValidated);
		WriteSafe(target.Pointer);
		if (!WriteEnabled)
		{
			break;
		}
	}
	if (WriteEnabled)
	{
		count = value.Points.Size;
		WriteIt(count);
		for (long i = 0; i < count; ++i)
		{
			WriteIt(value.Points.Data[i]);
			if (!WriteEnabled)
			{
				break;
			}
		}
	}
	WriteIt(value.CurrentTarget);
}

// BW1W120 005624e0 BW1M119 01305a10
void GameOSFile::ReadSafe(SpellTargets& value)
{
	// The original appends, and does not stop an element loop after a failed read.
	if (ReadEnabled)
	{
		long count;
		ReadIt(count);
		for (long i = 0; i < count; ++i)
		{
			GTPointer<GameThing> target;
			if (ReadEnabled)
			{
				ReadIt(target.GameTurnValidated);
				ReadSafe(target.Pointer);
			}
			value.Objects.PushBack(target);
		}
	}
	if (ReadEnabled)
	{
		long count;
		ReadIt(count);
		for (long i = 0; i < count; ++i)
		{
			LHPoint point;
			ReadIt(point);
			value.Points.PushBack(point);
		}
	}
	ReadIt(value.CurrentTarget);
}

// BW1W120 005626c0 BW1M119 01305970
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

// BW1W120 00562720 BW1M119 013058e0
void GameOSFile::ReadSafe(CollectionAndOwnership& value)
{
	ReadSafe(value.Collection);
	ReadIt(value.OwnsCollection);
}

// BW1W120 00562770 BW1M119 01305630
void GameOSFile::WriteSafe(LightningObjectInfo& value)
{
	if (!WriteEnabled)
	{
		return;
	}
	// Windows shares the unsigned-int specialization for this unsigned-long field.
	WriteIt(reinterpret_cast<unsigned int&>(value.field_0x0));
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
	WriteIt(value.field_0x14);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.field_0x15);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.field_0x16);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.field_0x18);
}

// BW1W120 005628c0 BW1M119 01305390
void GameOSFile::ReadSafe(LightningObjectInfo& value)
{
	if (ReadEnabled)
	{
		// Windows shares the unsigned-int specialization, as in the writer.
		ReadIt(reinterpret_cast<unsigned int&>(value.field_0x0));
		ReadSafe(reinterpret_cast<GameThing*&>(value.Target));
	}
	ReadIt(value.Position);
	ReadIt(value.field_0x14);
	ReadIt(value.field_0x15);
	ReadIt(value.field_0x16);
	ReadIt(value.field_0x18);
}

// BW1W120 00562a00 BW1M119 01305170
void GameOSFile::WriteSafe(CreatureReceiveSpell_TPerSpellData& value)
{
	if (WriteEnabled)
	{
		WriteIt(value.field_0x0);
		WriteIt(value.field_0x4);
		WriteIt(value.field_0x8);
		WriteIt(value.field_0xc);
		WriteIt(value.field_0x10);
		WritePtr(value.field_0x14);
	}
}

// BW1W120 00562b40 BW1M119 01304f70
void GameOSFile::ReadSafe(CreatureReceiveSpell_TPerSpellData& value)
{
	ReadIt(value.field_0x0);
	ReadIt(value.field_0x4);
	ReadIt(value.field_0x8);
	ReadIt(value.field_0xc);
	ReadIt(value.field_0x10);
	ReadPtr(&value.field_0x14);
}

// BW1W120 00562c70 BW1M119 01304e40
void GameOSFile::WriteSafe(CreatureReceiveSpell_QueueData& value)
{
	if (WriteEnabled)
	{
		WriteIt(value.field_0x0);
		WriteIt(value.field_0x4);
		WritePtr(value.field_0x8);
	}
}

// BW1W120 00562d00 BW1M119 01304d20
void GameOSFile::ReadSafe(CreatureReceiveSpell_QueueData& value)
{
	ReadIt(value.field_0x0);
	ReadIt(value.field_0x4);
	ReadPtr(&value.field_0x8);
}

// BW1W120 00562d90 BW1M119 01304c00
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

// BW1W120 00562e50 BW1M119 01304ae0
void GameOSFile::ReadSafe(Persistent*& ptr)
{
	// The original resolves the IDs even after a read failure, without initializing them.
	long fileId, index;
	ReadIt(fileId);
	ReadIt(index);
	ptr = Persistent::GetFromSaveID(fileId, index);
}

// BW1W120 00562f00 BW1M119 01304a20
void GameOSFile::WriteSafe(PSysSoundAction& value)
{
	WriteIt(value);
}

// BW1W120 00562f50 BW1M119 01304960
void GameOSFile::WriteSafe(PosScaleRotation& value)
{
	WriteIt(value);
}

// BW1W120 00562ff0 BW1M119 013047e0
void GameOSFile::WriteSafe(ChainJoint& value)
{
	WriteIt(value);
}

// BW1W120 00563090 BW1M119 01304710
void GameOSFile::WriteSafe(CalculateDrawPosInfo& value)
{
	WriteIt(value);
}

// BW1W120 00563130 BW1M119 01304590
void GameOSFile::WriteSafe(PSysAnimInfo& value)
{
	WriteIt(value);
}

// BW1W120 00563180 BW1M119 013044d0
void GameOSFile::ReadSafe(PSysSoundAction& value)
{
	ReadIt(value);
}

// BW1W120 005631d0 BW1M119 01304410
void GameOSFile::ReadSafe(PosScaleRotation& value)
{
	ReadIt(value);
}

// BW1W120 00563270 BW1M119 01304290
void GameOSFile::ReadSafe(ChainJoint& value)
{
	ReadIt(value);
}

// BW1W120 00563310 BW1M119 013041c0
void GameOSFile::ReadSafe(CalculateDrawPosInfo& value)
{
	ReadIt(value);
}

// BW1W120 005633b0 BW1M119 01304040
void GameOSFile::ReadSafe(PSysAnimInfo& value)
{
	ReadIt(value);
}

// BW1W120 00562fa0 BW1M119 013048a0
void GameOSFile::WriteSafe(TSphere& value)
{
	WriteIt(value);
}

// BW1W120 005630e0 BW1M119 01304650
void GameOSFile::WriteSafe(PSysProcessInfo& value)
{
	WriteIt(value);
}

// BW1W120 00563220 BW1M119 01304350
void GameOSFile::ReadSafe(TSphere& value)
{
	ReadIt(value);
}

// BW1W120 00563360 BW1M119 01304100
void GameOSFile::ReadSafe(PSysProcessInfo& value)
{
	ReadIt(value);
}

// BW1W120 00563400 BW1M119 01303fe0
void GameOSFile::ReadSafe(PSysBase*& ptr)
{
	ReadPtr((GameThing**)&ptr);
}

// BW1W120 00563410 BW1M119 01303f80
void GameOSFile::WriteSafe(PSysBase* const& ptr)
{
	WritePtr(ptr);
}

// BW1W120 00563420 BW1M119 01303f20
void GameOSFile::ReadSafe(GameThing*& ptr)
{
	ReadPtr(&ptr);
}

// BW1W120 00563430 BW1M119 01303ec0
void GameOSFile::WriteSafe(GameThing* const& ptr)
{
	WritePtr(ptr);
}

// BW1W120 00563440 BW1M119 01303be0
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
	WriteIt(value.field_0xc);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.GameTurn);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.field_0x14);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.NumCreatedObjects);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.field_0x1c);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.field_0x20);
	if (!WriteEnabled)
	{
		return;
	}
	WriteIt(value.field_0x24);
}

// BW1W120 00563620 BW1M119 01303930
void GameOSFile::ReadSafe(GData& value)
{
	ReadIt(value.RandSeed);
	ReadIt(value.field_0xc);
	ReadIt(value.GameTurn);
	ReadIt(value.field_0x14);
	ReadIt(value.NumCreatedObjects);
	ReadIt(value.field_0x1c);
	ReadIt(value.field_0x20);
	ReadIt(value.field_0x24);
}

// BW1W120 005637f0 BW1M119 01303070
void GameOSFile::ReadSafe(TownDesire& value)
{
	ReadCountedArray(*this, value.field_0x8);
	ReadCountedArray(*this, value.field_0x4c);
	ReadCountedArray(*this, value.field_0x90);
	ReadCountedArray(*this, value.field_0xd4);
	ReadCountedArray(*this, value.field_0x118);
	ReadIt(value.field_0x15fc);
	ReadPtr((GameThing**)&value.town);
	ReadIt(value.field_0x164);
	ReadCountedArray(*this, value.field_0x168);
	ReadCountedArray(*this, value.field_0x1ac);
	ReadCountedArray(*this, value.field_0x1f0);
	ReadCountedArray(*this, value.field_0x234);
	ReadCountedArray(*this, value.sorts);
	ReadCountedArray(*this, value.sorts2);
	ReadCountedArray(*this, value.field_0x410);
	ReadCountedArray(*this, value.field_0x454);
	ReadCountedArray(*this, value.field_0x498);
	ReadCountedArray(*this, value.field_0x4dc);
	ReadCountedArray(*this, value.field_0x520);
}

// BW1W120 00563b30 BW1M119 01302700
void GameOSFile::WriteSafe(TownDesire& value)
{
	WriteCountedArray(*this, value.field_0x8, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0x4c, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0x90, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0xd4, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0x118, TOWN_DESIRE_INFO_LAST);
	WriteIt(value.field_0x15fc);
	WritePtr(value.town);
	WriteIt(value.field_0x164);
	WriteCountedArray(*this, value.field_0x168, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0x1ac, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0x1f0, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0x234, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.sorts, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.sorts2, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0x410, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0x454, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0x498, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0x4dc, TOWN_DESIRE_INFO_LAST);
	WriteCountedArray(*this, value.field_0x520, TOWN_DESIRE_INFO_LAST);
}

// BW1W120 00563ea0 BW1M119 01302640
void GameOSFile::WriteInfo(const GBaseInfo* info)
{
	unsigned long index = info->GetInfoID();
	WriteIt(index);
}

// BW1W120 00563f00 BW1M119 01302570
void GameOSFile::ReadInfo(const GBaseInfo** info)
{
	unsigned long index;
	ReadIt(index);
	*info = GBaseInfo::GetInfoPtr(index);
}

// BW1W120 00563f60 BW1M119 013024b0
void GameOSFile::WriteCheckSum(GameThing* thing)
{
	if (WriteEnabled)
	{
		WriteIt(Checksum);
	}
}

// BW1W120 00563fa0 BW1M119 013023e0
void GameOSFile::ReadCheckSum(GameThing* thing)
{
	// The release build does not compare the saved checksum.
	uint32_t checksum;
	ReadIt(checksum);
}

// BW1W120 00563ff0 BW1M119 01302340
int GameOSFile::AutoLoad()
{
	char filename[260];
	GGame::g_game->path_creator.GetAutoSavePath(filename);
	sprintf(filename, "%s\\%s", filename, AutoSaveFilename);
	SaveGameRoom::CurrentSlot = 20;
	return LoadAllGame(filename);
}

// BW1W120 00564050 BW1M119 01080520
int GameOSFile::AutoSave(int force)
{
	if ((!GGame::g_game->help_system->field_0x45e8 || !GGame::g_game->help_system->field_0x45ec) &&
	    !GGame::g_game->IsMultiplayerGame() && GGame::g_game->LandNumber != 6 &&
	    ((GGame::g_game->data.GameTurn - LastAutoSaveTurn > AutoSaveInterval && !(GGame::g_game->field_0x14 & 4)) ||
	     force))
	{
		LastAutoSaveTurn = GGame::g_game->data.GameTurn;
		GGame::g_game->field_0x2502a4 = 1;
		unsigned long slot = 0;
		char          key[128];
		sprintf(key, "CircleSlot(%d)", GGame::g_game->LandNumber);
		if (LHNetGetCurrentProfileUlong(key, &slot) != LH_OK)
		{
			slot = 0;
		}
		SaveGameRoom::InstantSaveGame(slot % 3 + 15);
		++slot;
		LHNetSetCurrentProfileUlong(key, slot);
		return 1;
	}
	return 0;
}

// BW1W120 00564160 BW1M119 01302120
int GameOSFile::IsAutoSaveValid()
{
	char filename[260];
	GGame::g_game->path_creator.GetAutoSavePath(filename);
	sprintf(filename, "%s\\%s", filename, AutoSaveFilename);
	if (LHOSFile::Exists(filename) == LH_FILE_RESULT_NOT_FOUND)
	{
		return 0;
	}
	GameOSFile file;
	if (file.Open(filename, LH_FILE_MODE_READ_ONLY) != LH_FILE_RESULT_OK)
	{
		return 0;
	}
	uint32_t attempts;
	file.Read(&attempts, sizeof(attempts), NULL);
	LoadCount = 0;
	file.field_0x218 = 1;
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
	// The release binary does not reject the attempt count, revision, or read errors.
	return 1;
}

// Placeholder name; see the declaration above.
// BW1W120 00558db0
void fn00558db0(const char* message) {}

// BW1W120 005586c0 BW1M119 01311ec0
void PhysicsSaveInfo::ReadInfo(GameOSFile& file)
{
	if (Count < 256)
	{
		PhysicsSaveInfo& info = Buffer[Count];
		file.ReadIt(info.Matrix);
		file.ReadIt(info.Velocity);
		file.ReadIt(info.AngularVelocity);
		++Count;
	}
}
