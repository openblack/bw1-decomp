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

    // BW1W120 004db5c0 BW1M100 1025bfd0 CreatureDevelopmentDurationEntry::_dt(void)
    virtual ~CreatureDevelopmentDurationEntry();
    // BW1W120 004db560 BW1M100 1025c590 CreatureDevelopmentDurationEntry::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

class CreatureDevelopmentPhaseEntry: public GBaseInfo
{
public:

    // Override methods

    // BW1W120 004db4f0 BW1M100 1025c220 CreatureDevelopmentPhaseEntry::_dt(void)
    virtual ~CreatureDevelopmentPhaseEntry();
    // BW1W120 004db480 BW1M100 1025c4d0 CreatureDevelopmentPhaseEntry::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CREATURE_DEVELOPMENT_INCLUDED_H */
