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
#include <Lionhead/LHLib/ver5.0/LHStack.h>           /* For class LHStack */

#include <re_common.h> /* For bool32_t */

#include "CreatureReceiveSpell.h" /* For struct CreatureReceiveSpell */
#include "GameThing.h"            /* For struct GameThing */
#include "MapCoords.h"            /* For struct MapCoords */
#include "SaveLoadPtr.h"          /* For struct GSaveLoadPtr */

// Forward Declares

template <class T> class GJArray;
template <class T> class GJCircularArray;
template <class T> class GJDoubleLinkList;
template <class T> class GJLowPassFilterVariableStep;
template <class T> class SimpleSpline;
template <class T> class GJVector;
template <class ValueType> class KPSI_Element;
template <class T> class KPSplineInterpolator;
template <typename T> class GTPointer;
template <typename T> class LHDynamicStack;
template <typename T> class LHOrderedLinkedList;
template <typename T> class LHOrderedLinkedListIterator;
class AtomCollection;
class AtomCollectionModifier;
class AtomCore;
class BaseAtomModifierData;
class BaseCollectionModifierData;
class CalculateDrawPosInfo;
class ChainJoint;
class CollectionAndOwnership;
class Creature;
class GameThingWithPos;
class GBaseInfo;
class GData;
class GPlayer;
class LHOSFile;
class LightningObjectInfo;
class MagicFireBall;
class Object;
class ParticleCreator;
class Persistent;
class PosScaleRotation;
class PSysAnimInfo;
class PSysBase;
class PSysSound;
class PSysSoundAction;
class SpellTargets;
class TownDesire;
class TSphere;
struct MapCoords;
struct PSysProcessInfo;

enum
{
	GAME_OS_FILE_MAX_LOAD_ATTEMPTS = 2,
	GAME_OS_FILE_UNREAD_LOAD_ATTEMPTS = 1000,
};

enum GAME_OS_FILE_CREATURE_FLAG
{
	GAME_OS_FILE_CREATURE_FLAG_SCRIPT_0 = 1 << 0,
	GAME_OS_FILE_CREATURE_FLAG_SCRIPT_1 = 1 << 1,
	GAME_OS_FILE_CREATURE_FLAG_SCRIPT_2 = 1 << 2,
};

class GameOSFile : public LHReleasedOSFile
{
public:
	bool32_t                    MapFile;
	char                        Filename[0x100]; /* 0x110 */
	uint32_t                    field_0x210;
	uint32_t                    Checksum; /* 0x214 */
	bool32_t                    Reading;
	uint32_t                    field_0x21c;
	LHLinkedList<GSaveLoadPtr*> SaveLoadPtrList; /* 0x220 */
	LHLinkedList<GameThing*>    GameThingList;

	// Static data

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
	static bool32_t Saving;

	// BW1W120 00bec990
	static bool32_t WriteEnabled;
	// BW1W120 00bec994
	static bool32_t ReadEnabled;
	// BW1W120 00d01a7c
	static unsigned char LoadedCreatureFlags;
	// BW1W120 00d01a88
	static uint32_t LoadCount;
	// BW1W120 00d01aa0
	static bool32_t Loading;

	// Override methods

	// BW1W120 00558050 BW1M119 01312630
	virtual ~GameOSFile();
	// Static methods

	// BW1W120 00558160 BW1M119 01312040
	static bool32_t SaveAllGame(char* filename);
	// BW1W120 005587b0 BW1M119 01311810
	static bool32_t LoadAllGame(char* filename);
	// BW1W120 00563ff0 BW1M119 01302340
	static bool32_t AutoLoad();
	// BW1W120 00564050 BW1M119 01080520
	static bool32_t AutoSave(bool32_t force);
	// BW1W120 00564160 BW1M119 01302120
	static bool32_t IsAutoSaveValid();

	// Constructors

	// BW1W120 00557ff0 BW1M119 01312760
	GameOSFile();

