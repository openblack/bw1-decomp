#ifndef BW1_DECOMP_SPELL_POINT_INF_INCLUDED_H
#define BW1_DECOMP_SPELL_POINT_INF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class SpellPointInf: public PSysBase
{
public:

    // Override methods

    // BW1W120 0055f450 BW1M100 1041f870 SpellPointInf::_dt(void)
    virtual ~SpellPointInf();
    // BW1W120 0055f440 BW1M100 1041f940 SpellPointInf::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00698240 BW1M100 104192e0 SpellPointInf::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 006ced60 BW1M100 10480d70 SpellPointInf::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0055f430 BW1M100 1041f900 SpellPointInf::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_SPELL_POINT_INF_INCLUDED_H */
