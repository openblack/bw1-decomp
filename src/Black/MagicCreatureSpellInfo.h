#ifndef BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;

class GMagicCreatureSpellInfo: public GMagicInfo
{
public:

    // Override methods

    // win1.41 00435800 mac 103aba10 GMagicCreatureSpellInfo::_dt(void)
    virtual ~GMagicCreatureSpellInfo();
};

#endif /* BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H */
