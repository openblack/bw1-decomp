#include <Lionhead/LHFile/ver3.0/LHOSFile.h>

#include <stdio.h>
#include <string.h>
#include <windows.h>

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
    uint32_t buffer;
    char name[256];
    uint32_t result;

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
        file = CreateFileA(path, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, creation_disposition, 0, NULL);
    }
    else if (mode == LH_FILE_MODE_READ_WRITE_CREATE)
    {
        file = CreateFileA(path, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_ALWAYS, 0, NULL);
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
    char* d = (char*)dir;
    WIN32_FIND_DATAA* find_data = (WIN32_FIND_DATAA*)(d + 0x138);
    HANDLE find_handle = FindFirstFileA(pattern, find_data);
    *(HANDLE*)(d + 0x130) = find_handle;
    if (find_handle == INVALID_HANDLE_VALUE)
        return LH_FILE_RESULT_ERROR;
    DWORD attr = find_data->dwFileAttributes;
    *(uint32_t*)(d + 0x134) = attributes;
    if ((find_data->dwFileAttributes & attributes) == 0)
    {
        do
        {
            if (attr == 0 && (*(uint8_t*)(d + 0x134) & FILE_ATTRIBUTE_NORMAL))
                break;
            if (!FindNextFileA(*(HANDLE*)(d + 0x130), find_data))
                return LH_FILE_RESULT_ERROR;
            attr = find_data->dwFileAttributes;
        } while ((*(uint32_t*)(d + 0x134) & attr) == 0);
    }
    ConvertDirInfo(dir);
    return LH_FILE_RESULT_OK;
}

LH_FILE_RESULT LHOSFile::DirFindNext(LHDir* dir)
{
    char* d = (char*)dir;
    WIN32_FIND_DATAA* find_data = (WIN32_FIND_DATAA*)(d + 0x138);
    if (!FindNextFileA(*(HANDLE*)(d + 0x130), find_data))
        goto fail;
    for (;;)
    {
        if ((*(uint32_t*)(d + 0x134) & find_data->dwFileAttributes) != 0)
            break;
        if (!FindNextFileA(*(HANDLE*)(d + 0x130), find_data))
            goto fail;
    }
    ConvertDirInfo(dir);
    return LH_FILE_RESULT_OK;
fail:
    return LH_FILE_RESULT_ERROR;
}

LH_FILE_RESULT LHOSFile::DirFindEnd(LHDir* dir)
{
    return FindClose(*(HANDLE*)((char*)dir + 0x130)) ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
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
    char* v1 = (char*)dir;
    DWORD dos_date;
    DWORD dos_time;

    strcpy(v1, v1 + 356);
    strcpy(v1 + 260, v1 + 616);
    DWORD v2 = *(DWORD*)(v1 + 312);
    *(DWORD*)(v1 + 280) = *(DWORD*)(v1 + 344);
    *(DWORD*)(v1 + 276) = v2;

    unsigned int v3 = CoFileTimeToDosDateTime((FILETIME*)(v1 + 316), (LPWORD)&dos_date, (LPWORD)&dos_time);
    unsigned int v4;
    if (!v3)
    {
        v4 = 0;
        dos_date = 0;
        dos_time = 0;
    }
    else
    {
        v3 = dos_date;
        v4 = dos_time;
    }
    v1[288] = 0;
    v1[293] = 0;
    v1[284] = v3 & 0x1F;
    v1[285] = (v3 >> 5) & 0xF;
    *(WORD*)(v1 + 286) = ((unsigned short)v3 >> 9) + 1980;
    v1[292] = 2 * (v4 & 0x1F);
    v1[291] = (v4 >> 5) & 0x3F;
    v1[290] = (v4 >> 11) & 0x1F;

    unsigned int v5 = CoFileTimeToDosDateTime((FILETIME*)(v1 + 332), (LPWORD)&dos_date, (LPWORD)&dos_time);
    unsigned int v6;
    if (!v5)
    {
        v6 = 0;
    }
    else
    {
        v5 = dos_date;
        v6 = dos_time;
    }
    v1[298] = 0;
    v1[294] = v5 & 0x1F;
    unsigned int v7 = v5 >> 5;
    v5 = (unsigned short)v5 >> 9;
    v1[295] = v7 & 0xF;
    *(WORD*)(v1 + 296) = (unsigned short)(v5 + 1980);
    v1[303] = 0;
    v1[302] = 2 * (v6 & 0x1F);
    v1[301] = (v6 >> 5) & 0x3F;
    v1[300] = (v6 >> 11) & 0x1F;
}
