#ifndef BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H
#define BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LivingInfo.h" /* For struct GLivingInfo */

// Forward Declares

class Base;
class GBaseInfo;

class HelpSpiritInfo: public GLivingInfo
{
public:

    // Override methods

    // win1.41 005c4a70 mac 1034c8b0 HelpSpiritInfo::_dt(void)
    virtual ~HelpSpiritInfo();
    // win1.41 005c4a00 mac 1034c9c0 HelpSpiritInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H */
