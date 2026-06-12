#ifndef BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CreatureInitialSourceInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 004dd2c0 mac 1025d520 CreatureInitialSourceInfo::_dt(void)
    virtual ~CreatureInitialSourceInfo();
    // win1.41 004dd260 mac 1025eee0 CreatureInitialSourceInfo::GetBaseInfo(unsigned long &)
    // (mangled name is AAI = unsigned int& -- a reference, not a pointer)
    virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

    // Config record data (loaded from the creature info data file); 17 dwords -> sizeof 0x54.
    uint32_t field_0x10;
    uint32_t field_0x14;
    uint32_t field_0x18;
    uint32_t field_0x1c;
    uint32_t field_0x20;
    uint32_t field_0x24;
    uint32_t field_0x28;
    uint32_t field_0x2c;
    uint32_t field_0x30;
    uint32_t field_0x34;
    uint32_t field_0x38;
    uint32_t field_0x3c;
    uint32_t field_0x40;
    uint32_t field_0x44;
    uint32_t field_0x48;
    uint32_t field_0x4c;
    uint32_t field_0x50;
};

#endif /* BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H */
