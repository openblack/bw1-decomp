#ifndef BW1_DECOMP_LH_FILE_PATH_INCLUDED_H
#define BW1_DECOMP_LH_FILE_PATH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

struct LHFilePath
{
    char* current_view; /* 0x0 */
    int current_view_len;
    char* buffer;
    uint32_t buffer_len;
    uint32_t field_0x10;
    uint32_t field_0x14;
    char* field_0x18;
    uint32_t field_0x1c;

    // Static methods

    // win1.41 007c6e1d mac inlined LHFilePath::fopen(void)
    static LHFilePath* fopen(const char* path, const char* mode);
    // win1.41 007c6e30 mac 1016a4a0 LHFilePath::~LHFilePath(void)
    static void ~LHFilePath(LHFilePath* this);
    // win1.41 007c6db0 mac inlined LHFilePath::fprintf
    static int fprintf(LHFilePath* path, char* fmt, void* param_2);
    // win1.41 007c7daa mac inlined LHFilePath::fscanf
    static int fscanf_10LHFilePath(LHFilePath* path, const char* fmt, void* param_2);
    // win1.41 007c7dd7 mac inlined LHFilePath::getc
    static char getc_10LHFilePath(LHFilePath* path);
};

#endif /* BW1_DECOMP_LH_FILE_PATH_INCLUDED_H */
