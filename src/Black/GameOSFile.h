#ifndef BW1_DECOMP_GAME_OS_FILE_INCLUDED_H
#define BW1_DECOMP_GAME_OS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <Lionhead/LHFile/ver3.0/LHFile.h>           /* For enum LH_FILE_MODE */
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>      /* For struct LHLinkedList */

#include "GameThing.h"   /* For struct GameThing */
#include "SaveLoadPtr.h" /* For struct GSaveLoadPtr */

// Forward Declares

class CalculateDrawPosInfo;
class ChainJoint;
class CollectionAndOwnership;
class CreatureReceiveSpell_QueueData;
class CreatureReceiveSpell_TPerSpellData;
class GBaseInfo;
class GData;
class LHOSFile;
class LightningObjectInfo;
class Persistent;
class PosScaleRotation;
class PSysAnimInfo;
class PSysBase;
class PSysSoundAction;
class SpellTargets;
class TownDesire;
class TSphere;
struct MapCoords;
struct PSysProcessInfo;

class GameOSFile : public LHReleasedOSFile
{
public:
	uint32_t                   field_0x10c;
	char                       Filename[0x100]; /* 0x110 */
	uint32_t                   field_0x210;
	uint32_t                   Checksum; /* 0x214 */
	uint32_t                   field_0x218;
	uint32_t                   field_0x21c;
	LHLinkedList<GSaveLoadPtr> SaveLoadPtrList; /* 0x220 */
	LHLinkedList<GameThing>    GameThingList;

	// Override methods

	// BW1W120 00558050 BW1M100 1030fcb0 GameOSFile::~GameOSFile(void)
	// Scalar-deleting wrapper: BW1W120 00558030.
	virtual ~GameOSFile();
	// Open is inherited: the original vtable points directly to LHReleasedOSFile::Open.

	// Static data

	// TODO: Original global names unknown; revision fragments are deliberately separate.
	// BW1W120 00bec980, 00bec984, 00bec988, 00bec98c
	static char*    RevisionPrefix;
	static char*    RevisionSuffix;
	static char*    AutoSaveFilename;
	static uint32_t AutoSaveInterval;
	// BW1W120 00d01a80, 00d01a84, 00d01a9c
	static uint32_t LastAutoSaveTurn;
	static uint32_t SaveCount;
	static int      Saving;

	// TODO: Original names unknown; reset by SaveAllGame/LoadAllGame and cleared on I/O errors.
	// BW1W120 00bec990
	static int WriteEnabled;
	// BW1W120 00bec994
	static int ReadEnabled;
	// TODO: Original names unknown; shared state for loading and pointer reconstruction.
	// BW1W120 00d01a7c (read by GGame::Load)
	static unsigned char LoadedCreatureFlags;
	// BW1W120 00d01a88
	static uint32_t LoadCount;
	// BW1W120 00d01aa0 (also tested by footpath and circle-hug code)
	static int Loading;

	// Static methods

	// BW1W120 00558160 BW1M100 1030f6f0 GameOSFile::SaveAllGame(char *)
	static int SaveAllGame(char* filename);
	// BW1W120 005587b0 BW1M100 1030ef00 GameOSFile::LoadAllGame(char *)
	static int LoadAllGame(char* filename);
	// BW1W120 00563ff0 BW1M100 10300680 GameOSFile::AutoLoad(void)
	// The caller at 0054f77c tests the full result; original integer signedness is unknown.
	static int AutoLoad();
	// BW1W120 00564050 BW1M100 1007dfa0 GameOSFile::AutoSave(int)
	static int AutoSave(int force);
	// BW1W120 00564160 BW1M100 103003f0 GameOSFile::IsAutoSaveValid(void)
	static int IsAutoSaveValid();

	// Constructors

	// BW1W120 00557ff0 BW1M100 1030fde0 GameOSFile::GameOSFile(void)
	GameOSFile();

	// Non-virtual methods

	// BW1W120 inlined BW1M100 inlined GameOSFile::ReadIt<MapCoords>(MapCoords*)
	void ReadIt_MapCoords_(MapCoords* out);
	// BW1W120 inlined BW1M100 inlined GameOSFile::ReadIt<T>(T&)
	template <typename T> void ReadIt(T& out)
	{
		if (ReadEnabled)
		{
			if (Read(&out, sizeof(T), NULL) == LH_FILE_RESULT_ERROR)
			{
				ReadEnabled = 0;
			}
			Checksum += sizeof(T) + *(unsigned char*)&out;
		}
	}

