#ifndef BW1_DECOMP_BASE_INFO_INCLUDED_H
#define BW1_DECOMP_BASE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base, struct BaseVftable */

// Forward Declares

struct LHColor;

class GBaseInfo: public Base
{
public:
    GBaseInfo* next; /* 0x8 */
    int index;

    // Override methods

    // win1.41 0042e600 mac 10429820 GBaseInfo::_dt(void)
    virtual ~GBaseInfo();
    // win1.41 004140b0 mac 10578110 GBaseInfo::GetDebugText(void) const
    virtual const char* GetDebugText();
    // win1.41 00436c60 mac 1055df70 GBaseInfo::GetDebugColor(void) const
    virtual LHColor* GetDebugColor(LHColor* color);
    // win1.41 00401230 mac 101228b0 GBaseInfo::UpdateValue(void)
    virtual void UpdateValue(float param_1, uint32_t param_2, uint32_t param_3);

    // Static methods

    // win1.41 00436c30 mac 103e4630 GBaseInfo::GetInfoPtr(unsigned long)
    static GBaseInfo* GetInfoPtr(int index);

    // Constructors

    // win1.41 0042e5e0 mac 102f9af0 GBaseInfo::GBaseInfo(void)
    GBaseInfo();

    // Non-virtual methods

    // win1.41 00436bd0 mac 1035b720 GBaseInfo::SetInfoID(void)
    void SetInfoID();
};

class BaseInfo
{
public:
    uint32_t unique_id; /* 0x4 */
    uint32_t address_offset;

    // Override methods

    // win1.41 0055c770 mac 10043c50 BaseInfo::IsClear(void) const
    virtual bool IsClear();

    // Constructors

    // win1.41 inlined mac 1030cbf0 BaseInfo::BaseInfo(void)
    BaseInfo();

    // Non-virtual methods

    // win1.41 00436bb0 mac 10001410 BaseInfo::Set(Base*)
    void Set(Base* base);
};

#endif /* BW1_DECOMP_BASE_INFO_INCLUDED_H */
