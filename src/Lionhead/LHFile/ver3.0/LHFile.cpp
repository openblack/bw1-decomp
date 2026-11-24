#include "LHTemplate.h"

#include <Lionhead/LHFile/ver3.0/LHFile.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include <Lionhead/LHLog/ver4.0/LHLogger.h>
#include <Lionhead/LHFile/ver3.0/LHFilePath.h>
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h>
#include <Lionhead/LHFile/ver3.0/LHSegment.h>
#include <Lionhead/LHFile/ver3.0/LHSegmentDesc.h>
#include <Lionhead/LHFile/ver3.0/LHFileErrors.h>

#ifndef INVALID_FILE_ATTRIBUTES
#define INVALID_FILE_ATTRIBUTES 0xFFFFFFFF
#endif
#ifndef INVALID_SET_FILE_POINTER
#define INVALID_SET_FILE_POINTER ((DWORD) - 1)
#endif

class LHVersion;

// BW1W120 00c2bf58 BW1M119 011df3b0 (LHCombined Release)
extern LHVersion* __LHFileLib__;

static LHVersion* LHFileLibVersion = __LHFileLib__;

char g_GameDriveCharacter = 'D';

// BW1W120 00c2b9ec BW1M119 011df3b4 (LHCombined Release)
char* LHFileHeaderString = "LiOnHeAd";

static LHErrorCode LHFileErrors[] = {
	{LH_FILE_ERROR_NOT_LIONHEAD_FILE, "File %s was not a Lionhead File"},
	{LH_FILE_ERROR_NOT_FOUND, "File %s was not found"},
	{LH_FILE_ERROR_WRITING, "Error writing to file %s"},
	{0, NULL},
};
static LHErrorCode* LHLogErrorCodes = LHFileErrors;
static char*        LHLogLibraryName;

LHSegmentDesc::LHSegmentDesc(char* name, int offset, int size)
{
	memset(Name, 0, sizeof(Name));
	strncpy(Name, name, LH_SEGMENT_NAME_LENGTH);
	Offset = offset;
	Size = size;
}

uint32_t LHFile::SetName(const char* name)
{
	LH_ASSERT_CORRECTIVE(42, !OpenFlag, "Tim: Call to LHFile::SetName on a file which was open", return LH_ERROR;);
	LH_ASSERT_CORRECTIVE(43, name && strlen(name), "Tim: Call to LHFile::SetName with invalid or NULL name",
	                     return LH_ERROR;);
	Name = (char*)malloc(strlen(name) + 4);
	if (Name)
	{
		strcpy(Name, name);
		return LH_OK;
	}
	else
		return LH_NO_MEMORY;
}

uint32_t LHFile::GetSegmentDataInChunks(char* segment_name, char* data, uint32_t total_size, uint32_t chunk_size,
                                        void (*callback)(void), int offset)
{
	while (total_size > chunk_size)
	{
		callback();
		GetSegmentData(segment_name, data, chunk_size, offset);
		callback();
		total_size -= chunk_size;
		data += chunk_size;
		offset += chunk_size;
	}
	callback();
	if (total_size)
		GetSegmentData(segment_name, data, total_size, offset);
	return LH_OK;
}

uint32_t LHFile::GetSegmentData(char* segment_name, void* data, uint32_t data_size, int offset)
{
	LH_ASSERT_CORRECTIVE(78, OpenFlag, "Tim: Call to LHFile::GetSegmentData on a file which was not open",
	                     return LH_ERROR;);
	if (SegmentOpenFlag)
		CloseSegment();
	if (OpenSegment(segment_name))
		return LH_FAIL;
	if (GetSegmentData(data, data_size, offset))
		return LH_ERROR;
	if (CloseSegment())
		return LH_ERROR;
	return LH_OK;
}

