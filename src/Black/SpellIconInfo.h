#ifndef BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GSpellIconInfo: public GMultiMapFixedInfo
{
public:
    uint32_t field_0x120;
    uint32_t field_0x124;
    uint32_t field_0x128;

    // Override methods

    // win1.41 00725fb0 mac 10525b60 GSpellIconInfo::_dt(void)
    virtual ~GSpellIconInfo();
    // win1.41 00725f40 mac 10525c70 GSpellIconInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
    // win1.41 00725f30 mac 10524c10 GSpellIconInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();
};

#endif /* BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H */