	template <typename T> void WriteIt(T& value)
	{
		if (WriteEnabled)
		{
			if (Write(&value, sizeof(T), NULL) == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = 0;
			}
			Checksum += sizeof(T) + *(unsigned char*)&value;
		}
	}
	// BW1W120 00558dc0 BW1M100 10304ef0 GameOSFile::LoadInstance(GameThing **)
	// TODO: Integrate the recovered factory after fixing constructed class layouts,
	// particle nested scopes, and class-specific allocation functions.
	void LoadInstance(GameThing** out_thing);
	// BW1W120 00561c60 BW1M100 103049e0 GameOSFile::ResolveAllLoads(void)
	void ResolveAllLoads();
	// BW1W120 00561e10 BW1M100 10304650 GameOSFile::WritePtr(GameThing *)
	void WritePtr(GameThing* param_1);
	// BW1W120 00562180 BW1M100 10304470 GameOSFile::ReadPtr(GameThing **)
	void ReadPtr(GameThing** ptr);
	// BW1W120 00562240 BW1M100 10304370 GameOSFile::WritePtrArray(GameThing **, unsigned long)
	void WritePtrArray(GameThing** ptr, uint32_t count);
	// BW1W120 005622b0 BW1M100 10304270 GameOSFile::ReadPtrArray(GameThing **)
	void ReadPtrArray(GameThing** ptr);
	// BW1W120 00562330 BW1M100 10303fb0 GameOSFile::WriteSafe(SpellTargets &)
	void WriteSafe(SpellTargets& value);
	// BW1W120 005624e0 BW1M100 10303cc0 GameOSFile::ReadSafe(SpellTargets &)
	void ReadSafe(SpellTargets& value);
	// TODO: Other verified serializers still need their type tags and scope resolved.
	// BW1W120 005626c0 BW1M100 10303c20 GameOSFile::WriteSafe(CollectionAndOwnership &)
	void WriteSafe(CollectionAndOwnership& value);
	// BW1W120 00562720 BW1M100 10303b90 GameOSFile::ReadSafe(CollectionAndOwnership &)
	void ReadSafe(CollectionAndOwnership& value);
	// BW1W120 00562770 BW1M100 103038e0 GameOSFile::WriteSafe(LightningObjectInfo &)
	void WriteSafe(LightningObjectInfo& value);
	// BW1W120 005628c0 BW1M100 10303640 GameOSFile::ReadSafe(LightningObjectInfo &)
	void ReadSafe(LightningObjectInfo& value);
	// BW1W120 00562a00 GameOSFile::WriteSafe(CreatureReceiveSpell_TPerSpellData &)
	void WriteSafe(CreatureReceiveSpell_TPerSpellData& value);
	// BW1W120 00562b40 GameOSFile::ReadSafe(CreatureReceiveSpell_TPerSpellData &)
	void ReadSafe(CreatureReceiveSpell_TPerSpellData& value);
	// BW1W120 00562c70 GameOSFile::WriteSafe(CreatureReceiveSpell_QueueData &)
	void WriteSafe(CreatureReceiveSpell_QueueData& value);
	// BW1W120 00562d00 GameOSFile::ReadSafe(CreatureReceiveSpell_QueueData &)
	void ReadSafe(CreatureReceiveSpell_QueueData& value);
	// BW1W120 00562d90 BW1M100 10302eb0 GameOSFile::WriteSafe(Persistent * const &)
	void WriteSafe(Persistent* const& ptr);
	// BW1W120 00562e50 BW1M100 10302d90 GameOSFile::ReadSafe(Persistent *&)
	void ReadSafe(Persistent*& ptr);
	// BW1W120 00562f00 BW1M100 10302cd0 GameOSFile::WriteSafe(PSysSoundAction &)
	void WriteSafe(PSysSoundAction& value);
	// BW1W120 00563180 BW1M100 10302780 GameOSFile::ReadSafe(PSysSoundAction &)
	void ReadSafe(PSysSoundAction& value);
	// BW1W120 00562f50 BW1M100 10302c10 GameOSFile::WriteSafe(PosScaleRotation &)
	void WriteSafe(PosScaleRotation& value);
	// BW1W120 005631d0 BW1M100 103026c0 GameOSFile::ReadSafe(PosScaleRotation &)
	void ReadSafe(PosScaleRotation& value);
	// BW1W120 00562ff0 BW1M100 10302a90 GameOSFile::WriteSafe(ChainJoint &)
	void WriteSafe(ChainJoint& value);
	// BW1W120 00563270 BW1M100 10302540 GameOSFile::ReadSafe(ChainJoint &)
	void ReadSafe(ChainJoint& value);
	// BW1W120 00563090 BW1M100 103029c0 GameOSFile::WriteSafe(CalculateDrawPosInfo &)
	void WriteSafe(CalculateDrawPosInfo& value);
	// BW1W120 00563310 BW1M100 10302470 GameOSFile::ReadSafe(CalculateDrawPosInfo &)
	void ReadSafe(CalculateDrawPosInfo& value);
	// BW1W120 00563130 BW1M100 10302840 GameOSFile::WriteSafe(PSysAnimInfo &)
	void WriteSafe(PSysAnimInfo& value);
	// BW1W120 005633b0 BW1M100 103022f0 GameOSFile::ReadSafe(PSysAnimInfo &)
	void ReadSafe(PSysAnimInfo& value);
	// BW1W120 00562fa0 BW1M100 10302b50 GameOSFile::WriteSafe(TSphere &)
	void WriteSafe(TSphere& value);
	// BW1W120 00563220 BW1M100 10302600 GameOSFile::ReadSafe(TSphere &)
	void ReadSafe(TSphere& value);
	// BW1W120 005630e0 BW1M100 10302900 GameOSFile::WriteSafe(PSysProcessInfo &)
	void WriteSafe(PSysProcessInfo& value);
	// BW1W120 00563360 BW1M100 103023b0 GameOSFile::ReadSafe(PSysProcessInfo &)
	void ReadSafe(PSysProcessInfo& value);
	// BW1W120 00563400 BW1M100 10302290 GameOSFile::ReadSafe(PSysBase *&)
	void ReadSafe(PSysBase*& ptr);
	// BW1W120 00563410 BW1M100 10302230 GameOSFile::WriteSafe(PSysBase * const &)
	void WriteSafe(PSysBase* const& ptr);
	// BW1W120 00563420 BW1M100 103021d0 GameOSFile::ReadSafe(GameThing *&)
	void ReadSafe(GameThing*& ptr);
	// BW1W120 00563430 BW1M100 10302170 GameOSFile::WriteSafe(GameThing * const &)
	void WriteSafe(GameThing* const& ptr);
	// BW1W120 00563440 BW1M100 10301e90 GameOSFile::WriteSafe(GData &)
	void WriteSafe(GData& value);
	// BW1W120 00563620 BW1M100 10301be0 GameOSFile::ReadSafe(GData &)
	void ReadSafe(GData& value);
	// BW1W120 005637f0 BW1M100 10301420 GameOSFile::ReadSafe(TownDesire &)
	void ReadSafe(TownDesire& value);
	// BW1W120 00563b30 BW1M100 10300a30 GameOSFile::WriteSafe(TownDesire &)
	void WriteSafe(TownDesire& value);
	// BW1W120 00563ea0 BW1M100 10300970 GameOSFile::WriteInfo(GBaseInfo const *)
	void WriteInfo(const GBaseInfo* info);
	// BW1W120 00563f00 BW1M100 103008a0 GameOSFile::ReadInfo(GBaseInfo const **)
	void ReadInfo(const GBaseInfo** info);
	// BW1W120 00563f60 BW1M100 103007e0 GameOSFile::WriteCheckSum(GameThing *)
	void WriteCheckSum(GameThing* thing);
	// BW1W120 00563fa0 BW1M100 10300720 GameOSFile::ReadCheckSum(GameThing *)
	void ReadCheckSum(GameThing* thing);
};

static_assert(sizeof(GameOSFile) == 0x230, "GameOSFile size is incorrect");

#endif /* BW1_DECOMP_GAME_OS_FILE_INCLUDED_H */
