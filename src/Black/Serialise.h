#ifndef BW1_DECOMP_SERIALISE_INCLUDED_H
#define BW1_DECOMP_SERIALISE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint8_t */
#include <stdlib.h> /* For _MAX_PATH */
#include <string.h> /* For memcpy, strcpy */

#include <Lionhead/LHFile/ver3.0/LHFile.h>      /* For enum LH_FILE_MODE */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>    /* For struct LHOSFile */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHWin.h>        /* For operator new(size_t, const char*, uint32_t) */

#include <re_common.h> /* For bool32_t */

enum ARCHIVE_DIRECTION
{
	ARCHIVE_DIRECTION_SAVE = 1,
	ARCHIVE_DIRECTION_LOAD = 2,
	ARCHIVE_DIRECTION_EITHER = 3,
};

enum ARCHIVE_POINTER_TYPE
{
	ARCHIVE_POINTER_TYPE_NULL = 0,
	ARCHIVE_POINTER_TYPE_NO_ID = 2,
};

// Forward Declares

class Base;
class BaseInfo;
struct JustMapXZ;
struct JustWholeMapXZ;
struct LHCoord;
struct LHPoint;
struct MapCoords;

struct ArchiveMemoryBlocks
{
	unsigned long Size; /* 0x0 */
	char*         Data; /* 0x4 */

	// BW1W120 inlined BW1M119 inlined
	ArchiveMemoryBlocks(char* data, unsigned long size)
	{
		Data = data;
		Size = size;
	}
	// BW1W120 inlined BW1M119 011014c0
	~ArchiveMemoryBlocks()
	{
		if (Data != NULL)
		{
			delete Data;
			Data = NULL;
		}
	}
};
static_assert(sizeof(ArchiveMemoryBlocks) == 0x8, "Data type is of wrong size");

