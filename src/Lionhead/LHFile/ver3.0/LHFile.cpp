#include <Lionhead/LHFile/ver3.0/LHFile.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>

#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h>
#include <Lionhead/LHFile/ver3.0/LHSegment.h>
#include <Lionhead/LHFile/ver3.0/LHSegmentDesc.h>

// BW1W120 00c2b9e8
extern char g_GameDriveCharacter;

// BW1W120 00c2b9ec
char* off_C2B9EC = "LiOnHeAd";

struct LHLinkedNode
{
    LHLinkedNode* next;
    LHSegmentDesc* desc;
};

// BW1W120 007bd350 LHSegmentDesc::LHSegmentDesc(char *, int, int)
LHSegmentDesc::LHSegmentDesc(char* name, int size, int offset)
{
    memset(this, 0, 0x21);
    strncpy(this->name, name, 0x20);
    this->size = size;
    this->offset = offset;
}

// BW1W120 007bd390 LHFile::SetName(char const *)
uint32_t LHFile::SetName(const char* name)
{
    if (opened)
        return 3;
    if (!name || !strlen(name))
        return 3;
    char* v4 = (char*)malloc(strlen(name) + 4);
    file_name = v4;
    if (!v4)
        return 4;
    strcpy(v4, name);
    return 0;
}

// BW1W120 007bd420 LHFile::GetSegmentDataInChunks(char *, char *, unsigned int, unsigned int, void (*)(void), int)
uint32_t LHFile::GetSegmentDataInChunks(char* segment_name, char* data, uint32_t total_size, uint32_t chunk_size, void (*callback)(void), int offset)
{
    uint32_t i;

    for (i = total_size; i > chunk_size; offset += chunk_size)
    {
        callback();
        GetSegmentData(segment_name, data, chunk_size, offset);
        callback();
        i -= chunk_size;
        data += chunk_size;
    }
    callback();
    if (i)
        GetSegmentData(segment_name, data, i, offset);
    return 0;
}

// BW1W120 007bd490 LHFile::GetSegmentData(char *, void *, unsigned int, int)
uint32_t LHFile::GetSegmentData(char* segment_name, void* data, uint32_t data_size, int offset)
{
    if (!opened)
        return 3;
    if (segment_opened)
        CloseSegment();
    if (OpenSegment(segment_name))
        return 2;
    if (GetSegmentData(data, data_size, offset))
        return 3;
    return CloseSegment() != 0 ? 3 : 0;
}

// BW1W120 007bd500 LHFile::Open(LH_FILE_MODE)
uint32_t LHFile::Open(LH_FILE_MODE mode)
{
    DWORD creation_disposition;
    uint32_t Buffer[2];
    char v8;

    if (opened)
        return 3;
    if (mode != 2 && mode && mode != 3)
        return 3;
    if (!file_name || !strlen(file_name))
        return 3;
    if (mode == 3 && custom_write_function)
        return 3;
    creation_disposition = 2;
    if (GetFileAttributesA(file_name) == -1)
    {
        if (mode == 2 || mode == 3)
            return 2;
    }
    else
    {
        creation_disposition = 5;
        if (mode == 3)
            creation_disposition = 3;
    }
    if (!custom_write_function && (!mode || mode == 3))
        handle = CreateFileA(file_name, 0xC0000000, 3, 0, creation_disposition, 0, 0);
    if (!custom_read_function && mode == 2)
        handle = CreateFileA(file_name, 0x80000000, 1, 0, 4, 0, 0);
    if (!custom_write_function && handle == (void*)-1)
        return 3;
    Buffer[0] = 0;
    opened = 1;
    Buffer[1] = 0;
    file_mode = mode;
    v8 = 0;
    if (mode == 2 || mode == 3)
    {
        ReadData(Buffer, 8);
        if (strcmp(off_C2B9EC, (const char*)Buffer))
        {
            Close();
            return 2;
        }
        VerifyFile();
    }
    if (!mode)
    {
        strcpy((char*)Buffer, off_C2B9EC);
        WriteData(Buffer, 8);
    }
    current_file_offset = 8;
    if (mode == 3)
    {
        LHLinkedNode* node = (LHLinkedNode*)field_0x4;
        LHSegmentDesc* desc = node ? node->desc : 0;
        if (SetLHFilePointer((char*)desc, desc->offset))
            return 3;
    }
    return 0;
}

