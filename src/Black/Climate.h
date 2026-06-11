#ifndef BW1_DECOMP_CLIMATE_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;

class GClimate: public GameThing
{
public:
    uint8_t field_0x14[0x74];

    // Override methods

    // win1.41 0055dee0 mac 105a2870 GClimate::_dt(void)
    virtual ~GClimate();
    // win1.41 007713e0 mac 105a2620 GClimate::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055ded0 mac 1059ef50 GClimate::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007736e0 mac 1059ef90 GClimate::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00773320 mac 1059f860 GClimate::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055dec0 mac 1059ef10 GClimate::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_CLIMATE_INCLUDED_H */
