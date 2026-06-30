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

    // BW1W120 0x00c58604
    static uint32_t info_count;

    // Override methods

    // BW1W120 0042e600 BW1M100 10429820 GBaseInfo::_dt(void)
    virtual ~GBaseInfo();
    // BW1W120 004140b0 BW1M100 10578110 GBaseInfo::GetDebugText(void) const
    virtual const char* GetDebugText();
    // BW1W120 00436c60 BW1M100 1055df70 GBaseInfo::GetDebugColor(void) const
    virtual LHColor* GetDebugColor(LHColor* color);
    // BW1W120 00401230 BW1M100 101228b0 GBaseInfo::UpdateValue(void)
    virtual void UpdateValue(float param_1, uint32_t param_2, uint32_t param_3)
    {
    }

    // Static methods

    // BW1W120 00436c30 BW1M100 103e4630 GBaseInfo::GetInfoPtr(unsigned long)
    static GBaseInfo* GetInfoPtr(int index);

    // Constructors

    // BW1W120 0042e5e0 BW1M100 102f9af0 GBaseInfo::GBaseInfo(void)
    GBaseInfo();

    // Non-virtual methods

    // BW1W120 00436bd0 BW1M100 1035b720 GBaseInfo::SetInfoID(void)
    void SetInfoID();
};

class BaseInfo
{
public:
    uint32_t unique_id; /* 0x4 */
    uint32_t address_offset;

    // Override methods

    // BW1W120 0055c770 BW1M100 10043c50 BaseInfo::IsClear(void) const
    virtual bool IsClear();

    // Constructors

    // BW1W120 inlined BW1M100 1030cbf0 BaseInfo::BaseInfo(void)
    BaseInfo();

    // Non-virtual methods

    // BW1W120 00436bb0 BW1M100 10001410 BaseInfo::Set(Base*)
    void Set(Base* base);
};

#endif /* BW1_DECOMP_BASE_INFO_INCLUDED_H */