uint32_t LHFile::Open(LH_FILE_MODE mode)
{
	// clang-format off
	LH_ASSERT_CORRECTIVE(94, !OpenFlag, "Tim: Call to LHFile::Open on a file which was already open", return LH_ERROR;);
	LH_ASSERT_CORRECTIVE(95, mode==LH_FILE_READ_ONLY || mode==LH_FILE_NEW || mode==LH_FILE_APPEND,
	                     "Tim: Invalid mode specified on LHFile::Open", return LH_ERROR;);
	// clang-format on
	LH_ASSERT_CORRECTIVE(96, Name && strlen(Name), "Tim: no name or null pointer on LHFile::Open", return LH_ERROR;);
	if (mode == LH_FILE_APPEND)
	{
		LH_ASSERT_CORRECTIVE(98, !WriteFunc, "Tim: open not supported in this mode", return LH_ERROR;);
	}
	DWORD    creationDisposition = CREATE_ALWAYS;
	bool32_t exists = GetFileAttributes(Name) != INVALID_FILE_ATTRIBUTES;
	if (!exists && (mode == LH_FILE_READ_ONLY || mode == LH_FILE_APPEND))
	{
		LH_LOG_ERROR_CODE1(107, LH_FILE_ERROR_NOT_FOUND, Name);
		return LH_FAIL;
	}
	if (exists)
		creationDisposition = TRUNCATE_EXISTING;
	if (exists && mode == LH_FILE_APPEND)
		creationDisposition = OPEN_EXISTING;
	if (!WriteFunc && (mode == LH_FILE_NEW || mode == LH_FILE_APPEND))
		Handle = CreateFile(Name, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL,
		                    creationDisposition, 0, NULL);
	if (!ReadFunc && mode == LH_FILE_READ_ONLY)
#ifdef VERSION_BW1WCI
		Handle = CreateFile(Name, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
#else
		Handle = CreateFile(Name, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_ALWAYS, 0, NULL);
#endif
	if (!WriteFunc && Handle == INVALID_HANDLE_VALUE)
	{
		LH_LOG_WIN32_ERROR(147);
		return LH_ERROR;
	}
	char header[LH_FILE_HEADER_SIZE + 1];
	OpenFlag = true;
	memset(header, 0, sizeof(header));
	FileMode = mode;
	if (mode == LH_FILE_READ_ONLY || mode == LH_FILE_APPEND)
	{
		ReadData(header, LH_FILE_HEADER_SIZE);
		if (strcmp(LHFileHeaderString, header))
		{
			Close();
			LH_LOG_ERROR_CODE(161, LH_FILE_ERROR_NOT_LIONHEAD_FILE);
			return LH_FAIL;
		}
		VerifyFile();
	}
	if (mode == LH_FILE_NEW)
	{
		strcpy(header, LHFileHeaderString);
		WriteData(header, LH_FILE_HEADER_SIZE);
	}
	CurrentFileOffset = LH_FILE_HEADER_SIZE;
	if (mode == LH_FILE_APPEND)
	{
		LHSegmentDesc* last = SegmentList.GetNext(NULL);
		if (SetLHFilePointer(last->Name, last->Size))
		{
			LH_LOG_ERROR(180, LH_LOG_CODE_ERROR, "Could not seek to end of file");
			return LH_ERROR;
		}
	}
	return LH_OK;
}

uint32_t LHReleasedFile::Open(LH_FILE_MODE mode)
{
	uint32_t result = LHFile::Open(mode);
	if (result == LH_OK)
		return result;
	if (mode == LH_FILE_READ_ONLY)
	{
		char path[256];
		sprintf(path, GAME_DRIVE_PATH_FORMAT, g_GameDriveCharacter, Name);
		strcpy(Name, path);
		result = LHFile::Open(LH_FILE_READ_ONLY);
		if (result == LH_OK)
		{
			LH_LOG_ERROR(202, LH_LOG_CODE_ERROR, "Loaded from CD");
		}
		else
		{
			LH_LOG_ERROR(206, LH_LOG_CODE_ERROR, "Could not be loaded from CD either!!!");
		}
		return result;
	}
	return LH_FAIL;
}

uint32_t LHFile::VerifyFile()
{
	LHSegment seg;
	for (;;)
	{
		uint32_t result = ReadData(seg.Name, LH_SEGMENT_NAME_LENGTH);
		if (result == LH_FAIL)
			break;
		if (result)
			return LH_ERROR;
		if (ReadData(&seg.Size, sizeof(seg.Size)))
			return LH_FAIL;
		if (FilePointerFunc)
			FilePointerFunc(seg.Size, FILE_CURRENT, CustomFunctionUserData);
		else
			SetFilePointer(Handle, seg.Size, NULL, FILE_CURRENT);
		uint32_t offset;
		if (SegmentList.Count)
		{
			LHSegmentDesc* last = SegmentList.GetNext(NULL);
			offset = last->Offset + last->Size + LH_SEGMENT_HEADER_SIZE;
		}
		else
		{
			offset = LH_FILE_HEADER_SIZE + LH_SEGMENT_HEADER_SIZE;
		}
		SegmentList.Add(new LHSegmentDesc(seg.Name, offset, seg.Size));
	}
	if (FilePointerFunc)
		FilePointerFunc(LH_FILE_HEADER_SIZE, FILE_BEGIN, CustomFunctionUserData);
	else
		SetFilePointer(Handle, LH_FILE_HEADER_SIZE, NULL, FILE_BEGIN);
	return LH_OK;
}

uint32_t LHFile::GetNextSegment(LHSegment* seg, bool32_t allocate_memory)
{
	char name[LH_SEGMENT_NAME_LENGTH + 1];

	LH_ASSERT_CORRECTIVE(261, OpenFlag, "Tim: Call to LHFile::GetNextSegment on a file which was not open",
	                     return LH_ERROR;);
	// clang-format off
	LH_ASSERT_CORRECTIVE(262, FileMode==LH_FILE_READ_ONLY, "Tim: Call to LHFile::GetNextSegment wrong file mode",
	                     return LH_ERROR;);
	// clang-format on
	if (SegmentOpenFlag)
		CloseSegment();
	if (!allocate_memory)
	{
		LH_ASSERT_CORRECTIVE(267, seg->Data && seg->Size, "Tim: Null pointer passed or zero size specified",
		                     return LH_ERROR;);
	}
	memset(name, 0, sizeof(name));
	ReadData(name, LH_SEGMENT_NAME_LENGTH);
	return GetSegment(name, seg, allocate_memory);
}

uint32_t LHFile::AllocSegDataMem(LHSegment* seg)
{
	// clang-format off
	LH_ASSERT_CORRECTIVE(277, seg->Size<LH_MAX_SEGMENT_SIZE, LHSPrintf("Tim: Segsize %lu appears too big", seg->Size),
	                     return LH_ERROR;);
	// clang-format on
	FreeLastSeg();
	seg->Data = (uint8_t*)malloc(seg->Size);
	if (!seg->Data)
	{
		LH_LOG_ERROR(282, LH_LOG_CODE_NO_MEMORY, LH_LOG_NO_MEMORY_TEXT);
		return LH_NO_MEMORY;
	}
	memcpy(&LastSegment, seg, sizeof(LastSegment));
	return LH_OK;
}

LHFile::~LHFile()
{
	free(Name);
	Close();
}

void LHFile::FreeLastSeg()
{
	if (LastSegment.Data)
	{
		free(LastSegment.Data);
		LastSegment.Data = NULL;
	}
}

uint32_t LHFile::WriteSegment(LHSegment* seg)
{
	LH_ASSERT_CORRECTIVE(307, OpenFlag, "Tim: Call to LHFile::WriteSegment on a file which was not open",
	                     return LH_ERROR;);
	// clang-format off
	LH_ASSERT_CORRECTIVE(308, FileMode==LH_FILE_NEW || FileMode==LH_FILE_APPEND,
	                     "Tim: Call to LHFile::WriteSegment wrong file mode", return LH_ERROR;);
	// clang-format on
	if (SegmentOpenFlag)
		CloseSegment();
	if (OpenSegment(seg->Name))
		return LH_ERROR;
	if (WriteSegmentData(seg->Data, seg->Size))
		return LH_ERROR;
	if (CloseSegment())
		return LH_ERROR;
	return LH_OK;
}

uint32_t LHFile::WriteSegmentHeader(char* name)
{
	LHSegment seg;
	LH_ASSERT_CORRECTIVE(324, name && strlen(name) > 0, "Tim: zero length or bad segment name", return LH_ERROR;);
	char segmentName[LH_SEGMENT_NAME_LENGTH + 1];
	memset(segmentName, 0, sizeof(segmentName));
	strncpy(segmentName, name, LH_SEGMENT_NAME_LENGTH);
	seg.Size = 0;
	if (WriteData(segmentName, LH_SEGMENT_NAME_LENGTH) || WriteData(&seg.Size, sizeof(seg.Size)))
		return LH_ERROR;
	return LH_OK;
}

uint32_t LHFile::Close()
{
	if (!OpenFlag)
		return LH_OK;
	if (SegmentOpenFlag)
		CloseSegment();
	FreeLastSeg();
	void* handle = Handle;
	OpenFlag = false;
	if (handle && !CloseHandle(handle))
	{
		LH_LOG_WIN32_ERROR(344);
		return LH_FAIL;
	}
	Handle = NULL;
	while (1)
	{
		LHLinkedNode<LHSegmentDesc*>* node = SegmentList.GetStart();
		if (!node)
			break;
		delete node->Data;
		SegmentList.Remove(node->Data);
	}
	return LH_OK;
}

LHSegmentDesc* LHFile::Lookup(char* segment_name)
{
	LHLinkedNode<LHSegmentDesc*>* node;
	for (node = SegmentList.GetStart(); node; node = node->Next.Get())
	{
		if (!strcmp(node->Data->Name, segment_name))
			break;
	}
	return node ? node->Data : NULL;
}

uint32_t LHFile::SetLHFilePointer(char* segment_name, int offset)
{
	uint32_t base = 0;
	if (segment_name)
	{
		// clang-format off
		LH_ASSERT_CORRECTIVE(376, OpenFlag && (FileMode==LH_FILE_READ_ONLY || FileMode==LH_FILE_APPEND),
		                     "Tim: Wrong mode to seek", return LH_ERROR;);
		// clang-format on
		LHSegmentDesc* entry = Lookup(segment_name);
		if (!entry)
			return LH_FAIL;
		base = entry->Offset;
		// clang-format off
		LH_ASSERT_CORRECTIVE(381, (SLONG)offset<=(SLONG)entry->Size, "Tim: Attempt to seek past end of segment in a file",
		                     return LH_ERROR;);
		// clang-format on
	}
	if (FilePointerFunc)
	{
		CurrentFileOffset = FilePointerFunc(base + offset, FILE_BEGIN, CustomFunctionUserData);
		if (CurrentFileOffset == INVALID_SET_FILE_POINTER)
			return LH_ERROR;
	}
	else
	{
		CurrentFileOffset = SetFilePointer(Handle, base + offset, NULL, FILE_BEGIN);
		if (CurrentFileOffset == INVALID_SET_FILE_POINTER)
		{
			LH_LOG_WIN32_ERROR(395);
			return LH_ERROR;
		}
	}
	return LH_OK;
}

uint32_t LHFile::GetSegmentSize(char* segment_name)
{
	LHLinkedNode<LHSegmentDesc*>* node;
	for (node = SegmentList.GetStart(); node; node = node->Next.Get())
	{
		if (!strcmp(node->Data->Name, segment_name))
			break;
	}
	return node ? node->Data->Size : -1;
}

uint32_t LHFile::GetSegment(char* name, LHSegment* seg, bool32_t allocate_memory)
{
	LH_ASSERT_CORRECTIVE(418, OpenFlag, "Tim: Call to LHFile::GetSegment on a file which was not open",
	                     return LH_ERROR;);
	// clang-format off
	LH_ASSERT_CORRECTIVE(419, FileMode==LH_FILE_READ_ONLY, "Tim: Call to LHFile::GetSegment wrong file mode",
	                     return LH_ERROR;);
	// clang-format on
	if (SegmentOpenFlag)
		CloseSegment();
	LHSegmentDesc* entry = Lookup(name);
	if (!entry)
		return LH_FAIL;
	if (SetLHFilePointer(name, 0))
		return LH_FAIL;
	strcpy(seg->Name, name);
	seg->Size = entry->Size;
	if (allocate_memory)
	{
		if (AllocSegDataMem(seg))
			return LH_ERROR;
	}
	else
	{
		// clang-format off
		LH_ASSERT_CORRECTIVE(436, seg->Data && seg->Size==entry->Size, "Tim: Null pointer or incorrect memory size",
		                     return LH_ERROR;);
		// clang-format on
	}
	return ReadData(seg->Data, entry->Size);
}

uint32_t LHFile::OpenSegment(char* name)
{
	LH_ASSERT_CORRECTIVE(444, OpenFlag, "Tim: Call to LHFile::OpenSegment on a file which was not open",
	                     return LH_ERROR;);
	if (SegmentOpenFlag)
		CloseSegment();
	SegmentOpenFlag = true;
	SegmentSize = 0;
	SegmentName = name;
	if (FileMode == LH_FILE_READ_ONLY)
	{
		LHSegmentDesc* entry = Lookup(name);
		if (!entry)
			return LH_FAIL;
		SegmentSize = entry->Size;
		SegmentOffset = entry->Offset;
		return SetLHFilePointer(name, 0);
	}
	SegmentOffset = CurrentFileOffset + LH_SEGMENT_HEADER_SIZE;
	return WriteSegmentHeader(name);
}

uint32_t LHFile::CloseSegment()
{
	if (SegmentOpenFlag)
	{
		if (FileMode == LH_FILE_NEW || FileMode == LH_FILE_APPEND)
		{
			int position = CurrentFileOffset;
			if (SetLHFilePointer(NULL, SegmentOffset - sizeof(SegmentSize)))
			{
				LH_LOG_ERROR(476, LH_LOG_CODE_ERROR, "Could not set file pointer back to offset when closing segment");
				return LH_ERROR;
			}
			WriteData(&SegmentSize, sizeof(SegmentSize));
			SetLHFilePointer(NULL, position);
		}
		SegmentOpenFlag = false;
		SetLHFilePointer(NULL, SegmentSize + SegmentOffset);
	}
	return LH_OK;
}

uint32_t LHFile::WriteSegmentData(const void* data, uint32_t length)
{
	LH_ASSERT_CORRECTIVE(489, SegmentOpenFlag, "Tim: Call to LHFile::WriteSegmentData when segment was not open",
	                     return LH_ERROR;);
	// clang-format off
	LH_ASSERT_CORRECTIVE(490, FileMode==LH_FILE_NEW || FileMode==LH_FILE_APPEND,
	                     "Tim: Call to LHFile::WriteSegmentData wrong file mode", return LH_ERROR;);
	// clang-format on
	SegmentSize += length;
	WriteData(data, length);
	return LH_OK;
}

uint32_t LHFile::OverwriteSegment(LHSegment seg)
{
	// clang-format off
	LH_ASSERT(500, FileMode==LH_FILE_APPEND, "Paul - file mode is not correct to overwrite");
	// clang-format on
	LHSegmentDesc* segment_description = Lookup(seg.Name);
	LH_ASSERT(503, segment_description, "Paul - trying to overwrite a segment that is not there.");
	LH_ASSERT(504, segment_description->Size == seg.Size, "Paul - segment size mismatch.");
	SetLHFilePointer(seg.Name, 0);
	WriteData(seg.Data, seg.Size);
	return LH_OK;
}

uint32_t LHFile::GetSegmentData(void* data, uint32_t data_size, int offset)
{
	LH_ASSERT_CORRECTIVE(513, SegmentOpenFlag, "Tim: Call to LHFile::GetSegmentData when segment was not open",
	                     return LH_ERROR;);
	if (offset == -1 || !SetLHFilePointer(SegmentName, offset))
		return ReadData(data, data_size);
	return LH_ERROR;
}

uint32_t LHFile::WriteData(const void* data, uint32_t length)
{
	LH_ASSERT_CORRECTIVE(525, OpenFlag, "Tim: Call to LHFile::WriteData when file was not open", return LH_ERROR;);
	// clang-format off
	LH_ASSERT_CORRECTIVE(526, FileMode==LH_FILE_NEW || FileMode==LH_FILE_APPEND,
	                     "Tim: Call to LHFile::WriteData wrong file mode", return LH_ERROR;);
	// clang-format on
	CurrentFileOffset += length;
	if (WriteFunc)
	{
		WriteFunc(data, length, CustomFunctionUserData);
	}
	else
	{
		DWORD written;
		if (!WriteFile(Handle, data, length, &written, NULL))
		{
			LH_LOG_WIN32_ERROR(538);
			return LH_ERROR;
		}
		if (written != length)
		{
			LH_LOG_ERROR_CODE(544, LH_FILE_ERROR_WRITING);
			return LH_FAIL;
		}
	}
	return LH_OK;
}

uint32_t LHFile::ReadData(void* data, uint32_t length)
{
	LH_ASSERT_CORRECTIVE(554, OpenFlag, "Tim: Call to LHFile::ReadData when file was not open", return LH_ERROR;);
	// clang-format off
	LH_ASSERT_CORRECTIVE(555, FileMode==LH_FILE_READ_ONLY || FileMode==LH_FILE_APPEND,
	                     "Tim: Call to LHFile::ReadData wrong file mode", return LH_ERROR;);
	// clang-format on
	CurrentFileOffset += length;
	if (ReadFunc)
	{
		if (!ReadFunc(data, length, CustomFunctionUserData))
			return LH_FAIL;
	}
	else
	{
		DWORD read;
		if (!ReadFile(Handle, data, length, &read, NULL))
		{
			LH_LOG_WIN32_ERROR(570);
			return LH_ERROR;
		}
		if (read != length)
			return LH_FAIL;
	}
	return LH_OK;
}

void LHFile::SetFileFunctions(void* rf, void* wf, void* fpf, void* user_data)
{
	LH_ASSERT_CORRECTIVE(584, !OpenFlag, "Tim: Call to SetWriteFunction on an open file", return;);
	LH_ASSERT_CORRECTIVE(585, wf && rf && fpf, "Tim: must supply all three parameters", return;);
	CustomFunctionUserData = user_data;
	WriteFunc = (uint32_t (*)(const void*, uint32_t, void*))wf;
	ReadFunc = (uint32_t (*)(void*, uint32_t, void*))rf;
	FilePointerFunc = (uint32_t (*)(uint32_t, uint32_t, void*))fpf;
}

uint32_t LHFile::TruncateFromSegment(char* segment_name)
{
	LH_ASSERT_CORRECTIVE(594, !OpenFlag, "Tim: cannot truncate file while open", return LH_ERROR;);
	LH_ASSERT_CORRECTIVE(595, !WriteFunc, "Tim: Function not supported in this mode", return LH_ERROR;);
	if (Open(LH_FILE_APPEND))
		return LH_FAIL;
	if (!Lookup(segment_name))
		return LH_FAIL;
	if (SetLHFilePointer(segment_name, -(int)LH_SEGMENT_HEADER_SIZE))
		return LH_FAIL;
	if (!SetEndOfFile(Handle))
	{
		LH_LOG_WIN32_ERROR(606);
	}
	Close();
	return LH_OK;
}
