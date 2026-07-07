#ifndef BW1_DECOMP_LH_FILE_PATH_INCLUDED_H
#define BW1_DECOMP_LH_FILE_PATH_INCLUDED_H

#include <stdio.h> /* For sprintf */

// BW1W120 00c2b9e8 the drive letter the game was launched from ('D' by default)
extern char g_GameDriveCharacter;

// Builds a game drive rooted copy of a path ("<drive>:\<path>") into an inline
// buffer. Always inlined; no out-of-line symbol exists in any Windows build.
struct LHFilePath
{
    char buffer[256];

    LHFilePath(const char* path)
    {
        sprintf(buffer, "%c:\\%s", g_GameDriveCharacter, path);
    }

    operator char*() { return buffer; }
};

#endif /* BW1_DECOMP_LH_FILE_PATH_INCLUDED_H */
