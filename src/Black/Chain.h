#ifndef BW1_DECOMP_CHAIN_INCLUDED_H
#define BW1_DECOMP_CHAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class Chain: public PSysBase
{
public:

    // Override methods

    // BW1W120 006c8810 BW1M100 1047b970 Chain::_dt(void)
    virtual ~Chain();
    // BW1W120 006c8800 BW1M100 10422b00 Chain::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00695c10 BW1M100 1041bda0 Chain::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cc780 BW1M100 10483590 Chain::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 006c87f0 BW1M100 10422ad0 Chain::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_CHAIN_INCLUDED_H */