// BW1W120 007bd730 LHReleasedFile::Open(LH_FILE_MODE)
uint32_t LHReleasedFile::Open(LH_FILE_MODE mode)
{
    char v4[256];

    uint32_t result = LHFile::Open(mode);
    if (result)
    {
        if (mode == 2)
        {
            sprintf(v4, "%c:\\%s", g_GameDriveCharacter, file_name);
            strcpy(file_name, v4);
            return LHFile::Open((LH_FILE_MODE)2);
        }
        return 2;
    }
    return result;
}

// BW1W120 007bd7d0 LHFile::VerifyFile(void)
uint32_t LHFile::VerifyFile()
{
    char Buffer[36];
    LONG lDistanceToMove[2];

    lDistanceToMove[0] = 0;
    lDistanceToMove[1] = 0;
    memset(Buffer, 0, 33);
    int Data = ReadData(Buffer, 0x20);
    if (Data != 2)
    {
        while (1)
        {
            if (Data)
                return 3;
            if (ReadData(lDistanceToMove, 4))
                return 2;
            if (custom_set_file_pointer_function)
                custom_set_file_pointer_function(lDistanceToMove[0], 1, custom_function_user_data);
            else
                SetFilePointer(handle, lDistanceToMove[0], 0, 1);
            int v5;
            if (field_0x8)
            {
                LHLinkedNode* node = (LHLinkedNode*)field_0x4;
                LHSegmentDesc* d = node ? node->desc : 0;
                v5 = d->offset + d->size + 36;
            }
            else
            {
                v5 = 44;
            }
            LHSegmentDesc* v7 = new LHSegmentDesc(Buffer, v5, lDistanceToMove[0]);
            if (v7)
            {
                LHLinkedNode* v8 = new LHLinkedNode;
                if (v8)
                {
                    v8->desc = v7;
                    v8->next = (LHLinkedNode*)field_0x4;
                    field_0x4 = (uint32_t*)v8;
                    ++field_0x8;
                }
            }
            Data = ReadData(Buffer, 0x20);
            if (Data == 2)
                break;
        }
    }
    if (custom_set_file_pointer_function)
        custom_set_file_pointer_function(8, 0, custom_function_user_data);
    else
        SetFilePointer(handle, 8, 0, 0);
    return 0;
}

// BW1W120 007bd930 LHFile::GetNextSegment(LHSegment *, int)
uint32_t LHFile::GetNextSegment(LHSegment* segment, int allocate_memory)
{
    char Buffer[36];

    if (!opened)
        return 3;
    if (file_mode != 2)
        return 3;
    if (segment_opened)
        CloseSegment();
    if (!allocate_memory && (!segment->buffer || !segment->size))
        return 3;
    memset(Buffer, 0, 33);
    ReadData(Buffer, 0x20);
    return GetSegment(Buffer, segment, allocate_memory);
}

// BW1W120 007bd9d0 LHFile::AllocSegDataMem(LHSegment *)
uint32_t LHFile::AllocSegDataMem(LHSegment* segment)
{
    if (segment->size >= 0x4C4B400)
        return 3;
    FreeLastSeg();
    segment->buffer = (uint8_t*)malloc(segment->size);
    if (!segment->buffer)
        return 4;
    memcpy((char*)this + 0x14, segment, 0x2c);
    return 0;
}

// BW1W120 007bda20 LHFile::~LHFile(void)
LHFile::~LHFile()
{
    free(file_name);
    Close();
}

// BW1W120 007bda70 LHFile::FreeLastSeg(void)
void LHFile::FreeLastSeg()
{
    if (field_0x3c)
    {
        free((void*)field_0x3c);
        field_0x3c = 0;
    }
}

// BW1W120 007bda90 LHFile::WriteSegment(char *)
uint32_t LHFile::WriteSegment(char* segment)
{
    if (!opened)
        return 3;
    if (file_mode && file_mode != 3)
        return 3;
    if (segment_opened)
        CloseSegment();
    if (OpenSegment(segment))
        return 3;
    if (WriteSegmentData(((LHSegment*)segment)->buffer, ((LHSegment*)segment)->size))
        return 3;
    return CloseSegment() != 0 ? 3 : 0;
}

