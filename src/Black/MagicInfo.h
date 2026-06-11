#ifndef BW1_DECOMP_MAGIC_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;
class GMagicEffectInfo;

class GMagicInfo: public GBaseInfo
{
public:
    int field_0x10;
    uint8_t field_0x14[0x44];

    // Override methods

    // win1.41 00435680 mac 1018ee20 GMagicInfo::_dt(void)
    virtual ~GMagicInfo();
    // win1.41 0042d700 mac 101980a0 GMagicInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);

    // Static methods

    // win1.41 005fb3b0 mac 103ae320 GMagicInfo::GetInfoFromText(char const *)
    static MAGIC_TYPE GetInfoFromText(const char* text);

    // Constructors

    // win1.41 00435520 mac 1018eec0 GMagicInfo::GMagicInfo(void)
    GMagicInfo();

    // Non-virtual methods

    // win1.41 005fb3f0 mac 103ae2c0 GMagicInfo::GetMagicInfoText(void) const
    const char* GetMagicInfoText();
    // win1.41 005fb680 mac 103adc30 GMagicInfo::GetMagicEffectInfo(void) const
    GMagicEffectInfo* GetMagicEffectInfo();
};

#endif /* BW1_DECOMP_MAGIC_INFO_INCLUDED_H */
