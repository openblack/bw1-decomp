#ifndef BW1_DECOMP_P_SYS_SOUND_INCLUDED_H
#define BW1_DECOMP_P_SYS_SOUND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
struct LHPoint;

class PSysSound: public PSysBase
{
public:

    // Override methods

    // win1.41 006d0f50 mac 10486f90 PSysSound::_dt(void)
    virtual ~PSysSound();
    // win1.41 006d1000 mac 10486ea0 PSysSound::Get3DSoundPos(LHPoint *)
    virtual int Get3DSoundPos(LHPoint* param_1);
    // win1.41 006d0f40 mac 10486980 PSysSound::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006d13a0 mac 10486b50 PSysSound::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006d14a0 mac 104869c0 PSysSound::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 006d0f30 mac 10486940 PSysSound::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_SOUND_INCLUDED_H */
