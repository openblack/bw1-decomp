#ifndef BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H
#define BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GInterfaceFlags: public Base
{
public:
    int field_0x8;
    uint32_t field_0xc;
    uint32_t field_0x10;

    // Override methods

    // win1.41 005ce340 mac 1035c820 GInterfaceFlags::_dt(void)
    virtual ~GInterfaceFlags();
};

#endif /* BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H */
