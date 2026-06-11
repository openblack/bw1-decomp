#ifndef BW1_DECOMP_TRIBE_INFO_INCLUDED_H
#define BW1_DECOMP_TRIBE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GTribeInfo: public GBaseInfo
{
public:
    TRIBE_TYPE type; /* 0x10 */
    uint32_t field_0x14;
    uint32_t field_0x18;

    // Override methods

    // win1.41 0074c920 mac 10159d30 GTribeInfo::_dt(void)
    virtual ~GTribeInfo();
    // win1.41 0074c8c0 mac 10159ef0 GTribeInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);

    // Static methods

    // win1.41 0074c940 mac 10159bc0 GTribeInfo::GetTribeFromText(char const *)
    static GTribeInfo* GetTribeFromText(const char* str);

    // Non-virtual methods

    // win1.41 00751aa0 mac 10159e50 GTribeInfo::GetTribeTextArray(void)
    char* GetTribeTextArray();
};

#endif /* BW1_DECOMP_TRIBE_INFO_INCLUDED_H */
