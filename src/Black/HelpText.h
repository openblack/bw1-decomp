#ifndef BW1_DECOMP_HELP_TEXT_INCLUDED_H
#define BW1_DECOMP_HELP_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHRegion.h> /* For struct LHRegion */

#include "Base.h" /* For struct Base */

class HelpText: public Base
{
public:
    const char16_t* str; /* 0x8 */
    uint32_t field_0xc;
    uint32_t field_0x10;
    uint32_t field_0x14;
    uint32_t field_0x18;
    LH3DColor field_0x1c;
    LH3DColor field_0x20;
    LHRegion field_0x24;
    uint32_t field_0x34[0x4][0x6];
    uint32_t field_0x94;
    uint32_t field_0x98;
    float field_0x9c;
    float field_0xa0;
    uint32_t field_0xa4;
    uint32_t field_0xa8;
    uint32_t field_0xac;
    uint32_t field_0xb0;
    uint32_t field_0xb4;
    uint32_t field_0xb8;

    // Override methods

    // BW1W120 005cad90 BW1M100 103575a0 HelpText::_dt(void)
    virtual ~HelpText();

    // Constructors

    // BW1W120 005cad40 BW1M100 103579b0 HelpText::HelpText(LHRegion const &)
    HelpText(LHRegion* region);
};

struct HelpTextDataBase
{
    HelpText* array; /* 0x0 */
    uint32_t count;

    // Non-virtual methods

    // BW1W120 inlined BW1M100 100924c0 HelpTextDataBase::GetHelpText(unsigned long) const
    const char16_t* GetHelpText(uint32_t index);
};

#endif /* BW1_DECOMP_HELP_TEXT_INCLUDED_H */
