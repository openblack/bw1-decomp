#include <Lionhead/LHFile/ver3.0/LHOSFile.h>

#include <stdio.h>
#include <string.h>
#include <windows.h>

#include <Lionhead/LHFile/ver3.0/LHFilePath.h>
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h>

// BW1W120 00c2b9e8
char g_GameDriveCharacter = 'D';

// BW1W120 007bc650 LHOSFile::LHOSFile(void)
LHOSFile::LHOSFile()
{
    handle = NULL;
}

// BW1W120 007bc680 LHOSFile::~LHOSFile(void)
LHOSFile::~LHOSFile()
{
    if (handle)
    {
        CloseHandle(handle);
        handle = NULL;
    }
}

// BW1W120 007bc6a0 LHOSFile::Exists(char const *)
LH_FILE_RESULT LHOSFile::Exists(const char* path)
{
    LHFilePath full(path);
    if (GetFileAttributesA(path) == -1 && GetFileAttributesA(full) == -1)
        return LH_FILE_RESULT_NOT_FOUND;
    else
        return LH_FILE_RESULT_OK;
}

// BW1W120 007bc700 LHOSFile::Position(unsigned long *)
LH_FILE_RESULT LHOSFile::Position(uint32_t* position)
{
    DWORD pos = SetFilePointer(handle, 0, NULL, FILE_CURRENT);
    if (pos != -1)
    {
        if (position)
            *position = pos;
        return LH_FILE_RESULT_OK;
    }
    return LH_FILE_RESULT_ERROR;
}

// BW1W120 007bc960 LHFileLength(char const *, unsigned long *)
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

// BW1W120 007bc730 LHOSFile::Open(char const *, LH_FILE_MODE)
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

// BW1W120 007bc7e0 LHReleasedOSFile::Open(char const *, LH_FILE_MODE)
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

// BW1W120 007bc860 LHOSFile::Close(void)
LH_FILE_RESULT LHOSFile::Close()
{
    BOOL closed = CloseHandle(handle);
    handle = NULL;
    return closed == TRUE ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
}

// BW1W120 007bc880 LHOSFile::Seek(long, LH_SEEK_MODE, unsigned long *)
LH_FILE_RESULT LHOSFile::Seek(long distance, LH_SEEK_MODE mode, uint32_t* new_position)
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
    if (new_position)
        *new_position = result;
    return LH_FILE_RESULT_OK;
}

// BW1W120 007bc8e0 LHOSFile::Read(void *, unsigned long, unsigned long *)
LH_FILE_RESULT LHOSFile::Read(void* buffer, size_t size, size_t* read)
{
    if (!ReadFile(handle, buffer, size, (LPDWORD)&size, NULL))
        return LH_FILE_RESULT_ERROR;
    if (read)
        *read = size;
    return LH_FILE_RESULT_OK;
}

// BW1W120 007bc920 LHOSFile::Write(void *, unsigned long, unsigned long *)
LH_FILE_RESULT LHOSFile::Write(const void* data, uint32_t len, uint32_t* written)
{
    if (!WriteFile(handle, data, len, (LPDWORD)&len, NULL))
        return LH_FILE_RESULT_ERROR;
    if (written)
        *written = len;
    return LH_FILE_RESULT_OK;
}

// BW1W120 007bcae0 LHOSFile::Length(unsigned long *)
LH_FILE_RESULT LHOSFile::Length(uint32_t* length)
{
    DWORD size = GetFileSize(handle, NULL);
    if (size == INVALID_FILE_SIZE)
        return LH_FILE_RESULT_ERROR;
    if (length)
        *length = size;
    return LH_FILE_RESULT_OK;
}

// BW1W120 007bcb10 LHOSFile::DirFindFirst(char const *, LHDir *, unsigned long)
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

// BW1W120 007bcba0 LHOSFile::DirFindNext(LHDir *)
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

// BW1W120 007bcc00 LHOSFile::DirFindEnd(LHDir *)
LH_FILE_RESULT LHOSFile::DirFindEnd(LHDir* dir)
{
    return FindClose(*(HANDLE*)((char*)dir + 0x130)) ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
}

// BW1W120 007bcc20 LHOSFile::Rename(char const *, char const *)
LH_FILE_RESULT __stdcall LHOSFile::Rename(const char* from, const char* to)
{
    return MoveFileA(from, to) ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
}

// BW1W120 007bcc40 LHOSFile::Delete(char const *)
LH_FILE_RESULT __stdcall LHOSFile::Delete(const char* path)
{
    return DeleteFileA(path) ? LH_FILE_RESULT_OK : LH_FILE_RESULT_ERROR;
}

// BW1W120 007bcc60 LHOSFile::ConvertDirInfo(LHDir *)
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
