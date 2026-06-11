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

    // win1.41 006c8810 mac 1047b970 Chain::_dt(void)
    virtual ~Chain();
    // win1.41 006c8800 mac 10422b00 Chain::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00695c10 mac 1041bda0 Chain::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cc780 mac 10483590 Chain::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 006c87f0 mac 10422ad0 Chain::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_CHAIN_INCLUDED_H */
