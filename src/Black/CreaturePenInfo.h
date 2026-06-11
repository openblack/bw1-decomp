#ifndef BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GCreaturePenInfo: public GCitadelPartInfo
{
public:

    // Override methods

    // win1.41 004eee30 mac 10274c20 GCreaturePenInfo::_dt(void)
    virtual ~GCreaturePenInfo();
    // win1.41 004eedc0 mac 102755a0 GCreaturePenInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H */
