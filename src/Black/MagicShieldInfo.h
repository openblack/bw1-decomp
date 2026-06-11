#ifndef BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicRadiusSpellInfo.h" /* For struct GMagicRadiusSpellInfo */

// Forward Declares

class Base;

class GMagicShieldInfo: public GMagicRadiusSpellInfo
{
public:

    // Override methods

    // win1.41 00435780 mac 103aeca0 GMagicShieldInfo::_dt(void)
    virtual ~GMagicShieldInfo();
};

#endif /* BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H */