// BW1W120 007bdb20 LHFile::WriteSegmentHeader(char *)
uint32_t LHFile::WriteSegmentHeader(char* segment_name)
{
    uint32_t v3[2];
    uint32_t result;
    char Buffer[72];

    v3[0] = 0;
    v3[1] = 0;
    memset(&Buffer[36], 0, 33);
    if (!segment_name)
        goto fail;
    if (!strlen(segment_name))
        goto fail;
    memset(Buffer, 0, 33);
    strncpy(Buffer, segment_name, 0x20);
    v3[0] = 0;
    if (WriteData(Buffer, 0x20))
        goto fail;
    result = WriteData(v3, 4);
    if (result)
        goto fail;
    return result;
fail:
    return 3;
}

// BW1W120 007bdbc0 LHFile::Close(void)
uint32_t LHFile::Close()
{
    if (!opened)
        return 0;
    if (segment_opened)
        CloseSegment();
    FreeLastSeg();
    void* v3 = handle;
    opened = 0;
    if (v3 && !CloseHandle(v3))
        return 2;
    handle = 0;
    while (1)
    {
        LHLinkedNode* v4 = (LHLinkedNode*)field_0x4;
        if (!v4)
            break;
        operator delete(v4->desc);
        LHLinkedNode* v5 = (LHLinkedNode*)field_0x4;
        LHSegmentDesc* v6 = v4->desc;
        LHLinkedNode* v7 = 0;
        LHLinkedNode* v8;
        if (v5)
        {
            do
            {
                v8 = v5->next;
                if (v5->desc == v6)
                {
                    if (v5 == (LHLinkedNode*)field_0x4)
                        field_0x4 = (uint32_t*)v8;
                    else
                        v7->next = v8;
                    --field_0x8;
                    operator delete(v5);
                }
                else
                {
                    v7 = v5;
                }
                v5 = v8;
            } while (v8);
        }
    }
    return 0;
}

// BW1W120 007bdc60 LHFile::Lookup(char *)
LHSegmentDesc* LHFile::Lookup(char* segment_name)
{
    LHLinkedNode* v2;
    for (v2 = (LHLinkedNode*)field_0x4; v2; v2 = v2->next)
    {
        if (!strcmp((const char*)v2->desc, segment_name))
            break;
    }
    return v2 ? v2->desc : 0;
}

// BW1W120 007bdcd0 LHFile::SetLHFilePointer(char *, long)
uint32_t LHFile::SetLHFilePointer(char* segment_name, int offset)
{
    int v4 = 0;
    DWORD v9;
    if (segment_name)
    {
        if (!opened)
            goto fail;
        if (file_mode != 2 && file_mode != 3)
            goto fail;
        LHSegmentDesc* SegmentSize = Lookup(segment_name);
        if (!SegmentSize)
            return 2;
        v4 = SegmentSize->size;
        if (offset > (int)SegmentSize->offset)
            goto fail;
    }
    v9 = custom_set_file_pointer_function
             ? custom_set_file_pointer_function(offset + v4, 0, custom_function_user_data)
             : SetFilePointer(handle, offset + v4, 0, 0);
    current_file_offset = v9;
    if (v9 != -1)
        goto ok;
fail:
    return 3;
ok:
    return 0;
}

// BW1W120 007bddd0 LHFile::GetSegment(char *, LHSegment *, int)
uint32_t LHFile::GetSegment(char* segment, LHSegment* dataOut, int bAllocMemory)
{
    if (!opened)
        return 3;
    if (file_mode != 2)
        return 3;
    if (segment_opened)
        CloseSegment();
    LHSegmentDesc* segmentLocation = Lookup(segment);
    if (!segmentLocation)
        return 2;
    if (SetLHFilePointer(segment, 0))
        return 2;
    strcpy((char*)dataOut->name, segment);
    uint32_t v7 = segmentLocation->offset;
    dataOut->size = v7;
    if (bAllocMemory)
    {
        if (AllocSegDataMem(dataOut))
            return 3;
    }
    else if (!dataOut->buffer || v7 != segmentLocation->offset)
    {
        return 3;
    }
    return ReadData(dataOut->buffer, segmentLocation->offset);
}

// BW1W120 007bdec0 LHFile::OpenSegment(char *)
uint32_t LHFile::OpenSegment(char* name)
{
    if (!opened)
        return 3;
    if (segment_opened)
        CloseSegment();
    LH_FILE_MODE v4 = file_mode;
    segment_opened = 1;
    segment_size = 0;
    segment_name = name;
    if (v4 == 2)
    {
        LHSegmentDesc* v5 = Lookup(name);
        if (!v5)
            return 2;
        segment_size = v5->offset;
        segment_offset = v5->size;
        return SetLHFilePointer(name, 0);
    }
    segment_offset = current_file_offset + 36;
    return WriteSegmentHeader(name);
}

