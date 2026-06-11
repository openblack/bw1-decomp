#ifndef BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H
#define BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CreatureDevelopmentDurationEntry: public GBaseInfo
{
public:

    // Override methods

    // win1.41 004db5c0 mac 1025bfd0 CreatureDevelopmentDurationEntry::_dt(void)
    virtual ~CreatureDevelopmentDurationEntry();
    // win1.41 004db560 mac 1025c590 CreatureDevelopmentDurationEntry::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

class CreatureDevelopmentPhaseEntry: public GBaseInfo
{
public:

    // Override methods

    // win1.41 004db4f0 mac 1025c220 CreatureDevelopmentPhaseEntry::_dt(void)
    virtual ~CreatureDevelopmentPhaseEntry();
    // win1.41 004db480 mac 1025c4d0 CreatureDevelopmentPhaseEntry::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H */
