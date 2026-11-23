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
	memset(this->name, 0, sizeof(this->name));
	strncpy(this->name, name, LH_SEGMENT_NAME_LENGTH);
	this->offset = offset;
	this->size = size;
}

uint32_t LHFile::SetName(const char* name)
{
	if (Opened)
		return LH_ERROR;
	bool32_t validName = name && strlen(name);
	if (!validName)
		return LH_ERROR;
	FileName = (char*)malloc(strlen(name) + 4);
	if (FileName)
	{
		strcpy(FileName, name);
		return LH_OK;
	}
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
	if (!Opened)
		return LH_ERROR;
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
	if (Opened)
		return LH_ERROR;
	if (mode != LH_FILE_MODE_READ_ONLY && mode != LH_FILE_MODE_READ_WRITE && mode != LH_FILE_MODE_UPDATE)
		return LH_ERROR;
	bool32_t validName = FileName && strlen(FileName);
	if (!validName)
		return LH_ERROR;
	if (mode == LH_FILE_MODE_UPDATE && CustomWriteFunction)
		return LH_ERROR;
	DWORD    creationDisposition = CREATE_ALWAYS;
	bool32_t exists = GetFileAttributes(FileName) != INVALID_FILE_ATTRIBUTES;
	if (!exists && (mode == LH_FILE_MODE_READ_ONLY || mode == LH_FILE_MODE_UPDATE))
		return LH_FAIL;
	if (exists)
		creationDisposition = TRUNCATE_EXISTING;
	if (exists && mode == LH_FILE_MODE_UPDATE)
		creationDisposition = OPEN_EXISTING;
	if (!CustomWriteFunction && (mode == LH_FILE_MODE_READ_WRITE || mode == LH_FILE_MODE_UPDATE))
		Handle = CreateFile(FileName, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL,
		                    creationDisposition, 0, NULL);
	if (!CustomReadFunction && mode == LH_FILE_MODE_READ_ONLY)
#ifdef VERSION_BW1WCI
		Handle = CreateFile(FileName, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
#else
		Handle = CreateFile(FileName, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_ALWAYS, 0, NULL);
#endif
	if (!CustomWriteFunction && Handle == INVALID_HANDLE_VALUE)
		return LH_ERROR;
	char header[LH_FILE_HEADER_SIZE + 1];
	Opened = true;
	memset(header, 0, sizeof(header));
	FileMode = mode;
	if (mode == LH_FILE_MODE_READ_ONLY || mode == LH_FILE_MODE_UPDATE)
	{
		ReadData(header, LH_FILE_HEADER_SIZE);
		if (strcmp(LHFileHeaderString, header))
		{
			Close();
			return LH_FAIL;
		}
		VerifyFile();
	}
	if (mode == LH_FILE_MODE_READ_WRITE)
	{
		strcpy(header, LHFileHeaderString);
		WriteData(header, LH_FILE_HEADER_SIZE);
	}
	CurrentFileOffset = LH_FILE_HEADER_SIZE;
	if (mode == LH_FILE_MODE_UPDATE)
	{
		LHSegmentDesc* last = SegmentList.GetHead();
		if (SetLHFilePointer(last->name, last->size))
			return LH_ERROR;
	}
	return LH_OK;
}

uint32_t LHReleasedFile::Open(LH_FILE_MODE mode)
{
	uint32_t result = LHFile::Open(mode);
	if (result == LH_OK)
		return result;
	if (mode == LH_FILE_MODE_READ_ONLY)
	{
		char path[256];
		sprintf(path, GAME_DRIVE_PATH_FORMAT, g_GameDriveCharacter, FileName);
		strcpy(FileName, path);
		result = LHFile::Open(LH_FILE_MODE_READ_ONLY);
		return result;
	}
	return LH_FAIL;
}

uint32_t LHFile::VerifyFile()
{
	LHSegment segment;
	for (;;)
	{
		uint32_t result = ReadData(segment.name, LH_SEGMENT_NAME_LENGTH);
		if (result == LH_FAIL)
			break;
		if (result)
			return LH_ERROR;
		if (ReadData(&segment.size, sizeof(segment.size)))
			return LH_FAIL;
		if (CustomSetFilePointerFunction)
			CustomSetFilePointerFunction(segment.size, FILE_CURRENT, CustomFunctionUserData);
		else
			SetFilePointer(Handle, segment.size, NULL, FILE_CURRENT);
		uint32_t offset;
		if (SegmentList.count)
		{
			LHSegmentDesc* last = SegmentList.GetHead();
			offset = last->offset + last->size + LH_SEGMENT_HEADER_SIZE;
		}
		else
		{
			offset = LH_FILE_HEADER_SIZE + LH_SEGMENT_HEADER_SIZE;
		}
		SegmentList.Add(new LHSegmentDesc(segment.name, offset, segment.size));
	}
	if (CustomSetFilePointerFunction)
		CustomSetFilePointerFunction(LH_FILE_HEADER_SIZE, FILE_BEGIN, CustomFunctionUserData);
	else
		SetFilePointer(Handle, LH_FILE_HEADER_SIZE, NULL, FILE_BEGIN);
	return LH_OK;
}

uint32_t LHFile::GetNextSegment(LHSegment* segment, bool32_t allocate_memory)
{
	char name[LH_SEGMENT_NAME_LENGTH + 1];

	if (!Opened)
		return LH_ERROR;
	if (FileMode != LH_FILE_MODE_READ_ONLY)
		return LH_ERROR;
	if (SegmentOpenFlag)
		CloseSegment();
	if (!allocate_memory && (!segment->buffer || !segment->size))
		return LH_ERROR;
	memset(name, 0, sizeof(name));
	ReadData(name, LH_SEGMENT_NAME_LENGTH);
	return GetSegment(name, segment, allocate_memory);
}

uint32_t LHFile::AllocSegDataMem(LHSegment* segment)
{
	if (segment->size >= LH_SEGMENT_MAX_SIZE)
		return LH_ERROR;
	FreeLastSeg();
	segment->buffer = (uint8_t*)malloc(segment->size);
	if (!segment->buffer)
		return LH_NO_MEMORY;
	memcpy(&LastSegment, segment, sizeof(LastSegment));
	return LH_OK;
}

LHFile::~LHFile()
{
	free(FileName);
	Close();
}

void LHFile::FreeLastSeg()
{
	if (LastSegment.buffer)
	{
		free(LastSegment.buffer);
		LastSegment.buffer = NULL;
	}
}

uint32_t LHFile::WriteSegment(LHSegment* segment)
{
	if (!Opened)
		return LH_ERROR;
	if (FileMode != LH_FILE_MODE_READ_WRITE && FileMode != LH_FILE_MODE_UPDATE)
		return LH_ERROR;
	if (SegmentOpenFlag)
		CloseSegment();
	if (OpenSegment(segment->name))
		return LH_ERROR;
	if (WriteSegmentData(segment->buffer, segment->size))
		return LH_ERROR;
	if (CloseSegment())
		return LH_ERROR;
	return LH_OK;
}

uint32_t LHFile::WriteSegmentHeader(char* segment_name)
{
	LHSegment segment;
	if (!segment_name || !strlen(segment_name))
		return LH_ERROR;
	char name[LH_SEGMENT_NAME_LENGTH + 1];
	memset(name, 0, sizeof(name));
	strncpy(name, segment_name, LH_SEGMENT_NAME_LENGTH);
	segment.size = 0;
	if (WriteData(name, LH_SEGMENT_NAME_LENGTH) || WriteData(&segment.size, sizeof(segment.size)))
		return LH_ERROR;
	return LH_OK;
}

uint32_t LHFile::Close()
{
	if (!Opened)
		return LH_OK;
	if (SegmentOpenFlag)
		CloseSegment();
	FreeLastSeg();
	void* handle = Handle;
	Opened = false;
	if (handle && !CloseHandle(handle))
		return LH_FAIL;
	Handle = NULL;
	while (1)
	{
		LHLinkedNode<LHSegmentDesc*>* node = SegmentList.GetStart();
		if (!node)
			break;
		delete node->payload;
		SegmentList.Remove(node->payload);
	}
	return LH_OK;
}

LHSegmentDesc* LHFile::Lookup(char* segment_name)
{
	LHLinkedNode<LHSegmentDesc*>* node;
	for (node = SegmentList.GetStart(); node; node = node->next.Get())
	{
		if (!strcmp(node->payload->name, segment_name))
			break;
	}
	return node ? node->payload : NULL;
}

uint32_t LHFile::SetLHFilePointer(char* segment_name, int offset)
{
	uint32_t base = 0;
	if (segment_name)
	{
		if (!Opened || (FileMode != LH_FILE_MODE_READ_ONLY && FileMode != LH_FILE_MODE_UPDATE))
			return LH_ERROR;
		LHSegmentDesc* entry = Lookup(segment_name);
		if (!entry)
			return LH_FAIL;
		base = entry->offset;
		if (offset > (long)entry->size)
			return LH_ERROR;
	}
	if (CustomSetFilePointerFunction)
	{
		CurrentFileOffset = CustomSetFilePointerFunction(base + offset, FILE_BEGIN, CustomFunctionUserData);
		if (CurrentFileOffset == INVALID_SET_FILE_POINTER)
			return LH_ERROR;
	}
	else
	{
		CurrentFileOffset = SetFilePointer(Handle, base + offset, NULL, FILE_BEGIN);
		if (CurrentFileOffset == INVALID_SET_FILE_POINTER)
			return LH_ERROR;
	}
	return LH_OK;
}

uint32_t LHFile::GetSegmentSize(char* segment_name)
{
	LHLinkedNode<LHSegmentDesc*>* node;
	for (node = SegmentList.GetStart(); node; node = node->next.Get())
	{
		if (!strcmp(node->payload->name, segment_name))
			break;
	}
	return node ? node->payload->size : -1;
}

uint32_t LHFile::GetSegment(char* name, LHSegment* segment, bool32_t allocate_memory)
{
	if (!Opened)
		return LH_ERROR;
	if (FileMode != LH_FILE_MODE_READ_ONLY)
		return LH_ERROR;
	if (SegmentOpenFlag)
		CloseSegment();
	LHSegmentDesc* entry = Lookup(name);
	if (!entry)
		return LH_FAIL;
	if (SetLHFilePointer(name, 0))
		return LH_FAIL;
	strcpy(segment->name, name);
	segment->size = entry->size;
	if (allocate_memory)
	{
		if (AllocSegDataMem(segment))
			return LH_ERROR;
	}
	else
	{
		bool32_t valid = segment->buffer && segment->size == entry->size;
		if (!valid)
			return LH_ERROR;
	}
	return ReadData(segment->buffer, entry->size);
}

uint32_t LHFile::OpenSegment(char* name)
{
	if (!Opened)
		return LH_ERROR;
	if (SegmentOpenFlag)
		CloseSegment();
	SegmentOpenFlag = true;
	SegmentSize = 0;
	SegmentName = name;
	if (FileMode == LH_FILE_MODE_READ_ONLY)
	{
		LHSegmentDesc* entry = Lookup(name);
		if (!entry)
			return LH_FAIL;
		SegmentSize = entry->size;
		SegmentOffset = entry->offset;
		return SetLHFilePointer(name, 0);
	}
	SegmentOffset = CurrentFileOffset + LH_SEGMENT_HEADER_SIZE;
	return WriteSegmentHeader(name);
}

uint32_t LHFile::CloseSegment()
{
	if (SegmentOpenFlag)
	{
		if (FileMode == LH_FILE_MODE_READ_WRITE || FileMode == LH_FILE_MODE_UPDATE)
		{
			int position = CurrentFileOffset;
			if (SetLHFilePointer(NULL, SegmentOffset - sizeof(SegmentSize)))
				return LH_ERROR;
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
	if (!SegmentOpenFlag)
		return LH_ERROR;
	if (FileMode != LH_FILE_MODE_READ_WRITE && FileMode != LH_FILE_MODE_UPDATE)
		return LH_ERROR;
	SegmentSize += length;
	WriteData(data, length);
	return LH_OK;
}

uint32_t LHFile::OverwriteSegment(LHSegment segment)
{
	Lookup(segment.name);
	SetLHFilePointer(segment.name, 0);
	WriteData(segment.buffer, segment.size);
	return LH_OK;
}

uint32_t LHFile::GetSegmentData(void* data, uint32_t data_size, int offset)
{
	if (!SegmentOpenFlag)
		return LH_ERROR;
	if (offset == -1 || !SetLHFilePointer(SegmentName, offset))
		return ReadData(data, data_size);
	return LH_ERROR;
}

uint32_t LHFile::WriteData(const void* data, uint32_t length)
{
	if (!Opened)
		return LH_ERROR;
	if (FileMode != LH_FILE_MODE_READ_WRITE && FileMode != LH_FILE_MODE_UPDATE)
		return LH_ERROR;
	CurrentFileOffset += length;
	if (CustomWriteFunction)
	{
		CustomWriteFunction(data, length, CustomFunctionUserData);
	}
	else
	{
		DWORD written;
		if (!WriteFile(Handle, data, length, &written, NULL))
			return LH_ERROR;
		if (written != length)
			return LH_FAIL;
	}
	return LH_OK;
}

uint32_t LHFile::ReadData(void* data, uint32_t length)
{
	if (!Opened)
		return LH_ERROR;
	if (FileMode != LH_FILE_MODE_READ_ONLY && FileMode != LH_FILE_MODE_UPDATE)
		return LH_ERROR;
	CurrentFileOffset += length;
	if (CustomReadFunction)
	{
		if (!CustomReadFunction(data, length, CustomFunctionUserData))
			return LH_FAIL;
	}
	else
	{
		DWORD read;
		if (!ReadFile(Handle, data, length, &read, NULL))
			return LH_ERROR;
		if (read != length)
			return LH_FAIL;
	}
	return LH_OK;
}

void LHFile::SetFileFunctions(void* read_function, void* write_function, void* set_file_pointer_function,
                              void* user_data)
{
	if (!Opened && write_function && read_function && set_file_pointer_function)
	{
		CustomFunctionUserData = user_data;
		CustomWriteFunction = (uint32_t (*)(const void*, uint32_t, void*))write_function;
		CustomReadFunction = (uint32_t (*)(void*, uint32_t, void*))read_function;
		CustomSetFilePointerFunction = (uint32_t (*)(uint32_t, uint32_t, void*))set_file_pointer_function;
	}
}

uint32_t LHFile::TruncateFromSegment(char* segment_name)
{
	if (Opened)
		return LH_ERROR;
	if (CustomWriteFunction)
		return LH_ERROR;
	if (Open(LH_FILE_MODE_UPDATE))
		return LH_FAIL;
	if (!Lookup(segment_name))
		return LH_FAIL;
	if (SetLHFilePointer(segment_name, -(int)LH_SEGMENT_HEADER_SIZE))
		return LH_FAIL;
	SetEndOfFile(Handle);
	Close();
	return LH_OK;
}
