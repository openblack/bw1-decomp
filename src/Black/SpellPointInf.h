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

    // win1.41 0055f450 mac 1041f870 SpellPointInf::_dt(void)
    virtual ~SpellPointInf();
    // win1.41 0055f440 mac 1041f940 SpellPointInf::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00698240 mac 104192e0 SpellPointInf::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006ced60 mac 10480d70 SpellPointInf::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055f430 mac 1041f900 SpellPointInf::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_SPELL_POINT_INF_INCLUDED_H */
