#ifndef BW1_DECOMP_GAME_OS_FILE_INCLUDED_H
#define BW1_DECOMP_GAME_OS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <lionhead/lhfile/ver3.0/LHFile.h> /* For enum LH_FILE_MODE */
#include <lionhead/lhfile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */

#include "GameThing.h" /* For struct GameThing */
#include "SaveLoadPtr.h" /* For struct GSaveLoadPtr */

// Forward Declares

class GBaseInfo;
class LHOSFile;
struct MapCoords;

class GameOSFile: public LHReleasedOSFile
{
public:
    uint8_t field_0x8[0x40];
    uint8_t field_0x48[0xc4];
    uint32_t field_0x10c;
    char filename[0x100]; /* 0x110 */
    uint32_t field_0x210;
    uint32_t checksum;
    uint32_t field_0x218;
    uint32_t field_0x21c;
    LHLinkedList__GSaveLoadPtr save_load_ptr_list; /* 0x220 */
    LHLinkedList__GameThing game_thing_list;

    // Override methods

    // win1.41 00558030 mac 1030fcb0 GameOSFile::_dt(void)
    virtual ~GameOSFile();
    // win1.41 inlined mac inlined GameOSFile::Open(char *, LH_FILE_MODE)
    virtual uint32_t Open(const char* filename, LH_FILE_MODE mode);

    // Static methods

    // win1.41 005587b0 mac 1030ef00 GameOSFile::LoadAllGame(char *)
    static bool LoadAllGame(char* filename);

    // Non-virtual methods

    // win1.41 inlined mac inlined GameOSFile::ReadIt<MapCoords>(MapCoords*)
    void ReadIt_MapCoords_(MapCoords* out);
    // win1.41 inlined mac inlined GameOSFile::ReadIt<uint8_t>(uint8_t*)
    void ReadIt_u8_(uint8_t* out);
    // win1.41 inlined mac inlined GameOSFile::ReadIt<uint16_t>(uint16_t*)
    void ReadIt_u16_(uint16_t* out);
    // win1.41 inlined mac 104f2b44 GameOSFile::ReadIt<float>(float*)
    void ReadIt_f32_(float* out);
    // win1.41 00407700 mac 1010b3b0 GameOSFile::WriteIt<uint32_t>(uint32_t&)
    void WriteIt_u32_(uint32_t* val);
    // win1.41 00407750 mac 10331500 GameOSFile::ReadIt<int>(int&)
    void ReadIt_i32_(int* out);
    // win1.41 004077a0 mac 10139ad0 GameOSFile::ReadIt<uint32_t>(uint32_t&)
    void ReadIt_u32_(uint32_t* out);
    // win1.41 00558dc0 mac 10304ef0 GameOSFile::LoadInstance(GameThing **)
    void LoadInstance(GameThing** out_thing);
    // win1.41 00561c60 mac 103049e0 GameOSFile::ResolveAllLoads(void)
    void ResolveAllLoads();
    // win1.41 00561e10 mac 10304650 GameOSFile::WritePtr(GameThing *)
    void WritePtr(GameThing* param_1);
    // win1.41 00562180 mac 10304470 GameOSFile::ReadPtr(GameThing **)
    void ReadPtr(GameThing** ptr);
    // win1.41 00563f00 mac 103008a0 GameOSFile::ReadInfo(GBaseInfo const **)
    void ReadInfo(GBaseInfo** info);
    // win1.41 00563fa0 mac 10300720 GameOSFile::ReadCheckSum(GameThing *)
    void ReadCheckSum(GameThing* thing);
};

#endif /* BW1_DECOMP_GAME_OS_FILE_INCLUDED_H */
