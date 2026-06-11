#ifndef BW1_DECOMP_BALL_INFO_INCLUDED_H
#define BW1_DECOMP_BALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GBallInfo: public GMobileObjectInfo
{
public:
    uint8_t field_0x114[0x2c];

    // Override methods

    // win1.41 00435980 mac 100b0ff0 GBallInfo::_dt(void)
    virtual ~GBallInfo();
    // win1.41 00435930 mac 100b1090 GBallInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

class GPBallInfo: public GMobileObjectInfo
{
public:

    // Override methods

    // win1.41 0063e8c0 mac 10110ff0 GPBallInfo::_dt(void)
    virtual ~GPBallInfo();
    // win1.41 0063e870 mac 10111090 GPBallInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_BALL_INFO_INCLUDED_H */