	// Non-virtual methods

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
	void ReadSafe(uint32_t& value) { ReadIt(value); }
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
	// BW1W120 inlined BW1M119 01305b50
	void ReadSafe(LHPoint& value) { ReadIt(value); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(LHMatrix& value) { ReadIt(value); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(LH3DColor& value) { ReadIt(value); }
	// BW1W120 inlined BW1M119 013bc2a0
	void WriteSafe(uint8_t& value)
	{
		if (WriteEnabled)
		{
			uint8_t*       data = &value;
			LH_FILE_RESULT result = Write(data, sizeof(value), NULL);
			if (result == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			uint8_t first = *(uint8_t*)data;
			Checksum += first + sizeof(value);
		}
	}
	// BW1W120 inlined BW1M119 012aef50
	void WriteSafe(uint32_t& value) { WriteIt(value); }
	void WriteSafe(int32_t& value)
	{
		if (WriteEnabled)
		{
			int32_t*       data = &value;
			LH_FILE_RESULT result = Write(data, sizeof(value), NULL);
			if (result == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			uint8_t first = *(uint8_t*)data;
			Checksum += first + sizeof(value);
		}
	}
	void WriteSafe(int16_t& value)
	{
		if (WriteEnabled)
		{
			int16_t*       data = &value;
			LH_FILE_RESULT result = Write(data, sizeof(value), NULL);
			if (result == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			uint8_t first = *(uint8_t*)data;
			Checksum += first + sizeof(value);
		}
	}
	void WriteSafe(int8_t& value)
	{
		if (WriteEnabled)
		{
			int8_t*        data = &value;
			LH_FILE_RESULT result = Write(data, sizeof(value), NULL);
			if (result == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			uint8_t first = *(uint8_t*)data;
			Checksum += first + sizeof(value);
		}
	}
	void WriteSafe(uint16_t& value)
	{
		if (WriteEnabled)
		{
			uint16_t*      data = &value;
			LH_FILE_RESULT result = Write(data, sizeof(value), NULL);
			if (result == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			uint8_t first = *(uint8_t*)data;
			Checksum += first + sizeof(value);
		}
	}
	// BW1W120 inlined BW1M119 inlined
	void WriteSafe(MapCoords& value)
	{
		if (WriteEnabled)
		{
			MapCoords*     data = &value;
			LH_FILE_RESULT result = Write(data, sizeof(value), NULL);
			if (result == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			uint8_t first = *(uint8_t*)data;
			Checksum += first + sizeof(value);
		}
	}
	// BW1W120 inlined BW1M119 01305e60
	void WriteSafe(LHPoint& value) { WriteIt(value); }
	// BW1W120 inlined BW1M119 inlined
	void WriteSafe(LHMatrix& value) { WriteIt(value); }
	// BW1W120 inlined BW1M119 inlined
	void WriteSafe(LH3DColor& value) { WriteIt(value); }
	// BW1W120 inlined BW1M119 inlined
	template <typename T> bool32_t ReadSafe(LHListHead<T>& list)
	{
		if (!ReadEnabled)
		{
			return false;
		}
		long count;
		ReadIt(count);
		while (count > 0)
		{
			T* element;
			ReadPtr((GameThing**)&element);
			element->next = NULL;
			list.AddToLast(element);
			count = count - 1;
		}
		return true;
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> bool32_t WriteSafe(LHListHead<T>& list)
	{
		if (!WriteEnabled)
		{
			return false;
		}
		int      written = 0;
		uint32_t count = list.count;
		WriteIt(list.count);
		for (T* element = NULL; (element = list.GetNext(element)) != NULL;)
		{
			if (++written > (int)count)
			{
				WriteEnabled = false;
			}
			if (!WriteEnabled)
				break;
			WritePtr(element);
		}
		return true;
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> bool32_t ReadSafe(LHLinkedList<T>& list)
	{
		if (!ReadEnabled)
		{
			return false;
		}
		long count;
		ReadIt(count);
		while (count > 0)
		{
			T element;
			ReadPtr((GameThing**)&element);
			list.AddToEnd(element);
			count--;
		}
		return true;
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> bool32_t WriteSafe(LHLinkedList<T>& list)
	{
		if (!WriteEnabled)
		{
			return false;
		}
		uint32_t count = list.count;
		int      written = 0;
		WriteIt(list.count);
		for (LHLinkedNode<T>* node = list.head.Get(); node != NULL; node = node->next.Get())
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
			WritePtr(node->payload);
		}
		if (WriteEnabled && written != (int)count)
		{
			WriteEnabled = false;
		}
		return true;
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T, int N> bool32_t ReadSafe(LHStack<T, N>& stack)
	{
		if (!ReadEnabled)
		{
			return false;
		}
		long count;
		ReadIt(count);
		while (count > 0)
		{
			T value;
			ReadIt(value);
			stack.Push(value);
			count--;
		}
		return true;
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T, int N> bool32_t WriteSafe(LHStack<T, N>& stack)
	{
		if (!WriteEnabled)
		{
			return false;
		}
		uint32_t count = stack.Size();
		int      written = 0;
		long     size = stack.Size();
		WriteIt(size);
		for (long i = size - 1; i >= 0; i--)
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
			T value = stack[i];
			WriteIt(value);
		}
		return true;
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void ReadSafe(LHDynamicStack<T>& stack)
	{
		if (ReadEnabled)
		{
			long count;
			ReadIt(count);
			while (count > 0)
			{
				T value;
				ReadIt(value);
				stack.Push(value);
				count--;
			}
		}
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void WriteSafe(LHDynamicStack<T>& stack)
	{
		if (WriteEnabled)
		{
			int      written = 0;
			uint32_t count = stack.GetSize();
			WriteIt(stack.GetSizeRef());
			for (long i = stack.GetSize() - 1; i >= 0; i--)
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
				T value = stack.GetNthMember(i);
				WriteIt(value);
			}
		}
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> bool32_t ReadSafe(LHOrderedLinkedList<T>& list)
	{
		if (!ReadEnabled)
		{
			return false;
		}
		long count;
		ReadIt(count);
		while (count > 0)
		{
			T* element;
			ReadPtr((GameThing**)&element);
			list.Insert(element);
			count--;
		}
		return true;
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> bool32_t WriteSafe(LHOrderedLinkedList<T>& list)
	{
		if (!WriteEnabled)
		{
			return false;
		}
		uint32_t count = list.count;
		int      written = 0;
		WriteIt(list.count);
		for (LHOrderedLinkedListIterator<T> iterator(list); iterator.MoreToDo();)
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
			WritePtr(iterator.Get());
			iterator++;
			if (!iterator.MoreToDo())
			{
				break;
			}
		}
		return true;
	}
	// BW1W120 inlined BW1M119 01305f20
	template <typename T> void WriteSafe(GTPointer<T>& pointer)
	{
		WriteSafe(pointer.GameTurnValidated);
		WriteSafe(pointer.Pointer);
	}
	// BW1W120 inlined BW1M119 01305c10
	template <typename T> void ReadSafe(GTPointer<T>& pointer)
	{
		if (ReadEnabled)
		{
			ReadSafe(pointer.GameTurnValidated);
			ReadSafe(pointer.Pointer);
		}
	}
	// BW1W120 inlined BW1M119 01489e20
	template <typename T> void WriteSafe(GJVector<T>& vector)
	{
		if (WriteEnabled)
		{
			long count = vector.GetSize();
			WriteSafe(count);
			for (long i = 0; i < count; ++i)
			{
				WriteSafe(vector[i]);
				if (!WriteEnabled)
				{
					break;
				}
			}
		}
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void WriteSafe(GJDoubleLinkList<T>& list)
	{
		if (WriteEnabled)
		{
			long count = list.GetCount();
			WriteIt(count);
			for (GJDoubleLinkList<T>::Iterator it(list); !it.IsFinished(); it++)
			{
				WriteSafe(it.GetRef());
				if (!WriteEnabled)
				{
					break;
				}
			}
		}
	}
	// BW1W120 006d0890 BW1M119 inlined
	template <typename T> void WriteSafe(KPSI_Element<T>& element)
	{
		WriteIt(element.T);
		WriteIt(element.Value);
		WriteIt(element.SecondDerivative);
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void WriteSafe(GJCircularArray<T>& array)
	{
		if (WriteEnabled)
		{
			long numFilled = array.GetNumFilled();
			long maxSize = array.GetNumFilled();
			WriteIt(numFilled);
			WriteIt(maxSize);
			for (long i = 0; i < numFilled; ++i)
			{
				WriteSafe(array.Entry(i));
				if (!WriteEnabled)
				{
					break;
				}
			}
		}
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void WriteSafe(SimpleSpline<T>& spline)
	{
		WriteSafe(spline.Coefficients[0]);
		WriteSafe(spline.Coefficients[1]);
		WriteSafe(spline.Coefficients[2]);
		WriteSafe(spline.Coefficients[3]);
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void WriteSafe(GJLowPassFilterVariableStep<T>& filter)
	{
		WriteIt(filter.Value);
		WriteIt(filter.TimeConstant);
		WriteIt(filter.Initialised);
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void WriteSafe(KPSplineInterpolator<T>& spline)
	{
		WriteIt(spline.BCType);
		WriteSafe(spline.Elements);
	}
	// BW1W120 inlined BW1M119 0148a120
	template <typename T> void WriteSafe(GJArray<T>& array)
	{
		if (!WriteEnabled)
		{
			return;
		}
		long count = array.GetSize();
		WriteIt(count);
		for (long i = 0; i < count; ++i)
		{
			WriteSafe(array[i]);
			if (!WriteEnabled)
			{
				break;
			}
		}
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void ReadSafe(GJArray<T>& array)
	{
		if (ReadEnabled)
		{
			long count;
			ReadIt(count);
			array.SetSize(count);
			for (long i = 0; i < count; ++i)
			{
				T value;
				ReadSafe(value);
				array[i] = value;
			}
		}
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void ReadSafe(GJDoubleLinkList<T>& list)
	{
		if (ReadEnabled)
		{
			long count;
			ReadIt(count);
			for (long i = 0; i < count; ++i)
			{
				T* item = NULL;
				ReadSafe(item);
				if (item)
				{
					list.InsertIntoList(item);
				}
			}
		}
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void ReadSafe(KPSI_Element<T>& element)
	{
		ReadIt(element.T);
		ReadIt(element.Value);
		ReadIt(element.SecondDerivative);
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void ReadSafe(KPSplineInterpolator<T>& spline)
	{
		ReadIt(spline.BCType);
		ReadSafe(spline.Elements);
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void ReadSafe(SimpleSpline<T>& spline)
	{
		ReadSafe(spline.Coefficients[0]);
		ReadSafe(spline.Coefficients[1]);
		ReadSafe(spline.Coefficients[2]);
		ReadSafe(spline.Coefficients[3]);
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void ReadSafe(GJLowPassFilterVariableStep<T>& filter)
	{
		ReadIt(filter.Value);
		ReadIt(filter.TimeConstant);
		ReadIt(filter.Initialised);
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void ReadSafe(GJCircularArray<T>& array)
	{
		if (ReadEnabled)
		{
			long size;
			ReadIt(size);
			long count;
			ReadIt(count);
			array.SetMaxSize(count);
			for (long i = 0; i < count; ++i)
			{
				T value;
				ReadSafe(value);
				array.Add(value);
			}
		}
	}
	// BW1W120 inlined BW1M119 01422dc0
	template <typename T> void ReadSafe(GJVector<T>& vector)
	{
		if (ReadEnabled)
		{
			long count;
			ReadIt(count);
			long i = 0;
			while (i < count)
			{
				T value;
				ReadSafe(value);
				vector.PushBack(value);
				++i;
			}
		}
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void ReadSafe2DArray(T (*values)[2])
	{
		if (!ReadEnabled)
		{
			return;
		}
		unsigned long rows;
		unsigned long columns;
		ReadIt(rows);
		ReadIt(columns);
		for (unsigned long row = 0; row < rows; row++)
		{
			for (unsigned long column = 0; column < columns; column++)
			{
				ReadIt(values[row][column]);
			}
		}
	}
	// BW1W120 inlined BW1M119 inlined
	template <typename T> void WriteSafe2DArray(T (*values)[2], unsigned long rows, unsigned long columns)
	{
		if (!WriteEnabled)
		{
			return;
		}
		WriteIt(rows);
		WriteIt(columns);
		for (unsigned long row = 0; row < rows; row++)
		{
			for (unsigned long column = 0; column < columns && WriteEnabled; column++)
			{
				WriteIt(values[row][column]);
			}
		}
	}

	// Inliner IL size: 83
	// BW1W120 00407750 BW1M119 010bd770
	template <typename T> void ReadIt(T& out)
	{
		if (ReadEnabled)
		{
			LH_FILE_RESULT result = Read(&out, sizeof(out), NULL);
			if (result == LH_FILE_RESULT_ERROR)
			{
				ReadEnabled = false;
			}
			uint8_t first = *(uint8_t*)&out;
			Checksum += first + sizeof(out);
		}
	}

	// Inliner IL size: 88
	// BW1W120 00407700 BW1M119 010a9e00
	template <typename T> void WriteIt(T& value)
	{
		if (WriteEnabled)
		{
			T*             data = &value;
			LH_FILE_RESULT result = Write(data, sizeof(value), NULL);
			if (result == LH_FILE_RESULT_ERROR)
			{
				WriteEnabled = false;
			}
			uint8_t first = *(uint8_t*)data;
			Checksum += first + sizeof(value);
		}
	}
	// Inliner IL size: 80
	// BW1W120 00460c20 BW1M119 inlined
	template <typename T> void ReadArray(T* values)
	{
		if (ReadEnabled)
		{
			unsigned int count;
			ReadIt(count);
			for (unsigned int i = 0; i < count; ++i)
			{
				ReadIt(values[i]);
			}
		}
	}
	// Inliner IL size: 92
	// BW1W120 00460cc0 BW1M119 inlined
	template <typename T> void WriteArray(T* values, unsigned int count)
	{
		if (WriteEnabled)
		{
			WriteIt(count);
			for (unsigned int i = 0; i < count; ++i)
			{
				WriteIt(values[i]);
				if (!WriteEnabled)
				{
					break;
				}
			}
		}
	}
	// BW1W120 00558dc0 BW1M119 01307600
	void LoadInstance(GameThing** out_thing);
	// BW1W120 00561c60 BW1M119 01307010
	void ResolveAllLoads();
	// BW1W120 00561e10 BW1M119 01306750
	void WritePtr(GameThing* thing);
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
	// BW1W120 005626c0 BW1M119 01305970
	void WriteSafe(CollectionAndOwnership& value);
	// BW1W120 00562720 BW1M119 013058e0
	void ReadSafe(CollectionAndOwnership& value);
	// BW1W120 00562770 BW1M119 01305630
	void WriteSafe(LightningObjectInfo& value);
	// BW1W120 005628c0 BW1M119 01305390
	void ReadSafe(LightningObjectInfo& value);
	// BW1W120 00562a00 BW1M119 01305170
	void WriteSafe(CreatureReceiveSpell::TPerSpellData& value);
	// BW1W120 00562b40 BW1M119 01304f70
	void ReadSafe(CreatureReceiveSpell::TPerSpellData& value);
	// BW1W120 00562c70 BW1M119 01304e40
	void WriteSafe(CreatureReceiveSpell::QueueData& value);
	// BW1W120 00562d00 BW1M119 01304d20
	void ReadSafe(CreatureReceiveSpell::QueueData& value);
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
	// BW1W120 inlined BW1M119 inlined
	void WriteSafe(long& value) { WriteIt(value); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(long& value) { ReadIt(value); }
	// BW1W120 inlined BW1M119 01305880
	void WriteSafe(Object* const& ptr) { WriteSafe(reinterpret_cast<GameThing* const&>(ptr)); }
	// BW1W120 inlined BW1M119 014896f0
	void WriteSafe(Creature* const& ptr) { WriteSafe(reinterpret_cast<GameThing* const&>(ptr)); }
	// BW1W120 inlined BW1M119 0148b2e0
	void WriteSafe(MagicFireBall* const& ptr) { WriteSafe(reinterpret_cast<GameThing* const&>(ptr)); }
	// BW1W120 inlined BW1M119 0148a420
	void WriteSafe(GameThingWithPos* const& ptr) { WriteSafe(reinterpret_cast<GameThing* const&>(ptr)); }
	// BW1W120 inlined BW1M119 0148df70
	void WriteSafe(GPlayer* const& ptr) { WriteSafe(reinterpret_cast<GameThing* const&>(ptr)); }
	// BW1W120 inlined BW1M119 0148c440
	void WriteSafe(const ParticleCreator* const& ptr) { WriteSafe((Persistent* const&)ptr); }
	// BW1W120 inlined BW1M119 0148d2a0
	void WriteSafe(const AtomCollectionModifier* const& ptr) { WriteSafe((Persistent* const&)ptr); }
	// BW1W120 inlined BW1M119 0148db00
	void WriteSafe(const AtomCollection* const& ptr) { WriteSafe((PSysBase* const&)ptr); }
	// BW1W120 inlined BW1M119 0148ce70
	void WriteSafe(const AtomCore* const& ptr) { WriteSafe((PSysBase* const&)ptr); }
	// BW1W120 inlined BW1M119 0148d050
	void WriteSafe(const BaseCollectionModifierData* const& ptr) { WriteSafe((PSysBase* const&)ptr); }
	// BW1W120 inlined BW1M119 0148d920
	void WriteSafe(const BaseAtomModifierData* const& ptr) { WriteSafe((PSysBase* const&)ptr); }
	// BW1W120 inlined BW1M119 01305880
	void ReadSafe(Object* const& ptr) { ReadSafe((GameThing*&)ptr); }
	// BW1W120 inlined BW1M119 014896f0
	void ReadSafe(Creature* const& ptr) { ReadSafe((GameThing*&)ptr); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(MagicFireBall* const& ptr) { ReadSafe((GameThing*&)ptr); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(GameThingWithPos* const& ptr) { ReadSafe((GameThing*&)ptr); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(GPlayer* const& ptr) { ReadSafe((GameThing*&)ptr); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(PSysSound* const& ptr) { ReadSafe((GameThing*&)ptr); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(const ParticleCreator* const& ptr) { ReadSafe((Persistent*&)ptr); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(const AtomCollectionModifier* const& ptr) { ReadSafe((Persistent*&)ptr); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(const AtomCollection* const& ptr) { ReadSafe((PSysBase*&)ptr); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(const AtomCore* const& ptr) { ReadSafe((PSysBase*&)ptr); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(const BaseCollectionModifierData* const& ptr) { ReadSafe((PSysBase*&)ptr); }
	// BW1W120 inlined BW1M119 inlined
	void ReadSafe(const BaseAtomModifierData* const& ptr) { ReadSafe((PSysBase*&)ptr); }
	// BW1W120 inlined BW1M119 0148d6c0
	void WriteSafe(PSysSound* const& ptr) { WriteSafe(reinterpret_cast<GameThing* const&>(ptr)); }
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

#define WRITE_SAFE(file, value)                                                                                        \
	if (GameOSFile::WriteEnabled)                                                                                      \
	{                                                                                                                  \
		(file).WriteSafe(value);                                                                                       \
	}

#define WRITE_IT(file, value)                                                                                          \
	if (GameOSFile::WriteEnabled)                                                                                      \
	{                                                                                                                  \
		(file).WriteIt(value);                                                                                         \
	}

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

template <class T> inline void SaveIt(GameOSFile& file, T& value)
{
	file.WriteIt(value);
}
template <class T> inline void SaveSafe(GameOSFile& file, T& value)
{
	file.WriteSafe(value);
}

template <class T> inline void SaveList(GameOSFile& file, LHLinkedList<T>& list)
{
	if (GameOSFile::WriteEnabled)
	{
		file.WriteIt(list.count);
		for (LHLinkedNode<T>* node = list.GetStart(); node != NULL; node = node->next.Get())
		{
			file.WriteSafe(node->payload);
			if (!GameOSFile::WriteEnabled)
			{
				break;
			}
		}
	}
}

template <class T> inline void LoadIt(GameOSFile& file, T& value)
{
	file.ReadIt(value);
}
template <class T> inline void LoadSafe(GameOSFile& file, T& value)
{
	file.ReadSafe(value);
}

template <class T> inline void LoadList(GameOSFile& file, LHLinkedList<T>& list)
{
	if (GameOSFile::ReadEnabled)
	{
		long count;
		file.ReadIt(count);
		for (long i = 0; i < count; ++i)
		{
			T item;
			file.ReadSafe(item);
			list.Add(item);
		}
	}
}

#endif /* BW1_DECOMP_GAME_OS_FILE_INCLUDED_H */