class Archive
{
public:
	LHOSFile                           File;                /* 0x0 */
	char                               FileName[_MAX_PATH]; /* 0x8 */
	char                               Buffer[0x400];       /* 0x10c */
	unsigned long                      BufferPos;           /* 0x50c */
	LH_FILE_MODE                       Mode;                /* 0x510 */
	uint8_t                            Direction;           /* 0x514 */
	bool32_t                           Open;                /* 0x518 */
	unsigned long                      Size;                /* 0x51c */
	char                               Name[0x100];         /* 0x520 */
	LHLinkedList<ArchiveMemoryBlocks*> MemoryBlocks;        /* 0x620 */
	unsigned long                      MemoryPos;           /* 0x628 */
	unsigned long                      MemoryLength;        /* 0x62c */
	char**                             Memory;              /* 0x630 */
	bool32_t                           UsingFile;           /* 0x634 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	Archive(const char* name, LH_FILE_MODE mode)
	{
		if (File.Open(name, mode) == LH_FILE_RESULT_OK)
		{
			Open = true;
			BufferPos = 0;
			Mode = mode;
			Direction = ARCHIVE_DIRECTION_EITHER;
			if (mode == LH_FILE_MODE_READ_ONLY)
			{
				File.Read(Buffer, sizeof(Buffer), NULL);
			}
			strcpy(Name, name);
		}
		else
		{
			Open = false;
		}
		Size = 0;
		UsingFile = true;
	}
	// BW1W120 inlined BW1M119 inlined
	Archive(char** memory, unsigned long length)
	{
		Open = true;
		BufferPos = 0;
		Direction = ARCHIVE_DIRECTION_EITHER;
		Size = 0;
		UsingFile = false;
		Memory = memory;
		MemoryPos = 0;
		MemoryLength = length;
		if (*memory != NULL)
		{
			memcpy(Buffer, *memory, sizeof(Buffer));
			MemoryPos = sizeof(Buffer);
		}
	}

	// Destructor

	// BW1W120 inlined BW1M119 011012b0
	~Archive()
	{
		if (Open)
		{
			if (UsingFile)
			{
				CloseFile();
			}
			else
			{
				CloseMemory();
			}
		}
	}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	bool32_t IsOpen() { return Open; }
	// BW1W120 00711e10 BW1M119 0150f240
	void Flush();
	// BW1W120 00711f00 BW1M119 inlined
	void Refill();
	// BW1W120 004e6980 BW1M119 01101240
	void CloseFile()
	{
		if (Mode != LH_FILE_MODE_READ_ONLY)
		{
			Flush();
		}
		File.Close();
	}
	// BW1W120 004e69a0 BW1M119 01101370
	void SaveMemory()
	{
		if (*Memory == NULL)
		{
			unsigned long total = 0;
			if (BufferPos != 0)
			{
				Flush();
			}
			LHLinkedNode<ArchiveMemoryBlocks*>* node;
			for (node = MemoryBlocks.GetStart(); node != NULL; node = node->next.Get())
			{
				total += node->payload->Size;
			}
			char* dest = *Memory = NEW(186) char[total];
			for (node = MemoryBlocks.GetStart(); node != NULL; node = node->next.Get())
			{
				memcpy(dest, node->payload->Data, node->payload->Size);
				dest += node->payload->Size;
			}
			MemoryBlocks.DeleteAll();
		}
	}
	// BW1W120 inlined BW1M119 01100ea0
	void CloseMemory() { SaveMemory(); }

	// BW1W120 00711fe0 BW1M119 0150f1a0
	Archive& operator<<(unsigned char value);
	// BW1W120 00712020 BW1M119 null
	Archive& operator<<(signed char value);
	// BW1W120 00712060 BW1M119 0150f100
	Archive& operator<<(unsigned short value);
	// BW1W120 007120a0 BW1M119 null
	Archive& operator<<(short value);
	// BW1W120 007120e0 BW1M119 0150f050
	Archive& operator<<(unsigned long value);
	// BW1W120 00712120 BW1M119 0150efa0
	Archive& operator<<(long value);
	// BW1W120 00712160 BW1M119 0150eef0
	Archive& operator<<(int value);
	// BW1W120 007121a0 BW1M119 0150ee50
	Archive& operator<<(char value);
	// BW1W120 007121e0 BW1M119 0150edb0
	Archive& operator<<(float value);
	// BW1W120 00712230 BW1M119 0150eab0
	Archive& operator>>(unsigned char& value);
	// BW1W120 00712270 BW1M119 null
	Archive& operator>>(signed char& value);
	// BW1W120 007122b0 BW1M119 0150e980
	Archive& operator>>(unsigned short& value);
	// BW1W120 007122f0 BW1M119 null
	Archive& operator>>(short& value);
	// BW1W120 00712330 BW1M119 0150e850
	Archive& operator>>(unsigned long& value);
	Archive& operator>>(uint32_t& value) { return *this >> (unsigned long&)value; }
	// BW1W120 00712370 BW1M119 0150e720
	Archive& operator>>(long& value);
	// BW1W120 007123b0 BW1M119 0150e5f0
	Archive& operator>>(int& value);
	// BW1W120 007123f0 BW1M119 0150e4c0
	Archive& operator>>(char& value);
	// BW1W120 00712430 BW1M119 0150e340
	Archive& operator>>(float& value);
	// BW1W120 00712470 BW1M119 null
	void Serialise(MapCoords& coords);
	// BW1W120 00712510 BW1M119 null
	void Serialise(JustWholeMapXZ& coords);
	// BW1W120 00712560 BW1M119 null
	void Serialise(JustMapXZ& coords);
	// BW1W120 007125b0 BW1M119 null
	void Serialise(LHCoord& coord);
	// BW1W120 00712600 BW1M119 null
	void Serialise(LHPoint& point);
	// BW1W120 00712660 BW1M119 null
	void Serialise(Base*& base);
	// BW1W120 007126d0 BW1M119 null
	void Serialise(BaseInfo*& info);
};
static_assert(sizeof(Archive) == 0x638, "Data type is of wrong size");

// BW1W120 00711fc0 BW1M119 null
void DeleteGame();
// BW1W120 00712740 BW1M119 null
char* ChooseSavedGame(ARCHIVE_DIRECTION direction);

#endif /* BW1_DECOMP_SERIALISE_INCLUDED_H */
