#ifndef BW1_DECOMP_LH_FILE_PATH_INCLUDED_H
#define BW1_DECOMP_LH_FILE_PATH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#ifdef __cplusplus

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

#else // __cplusplus

struct LHFilePath
{
  char* current_view;  /* 0x0 */
  int current_view_len;
  char* buffer;
  uint32_t buffer_len;
  uint32_t field_0x10;
  uint32_t field_0x14;
  char* field_0x18;
  uint32_t field_0x1c;
};
static_assert(sizeof(struct LHFilePath) == 0x20, "Data type is of wrong size");

// Static methods

// win1.41 007c6e1d mac inlined LHFilePath::fopen(void)
struct LHFilePath* __cdecl fopen__10LHFilePath(const char* path, const char* mode) asm("?fopen@LHFilePath@@SAPAV1@XZ");
// win1.41 007c6e30 mac 1016a4a0 LHFilePath::~LHFilePath(void)
void __cdecl __dt__10LHFilePathFv(struct LHFilePath* this);
// win1.41 007c6db0 mac inlined LHFilePath::fprintf
int __cdecl fprintf__10LHFilePath(struct LHFilePath* path, char* fmt, void* param_2) asm("?fprintf@LHFilePath@@SAHXZ");
// win1.41 007c7daa mac inlined LHFilePath::fscanf
int __cdecl fscanf_10LHFilePath(struct LHFilePath* path, const char* fmt, void* param_2);
// win1.41 007c7dd7 mac inlined LHFilePath::getc
char __cdecl getc_10LHFilePath(struct LHFilePath* path);

#endif // __cplusplus

#endif /* BW1_DECOMP_LH_FILE_PATH_INCLUDED_H */
