#include <Lionhead/LHFile/ver3.0/LHOSFile.h>

#include <stdio.h>
#include <string.h>
#include <windows.h>

#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h>

// BW1W120 00c2b9e8
char g_GameDriveCharacter;

// BW1W120 007bc650 LHOSFile::LHOSFile(void)
LHOSFile::LHOSFile()
{
    handle = 0;
}

// BW1W120 007bc680 LHOSFile::~LHOSFile(void)
LHOSFile::~LHOSFile()
{
    if (handle)
    {
        CloseHandle(handle);
        handle = 0;
    }
}

// BW1W120 007bc6a0 LHOSFile::Exists(char const *)
uint32_t LHOSFile::Exists(const char* path)
{
    char full[256];
    sprintf(full, "%c:\\%s", g_GameDriveCharacter, path);
    if (GetFileAttributesA(path) == -1 && GetFileAttributesA(full) == -1)
        return 2;
    else
        return 0;
}

// BW1W120 007bc700 LHOSFile::Position(unsigned long *)
uint32_t LHOSFile::Position(uint32_t* position)
{
    DWORD pos = SetFilePointer(handle, 0, 0, FILE_CURRENT);
    if (pos != -1)
    {
        if (position)
            *position = pos;
        return 0;
    }
    return 3;
}

// BW1W120 007bc960 LHFileLength(char const *, unsigned long *)
uint32_t LHFileLength(const char* path, uint32_t* out_length)
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
        if (file.Open(path, (LH_FILE_MODE)2) == 3)
            return 3;
        result = file.Length(&buffer);
    }
    else
    {
        if (LHOSFile::Exists(name))
        {
            *out_length = 0;
            return 2;
        }
        if (file.Open(name, (LH_FILE_MODE)2) == 3)
            return 3;
        result = file.Read(&buffer, 4, 0);
    }
    if (result == 3)
    {
        file.Close();
        return 3;
    }
    file.Close();
    *out_length = buffer;
    return 0;
}

// BW1W120 007bc730 LHOSFile::Open(char const *, LH_FILE_MODE)
uint32_t LHOSFile::Open(const char* path, LH_FILE_MODE mode)
{
    DWORD creation_disposition = 2;
    if (Exists(path) == 2)
    {
        if (mode == 2 || mode == 1)
            return 3;
    }
    else
    {
        creation_disposition = 5;
    }

    HANDLE file;
    if (mode == 0)
    {
        file = CreateFileA(path, 0xC0000000, 3, 0, creation_disposition, 0, 0);
    }
    else if (mode == 1)
    {
        file = CreateFileA(path, 0xC0000000, 3, 0, 4, 0, 0);
    }
    else
    {
        file = CreateFileA(path, 0x80000000, 1, 0, 3, 0, 0);
    }

    if (file == INVALID_HANDLE_VALUE)
        return 3;
    if (handle)
    {
        CloseHandle(handle);
        handle = 0;
    }
    handle = file;
    return 0;
}

// BW1W120 007bc7e0 LHReleasedOSFile::Open(char const *, LH_FILE_MODE)
uint32_t LHReleasedOSFile::Open(const char* path, LH_FILE_MODE mode)
{
    uint32_t result = LHOSFile::Open(path, mode);
    if (result == 0)
        return result;
    if (mode == 2 || mode == 1)
    {
        char full[256];
        sprintf(full, "%c:\\%s", g_GameDriveCharacter, path);
        return LHOSFile::Open(full, mode);
    }
    return 2;
}

// BW1W120 007bc860 LHOSFile::Close(void)
uint32_t LHOSFile::Close()
{
    BOOL closed = CloseHandle(handle);
    handle = 0;
    return closed == TRUE ? 0 : 3;
}

// BW1W120 007bc880 LHOSFile::Seek(long, LH_SEEK_MODE, unsigned long *)
uint32_t LHOSFile::Seek(long distance, LH_SEEK_MODE mode, uint32_t* new_position)
{
    DWORD result;
    switch (mode)
    {
    case 0:
        result = SetFilePointer(handle, distance, 0, 0);
        break;
    case 1:
        result = SetFilePointer(handle, distance, 0, 1);
        break;
    case 2:
        result = SetFilePointer(handle, distance, 0, 2);
        break;
    default:
        result = (DWORD)-1;
        break;
    }
    if (result == -1)
        return 3;
    if (new_position)
        *new_position = result;
    return 0;
}

// BW1W120 007bc8e0 LHOSFile::Read(void *, unsigned long, unsigned long *)
uint32_t LHOSFile::Read(void* buffer, size_t size, size_t* read)
{
    if (!ReadFile(handle, buffer, size, (LPDWORD)&size, 0))
        return 3;
    if (read)
        *read = size;
    return 0;
}

// BW1W120 007bc920 LHOSFile::Write(void *, unsigned long, unsigned long *)
uint32_t LHOSFile::Write(const void* data, uint32_t len, uint32_t* written)
{
    if (!WriteFile(handle, data, len, (LPDWORD)&len, 0))
        return 3;
    if (written)
        *written = len;
    return 0;
}

// BW1W120 007bcae0 LHOSFile::Length(unsigned long *)
uint32_t LHOSFile::Length(uint32_t* length)
{
    DWORD size = GetFileSize(handle, 0);
    if (size == -1)
        return 3;
    if (length)
        *length = size;
    return 0;
}

// BW1W120 007bcb10 LHOSFile::DirFindFirst(char const *, LHDir *, unsigned long)
uint32_t LHOSFile::DirFindFirst(const char* pattern, LHDir* dir, uint32_t attributes)
{
    char* d = (char*)dir;
    WIN32_FIND_DATAA* find_data = (WIN32_FIND_DATAA*)(d + 0x138);
    HANDLE find_handle = FindFirstFileA(pattern, find_data);
    *(HANDLE*)(d + 0x130) = find_handle;
    if (find_handle == INVALID_HANDLE_VALUE)
        return 3;
    DWORD attr = find_data->dwFileAttributes;
    *(uint32_t*)(d + 0x134) = attributes;
    if ((find_data->dwFileAttributes & attributes) == 0)
    {
        do
        {
            if (attr == 0 && (*(uint8_t*)(d + 0x134) & 0x80))
                break;
            if (!FindNextFileA(*(HANDLE*)(d + 0x130), find_data))
                return 3;
            attr = find_data->dwFileAttributes;
        } while ((*(uint32_t*)(d + 0x134) & attr) == 0);
    }
    ConvertDirInfo(dir);
    return 0;
}

// BW1W120 007bcba0 LHOSFile::DirFindNext(LHDir *)
uint32_t LHOSFile::DirFindNext(LHDir* dir)
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
    return 0;
fail:
    return 3;
}

// BW1W120 007bcc00 LHOSFile::DirFindEnd(LHDir *)
uint32_t LHOSFile::DirFindEnd(LHDir* dir)
{
    return FindClose(*(HANDLE*)((char*)dir + 0x130)) ? 0 : 3;
}

// BW1W120 007bcc20 LHOSFile::Rename(char const *, char const *)
uint32_t __stdcall LHOSFile::Rename(const char* from, const char* to)
{
    return MoveFileA(from, to) ? 0 : 3;
}

// BW1W120 007bcc40 LHOSFile::Delete(char const *)
uint32_t __stdcall LHOSFile::Delete(const char* path)
{
    return DeleteFileA(path) ? 0 : 3;
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
