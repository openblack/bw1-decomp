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

    // BW1W120 0076f870 BW1M100 1015f3f0 VortexSave::_dt(void)
    virtual ~VortexSave();
    // BW1W120 0076fdc0 BW1M100 1015e890 VortexSave::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 0076fb40 BW1M100 1015ed90 VortexSave::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0076f860 BW1M100 1015e730 VortexSave::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0076ffe0 BW1M100 1015e770 VortexSave::ResolveLoad(void)
    virtual void ResolveLoad();
};

#endif /* BW1_DECOMP_VORTEX_SAVE_INCLUDED_H */
