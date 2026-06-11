#ifndef BW1_DECOMP_VORTEX_SAVE_INCLUDED_H
#define BW1_DECOMP_VORTEX_SAVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;

class VortexSave: public GameThing
{
public:

    // Override methods

    // win1.41 0076f870 mac 1015f3f0 VortexSave::_dt(void)
    virtual ~VortexSave();
    // win1.41 0076fdc0 mac 1015e890 VortexSave::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0076fb40 mac 1015ed90 VortexSave::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0076f860 mac 1015e730 VortexSave::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0076ffe0 mac 1015e770 VortexSave::ResolveLoad(void)
    virtual void ResolveLoad();
};

#endif /* BW1_DECOMP_VORTEX_SAVE_INCLUDED_H */
