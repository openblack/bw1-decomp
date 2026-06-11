#ifndef BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GPlaytimeInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 0066c330 mac 10115d70 GPlaytimeInfo::_dt(void)
    virtual ~GPlaytimeInfo();
    // win1.41 0066c2d0 mac 10115f30 GPlaytimeInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H */
