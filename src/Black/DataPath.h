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

    // BW1W120 005ef090 BW1M100 1037d2b0 DataPath::_dt(void)
    virtual ~DataPath();
    // BW1W120 005ef080 BW1M100 10383880 DataPath::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 005eeec0 BW1M100 1037d3e0 DataPath::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 005eed30 BW1M100 1037d620 DataPath::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 005ef070 BW1M100 10383840 DataPath::GetSaveType(void)
    virtual uint32_t GetSaveType();

    // Constructors

    // BW1W120 005ef040 BW1M100 1037d350 DataPath::DataPath(void)
    DataPath();
};

#endif /* BW1_DECOMP_DATA_PATH_INCLUDED_H */
