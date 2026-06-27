#ifndef BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;

class GMagicHealInfo: public GMagicInfo
{
public:

    // Override methods

    // BW1W120 004356a0 BW1M100 103ae460 GMagicHealInfo::_dt(void)
    virtual ~GMagicHealInfo();
};

#endif /* BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H */
