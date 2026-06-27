#ifndef BW1_DECOMP_GAME_OS_FILE_INCLUDED_H
#define BW1_DECOMP_GAME_OS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <Lionhead/LHFile/ver3.0/LHFile.h> /* For enum LH_FILE_MODE */
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */

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

    // BW1W120 00558030 BW1M100 1030fcb0 GameOSFile::_dt(void)
    virtual ~GameOSFile();
    // BW1W120 inlined BW1M100 inlined GameOSFile::Open(char *, LH_FILE_MODE)
    virtual uint32_t Open(const char* filename, LH_FILE_MODE mode);

    // Static methods

    // BW1W120 005587b0 BW1M100 1030ef00 GameOSFile::LoadAllGame(char *)
    static bool LoadAllGame(char* filename);

    // Non-virtual methods

    // BW1W120 inlined BW1M100 inlined GameOSFile::ReadIt<MapCoords>(MapCoords*)
    void ReadIt_MapCoords_(MapCoords* out);
    // BW1W120 inlined BW1M100 inlined GameOSFile::ReadIt<uint8_t>(uint8_t*)
    void ReadIt_u8_(uint8_t* out);
    // BW1W120 inlined BW1M100 inlined GameOSFile::ReadIt<uint16_t>(uint16_t*)
    void ReadIt_u16_(uint16_t* out);
    // BW1W120 inlined BW1M100 104f2b44 GameOSFile::ReadIt<float>(float*)
    void ReadIt_f32_(float* out);
    // BW1W120 00407700 BW1M100 1010b3b0 GameOSFile::WriteIt<uint32_t>(uint32_t&)
    void WriteIt_u32_(uint32_t* val);
    // BW1W120 00407750 BW1M100 10331500 GameOSFile::ReadIt<int>(int&)
    void ReadIt_i32_(int* out);
    // BW1W120 004077a0 BW1M100 10139ad0 GameOSFile::ReadIt<uint32_t>(uint32_t&)
    void ReadIt_u32_(uint32_t* out);
    // BW1W120 00558dc0 BW1M100 10304ef0 GameOSFile::LoadInstance(GameThing **)
    void LoadInstance(GameThing** out_thing);
    // BW1W120 00561c60 BW1M100 103049e0 GameOSFile::ResolveAllLoads(void)
    void ResolveAllLoads();
    // BW1W120 00561e10 BW1M100 10304650 GameOSFile::WritePtr(GameThing *)
    void WritePtr(GameThing* param_1);
    // BW1W120 00562180 BW1M100 10304470 GameOSFile::ReadPtr(GameThing **)
    void ReadPtr(GameThing** ptr);
    // BW1W120 00563f00 BW1M100 103008a0 GameOSFile::ReadInfo(GBaseInfo const **)
    void ReadInfo(GBaseInfo** info);
    // BW1W120 00563fa0 BW1M100 10300720 GameOSFile::ReadCheckSum(GameThing *)
    void ReadCheckSum(GameThing* thing);
};

#endif /* BW1_DECOMP_GAME_OS_FILE_INCLUDED_H */
