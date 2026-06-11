#ifndef BW1_DECOMP_PLAYER_INFO_INCLUDED_H
#define BW1_DECOMP_PLAYER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CPDesireNodeInfo
{
public:

    // Override methods

    // win1.41 00655b70 mac 104ab970 CPDesireNodeInfo::GetNumChildren(void)
    virtual int GetNumChildren();
};

class GPlayerInfo: public GBaseInfo
{
public:
    float field_0x10;
    float field_0x14;
    float field_0x18;
    float field_0x1c;
    uint32_t field_0x20;
    float field_0x24;
    float field_0x28;
    float field_0x2c;
    float field_0x30;
    float field_0x34;
    float field_0x38;
    float field_0x3c;
    float field_0x40;
    uint32_t field_0x44;
    float field_0x48;
    float field_0x4c;
    uint8_t field_0x50[0x40];

    // Override methods

    // win1.41 0054be50 mac 104e7bd0 GPlayerInfo::_dt(void)
    virtual ~GPlayerInfo();
    // win1.41 0054b830 mac 1058eb00 GPlayerInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

struct PlayerInfo
{
    uint8_t field_0x0[0x8];

    // Constructors

    // win1.41 00648d50 mac 10375150 PlayerInfo::PlayerInfo(void)
    PlayerInfo();
};

#endif /* BW1_DECOMP_PLAYER_INFO_INCLUDED_H */
