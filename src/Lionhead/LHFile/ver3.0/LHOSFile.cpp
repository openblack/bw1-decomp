#include "LHOSFile.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>

#include <zlib/zlib.h>

#include <Lionhead/LHFile/ver3.0/LHDir.h>
#include <Lionhead/LHFile/ver3.0/LHFileLogMacros.h>
#include <Lionhead/LHFile/ver3.0/LHFilePath.h>
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h>

#ifndef INVALID_FILE_ATTRIBUTES
#define INVALID_FILE_ATTRIBUTES 0xFFFFFFFF
#endif
#ifndef INVALID_SET_FILE_POINTER
#define INVALID_SET_FILE_POINTER ((DWORD) - 1)
#endif

#define LH_FILE_COMPRESSED_EXTENSION ".zzz"

#define DOS_DATE_BASE_YEAR 1980

#define DOS_DATE_DAY(date)   ((date) & 0x1f)
#define DOS_DATE_MONTH(date) (((date) >> 5) & 0xf)
#define DOS_DATE_YEAR(date)  (((date) >> 9) + DOS_DATE_BASE_YEAR)

#define DOS_TIME_SECOND(time) (((time) & 0x1f) * 2)
#define DOS_TIME_MINUTE(time) (((time) >> 5) & 0x3f)
#define DOS_TIME_HOUR(time)   (((time) >> 11) & 0x1f)

static char* LHLogLibraryName;

LHOSFile::LHOSFile()
{
	Handle = NULL;
}

LHOSFile::~LHOSFile()
{
	LH_ASSERT(22, Handle == 0, "Jeremy: Handle not closed for this file but should be");
	if (Handle)
	{
		CloseHandle(Handle);
		Handle = NULL;
	}
}

