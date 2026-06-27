#ifndef BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GSpellSystemInfo: public GBaseInfo
{
public:

    // Override methods

    // BW1W120 0072ae00 BW1M100 1052de00 GSpellSystemInfo::_dt(void)
    virtual ~GSpellSystemInfo();
    // BW1W120 0072adb0 BW1M100 1052dea0 GSpellSystemInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H */
