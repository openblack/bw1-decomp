#ifndef BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GMagicFireBallInfo: public GObjectInfo
{
public:

    // Override methods

    // win1.41 00682910 mac 103fbe00 GMagicFireBallInfo::_dt(void)
    virtual ~GMagicFireBallInfo();
    // win1.41 006828a0 mac 103fce80 GMagicFireBallInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H */