LH_FILE_RESULT LHOSFile::Exists(const char* path)
{
	LHFilePath full(path);
	if (GetFileAttributesA(path) == INVALID_FILE_ATTRIBUTES && GetFileAttributesA(full) == INVALID_FILE_ATTRIBUTES)
		return LH_FILE_RESULT_NOT_FOUND;
	else
		return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::Position(uint32_t* out_position)
{
	DWORD pos = SetFilePointer(Handle, 0, NULL, FILE_CURRENT);
	if (pos != INVALID_SET_FILE_POINTER)
	{
		if (out_position)
			*out_position = pos;
		return LH_FILE_RESULT_OK;
	}
	return LH_FILE_RESULT_ERROR;
}

LH_FILE_RESULT LHOSFile::Open(const char* path, LH_FILE_MODE mode)
{
	DWORD creation_disposition = CREATE_ALWAYS;
	if (Exists(path) == LH_FILE_RESULT_NOT_FOUND)
	{
		if (mode == LH_FILE_READ_ONLY || mode == LH_FILE_READ_WRITE)
			return LH_FILE_RESULT_ERROR;
	}
	else
	{
		creation_disposition = TRUNCATE_EXISTING;
	}

	HANDLE file;
	if (mode == LH_FILE_NEW)
	{
		file = CreateFileA(path, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL,
		                   creation_disposition, 0, NULL);
	}
	else if (mode == LH_FILE_READ_WRITE)
	{
		file = CreateFileA(path, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_ALWAYS, 0,
		                   NULL);
	}
	else
	{
		file = CreateFileA(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
	}

	if (file == INVALID_HANDLE_VALUE)
	{
		LH_LOG_WIN32_ERROR(123);
		return LH_FILE_RESULT_ERROR;
	}
	LH_ASSERT(127, Handle == 0, "Jeremy: try to get an handle but didn't close the previous one!");
	if (Handle)
	{
		CloseHandle(Handle);
		Handle = NULL;
	}
	Handle = file;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHReleasedOSFile::Open(const char* path, LH_FILE_MODE mode)
{
	if (LHOSFile::Open(path, mode) == LH_FILE_RESULT_OK)
		return LH_FILE_RESULT_OK;
	if (mode == LH_FILE_READ_ONLY || mode == LH_FILE_READ_WRITE)
	{
		LHFilePath     full(path);
		LH_FILE_RESULT result = LHOSFile::Open(full, mode);
		if (result == LH_FILE_RESULT_OK)
		{
			LH_LOG_ERROR(152, LH_LOG_CODE_ERROR, "Loaded from CDROM instead\n");
		}
		else
		{
			LH_LOG_ERROR(156, LH_LOG_CODE_ERROR, "COULD NOT LOAD FROM CD EITHER!!!\n");
		}
		return result;
	}
	return LH_FILE_RESULT_NOT_FOUND;
}

LH_FILE_RESULT LHOSFile::Close()
{
	bool32_t closed = CloseHandle(Handle);
	Handle = NULL;
	return closed == true ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
}

LH_FILE_RESULT LHOSFile::Seek(long distance, LH_SEEK_MODE mode, uint32_t* out_new_position)
{
	DWORD result;
	switch (mode)
	{
	case LH_SEEK_BEGIN:
		result = SetFilePointer(Handle, distance, NULL, FILE_BEGIN);
		if (result == INVALID_SET_FILE_POINTER)
		{
			LH_LOG_ERROR(187, LH_LOG_CODE_ERROR, "File Seek Routine");
		}
		break;
	case LH_SEEK_CURRENT:
		result = SetFilePointer(Handle, distance, NULL, FILE_CURRENT);
		break;
	case LH_SEEK_END:
		result = SetFilePointer(Handle, distance, NULL, FILE_END);
		break;
	default:
		result = INVALID_SET_FILE_POINTER;
		break;
	}
	if (result == INVALID_SET_FILE_POINTER)
		return LH_FILE_RESULT_ERROR;
	if (out_new_position)
		*out_new_position = result;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::Read(void* buffer, size_t size, size_t* out_read)
{
	if (!ReadFile(Handle, buffer, size, (LPDWORD)&size, NULL))
		return LH_FILE_RESULT_ERROR;
	if (out_read)
		*out_read = size;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::Write(const void* data, uint32_t len, uint32_t* written)
{
	if (!WriteFile(Handle, data, len, (LPDWORD)&len, NULL))
		return LH_FILE_RESULT_ERROR;
	if (written)
		*written = len;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHFileLength(const char* path, uint32_t* out_length)
{
	LHReleasedOSFile file;
	uint32_t         length;
	char             name[256];
	LH_FILE_RESULT   result;

	sprintf(name, "%s" LH_FILE_COMPRESSED_EXTENSION, path);
	for (char i = strlen(name) - sizeof(LH_FILE_COMPRESSED_EXTENSION); i; i--)
	{
		if (name[i] == '.')
		{
			name[i] = '_';
			break;
		}
	}

	if (LHOSFile::Exists(path) == LH_FILE_RESULT_OK)
	{
		if (file.Open(path, LH_FILE_READ_ONLY) == LH_FILE_RESULT_ERROR)
			return LH_FILE_RESULT_ERROR;
		result = file.Length(&length);
	}
	else if (LHOSFile::Exists(name) == LH_FILE_RESULT_OK)
	{
		if (file.Open(name, LH_FILE_READ_ONLY) == LH_FILE_RESULT_ERROR)
			return LH_FILE_RESULT_ERROR;
		result = file.Read(&length, sizeof(length), NULL);
	}
	else
	{
		*out_length = 0;
		return LH_FILE_RESULT_NOT_FOUND;
	}
	if (result == LH_FILE_RESULT_ERROR)
	{
		file.Close();
		return LH_FILE_RESULT_ERROR;
	}
	file.Close();
	*out_length = length;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::Length(uint32_t* out_length)
{
	DWORD size = GetFileSize(Handle, NULL);
	if (size == INVALID_FILE_SIZE)
		return LH_FILE_RESULT_ERROR;
	if (out_length)
		*out_length = size;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::DirFindFirst(const char* pattern, LHDir* dir, uint32_t attributes)
{
	dir->FindHandle = FindFirstFileA(pattern, &dir->FindData);
	if (dir->FindHandle == INVALID_HANDLE_VALUE)
		return LH_FILE_RESULT_ERROR;
	dir->SearchAttributes = attributes;
	while ((dir->FindData.dwFileAttributes & dir->SearchAttributes) == 0)
	{
		if (dir->FindData.dwFileAttributes == 0 && (dir->SearchAttributes & FILE_ATTRIBUTE_NORMAL))
			break;
		if (!FindNextFileA(dir->FindHandle, &dir->FindData))
			return LH_FILE_RESULT_ERROR;
	}
	ConvertDirInfo(dir);
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::DirFindNext(LHDir* dir)
{
	while (FindNextFileA(dir->FindHandle, &dir->FindData))
	{
		if ((dir->FindData.dwFileAttributes & dir->SearchAttributes) != 0)
		{
			ConvertDirInfo(dir);
			return LH_FILE_RESULT_OK;
		}
	}
	return LH_FILE_RESULT_ERROR;
}

LH_FILE_RESULT LHOSFile::DirFindEnd(LHDir* dir)
{
	return FindClose(dir->FindHandle) ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
}

LH_FILE_RESULT LHOSFile::Rename(char* from, char* to)
{
	return MoveFileA(from, to) ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
}

LH_FILE_RESULT LHOSFile::Delete(char* path)
{
	return DeleteFileA(path) ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
}

void LHOSFile::ConvertDirInfo(LHDir* dir)
{
	WORD date;
	WORD time;

	strcpy(dir->name, dir->FindData.cFileName);
	strcpy(dir->AlternateName, dir->FindData.cAlternateFileName);
	dir->size = dir->FindData.nFileSizeLow;
	dir->attributes = dir->FindData.dwFileAttributes;

	if (!CoFileTimeToDosDateTime(&dir->FindData.ftCreationTime, &date, &time))
	{
		time = 0;
		date = 0;
	}
	dir->CreationTime.day = DOS_DATE_DAY(date);
	dir->CreationTime.month = DOS_DATE_MONTH(date);
	dir->CreationTime.year = DOS_DATE_YEAR(date);
	dir->CreationTime.DayOfWeek = 0;
	dir->CreationTime.Hundredths = 0;
	dir->CreationTime.second = DOS_TIME_SECOND(time);
	dir->CreationTime.minute = DOS_TIME_MINUTE(time);
	dir->CreationTime.hour = DOS_TIME_HOUR(time);

	if (!CoFileTimeToDosDateTime(&dir->FindData.ftLastWriteTime, &date, &time))
	{
		time = 0;
		date = 0;
	}
	dir->WriteTime.day = DOS_DATE_DAY(date);
	dir->WriteTime.month = DOS_DATE_MONTH(date);
	dir->WriteTime.year = DOS_DATE_YEAR(date);
	dir->WriteTime.DayOfWeek = 0;
	dir->WriteTime.Hundredths = 0;
	dir->WriteTime.second = DOS_TIME_SECOND(time);
	dir->WriteTime.minute = DOS_TIME_MINUTE(time);
	dir->WriteTime.hour = DOS_TIME_HOUR(time);
}

uint32_t LHLoadData(char* path, void* buffer, uint32_t length, uint32_t* out_read)
{
	LHReleasedOSFile file;
	uint32_t         file_length;
	uint32_t         read;
	uint32_t         compressed_length;
	char             name[256];
	LH_FILE_RESULT   result = LH_FILE_RESULT_ERROR;

	sprintf(name, "%s" LH_FILE_COMPRESSED_EXTENSION, path);
	for (char i = strlen(name) - sizeof(LH_FILE_COMPRESSED_EXTENSION); i; i--)
	{
		if (name[i] == '.')
		{
			name[i] = '_';
			break;
		}
	}

	if (LHOSFile::Exists(path) == LH_FILE_RESULT_OK)
	{
		if (file.Open(path, LH_FILE_READ_ONLY) == LH_FILE_RESULT_OK)
		{
			if (file.Length(&file_length) == LH_FILE_RESULT_OK)
			{
				if (file_length > length)
					file_length = length;
				if (file.Read(buffer, file_length, &read) == LH_FILE_RESULT_ERROR)
					result = LH_FILE_RESULT_ERROR;
				else if (read != file_length)
					result = LH_FILE_RESULT_NOT_FOUND;
				else
				{
					result = LH_FILE_RESULT_OK;
					if (out_read)
						*out_read = read;
				}
			}
			file.Close();
		}
		else
		{
			LH_ASSERT_FAIL(484, LHSPrintf("Tim: File %s could not be loaded", path));
		}
	}
	else
	{
		if (file.Open(name, LH_FILE_READ_ONLY) == LH_FILE_RESULT_OK)
		{
			if (file.Read(&file_length, sizeof(file_length), NULL) == LH_FILE_RESULT_OK)
			{
				if (file_length > length)
					file_length = length;
				file.Length(&compressed_length);
				compressed_length -= sizeof(file_length);
				void* data = operator new(length);
				if (file.Read(data, compressed_length, &read) == LH_FILE_RESULT_ERROR)
					result = LH_FILE_RESULT_ERROR;
				else if (read != compressed_length)
					result = LH_FILE_RESULT_NOT_FOUND;
				else
				{
					if (uncompress((Bytef*)buffer, (uLongf*)&length, (Bytef*)data, compressed_length) != Z_OK)
						LH_ASSERT_FAIL(515, LHSPrintf("Tim: File %s could not be loaded", path));
					result = LH_FILE_RESULT_OK;
					if (out_read)
						*out_read = read;
				}
				delete data;
			}
			file.Close();
		}
		else
		{
			LH_ASSERT_FAIL(531, LHSPrintf("Tim: File %s could not be loaded", path));
		}
	}
	return result;
}

uint32_t LHSaveData(char* path, void* data, uint32_t length, uint32_t* out_written)
{
	LHReleasedOSFile file;
	uint32_t         written;
	LH_FILE_RESULT   result = LH_FILE_RESULT_ERROR;

	if (file.Open(path, LH_FILE_NEW) == LH_FILE_RESULT_OK)
	{
		if (file.Write(data, length, &written) == LH_FILE_RESULT_OK)
		{
			result = length != written ? LH_FILE_RESULT_NOT_FOUND : LH_FILE_RESULT_OK;
			if (out_written)
				*out_written = written;
		}
		file.Close();
	}
	else
	{
		LH_ASSERT_FORCED(567, 0, "Tim: Could not open file for saving");
	}
	return result;
}

uint32_t LHLoadDataToMemory(char* path, void** out_buffer, uint32_t* out_length)
{
	LH_FILE_RESULT   result = LH_FILE_RESULT_ERROR;
	LHReleasedOSFile file;
	uint32_t         length;
	uint32_t         compressed_length;
	uint32_t         read;
	char             name[256];

	sprintf(name, "%s" LH_FILE_COMPRESSED_EXTENSION, path);
	for (char i = strlen(name) - sizeof(LH_FILE_COMPRESSED_EXTENSION); i; i--)
	{
		if (name[i] == '.')
		{
			name[i] = '_';
			break;
		}
	}

	if (LHOSFile::Exists(path) == LH_FILE_RESULT_OK)
	{
		if (file.Open(path, LH_FILE_READ_ONLY) == LH_FILE_RESULT_OK)
		{
			if (file.Length(&length) == LH_FILE_RESULT_OK)
			{
				void* memory = malloc(length);
				if (memory)
				{
					if (file.Read(memory, length, &read) == LH_FILE_RESULT_ERROR)
					{
						free(memory);
						result = LH_FILE_RESULT_ERROR;
					}
					else
					{
						result = read != length ? LH_FILE_RESULT_NOT_FOUND : LH_FILE_RESULT_OK;
						if (out_length)
							*out_length = length;
						*out_buffer = memory;
					}
				}
			}
			file.Close();
		}
	}
	else if (LHOSFile::Exists(name) == LH_FILE_RESULT_OK)
	{
		if (file.Open(name, LH_FILE_READ_ONLY) == LH_FILE_RESULT_OK)
		{
			if (file.Read(&length, sizeof(length), NULL) == LH_FILE_RESULT_OK)
			{
				void* memory = malloc(length);
				if (memory)
				{
					file.Length(&compressed_length);
					compressed_length -= sizeof(length);
					void* data = operator new(compressed_length);
					if (file.Read(data, compressed_length, &read) == LH_FILE_RESULT_ERROR)
					{
						delete data;
						free(memory);
						result = LH_FILE_RESULT_ERROR;
					}
					else
					{
						if (read != compressed_length)
							result = LH_FILE_RESULT_NOT_FOUND;
						else
							result =
								uncompress((Bytef*)memory, (uLongf*)&length, (Bytef*)data, compressed_length) != Z_OK
									? LH_FILE_RESULT_NOT_FOUND
									: LH_FILE_RESULT_OK;
						if (out_length)
							*out_length = length;
						*out_buffer = memory;
					}
					delete data;
				}
			}
			file.Close();
		}
	}
	return result;
}
