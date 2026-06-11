#ifndef BW1_DECOMP_STREAM_INCLUDED_H
#define BW1_DECOMP_STREAM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;

class GStream: public GameThing
{
public:
    uint8_t field_0x14[0x14];

    // Override methods

    // win1.41 0055de20 mac 101549b0 GStream::_dt(void)
    virtual ~GStream();
    // win1.41 00733b10 mac 10154cf0 GStream::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055de10 mac 10155220 GStream::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007344e0 mac 10153560 GStream::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00734380 mac 10153ac0 GStream::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055de00 mac 101551e0 GStream::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00734640 mac 101534f0 GStream::ResolveLoad(void)
    virtual void ResolveLoad();

    // Static methods

    // win1.41 00733ff0 mac 10154580 GStream::CreateAll(void)
    static void CreateAll();
};

#endif /* BW1_DECOMP_STREAM_INCLUDED_H */
