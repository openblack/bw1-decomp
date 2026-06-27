#ifndef BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicRadiusSpellInfo.h" /* For struct GMagicRadiusSpellInfo */

// Forward Declares

class Base;

class GMagicStormAndTornadoInfo: public GMagicRadiusSpellInfo
{
public:

    // Override methods

    // BW1W120 00435740 BW1M100 103aebf0 GMagicStormAndTornadoInfo::_dt(void)
    virtual ~GMagicStormAndTornadoInfo();
};

#endif /* BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H */