// BW1W120 007bdf50 LHFile::CloseSegment(void)
uint32_t LHFile::CloseSegment()
{
    if (segment_opened)
    {
        LH_FILE_MODE v2 = file_mode;
        if (!v2 || v2 == 3)
        {
            int v3 = current_file_offset;
            if (SetLHFilePointer(0, segment_offset - 4))
                return 3;
            WriteData(&segment_size, 4);
            SetLHFilePointer(0, v3);
        }
        int v5 = segment_size + segment_offset;
        segment_opened = 0;
        SetLHFilePointer(0, v5);
    }
    return 0;
}

// BW1W120 007bdfc0 LHFile::WriteSegmentData(void const *, unsigned int)
uint32_t LHFile::WriteSegmentData(const void* data, uint32_t length)
{
    if (!segment_opened)
        return 3;
    if (file_mode && file_mode != 3)
        return 3;
    segment_size += length;
    WriteData(data, length);
    return 0;
}

// BW1W120 007be040 LHFile::GetSegmentData(void *, unsigned int, int)
uint32_t LHFile::GetSegmentData(void* data, uint32_t data_size, int offset)
{
    if (!segment_opened)
        return 3;
    if (offset == -1 || !SetLHFilePointer(segment_name, offset))
        return ReadData(data, data_size);
    return 3;
}

// BW1W120 007be090 LHFile::WriteData(void const *, unsigned int)
uint32_t LHFile::WriteData(const void* lpBuffer, uint32_t nNumberOfBytesToWrite)
{
    if (!opened)
        return 3;
    if (file_mode && file_mode != 3)
        return 3;
    const void* v5 = (const void*)nNumberOfBytesToWrite;
    current_file_offset += nNumberOfBytesToWrite;
    if (custom_write_function)
    {
        custom_write_function(lpBuffer, (uint32_t)v5, custom_function_user_data);
    }
    else
    {
        if (!WriteFile(handle, lpBuffer, (DWORD)v5, (LPDWORD)&lpBuffer, 0))
            return 3;
        if (lpBuffer != v5)
            return 2;
    }
    return 0;
}

// BW1W120 007be120 LHFile::ReadData(void *, unsigned int)
uint32_t LHFile::ReadData(void* lpBuffer, uint32_t nNumberOfBytesToRead)
{
    if (!opened)
        return 3;
    if (file_mode != 2 && file_mode != 3)
        return 3;
    void* v5 = (void*)nNumberOfBytesToRead;
    current_file_offset += nNumberOfBytesToRead;
    if (custom_read_function)
    {
        if (!custom_read_function(lpBuffer, (uint32_t)v5, custom_function_user_data))
            return 2;
    }
    else
    {
        if (!ReadFile(handle, lpBuffer, (DWORD)v5, (LPDWORD)&lpBuffer, 0))
            return 3;
        if (lpBuffer != v5)
            return 2;
    }
    return 0;
}

// BW1W120 007be1b0 LHFile::SetFileFunctions(void *, void *, void *, void *)
uint32_t LHFile::SetFileFunctions(void* read_function, void* write_function, void* set_file_pointer_function, void* user_data)
{
    uint32_t result = opened;
    if (!result && write_function && read_function)
    {
        result = (uint32_t)set_file_pointer_function;
        if (set_file_pointer_function)
        {
            custom_function_user_data = user_data;
            custom_write_function = (uint32_t (*)(const void*, uint32_t, void*))write_function;
            custom_read_function = (uint32_t (*)(void*, uint32_t, void*))read_function;
            custom_set_file_pointer_function = (uint32_t (*)(uint32_t, uint32_t, void*))set_file_pointer_function;
        }
    }
    return result;
}

// BW1W120 007be1f0 LHFile::TruncateFromSegment(char const *)
uint32_t LHFile::TruncateFromSegment(const char* segment_name)
{
    if (opened)
        return 3;
    if (custom_write_function)
        return 3;
    if (Open((LH_FILE_MODE)3))
        return 2;
    if (!Lookup((char*)segment_name))
        return 2;
    if (SetLHFilePointer((char*)segment_name, -36))
        return 2;
    SetEndOfFile(handle);
    Close();
    return 0;
}

// BW1W120 LHFile::FlushCache(void)
void LHFile::FlushCache()
{
}
