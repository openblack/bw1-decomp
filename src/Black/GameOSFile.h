#ifndef BW1_DECOMP_GAME_OS_FILE_INCLUDED_H
#define BW1_DECOMP_GAME_OS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHMatrix.h>   /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>    /* For struct LHPoint */
#include <Lionhead/LHFile/ver3.0/LHFile.h>           /* For enum LH_FILE_MODE */
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>      /* For struct LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHListHead.h>        /* For struct LHListHead */

#include <re_common.h> /* For bool32_t */

#include "GameThing.h"   /* For struct GameThing */
#include "MapCoords.h"   /* For struct MapCoords */
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
	uint32_t                    field_0x10c;
	char                        Filename[0x100]; /* 0x110 */
	uint32_t                    field_0x210;
	uint32_t                    Checksum; /* 0x214 */
	uint32_t                    field_0x218;
	uint32_t                    field_0x21c;
	LHLinkedList<GSaveLoadPtr*> SaveLoadPtrList; /* 0x220 */
	LHLinkedList<GameThing*>    GameThingList;

	// Static data

	// TODO: Original global names unknown; revision fragments are deliberately separate.
	// BW1W120 00bec980
	static char* RevisionPrefix;
	// BW1W120 00bec984
	static char* RevisionSuffix;
	// BW1W120 00bec988
	static char* AutoSaveFilename;
	// BW1W120 00bec98c
	static uint32_t AutoSaveInterval;
	// BW1W120 00d01a80
	static uint32_t LastAutoSaveTurn;
	// BW1W120 00d01a84
	static uint32_t SaveCount;
	// BW1W120 00d01a9c
	static int Saving;

	// TODO: Original names unknown; reset by SaveAllGame/LoadAllGame and cleared on I/O errors.
	// BW1W120 00bec990
	static int WriteEnabled;
	// BW1W120 00bec994
	static int ReadEnabled;
	// TODO: Original names unknown; shared state for loading and pointer reconstruction.
	// (read by GGame::Load)
	// BW1W120 00d01a7c
	static unsigned char LoadedCreatureFlags;
	// BW1W120 00d01a88
	static uint32_t LoadCount;
	// (also tested by footpath and circle-hug code)
	// BW1W120 00d01aa0
	static int Loading;

	// Override methods

	// BW1W120 00558050 BW1M119 01312630
	// Scalar-deleting wrapper: BW1W120 00558030.
	virtual ~GameOSFile();
	// Static methods

	// BW1W120 00558160 BW1M119 01312040
	static int SaveAllGame(char* filename);
	// BW1W120 005587b0 BW1M119 01311810
	static int LoadAllGame(char* filename);
	// BW1W120 00563ff0 BW1M119 01302340
	// The caller at 0054f77c tests the full result; original integer signedness is unknown.
	static int AutoLoad();
	// BW1W120 00564050 BW1M119 01080520
	static int AutoSave(int force);
	// BW1W120 00564160 BW1M119 01302120
	static int IsAutoSaveValid();

	// Constructors

	// BW1W120 00557ff0 BW1M119 01312760
	GameOSFile();

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void ReadIt_MapCoords_(MapCoords* out);
	// BW1W120 inlined BW1M119 013bbf00
	void ReadSafe(uint8_t& value)
	{
		if (ReadEnabled)
		{
			if (Read(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				ReadEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	void ReadSafe(uint16_t& value)
	{
		if (ReadEnabled)
		{
			if (Read(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				ReadEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	// BW1W120 inlined BW1M119 012ae550
	void ReadSafe(uint32_t& value)
	{
		if (ReadEnabled)
		{
			if (Read(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				ReadEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	void ReadSafe(int32_t& value)
	{
		if (ReadEnabled)
		{
			if (Read(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				ReadEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	// fabricated: no MapCoords overload survives in either binary, but Abode::Load
	// reads its 12-byte MapCoords through this shape.
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(MapCoords& value)
	{
		if (ReadEnabled)
		{
			if (Read(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				ReadEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	// BW1W120 inlined BW1M119 013bc2a0
	void WriteSafe(uint8_t& value)
	{
		if (WriteEnabled)
		{
			if (Write(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	// BW1W120 inlined BW1M119 012aef50
	void WriteSafe(uint32_t& value)
	{
		if (WriteEnabled)
		{
			if (Write(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	void WriteSafe(int32_t& value)
	{
		if (WriteEnabled)
		{
			if (Write(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	void WriteSafe(uint16_t& value)
	{
		if (WriteEnabled)
		{
			if (Write(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	// fabricated: see ReadSafe(MapCoords &)
	// BW1W120 inlined BW1M119 inlined
	void WriteSafe(MapCoords& value)
	{
		if (WriteEnabled)
		{
			if (Write(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	// BW1W120 inlined BW1M119 01305e60
	void WriteSafe(LHPoint& value)
	{
		if (WriteEnabled)
		{
			if (Write(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	// fabricated: no LHMatrix overload survives in either binary, but Object::Save
	// writes its 48-byte matrix through this shape.
	// BW1W120 inlined BW1M119 inlined
	void WriteSafe(LHMatrix& value)
	{
		if (WriteEnabled)
		{
			if (Write(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	// Instantiated per translation unit; the linker folds the copies, so an address
	// only names whichever unit won. BW1W120 00407750 is ReadIt<long> in this build.
	// A list is stored as its count followed by that many GameThing pointers. The
	// count is copied out before it is written, because WriteIt takes it by
	// reference and the walk that follows has to agree with what went to disk: a
	// list longer than its own count would deserialise short, so the save is failed
	// instead. Seeding the cursor with NULL keeps the first element and the
	// successors in one expression, which the compiler emits as a single
	// next-or-head dispatcher.
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void ReadSafe(LHListHead<T>& list)
	{
		if (ReadEnabled)
		{
			int count;
			ReadIt(count);
			while (count > 0)
			{
				T* element;
				ReadPtr((GameThing**)&element);
				element->next = NULL;
				list.AddToLast(element);
				count--;
			}
		}
	}
	// BW1W120 inlined BW1M119 inlined
	// Declaring written/element inside the guarded block is load-bearing: hoisting
	// them out swaps the ebx/edi/ebp assignment in Abode::Save (see its 100% match).
	template <typename T> void WriteSafe(LHListHead<T>& list)
	{
		if (WriteEnabled)
		{
			uint32_t count = list.count;
			WriteIt(list.count);
			int written = 0;
			for (T* element = NULL; (element = (element == NULL ? list.head : element->next)) != NULL;)
			{
				if (++written > (int)count)
				{
					WriteEnabled = false;
					break;
				}
				if (!WriteEnabled)
				{
					break;
				}
				WritePtr(element);
			}
		}
	}

	// BW1W120 00407750 BW1M119 010bd770
	template <typename T> void ReadIt(T& out)
	{
		if (ReadEnabled)
		{
			if (Read(&out, sizeof(out), NULL) == LH_FILE_RESULT_ERROR)
			{
				ReadEnabled = false;
			}
			Checksum += *(uint8_t*)&out + sizeof(out);
		}
	}

	// BW1W120 00407700 BW1M119 010a9e00
	template <typename T> void WriteIt(T& value)
	{
		if (WriteEnabled)
		{
			if (Write(&value, sizeof(value), NULL) == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			Checksum += *(uint8_t*)&value + sizeof(value);
		}
	}
	// BW1W120 00558dc0 BW1M119 01307600
	// TODO: Integrate the recovered factory after fixing constructed class layouts,
	// particle nested scopes, and class-specific allocation functions.
	void LoadInstance(GameThing** out_thing);
	// BW1W120 00561c60 BW1M119 01307010
	void ResolveAllLoads();
	// BW1W120 00561e10 BW1M119 01306750
	void WritePtr(GameThing* param_1);
	// BW1W120 00562180 BW1M119 013061b0
	void ReadPtr(GameThing** ptr);
	// BW1W120 00562240 BW1M119 013060b0
	void WritePtrArray(GameThing** ptr, uint32_t count);
	// BW1W120 005622b0 BW1M119 01305fc0
	void ReadPtrArray(GameThing** ptr);
	// BW1W120 00562330 BW1M119 01305d00
	void WriteSafe(SpellTargets& value);
	// BW1W120 005624e0 BW1M119 01305a10
	void ReadSafe(SpellTargets& value);
	// TODO: Other verified serializers still need their type tags and scope resolved.
	// BW1W120 005626c0 BW1M119 01305970
	void WriteSafe(CollectionAndOwnership& value);
	// BW1W120 00562720 BW1M119 013058e0
	void ReadSafe(CollectionAndOwnership& value);
	// BW1W120 00562770 BW1M119 01305630
	void WriteSafe(LightningObjectInfo& value);
	// BW1W120 005628c0 BW1M119 01305390
	void ReadSafe(LightningObjectInfo& value);
	// BW1W120 00562a00 BW1M119 01305170
	void WriteSafe(CreatureReceiveSpell_TPerSpellData& value);
	// BW1W120 00562b40 BW1M119 01304f70
	void ReadSafe(CreatureReceiveSpell_TPerSpellData& value);
	// BW1W120 00562c70 BW1M119 01304e40
	void WriteSafe(CreatureReceiveSpell_QueueData& value);
	// BW1W120 00562d00 BW1M119 01304d20
	void ReadSafe(CreatureReceiveSpell_QueueData& value);
	// BW1W120 00562d90 BW1M119 01304c00
	void WriteSafe(Persistent* const& ptr);
	// BW1W120 00562e50 BW1M119 01304ae0
	void ReadSafe(Persistent*& ptr);
	// BW1W120 00562f00 BW1M119 01304a20
	void WriteSafe(PSysSoundAction& value);
	// BW1W120 00563180 BW1M119 013044d0
	void ReadSafe(PSysSoundAction& value);
	// BW1W120 00562f50 BW1M119 01304960
	void WriteSafe(PosScaleRotation& value);
	// BW1W120 005631d0 BW1M119 01304410
	void ReadSafe(PosScaleRotation& value);
	// BW1W120 00562ff0 BW1M119 013047e0
	void WriteSafe(ChainJoint& value);
	// BW1W120 00563270 BW1M119 01304290
	void ReadSafe(ChainJoint& value);
	// BW1W120 00563090 BW1M119 01304710
	void WriteSafe(CalculateDrawPosInfo& value);
	// BW1W120 00563310 BW1M119 013041c0
	void ReadSafe(CalculateDrawPosInfo& value);
	// BW1W120 00563130 BW1M119 01304590
	void WriteSafe(PSysAnimInfo& value);
	// BW1W120 005633b0 BW1M119 01304040
	void ReadSafe(PSysAnimInfo& value);
	// BW1W120 00562fa0 BW1M119 013048a0
	void WriteSafe(TSphere& value);
	// BW1W120 00563220 BW1M119 01304350
	void ReadSafe(TSphere& value);
	// BW1W120 005630e0 BW1M119 01304650
	void WriteSafe(PSysProcessInfo& value);
	// BW1W120 00563360 BW1M119 01304100
	void ReadSafe(PSysProcessInfo& value);
	// BW1W120 00563400 BW1M119 01303fe0
	void ReadSafe(PSysBase*& ptr);
	// BW1W120 00563410 BW1M119 01303f80
	void WriteSafe(PSysBase* const& ptr);
	// BW1W120 00563420 BW1M119 01303f20
	void ReadSafe(GameThing*& ptr);
	// BW1W120 00563430 BW1M119 01303ec0
	void WriteSafe(GameThing* const& ptr);
	// BW1W120 00563440 BW1M119 01303be0
	void WriteSafe(GData& value);
	// BW1W120 00563620 BW1M119 01303930
	void ReadSafe(GData& value);
	// BW1W120 005637f0 BW1M119 01303070
	void ReadSafe(TownDesire& value);
	// BW1W120 00563b30 BW1M119 01302700
	void WriteSafe(TownDesire& value);
	// BW1W120 00563ea0 BW1M119 01302640
	void WriteInfo(const GBaseInfo* info);
	// BW1W120 00563f00 BW1M119 01302570
	void ReadInfo(const GBaseInfo** info);
	// BW1W120 00563f60 BW1M119 013024b0
	void WriteCheckSum(GameThing* thing);
	// BW1W120 00563fa0 BW1M119 013023e0
	void ReadCheckSum(GameThing* thing);
};

static_assert(sizeof(GameOSFile) == 0x230, "GameOSFile size is incorrect");

// fabricated name: the original spelling is unknown, but Save paths re-check
// WriteEnabled before every field write (Abode::Save), and only a macro can add
// that guard without spending an inline level (WriteSafe must still expand
// under the depth-1 inlining those TUs use). Load paths do not guard ReadSafe.
#define WRITE_SAFE(file, value)                                                                                        \
	if (GameOSFile::WriteEnabled)                                                                                      \
	{                                                                                                                  \
		(file).WriteSafe(value);                                                                                       \
	}

// fabricated names: the original counted-array template names are unknown.
// Each array has an unsigned-int count followed by individually checksummed raw elements.
// Readers trust the saved count and keep iterating after errors; writers stop on an element error.
template <typename T> static inline void ReadCountedArray(GameOSFile& file, T* values)
{
	if (GameOSFile::ReadEnabled)
	{
		unsigned int count;
		file.ReadIt(count);
		for (unsigned int i = 0; i < count; ++i)
		{
			file.ReadIt(values[i]);
		}
	}
}

template <typename T> static inline void WriteCountedArray(GameOSFile& file, T* values, unsigned int count)
{
	if (GameOSFile::WriteEnabled)
	{
		file.WriteIt(count);
		for (unsigned int i = 0; i < count; ++i)
		{
			file.WriteIt(values[i]);
			if (!GameOSFile::WriteEnabled)
			{
				break;
			}
		}
	}
}

#endif /* BW1_DECOMP_GAME_OS_FILE_INCLUDED_H */
