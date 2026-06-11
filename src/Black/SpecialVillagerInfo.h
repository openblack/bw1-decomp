#ifndef BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H
#define BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GSpecialVillagerInfo: public GBaseInfo
{
public:
    char name[0x30]; /* 0x10 */
    uint32_t field_0x40;
    uint32_t field_0x44;
    uint32_t field_0x48;
    uint32_t field_0x4c;
    uint32_t field_0x50;
    int field_0x54;
    uint32_t field_0x58;
    uint32_t field_0x5c;

    // Override methods

    // win1.41 0071f880 mac 10146650 GSpecialVillagerInfo::_dt(void)
    virtual ~GSpecialVillagerInfo();
    // win1.41 0071ee80 mac 101463b0 GSpecialVillagerInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H */
