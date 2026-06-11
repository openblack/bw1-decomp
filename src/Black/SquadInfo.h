#ifndef BW1_DECOMP_SQUAD_INFO_INCLUDED_H
#define BW1_DECOMP_SQUAD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GSquadInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 006e07b0 mac 10133d90 GSquadInfo::_dt(void)
    virtual ~GSquadInfo();
    // win1.41 006e0750 mac 10133ff0 GSquadInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_SQUAD_INFO_INCLUDED_H */
