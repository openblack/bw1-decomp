#ifndef BW1_DECOMP_DATA_PATH_INCLUDED_H
#define BW1_DECOMP_DATA_PATH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;
struct ScriptedCamera;

class DataPath: public GameThing
{
public:
    ScriptedCamera* scripted_camera; /* 0x14 */
    int32_t track_no;
    float field_0x1c;
    uint32_t field_0x20;
    float field_0x24;
    float field_0x28;
    float field_0x2c;

    // Override methods

    // win1.41 005ef090 mac 1037d2b0 DataPath::_dt(void)
    virtual ~DataPath();
    // win1.41 005ef080 mac 10383880 DataPath::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 005eeec0 mac 1037d3e0 DataPath::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 005eed30 mac 1037d620 DataPath::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005ef070 mac 10383840 DataPath::GetSaveType(void)
    virtual uint32_t GetSaveType();

    // Constructors

    // win1.41 005ef040 mac 1037d350 DataPath::DataPath(void)
    DataPath();
};

#endif /* BW1_DECOMP_DATA_PATH_INCLUDED_H */
