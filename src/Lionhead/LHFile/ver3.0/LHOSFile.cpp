#include "LHOSFile.h"

#include <stdio.h>
#include <string.h>
#include <windows.h>

#include <Lionhead/LHFile/ver3.0/LHDir.h>
#include <Lionhead/LHFile/ver3.0/LHFilePath.h>
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h>

// the drive letter the game was launched from ('D' by default)
char g_GameDriveCharacter = 'D';

LHOSFile::LHOSFile()
{
	handle = NULL;
}

LHOSFile::~LHOSFile()
{
	if (handle)
	{
		CloseHandle(handle);
		handle = NULL;
	}
}

LH_FILE_RESULT LHOSFile::Exists(const char* path)
{
	LHFilePath full(path);
	if (GetFileAttributesA(path) == -1 && GetFileAttributesA(full) == -1)
		return LH_FILE_RESULT_NOT_FOUND;
	else
		return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::Position(uint32_t* out_position)
{
	DWORD pos = SetFilePointer(handle, 0, NULL, FILE_CURRENT);
	if (pos != -1)
	{
		if (out_position)
			*out_position = pos;
		return LH_FILE_RESULT_OK;
	}
	return LH_FILE_RESULT_ERROR;
}

LH_FILE_RESULT LHFileLength(const char* path, uint32_t* out_length)
{
	LHReleasedOSFile file;
	uint32_t         buffer;
	char             name[256];
	uint32_t         result;

	sprintf(name, "%s.zzz", path);
	signed char i = strlen(name) - 5;
	if (i != 0)
	{
		while (name[i] != '.')
		{
			if (!--i)
				goto scan_done;
		}
		name[i] = '_';
	}
scan_done:
	if (LHOSFile::Exists(path) == 0)
	{
		if (file.Open(path, LH_FILE_MODE_READ_ONLY) == LH_FILE_RESULT_ERROR)
			return LH_FILE_RESULT_ERROR;
		result = file.Length(&buffer);
	}
	else
	{
		if (LHOSFile::Exists(name))
		{
			*out_length = 0;
			return LH_FILE_RESULT_NOT_FOUND;
		}
		if (file.Open(name, LH_FILE_MODE_READ_ONLY) == LH_FILE_RESULT_ERROR)
			return LH_FILE_RESULT_ERROR;
		result = file.Read(&buffer, 4, 0);
	}
	if (result == LH_FILE_RESULT_ERROR)
	{
		file.Close();
		return LH_FILE_RESULT_ERROR;
	}
	file.Close();
	*out_length = buffer;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::Open(const char* path, LH_FILE_MODE mode)
{
	DWORD creation_disposition = CREATE_ALWAYS;
	if (Exists(path) == LH_FILE_RESULT_NOT_FOUND)
	{
		if (mode == LH_FILE_MODE_READ_ONLY || mode == LH_FILE_MODE_READ_WRITE_CREATE)
			return LH_FILE_RESULT_ERROR;
	}
	else
	{
		creation_disposition = TRUNCATE_EXISTING;
	}

	HANDLE file;
	if (mode == LH_FILE_MODE_READ_WRITE)
	{
		file = CreateFileA(path, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL,
		                   creation_disposition, 0, NULL);
	}
	else if (mode == LH_FILE_MODE_READ_WRITE_CREATE)
	{
		file = CreateFileA(path, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_ALWAYS, 0,
		                   NULL);
	}
	else // LH_FILE_MODE_READ_ONLY
	{
		file = CreateFileA(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
	}

	if (file == INVALID_HANDLE_VALUE)
		return LH_FILE_RESULT_ERROR;
	if (handle)
	{
		CloseHandle(handle);
		handle = NULL;
	}
	handle = file;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHReleasedOSFile::Open(const char* path, LH_FILE_MODE mode)
{
	LH_FILE_RESULT result = LHOSFile::Open(path, mode);
	if (result == LH_FILE_RESULT_OK)
		return result;
	if (mode == LH_FILE_MODE_READ_ONLY || mode == LH_FILE_MODE_READ_WRITE_CREATE)
	{
		LHFilePath full(path);
		return LHOSFile::Open(full, mode);
	}
	return LH_FILE_RESULT_NOT_FOUND;
}

LH_FILE_RESULT LHOSFile::Close()
{
	BOOL closed = CloseHandle(handle);
	handle = NULL;
	return closed == TRUE ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
}

LH_FILE_RESULT LHOSFile::Seek(long distance, LH_SEEK_MODE mode, uint32_t* out_new_position)
{
	DWORD result;
	switch (mode)
	{
	case LH_SEEK_BEGIN:
		result = SetFilePointer(handle, distance, NULL, FILE_BEGIN);
		break;
	case LH_SEEK_CURRENT:
		result = SetFilePointer(handle, distance, NULL, FILE_CURRENT);
		break;
	case LH_SEEK_END:
		result = SetFilePointer(handle, distance, NULL, FILE_END);
		break;
	default:
		result = (DWORD)-1;
		break;
	}
	if (result == -1)
		return LH_FILE_RESULT_ERROR;
	if (out_new_position)
		*out_new_position = result;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::Read(void* buffer, size_t size, size_t* out_read)
{
	if (!ReadFile(handle, buffer, size, (LPDWORD)&size, NULL))
		return LH_FILE_RESULT_ERROR;
	if (out_read)
		*out_read = size;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::Write(const void* data, uint32_t len, uint32_t* written)
{
	if (!WriteFile(handle, data, len, (LPDWORD)&len, NULL))
		return LH_FILE_RESULT_ERROR;
	if (written)
		*written = len;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::Length(uint32_t* out_length)
{
	DWORD size = GetFileSize(handle, NULL);
	if (size == INVALID_FILE_SIZE)
		return LH_FILE_RESULT_ERROR;
	if (out_length)
		*out_length = size;
	return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::DirFindFirst(const char* pattern, LHDir* dir, uint32_t attributes)
{
	HANDLE FindHandle = FindFirstFileA(pattern, &dir->FindData);
	dir->FindHandle = FindHandle;
	if (FindHandle == INVALID_HANDLE_VALUE)
		return LH_FILE_RESULT_ERROR;
	dir->SearchAttributes = attributes;
	DWORD attr = dir->FindData.dwFileAttributes;
	if ((dir->FindData.dwFileAttributes & attributes) == 0)
	{
		do
		{
			if (attr == 0 && (*(uint8_t*)&dir->SearchAttributes & FILE_ATTRIBUTE_NORMAL))
				break;
			if (!FindNextFileA(dir->FindHandle, &dir->FindData))
				return LH_FILE_RESULT_ERROR;
			attr = dir->FindData.dwFileAttributes;
		} while ((dir->SearchAttributes & attr) == 0);
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

LH_FILE_RESULT __stdcall LHOSFile::Rename(const char* from, const char* to)
{
	return MoveFileA(from, to) ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
}

LH_FILE_RESULT __stdcall LHOSFile::Delete(const char* path)
{
	return DeleteFileA(path) ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
}

void LHOSFile::ConvertDirInfo(LHDir* dir)
{
	DWORD dos_date;
	DWORD dos_time;

	strcpy(dir->name, dir->FindData.cFileName);
	strcpy(dir->AlternateName, dir->FindData.cAlternateFileName);
	DWORD attributes = dir->FindData.dwFileAttributes;
	dir->size = dir->FindData.nFileSizeLow;
	dir->attributes = attributes;

	unsigned int creation_date =
		CoFileTimeToDosDateTime(&dir->FindData.ftCreationTime, (LPWORD)&dos_date, (LPWORD)&dos_time);
	unsigned int CreationTime;
	if (!creation_date)
	{
		CreationTime = 0;
		dos_date = 0;
		dos_time = 0;
	}
	else
	{
		creation_date = dos_date;
		CreationTime = dos_time;
	}
	dir->CreationTime.DayOfWeek = 0;
	dir->CreationTime.field_0x9 = 0;
	dir->CreationTime.day = creation_date & 0x1F;
	dir->CreationTime.month = (creation_date >> 5) & 0xF;
	dir->CreationTime.year = ((unsigned short)creation_date >> 9) + 1980;
	dir->CreationTime.second = 2 * (CreationTime & 0x1F);
	dir->CreationTime.minute = (CreationTime >> 5) & 0x3F;
	dir->CreationTime.hour = (CreationTime >> 11) & 0x1F;

	unsigned int write_date =
		CoFileTimeToDosDateTime(&dir->FindData.ftLastWriteTime, (LPWORD)&dos_date, (LPWORD)&dos_time);
	unsigned int WriteTime;
	if (!write_date)
	{
		WriteTime = 0;
	}
	else
	{
		write_date = dos_date;
		WriteTime = dos_time;
	}
	dir->WriteTime.DayOfWeek = 0;
	dir->WriteTime.day = write_date & 0x1F;
	unsigned int write_month = write_date >> 5;
	write_date = (unsigned short)write_date >> 9;
	dir->WriteTime.month = write_month & 0xF;
	dir->WriteTime.year = (unsigned short)(write_date + 1980);
	dir->WriteTime.field_0x9 = 0;
	dir->WriteTime.second = 2 * (WriteTime & 0x1F);
	dir->WriteTime.minute = (WriteTime >> 5) & 0x3F;
	dir->WriteTime.hour = (WriteTime >> 11) & 0x1F;
}
